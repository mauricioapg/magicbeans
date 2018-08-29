<?php

/**
 * CampaignItem
 *
 * @file CampaignItem.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

namespace Santander\soap\actions;

class CampaignItem {
    public $AccountGroup; // string
    public $CampaignID; // string
    public $Description; // string
    public $OpeningFee; // double
    public $Interest; // double
    public $MinAmount; // double
    public $MaxAmount; // double
    public $MonthlyFee; // double
    public $MonthlyCost; // long
    public $Months; // int
    public $MonthlyFeeIndicator; // boolean
    public $InterestIndicator; // boolean
}
