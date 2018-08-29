<?php

/**
 * GetCampaignValuesRequest
 *
 * @file GetCampaignValuesRequest.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

namespace Santander\soap\actions;

class GetCampaignValuesRequest {
    public $StoreId; // string
    public $CampaignID; // string
    public $PurchaseAmount; // double
}
