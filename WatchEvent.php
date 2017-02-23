<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 2/22/17
 * Time: 3:20 PM
 */
$vars_start = get_defined_vars();
session_start();
include "colors.inc";
include "ikeqcfuncs.inc";
include "year.inc";

IF (isset($_SESSION['EID']) AND isset($_SESSION['Watching'])) {
    $setbb = mysql_query("SELECT EID,events_temp.PID,riders.PName,events_temp.HID,horses.HName,DVN,EHS,SHSscore,EHL,SHLscore,ER,SRscore,ED,SDscore,EMS,SMSscore,EMT,SMTscore,EB,SBscore,Erun FROM events_temp LEFT JOIN riders ON events_temp.PID = riders.PID LEFT JOIN horses ON events_temp.HID = horses.HID WHERE EID = '{$_SESSION['EID']}' ORDER BY riders.PName", $db);
    IF ($BB = mysql_fetch_array($setbb)) {
        $Bcount = mysql_num_rows($BB);
        
        OpenHTML("{$_SESSION['Ename']}");
        
        PageHead($_SESSION['Ename'],$S1);
       
        print "<section class=\"w3-container $S2\">\n";
        SWITCH ($_SESSION['Estatus']) {
            CASE "O":
                print "<P>{$_SESSION['EName']} is scheduled for {$_SESSION['Edate']}<BR>\n";
                print "Scores appearing here are UNOFFICAL.</P>\n";
                BREAK;
            CASE "C":
                print "<P>{$_SESSION['EName']} has concluded.<BR>\n";
                print "Scores appearing here are UNOFFICAL.</P>\n";
                BREAK;
            CASE "A":
                print "<P>{$_SESSION['EName']} has been reviewed and accpeted.<BR>\n";
                print "Scores appearing here are OFFICAL and in the IKEqC records.</P>\n";
                BREAK;
            CASE "X":
                print "<P>An internal error has occured for {$_SESSION['EName']}<BR>\n";
                print "Anything appearing here is unreliable.<BR>\n";
                print "With luck, no one will ever see this message.</P>\n";
                die;
                BREAK;
            DEFAULT:
                print "<P>{$_SESSION['EName']} has unsual status.<BR>Things might not work normally.</P>\n";
                BREAK;
        }
        print "</section>\n";
        print "<section class=\"w3-container $S3\">\n";
        $Refresh = $_SERVER['PHP_SELF']."?Event=".$_SESSION['EID'];
        print "<form class=\"w3-container\" method=\"post\" action=\"$Refresh\">\n";
        print "<button class=\"w3-btn-block w3-lime\">REFRESH PAGE</button>\n";
        do {
            print "<TABLE class=\"w3-table s3-striped\">\n";
            print "<TR><TD>{$BB['riders.PName']}:</TD></TR>\n";
            print "<TR><TD>{$BB['horses.HName']}</TD></TR>\n";
            SWITCH ($BB['DVN']) {
                CASE 1:
                    print "<TR><TD>Competeing at the Walk</TD></TR>\n";
                    BREAK;
                CASE 2:
                    print "<TR><TD>Competeing at the Trot</TD></TR>\n";
                    BREAK;
                CASE 3:
                    print "<TR><TD>Competeing at the Canter</TD></TR>\n";
                    BREAK;
                DEFAULT:
                    print "<TR><TD>Competeing at the Walk*</TD></TR>\n";
                    BREAK;
            }
            print "<TR><TD>\n";
            print "<TABLE class=\"w3-table\"><TR>\n";
            IF ($BB['EHS'] == "Y") {
                print "<TD>HS:{$BB['SHSscore']}</TD>\n";
            }
            IF ($BB['EHL'] == "Y") {
                print "<TD>HL:{$BB['SHLscore']}</TD>\n";
            }
            IF ($BB['ER'] == "Y") {
                print "<TD>R:{$BB['SRscore']}</TD>\n";
            }
            IF ($BB['ED'] == "Y") {
                print "<TD>D:{$BB['SDscore']}</TD>\n";
            }
            IF ($BB['EMS'] == "Y") {
                print "<TD>MA1:{$BB['SMSscore']}</TD>\n";
            }
            IF ($BB['EMT'] == "Y") {
                print "<TD>MA3:{$BB['SMTscore']}</TD>\n";
            }
            IF ($BB['EB'] == "Y") {
                print "<TD>B:{$BB['SBscore']}</TD>\n";
            }
            print "</TR></TABLE></TD></TR></TABLE>\n";
        } while ($BB = mysql_fetch_array($setbb));
            
    }
}

IF (isset($Event) AND !isset($_SESSION['Watching'])) { //
    $setb = mysql_query("SELECT EID,EName,Edate,Estatus FROM events WHERE EID = $Event",$db);
    IF ($B = mysql_fetch_array($setb)) {
        $_SESSION['EID'] = $B[0];
        $_SESSION['EName'] = $B[1];
        $_SESSION['Edate'] = $B[2];
        $_SESSION['Estatus'] = $B[3];
        $_SESSION['Watching'] = $B[0];
        header('location '. $_SERVER['PHP_SELF']);
        die;
    }
} // Sets Event details in memory

IF (!isset($Event)) {
    OpenHTML("Event Selection");
    
    PageHead("Please Select an Event","w3-panel $S1");
    
    $seta = mysql_query("SELECT EID,Ename FROM events WHERE Estatus = 'O' OR Estatus = 'C' ORDER BY Ename", $db);
    IF ($A = mysql_fetch_array($seta)) {
        print "<form name=\"EventSelect\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
        print "<select class=\"w3-select\" name=\"Event\">\n";
        do {
            printf("<OPTION VALUE=\"%s\">%s\n", $A[0], $A[1]);
        } while ($A = mysql_fetch_row($seta));
        echo "</SELECT>\n<BR>\n";
        print "<P><button class=\"w3-btn w3-lime\">Register</button></P>\n";
    } ELSE {
        print "<div class=\"w3-panel w3-red\"><P>No events to watch.<BR>Check back soon.</P></div>\n";
        die;
    }
} // If Event is not passed via $_GET then display select menu.
