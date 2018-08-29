<?php

/**
 * Santander_Loan
 *
 * @file santander-loan.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-21
 */

include_once _santander_get_plugin_path() . '/includes/includes.php';

class Santander_Loan extends WC_Payment_Gateway {
	const STATUS_TEST = 'sandbox (test environment)';
	const STATUS_LIVE = 'live';
	
	private $_result;
	
	private $_notice_messages = array();
	private $_notice_classes = array();
	
	public function __construct() {
		// Start the Low Level API
		Santander::run( new Santander_APIConnector( $this ) );
		
		// The global ID for this Payment method
		$this->id = 'santander_loan';
		
		// The Title shown on the top of the Payment Gateways Page next to all 
		// the other Payment Gateways
		$this->method_title = Santander::$api->_( 'Santander Consumer Bank' );
		
		// The description for this Payment Gateway, shown on the actual Payment 
		// options page on the backend
		// NOTE: not yet implemented
		$this->method_description = '';
		
		// The title to be used for the vertical tabs that can be ordered top to 
		// bottom
		$this->title = Santander::$api->_( 'Monthly instalment' );
		
		// The description for this Payment Gateway, shown in the checkout
		$this->description = Santander::$api->_( 'You will be redirected to Santander´s webpage for credit application after placing order.' );
		
		// Displays an image next to the gateway's name on thefrontend
		$this->icon = _santander_get_plugin_url() . '/ext/santander/src/assets/images/logo.png';
		
		// The text to replace "Place order" with in the checkout
		$this->order_button_text = Santander::$api->_( 'Proceed to Santander' );
		
		// This gateway is not using any form fields in frontend
		$this->has_fields = FALSE;
		
		// This basically defines your settings which are then loaded 
		// with init_settings()
		$this->init_form_fields();
		
		// After init_settings() is called, we can get the settings and load 
		// them into variables, e.g: $this->title = $this->get_option('title');
		$this->init_settings();
		
		// Turn these settings into variables we can use
		foreach ( $this->settings as $key => $value ) {
			$this->$key = $value;
		}
		
		// Save settings
		if ( is_admin() ) {
			add_action( 'woocommerce_update_options_payment_gateways_' . $this->id, array( $this, 'process_admin_options' ) );
		}
	}
	
