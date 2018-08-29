=== Storefront Header Picker===
Contributors: wooassist
Tags: header, custom, customizer, layout, storefront
Requires at least: 3.0.1
Tested up to: 4.9.4
Stable tag: 4.9.4
License: GPLv2
License URI: http://www.gnu.org/licenses/gpl-2.0.html

Storefront Header Picker plugin lets you select a header layout to your site by adding a Header Layout tab to the customizer for the Storefront theme.

== Description ==

Lets you pick a header layout for Storefront theme.

This plugin is built to work only for the [Storefront theme](https://wordpress.org/themes/storefront).

**How to use:**

1.	On your WordPress Dashboard, go to "Appearance" and click on "Customize". 
2. Find the "Header" section
3. Choose either default, compact, or centered layout
4. Choose either to hide/unhide the product search box in the header.
5. Choose either to hide/unhide mini cart in the header.

**Note:**
The compact layout can only hold either one of the search box or the mini cart.

== Installation ==

**Install via the WordPress Dashboard:**

1. Login to your WordPress Dashboard.
2. Navigate to Plugins, and select "Add New" to go to the "Add Plugins" page.
3. Search for "Storefront Header Picker" in the search input bar, and hit your enter key.
4. Click "Install", and wait for the plugin to download. Once done, activate the plugin.

**Install via FTP:**

1. Extract the zip file, login using your FTP client, and upload the storefront-header-picker folder to your `/wp-content/plugins/` directory
2. Login to your WordPress Dashboard.
3. Go to "Plugins" and activate "Storefront Header Picker" plugin.

== Screenshots ==

1. Here's a screenshot the header layout section.
2. Here's a screenshot when centered layout is selected.
3. Here's a screenshot when compact layout is selected.

== Frequently Asked Questions ==

**Will this plugin work for themes other than Storefront?**
No. This plugin was designed to work for the Storefront theme, utilizing Storefront's action hooks and filters. Activating the plugin while using a different theme will trigger a warning.

**I've activated the plugin. Where can I access the settings?**
The settings for this plugin can be found in the Customizer page under Appearance. In that page, find the section named "Header".

**I want to use Storefront Designer. Will it have a conflict on the header layout?**
When you have Storefront Designer enabled, the layout picker of Storefront Header Picker will be disabled. The Storefront Designer's layout picker will have priority to avoid CSS conflicts with two layout pickers enabled. The checkboxes to disable/enable the product search bar and the cart menu dropdown will be the only function that will work.



== Changelog ==

= 1.0.0 =
* initial release

= 1.0.1 =
* added screenshots
=1.0.2=
* added css to compact layout 
