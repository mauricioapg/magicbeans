<?php

/**
 * AuthorizationType
 *
 * @file AuthorizationType.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

namespace Santander\soap;

class AuthorizationType {
    const System = 'System';
    const Chain = 'Chain';
    const Store = 'Store';
    const User = 'User';
    const Service = 'Service';
    const Transaction = 'Transaction';
    const Impersonate = 'Impersonate';
}
