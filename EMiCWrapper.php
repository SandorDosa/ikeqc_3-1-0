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

$vars_start = get_defined_vars();
session_start();
include "year.inc";
include "colors.inc";
include "ikeqcfuncs.inc";

// Top

IF (isset($FailReturn)) {
    IF ($FailReturn == 1) {
        $_SESSION['EntryError'] = "You shouldn't be seeing this.<BR>If you are, then something serious has broken.<BR>Any data entered but not yet saved has been lost.<BR>\n";
    }
    
    IF ($FailReturn == 2) {
        $_SESSION['EntryError'] = "Fatal error.\n";
        $_SEESION['Caution'] = "The system is no long stable enough to be used at this time.<BR>Contact Sandor as soon as your situation allows.<BR>Please continue running your event on paper.<BR>\n";
        OpenHTML($S7);
        
        $setz = mysql_query("UPDATE events_temp SET Erun='X' WHERE EID='{$_SESSION['EID']}'", $db);
        $setzz = mysql_query("UPDATE events SET Estatus='X' WHERE EID='{$_SESSION['EID']}'", $db);
        
        
        print "<DIV CLASS=\"w3-panel w3-red w3-jumbo\"><P>Sorry folks, something broke that Sandor will have to fix.<BR>Anything written prior to the crash is still there, but you should finish the tournament on paper.<BR>Remember there are static score calculator scripts at <A HREF=\"http://scaikeqc.org/tools\">here</A>.</P></DIV>\n";
        
        Print "<DIV CLASS=\"w3-container w3-yellow w3-large\"><P>The following data will likely be of use to Sandor.  Please take a screenshot of it to add to your crash report, thank you.</P>\n";
        
        ShowDebug(get_defined_vars(),$vars_start);
        print "</DIV><DIV CLASS=\"w3-container w3-amber\"><P>Data Dump complete.</P></DIV>";
        
        session_destroy();
        session_unset();
        die("Process Terminated");
    }
} // Failure Checking

IF (isset($next) AND $next > 0) {
    SWITCH ($next) {
        CASE "EHS":
            $_SESSION['RunH21'] = true;
            $_SESSION['RunH30'] = false;
            $_SESSION['RunRings'] = false;
            $_SESSION['RunReeds'] = false;
            $_SESSION['RunMA1'] = false;
            $_SESSION['RunMA3'] = false;
            $_SESSION['RunBirjas'] = false;
            header('Location: /sandbox/ElementHeads21.php'); //TODO Change directory assigment for production use.
            BREAK;
        CASE "EHL":
            $_SESSION['RunH21'] = false;
            $_SESSION['RunH30'] = true;
            $_SESSION['RunRings'] = false;
            $_SESSION['RunReeds'] = false;
            $_SESSION['RunMA1'] = false;
            $_SESSION['RunMA3'] = false;
            $_SESSION['RunBirjas'] = false;
            header('Location: /sandbox/ElementHeads30.php'); //TODO Change directory assigment for production use.
            BREAK;
        CASE "ER":
            $_SESSION['RunH21'] = false;
            $_SESSION['RunH30'] = false;
            $_SESSION['RunRings'] = true;
            $_SESSION['RunReeds'] = false;
            $_SESSION['RunMA1'] = false;
            $_SESSION['RunMA3'] = false;
            $_SESSION['RunBirjas'] = false;
            header('Location: /sandbox/ElementRings.php'); //TODO Change directory assigment for production use.
            BREAK;
        CASE "ED":
            $_SESSION['RunH21'] = false;
            $_SESSION['RunH30'] = false;
            $_SESSION['RunRings'] = false;
            $_SESSION['RunReeds'] = true;
            $_SESSION['RunMA1'] = false;
            $_SESSION['RunMA3'] = false;
            $_SESSION['RunBirjas'] = false;
            header('Location: /sandbox/ElementReeds.php'); //TODO Change directory assigment for production use.
            BREAK;
        CASE "EMS":
            $_SESSION['RunH21'] = false;
            $_SESSION['RunH30'] = false;
            $_SESSION['RunRings'] = false;
            $_SESSION['RunReeds'] = false;
            $_SESSION['RunMA1'] = true;
            $_SESSION['RunMA3'] = false;
            $_SESSION['RunBirjas'] = false;
            header('Location: /sandbox/ElementMAST.php'); //TODO Change directory assigment for production use.
            BREAK;
        CASE "EMT":
            $_SESSION['RunH21'] = false;
            $_SESSION['RunH30'] = false;
            $_SESSION['RunRings'] = false;
            $_SESSION['RunReeds'] = false;
            $_SESSION['RunMA1'] = false;
            $_SESSION['RunMA3'] = true;
            $_SESSION['RunBirjas'] = false;
            header('Location: /sandbox/ElementMATT.php'); //TODO Change directory assigment for production use.
            BREAK;
        CASE "EB":
            $_SESSION['RunH21'] = false;
            $_SESSION['RunH30'] = false;
            $_SESSION['RunRings'] = false;
            $_SESSION['RunReeds'] = false;
            $_SESSION['RunMA1'] = false;
            $_SESSION['RunMA3'] = false;
            $_SESSION['RunBirjas'] = true;
            header('Location: /sandbox/ElementBirjas.php'); //TODO Change directory assigment for production use.
            BREAK;
        DEFAULT:
            unset($next);
            header('Location: '.$_SERVER['PHP_SELF']);
            BREAK;
    }
} // Session handling of which game is to be called.

