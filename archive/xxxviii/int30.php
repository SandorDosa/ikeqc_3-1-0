<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../shiny.css"/>
<?php 
// ************* Adjust Division and Division Title for this page *************
include "year-ro.php"; // This file defines the tournament year for this subdirectory.
$division="D"; // This defines the page-wide division for query purposes. 
$divisiontitle="Intermediate 30'" // This defines the page-wide division title.
// ****************************************************************************
?>

<?php print "<title>".$divisiontitle." IKEqC Division Scores for A.S. ".$ucyear."</title>\n";?>

</head>
<body>

<div id="overalls"> <!-- defines the overall content area -->

<!-- shared header for all first subdir files -->
<?php include ("../incls/header.php");?>

<?php print "<h3>".$divisiontitle." Division Scores for AS ".$ucyear."</h3>\n";?>

<p class="footer">The 21' spaced courses were experimental in this year and therefore did not count towards the championship.</p>
<p class="footer">Additionally, although Reed Chop Drill performance may be displayed on these pages, Reed Chop Drill was also an experimental activity during this year and therefore did not count toward the championship.</p>

<!-- shared tabs above score box -->
<?php include ("../incls/scorelinks.php");?>

<div id="scores">
<div id="yearchamp"> <!-- display current division champion score in top box -->

<!-- Select top score for this division  -->
<?php 
$seta = mysql_query("SELECT PName,Ename,score,SHscore,SRcount,SRscore,SDcount,SDscore 
FROM riders 
LEFT JOIN $pgyear ON riders.PID=$pgyear.PID 
LEFT JOIN events ON $pgyear.EID=events.EID 
LEFT JOIN heads ON $pgyear.SHID=heads.SHID 
LEFT JOIN rings ON $pgyear.SRID=rings.SRID 
LEFT JOIN reeds ON $pgyear.SDID=reeds.SDID 
WHERE $pgyear.seen='Y' && $pgyear.div = '$division' 
ORDER BY $pgyear.score DESC LIMIT 1", $db);

IF ($A = @mysql_fetch_row($seta)) {
        print "<h3 class=\"champion\">Division Champion for AS ".$ucyear.":<br/>".stripslashes($A[0])." scored ".$A[2]."(".$A[3].")"." at ".stripslashes($A[1])."</h3>\n";
} ELSE {
        print "<h3 class=\"champion\">No Division Champion for AS ".$ucyear."</h3>\n";
}?>
</div> <!-- closes yearchamp -->

<?php 
print "<table>\n";
print "<tr><td>\n";
$t3 = "SELECT PName,Ename,score,SHscore,SRcount,SRscore,SDcount,SDscore 
FROM riders 
LEFT JOIN $pgyear ON riders.PID=$pgyear.PID 
LEFT JOIN events ON $pgyear.EID=events.EID 
LEFT JOIN heads ON $pgyear.SHID=heads.SHID 
LEFT JOIN rings ON $pgyear.SRID=rings.SRID 
LEFT JOIN reeds ON $pgyear.SDID=reeds.SDID 
WHERE $pgyear.seen='Y' && $pgyear.div = '$division'
ORDER BY $pgyear.score DESC";
$setb = mysql_query($t3, $db);
print "<!-- QUERY : ".$t3."\n-->\n";
print "<!-- ERROR : ".mysql_error()."\n-->\n";
IF ($B = mysql_fetch_row($setb)) {
 $err2 = mysql_error();
 printf("%s<BR>\n", $err2);

// Display scores in table
print "<table class=\"scorelist\">\n";
print "<tr>\n";
print "<th class=\"sgh\">Rider</th>\n";
print "<th class=\"sgh\">Event</th>\n";
print "<th class=\"sgh\">Heads</th>\n";
print "<th class=\"sgh\">Rings</th>\n";
print "<th class=\"sgh\">Reeds</th>\n";
print "<th class=\"sgh\">IKEqC</th></tr>\n";

do {
 echo "<tr>\n";
 IF ($B[3] == NULL || $B[3] == 0) {
   $heads = "N/A";
 } ELSE {
   $heads = "".$B[3];
 }
 IF ($B[5] == NULL || $B[5] == 0) {
         $rings = "N/A";
 } ELSE {
    $rings = "".$B[5];
 }
 IF ($B[7] == NULL || $B[7] == 0) {
         $reeds = "N/A";
 } ELSE {
         $reeds = "".$B[7];
 }
 printf("<td class=\"sg1\">%s</td><td class=\"sg1\">%s</td><td class=\"sgheads\">%s</td><td class=\"sgrings\">%s</td><td class=\"sgreeds\">%s</td><td class=\"sgall\">%s</td>\n", substr(stripslashes($B[0]), 0, 35), stripslashes($B[1]), $heads, $rings, $reeds, $B[2]);
 echo "</TR>\n";
 } while ($B = mysql_fetch_row($setb));
}
?>
</table>
</td>
</tr>
</table>
</div> <!-- closes scores -->
<?php include "../incls/hoofnote21.htm";  // Master footnotes file ?>
</div> <!-- closes scores -->
</div> <!-- closes main-text -->
</div> <!-- closes overalls -->
</body>
</html>
