<?php
/*
Plugin Name: Custom Site Logo
Plugin URI:  http://iticiti.co/custom-site-logo-plugin-details/
Description: This is a plugin to show the custom logo in site header or any where.
Author: Awais Altaf
Author URI: http://iticiti.co/
Version: 1.0.2
Text Domain: csl_custom_site_logo
License: GNU General Public License v2 or later
License URI: http://www.gnu.org/licenses/gpl-2.0.html
*/
/*
Custom Site Logo is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
any later version.
 
Custom Site Logo is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.
 
You should have received a copy of the GNU General Public License
along with Custom Site Logo. If not, see http://www.gnu.org/licenses/gpl-2.0.html.
*/

/* Register Settings with Section */
add_action( 'admin_init', 'csl_CustomSiteLogo_init_settings' );
function csl_CustomSiteLogo_init_settings(){
	/* Register General Settings */
	register_setting( 'csl_custom_site_logo', 'csl_CustomSiteLogo_option_name' );

	// register a new section in the "wporg" page
	 add_settings_section(
		 'csl_CustomSiteLogo_section_developers',
		 __( 'Custom Site Logo Settings', 'csl_custom_site_logo' ),  /* WordPress Function To Translate String  */
		 'csl_CustomSiteLogo_section_developers_function',
		 'csl_custom_site_logo'
	 );

	/* Logo Image Upload Field */
	 add_settings_field(
		 'csl_CustomSiteLogo_image_field', 
		 __( 'Upload Image', 'csl_custom_site_logo' ),  
		 'csl_CustomSiteLogo_image_field_callback_function',
		 'csl_custom_site_logo',
		 'csl_CustomSiteLogo_section_developers',
		 [
		 'label_for' => 'csl_CustomSiteLogo_image_field',
		 'class' => 'csl_CustomSiteLogo_row_image',
		 ]
	 );

	 /* Logo Hover Effect Field */
	 add_settings_field(
		 'csl_CustomSiteLogo_hover_effect_field', 
		 __( 'Choose Hover Effect', 'csl_custom_site_logo' ),  
		 'csl_CustomSiteLogo_hover_effecr_field_callback_function',
		 'csl_custom_site_logo',
		 'csl_CustomSiteLogo_section_developers',
		 [
		 'label_for' => 'csl_CustomSiteLogo_hover_effect_field',
		 'class' => 'csl_CustomSiteLogo_row_custom_url',
		 ]
	 );

	 /* Logo Width Field */
	 add_settings_field(
		 'csl_CustomSiteLogo_width_field', 
		 __( 'Logo Width', 'csl_custom_site_logo' ),  
		 'csl_CustomSiteLogo_width_field_callback_function',
		 'csl_custom_site_logo',
		 'csl_CustomSiteLogo_section_developers',
		 [
		 'label_for' => 'csl_CustomSiteLogo_width_field',
		 'class' => 'csl_CustomSiteLogo_row_width_field',
		 ]
	 );

	 /* Logo Height Field */
	 add_settings_field(
		 'csl_CustomSiteLogo_height_field', 
		 __( 'Logo Height', 'csl_custom_site_logo' ),  
		 'csl_CustomSiteLogo_height_field_callback_function',
		 'csl_custom_site_logo',
		 'csl_CustomSiteLogo_section_developers',
		 [
		 'label_for' => 'csl_CustomSiteLogo_height_field',
		 'class' => 'csl_CustomSiteLogo_row_height_field',
		 ]
	 );

	 /* Logo Image Center Field */
	 add_settings_field(
		 'csl_CustomSiteLogo_image_center_field', 
		 __( 'Center Logo', 'csl_custom_site_logo' ),  
		 'csl_CustomSiteLogo_image_center_field_callback_function',
		 'csl_custom_site_logo',
		 'csl_CustomSiteLogo_section_developers',
		 [
		 'label_for' => 'csl_CustomSiteLogo_image_center_field',
		 'class' => 'csl_CustomSiteLogo_row_image_center',
		 ]
	 );

	 /* Logo Image Responsive Field */
	 add_settings_field(
		 'csl_CustomSiteLogo_image_responsive_field', 
		 __( 'Make Logo Responsive', 'csl_custom_site_logo' ),  
		 'csl_CustomSiteLogo_image_responsive_field_callback_function',
		 'csl_custom_site_logo',
		 'csl_CustomSiteLogo_section_developers',
		 [
		 'label_for' => 'csl_CustomSiteLogo_image_responsive_field',
		 'class' => 'csl_CustomSiteLogo_row_image_responsive',
		 ]
	 );

	 /* Logo Custom URL Link Responsive Field */
	 add_settings_field(
		 'csl_CustomSiteLogo_custom_url_field', 
		 __( 'Link logo to custom URL', 'csl_custom_site_logo' ),  
		 'csl_CustomSiteLogo_custom_url_field_callback_function',
		 'csl_custom_site_logo',
		 'csl_CustomSiteLogo_section_developers',
		 [
		 'label_for' => 'csl_CustomSiteLogo_custom_url_field',
		 'class' => 'csl_CustomSiteLogo_row_custom_url',
		 ]
	 );

	 

}

