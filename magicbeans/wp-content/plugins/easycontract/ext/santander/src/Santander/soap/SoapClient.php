<?php

/**
 * SoapClient
 *
 * @file SoapClient.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

namespace Santander\soap;

class SoapClient extends \SoapClient {
    private static $classmap = array(
        'GetResult' => '\Santander\soap\actions\GetResult',
        'GetResultRequest' => '\Santander\soap\actions\GetResultRequest',
        'GetResultResponse' => '\Santander\soap\actions\GetResultResponse',
        'TestConnection' => '\Santander\soap\actions\TestConnection',
        'TestConnectionRequest' => '\Santander\soap\actions\TestConnectionRequest',
        'TestConnectionResponse' => '\Santander\soap\actions\TestConnectionResponse',
        'GetToken' => '\Santander\soap\actions\GetToken',
        'GetTokenRequest' => '\Santander\soap\actions\GetTokenRequest',
        'GetTokenResult' => '\Santander\soap\actions\GetTokenResult',
        'HelloWorld' => '\Santander\soap\actions\HelloWorld',
        'HelloWorldResponse' => '\Santander\soap\actions\HelloWorldResponse',
        'FinalizeTransaction' => '\Santander\soap\actions\FinalizeTransaction',
        'GetFinalizeTransactionRequest' => '\Santander\soap\actions\GetFinalizeTransactionRequest',
        'FinalizeTransactionResponse' => '\Santander\soap\actions\FinalizeTransactionResponse',
        'GetFinalizeTransactionResponse' => '\Santander\soap\actions\GetFinalizeTransactionResponse',
        'GetCampaignValues' => '\Santander\soap\actions\GetCampaignValues',
        'GetCampaignValuesRequest' => '\Santander\soap\actions\GetCampaignValuesRequest',
        'GetCampaignValuesResponse' => '\Santander\soap\actions\GetCampaignValuesResponse',
        'CampaignItem' => '\Santander\soap\actions\CampaignItem',
        'Authentication' => '\Santander\soap\Authentication',
        'Login' => '\Santander\soap\Login',
    );
    
    public function SoapClient($wsdl, $options = array()) {
        foreach (self::$classmap as $key => $value) {
            if (!isset($options['classmap'][$key])) {
                $options['classmap'][$key] = $value;
            }
        }
        
        parent::SoapClient($wsdl, $options);
    }
    
    /**
     * 
     * @param \Santander\soap\actions\GetResult $parameters
     * @return \Santander\soap\actions\GetResultResponse
     */
    public function GetResult(actions\GetResult $parameters) {
        return $this->__soapCall('GetResult', array($parameters), array(
            'uri' => 'http://integration.gemoneybank.se/ws/2007/1',
            'soapaction' => '',
        ));
    }
    
    /**
     * 
     * @param \Santander\soap\actions\TestConnection $parameters
     * @return \Santander\soap\actions\TestConnectionResponse
     */
    public function TestConnection(actions\TestConnection $parameters) {
        return $this->__soapCall('TestConnection', array($parameters), array(
            'uri' => 'http://integration.gemoneybank.se/ws/2007/1',
            'soapaction' => '',
        ));
    }
    
    /**
     * 
     * @param \Santander\soap\actions\GetToken $parameters
     * @return \Santander\soap\actions\GetTokenResponse
     */
    public function GetToken(actions\GetToken $parameters) {
        return $this->__soapCall('GetToken', array($parameters), array(
            'uri' => 'http://integration.gemoneybank.se/ws/2007/1',
            'soapaction' => '',
        ));
    }
    
    /**
     * 
     * @param \Santander\soap\actions\HelloWorld $parameters
     * @return \Santander\soap\actions\HelloWorldResponse
     */
    public function HelloWorld(actions\HelloWorld $parameters) {
        return $this->__soapCall('HelloWorld', array($parameters), array(
            'uri' => 'http://integration.gemoneybank.se/ws/2007/1',
            'soapaction' => '',
        ));
    }
    
    /**
     * 
     * @param \Santander\soap\actions\FinalizeTransaction $parameters
     * @return \Santander\soap\actions\FinalizeTransactionResponse
     */
    public function FinalizeTransaction(actions\FinalizeTransaction $parameters) {
        return $this->__soapCall('FinalizeTransaction', array($parameters), array(
            'uri' => 'http://integration.gemoneybank.se/ws/2007/1',
            'soapaction' => '',
        ));
    }
    
    public function GetCampaignValues(actions\GetCampaignValues $parameters) {
        return $this->__soapCall('GetCampaignValues', array($parameters), array(
            'uri' => 'http://integration.gemoneybank.se/ws/2007/1',
            'soapaction' => '',
        ));
    }
}
