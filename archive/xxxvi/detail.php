<!DOCTYPE html PUBLIC "-//W3C//Dtd XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/Dtd/xhtml1-transitional.dtd">
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

<h2>Score Detail for
<?php print "AS ".$ucyear."</h2>\n";?>

<div id="scores">

<table class="scorelist">

<?php

echo"<tr><th colspan=2 class=\"sgh\">STATISTICS FOR:</th></tr>\n";

if (!isset($Human)) {
    echo"<tr><td colspan=2>\n";
    echo"There has been some problem in the database.  Please contact Sandor by email and tell him what you were doing.<br/>\n";
    echo"Or you can use your browser's back button to return to the index and try again.\n";
    echo"</td></tr></table></body></html>\n";
    die;
}

$setd = mysql_query("SELECT * FROM xxxvi WHERE ((xxxvi.Human = '$Human'))", $db);
IF ($L = mysql_fetch_row($setd)) {
   echo"<tr><td align=\"right\">\n";
   echo"Participant:<br/>\n";
   echo"Horse:<br/>\n";
   echo"Kingdom:<br/>\n";
   echo"Event:<br/>\n";
   echo"Division:<br/>\n";
   echo"</td><td align=\"left\">\n";
   printf("%s<br/>\n", $L[0]);
   printf("%s<br/>\n", $L[1]);
   printf("%s<br/>\n", $L[3]);
   printf("%s<br/>\n", $L[4]);
   IF ($L[2] == 'A') {
       echo"Advanced, 21 feet<br/>\n";
       $DIVSET = "YES";
   }
   IF ($L[2] == 'B') {
       echo"Advanced, 30 feet<br/>\n";
       $DIVSET = "YES";
   }
   IF ($L[2] == 'C') {
       echo"Intermediate, 30 feet<br/>\n";
       $DIVSET = "YES";
   }
   IF (!isset($DIVSET)) {
       echo"Unknown Division, data error<br/>\n";
   }
   echo"</td></tr><tr><td colspan=2 td class=\"sg1\"><BR CLEAR=ALL><HR WIDTH=80%>\n";
   echo"<CENTER><H2>Behead the Target!</H2></CENTER>\n";
   printf("Course Time in Seconds: %s<br/>\n Penalty: %s Bouns: %s<br/>\n", $L[5], $L[6], $L[7]);
   printf("Behead the Target Score: %s<BR CLEAR=ALL><br/>\n", $L[8]);
   echo"<HR WIDTH=80%>\n";
   echo"<CENTER><H2>Tilting at the Rings!</H2></CENTER>\n";
   echo"Number of rings of each size collected:<br/>\n";
   printf("<B>1\"Rings: %s 2\"Rings: %s 3\"Rings: %s 4\"Rings: %s 5\"Rings: %s 6\"Rings: %s </B><br/>\n", $L[9], $L[10], $L[11], $L[12], $L[13], $L[14]);
   printf("Rings Score: %s\n", $L[15]);
   echo"<BR CLEAR=ALL><br/><HR WIDTH=80%>\n";
   printf("Total Score: %s\n", $L[16]);
   echo"</td></tr></table>\n";
}
   ?>

</div> <!-- closes scores -->
<?php include "../incls/hoofnote093.htm";  // 0.93 footnotes file ?>
</div> <!-- closes scores -->
</div> <!-- closes main-text -->
</div> <!-- closes overalls -->
</body>
</html>
