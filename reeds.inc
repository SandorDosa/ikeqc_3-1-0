<?php

$R2 = 15;
$L2 = 15;
$R4 = 12;
$L4 = 12;
$R6 = 9;
$L6 = 9;
$R8 = 6;
$L8 = 6;
$R10 = 3;
$L10 = 3;

$_SESSION['LastGame'] = "Reed Chop";

function ReedsHeader($c) {

    print "<div id=\"Reeds\" class=\"w3-container $c\">\n";
    print "<table class=\"w3-table w3-centered\"> \n";
    print "<TR><TD><H2>Reed Chop</H2></TD></TR>\n";

    IF (is_null($_SESSION['RiderHonors'])) {
        printf("<TR><TD><H2>%s</H2></TD></TR>\n", $_SESSION['RiderName']);
    } ELSE {
        printf("<TR><TD><H2>%s %s</H2></TD></TR>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }

    print "</TABLE>\n";
    print "</DIV>\n";
}