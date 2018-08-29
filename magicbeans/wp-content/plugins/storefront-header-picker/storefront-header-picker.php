<?php
/**
 * Plugin Name:			Storefront Header Picker
 * Plugin URI:			http://wooassist.com/
 * Description:			Lets you pick a header layout for Storefront theme.
 * Version:				1.0.2
 * Author:				Wooassist
 * Author URI:			http://wooassist.com/
 * Requires at least:	4.0.0
 * Tested up to:		4.4.0
 *
 * Text Domain: storefront-header-picker
 * Domain Path: /languages/
 *
 * @package Storefront_Header_Picker
 * @category Core
 * @author Wooassist
 */
if (!defined('ABSPATH'))
    exit; // Exit if accessed directly
/**
 * Returns the main instance of Storefront_Header_Picker to prevent the need to use globals.
 *
 * @since  1.0.0
 * @return object Storefront_Header_Picker
 */
function Storefront_Header_Picker() {
    return Storefront_Header_Picker::instance();
} // End Storefront_Header_Picker()
Storefront_Header_Picker();
/**
 * Main Storefront_Header_Picker Class
 *
 * @class Storefront_Header_Picker
 * @version	1.0.0
 * @since 1.0.0
 * @package	Storefront_Header_Picker
 */
final class Storefront_Header_Picker {
    /**
     * Storefront_Header_Picker The single instance of Storefront_Header_Picker.
     * @var 	object
     * @access  private
     * @since 	1.0.0
     */
    private static $_instance = null;
    /**
     * The token.
     * @var     string
     * @access  public
     * @since   1.0.0
     */
    public $token;
    /**
     * The version number.
     * @var     string
     * @access  public
     * @since   1.0.0
     */
    public $version;
    // Admin - Start
    /**
     * The admin object.
     * @var     object
     * @access  public
     * @since   1.0.0
     */
    public $admin;
    /**
     * Constructor function.
     * @access  public
     * @since   1.0.0
     * @return  void
     */
    public function __construct() {
        $this->token       = 'storefront_header_picker';
        $this->plugin_url  = plugin_dir_url(__FILE__);
        $this->plugin_path = plugin_dir_path(__FILE__);
        $this->version     = '1.0.0';
        register_activation_hook(__FILE__, array(
            $this,
            'install'
        ));
        //add_action( 'init', array( $this, 'woa_shp_load_plugin_textdomain' ) );
        add_action('init', array(
            $this,
            'woa_shp_setup'
        ));
        //add_filter( 'plugin_action_links_' . plugin_basename( __FILE__ ), array( $this, 'woa_shp_plugin_links' ) );
    }
    /**
     * Main Storefront_Header_Picker Instance
     *
     * Ensures only one instance of Storefront_Header_Picker is loaded or can be loaded.
     *
     * @since 1.0.0
     * @static
     * @see Storefront_Header_Picker()
     * @return Main Storefront_Header_Picker instance
     */
    public static function instance() {
        if (is_null(self::$_instance))
            self::$_instance = new self();
        return self::$_instance;
    } // End instance()
    /**
     * Load the localisation file.
     * @access  public
     * @since   1.0.0
     * @return  void
     */
    public function woa_shp_load_plugin_textdomain() {
        load_plugin_textdomain('storefront_header_picker', false, dirname(plugin_basename(__FILE__)) . '/languages/');
    }
    /**
     * Cloning is forbidden.
     *
     * @since 1.0.0
     */
    public function __clone() {
        _doing_it_wrong(__FUNCTION__, __('Cheatin&#8217; huh?'), '1.0.0');
    }
    /**
     * Unserializing instances of this class is forbidden.
     *
     * @since 1.0.0
     */
    public function __wakeup() {
        _doing_it_wrong(__FUNCTION__, __('Cheatin&#8217; huh?'), '1.0.0');
    }
    /**
     * Plugin page links
     *
     * @since  1.0.0
     */
    public function woa_shp_plugin_links($links) {
        $plugin_links = array(
            '<a href="https://wordpress.org/support/plugin/storefront-header-picker">' . __('Support', 'storefront-header-picker') . '</a>'
        );
        return array_merge($plugin_links, $links);
    }
    /**
     * Installation.
     * Runs on activation. Logs the version number and assigns a notice message to a WordPress option.
     * @access  public
     * @since   1.0.0
     * @return  void
     */
    public function install() {
        $this->_log_version_number();
        if ('storefront' != basename(TEMPLATEPATH)) {
            deactivate_plugins(plugin_basename(__FILE__));
            wp_die('Sorry, you can&rsquo;t activate this plugin unless you have installed the Storefront theme.');
        }
        // get theme customizer url
        $url = admin_url() . 'customize.php?';
        $url .= 'url=' . urlencode(site_url() . '?storefront-customizer=true');
        $url .= '&return=' . urlencode(admin_url() . 'plugins.php');
        $url .= '&storefront-customizer=true';
        $notices   = get_option('woa_shp_activation_notice', array());
        $notices[] = sprintf(__('%sThanks for installing the Header Picker for storefront extension. To get started, visit the %sCustomizer%s.%s %sOpen the Customizer%s', 'storefront-header-picker'), '<p>', '<a href="' . esc_url($url) . '">', '</a>', '</p>', '<p><a href="' . esc_url($url) . '" class="button button-primary">', '</a></p>');
        update_option('woa_shp_activation_notice', $notices);
    }
    /**
     * Log the plugin version number.
     * @access  private
     * @since   1.0.0
     * @return  void
     */
    private function _log_version_number() {
        // Log the version number.
        update_option($this->token . '-version', $this->version);
    }
    /**
     * Setup all the things.
     * Only executes if Storefront or a child theme using Storefront as a parent is active and the extension specific filter returns true.
     * Child themes can disable this extension using the storefront_header_picker_enabled filter
     * @return void
     */
    function woa_shp_high_priority_style() {
        wp_enqueue_style('woa-shp-header-style', plugins_url('/css/style.css', __FILE__));
    }
    public function woa_shp_setup() {
        $theme = wp_get_theme();
        if ('Storefront' == $theme->name || 'storefront' == $theme->template && apply_filters('storefront_header_picker_supported', true)) {
            global $wp_customize;
            add_action('customize_register', array(
                $this,
                'woa_shp_customize_register'
            ));
            add_filter('body_class', array(
                $this,
                'woa_shp_body_class'
            ));
            add_action('admin_notices', array(
                $this,
                'woa_shp_customizer_notice'
            ));
            add_action('wp', array(
                $this,
                'woa_shp_layout_adjustments'
            ), 100);
            if (!(function_exists('Storefront_Designer'))) {
                if (isset($wp_customize)) {
                    add_action('wp_head', array(
                        $this,
                        'woa_add_customizer_css'
                    ));
                }
                add_action('wp_enqueue_scripts', array(
                    $this,
                    'woa_shp_high_priority_style'
                ), '100');
            }
        }
    }
    /**
     * Admin notice
     * Checks the notice setup in install(). If it exists display it then delete the option so it's not displayed again.
     * @since   1.0.0
     * @return  void
     */
    public function woa_shp_customizer_notice() {
        $notices = get_option('woa_shp_activation_notice');
        if ($notices = get_option('woa_shp_activation_notice')) {
            foreach ($notices as $notice) {
                echo '<div class="updated">' . $notice . '</div>';
            }
            delete_option('woa_shp_activation_notice');
        }
    }
    /**
     * Customizer Controls and settings
     * @param WP_Customize_Manager $wp_customize Theme Customizer object.
     */
    public function woa_shp_customize_register($wp_customize) {
        $wp_customize->get_section('header_image')->title    = __('Header', 'storefront');
        $wp_customize->get_section('header_image')->priority = 35;
        if (!(function_exists('Storefront_Designer'))) {
            $wp_customize->add_setting('woa_shp_header_picker', array(
                'default' => 'default'
            ));
            $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'woa_shp_header_picker', array(
                'type' => 'radio',
                'label' => 'Header Layout',
                'description' => __('Lets you customize header layout.'),
                'section' => 'header_image',
                'choices' => array(
                    'default' => 'Default',
                    'compact' => 'Compact',
                    'centered' => 'Centered'
                )
            )));
        }
        $wp_customize->add_setting('woa_shp_hide_product_search_bar');
        $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'woa_shp_hide_product_search_bar', array(
            'type' => 'checkbox',
            'description' => __('Removes the product search bar in the header.'),
            'label' => 'Hide Product Search Bar',
            'section' => 'header_image'
        )));
        $wp_customize->add_setting('woa_shp_hide_cart_dropdown');
        $wp_customize->add_control(new WP_Customize_Control($wp_customize, 'woa_shp_hide_cart_dropdown', array(
            'type' => 'checkbox',
            'label' => 'Hide Cart Items Dropdown',
            'description' => __('Removes the cart item menu in the header.'),
            'section' => 'header_image'
        )));
    }
    /**
     * Storefront Header Picker Body Class
     * Adds a class based on the extension name and any relevant settings.
     */
    public function woa_shp_body_class($classes) {
        $classes[] = 'storefront-header-picker-active';
        return $classes;
    }
    function woa_shp_compact_navigation_wrapper() {
        echo '<section class="wooassist-compact-layout">';
    }
    function woa_shp_compact_navigation_wrapper_close() {
        echo '</section>';
    }
    function woa_shp_centered_navigation_wrapper() {
        echo '<section class="wooassist-centered-layout">';
    }
    function woa_shp_centered_navigation_wrapper_close() {
        echo '</section>';
    }
    /**
     * Layout
     * Adjusts the default Storefront layout when the plugin is active
     */
    public function woa_shp_layout_adjustments() {
        if (in_array('woocommerce/woocommerce.php', apply_filters('active_plugins', get_option('active_plugins')))) {
            $woa_shp_is_woocommerce_active = true;
        } else {
            $woa_shp_is_woocommerce_active = false;
        }
        ;
        if (get_theme_mod('woa_shp_hide_cart_dropdown') != '') {
            $woa_shp_is_hide_menu_cart_active = true;
        } else {
            $woa_shp_is_hide_menu_cart_active = false;
        }
        ;
        if (get_theme_mod('woa_shp_hide_product_search_bar') != '') {
            $woa_shp_is_hide_product_search_active = true;
        } else {
            $woa_shp_is_hide_product_search_active = false;
        }
        ;
        if (!(function_exists('Storefront_Designer'))) {
            if (get_theme_mod('woa_shp_header_picker') == 'compact') {
                if ($woa_shp_is_woocommerce_active) {
                    $theme = wp_get_theme();
                    if ($theme->version < 2.0) {
                        remove_action('storefront_header', 'storefront_secondary_navigation', 30);
                        remove_action('storefront_header', 'storefront_header_cart', 60);
                        add_action('storefront_header', 'storefront_header_cart', 30);
                    } else {
                        remove_action('storefront_header', 'storefront_secondary_navigation', 30);
                        remove_action('storefront_header', 'storefront_site_branding', 20);
                        add_action('storefront_header', 'storefront_site_branding', 43);
                        remove_action('storefront_header', 'storefront_product_search', 40);
                        remove_action('storefront_header', 'storefront_header_cart', 60);
                        add_action('storefront_header', 'storefront_header_cart', 44);
                        add_action('storefront_header', 'storefront_product_search', 44);
                    }
                }
                add_action('storefront_header', array(
                    $this,
                    'woa_shp_compact_navigation_wrapper'
                ), 15);
                add_action('storefront_header', array(
                    $this,
                    'woa_shp_compact_navigation_wrapper_close'
                ), 65);
            }
            if (get_theme_mod('woa_shp_header_picker') == 'centered') {
                if ($woa_shp_is_woocommerce_active) {
                    remove_action('storefront_header', 'storefront_product_search', 40);
                    add_action('storefront_header', 'storefront_product_search', 61);
                    remove_action('storefront_header', 'storefront_secondary_navigation', 30);
                }
                add_action('storefront_header', array(
                    $this,
                    'woa_shp_centered_navigation_wrapper'
                ), 15);
                add_action('storefront_header', array(
                    $this,
                    'woa_shp_centered_navigation_wrapper_close'
                ), 65);
            }
        }
        if ($woa_shp_is_hide_product_search_active && $woa_shp_is_woocommerce_active) {
            remove_action('storefront_header', 'storefront_product_search', 40);
            remove_action('storefront_header', 'storefront_product_search', 44);
            remove_action('storefront_header', 'storefront_product_search', 61);
        }
        if ($woa_shp_is_hide_menu_cart_active && $woa_shp_is_woocommerce_active) {
            remove_action('storefront_header', 'storefront_header_cart', 60);
            remove_action('storefront_header', 'storefront_header_cart', 44);
            remove_action('storefront_header', 'storefront_header_cart', 30);
        }
    }
	/**
     * Provide CSS to the live customizer
     * Adjusts the default Storefront layout when the plugin is active
     */
    function woa_add_customizer_css() {
        ?>
			 <style type="text/css">
				 @media (min-width: 768px){
					.storefront-header-picker-active .wooassist-compact-layout .main-navigation  {
						width: 55%;
						float: right;
						margin-right: 0em;
						clear: none;
						text-align: right;
					}
					.storefront-header-picker-active  .wooassist-compact-layout .site-branding,.storefront-header-picker-active .wooassist-compact-layout .site-logo-anchor,.storefront-header-picker-active .wooassist-compact-layout .site-logo-link{
						margin-right: 1%;
					}	
					.storefront-header-picker-active .wooassist-compact-layout .storefront-primary-navigation{
						background: none;
					}
					.storefront-header-picker-active .wooassist-compact-layout .site-search .widget_product_search{
						margin-left:2%;
						width: 100%;
					} 
					.storefront-header-picker-active .wooassist-compact-layout .site-header-cart{
						margin-left:2%;
						width: 20%;
					}
					.storefront-header-picker-active .wooassist-centered-layout .site-branding{
						text-align: center;
						margin: 0 auto;
						float: none;
						width: 27%;
					}
					
					.storefront-header-picker-active .wooassist-centered-layout .site-search {
						float: right;
						margin-right: 2%;
					}
					.storefront-header-picker-active .wooassist-centered-layout .main-navigation{
						width: 55%;
					}

				}
			</style>
		<?php
    }
} // End Class
