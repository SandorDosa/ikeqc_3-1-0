<html>

<head>
  <title>Update Rider's information</title>
 <?php include "year-ro.php"; // This file makes it easy to change the tournament year dynamically throughout the whole site.?>
</head>

<body>
<form name="RiderEdit" action="<?PHP ECHO $PHP_SELF; ?>" method="post">
<?php

// re.php
// file v1.0
// part of ScoreKeeper v2.2
// This script edits stored information on IKEqC Riders.

/*IF ($maint=1) {
        print "    <H1>Sorry...</H1>\n";
    print "<P>The system is presently undergoing maintenance.  Please try again later.  If you were doing anything here, your work may be lost.</P>\n";
}
*/
mysql_select_db("scaikeqc_ikeqc", $db);
IF (isset($RiderUp)) {
        IF (!isset($Pret)) {
            $Pret="\"N\"";
        }
    IF (!isset($PKing)) {
            $PKing = 1;
    }
    IF (!isset($PBio) || $PBio == NULL) {
            $PBio = "NULL";
    } ELSE {
            $PBio = urlencode($PBio);
    }
    IF (!isset($PName)) {
            $PName = "ZZZZ";
        $Pret="Y";
    } ELSE {
            $PName = "\"".$PName."\"";
    }
        $seta = mysql_query("UPDATE riders SET PName = ".$PName.", PBio = ".$PBio.", PKing = $PKing, Pret = ".$Pret." WHERE PID=$PID", $db);
    IF (mysql_affected_rows() <1) {
                print "<H2>STOP!</H2>\n";
                print "<P>A problem may exist, look for an error message, if found, contact <A HREF=\"mailto:sandor_dosa@yahoo.com\">Sandor</A>.  It is normal to see this message if you clicked submit without actually changing any data, in which case this warning can be ignored.</P>\n";
                print "<H6>Error: EchoPapa1</H6>\n";
                print "<TABLE BORDER=1><TR><TD><P>\n";
                   printf("%s<BR>generated this error:<BR>%s\n", mysql_affected_rows(), mysql_error());
        print "</TD></TR><TR><TD>\n";
        print "UPDATE riders SET PName = ".$PName.", PBio =".$PBio.", PKing =".$PKing.", Pret =".$Pret." WHERE PID=".$PID;
        print "</TD></TR></TABLE>\n";
    }
        print "<H2>Update Comeplete</H2>\n";
        print "<P> Click <A HREF=\"approve.php\">here</A> to return to the listings.</P>\n";
        printf("%s has been successdully updated in the database.\n", $PName);
    IF ($Pret=='Y') {
        print "<P>%s has been <B>RETIRED</B> from the games.  If this was done in error let <A HREF=\"mailto:sandor_dosa@yahoo.com\">Sandor</A> know right away.  Retiring a rider prohibits their name from appearing in the drop down box for scores entry.</P>\n\";\n";
        }
    die;
}
IF (!isset($PID)) {
    $seta = mysql_query("SELECT * from riders ORDER BY PName");
    echo"<H2>Select the Rider</H2>";
    echo "<SELECT NAME=\"PID\">\n";
    IF ($L = mysql_fetch_row($seta)) {
      do {
        printf("<OPTION VALUE=\"%s\">%s\n", $L[0], stripslashes($L[1]));
      } while ($L = mysql_fetch_row($seta));
    }
        print "</SELECT>\n";
        print "<input type=\"submit\" name=\"Continue\" value=\"Continue\"></form>\n";
    die;
}
$seta = mysql_query("SELECT * FROM riders WHERE PID=$PID", $db);
IF ($A = mysql_fetch_row($seta)) {
        print "<TABLE ALIGN=CENTER>\n";
        printf("<TR><TD ALIGN=RIGHT>Rider's Internal ID:</TD><TD ALIGN=LEFT>%s<input name=\"PID\" type=\"hidden\" value=\"%s\"></TD></TR>\n", $A[0], $A[0]);
        printf("<TR><TD ALIGN=RIGHT>Rider's Name:</TD><TD ALIGN=LEFT><input valign=middle name=\"PName\" type=\"text\" style=\"width:400px;\" value=\"%s\"></TD></TR>\n", stripslashes($A[1]));
        printf("<TR><TD ALIGN=RIGHT>Rider's Homepage:</TD><TD ALIGN=LEFT><input valign=middle name=\"PBio\" type=\"text\"style=\"width:400px;\" value=\"%s\"></TD></TR>\n", urldecode($A[2]));
        print"<TR><TD ALIGN=RIGHT>Rider's Home Kingdom:</TD><TD ALIGN=LEFT>\n";
        $setb = mysql_query("SELECT * FROM kingdoms");
        IF ($B = mysql_fetch_row($setb)) {
            echo"<SELECT NAME=\"PKing\">\n";
            do {
                IF ($A[3] == $B[0]) {
                        printf("<OPTION VALUE=\"%s\" SELECTED>%s</OPTION>\n", $B[0], stripslashes($B[1]));
                } ELSE {
                        printf("<OPTION VALUE=\"%s\">%s</OPTION>\n", $B[0], stripslashes($B[1]));
                    }
            } while ($B = mysql_fetch_row($setb));
                echo"</SELECT><BR>\n";
        }
        print"</TD></TR>\n";
        IF ($A[4] == "Y") {
        print"<TR><TD ALIGN=RIGHT>Retired Rider:</TD><TD ALIGN=LEFT><input name=\"Pret\" type=\"checkbox\" CHECKED value=\"Y\">        </TD></TR>\n";
        } ELSE {
        print"<TR><TD ALIGN=RIGHT>Retired Rider:</TD><TD ALIGN=LEFT><input name=\"Pret\" type=\"checkbox\" value=\"Y\"></TD></TR>\n";
        }
        print "<TR><TD ALIGN=CENTER><input type=\"submit\" name=\"RiderUp\" value=\"Click here to Update this Rider\"></TD><TD ALIGN=CENTER><input type=\"reset\" name=\"ClearForm\" value=\"Reset Form\"></TD></TR></TABLE>\n</FORM>\n";
}


?>

</body>

</html>
