=== Santander Payment Gateway for WooCommerce ===
Contributors: consids5
Tags: santander, santander consumer bank, payment gateway, woocommerce, ecommerce, e-commerce, commerce
Requires at least: 4.0
Tested up to: 4.6-RC4
Stable tag: 1.0.6wo
License: GPLv3
License URI: http://www.gnu.org/licenses/gpl-3.0.html
WC requires at least: 2.4.6
WC tested up to: 2.6.4

== Description ==
Santander’s Woocommerce payment gateway module supports customer credit applications with Santander Consumer Bank Services.

== Requirements ==
* Wordpress 4.0 or later
* WooCommerce 2.4.6 or later
* PHP version 5.3.0 or later.
* PHP SoapClient ([http://php.net/manual/en/class.soapclient.php](http://php.net/manual/en/class.soapclient.php))
* Openssl
* cURL lib must be enabled for PHP ([http://php.net/manual/en/book.curl.php](http://php.net/manual/en/book.curl.php))
* libxml [http://php.net/manual/en/book.libxml.php](http://php.net/manual/en/book.libxml.php)

== Changelog ==
= 1.0.6wo =
* Changed: Better informative texts in checkout.

= 1.0.5wo =
* Bug: Fixes a bug with token that is being incorrect encoded when sent to GetResult().

= 1.0.4wo =
* Bug: Solves an issue with verifying user account details.

= 1.0.3wo =
* Tested for version 4.4 of WordPress.
* Bug: Return URL did not work when permalinks had another format then ’Default’.
* Removed: Santander\base\sendAndDeletePreviousLog() have never been used and is now removed.

= 1.0.2wo =
* Fix: syntax error in src/Santander/i18n/Message.php.

= 1.0.1wo =
* Fix: the logger is trying to chmod log directory if not writeable.

= 1.0.0wo =
* First stable release

== Installation ==

= Before installation =
* Make sure that you have a working WooCommerce installation.

= Method 1: Wordpress Control Panel Installation =
* Download the module from the WordPress Plugin Directory using the Plugin manager inside your WordPress control panel.

= Method 2: Manual installation =
* Download the zip file and store onto your computer.
* Go to WordPress control panel > Plugins > Add new and click on "Upload Plugin".
* Browse for the zip file on your computer and select.
* Upload the file and then configure (see section "Configure the module").

= Configure the module =
* Go to WordPress control panel > Plugins.
* Click on "Activate" for the plugin "Santander Consumer Bank - Woocommerce Payment Gateway".
* Click on "Activate" and wait for the page to reload.
* When the page has reloaded, click on "Settings".
* Configure the module to suit your needs (see "Configuration parameters" below).
* Save changes by clicking the button "Save changes".
* Start using the gateway!

= Configuration parameters =
* **Enable/Disable:** Enable or disable the payment module.
* **Store ID:** Enter the store ID that Santander has provided you. Test mode does not require a store ID, one has been automatically assigned.
* **Username:** Enter the username that Santander has provided you. Test mode does not require a username, one has been automatically assigned.
* **Password:** Enter the password that Santander has provided you. Test mode does not require a password, one has been automatically assigned. 
* **Merchant ID:** (Optional in sandbox/test environment) enter the merchant ID that your payment service provider has provided you. See list below for supported payment service providers.
* **Set Module Environment:** Select between two options, 1: sandbox (test environment to evaluate and test) 2: live (to start using  the module)

= Supported payment service providers =
Santander supports the following payment service providers:

* Dibs
* DebiTech o Nets
* Payex
* Samport

== Account Setup - Santander ==
If you have any questions concerning your account details: Shop ID, merchant ID, password etc. please contact Santander [by clicking here](http://santander.consid.se/site/contact?department=2).

== Technical Issues - Consid ==
If you have any issues installing the module, please contact Santander’s payment gateway IT service partner [by clicking here](http://santander.consid.se/site/contact?department=1).
