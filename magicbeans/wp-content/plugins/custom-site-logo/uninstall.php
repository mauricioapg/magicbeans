<?php
/* Uninstall File IT Popup */

if (!defined('WP_UNINSTALL_PLUGIN')) {
    die;
}
 
/* Deleting Options */
delete_option('csl_CustomSiteLogo_option_name');

?>