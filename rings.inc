<?php

$R1 = 20;
$R2 = 15;
$R3 = 10;
$R4 = 8;
$R5 = 6;
$R6 = 4;
$L1 = 20;
$L2 = 15;
$L3 = 10;
$L4 = 8;
$L5 = 6;
$L6 = 4;

$All_Big = 0; // Proposed bonus for taking all three big rings on both sides

$_SESSION['LastGame'] = "Ring Tilt";

function RingsHeader($c) {

    print "<div id=\"Rings\" class=\"w3-container $c\">\n";
    print "<table class=\"w3-table w3-centered\"> \n";
    print "<TR><TD><H2>Ring Tilt</H2></TD></TR>\n";

    IF (is_null($_SESSION['RiderHonors'])) {
        printf("<TR><TD><H2>%s</H2></TD></TR>\n", $_SESSION['RiderName']);
    } ELSE {
        printf("<TR><TD><H2>%s %s</H2></TD></TR>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }

    print "</TABLE>\n";
    print "</DIV>\n";
}