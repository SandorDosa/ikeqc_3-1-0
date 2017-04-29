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

<h2>Final Scores for
<?php print "AS ".$ucyear."</h2>\n";?>

<!-- shared tabs above score box have been removed, no scores for this year -->

<div id="scores">
<div id="yearchamp">
<h3>No IKEqC scores were submitted for AS XLVII</h3>
</div> <!-- closes yearchamp -->

</div> <!-- closes scores -->
<?php include "../incls/hoofnote.htm";  // Master footnotes file ?>
</div> <!-- closes scores -->
</div> <!-- closes main-text -->
</div> <!-- closes overalls -->
</body>
</html>