/* Settings Section Callback function */
function csl_CustomSiteLogo_section_developers_function( $args ){
?>	<!-- Setting Section -->
	<!-- Use Details -->
	<div class="csl-CustomSiteLogo-notice-block">
		<?php 	echo '<span>Dear user, kindly paste <b>'. htmlspecialchars("<?php echo csl_CustomSiteLogo_show_logo(); ?>") . '</b> in your template where you want to display the logo.</span><br><br>'; ?>
		<?php 	echo '<span>Dear user, kindly paste shortcode <b>'. htmlspecialchars("[csl_display_logo]") . '</b> in your post, page or any editor where you want to display the logo.</span>'; ?>
	</div>
<?php
}

function csl_CustomSiteLogo_image_field_callback_function( $args ) {
	$csl_options = get_option( 'csl_CustomSiteLogo_option_name' );
?><p>
		<input id="csl_CustomSiteLogo_image_button" type="button" value="Media Library" class="button-secondary" />
		<input id="csl_CustomSiteLogo_logo_image" class="regular-text code" type="text" 
		name="csl_CustomSiteLogo_option_name[<?php echo esc_attr($args['label_for']); ?>]" 
		value="<?php echo !empty($csl_options[esc_attr($args['label_for'])]) ?( esc_attr($csl_options[$args['label_for']]) ):('Select Logo') ;?>">
	</p>
	<p class="description">Enter an image URL or use an image from media library.</p>

<?php		
		
	
}

/* Settings Width Logo Callback function  */
function csl_CustomSiteLogo_width_field_callback_function( $args ){
	$csl_options = get_option( 'csl_CustomSiteLogo_option_name' );
?>
	<input id="csl_CustomSiteLogo_logo_width" class="regular-text code" type="number" 
	name="csl_CustomSiteLogo_option_name[<?php echo esc_attr($args['label_for']); ?>]" 
	value="<?php echo !empty($csl_options[esc_attr($args['label_for'])]) ?( esc_attr($csl_options[$args['label_for']]) ):('') ;?>">
	<p class="description">
		<?php _e('Put width in px. If you want default logo width with just leave it empty.','csl_custom_site_logo'); ?>
	</p>
<?php
}

/* Settings Height Logo Callback function  */
function csl_CustomSiteLogo_height_field_callback_function( $args ){
	$csl_options = get_option( 'csl_CustomSiteLogo_option_name' );
?>
	<input id="csl_CustomSiteLogo_logo_width" class="regular-text code" type="number" 
	name="csl_CustomSiteLogo_option_name[<?php echo esc_attr($args['label_for']); ?>]" 
	value="<?php echo !empty($csl_options[esc_attr($args['label_for'])]) ?( esc_attr($csl_options[$args['label_for']]) ):('') ;?>">
	<p class="description">
		<?php _e('Put height in px. If you want default logo height with just leave it empty.','csl_custom_site_logo'); ?>
	</p>
<?php
}

/* Settings Center Logo Callback function */
function csl_CustomSiteLogo_image_center_field_callback_function( $args ){
	$csl_options = get_option( 'csl_CustomSiteLogo_option_name' );
	$center_logo_option = isset( $csl_options[esc_attr($args['label_for'])] ) ? $csl_options[esc_attr($args['label_for'])] : 0; 
?>
	<input type="checkbox" id="<?php echo esc_attr( $args['label_for'] ); ?>" 
	name="csl_CustomSiteLogo_option_name[<?php echo esc_attr($args['label_for']); ?>]" 
	value="1" <?php checked($center_logo_option, 1); ?>  />

	<label for="csl_CustomSiteLogo_option_name[<?php echo esc_attr($args['label_for']); ?>]">
		<?php _e('Please check if you want to center the logo','csl_custom_site_logo'); ?>
	</label>
	<p class="description">
		<?php _e('Check this option to center the logo.','csl_custom_site_logo'); ?>
	</p>
<?php
}

