<?PHP

session_start();
include "ikeqcfuncs.inc";
include "year.inc";
$EName = "Sample Wars II";
$RiderHonors = "Earl Sir";
$RiderName = "Earl";
$RiderID = 999;
$RiderDVN = 1;
$run = 999;
$_SESSION['RiderHonors'] = $RiderHonors;
$_SESSION['RiderName'] = $RiderName;
$_SESSION['RiderID'] = $RiderID;
$_SESSION['RiderDVN'] = $RiderDVN;
$RunHeads = true;

IF ($RunHeads) {

    IF (!isset($review) OR $review < 0) {

        OpenHTML($_SESSION['EName']);

        PageHeadRider("Behead the Enemy", "w3-panel");

        ShowCaution();

        ShowError();

        print "<section class=\"w3-container\">\n";
        print "<form name=\"heads\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
        print "<div id=\"Heads\" class=\"w3-container w3-pale-yellow\">\n";
        print "<table class=\"w3-table w3-large\">\n";
        print "<TR><TD>Time:(format ###.##)</TD></TR>\n";
        print "<TR><TD colspan=2><input name=\"Htime\" type=\"text\" size=\"16\"></TD></TR>\n";
        print "<TR><TD>Penaltes:</TD><TD><input name=\"Penalty\" type=\"text\" value=\"0\" size=\"1\"></TD></TR>\n";
        print "<TR><TD colspan=2>If time exceeds 1 minute,<br> add 60 seconds instead.<br>E.g. Use 72.55 not 1:12.55</TD></TR>\n";
        print "</TABLE>\n";
        print "<input type=\"hidden\" name=\"run\" value=\"$run\">\n";
        print "<button class=\"w3-btn w3-black\" name=\"review\" value=\"11\">Submit</button>\n";
        die;
    }

// If $review is set, The run has been completed.

    IF ($review > 0) {
        IF (isset($Htime)) {
            IF (is_numeric($Htime)) {
                IF (preg_match('/^[0-9]+\.[0-9]{2}$/', $Htime)) {
                    $raw = $Htime * 100;
                    SWITCH ($_SESSION['RiderDVN']) {

                        CASE 1:
                            $Score = (10500 - $raw - ($Penalty * 1000)) / 100;
                            BREAK;
                        CASE 2:
                            $Score = (11000 - $raw - ($Penalty * 1000)) / 100;
                            BREAK;
                        CASE 3:
                            $Score = (14500 - $raw - ($Penalty * 1000)) / 100;
                            BREAK;
                        DEFAULT:
                            $_SESSION['EntryError'] = "You did not set a Division.<BR>";
                            header('Location: ' . $_SERVER['PHP_SELF']);
                            die;
                    }

                    IF ($Score < 0) {
                        $Score = 0;
                        $_SESSION['Caution'] = "This run resulted in a score of ZERO.<BR>";
                    }

                    OpenHTML($_SESSION['EName']);

                    IF (is_null($_SESSION['RiderHonors'])) {
                        printf("<H2>%s</H2>\n", $_SESSION['RiderName']);
                    } ELSE {
                        printf("<H2>%s %s</H2>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
                    }
                    print "</header>\n";

                    ShowCaution();

                    print "<form name=\"headsreview\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

                    print "<section class=\"w3-container w3-light-green\">\n";
                    print "<H2>Please Review:</H2>\n";
                    print "<TABLE class=\"w3-all\">\n";
                    print "<TR><TD ALIGN=RIGHT>TIME:</TD><TD>$Htime</TD></TR>\n";
                    print "<TR><TD ALIGN=RIGHT>Penalty:</TD><TD>$Penalty</TD></TR>\n";
                    print "<TR><TD ALIGN=RIGHT>SCORE:</TD><TD>$Score</TD></TR>\n";
                    print "</TABLE></section>\n";

                    print "<section class=\"w3-container w3-pale-yellow w3-padding-8\">\n";
                    print "<button class=\"w3-btn w3-red\" name=\"HeadsEdit\" value=\"1\">EDIT SCORE</button>\n";
                    print "</section>\n";

                    print "<section class=\"w3-container w3-pale-blue w3-padding-8\">\n";
                    print "<P>If this score is correct, select next option below:<BR><BR>\n";
                    print "<button class=\"w3-btn w3-lime\" name=\"NextGame\" value=\"1\">NEXT GAME</button><BR><BR>\n";
                    print "<button class=\"w3-btn w3-khaki\" name=\"NextRider\" value=\"1\">NEXT RIDER</button><BR><BR>\n";
                    print "<button class=\"w3-btn w3-black\" name=\"AllDone\" value=\"1\">DONE</button>\n";
                    die;


                } ELSE {
                    $_SESSION['EntryError'] = "Time is not in the correct format.<BR> Example of Format: 75.50<BR>";
                }

            } ELSE {
                $_SESSION['EntryError'] = "Time is not in the correct format.<BR> Example of Format: 75.50<BR>";

            }

        } ELSE {
            $_SESSION['EntryError'] = "You did not enter a time.\n";
        }
        header('Location: ' . $_SERVER['PHP_SELF']);
        die;
    }


}
