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

<!-- shared tabs above score box -->
<?php include ("../incls/scorelinks.php");?>

<div id="scores">

<div id="yearchamp"> <!-- display current division champion score in top box -->

<!-- Select top score for this division - $pgyear.div = 'A' is Adv 21' for example -->
<?php 
$seta = mysql_query("SELECT PName, Ename, cscore, score, SHscore, SRscore, SDscore, SMscore, SBscore 
FROM riders 
LEFT JOIN $pgyear ON riders.PID = $pgyear.PID 
LEFT JOIN events ON $pgyear.EID = events.EID 
LEFT JOIN heads ON $pgyear.SHID = heads.SHID 
LEFT JOIN rings ON $pgyear.SRID = rings.SRID 
LEFT JOIN reeds ON $pgyear.SDID = reeds.SDID 
LEFT JOIN moarch ON $pgyear.SMID = moarch.SMID 
LEFT JOIN birjas ON $pgyear.SBID = birjas.SBID 
WHERE ( $pgyear.seen = 'Y' && $pgyear.div = '$division' ) 
ORDER BY $pgyear.cscore DESC LIMIT 1", $db);

IF ($A = @mysql_fetch_row($seta)) {
        print "<h3 class=\"champion\">Current Division Leader:<br/>".stripslashes($A[0])." scored ".$A[2]."(".$A[3].")"." at ".stripslashes($A[1])."</h3>\n";
} ELSE {
        print "<h3 class=\"champion\">No scores submitted in this division for AS ".$ucyear."</h3>\n";
}?>
</div> <!-- closes yearchamp -->

<?php 
print "<table>\n";
print "<tr><td>\n";
// Select and display all scores for this division - $pgyear.div = 'A' is Adv 21' for example
$seta = mysql_query("SELECT PName, Ename, cscore, score, SHscore, SRscore, SDscore, SMscore, SBscore FROM riders 
LEFT JOIN $pgyear ON riders.PID = $pgyear.PID 
LEFT JOIN events ON $pgyear.EID = events.EID 
LEFT JOIN heads ON $pgyear.SHID = heads.SHID 
LEFT JOIN rings ON $pgyear.SRID = rings.SRID 
LEFT JOIN reeds ON $pgyear.SDID = reeds.SDID 
LEFT JOIN moarch ON $pgyear.SMID = moarch.SMID 
LEFT JOIN birjas ON $pgyear.SBID = birjas.SBID 
WHERE ( $pgyear.seen = 'Y' && $pgyear.div = '$division' ) ORDER BY $pgyear.cscore DESC", $db);

print "<!-- ERROR : ".mysql_error()."\n-->\n";

// Create table with headers to define scores
print "<table class=\"scorelist\">\n";
print "<tr>\n";
print "<th class=\"sgh\">Rider</th>\n";
print "<th class=\"sgh\">Event</th>\n";
print "<th class=\"sgh\">Heads</th>\n";
print "<th class=\"sgh\">Rings</th>\n";
print "<th class=\"sgh\">Reeds</th>\n";
print "<th class=\"sgh\">Mntd<br/>Archer</th>\n";
print "<th class=\"sgh\">Birjas</th>\n";
print "<th class=\"sgh\">IKEqC (Raw)</th></tr>\n";
		
IF ($A = @mysql_fetch_row($seta)) {
    do {
        $ShowRider = stripslashes($A[0]);
        $ShowEvent = stripslashes($A[1]);
        //$ShowKing = stripslashes($A[8]);
        $ShowRawScore = "".$A[3]."";
        $ShowIScore = "".$A[2]."";
        IF ($A[4]) {
                $HeadsScore = "".$A[4]."";
        } ELSE {
                $HeadsScore = "n/a";
        }
        IF ($A[5]) {
                $RingsScore = "".$A[5]."";
        } ELSE {
                $RingsScore = "n/a";
        }
        IF ($A[6]) {
                $ReedsScore = "".$A[6]."";
        } ELSE {
                $ReedsScore = "n/a";
        }
        IF ($A[7]) {
                $MoarcScore = "".$A[7]."";
        } ELSE {
                $MoarcScore = "n/a";
        }
        IF ($A[8]) {
                $BirjasScore = "".$A[8]."";
        } ELSE {
                $BirjasScore = "n/a";
        }


		// Display scores in table
        print "<tr>\n";
        print "<td class=\"sg1\">".$ShowRider."</td>\n";
        print "<td class=\"sg1\">".$ShowEvent."</td>\n";
        print "<td class=\"sgheads\">".$HeadsScore."</td>\n";
        print "<td class=\"sgrings\">".$RingsScore."</td>\n";
        print "<td class=\"sgreeds\">".$ReedsScore."</td>\n";
        print "<td class=\"sgmoarch\">".$MoarcScore."</td>\n";
        print "<td class=\"sgbirjas\">".$BirjasScore."</td>\n";
        print "<td class=\"sgall\">".$ShowIScore."<br/>(".$ShowRawScore.")</td></tr>\n";
    } while ($A = @mysql_fetch_row($seta));
}
?>
</table>
</td>
</tr>
</table>
</div> <!-- closes scores -->
<?php include "../incls/hoofnote.htm";  // Master footnotes file ?>
</div> <!-- closes main-text -->
</div> <!-- closes overalls -->
</body>
</html>