/* Settings Responsive Logo Callback function */
function csl_CustomSiteLogo_image_responsive_field_callback_function( $args ){
	$csl_options = get_option( 'csl_CustomSiteLogo_option_name' );
	$responsive_logo_option = isset( $csl_options[esc_attr($args['label_for'])] ) ? $csl_options[esc_attr($args['label_for'])] : 0; 
?>
	
	<input type="checkbox" id="<?php echo esc_attr( $args['label_for'] ); ?>"  name="csl_CustomSiteLogo_option_name[<?php echo esc_attr($args['label_for']); ?>]" 
	value="1" <?php checked($responsive_logo_option, 1); ?> />
	<label for="csl_CustomSiteLogo_option_name[<?php echo esc_attr($args['label_for']); ?>]">
		<?php _e('Please check if you want to make logo responsive','csl_custom_site_logo'); ?>
	</label>
	<p class="description">
		<?php _e('Check this option for responsive logo.'); ?>
	</p>
<?php
}


/* Settings Custom URL Logo Callback function */
function csl_CustomSiteLogo_custom_url_field_callback_function( $args ){
	$csl_options = get_option( 'csl_CustomSiteLogo_option_name' );
?>
	<input id="csl_CustomSiteLogo_custom_url_responsive_field" class="regular-text code" type="text" 
		name="csl_CustomSiteLogo_option_name[<?php echo esc_attr($args['label_for']); ?>]" 
		 placeholder="Put custom link here"  value="<?php echo !empty($csl_options[esc_attr($args['label_for'])]) ?( esc_attr($csl_options[$args['label_for']]) ): '' ;?>">
	
	<p class="description">
		<?php _e('Put any custom URL.','csl_custom_site_logo'); ?>
	</p>
	<?php
}

function csl_CustomSiteLogo_hover_effecr_field_callback_function( $args ){
	$csl_options = get_option( 'csl_CustomSiteLogo_option_name' );
?>
	<p>
		<select id="csl_CustomSiteLogo_hover_effect" name="csl_CustomSiteLogo_option_name[<?php echo esc_attr($args['label_for']); ?>]">
			<option value="none" <?php selected($csl_options[$args['label_for']], 'none'); ?>>None</option>
			<option value="hvr-grow" <?php selected($csl_options[$args['label_for']], 'hvr-grow'); ?>>Grow</option>
			<option value="hvr-shrink" <?php selected($csl_options[$args['label_for']], 'hvr-shrink'); ?>>Shrink</option>
			<option value="hvr-push" <?php selected($csl_options[$args['label_for']], 'hvr-push'); ?>>Push</option>
			<option value="hvr-pop" <?php selected($csl_options[$args['label_for']], 'hvr-pop'); ?>>Pop</option>
			<option value="hvr-rotate" <?php selected($csl_options[$args['label_for']], 'hvr-rotate'); ?>>Rotate</option>
			<option value="hvr-grow-rotate" <?php selected($csl_options[$args['label_for']], 'hvr-grow-rotate'); ?>>Grow Rotate</option>
			<option value="hvr-float" <?php selected($csl_options[$args['label_for']], 'hvr-float'); ?>>Float</option>
			<option value="hvr-sink" <?php selected($csl_options[$args['label_for']], 'hvr-sink'); ?>>Sink</option>
			<option value="hvr-skew" <?php selected($csl_options[$args['label_for']], 'hvr-skew'); ?>>Skew</option>
			<option value="hvr-skew-forward" <?php  selected($csl_options[$args['label_for']], 'hvr-skew-forward'); ?>>Skew Forward</option>
			<option value="hvr-skew-backward" <?php  selected($csl_options[$args['label_for']], 'hvr-skew-backward'); ?>>Skew Backward</option>
			<option value="hvr-wobble-horizontal" <?php  selected($csl_options[$args['label_for']], 'hvr-wobble-horizontal'); ?>>Wobble Horizontal</option>
			<option value="hvr-wobble-vertical" <?php  selected($csl_options[$args['label_for']], 'hvr-wobble-vertical'); ?>>Wobble Vertical</option>
			<option value="hvr-wobble-to-bottom-right" <?php  selected($csl_options[$args['label_for']], 'hvr-wobble-to-bottom-right'); ?>>Wobble to bottom right</option>
			<option value="hvr-wobble-to-top-right" <?php  selected($csl_options[$args['label_for']], 'hvr-wobble-to-top-right'); ?>>Wobble to top right</option>
			<option value="hvr-wobble-top" <?php  selected($csl_options[$args['label_for']], 'hvr-wobble-top'); ?>>Wobble Top</option>
			<option value="hvr-wobble-bottom" <?php  selected($csl_options[$args['label_for']], 'hvr-wobble-bottom'); ?>>Wobble Bottom</option>
			<option value="hvr-wobble-skew" <?php  selected($csl_options[$args['label_for']], 'hvr-wobble-skew'); ?>>Wobble Skew</option>
			<option value="hvr-buzz" <?php  selected($csl_options[$args['label_for']], 'hvr-buzz'); ?>>Buzz</option>
			<option value="hvr-buzz-out" <?php  selected($csl_options[$args['label_for']], 'hvr-buzz-out'); ?>>Buzz Out</option>
                        <option value="rotate-csl" <?php  selected($csl_options[$args['label_for']], 'rotate-csl'); ?>>Rotate</option>
		</select>
	</p>


<div class="csl-preview-blocks" <?php  if(isset($csl_options['csl_CustomSiteLogo_image_field']) && ($csl_options['csl_CustomSiteLogo_image_field'] != 'Select Logo')){  }else{ echo 'style=display:none;'; } ?>>
	<p id="csl-margi-btm"><strong><?php _e('Check logo preview with hover effect if selected','csl_custom_site_logo'); ?></strong></p>
	<img id="csl_CustomSiteLogo_admin_hover_preview" class="<?php echo esc_attr($csl_options['csl_CustomSiteLogo_hover_effect_field']); ?>" 
	src="<?php echo esc_attr($csl_options['csl_CustomSiteLogo_image_field']); ?>" alt="Logo" />
	<p class="description"><?php _e('Select best hover effects','csl_custom_site_logo'); ?></p>
</div>

<div class="csl-error-logo-url">
	<p><?php _e('No Preview Available','csl_custom_site_logo'); ?></p>
</div>
<?php

}

