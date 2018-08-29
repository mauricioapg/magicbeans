<?php

/**
 * Api
 *
 * @file Api.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

namespace Santander\base;

use Santander\soap\SoapClient;
use Santander\soap\SoapHeaders;
use Santander\soap\Authentication;
use Santander\soap\IdentificationType;
use Santander\soap\Identifier;
use Santander\soap\IdentifierType;
use Santander\soap\Identifiers;
use Santander\soap\Login;
use Santander\soap\TransactionHelper;
use Santander\soap\AuthorizationType;
use Santander\soap\actions\GetTokenRequest;
use Santander\soap\actions\GetToken;
use Santander\soap\actions\GetResultRequest;
use Santander\soap\actions\GetResult;
use Santander\model\Token;
use Santander\model\Result;
use Santander\model\Address;
use Santander\i18n\Message;
use Santander\soap\actions\TestConnectionRequest;
use Santander\soap\actions\TestConnection;

/**
 * @property Config $config
 * @property array $requirements the requirements for the API to work properly
 */
class Api {
    /**
     * @var Config 
     */
    protected $config;
    
    protected $certFile;
    
    /**
     * @var \Exception
     */
    protected $exception;
    
    private function __construct(Config $config) {
        $this->config = $config;
    }
    
    public static function &getInstance(Config $config) {
        static $self;
        if ($self === NULL) {
            $self = new static($config);
        }
        
        return $self;
    }
    
    public function __get($name) {
        $getter = 'get' . ucfirst($name);
        if (method_exists($this, $getter)) {
            return $this->$getter();
        }
        else {
            throw \Exception('The property ' . get_called_class() . '::' . $name . ' is not readable.');
        }
    }
    
    public function __set($name, $value) {
        $setter = 'set' . ucfirst($name);
        if (method_exists($this, $setter)) {
            return $this->$setter($value);
        }
        else {
            throw \Exception('The property ' . get_called_class() . '::' . $name . ' is not writeable');
        }
    }
    
    public function __isset($name) {
        $getter = 'get' . ucfirst($name);
        if (method_exists($this, $getter)) {
            return $this->$gettter() === NULL;
        }
        else {
            throw \Exception('The property ' . get_called_class() . '::' . $name . ' is not readable.');
        }
    }
    
    public function __unset($name) {
        $setter = 'set' . ucfirst($name);
        if (method_exists($this, $setter)) {
            return $this->$setter(NULL);
        }
        else {
            throw \Exception('The property ' . get_called_class() . '::' . $name . ' is not writeable');
        }
    }
    
    public function getConfig() {
        return $this->config;
    }
    
    public function getException() {
        return $this->exception;
    }
    
    /**
     * Return soap client object
     * @param array $options
     */
    public function getSoapClient($options = array()) {
        // initiate soap client
        $soapHeaders = SoapHeaders::getBaseHeaders(TransactionHelper::getBaseTransactionId(), $this->config->getSiteName(), 'GE Money Bank');

        // Market/Country
        $market = $this->config->getMarket();
        $soapHeaders->Country = $market->country;

        // Login
        $login = new Login();
        $login->Identity = $this->config->getUsername();
        $login->Password = $this->config->getPassword();
        $login->AuthorizationType = AuthorizationType::Store;
        $login->IdentificationType = IdentificationType::UserAndPassword;

        // Authentication
        $authentication = new Authentication($login);
        $soapHeaders->Authentication = $authentication;

        // Identifiers
        $identifier = new Identifier();
        $identifier->IdentifierType = IdentifierType::Store;
        $identifier->Value = $this->config->getStoreId();
        $identifiers = new Identifiers();
        $identifiers->Identifier = $identifier;
        $soapHeaders->Identifiers = $identifiers;
        
        // The soap client
        $cert = $this->createLocalCert();
        if (!empty($cert)) {
            $options['local_cert'] = $cert;
        }
        
        if ($this->config->getEnableExtendedLogging()) {
            $options['trace'] = TRUE;
        }
        
        $client = new SoapClient($this->config->getWsdlUrl(), $options);
        $client->__setSoapHeaders(new \SoapHeader('http://schemas.gemoneybank.se/sit/2007/1', 'SecureIntegrationTransaction', $soapHeaders));
        
        return $client;
    }
    
