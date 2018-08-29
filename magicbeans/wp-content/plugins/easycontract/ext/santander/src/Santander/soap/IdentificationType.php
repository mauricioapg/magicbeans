<?php

/**
 * IdentificationType
 *
 * @file IdentificationType.php
 * @author Consid S5 AB <henrik.soderlind@consid.se>
 * @version 1.0.0
 * @created 2015-aug-04
 */

namespace Santander\soap;

class IdentificationType {
    const User = 'User';
    const UserAndPassword = 'UserAndPassword';
    const Pincode = 'Pincode';
    const Certificate = 'Certificate';
}
