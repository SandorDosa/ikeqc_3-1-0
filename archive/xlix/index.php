<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../shiny.css"/>
<?php include "year-ro.php"; // This file makes it easy to change the tournament year dynamically throughout the whole site.
print "<title>IKEqC Scores for A.S. ".$ucyear."</title>\n";?>
</head>
<body>

<div id="overalls"> <!-- defines the overall content area -->

<!-- shared header for all first subdir files -->
<?php include ("../incls/header.php");?>

<!-- shared tabs above score box -->
<?php include ("../incls/scorelinksnew.php");?>

<div id="scores">
<h2>IKEqC Single Shot Mounted Archery Scores for AS XLIX</h2>
<div id="yearchamp">
<h3 class="champion">AS XLIX (2014-2015) Champion:<br/><i>No scores submitted this year</i></h3>
</div> <!-- closes yearchamp -->


<p>No scores were submitted for Mounted Archery, which is the championship division, or for Triple Shot Archery, which is the experimental division.</p>
<p>Use the links above to see the scores submitted for Behead the Enemy, Reed Chop, and Ring Tilt this year.</p>

<div align="center">
</div> <!-- closes centering -->
</div> <!-- closes scores -->
<?php include "../incls/hoofnote-arch.htm";  // Master footnotes file ?>
</div> <!-- closes scores -->
</div> <!-- closes main-text -->
</div> <!-- closes overalls -->
</body>
</html>
