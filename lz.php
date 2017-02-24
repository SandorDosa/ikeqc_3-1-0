<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 2/24/17
 * Time: 12:09 AM
 */
$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "colors.inc";

// This is a special page meant to 'catch' return calls from various places
// It does not in and of itself serve content of any kind.

IF (isset($QRCD)) { // GENERIC QR Code langing spot.  This is seperate from the QCLZ.php in root
    // Current desired default action for the QRcodes being used.
}

IF (isset($Return)) {
    SWITCH ($Return) {
        CASE 0:
            // Do something
            BREAK;
        CASE 9:
            header('location index.php?SR=2');
            die;
            BREAK;
        DEFAULT:
            header('location index.php?MR=1');
    }
}