    /**
     * Return token from webservice
     * @param string $orderNumber
     * @param string $purchaseAmount
     * @return \Santander\model\Token|null
     */
    public function getToken($orderNumber, $purchaseAmount) {
        \Santander::$logger->notice('GetToken', 'Called ' . __METHOD__);
        
        $this->exception = NULL; // Reset exception
        
        try {
            $market = $this->config->getMarket();
            $request = new GetTokenRequest();
            $request->Currency = $market->currency;
            $request->StoreId = $this->config->getStoreId();
            $request->StoreIdentifier = $orderNumber;
            $request->PurchaseAmount = $purchaseAmount;
            $request->MerchantNumber = $this->config->getMerchantId(); // Mandatory even if not used
            $request->CampaignCode = ""; // If no campaign code, it HAS to be set to empty string.
            $request->DynamicReturnURL = $this->config->getReturnUrl();
            
            $getToken = new GetToken();
            $getToken->request = $request;
            
            $client = $this->getSoapClient();
            $token = $client->GetToken($getToken);
            \Santander::$logger->success('GetToken', 'Call to soap action GetToken', array($request, func_get_args()));
            
            if ($this->config->getEnableExtendedLogging()) {
                \Santander::$logger->notice('GetToken', 'Soap Call', array(
                    'lastRequestHeaders' => $client->__getLastRequestHeaders(), 
                    'lastRequest' => $client->__getLastRequest(),
                    'lastResponseHeaders' => $client->__getLastResponseHeaders(),
                    'lastResponse' => $client->__getLastResponse(),
                ));
            }
            
            $this->deleteLocalCert();
            
            return $this->processToken($token);
        }
        catch (\Exception $ex) {
            $this->deleteLocalCert();
            
            \Santander::$logger->error('GetToken', 'Call to soap action GetToken', array('exception message' => $ex->getMessage(), func_get_args()));
            $this->exception = $ex;
            return NULL;
        }
    }
    
    /**
     * Get resilt from webservice
     * @param string $token
     * @param string $orderNumber
     * @return \Santander\model\Result|null
     */
    public function getResult($token, $orderNumber) {
        \Santander::$logger->notice('GetResult', 'Called ' . __METHOD__);
        
        $this->exception = NULL; // Reset exception
        
        try {
            $request = new GetResultRequest();
            $request->StoreId = $this->config->getStoreId();
            $request->StoreIdentifier = $orderNumber;
            $request->Token = $token;
            
            $getResult = new GetResult();
            $getResult->request = $request;
            
            $client = $this->getSoapClient();
            $result = $client->GetResult($getResult);
            \Santander::$logger->success('GetResult', 'Call to soap action GetResult', array($request, func_get_args()));
            
            if ($this->config->getEnableExtendedLogging()) {
                \Santander::$logger->notice('GetResult', 'Soap Call', array(
                    'lastRequestHeaders' => $client->__getLastRequestHeaders(), 
                    'lastRequest' => $client->__getLastRequest(),
                    'lastResponseHeaders' => $client->__getLastResponseHeaders(),
                    'lastResponse' => $client->__getLastResponse(),
                ));
            }
            
            $this->deleteLocalCert();
            
            return $this->processResult($result);
        }
        catch (\Exception $ex) {
            $this->deleteLocalCert();
            
            \Santander::$logger->error('GetResult', 'Call to soap action GetResult', array('exception message' => $ex->getMessage(), func_get_args()));
            $this->exception = $ex;
            return NULL;
        }
    }
    
    /**
     * Test connection towards the web service.
     * @param string $orderNumber [DEPRECATED]
     * @return boolean
     */
    public function testConnection($orderNumber) {
        \Santander::$logger->notice('TestConnection', 'Called ' . __METHOD__);
        
        $this->exception = NULL; // Reset exception
        
        try {
            $request = new TestConnectionRequest();
            $request->StoreId = $this->config->getStoreId();
            $request->CampaignId = mt_rand(1, 1000);
            $request->Status = mt_rand(1, 10);
            
            $testConnection = new TestConnection();
            $testConnection->request = $request;
            
            $client = $this->getSoapClient();
            $result = $client->TestConnection($testConnection);
            \Santander::$logger->success('TestConnection', 'Call to soap action TestConnection', array($request, func_get_args()));
            
            if ($this->config->getEnableExtendedLogging()) {
                \Santander::$logger->notice('TestConnection', 'Soap Call', array(
                    'lastRequestHeaders' => $client->__getLastRequestHeaders(), 
                    'lastRequest' => $client->__getLastRequest(),
                    'lastResponseHeaders' => $client->__getLastResponseHeaders(),
                    'lastResponse' => $client->__getLastResponse(),
                ));
            }
            
            $this->deleteLocalCert();
            
            \Santander::$logger->success('TestConnection', 'Got result from the SOAP call', array($result));
            return (isset($result->TestConnectionResult) && $result->TestConnectionResult == $request->Status);
        }
        catch (\Exception $ex) {
            $this->deleteLocalCert();
            
            \Santander::$logger->error('TestConnection', 'Call to soap action TestConnection', array('exception message' => $ex->getMessage(), func_get_args()));
            $this->exception = $ex;
            return NULL;
        }
    }
    
