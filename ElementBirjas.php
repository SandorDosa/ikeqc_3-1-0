<?PHP
$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "year.inc";
// /Dev/Data is hardcoded here, actual use will pass this data via $_POST
include "dev_data.inc";
// End /Dev/Data
$_SESSION['RiderHonors'] = $RiderHonors;
$_SESSION['RiderName'] = $RiderName;
$_SESSION['RiderID'] = $RiderID;
$_SESSION['RiderDVN'] = $RiderDVN;
$_SESSION['EName'] = $EName;

IF ($RunBirjas) {


    IF (!isset($review) OR $review < 0) {

        OpenHTML($_SESSION['EName']);

        PageHeadRider("Birjas", "w3-container w3-teal");

        ShowCaution();

        ShowError();

        print "<form name=\"birjas\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
        print "<div id=\"birjas\" class=\"w3-container w3-teal\">\n";
        print "<table class=\"w3-table w3-large\">\n";

        IF (isset($BirjasEdit) OR $BirjasEdit > 0) {

            // Repopulates radio buttons from previous input.

            SWITCH ($P1) {
                CASE "O":
                    $Pass1_O = "checked";
                    BREAK;
                CASE "T":
                    $Pass1_T = "checked";
                    BREAK;
                DEFAULT:
                    $Pass1_M = "checked";
            }

            SWITCH ($P2) {
                CASE "O":
                    $Pass2_O = "checked";
                    BREAK;
                CASE "T":
                    $Pass2_T = "checked";
                    BREAK;
                DEFAULT:
                    $Pass2_M = "checked";
            }

            SWITCH ($P3) {
                CASE "O":
                    $Pass3_O = "checked";
                    BREAK;
                CASE "T":
                    $Pass3_T = "checked";
                    BREAK;
                DEFAULT:
                    $Pass3_M = "checked";
            }
            unset($BirjasEdit);

        } ELSE {
            $Pass1_O = NULL;
            $Pass1_T = NULL;
            $Pass1_M = NULL;
            $Pass2_O = NULL;
            $Pass2_T = NULL;
            $Pass2_M = NULL;
            $Pass3_O = NULL;
            $Pass3_T = NULL;
            $Pass3_M = NULL;
        }
        print "<TR><TD>First Pass:</TD><TD>One Hand<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"O\" $Pass1_O></TD>\n";
        print "<TD>Two Hand<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"T\" $Pass1_T></TD>\n";
        print "<TD>Miss<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"M\" $Pass1_M></TD></TR>\n";

        print "<TR><TD>Second Pass:</TD><TD>One Hand<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"O\" $Pass2_O></TD>\n";
        print "<TD>Two Hand<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"T\" $Pass2_T></TD>\n";
        print "<TD>Miss<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"M\" $Pass2_M></TD></TR>\n";

        print "<TR><TD>Third Pass:</TD><TD>One Hand<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"O\" $Pass3_O></TD>\n";
        print "<TD>Two Hand<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"T\" $Pass3_T></TD>\n";
        print "<TD>Miss<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"M\" $Pass3_M></TD></TR>\n";
        print "</TABLE></div>\n";
        print "<DIV class=\"w3-container w3-blue\">\n";
        print "<input type=\"hidden\" name=\"review\" value=\"11\">\n";
        print "<button class=\"w3-btn w3-white\" name=\"run\" type=\"submit\" value=\"$run\">Submit</button> or \n";
        print "<button class=\"w3-btn w3-black\" name=\"run\" type=\"reset\" value=\"$run\">Reset</button>\n";
        ShowDebug(get_defined_vars(),$vars_start);
        print "</DIV>\n";
        die;
    }

// If $review is set, The run has been completed.

    IF ($review > 0) {

        SWITCH ($Pass1) {

            CASE "O":
                $P1score = 20;
                BREAK;
            CASE "T":
                $P1score = 30;
                BREAK;
            DEFAULT:
                $P1score = 0;
                $_SESSION['Caution'] = "First Pass scored as a miss<BR>";
                BREAK;
        }

        SWITCH ($Pass2) {

            CASE "O":
                $P2score = 20;
                BREAK;
            CASE "T":
                $P2score = 30;
                BREAK;
            DEFAULT:
                $P2score = 0;
                $_SESSION['Caution'] = $_SESSION['Caution']."Second Pass scored as a miss<BR>";
                BREAK;
        }

        SWITCH ($Pass3) {

            CASE "O":
                $P3score = 20;
                BREAK;
            CASE "T":
                $P3score = 30;
                BREAK;
            DEFAULT:
                $P3score = 0;
                $_SESSION['Caution'] = $_SESSION['Caution']."Third Pass scored as a miss<BR>";
                BREAK;
        }

        $Score = $P1score + $P2score + $P3score;

        IF ($Score < 0) {
            $Score = 0;
            $_SESSION['Caution'] = $_SESSION['Caution']."This run resulted in a score of ZERO.<BR>";
        }

        OpenHTML($_SESSION['EName']);

        PageHeadRider("Birjas", "w3-container w3-teal");

        ShowCaution();

        print "<form name=\"birjasreview\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

        print "<section class=\"w3-container w3-teal\">\n";
        print "<H2>Please Review:</H2>\n";
        print "<TABLE class=\"w3-all\">\n";
        print "<TR><TD ALIGN=RIGHT>First:</TD><TD>$P1score</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Second:</TD><TD>$P2score</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Third:</TD><TD>$P3score</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Total:</TD><TD>$Score</TD></TR>\n";
        print "</TABLE></section>\n";

        print "<section class=\"w3-container w3-teal w3-padding-8\">\n";
        print "<button class=\"w3-btn w3-red\" name=\"BirjasEdit\" value=\"1\">EDIT SCORE</button>\n";
        print "<button class=\"w3-btn w3-green\" name=\"BirjasOK\" value=\"1\">SUBMIT SCORE</button>\n";
        print "</section>\n";

        printf("<input type=\"hidden\" name=\"P1\" value=\"%s\">\n", $Pass1);
        printf("<input type=\"hidden\" name=\"P2\" value=\"%s\">\n", $Pass2);
        printf("<input type=\"hidden\" name=\"P3\" value=\"%s\">\n", $Pass3);
        printf("<input type=\"hidden\" name=\"P1S\" value=\"%s\">\n", $P1score);
        printf("<input type=\"hidden\" name=\"P2S\" value=\"%s\">\n", $P2score);
        printf("<input type=\"hidden\" name=\"P3S\" value=\"%s\">\n", $P3score);
        printf("<input type=\"hidden\" name=\"BirjasScore\" value=\"%s\">\n", $Score);
        ShowDebug(get_defined_vars(),$vars_start);
        die;


    }




}
// Production fallback to main module if the module state is no longer true.
// Disabled for development and debug.
// ] ELSE { // End Runbirjas
// header('location: ' . '/sandbox/TOTF.php?FailReturn=1');
// }



// Construction debris
//print "<section class=\"w3-container w3-pale-blue w3-padding-8\">\n";
//print "<P>If this score is correct, select next option below:<BR><BR>\n";
//print "<button class=\"w3-btn w3-lime\" name=\"NextGame\" value=\"1\">NEXT GAME</button><BR><BR>\n";
//print "<button class=\"w3-btn w3-khaki\" name=\"NextRider\" value=\"1\">NEXT RIDER</button><BR><BR>\n";
//print "<button class=\"w3-btn w3-black\" name=\"AllDone\" value=\"1\">DONE</button>\n";