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

<h2>Participants for
<?php print "AS ".$ucyear."</h2>\n";?>

<div id="scores">

<p>Click on the name of the participant for for information about that person's score.</p>

<table class="scorelist">

<?php
$seta = mysql_query("SELECT * FROM xxxv WHERE ((xxxv.Division = 'B')) ORDER BY T_score DESC", $db);
IF ($L = mysql_fetch_row($seta)) {
 echo "<tr><th colspan=3 class=\"sgh\"><h2>Division: Advanced -- 30'</h2></th></tr>\n";
 do {
 echo "<tr>\n";
 printf("<td class=\"sg1\"><a href=\"detail.php?Human=%s\">%s</td><td class=\"sg1\">%s</td><td class=\"sg2\">Total Score: %s</td>\n", $L[0], $L[0], $L[3], $L[16]);
 echo "</tr>\n";

 } while ($L = mysql_fetch_row($seta));
}
 echo "<tr><td><br/></td></tr>\n";
$setb = mysql_query("SELECT * FROM xxxv WHERE ((xxxv.Division = 'A')) ORDER BY T_score DESC", $db);
IF ($L = mysql_fetch_row($setb)) {
 echo "<tr><th colspan=3 class=\"sgh\"><h2>Division: Advanced -- 21'</h2></th></tr>\n";
do {
 echo "<tr>\n";
 printf("<td class=\"sg1\"><a href=\"detail.php?Human=%s\">%s</td><td class=\"sg1\">%s</td><td class=\"sg2\">Total Score: %s</td>\n", $L[0], $L[0], $L[3], $L[16]);
 echo "</tr>\n";

 } while ($L = mysql_fetch_row($setb));
}
 echo "<tr><td><br/></td></tr>\n";
$setc = mysql_query("SELECT * FROM xxxv WHERE ((xxxv.Division = 'C')) ORDER BY T_score DESC", $db);
IF ($L = mysql_fetch_row($setc)) {
 echo "<tr><th colspan=3 class=\"sgh\"><h2>Division: Intermediate -- 30'</h2></th></tr>\n";
do {
 echo "<tr>\n";
 printf("<td class=\"sg1\"><a href=\"detail.php?Human=%s\">%s</td><td class=\"sg1\">%s</td><td class=\"sg2\">Total Score: %s</td>\n", $L[0], $L[0], $L[3], $L[16]);
 echo "</tr>\n";

 } while ($L = mysql_fetch_row($setc));
}


?>

</table>

</div> <!-- closes scores -->
<?php include "../incls/hoofnote093.htm";  // 0.93 footnotes file ?>
</div> <!-- closes scores -->
</div> <!-- closes main-text -->
</div> <!-- closes overalls -->
</body>
</html>



