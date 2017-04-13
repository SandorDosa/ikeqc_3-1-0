<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 3/28/17
 * Time: 1:15 PM
 */
include "year.inc";
include "colors.inc";
include "ikeqcfuncs.inc";

OpenHTML("Testing");

$exp1 = mysqli_query($db_alt, "SHOW TABLES");

$ResultArray = mysqli_fetch_array($exp1);

print_r($ResultArray);