<?php

/**
 * Santander_APIConnector
 *
 * @file Santander_APIConnector.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-24
 */

use Santander\base\Config;

class Santander_APIConnector implements Santander\base\APIConnectorInterface {
	/**
	 * @var Santander_Loan 
	 */
	private $_gateway;
	
	public function __construct( Santander_Loan $gateway ) {
		$this->_gateway = $gateway;
	}
	
	public function getData( $configKey ) {
		switch ( $configKey ) {
			case Config::CONFIG_KEY_TEST_MODE:
				return $this->_getMode() == Santander_Loan::STATUS_TEST;
				break;
			case Config::CONFIG_KEY_SANDBOX_MODE:
				return $this->_getMode() == Santander_Loan::STATUS_TEST;
				break;
			case Config::CONFIG_KEY_STORE_ID:
				return $this->_getStoreId();
				break;
			case Config::CONFIG_KEY_USERNAME:
				return $this->_getUsername();
				break;
			case Config::CONFIG_KEY_PASSWORD:
				return $this->_getPassword();
				break;
			case Config::CONFIG_KEY_CERTIFICATE:
				return $this->_getCertificate();
				break;
			case Config::CONFIG_KEY_MERCHANT_ID:
				return $this->_getMerchantId();
				break;
			case Config::CONFIG_KEY_LANGUAGE:
				return $this->_getLanguage();
				break;
			case Config::CONFIG_KEY_SITE_EMAIL_ADDRESS:
				return $this->_getSiteMail();
                break;
            case Config::CONFIG_KEY_SITE_NAME:
				return $this->_getSiteName();
				break;
			case Config::CONFIG_KEY_PLATFORM_NAME:
				return $this->_getPlatformName();
				break;
			case Config::CONFIG_KEY_PLATFORM_VERSION:
				return $this->_getPlatformVersion();
				break;
			case Config::CONFIG_KEY_MODULE_VERSION:
				return $this->_getModuleVersion();
				break;
			case Config::CONFIG_KEY_MODULE_INSTALLATION_DATE:
				return $this->_getModuleInstallationDate();
				break;
			case Config::CONFIG_KEY_ENABLE_EXTENDED_LOGGING:
				return $this->_enableExtendedLogging();
				break;
			case Config::CONFIG_KEY_RETURN_URL:
				return $this->_getReturnUrl();
				break;
			case Config::CONFIG_KEY_ACCESS_LOG_EXTERNAL:
				return $this->_getAccessLogExternal();
				break;
		}
	}
	
	private function _getMode() {
		return $this->_gateway->get_option( 'test_environment' ) === 'yes' ? Santander_Loan::STATUS_TEST : Santander_Loan::STATUS_LIVE;
	}
	
	private function _getStoreId() {
		return $this->_gateway->get_option( 'store_id' );
	}
	
	private function _getUsername() {
		return $this->_gateway->get_option( 'username' );
	}
	
	private function _getPassword() {
		return $this->_gateway->get_option( 'password' );
	}
	
	private function _getCertificate() {
		return;
	}
	
	private function _getMerchantId() {
		return $this->_gateway->get_option( 'merchant_id' );
	}
	
	private function _getLanguage() {
		return get_locale();
	}
	
	private function _getSiteMail() {
		return get_bloginfo( 'admin_email' );
	}
	
	private function _getSiteName() {
		return get_bloginfo( 'name' );
	}
	
	private function _getPlatformName() {
		return 'WooCommerce';
	}
	
	private function _getPlatformVersion() {
		global $woocommerce;
		return $woocommerce->version;
	}
	
	private function _getModuleVersion() {
		return '1.0.6wo';
	}
	
	private function _getModuleInstallationDate() {
		return get_option( 'santander_installation_date' );
	}
	
	private function _enableExtendedLogging() {
		return TRUE;
	}
	
	private function _getReturnUrl() {
		$checkout_page_id = get_option( 'woocommerce_checkout_page_id' );
		return get_permalink( $checkout_page_id );
	}
	
	private function _getAccessLogExternal() {
		return $this->_gateway->get_option( 'access_log_external' ) == 'yes';
	}
}