	/**
	 * Build the administration fields for this specific Gateway
	 */
	public function init_form_fields() {
		$this->form_fields = array(
			'version' => array(
				'title' => Santander::$api->_( '<strong>Version:</strong> {versionNumber}', array( 'versionNumber' => Santander::$api->config->getModuleVersion() ) ),
				'type' => 'title',
				'description' => '',
			),
			
			'test_connection' => array(
				'title' => Santander::$api->_( 'Test Connections' ),
				'type' => 'title',
				'description' => '<a href="' . admin_url( 'admin.php?page=wc-settings&tab=checkout&section=santander_loan&connection_test=1' ) . '">' . Santander::$api->_( 'Test connection with the web service' ) . '</a><br><a href="' . admin_url( 'admin.php?page=wc-settings&tab=checkout&section=santander_loan&verify_details=1' ) . '">' . Santander::$api->_( 'Verify user details' ) . '</a> ' . Santander::$api->_( '<strong>Note:</strong> Only available when "Set Module Environment" is unchecked.' ),
			),
			
			'enabled' => array(
				'title' => __( 'Enable / Disable', 'santander' ),
				'label' => __( 'Enable Santander Consumer Bank', 'santander' ),
				'type' => 'checkbox',
				'default' => 'no',
			),
			
			'store_id' => array(
				'title' => Santander::$api->_( 'Store ID' ),
				'type' => 'text',
				'desc_tip' => Santander::$api->_( 'Type the store ID given to you by Santander Consumer Bank.' ),
				'default' => 'EasyStubTesters',
			),
			
			'username' => array(
				'title' => Santander::$api->_( 'Username' ),
				'type' => 'text',
				'desc_tip' => Santander::$api->_( 'Type the username given to you by Santander Consumer Bank.' ),
				'default' => 'testbutik1',
			),
			
			'password' => array(
				'title' => Santander::$api->_( 'Password' ),
				'type' => 'password',
				'desc_tip' => Santander::$api->_( 'Type the password given to you by Santander Consumer Bank.' ),
				'default' => 'testbutik1',
			),
			
			'merchant_id' => array(
				'title' => Santander::$api->_( 'Merchant ID' ),
				'type' => 'text',
				'desc_tip' => Santander::$api->_( 'Type the merchant ID given to you by your payment service provider.' ),
			),
			
			'test_environment' => array(
				'title' => Santander::$api->_( 'Set Module Environment' ),
				'label' => Santander::$api->_( 'Enable sandbox/test environment' ),
				'type' => 'checkbox',
				'default' => 'yes',
			),
			
			'access_log_external' => array(
				'title' => Santander::$api->_( 'Support Logs' ),
				'label' => Santander::$api->_( 'For a better support experience Santander´s plugin logs all connections to and from Santander´s web services. You have the option to opt-out of these logs being automatically collected by Santander and can therefore choose to manually send in a log file when contacting Santander support services. Log files are located: {logdir}.', array( 'logdir' => _santander_get_plugin_path() . 'ext/santander/src/runtime/log' ) ),
				'desc_tip' => Santander::$api->_( 'For a better support experience Santander´s plugin logs all connections to and from Santander´s web services. You have the option to opt-out of these logs being automatically collected by Santander and can therefore choose to manually send in a log file when contacting Santander support services. Log files are located: {logdir}.', array( 'logdir' => _santander_get_plugin_path() . 'ext/santander/src/runtime/log' ) ),
				'type' => 'checkbox',
				'default' => 'no',
			),
		);
        
		if ( isset( $_GET['connection_test'] ) && $_GET['connection_test'] == 1 ) {
			$wsdlConnection = Santander::$api->getTransferInformation();
			$sfConnection = Santander::$api->getTransferInformation( 'sf' );
			
			if ( $wsdlConnection['success'] ) {
				$this->_notice_messages[] = '<p>' . Santander::$api->_( 'Success! Connected to {host}', array( '{host}' => parse_url( $wsdlConnection['info']['url'], PHP_URL_HOST ) ) ) . '</p>';
				$this->_notice_classes[] = 'updated';
			} else {
				$this->_notice_messages[] = Santander::$api->_('<p>Error! Failed to connect to {host}.<br>It may be due to some of the following reasons:</p><ul><li>The server is not available at the moment.</li><li>Your server do not have an outbound Internet connection.</li></ul>', array('{host}' => parse_url($wsdlConnection['info']['url'], PHP_URL_HOST)));
				$this->_notice_classes[] = 'error';
			}
			
			if ( $sfConnection['success'] ) {
				$this->_notice_messages[] = '<p>' . Santander::$api->_( 'Success! Connected to {host}', array( '{host}' => parse_url( $sfConnection['info']['url'], PHP_URL_HOST ) ) ) . '</p>';
				$this->_notice_classes[] = 'updated';
			} else {
				$this->_notice_messages[] = Santander::$api->_( '<p>Error! Failed to connect to {host}.<br>It may be due to some of the following reasons:</p><ul><li>The server is not available at the moment.</li><li>Your server do not have an outbound Internet connection.</li></ul>', array( '{host}' => parse_url( $sfConnection['info']['url'], PHP_URL_HOST ) ) );
				$this->_notice_classes[] = 'error';
			}
			
			add_action( 'admin_notices', array( $this, 'admin_notice' ) );
		}
        
		if ( isset( $_GET['verify_details'] ) && $_GET['verify_details'] == 1 ) {
			if ( Santander::$api->testConnection( uniqid() ) ) {
				$this->_notice_messages[] = '<p>' . Santander::$api->_( 'Success! The test connection with the web service works great. Your account details is correct.' ) . '</p>';
				$this->_notice_classes[] = 'updated';
			} else {
				$this->_notice_messages[] = '<p>' . Santander::$api->_( 'Error! The test connection with the web service failed. It seems like your account details are incorrect. Make sure that they are correct, if it still doesn\'t work please {contactUs}.', array( 'contactUs' => '<a href="' . Santander::$api->config->getClientSiteUrl() . '" target="_blank"><u>contact us</u></a>' ) ) . '</p>';
				$this->_notice_classes[] = 'error';
			}
			
			add_action( 'admin_notices', array( $this, 'admin_notice' ) );
		}
	}
	
