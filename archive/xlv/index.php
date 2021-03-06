<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../shiny.css"/>
<!-- Include Next-->
<?php
error_reporting(E_ALL);
require "year-ro.inc"; // This file makes it easy to change the tournament year dynamically throughout the whole site.
print "<title>IKEqC Scores for A.S. ".$ucyear."</title>\n";?>
</head>
<body>

<div id="overalls"> <!-- defines the overall content area -->

<!-- shared header for all first subdir files -->
<?php include ("../incls/header.php");?>

<h2>Top Five Scores per Division for
<?php print "AS ".$ucyear."</h2>\n";?>

<!-- shared tabs above score box -->
<?php include ("../incls/scorelinks.php");?>

<div id="scores">
<div id="yearchamp">
<?php 
$seta = mysql_query("SELECT PName,Ename,cscore,score FROM riders 
LEFT JOIN $pgyear ON riders.PID=$pgyear.PID 
LEFT JOIN events ON $pgyear.EID=events.EID 
WHERE ($pgyear.seen='Y' && $pgyear.div='A') 
ORDER BY $pgyear.cscore DESC LIMIT 1", $db);
IF ($A = @mysql_fetch_row($seta)) {
        print "<h3 class=\"champion\">IKEqC Champion for AS ".$ucyear.":<br/>".stripslashes($A[0])." scored ".$A[2]."(".$A[3].")"." at ".stripslashes($A[1])."</h3>\n";
} ELSE {
        print "No Champion for AS ".$ucyear."\n";


}?>
</div> <!-- closes yearchamp -->

<?php 
print "<table class=\"top5\">\n";

print "<tr><td>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders 
LEFT JOIN $pgyear ON riders.PID=$pgyear.PID 
WHERE ($pgyear.seen='Y' && $pgyear.div='A') ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<table class=\"scores\">\n";
print "<caption>Advanced 21' Top 5</caption>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<tr>\n<td class=\"sg1\">".stripslashes($A[0])."</td>\n<td class=\"sg2\">".$A[1]."(".$A[2].")</td>\n</tr>\n";
     } ELSE {
             print "<tr>\n<td class=\"sgn\" colspan=\"2\">no entry</td>\n</tr>\n";
     }
     $i++;
} while ($i<5);
    print "</table>\n";
//END Advanced 21' section Row 3 Col 1
//BEGIN Advanced 30' section Row 3 Col 2
print "</td><td>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders 
LEFT JOIN $pgyear ON riders.PID=$pgyear.PID 
WHERE ($pgyear.seen='Y' && $pgyear.div='B') 
ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<table class=\"scores\">\n";
print "<caption>Advanced 30' Top 5</caption>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<tr>\n<td class=\"sg1\">".stripslashes($A[0])."</td>\n<td class=\"sg2\">".$A[1]."(".$A[2].")</td>\n</tr>\n";
     } ELSE {
             print "<tr>\n<td class=\"sgn\" colspan=\"2\">no entry</td>\n</tr>\n";
     }
     $i++;
} while ($i<5);
    print "</table>\n";
//END Advanced 30' section Row 3 Col 2
//BEGIN Int 21' section Row 4 Col 1
print "</td></tr><tr><td>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders 
LEFT JOIN $pgyear ON riders.PID=$pgyear.PID 
WHERE ($pgyear.seen='Y' && $pgyear.div='C') 
ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<table class=\"scores\">\n";
print "<caption>Intermediate 21' Top 5</caption>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<tr>\n<td class=\"sg1\">".stripslashes($A[0])."</td>\n<td class=\"sg2\">".$A[1]."(".$A[2].")</td>\n</tr>\n";
     } ELSE {
             print "<tr>\n<td class=\"sgn\" colspan=\"2\">no entry</td>\n</tr>\n";
     }
     $i++;
} while ($i<5);
    print "</table>\n";
//END Int 21' section Row 4 Col 1
//BEGIN Int 30' section Row 4 Col 2
print "</td><td>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders 
LEFT JOIN $pgyear ON riders.PID=$pgyear.PID 
WHERE ($pgyear.seen='Y' && $pgyear.div='D') 
ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<table class=\"scores\">\n";
print "<caption>Intermediate 30' Top 5</caption>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<tr>\n<td class=\"sg1\">".stripslashes($A[0])."</td>\n<td class=\"sg2\">".$A[1]."(".$A[2].")</td>\n</tr>\n";
     } ELSE {
             print "<tr>\n<td class=\"sgn\" colspan=\"2\">no entry</td>\n</tr>\n";
     }
     $i++;
} while ($i<5);
    print "</table>\n";
//END Int 30' section Row 4 Col 2
//BEGIN Beginner 21' section Row 5 Col 1
print "</td></tr><tr><td>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders 
LEFT JOIN $pgyear ON riders.PID=$pgyear.PID 
WHERE ($pgyear.seen='Y' && $pgyear.div='E') 
ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<table class=\"scores\">\n";
print "<caption>Beginner 21' Top 5</caption>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<tr>\n<td class=\"sg1\">".stripslashes($A[0])."</td>\n<td class=\"sg2\">".$A[1]."(".$A[2].")</td>\n</tr>\n";
     } ELSE {
             print "<tr>\n<td class=\"sgn\" colspan=\"2\">no entry</td>\n</tr>\n";
     }
     $i++;
} while ($i<5);
    print "</table>\n";
//END Beginner 21' section Row 5 Col 1
//BEGIN Beginner 30' section Row 5 Col 2
print "</td><td>\n";
$seta = mysql_query("SELECT PName,cscore,score 
FROM riders LEFT JOIN $pgyear ON riders.PID=$pgyear.PID 
WHERE ($pgyear.seen='Y' && $pgyear.div='F') 
ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<table class=\"scores\">\n";
print "<caption>Beginner 30' Top 5</caption>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<tr>\n<td class=\"sg1\">".stripslashes($A[0])."</td>\n<td class=\"sg2\">".$A[1]."(".$A[2].")</td>\n</tr>\n";
     } ELSE {
             print "<tr>\n<td class=\"sgn\" colspan=\"2\">no entry</td>\n</tr>\n";
     }
     $i++;
} while ($i<5);
    print "</table>\n";
//END Beginner 30' section Row 5 Col 2
//BEGIN Footer section
?>
</td>
</tr>
</table>

</div> <!-- closes scores -->
<?php include "../incls/hoofnote.htm";  // Master footnotes file ?>
</div> <!-- closes scores -->
</div> <!-- closes main-text -->
</div> <!-- closes overalls -->
</body>
</html>