IF (!isset($_SESSION['EID']) OR $_SESSION['EID'] <= 0) {

    IF ($Ein == 999 AND $Eout == 0) {
        unset($Ein);
        unset($Eout);
        header('Location: '.$_SERVER['PHP_SELF']);
        die;
    } // Reset Event search

    IF (!isset($Ein)) {
        $sete = mysql_query("SELECT * FROM events WHERE Estatus = 'O'");
        IF ($E = mysql_fetch_array($sete)) {
            
            OpenHTML("Events");
            
            print "<header class=\"w3-panel $S1\">\n";
            print "<H1>Welcome EMiC:</H1>\n";
            print "</header>\n";
            
            print "<section class=\"w3-panel $S2\">\n";
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
            ShowDebug(get_defined_vars(),$vars_start);
            die(mysql_error());
        }
    } // Event Selection

    IF ($Ein > 0) {
        $_SESSION['EID'] = $Ein;
        $setee = mysql_query("SELECT * FROM events WHERE PID=$Ein", $db);
        IF ($EE = mysql_fetch_array($setee)) {
            $_SESSION['EID'] = $EE['EID'];
            $_SESSION['EName'] = $EE['Ename'];
            $_SESSION['EPass'] = $EE['Epass'];
            $_SESSION['EAdmin'] = $EE['EMID'];
            $_SESSION['EAphone'] = $EE['EAphone'];
            $_SESSION['EAemail'] = $EE['EAemail'];
            $_SESSION['EHS'] = $EE['EHS'];
            $_SESSION['EHL'] = $EE['EHL'];
            $_SESSION['ER'] = $EE['ER'];
            $_SESSION['ED'] = $EE['ED'];
            $_SESSION['EMS'] = $EE['EMS'];
            $_SESSION['EMT'] = $EE['EMT'];
            $_SESSION['EB'] = $EE['EB'];
            $_SESSION['Estatus'] = $EE['Estatus'];
            header('Location: '.$_SERVER['PHP_SELF']);
            die;
        } ELSE {
            printf("Something went wrong, click <A HREF=\"%s?\">here</A> to try again.\n", $_SERVER['PHP_SELF']);
            print "<PRE>";
            print_r($_POST);
            ShowDebug(get_defined_vars(),$vars_start);
            die(mysql_error());
        }
    } //Event data loaded into Session
}  // Event Selection and Data Management

// $_SESSION['EID'] Is set if the script gets this far

IF ($_SESSION['EID'] > 0) {
    

    IF (!isset($_SESSION['stats']) OR $_SESSION['stats'] <= 0) {
        $setr = mysql_query("SELECT PID,EHS,EHL,ER,ED,EMS,EMT,EB FROM events_temp WHERE EID={$_SESSION['EID']} AND Erun = 'N'", $db);
        IF ($R = mysql_fetch_array($setr)) {
            $EP = mysql_num_rows($setr);
            do {
                IF ($_SESSION['EHS'] == 'Y' AND $R['EHS'] == 'Y') {
                    $EHS++;
                }
                IF ($_SESSION['EHL'] == 'Y' AND $R['EHL'] == 'Y') {
                    $EHL++;
                }
                IF ($_SESSION['ER'] == 'Y' AND $R['ER'] == 'Y') {
                    $ER++;
                }
                IF ($_SESSION['ED'] == 'Y' AND $R['ED'] == 'Y') {
                    $ED++;
                }
                IF ($_SESSION['EMS'] == 'Y' AND $R['EMS'] == 'Y') {
                    $EMS++;
                }
                IF ($_SESSION['EMT'] == 'Y' AND $R['EMT'] == 'Y') {
                    $EMT++;
                }
                IF ($_SESSION['EB'] == 'Y' AND $R['EB'] == 'Y') {
                    $EB++;
                }
            } while ($R = mysql_fetch_array($setr));
        } ELSE {
            printf("Something went wrong, click <A HREF=\"%s?\">here</A> to try again.\n", $_SERVER['PHP_SELF']);
            print "<PRE>";
            print_r($_POST);
            ShowDebug(get_defined_vars(),$vars_start);
            die(mysql_error());
        }
        $_SESSION['stats'] = $_SESSION['EID'];
        $_SESSION['EPcount'] = $EP;
        IF (isset($EHS)) {
            $_SESSION['EHScount'] = $EHS;
        } ELSE {
            $_SESSION['EHScount'] = -1;
        }
        IF (isset($EHL)) {
            $_SESSION['EHLcount'] = $EHL;
        } ELSE {
            $_SESSION['EHLcount'] = -1;
        }
        IF (isset($ER)) {
            $_SESSION['ERcount'] = $ER;
        } ELSE {
            $_SESSION['ERcount'] = -1;
        }
        IF (isset($ED)) {
            $_SESSION['EDcount'] = $ED;
        } ELSE {
            $_SESSION['EDcount'] = -1;
        }
        IF (isset($EMS)) {
            $_SESSION['EMScount'] = $EMS;
        } ELSE {
            $_SESSION['EMScount'] = -1;
        }
        IF (isset($EMT)) {
            $_SESSION['EMTcount'] = $EMT;
        } ELSE {
            $_SESSION['EMTcount'] = -1;
        }
        IF (isset($EB)) {

            $_SESSION['EBcount'] = $EB;
        } ELSE {
            $_SESSION['EBcount'] = -1;
        }

    }

   
} // Statistics gathering

