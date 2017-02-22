<?PHP
$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "year.inc";
include "h21.inc";
include "colors.inc";
// /Dev/Data is hardcoded here, actual use will pass this data via $_POST
include "dev_data.inc";
// End /Dev/Data


IF ($_SESSION['RunH21']) {

    IF (isset($HEdit)) {
        $run = $_SESSION['RiderID'];
        $review = -1;
        unset($HEdit);
    }

    IF (!isset($review) OR $review < 0) {

        OpenHTML("Behead the Enemy");

        HeadsHeader($S1);

        

        

        print "<form name=\"heads\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
        print "<div id=\"Heads\" class=\"w3-container w3-center $S2 w3-padding-8 w3-large\">\n";
        print "<input name=\"Htime\" type=\"text\" width=\"100%\" placeholder=\"Time(format ###.##)\"><BR>\n";
        print "<p>If time exceeds 1 minute, add 60 seconds instead.<br>E.g. Use 72.55 not 1:12.55</p>\n";
        print "</div>\n";
        print "<div class=\"w3-container w3-center $S3 w3-padding-8 w3-large\">\n";
        print "<input name=\"Faults\" type=\"text\" width=\"100%\" placeholder='\"Penalty count\"'>\n";
        print "<P>Just the number of penalties, if any</P>\n";
        print "</div>\n";
        print "<DIV class=\"w3-container w3-center $S4 w3-padding-8\">\n";
        print "<input type=\"hidden\" name=\"review\" value=\"11\">\n";
        print "<button class=\"w3-btn w3-white\" name=\"run\" type=\"submit\" value=\"$run\">Submit</button> -or- \n";
        print "<button class=\"w3-btn w3-black\" name=\"run\" type=\"reset\" value=\"$run\">Reset</button>\n";
        print "</DIV>\n";
        die;
    }

// If $review is set, The run has been completed.

    IF ($review > 0) {
        IF (isset($Htime)) {
            IF (is_numeric($Htime)) {
                IF (preg_match('/^[0-9]+\.[0-9]{2}$/', $Htime)) {
                    $raw = $Htime * 100;
                    IF (!isset($Faults)) {
                        $FP = 0;
                    } ELSE {
                        $FP = $Faults * $Penalty;
                    }
                    SWITCH ($_SESSION['RiderDVN']) {

                        CASE 1:
                            $Score = ($DVN1 - $raw - $FP) / 100;
                            BREAK;
                        CASE 2:
                            $Score = ($DVN2 - $raw - $FP) / 100;
                            BREAK;
                        CASE 3:
                            $Score = ($DVN3 - $raw - $FP) / 100;
                            BREAK;
                        DEFAULT:
                            $_SESSION['EntryError'] = "Division is not set, fatal error.<BR>";
                            header('location: /sandbox/TOTF.php?FailReturn=2');
                            die;
                    }

                    IF ($Score < 0) {
                        $Score = 0;
                        $_SESSION['Caution'] = "This run resulted in a score of ZERO.<BR>";
                    }

                    OpenHTML("Behead the Enemy");

                    HeadsHeader($S1);

                    

                    print "<form name=\"headsreview\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

                    print "<section class=\"w3-container $S2\">\n";
                    print "<H2>Please Review:</H2>\n";
                    print "<TABLE class=\"w3-table\">\n";
                    print "<TR><TD>TIME:</TD><TD>$Htime</TD></TR>\n";
                    IF ($Faults == 0) {
                        print "<TR><TD>Penalties:</TD><TD>none</TD></TR>";
                    } ELSE {
                        print "<TR><TD>Penalties:</TD><TD>$Faults</TD></TR>\n";
                    }
                    print "<TR><TD>SCORE:</TD><TD>$Score</TD></TR>\n";
                    print "</TABLE></section>\n";

                    print "<section class=\"w3-container $S3 w3-padding-8\">\n";
                    print "<button class=\"w3-btn w3-red\" name=\"HEdit\" value=\"1\">EDIT SCORE</button> -or- \n";
                    print "<button class=\"w3-btn w3-lime\" name=\"GoodRun\" value=\"1\">CONFIRM</button>\n";
                    ShowDebug(get_defined_vars(),$vars_start);
                    print "</section>\n";
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
// Production fallback to main module if the module state is no longer true.
// Disabled for development and debug.
// ] ELSE { // End RunHeads
// header('location: ' . '/sandbox/TOTF.php?FailReturn=1');
// }
