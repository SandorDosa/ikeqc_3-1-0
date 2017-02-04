<?php
/**
 * Created by PhpStorm.
 * User: Bravo
 * Date: 1/26/17
 * Time: 6:05 PM
 */
// EMiCs ON-The-Field helper and scores input script
// TOTF.php
// v0.01
// Sandor Dosa
// Set ECHO Event lookup
// Set ROMEO Riders Lookup


include "year.inc";
include "ikeqcfuncs.inc";

session_start();

IF (!isset($_SESSION['EID']) OR $_SESSION['EID'] <= 0) {

    IF ($Ein == 999 AND $Eout == 0) {
        unset($Ein);
        unset($Eout);
        header('Location: '.$_SERVER['PHP_SELF']);
        die;
    }

    IF (!isset($Ein)) {
        $sete = mysql_query("SELECT * FROM events WHERE Estatus = 'O'");
        IF ($E = mysql_fetch_array($sete)) {
            print "<!DOCTYPE html>\n";
            print "<html>\n";
            print "<title>Events</title>\n";
            print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
            print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

            print "<header class=\"w3-panel\">\n";
            print "<H1>Welcome EMiC:</H1>\n";
            print "</header>\n";
            
            print "<section class=\"w3-panel\">\n";
            print "<P>The following events can be managed:</P>\n";
            print "<form class=\"w3-container\" method=\"post\" action=\"{$_SERVER['PHP_SELF']}\">\n";
            print "<SELECT NAME=\"Ein\">\n";
            do {
                printf("<OPTION VALUE=\"%s\">%s\n", $E[0], $E[2]);
            } while ($E = mysql_fetch_row($sete));
            print "</SELECT>\n<BR>\n";
            print "<P><button class=\"w3-btn w3-green\" name=\"EMiC\">Select Event</button>\n";
            print "</form></section>\n";
            die;
        } ELSE {
            printf("Something went wrong, click <A HREF=\"%s?\">here</A> to try again.\n", $_SERVER['PHP_SELF']);
            print "<PRE>";
            print_r($_POST);
            die(mysql_error());
        }
        
    }

    IF ($Ein > 0) {
        $_SESSION['EID'] = $Ein;
        $setee = mysql_query("SELECT * FROM events WHERE PID=$Ein", $db);
        IF ($EE = mysql_fetch_array($setee)) {
            $_SESSION['EID'] = $EE[0];
            $_SESSION['EName'] = $EE[2];
            $_SESSION['EPass'] = $EE[3];
            $_SESSION['EAdmin'] = $EE[4];
            $_SESSION['EAphone'] = $EE[5];
            $_SESSION['EAemail'] = $EE[6];
            $_SESSION['EH'] = $EE[11];
            $_SESSION['ER'] = $EE[12];
            $_SESSION['ED'] = $EE[13];
            $_SESSION['EM'] = $EE[14];
            $_SESSION['EB'] = $EE[15];
            $_SESSION['Estatus'] = $EE[18];
            header('Location: '.$_SERVER['PHP_SELF']);
            die;
        }
    }
}

// $_SESSION['EID'] Is set if the script gets this far

IF ($_SESSION['EID'] > 0) {

    IF (!isset($_SESSION['stats']) OR $_SESSION['stats'] <= 0) {
        $setr = mysql_query("SELECT PID,EH,ER,ED,EM,EB FROM events_temp WHERE EID={$_SESSION['EID']} AND Erun = 'N'", $db);
        IF ($R = mysql_fetch_array($setr)) {
            $EP = mysql_num_rows($setr);
            do {
                IF ($_SESSION['EH'] == 'Y' AND $R[1] == 'Y') {
                    $EH++;
                }
                IF ($_SESSION['ER'] == 'Y' AND $R[2] == 'Y') {
                    $ER++;
                }
                IF ($_SESSION['ED'] == 'Y' AND $R[3] == 'Y') {
                    $ED++;
                }
                IF ($_SESSION['EM'] == 'Y' AND $R[4] == 'Y') {
                    $EM++;
                }
                IF ($_SESSION['EB'] == 'Y' AND $R[5] == 'Y') {
                    $EB++;
                }
            } while ($R = mysql_fetch_array($setr));
        }
        $_SESSION['stats'] = $_SESSION['EID'];
        $_SESSION['EPcount'] = $EP;
        IF (isset($EH)) {
            $_SESSION['EHcount'] = $EH;
        }
        IF (isset($ER)) {
            $_SESSION['ERcount'] = $ER;
        }
        IF (isset($ED)) {
            $_SESSION['EDcount'] = $ED;
        }
        IF (isset($EM)) {
            $_SESSION['EMcount'] = $EM;
        }
        IF (isset($EB)) {
        }
            $_SESSION['EBcount'] = $EB;
        }
    }

    // The stats have been collected.