    /**
     * Ping host to check if it is available
     * @param string $env 'wsdl' or 'sf'
     * @return boolean|string
     */
    public function pingHost($env = 'wsdl') {
        require_once SANTANDER_BASE_PATH . DIRECTORY_SEPARATOR . 'ext' . DIRECTORY_SEPARATOR . 'ping' . DIRECTORY_SEPARATOR . 'JJG' . DIRECTORY_SEPARATOR . 'Ping.php';
        
        switch ($env) {
            case 'wsdl':
                $url = $this->config->getWsdlUrl();
                break;
            case 'sf':
                $url = $this->config->getRedirectUrl(uniqid());
                break;
        }
        
        $host = parse_url($url, PHP_URL_HOST);
        if ($host) {
            $result = array('host' => $host);
            $ping = new \JJG\Ping($host);
            
            if ($latency = $ping->ping()) {
                $result['latency'] = $latency;
                \Santander::$logger->success('Ping', 'Pinged host ' . $host . ' using \'exec\' method', $result);
            }
            elseif ($latency = $ping->ping('fsockopen')) {
                $result['latency'] = $latency;
                \Santander::$logger->success('Ping', 'Pinged host ' . $host . ' using \'fsockopen\' method', $result);
            }
            else {
                $result['latency'] = FALSE;
                \Santander::$logger->error('Ping', 'Failed to ping host ' . $host, $result);
            }
            
            return $result;
        }
        else {
            \Santander::$logger->warning('Ping', 'Unable to parse host from url ' . $url);
            return FALSE;
        }
    }
    
    /**
     * Test connection to Santander webservice
     * @param string $env
     * @return array
     */
    public function getTransferInformation($env = 'wsdl') {
        $return = array();
        
        switch ($env) {
            case 'wsdl':
                $url = $this->config->getWsdlUrl();
                break;
            case 'sf':
                $url = $this->config->getRedirectUrl(uniqid());
                break;
        }
        
        if ($ch = curl_init($url)) {
            curl_setopt($ch, CURLOPT_VERBOSE, 1);
            curl_setopt($ch, CURLOPT_HEADER, 0);   
            curl_setopt($ch, CURLOPT_TIMEOUT, 30);
            curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 15);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
            curl_setopt($ch, CURLOPT_FORBID_REUSE, TRUE);
            curl_setopt($ch, CURLOPT_FRESH_CONNECT, TRUE);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
            curl_setopt($ch, CURLOPT_MAXREDIRS, 10);
            curl_setopt($ch, CURLOPT_USERAGENT, 'Consid Low Level API - CURL TEST');
            
            $result = curl_exec($ch);
            $errtext = curl_error($ch);
            $errnum = curl_errno($ch);
            $info = @curl_getinfo($ch);
            
            if ($errnum == 0) {
                \Santander::$logger->success('Connection Test', 'Success! Connected to to ' . $url, array($info));
            }
            else {
                \Santander::$logger->error('Connection Test', 'Error! Unable to connect to ' . $url, array($info, $result, $errnum, $errtext));
            }
            
            // check for common certificate errors, and resubmit
            /*if (in_array($errnum, array(60, 61))) {
                \Santander::$logger->notice('Connection Test', 'Note: The server has an SSL certificate configuration problem. Trying another approx.');
                curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
                curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
                $result = curl_exec($ch);
                $errtext = curl_error($ch);
                $errnum = curl_errno($ch);
                $info = @curl_getinfo($ch);
                
                if ($errnum == 0) {
                    \Santander::$logger->success('Connection Test', 'Success! Connected to to ' . $url, array($info));
                }
                else {
                    \Santander::$logger->error('Connection Test', 'Error! Unable to connect to ' . $url, array($info, $result, $errnum, $errtext));
                }
            }*/
            
            $return = array(
                'result' => $result,
                'errtext' => $errtext,
                'errnum' => $errnum,
                'info' => $info,
                'success' => $errnum == 0,
            );
            
            curl_close($ch);
        }
        
