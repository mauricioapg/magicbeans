<?php

/**
 * Santander
 *
 * @file Santander.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

define('SANTANDER_LIB_PATH', SANTANDER_BASE_PATH . DIRECTORY_SEPARATOR . 'Santander');

use Santander\base\Api;
use Santander\base\Config;
use Santander\base\Logger;

class Santander {
    /**
     * @var \Santander\base\Api 
     */
    public static $api;
    
    /**
     * @var \Santander\base\Logger 
     */
    public static $logger;
    
    /**
     * @var boolean 
     */
    private static $_isRunning = FALSE;
    
    public static function run(\Santander\base\APIConnectorInterface $config) {
        static::$api = Api::getInstance(new Config($config));
        static::$logger = Logger::getInstance();
        self::$_isRunning = TRUE;
    }
    
    public static function isRunning() {
        return self::$_isRunning;
    }
    
    public static function version() {
        return '1.0.3';
    }
    
    private function __construct() {}
}