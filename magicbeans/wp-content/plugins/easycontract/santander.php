<?php
/*
Plugin Name: Santander Consumer Bank - WooCommerce Payment Gateway
Plugin URI: https://github.com/SantanderApps/SantanderPaymentProviderWooCommerce
Description: Integrates Santander Consumer Bank into WooCommerce.
Version: 1.0.6wo
Author: Santander
Author URI: http://santander.consid.se
*/

/**
 * This function will run when the plugin is activated in the admin area,
 * @global integer $user_ID
 */
function santander_activate() {
	global $user_ID;
	
	add_option( 'santander_installation_date', date( 'Y-m-d H:i' ) );
}

/**
 * This function will run when the plugin is deactivated in the admin area.
 */
function santander_deactivate() {
	delete_option( 'santander_installation_date' );
}

/**
 * This function will run when the plugins are loaded.
 * @return null
 */
function santander_init() {
	// If the parent WC_Payment_Gateway class doesn't exist
	// it means WooCommerce is not installed on the site
	// so do nothing
	if ( ! class_exists( 'WC_Payment_Gateway' ) ) {
		return;
	}
	
	// If we made it this far, then include our Gateway Class
	include_once( 'gateways/santander-loan.php' );
	
	// Now that we have successfully included our class,
	// Lets add it too WooCommerce
	add_filter( 'woocommerce_payment_gateways', 'santander_add_gateway' );
}

/**
 * This function will run when WP are loaded.
 * @return null
 */
function santander_wp_loaded() {
	// Output the requested log file
	if ( isset( $_GET['santanderlog'] ) ) {
		Santander::run( new Santander_APIConnector( new Santander_Loan() ) );
		
		if ( Santander::$api->config->getAccessLogExternal() ) {
			print Santander::$logger->getLogFile( ( isset( $_GET['santanderlog'] ) ? (int) $_GET['santanderlog'] : date('Ymd') ) );
		}
		
		exit;
	}
}

/**
 * Tell WooCommerce about our gateway.
 * @param array $methods
 * @return array
 */
function santander_add_gateway( $methods ) {
	$methods[] = 'Santander_Loan';
	return $methods;
}

/**
 * Display configuration link in the plugin area
 * @param array $links
 * @return array
 */
function santander_action_links( $links ) {
	$plugin_links = array(
		'<a href="' . admin_url( 'admin.php?page=wc-settings&tab=checkout&section=santander_loan' ) . '">' . __( 'Settings', 'santander' ) . '</a>',
	);
	
	return array_merge( $plugin_links, $links );
}

/**
 * This function is hooked to the action pre_get_posts.
 * @param type $query
 */
function santander_pre_get_posts( $query ) {
	$checkout_page_id = get_option( 'woocommerce_checkout_page_id' );
	
	if ( $query->is_main_query() && ( ( isset( $query->query['page_id'] ) && $query->query['page_id'] == $checkout_page_id ) || ( isset( $query->queried_object) && $query->queried_object->ID == $checkout_page_id ) ) && isset( $_GET['token'] ) ) {
		$santanderLoan = new Santander_Loan();
		$santanderLoan->check_result( $_GET['token'] );
		exit;
	}
}

/**
 * Return the URL to the plugin
 * @return string
 */
function _santander_get_plugin_url() {
	return plugin_dir_url( __FILE__ );
}

/**
 * Return the filesystem path to the plugin
 * @return string
 */
function _santander_get_plugin_path() {
	return plugin_dir_path( __FILE__ );
}

register_activation_hook( __FILE__, 'santander_activate' );
register_deactivation_hook( __FILE__, 'santander_deactivate' );

// Action hooks
add_action( 'plugins_loaded', 'santander_init' );
add_action( 'pre_get_posts', 'santander_pre_get_posts' );
add_action( 'wp_loaded', 'santander_wp_loaded' );

// Filter hooks
add_filter( 'plugin_action_links_' . plugin_basename( __FILE__ ), 'santander_action_links' );