	public function process_admin_options() {
		if ( parent::process_admin_options() && $this->sanitized_fields['access_log_external'] == 'yes' ) {
			// Inform Santander that log access is allowed
			$headers = 'From: ' . Santander::$api->config->getSiteName() . ' <' . Santander::$api->config->getSiteEmailAddress() . '>' . "\r\n";
			$link = get_bloginfo( 'wpurl' );
			$link .= ( substr( $link, 0, -1 ) != '/' ? '/' : '' );
			$link .= ( strpos( $link, '?' ) === FALSE ? '?' : '&' ) . 'santanderlog={date}';
			$email_text = 'The log file is located at ' . $link;
			wp_mail( 'santander@consid.se', 'New installation', $email_text, $headers );
		}
	}
    
	public function admin_notice() {
		foreach ( $this->_notice_messages as $i => $message ) {
			print '<div class="' . $this->_notice_classes[$i] . '">' . $message . '</div>';
		}
	}
	
	/**
	 * Process the payment and return the result.
	 * 
	 * @param integer $order_id
	 */
	public function process_payment( $order_id ) {
		global $woocommerce;
		
		$order = wc_get_order( $order_id );
		$order_number = $order->id;
		$purchase_amount = $this->get_order_total();
		$woocommerce->session->set( 'santander_order_number', $order_number );
		$token = Santander::$api->getToken( $order_number, $purchase_amount );
		
		if ( $token->isOk ) {
			return array(
				'result' => 'success',
				'redirect' => Santander::$api->config->getRedirectUrl( $token->token ),
			);
		} else {
			if ( function_exists( 'wc_add_notice' ) ) {
				wc_add_notice( $token->errorMessage, 'error' );
			} else {
				$woocommerce->add_error( $token->errorMessage );
			}
		}
	}
    
	/**
	 * Get the order number previous stored in session.
	 * @return string
	 */
	public function get_order_number( $delete = FALSE ) {
		$order_number = WC()->session->get( 'santander_order_number' );
		
		if ( $delete ) {
			unset( WC()->session->santander_order_number );
		}
		
		return $order_number;
	}
	
	public function check_result( $token ) {
		$token = str_replace(array('/', '+'), array('%2f', '%2b'), $token);
		$order_number = $this->get_order_number();
		$order = wc_get_order( $order_number );
		$this->_result = Santander::$api->getResult( $token, $order_number );
		
		/**
		 * If we did not got any good result we redirect the customer back to the
		 * cart page.
		 */
		if ( ! $this->_result->isOk ) {
			if ( function_exists( 'wc_add_notice' ) ) {
				wc_add_notice( $this->_result->humanFailureMessage, 'error' );
			} else {
				WC()->add_error( $this->_result->humanFailureMessage );
			}
			return wp_redirect( $order->get_cancel_order_url_raw() );
		}
		/**
		 * If we got a good result we change the billing address in the $order
		 * object to match the address returned from the web service.
		 */
		elseif ( ! empty( $this->_result->address->firstName ) ) {
			$order->billing_first_name = $this->_result->address->firstName;
			$order->billing_last_name = $this->_result->address->lastName;
			$order->billing_address_1 = $this->_result->address->address;
			$order->billing_address_2 = '';
			$order->billing_postcode = $this->_result->address->postCode;
			$order->billing_city = $this->_result->address->city;
			$order->billing_company = '';
			$order->billing_state = '';
		}
		
		Santander::$api->finishOrder( array( $this, 'finish_order' ) );
		return wp_safe_redirect( $this->get_return_url( $order ) );
	}
	
	public function finish_order() {
		$order_number = $this->get_order_number( TRUE );
		$order = wc_get_order( $order_number );
		
		$order->add_order_note( Santander::$api->_( 'Santander Consumer Bank order number: {orderNumber}', array( 'orderNumber' => $order_number ) ) );
		$order->add_order_note( Santander::$api->_( 'Authorization receipt to be used when capturing the amount from your payment service provider: {authorizationCode}', array( 'authorizationCode' => $this->_result->authorizationCode ) ) );
	}
}
