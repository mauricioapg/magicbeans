<?php

/**
 * APIConnectorInterface
 *
 * @file APIConnectorInterface.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

namespace Santander\base;

/**
 * The class that is passed to Santander API config as the external/platform 
 * configuration handler must implement this interface.
 */
interface APIConnectorInterface {
    /**
     * Get a config variable from the external/platform configuration handler.
     * @param string $configKey
     * @return mixed
     */
    public function getData($configKey);
}
