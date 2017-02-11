<?PHP
// MA1.inc
// Include file with the settings of scoring for 'Petite Mounted Archery' aka Single Shot
// File v0.2a
// Last Updated: 5 FEB 2017
// Sandor Dosa

// NOTE: This is a six-fold increase above Grand Mounted Archery.

$Gold = 30;                      //Code "G" Bullseye of Target
$Red = 24;                       //Code "R" First Ring
$Blue = 18;                      //Code "B" Second Ring
$Black = 12;                     //Code "K" Third Ring
$White = 6;                      //Code "W" Outer Ring
$Bounce = 0;                     //Code "N" Shots that strike but do not stick in the target
$Passthru = 0;                   //Code "P" Shots that pass thru the target
$Dropout = 0;                    //Code "D" Shots that strike, stick for a moment and then drop out
$Tech = 10;                      //Score added for proper control and technical form (i.e. consolation point(s)

function MA1Header($c) {

    print "<div id=\"MA1\" class=\"w3-container $c\">\n";
    print "<table class=\"w3-table w3-centered\"> \n";
    print "<TR><TD>Mounted Archery -- Single Target</TD></TR>\n";

    IF (is_null($_SESSION['RiderHonors'])) {
        printf("<TR><TD><H2>%s</H2></TD></TR>\n", $_SESSION['RiderName']);
    } ELSE {
        printf("<TR><TD><H2>%s %s</H2></TD></TR>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }

    print "</TABLE>\n";
    print "</DIV>\n";
}

?>