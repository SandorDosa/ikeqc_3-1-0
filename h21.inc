<?php

$DVN1 = 10500;
$DVN2 = 11000;
$DVN3 = 14500;
$Penalty = 1000;

$_SESSION['LastGame'] = "Behead the Enemy -- Short Course";

function HeadsHeader($c) {

    print "<div id=\"Heads\" class=\"w3-container $c\">\n";
    print "<table class=\"w3-table w3-centered\"> \n";
    print "<TR><TD><H2>Behead the Enemy</H2></TD></TR>\n";
    print "<TR><TD><H2>Short Course</H2></TD></TR>\n";

    IF (is_null($_SESSION['RiderHonors'])) {
        printf("<TR><TD><H2>%s</H2></TD></TR>\n", $_SESSION['RiderName']);
    } ELSE {
        printf("<TR><TD><H2>%s %s</H2></TD></TR>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }

    print "</TABLE>\n";
    print "</DIV>\n";
}
?>
