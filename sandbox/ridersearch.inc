//Rider Search

<?PHP


IF ($Rout <= 0) {

IF (strlen(trim($Rin)) < 1 ) {
$setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' ORDER BY Pname", $db);
} ELSEIF (strlen(trim($Rin)) > 6) {
$Rin = "%".substr($Rin, 0, 5) . "%";
$Rindx = soundex($Rin) . "%";
$setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '$Rin' OR Pcka LIKE '$Rin' OR Paka LIKE '$Rin' OR Pmka LIKE '$Rin' OR PSdx LIKE '$Rindx' ) ORDER BY Pname", $db);
} ELSE {
$Rin = "%".$Rin . "%";
$Rindx = soundex($Rin) . "%";
$setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '$Rin' OR Pcka LIKE '$Rin' OR Paka LIKE '$Rin' OR Pmka LIKE '$Rin' OR PSdx LIKE '$Rindx' ) ORDER BY Pname", $db);
}
IF ($R = mysql_fetch_array($setr)) {
print "<!DOCTYPE html>\n";
print "<html>\n";
print "<title>Rider Information</title>\n";
print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

print "<header class=\"w3-panel\">\n";
    print "<H1>Rider Selection:</H1>\n";
    print "</header>\n";

print "<header class=\"w3-panel\">\n";
    print "<H2>Please Select the Rider below:</H2>\n";
    print "</header>\n";

print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
    print "<input type=\"hidden\" name=\"Rin\" value=\"999\">\n";
    print "<select class=\"w3-select\" name=\"Rout\">\n";
        print "<OPTION VALUE=\"0\">-=Search Again=-\n";
            do {
            printf("<OPTION VALUE=\"%s\">%s\n", $R[0], $R[1]);
            IF (!is_null($R['Pcka']) OR !empty($R['Pcka'])) {
            printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[2]);
            }
            IF (!is_null($R['Paka']) OR !empty($R['Paka'])) {
            printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[3]);
            }
            IF (!is_null($R['Pmka']) OR !empty($R['Pmka'])) {
            printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[1);
            }
            } while ($R = mysql_fetch_row($setr));
            print "<OPTION VALUE=\"0\">-=Search Again=-\n";
            echo "</SELECT>\n<BR>\n";
    print "<P>A pair of asterisks next to a name, indicates that name was found searching against an alternate or mundane name."
        print "<p><button class=\"w3-btn w3-blue\">Edit this Rider</button></p>\n";
    print "</form>\n";
die;
}

}
?>