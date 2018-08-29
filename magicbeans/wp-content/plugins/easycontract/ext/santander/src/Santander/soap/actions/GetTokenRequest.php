<?php

/**
 * GetTokenRequest
 *
 * @file GetTokenRequest.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

namespace Santander\soap\actions;

class GetTokenRequest {
    public $StoreId; // string
    public $StoreIdentifier; // string
    public $MerchantNumber; // string
    public $Currency; // string
    public $CampaignCode; // string
    public $PurchaseAmount; // decimal
    public $DynamicReturnURL; // string
}
