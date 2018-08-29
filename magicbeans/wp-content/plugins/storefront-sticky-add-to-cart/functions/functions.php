<?php
/**
 * Returns the main instance of Storefront_Sticky_Add_to_Cart to prevent the need to use globals.
 *
 * @since  1.0.0
 * @return object Storefront_Sticky_Add_to_Cart
 */
function storefront_sticky_add_to_cart() {
	return Storefront_Sticky_Add_to_Cart::instance();
} // End Storefront_Sticky_Add_to_Cart()