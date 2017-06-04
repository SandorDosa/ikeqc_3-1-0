<?php

//$db = mysql_connect("localhost", "scaikeqc_sb", "Kni1ghts");
//mysql_select_db("scaikeqc_sandbox",$db);

mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

error_reporting(E_ALL);
ini_set('display_errors',0);
ini_set('log_errors',1);

$db_alt = mysqli_connect("localhost","scaikeqc_sb","Kni1ghts", "scaikeqc_sandbox");
$db_old = mysqli_connect("localhost","scaikeqc_sb","Kni1ghts", "scaikeqc_ikeqc");
$db_3 = mysqli_connect("localhost","scaikeqc_sb","Kni1ghts","scaikeqc_three");

$pgyear="lii";
$lastyear="li";
$ucyear="LII";
$anyear="52";
$gyear="2017";
$gpyear="2018";