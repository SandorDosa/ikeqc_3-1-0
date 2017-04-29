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
<h2>IKEqC Behead the Enemy Scores for AS XLIX</h2>
<div id="yearchamp">
<h3 class="champion">AS XLIX (2014-2015) Champion:<br/>Gwendolyn scored 89 in the Advanced Division on Kira</h3>
</div> <!-- closes yearchamp -->



<table class="scorelist">
<tr>
<th class="sgh">Rider</th>
<th class="sgh">Horse</th>
<th class="sgh">Event</th>
<th class="sgh">Division</th>
<th class="sgh">Time</th>
<th class="sgh">Penalties</th>
<th class="sgh">IKEqC Score</th></tr>

<tr>
<td class="sg1">Gwendolyn</td>
<td class="sg1">Kira</td>
<td class="sg1">Mounted War Games IV</td>
<td class="sg1">Advanced</td>
<td class="sgheads">16.03</td>
<td class="sgheads">0</td>
<td class="sgall">89</td></tr>
<tr>
<td class="sg1">Rosamund</td>
<td class="sg1">Kira</td>
<td class="sg1">Mounted War Games IV</td>
<td class="sg1">Advanced</td>
<td class="sgheads">29.15</td>
<td class="sgheads">0</td>
<td class="sgall">81</td></tr>
<tr>
<td class="sg1">Azenari Basandere</td>
<td class="sg1">Kira</td>
<td class="sg1">Mounted War Games IV</td>
<td class="sg1">Intermediate</td>
<td class="sgheads">27.68</td>
<td class="sgheads">0</td>
<td class="sgall">77</td></tr>
</table>
</td>
</tr>
</table>


<div align="center">
</div> <!-- closes centering -->
</div> <!-- closes scores -->
<?php include "../incls/hoofnote-arch.htm";  // Master footnotes file ?>
</div> <!-- closes scores -->
</div> <!-- closes main-text -->
</div> <!-- closes overalls -->
</body>
</html>

