<HTML>
<HEAD>
<?php
include "year.inc"; // This file makes it easy to change the tournament year dynamically throughout the whole site.

print "<TITLE>IKEqC Scores for A.S. ".$ucyear."</TITLE>\n";
print "</HEAD>\n";
print "<BODY BGCOLOR=\"#000000\" LINK=\"#0000FF\" VLINK=\"#808080\" ALINK=\"#8000FF\" TEXT=\"#00FF00\" BACKGROUND=\"mat1.jpg\">\n";
print "<FONT COLOR=White><CENTER><H1>Inter-Kingdom Equestrian Competition Scores</H1>\n";
print "<H2>AS ".$ucyear."</H2></CENTER></FONT>\n";
print "<BLOCKQUOTE>\n";
print "<BLOCKQUOTE>\n";
print "<TABLE BGCOLOR=\"#DDDDDD\" BORDER=1 ALIGN=CENTER>\n";
print "<TR>\n";
print "<TD ALIGN=CENTER>\n";
print "<P><FONT COLOR=\"#000000\">PLEASE NOTE:  This script is under construction.  While the scores you see here are accurate, features and formatting may appear, disappear, or change without warning.</FONT></P>\n";
print "</TD>\n";
print "</TR>\n";
print "</TABLE>\n";
print "<BR>\n";
print "<TABLE BORDER=1 ALIGN=CENTER>\n";
print "<TR ALIGN=CENTER><TD COLSPAN=2>\n";
//BEGIN Champs section Row 1 Cols 1&2
print "<H2>Current Standings Leader:</H2>\n";
$seta = mysql_query("SELECT PName,Ename,cscore,score FROM riders LEFT JOIN $pgyear ON riders.PID=$pgyear.PID LEFT JOIN events ON $pgyear.EID=events.EID WHERE ($pgyear.seen='Y' && $pgyear.div='A') ORDER BY $pgyear.cscore DESC LIMIT 1", $db);
IF ($A = @mysql_fetch_row($seta)) {
        print "<TABLE BORDER=0 ALIGN=CENTER>\n";
        print "<TR ALIGN=CENTER>\n<TD><H3>".stripslashes($A[0])."</H3></TD>\n<TD><H3>scored ".$A[2]."(".$A[3].")</H3></TD>\n<TD>"."<H3>at ".stripslashes($A[1])."</H3></TD>\n</TR>\n";
        print "</TABLE>\n";
} ELSE {
        print "No Championship Scores yet...";
}
print "</TD></TR>\n";
//END Champs sections Row 1 Cols 1&2
//BEGIN Top Kingdom section Row 2 Cols 1&2
print "<TR ALIGN=CENTER><TD COLSPAN=2>\n";
print "<H2>Top Kingdom Standings</H2>\n";
print "<CENTER>Comming Soon</CENTER>\n";
print "</TD></TR>\n";
//END Top Kingdom section Row 2 Cols 1&2
//BEGIN Adv 21' section Row 3 Col 1
print "<TR ALIGN=CENTER><TD>\n";
print "<H2>Advanced 21' Top 5</H2>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders LEFT JOIN $pgyear ON riders.PID=$pgyear.PID WHERE ($pgyear.seen='Y' && $pgyear.div='A') ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<TABLE BORDER=0 ALIGN=CENTER>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<TR ALIGN=CENTER>\n<TD>".stripslashes($A[0])."</TD>\n<TD>".$A[1]."(".$A[2].")</TD>\n</TR>\n";
     } ELSE {
             print "<TR ALIGN=CENTER>\n<TD COLSPAN=2><FONT COLOR=\"#666666\">Your name could be here...</FONT></TD>\n</TR>\n";
     }
     $i++;
} while ($i<5);
    print "</TABLE>\n<HR>";
    print "<FONT COLOR=BLUE>Link for complete listing</FONT> coming soon.\n";
//END Adv 21' section Row 3 Col 1
//BEGIN Adv 30' section Row 3 Col 2
print "<TD>\n";
print "<H2>Advanced 30' Top 5</H2>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders LEFT JOIN $pgyear ON riders.PID=$pgyear.PID WHERE ($pgyear.seen='Y' && $pgyear.div='B') ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<TABLE BORDER=0 ALIGN=CENTER>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<TR ALIGN=CENTER>\n<TD>".stripslashes($A[0])."</TD>\n<TD>".$A[1]."(".$A[2].")</TD>\n</TR>\n";
     } ELSE {
             print "<TR ALIGN=CENTER>\n<TD COLSPAN=2><FONT COLOR=\"#666666\">Your name could be here...</FONT></TD>\n</TR>\n";
     }
     $i++;
} while ($i<5);
    print "</TABLE>\n<HR>";
    print "<FONT COLOR=BLUE>Link for complete listing</FONT> coming soon.\n";
    print "</TD></TR>\n";