// By this point, the script knows what event is being run, which games have riders wishing to compete.

IF ($_SESSION['EHScount'] > 0 OR $_SESSION['EHLcount'] > 0 OR $_SESSION['ERcount'] OR $_SESSION['EDcount'] OR $_SESSION['EMScount'] OR $_SESSION['EMTcount'] OR $_SESSION['EBcount']) { // This seven part logic test looks to see if any games are set to run.
    
    OpenHTML("Welcome EMiC");
    
    PageHead("Welcome EMiC -- {$_SESSION['EName']}", $S1);
    
    print "<form name=\"EMiC_Top\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
    print "<section class=\"w3-container $S2\">\n";
    print "<P>A total of {$_SESSION['EP']} riders have registered for {$_SESSION['EName']}</P>\n";
    print "<section class=\"w3-container $S3\">\n";
    IF (isset($_SESSION['RiderName']) AND !is_null($_SESSION['RiderName'])) {
        print "<P>Last Rider was  AnnounceRider()</P>\n";
    }
    IF (isset($_SESSION['LastGame']) AND !is_null($_SESSION['LastGame'])) {
        print "<P>Last Game was {$_SESSION['LastGame']}</P>\n";
    }
    print "</section>\n";
    print "<section class=\"w3-container $S4\"><TABLE CLASS=\"w3-table\">\n";
    IF ($_SESSION['EHS'] == "Y") {
        print "<TR><TD>Behead the Enemy -- Short Course</TD><TD>{$_SESSION['EHScount']} </TD><TD>remain.</TD><TD><button class=\"w3-btn w3-amber\" name=\"next\" type=\"submit\" value=\"EHS\">Run Heads 21</button></TD></TR>\n";
    } // Include a row for Heads 21 if the event offers it.
    IF ($_SESSION['EHL'] == "Y") {
        print "<TR><TD>Behead the Enemy -- Long Course</TD><TD>{$_SESSION['EHLcount']} </TD><TD>remain.</TD><TD><button class=\"w3-btn w3-amber\" name=\"next\" type=\"submit\" value=\"EHL\">Run Heads 30</button></TD></TR>\n";
    } // Include a row for Heads 30 if the event offers it.
    IF ($_SESSION['ER']  == "Y") {
        print "<TR><TD>Ring Tilt</TD><TD>{$_SESSION['ERcount']}  </TD><TD>remain.</TD><TD><button class=\"w3-btn w3-amber\" name=\"next\" type=\"submit\" value=\"ER\">Run Rings</button></TD></TR>\n";
    } // Include a row for Rings if the event offers it.
    IF ($_SESSION['ED']  == "Y") {
        print "<TR><TD>Reed Chop</TD><TD>{$_SESSION['EDcount']}  </TD><TD>remain.</TD><TD><button class=\"w3-btn w3-amber\" name=\"next\" type=\"submit\" value=\"ED\">Run Reeds</button></TD></TR>\n";
    } // Include a row for Reeds if the event offers it.
    IF ($_SESSION['EMS'] == "Y") {
        print "<TR><TD>Mounted Archery -- Single Target</TD><TD>{$_SESSION['EMScount']} </TD><TD>remain.</TD><TD><button class=\"w3-btn w3-amber\" name=\"next\" type=\"submit\" value=\"EMS\">Run MA Single</button></TD></TR>\n";
    } // Include a row for MAST if the event offers it.
    IF ($_SESSION['EMT'] == "Y") {
        print "<TR><TD>Mounted Archery -- Triple Target</TD><TD>{$_SESSION['EMTcount']} </TD><TD>remain.</TD><TD><button class=\"w3-btn w3-amber\" name=\"next\" type=\"submit\" value=\"EMT\">Run MA Triple</button></TD></TR>\n";
    } // Include a row for MATT if the event offers it.
    IF ($_SESSION['EB']  == "Y") {
        print "<TR><TD>Birjas</TD><TD>{$_SESSION['EBcount']}  </TD><TD>remain.</TD><TD><button class=\"w3-btn w3-amber\" name=\"next\" type=\"submit\" value=\"EB\">Run Birjas</button></TD></TR>\n";
    } // Include a row for Birjas if the event offers it.
    print "</TABLE></section>\n";
    

}
 
