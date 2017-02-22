<?PHP
// MA3.inc
// Include file with the settings of scoring for 'Grand Mounted Archery' aka Triple Shot
// File v0.2a
// Last Updated: 5 FEB 2017
// Sandor Dosa

$Gold = 30;                      //Bullseye of Target
$Red = 24;                       //First Ring
$Blue = 18;                      //Second Ring
$Black = 12;                     //Third Ring
$White = 6;                     //Outer Ring
$Bounce = 0;                    //Shots that strike but do not stick in the target
$Passthru = 0;                  //Shots that pass thru the target
$Dropout = 0;                   //Shots that strike, stick for a moment and then drop out
$Tech = 10;                 //Score added for proper control and technical form (i.e. consolation point(s)
$bonus_gate = 15;               //The time in seconds that must be beaten to earn bonus score
$bonus_method = "R";       //Method for scoring bonus, STRICT = whole integer only / R = remainder

$_SESSION['LastGame'] = "Mounted Archery -- Triple Target";

function MA3Header($c) {

    print "<div id=\"MA1\" class=\"w3-container $c\">\n";
    print "<table class=\"w3-table w3-centered\"> \n";
    print "<TR><TD>Mounted Archery -- Triple Target</TD></TR>\n";

    IF (is_null($_SESSION['RiderHonors'])) {
        printf("<TR><TD><H2>%s</H2></TD></TR>\n", $_SESSION['RiderName']);
    } ELSE {
        printf("<TR><TD><H2>%s %s</H2></TD></TR>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }

    print "</TABLE>\n";
    print "</DIV>\n";
}