IF ($RunHeads) {

    // If a run has been queued, $run is set, but $review has not.

    IF ($HeadsEdit > 0) {
        $run = $_SESSION['RiderID'];
        $review = -1;
    }

    IF ($run > 0 AND $review < 0) {

        IF (!isset($_SESSION['RiderID']) OR $_SESSION['RiderID'] <= 0) {
            $setrh = mysql_query("SELECT riders.Pname,riders.PHonors,events_temp.PID,events_temp.DVN FROM events_temp LEFT JOIN riders ON riders.PID = events_temp.PID WHERE ( EID = {$_SESSION['Event']} AND PID = $run LIMIT 1)", $db);
            IF ($RH = mysql_fetch_array($setrh)) {
                $_SESSION['RiderDVN'] = $RH[3];
                $_SESSION['RiderID'] = $RH[2];
                $_SESSION['RiderHonors'] = $RH[1];
                $_SESSION['RiderName'] = $RH[0];
            }
        }

        print "<!DOCTYPE html>\n";
        print "<html>\n";
        printf("<title>%s</title>\n", $_SESSION['EName']);
        print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
        print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

        print "<header class=\"w3-panel\">\n";
        print "<H1>Behead the Enemy</H1>\n";

        IF (is_null($_SESSION['RiderHonors'])) {
            printf("<H2>%s</H2>\n", $_SESSION['RiderName']);
        } ELSE {
            printf("<H2>%s %s</H2>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
        }
        print "</header>\n";

        IF (isset($_SESSION['Caution']) AND !is_null($_SESSION['Caution'])) {

            print "<article class=\"w3-panel w3-yellow\">\n";
            print "<P>Take Note:<BR>\n";
            print "{$_SESSION['Caution']}</P></article>\n";
            $_SESSION['Caution'] = NULL;
        }

        IF (isset($_SESSION['EntryError']) AND !is_null($_SESSION['EntryError'])) {

            print "<article class=\"w3-panel w3-red\">\n";
            print "<P>You have an error in your input, please try again.<BR>\n";
            print "{$_SESSION['EntryError']}</P></article>\n";
            $_SESSION['EntryError'] = NULL;
        }

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

                    print "<!DOCTYPE html>\n";
                    print "<html>\n";
                    printf("<title>%s</title>\n", $_SESSION['EName']);
                    print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
                    print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

                    print "<header class=\"w3-panel w3-grey\">\n";
                    print "<H1>Behead the Enemy</H1>\n";
                    IF (is_null($_SESSION['RiderHonors'])) {
                        printf("<H2>%s</H2>\n", $_SESSION['RiderName']);
                    } ELSE {
                        printf("<H2>%s %s</H2>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
                    }
                    print "</header>\n";

                    IF (isset($_SESSION['Caution']) AND !is_null($_SESSION['Caution'])) {

                        print "<article class=\"w3-panel w3-yellow\">\n";
                        print "<P>Take Note:<BR>\n";
                        print "{$_SESSION['Caution']}</P></article>\n";
                        $_SESSION['Caution'] = NULL;
                    }

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

                    print "<input type=\"hidden\" name=\"Score\" value=\"$Score\">\n";
                    print "<input type=\"hidden\" name=\"Penalty\" value=\"$Penalty\">\n";
                    print "<input type=\"hidden\" name=\"Htime\" value=\"$Htime\">\n";
                    print "<input type=\"hidden\" name=\"run\" value=\"$run\">\n";
                    print "<button class=\"w3-btn w3-lime\" name=\"GoodRun\" value=\"1\">CONFIRM</button>\n";
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

// If $GoodRun is set, the score has been reviewed and confirmed.

    IF ($run > 0 AND $GoodRun > 0) {
        $setHup = "INSERT INTO heads (PID,HID,EID,DVN,SHtime,SHpenalty,SHscore,SHseen,SHyear) VALUES ({$_SESSION['RiderID']},9999,{$_SESSION['EID']},{$_SESSION['RiderDVN']},$Htime,$Penalty,$Score,'U',$anyear)";
        IF ($Hup = mysql_query($setHup, $db)) {
            IF ($Hup) {
                $_SESSION['EH']--;
                print "<!DOCTYPE html>\n";
                print "<html>\n";
                printf("<title>%s</title>\n", $_SESSION['EName']);
                print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
                print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

                print "<header class=\"w3-panel w3-grey\">\n";
                print "<H1>Behead the Enemy</H1>\n";
                IF (is_null($_SESSION['RiderHonors'])) {
                    printf("<H2>%s</H2>\n", $_SESSION['RiderName']);
                } ELSE {
                    printf("<H2>%s %s</H2>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
                }
                print "</header>\n";


                print "<form name=\"headsdone\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

                print "<section class=\"w3-container w3-light-green\">\n";
                print "<H2>Score saved.</H2>\n";
                print "</section>\n";

                print "<section class=\"w3-container w3-pale-yellow w3-padding-8\">\n";
                print "<P>Are we staying with ";
                print "<button class=\"w3-btn w3-amber\" name=\"NextRider\" value=\"1\">THIS RIDER</button>";
                print " or ";
                print "<button class=\"w3-btn w3-lime\" name=\"NextGame\" value=\"1\">THIS GAME</button> for the next run?\n";
                print "</section>\n";
                die;
            }
        } ELSE {
            printf("Something went wrong, click <A HREF=\"%s?\">here</A> to try again.\n", $_SERVER['PHP_SELF']);
            print "<PRE>";
            print_r($_POST);
            print_r($_SESSION);
            die(mysql_error());
        }

    }

} // End RunHeads

IF ($RunRings) {




/* Construction debris

                            print "<P>If this score is correct, select next option below:<BR><BR>\n";
                            print "<button class=\"w3-btn w3-black\" name=\"AllDone\" value=\"1\">DONE</button>\n";




                    print "<button class=\"w3-btn w3-red\" name=\"HeadsEdit\" value=\"1\">EDIT SCORE</button>\n";
                    print "</section>\n";

                    print "<section class=\"w3-container w3-pale-blue w3-padding-8\">\n";

                    print "<input type=\"hidden\" name=\"Score\" value=\"$Score\">\n";
                    print "<input type=\"hidden\" name=\"Penalty\" value=\"$Penalty\">\n";
                    print "<input type=\"hidden\" name=\"Htime\" value=\"$Htime\">\n";
                    print "<input type=\"hidden\" name=\"run\" value=\"$run\">\n";
                    print "<button class=\"w3-btn w3-lime\" name=\"GoodRun\" value=\"1\">CONFIRM</button>\n";
                    die;

                }
            }
        }




        } ELSE {
            print "<!DOCTYPE html>\n";
            print "<html>\n";
            printf("<title>%s</title>\n", $_SESSION['EName']);
            print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
            print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

            print "<header class=\"w3-panel\">\n";
            print "<H1>Behead the Enemy</H1>\n";
            print "</header>\n";

            print "<section class=\"w3-container\">\n";
            print "<form name=\"heads\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
            printf("<P>There are %s rider(s) waiting to run this game.</P></section>\n", $EH);
            $setrh = mysql_query("SELECT riders.Pname,riders.PHonors,events_temp.PID FROM events_temp LEFT JOIN riders ON riders.PID = events_temp.PID WHERE EID = {$_SESSION['Event']}", $db);
            IF ($RH = mysql_fetch_array($setrh)) {
                print "<section class\"w3-container\"><table class=\"w3-table-all\">\n";
                do {
                    IF (is_null($RH[1])) {
                        printf("<tr><td><button class=\"w3-btn w3-blue\" name=\"run\" value='\"%s\"'>%s</button></td></tr>", $RH[2], $RH[0]);
                    } ELSE {
                        printf("<tr><td><button class=\"w3-btn w3-blue\" name=\"run\" value='\"%s\"'>%s %s</button></td></tr>", $RH[2], $RH[1], $RH[0]);
                    }
                } while ($RH = mysql_fetch_array($setrh));
                print "</table></section>\n";
            }
        }


    }
    IF ($_SESSION['EH'] == 'Y') {

    }

*/









}