/* Check Logo URL */
function csl_CustomSiteLogo_check_logo_url( $csl_logo_url ){
	if(isset($csl_logo_url)){
		$csl_logo_url = parse_url($csl_logo_url);
		if($csl_logo_url['scheme'] == 'https' || $csl_logo_url['scheme'] == 'http'){
   			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}
	
}

/* Adding Admin Page */
add_action('admin_menu', 'csl_CustomSiteLogo_add_menu_page');
function csl_CustomSiteLogo_add_menu_page()
{
    add_submenu_page(
        'themes.php', /* Adding this submenu to Settings Main Menu */
        __('Custom Site Logo','csl_custom_site_logo'),
        __('Custom Site Logo','csl_custom_site_logo'),
        'manage_options',
        'csl_custom_site_logo',
        'csl_CustomSiteLogo_submenu_callback_function'
    );
}

/* Admin Page Callback Function */
function csl_CustomSiteLogo_submenu_callback_function(){
	/* Check user capability */
	if ( ! current_user_can( 'manage_options' ) ) {
 		return;
 	}
 	/* wordpress will add the "settings-updated" $_GET parameter to the url */
	if ( isset( $_GET['settings-updated'] ) ) {
	// add settings saved message with the class of "updated"
		add_settings_error( 'csl_CustomSiteLogo_messages', 'csl_CustomSiteLogo_message', __( 'Logo Settings Saved Successfully', 'csl_custom_site_logo' ), 'updated' );
?>
	<div id="message" class="updated">
	<p><strong><?php _e('Settings Saved Successfully.') ?></strong></p>
	</div>
<?php	
	}

	 
	?>
  <div class="wrap">
    <form action="options.php" method="post" class="csl_CustomSiteLogo_form" >
   	<!-- Display Settings Here -->
   	<?php

	   	 // output security fields for the registered setting "csl_custom_site_logo"
		 settings_fields( 'csl_custom_site_logo' );
		 
		 // output setting sections and their fields
		 do_settings_sections( 'csl_custom_site_logo' );
		 
		 // output save settings button
		 submit_button( 'Save Settings' );

   	?>

   </form>
  </div><!-- wrap -->
  <?php
}


/* Building Shortcode */
function csl_CustomSiteLogo_shortcodes_init(){
	function csl_CustomSiteLogo_show_logo(){
		/* Get Options */
		$get_csl_options  = get_option('csl_CustomSiteLogo_option_name');

		/* Assign Option Values */
		$csl_image_field = $get_csl_options['csl_CustomSiteLogo_image_field'];
		$csl_image_url = $get_csl_options['csl_CustomSiteLogo_custom_url_field'];
		$csl_option_width = $get_csl_options['csl_CustomSiteLogo_width_field'];
		$csl_option_height = $get_csl_options['csl_CustomSiteLogo_height_field'];
		$csl_option_responsive = isset( $get_csl_options['csl_CustomSiteLogo_image_responsive_field'] ) ? $get_csl_options['csl_CustomSiteLogo_image_responsive_field'] : 0;
		$csl_option_hover = $get_csl_options['csl_CustomSiteLogo_hover_effect_field'];
		$csl_option_center = isset( $get_csl_options['csl_CustomSiteLogo_image_center_field'] ) ? $get_csl_options['csl_CustomSiteLogo_image_center_field'] : 0;

		if(isset($csl_image_field) && !empty($csl_image_field)){
?>
		<div class="csl-logo-block" style="<?php if($csl_option_center == 1){ echo esc_attr(('text-align:center')); } ?>">
			<a id="csl-logo-block-link" href="<?php if(!empty($csl_image_url)){ echo esc_url($csl_image_url); }else{ echo esc_attr("#"); } ?>">
				<img id="csl-customsite-logo" class="csl-customsite-logo <?php echo esc_attr($csl_option_hover); ?>" 
				src="<?php echo esc_url($csl_image_field); ?>" style=" <?php if(!empty($csl_option_width)){ echo esc_attr('width:'.$csl_option_width.'px;'); } ?> 
				<?php if(!empty($csl_option_height)){ echo esc_attr('height:'.$csl_option_height.'px;'); } ?>
					<?php if($csl_option_responsive == 1){  echo esc_attr('width:100%;max-width:100%;height:auto;'); } ?>" />
			</a>
		</div><!-- csl-logo-block Ends -->
<?php
		}else{
?>
		<div class="csl-error">Error! No Logo Upload. Please upload logo : <strong>(Dashboard => Appearence => Custom Site Logo)</strong></div>
<?php
		}
	}
	add_shortcode("csl_display_logo","csl_CustomSiteLogo_show_logo");
}
add_action('init', 'csl_CustomSiteLogo_shortcodes_init');

/* Enqueuing Admin Scripts and Styles */
function csl_CustomSiteLogo_admin_modal_js()
{
	// Enqueue the JS & CSS:
	wp_enqueue_media(); // Fixing media library button
	wp_enqueue_style( 'thickbox' );
	wp_enqueue_style('csl_CustomSiteLogo_admin_css', plugins_url( 'assets/css/custom-site-logo-admin.css', __FILE__ ), array(),'1.0', 'all');
	wp_enqueue_style('csl_CustomSiteLogo_admin_hover_css', plugins_url( 'assets/css/hover-css/hover-min.css', __FILE__ ), array(),'1.0', 'all');
	wp_enqueue_script('csl_CustomSiteLogo_admin_js', plugins_url( 'assets/js/custom-site-logo-admin.js', __FILE__ ), array('jquery', 'media-upload', 'thickbox'),'1.0', true);
}
add_action( 'admin_enqueue_scripts', 'csl_CustomSiteLogo_admin_modal_js'); 

/* Enqueuing Frontend Styles */
function csl_CustomSiteLogo_front_css()
{
	// Enqueue the styles:
	wp_enqueue_style('csl_CustomSiteLogo_front_hover_css', plugins_url( 'assets/css/hover-css/hover-min.css', __FILE__ ), array(),'1.0', 'all');
	wp_enqueue_style('csl_CustomSiteLogo_front_css', plugins_url( 'assets/css/custom-site-logo-front.css', __FILE__ ), array(),'1.0', 'all');

}
add_action( 'wp_enqueue_scripts', 'csl_CustomSiteLogo_front_css'); 

add_filter('plugin_action_links', 'csl_CustomSiteLogo_add_action_plugin', 10, 5);

/* Custom Site Logo action links */
function csl_CustomSiteLogo_add_action_plugin($actions, $plugin_file) 
{
	static $plugin;
	if (!isset($plugin))
	$plugin = plugin_basename(__FILE__);
	if ($plugin == $plugin_file) {
	$settings 	= array('settings' 	=> '<a href="admin.php?page=csl_custom_site_logo">' . __('Settings', 'General') . '</a>');
	$actions = array_merge($settings, $actions);
	}
	return $actions;
}   