        return $return;
    } 
    
    /**
     * Get the requirements for the API to work properly
     * @return array
     */
    public function getRequirements() {
        $requirements = array();
        
        // PHP version 5.3.0 or greater
        $validPhpVersion = version_compare(PHP_VERSION, '5.3.0') >= 0;
        $requirements['phpVersion'] = array(
            'label' => Message::translate('PHP version (5.3.0 or greater)'),
            'info' => $validPhpVersion ? Message::translate('valid ({phpVersion})', array('phpVersion' => PHP_VERSION)) : Message::translate('invalid ({phpVersion})', array('phpVersion' => PHP_VERSION)),
            'result' => $validPhpVersion,
        );
        
        // SoapClient class must exist
        $soapClientExists = class_exists('SoapClient', FALSE);
        $requirements['SoapClient'] = array(
            'label' => Message::translate('PHP SoapClient class'),
            'info' =>  $soapClientExists ? Message::translate('exists') : Message::translate('not exist'),
            'result' => $soapClientExists,
        );
        
        // cURL must be enabled
        $curlEnabled = function_exists('curl_init');
        $requirements['cURL'] = array(
            'label' => Message::translate('cURL'),
            'info' =>  $curlEnabled ? Message::translate('enabled') : Message::translate('not enabled'),
            'result' => $curlEnabled,
        );
        
        return $requirements;
    }
    
    /**
     * Convert soap response into Token model.
     * @param \stdClass $webserviceResponse
     * @return \Santander\model\Token
     */
    protected function processToken($webserviceResponse) {
        \Santander::$logger->notice('Process Token', 'Called ' . __METHOD__);
        \Santander::$logger->notice('Process Token', 'Webservice result', array($webserviceResponse));
        
        $model = new Token();
        
        if ($webserviceResponse === NULL) {
            \Santander::$logger->error('Process Token', 'Unable to fetch token from web server', array('webserviceResponse' => $webserviceResponse));
            return $model;
        }
        
        if (!isset($webserviceResponse->GetTokenResult)) {
            \Santander::$logger->error('Process Token', 'Unable to read token result from web service. It has an unexpected format.', array('webserviceResponse' => $webserviceResponse));
            return $model;
        }
        
        $result = $webserviceResponse->GetTokenResult;
        $token = NULL;
        $resultCode = NULL;
        
        if (isset($result->Token)) {
            $token = $result->Token;
        }
        else {
            \Santander::$logger->error('Process Token', 'Unable to read token result from web service. It has an unexpected format.', array('webserviceResponse' => $webserviceResponse));
        }
        
        if (isset($result->ResultCode)) {
            $resultCode = $result->ResultCode;
        }
        else {
            \Santander::$logger->error('Process Token', 'Unable to read token result from web service. It has an unexpected format.', array('webserviceResponse' => $webserviceResponse));
        }
        
        if ($resultCode == 0) {
            $model->isOk = TRUE;
            $model->token = $token;
            $model->resultCode = $resultCode;
            \Santander::$logger->success('Process Token', 'Got token from web service', array(
                'Token' => substr($token, 0, 16) . ' (clipped)',
                'ResultCode' => $resultCode,
            ));
        }
        else {
            $model->isOk = FALSE;
            $model->errorMessage = Message::translate('An error occured while communicating with Santander Consumer Bank. Try again or choose another payment method.');
            \Santander::$logger->error('Process Token', 'Failed to get token from web service.', array('ResultCode' => $resultCode));
        }
        
        \Santander::$logger->notice('Process Token', 'Token finished processing', array($model));
        
        return $model;
    }
    
    /**
     * Convert soap response into Result model
     * @param \stdClass $webserviceResponse
     * @return \Santander\model\Result
     */
    protected function processResult($webserviceResponse) {
        \Santander::$logger->notice('Process Result', 'Called ' . __METHOD__);
        \Santander::$logger->notice('Process Result', 'Webservice result', array($webserviceResponse));
        
        $model = new Result();
        
        if ($webserviceResponse === NULL) {
            \Santander::$logger->error('Process Result', 'Unable to fetch result from web server', array('webserviceResponse' => $webserviceResponse));
            return $model;
        }
        
        if (!isset($webserviceResponse->GetResultResult)) {
            \Santander::$logger->error('Process Result', 'Unable to read result result from web service. It has an unexpected format.', array('webserviceResponse' => $webserviceResponse));
            return $model;
        }
        
        $result = $webserviceResponse->GetResultResult;
        $resultCode = NULL;
        
        if (isset($result->ResultCode)) {
            $resultCode = $result->ResultCode;
            \Santander::$logger->success('Process Result', 'Got result from web service', array('ResultCode' => $resultCode));
        }
        else {
            \Santander::$logger->error('Process Result', 'Unable to read result result from web service. It has an unexpected format.', array('webserviceResponse' => $webserviceResponse));
        }
        
        $model->isOk = $resultCode == 0;
        $model->resultCode = $resultCode;
        $model->isAbortedByCustomer = $this->isAbortedByCustomer($resultCode);
        $model->address = $this->getAddressInfo($result);
        $model->humanFailureMessage = $this->getUserFriendlyMessage($resultCode);
        
        if (isset($result->AuthorizationCode)) {
            $model->authorizationCode = $result->AuthorizationCode;
        }
        
        \Santander::$logger->notice('Process Result', 'Result finished processing', array($model));
        
        return $model;
    }
    
    /* These are the result codes available. 
     * From the document e@sy_SF_webshop_integration_ 3.0, section 4.

       0 OK. The customer has signed the contract and the purchase amount is authorized.
       105 Back end systems not on-line
       110 Invalid Request. Input data error or wrong credentials for web shop log on.
       200 Customer aborted process before first page is shown
       201 Customer aborted process after viewing first page (Option page)
       202 Customer aborted process after viewing second page (product page)
       203 Customer aborted process after successful e-certificate authentication
       204 Customer aborted process after approval, but before signing contract
       207 Customer has chosen to abort the process. This is a general code that is returned if
           origin ins not known (navigation failure, navigation backwards between pages)
       210 The customer has already created an application and it is not possible to create a new
       before the old one is removed
       211 Application was rejected by our origination system
       300 Authorization failed. Customer has applied and signed the credit, but authorization of
       the purchase amount has failed. Customer will receive his card but web shop cannot
       capture the purchase amount..
       909 Different kind of technical problems.
       310 Settlementfailed
     */
    
    /**
     * Get a user friendly message based on the ResultCode from the webservice response.
     * @param integer $resultCode
     * @return string
     */
    public function getUserFriendlyMessage($resultCode) {
        $key = "RETURN_CODE_DESCRIPTION_$resultCode";
        return Message::translate($key);
    }
    
    /**
     * Return address information from web service response.
     * @param GetResultResult $result
     * @return \Santander\model\Address
     */
    public function getAddressInfo($result) {
        \Santander::$logger->notice('Process Address Information', 'Called ' . __METHOD__);
        
        $address = new Address();
        
        if (isset($result->FirstName)) {
            $address->firstName = $result->FirstName;
        }
        
        if (isset($result->LastName)) {
            $address->lastName = $result->LastName;
        }
        
        if (isset($result->Address)) {
            $address->address = $result->Address;
        }
        
        if (isset($result->City)) {
            $address->city = $result->City;
        }
        
        if (isset($result->PostCode)) {
            $address->postCode = $result->PostCode;
        }
        
        return $address;
    }
    
    /**
     * Check if the application was canceled by customer
     * @param integer $resultCode
     * @return boolean
     */
    public function isAbortedByCustomer($resultCode) {
        $customerAbortedCodes = array(200, 201, 202, 203, 204, 207);
        return in_array($resultCode, $customerAbortedCodes);
    }
    
    /**
     * Delete the temporary certificate file
     * @return boolean
     */
    public function deleteLocalCert() {
        if (!empty($this->certFile) && file_exists($this->certFile)) {
            unlink($this->certFile);
            return TRUE;
        }
        
        return FALSE;
    }
    
    /**
     * Delete the session holding the BaseTransactionId
     */
    public function resetBaseTransactionId() {
        TransactionHelper::resetBaseTransactionId();
    }
    
    /**
     * Finish order and trigger $callback.
     * @param string $callback
     */
    public function finishOrder($callback = NULL) {
        $this->resetBaseTransactionId();
        \Santander::$logger->success('Order', 'A new order has been completed.');
        
        if (is_callable($callback)) {
            call_user_func($callback);
        }
    }
    
    /**
     * Translate and output text.
     * @param string $message
     * @param array|null $params
     * @return string
     */
    public function _($message, $params = array()) {
        return Message::translate($message, $params);
    }
    
    /**
     * Create a temprory certificate file
     * @return string
     * @throws \RuntimeException
     */
    protected function createLocalCert() {
        $content = $this->config->getCertificate();
        
        if (empty($content)) {
            return;
        }
        
        $savePath = SANTANDER_BASE_PATH . DIRECTORY_SEPARATOR . 'runtime' . DIRECTORY_SEPARATOR . 'tmp';
        
        if (!is_dir($savePath)) {
            if (strtoupper(substr(PHP_OS, 0, 3)) !== 'WIN' && !is_writable(dirname($savePath))) {
                throw new \RuntimeException(dirname($savePath) . ' is not writeable');
                return;
            }
            
            mkdir($savePath, 0775);
        }
        
        $this->certFile = tempnam($savePath, 'Santander');
        file_put_contents($this->certFile, $content);
        return $this->certFile;
    }
}