//END Adv 30' section Row 3 Col 2
//BEGIN Int 21' section Row 4 Col 1
print "<TR ALIGN=CENTER VALIGN=TOP><TD>\n";
print "<H2>Intermediate 21' Top 5</H2>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders LEFT JOIN $pgyear ON riders.PID=$pgyear.PID WHERE ($pgyear.seen='Y' && $pgyear.div='C') ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<TABLE BORDER=0 ALIGN=CENTER>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<TR ALIGN=CENTER>\n<TD>".stripslashes($A[0])."</TD>\n<TD>".$A[1]."(".$A[2].")</TD>\n</TR>\n";
     } ELSE {
             print "<TR ALIGN=CENTER>\n<TD COLSPAN=2><FONT COLOR=\"#666666\">Your name could be here...</FONT></TD>\n</TR>\n";
     }
     $i++;
} while ($i<5);
    print "</TABLE>\n<HR>";
    print "<FONT COLOR=BLUE>Link for complete listing</FONT> coming soon.\n";
//END Int 21' section Row 4 Col 1
//BEGIN Int 30' section Row 4 Col 2
print "<TD>\n";
print "<H2>Intermediate 30' Top 5</H2>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders LEFT JOIN $pgyear ON riders.PID=$pgyear.PID WHERE ($pgyear.seen='Y' && $pgyear.div='D') ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<TABLE BORDER=0 ALIGN=CENTER>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<TR ALIGN=CENTER>\n<TD>".stripslashes($A[0])."</TD>\n<TD>".$A[1]."(".$A[2].")</TD>\n</TR>\n";
     } ELSE {
             print "<TR ALIGN=CENTER>\n<TD COLSPAN=2><FONT COLOR=\"#666666\">Your name could be here...</FONT></TD>\n</TR>\n";
     }
     $i++;
} while ($i<5);
    print "</TABLE>\n<HR>";
    print "<FONT COLOR=BLUE>Link for complete listing</FONT> coming soon.\n";
//END Int 30' section Row 4 Col 2
//BEGIN Beg 21' section Row 5 Col 1
print "<TR ALIGN=CENTER VALIGN=TOP><TD>\n";
print "<H2>Beginner 21' Top 5</H2>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders LEFT JOIN $pgyear ON riders.PID=$pgyear.PID WHERE ($pgyear.seen='Y' && $pgyear.div='E') ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<TABLE BORDER=0 ALIGN=CENTER>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<TR ALIGN=CENTER>\n<TD>".stripslashes($A[0])."</TD>\n<TD>".$A[1]."(".$A[2].")</TD>\n</TR>\n";
     } ELSE {
             print "<TR ALIGN=CENTER>\n<TD COLSPAN=2><FONT COLOR=\"#666666\">Your name could be here...</FONT></TD>\n</TR>\n";
     }
     $i++;
} while ($i<5);
    print "</TABLE>\n<HR>";
    print "<FONT COLOR=BLUE>Link for complete listing</FONT> coming soon.\n";
//END Beg 21' section Row 5 Col 1
//BEGIN Beg 30' section Row 5 Col 2
print "<TD>\n";
print "<H2>Beginner 30' Top 5</H2>\n";
$seta = mysql_query("SELECT PName,cscore,score FROM riders LEFT JOIN $pgyear ON riders.PID=$pgyear.PID WHERE ($pgyear.seen='Y' && $pgyear.div='F') ORDER BY $pgyear.cscore DESC LIMIT 5", $db);
print "<TABLE BORDER=0 ALIGN=CENTER>\n";
$i=0;
do {
    @mysql_data_seek($seta,$i);
    IF ($A = @mysql_fetch_row($seta)) { //first
         print "<TR ALIGN=CENTER>\n<TD>".stripslashes($A[0])."</TD>\n<TD>".$A[1]."(".$A[2].")</TD>\n</TR>\n";
     } ELSE {
             print "<TR ALIGN=CENTER>\n<TD COLSPAN=2><FONT COLOR=\"#666666\">Your name could be here...</FONT></TD>\n</TR>\n";
     }
     $i++;
} while ($i<5);
    print "</TABLE>\n<HR>";
    print "<FONT COLOR=BLUE>Link for complete listing</FONT> coming soon.\n";
//END Beg 30' section Row 5 Col 2
//BEGIN Footer section
?>
<TR ALIGN=CENTER VALIGN=TOP><TD COLSPAN=2>
<FONT COLOR=WHITE>
<H2>Notes:</H2>
<P>Details on each rider is in the works but not presently available.</P>
<P>Certain parts of this script are still under developement.  The "coming soon" sections should be in place by the end of June.</P>
<HR WIDTH=60%>
<P>Please send comments, questions, and bug reports about this page or other score-pages to <a href="mailto:sandor_dosa@yahoo.com">Sandor</A>.<BR>
Please send comments, questions, and bug reports about the data seen here, or any other page of the Inter-Kingdom Equestrain Competition's pages to <a href="mailto:drdonna@pioneernet.net">THL Donwenna</A>.</P>
<H6>Webspace and scripting provided by <A HREF="http://www.arconian.com">The Arconian Design Group</A> at no cost.</H6>
<H6>This page, and its scripts are maintained by <a href="http://sandor.arconian.com">Sandor Dosa</a></H6>
<H6>This is version 2.5a of the scorekeeper script, last updated 01 June 2004.  &copy;2004 ADG</H6>
</BLOCKQUOTE>
</BLOCKQUOTE>
</FONT>

</BODY>
</HTML>
