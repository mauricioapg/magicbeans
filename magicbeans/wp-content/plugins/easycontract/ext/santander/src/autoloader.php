<?php

/**
 * @file autoloader.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

define('SANTANDER_BASE_PATH', realpath(__DIR__));

function santanderAutoloader($class) {
    $classParts = explode('\\', $class, 2);
    // Don't interfere with other autoloaders
    if ($classParts[0] !== 'Santander') {
        return;
    }
    
    $file = SANTANDER_BASE_PATH . DIRECTORY_SEPARATOR . str_replace('\\', DIRECTORY_SEPARATOR, $class) . '.php';
    require_once $file;
}

spl_autoload_register('santanderAutoloader');