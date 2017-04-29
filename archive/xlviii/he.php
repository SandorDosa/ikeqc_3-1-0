<html>

<head>
  <title>Update Horse's information</title>
<?php include "year-ro.php"; // This file makes it easy to change the tournament year dynamically throughout the whole site.?>
</head>

<body>
<form name="HorseEdit" action="<?PHP ECHO $PHP_SELF; ?>" method="post">
<?php
mysql_select_db("scaikeqc_ikeqc", $db);
IF (isset($HorseUp)) {
    IF (!isset($HOwner)) {
            $HOwner= "Unknown";
    }
    IF ($HOwner == "Enter Owners Name here") {
            $HOwner= "Unknown";
    }
    $HOwner = "\"".$HOwner."\"";
    IF ($Hrent=="Y") {
            $Hrent = "\"Y\"";
    }
    IF ($Hrent=="N") {
            $Hrent = "\"N\"";
    }
    IF (!isset($Hrent)) {
            $Hrent = "\"N\"";
    }
    IF (!isset($HBio) || $HBio == NULL) {
            $HBio = "NULL";
    } ELSE {
            $HBio = urlencode($HBio);
    }
    IF (!isset($HName)) {
            $HName = "ZZZZ";
    } ELSE {
            $HName = "\"".$HName."\"";
    }
        $seta = mysql_query("UPDATE horses SET HName = ".$HName.", HBio = ".$HBio.", HOwner = ".$HOwner.", Hrent = ".$Hrent." WHERE HID=$HID", $db);
    IF (mysql_affected_rows() <1) {
                print "<H2>STOP!</H2>\n";
                print "<P>A problem may exist, examine the date before for an error message, if found, contain <A HREF=\"mailto:sandor_dosa@yahoo.com\">Sandor</A>.  It is normal to see this message if you clicked submit without actually changing any data, in which case this warning can be ignored.</P>\n";
                print "<H6>Error: EchoHotel1</H6>\n";
                print "<TABLE BORDER=1><TR><TD><P>\n";
                   printf("%s<BR>generated this error:<BR>%s\n", mysql_affected_rows(), mysql_error());
        print "</TD></TR><TR><TD>\n";
        print "UPDATE horses SET HName = ".$HName.", HBio = ".$HBio.", HOwner = ".$HOwner.", Hrent = ".$Hrent." WHERE HID=$HID";
        print "</TD></TR></TABLE>\n";
    }
        print "<H2>Update Comeplete</H2>\n";
        print "<P> Click <A HREF=\"approve.php\">here</A> to return to the listings.</P>\n";
        printf("%s has been successdully updated in the database.\n", $HName);
    die;
}
IF (!isset($HID)) {
    $seta = mysql_query("SELECT * from horses ORDER BY HName");
    echo"<H2>Select the Horse</H2>";
    echo "<SELECT NAME=\"HID\">\n";
    IF ($L = mysql_fetch_row($seta)) {
      do {
        printf("<OPTION VALUE=\"%s\">%s\n", $L[0], stripslashes($L[1]));
      } while ($L = mysql_fetch_row($seta));
    }
        print "</SELECT>\n";
        print "<input type=\"submit\" name=\"Continue\" value=\"Continue\"></form>\n";
    die;
}
$seta = mysql_query("SELECT * FROM horses WHERE HID=$HID", $db);
IF ($A = mysql_fetch_row($seta)) {
        print "<TABLE ALIGN=CENTER>\n";
        printf("<TR><TD ALIGN=RIGHT>Horse's Internal ID:</TD><TD ALIGN=LEFT>%s<input name=\"HID\" type=\"hidden\" value=\"%s\"></TD></TR>\n", $A[0], $A[0]);
        printf("<TR><TD ALIGN=RIGHT>Horse's Name:</TD><TD ALIGN=LEFT><input valign=middle name=\"HName\" type=\"text\" style=\"width:400px;\" value=\"%s\"></TD></TR>\n", stripslashes($A[1]));
        printf("<TR><TD ALIGN=RIGHT>Horse's Homepage:</TD><TD ALIGN=LEFT><input valign=middle name=\"HBio\" type=\"text\"style=\"width:400px;\" value=\"%s\"></TD></TR>\n", urldecode($A[4]));
        printf("<TR><TD ALIGN=RIGHT>Horse's Owner:</TD><TD ALIGN=LEFT><input valign=middle name=\"HOwner\" type=\"text\" style=\"width:400px;\" value=\"%s\"></TD></TR>\n", stripslashes($A[3]));
        IF ($A[2] == "Y") {
        print"<TR><TD ALIGN=RIGHT>Rental Horse:</TD><TD ALIGN=LEFT><input name=\"Hrent\" type=\"checkbox\" CHECKED value=\"Y\">        </TD></TR>\n";
        } ELSE {
        print"<TR><TD ALIGN=RIGHT>Rental Horse:</TD><TD ALIGN=LEFT><input name=\"Hrent\" type=\"checkbox\" value=\"Y\"></TD></TR>\n";
        }
        print "<TR><TD ALIGN=CENTER><input type=\"submit\" name=\"HorseUp\" value=\"Click here to Update this Horse\"></TD><TD ALIGN=CENTER><input type=\"reset\" name=\"ClearForm\" value=\"Reset Form\"></TD></TR></TABLE>\n</FORM>\n";
}


?>

</body>

</html>