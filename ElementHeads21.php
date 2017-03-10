<?PHP
$vars_start = get_defined_vars();
session_start();
include "colors.inc";
include "ikeqcfuncs.inc";
include "year.inc";
include "h21.inc";

// /Dev/Data is hardcoded here, actual use will pass this data via $_POST
// include "dev_data.inc";
// End /Dev/Data

IF ($_SESSION['RunH21']) {

    IF (isset($_POST['HEdit'])) {
        $run = $_SESSION['RiderID'];
        $review = -1;
        unset($HEdit);
    } // Trap for EDIT request

    IF (!isset($_POST['review']) OR $_POST['review'] < 0) {

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
    }  // EDIT/ENTRY Block

// If $review is set, The run has been completed.

    IF ($_POST['review'] > 0) {
        IF (isset($_POST['Htime'])) {
            IF (is_numeric($_POST['Htime'])) {
                IF (preg_match('/^[0-9]+\.[0-9]{2}$/', $_POST['Htime'])) {
                    $raw = $_POST['Htime'] * 100;
                    IF (!isset($_POST['Faults'])) {
                        $FP = 0;
                    } ELSE {
                        IF ($_POST['Faults'] > 9) {
                            $_SESSION['Caution'] = "Did the rider score that many faults or did you count by ten?<BR>";
                        }
                        $FP = $_POST['Faults'] * $Penalty;
                    } // Penalty Calculation

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
                            header('location: TOTF.php?FailReturn=2');
                            die;
                    } // Score calculation

                    IF ($Score < 0) {
                        $Score = 0;
                        $_SESSION['Caution'] = "This run resulted in a score of ZERO.<BR>Zero scores are not recorded.<BR>";
                        $DQ = "Z";
                    } // Zero Score Test

                    OpenHTML("Behead the Enemy");
                    
                    HeadsHeader($S1);
                    
                    print "<form name=\"headsreview\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
                    print "<section class=\"w3-container $S2\">\n";
                    print "<H2>Please Review:</H2>\n";
                    print "<TABLE class=\"w3-table\">\n";
                    print "<TR><TD>TIME:</TD><TD>{$_POST['Htime']}</TD></TR>\n";
                    IF ($_POST['Faults'] == 0) {
                        print "<TR><TD>Penalties:</TD><TD>none</TD></TR>";
                    } ELSE {
                        print "<TR><TD>Penalties:</TD><TD>{$_POST['Faults']}</TD></TR>\n";
                    }
                    print "<TR><TD>SCORE:</TD><TD>$Score</TD></TR>\n";
                    print "</TABLE></section>\n";
                    print "<section class=\"w3-container $S3 w3-padding-8\">\n";
                    print "<input type=\"hidden\" name=\"score\" value=\"$Score\">\n";
                    print "<input type=\"hidden\" name=\"time\" value=\"{$_POST['Htime']}\">\n";
                    print "<input type=\"hidden\" name=\"faults\" value=\"{$_POST['Faults']}\">\n";
                    print "<input type=\"hidden\" name=\"DQ\" value=\"{$_POST['DQ']}\">\n";
                    print "<button class=\"w3-btn w3-red\" name=\"HEdit\" value=\"1\">EDIT SCORE</button> -or- \n";
                    print "<button class=\"w3-btn w3-lime\" name=\"GoodRun\" value=\"1\">CONFIRM</button>\n";
                    //ShowDebug(get_defined_vars(),$vars_start);
                    print "</section>\n";
                    die;
                } ELSE {
                    $_SESSION['EntryError'] = "Time is not in the correct format.<BR> Example of Format: 75.50<BR>";
                } // Time Format check, Build Score Review table if pass.
            } ELSE {
                $_SESSION['EntryError'] = "Time is not in the correct format.<BR> Example of Format: 75.50<BR>";
            } // Time type check, proceed to next test if pass
        } ELSE {
            $_SESSION['EntryError'] = "You did not enter a time.\n";
        } // Time set check, proceed to next test if pass
        header('Location: ' . $_SERVER['PHP_SELF']);
        die;
    } // End Review Block

    IF ($_POST['GoodRun'] == 1) {
        $results1 = mysql_query("INSERT INTO heads_short (PID,HID,KID,EID,DVN,SHStime,SHSpenalty,SHSscore,SHSDQ,SHSseen,SHSyear) 
VALUES ({$_SESSION['PID']},{$_SESSION['HID']},{$_SESSION['KID']},{$_SESSION['Event']},{$_SESSION['RiderDVN']},) ");
        $results2 = mysql_query("UPDATE events_temp SET SHSscore = ")
    }
    
}

