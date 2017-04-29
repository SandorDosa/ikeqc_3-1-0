<HTML>
<HEAD>
<TITLE>IKEqC Scores for A.S. XXXVI</TITLE>
</HEAD>
<BODY BGCOLOR="#000000" LINK="#0000FF" VLINK="#808080" ALINK="#8000FF" TEXT="#00FF00" BACKGROUND="mat1.jpg">

<?php
$db = mysql_connect("localhost", "scaikeqc_db1", "hor4ses");
//Live line above, local line below
//$db = mysql_connect("localhost", "root");
mysql_select_db("scaikeqc_ikeqc",$db);
?>

<FONT COLOR=White><CENTER><H1>Inter-Kingdom Equestrian Competition Scores</H1></CENTER></FONT>
<TABLE BORDER=0 ALIGN=CENTER>
<?PHP

echo"<TR><TD COLSPAN=2><CENTER><H2>STATISTICS FOR:</H2></CENTER></TD></TR>\n";

if (!isset($Human)) {
    echo"<TR><TD COLSPAN=2>\n";
    echo"There has been some problem in the database.  Please contact Sandor by email and tell him what you were doing.<BR>\n";
    echo"Or you can use your browser's back button to return to the index and try again.\n";
    echo"</TD></TR></TABLE></BODY></HTML>\n";
    die;
}

$setd = mysql_query("SELECT * FROM xxxv WHERE ((xxxv.Human = '$Human'))", $db);
IF ($L = mysql_fetch_row($setd)) {
   echo"<TR><TD ALIGN=RIGHT WIDTH=50%>\n";
   echo"Particapant:<BR>\n";
   echo"Horse:<BR>\n";
   echo"Kingdom:<BR>\n";
   echo"Event:<BR>\n";
   echo"Division:<BR>\n";
   echo"</TD><TD ALIGN=LEFT WIDTH=50%>\n";
   printf("%s<BR>\n", $L[0]);
   printf("%s<BR>\n", $L[1]);
   printf("%s<BR>\n", $L[3]);
   printf("%s<BR>\n", $L[4]);
   IF ($L[2] == 'A') {
       echo"Advanced, 21 feet<BR>\n";
       $DIVSET = "YES";
   }
   IF ($L[2] == 'B') {
       echo"Advanced, 30 feet<BR>\n";
       $DIVSET = "YES";
   }
   IF ($L[2] == 'C') {
       echo"Intermediate, 30 feet<BR>\n";
       $DIVSET = "YES";
   }
   IF (!isset($DIVSET)) {
       echo"Unknown Division, data error<BR>\n";
   }
   echo"</TD></TR><TR><TD COLSPAN=2 ALIGN=CENTER><BR CLEAR=ALL><HR WIDTH=80%>\n";
   echo"<CENTER><H2>Behead the Target!</H2></CENTER>\n";
   printf("Course Time in Seconds: %s<BR>\n Penalty: %s Bouns: %s<BR>\n", $L[5], $L[6], $L[7]);
   printf("Behead the Target Score: %s<BR CLEAR=ALL><BR>\n", $L[8]);
   echo"<HR WIDTH=80%>\n";
   echo"<CENTER><H2>Tilting at the Rings!</H2></CENTER>\n";
   echo"Number of rings of each size collected:<BR>\n";
   printf("<B>1\"Rings:<FONT COLOR=White> %s </FONT>2\"Rings:<FONT COLOR=White><FONT COLOR=White> %s </FONT></FONT>3\"Rings:<FONT COLOR=White> %s </FONT>4\"Rings:<FONT COLOR=White> %s </FONT>5\"Rings:<FONT COLOR=White> %s </FONT>6\"Rings:<FONT COLOR=White> %s </FONT></B><BR>\n", $L[9], $L[10], $L[11], $L[12], $L[13], $L[14]);
   printf("Rings Score: %s\n", $L[15]);
   echo"<BR CLEAR=ALL><BR><HR WIDTH=80%>\n";
   printf("Total Score: %s\n", $L[16]);
   echo"</TD></TR></TABLE>\n";
}
   ?>
<BLOCKQUOTE><P><BLOCKQUOTE><P>
Please send comments, questions, and bug reports about this page or other score-pages to <a href="mailto:jeff@arconian.com">Sandor</A>.<BR><BR>
Please send comments, questions, and bug reports about the data seen here, or any other page of the Inter-Kingdom Equestrain Competition's pages to <a href="mailto:drdonna@pioneernet.net">THL Donwenna</A>.<BR><BR>
Future plans for this site include filters, PDF file downloads, printer friendly version, and alternate sort orders.  Need something else?  Contact Sandor.<BR>

<H6>Webspace and scripting provided by <A HREF="http://www.arconian.com">The Arconian Design Group</A> at no cost.</H6>
<H6>This page, and its scripts are maintained by <a href="http://sandor.arconian.com">Sandor Dosa</a></H6>
<H6>This is version 0.93a of the scorekeeper script, last updated 27 August 2001.  Copywright 2001 ADG</H6>
</P></BLOCKQUOTE></P></BLOCKQUOTE>
</BODY>
</HTML>