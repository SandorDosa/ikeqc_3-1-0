<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 2/22/17
 * Time: 3:20 PM
 */
ob_start();
$vars_start = get_defined_vars();
session_start();
include "colors.inc";
include "ikeqcfuncs.inc";
include "year.inc";

IF ($Reset == 1) {
    session_destroy();
    OpenHTML("LOGOUT");
    print "<div class=\"w3-panel $S2\">\n";
    print "<P>You have stopped watching the event.  Close this window or click below to return to the list of events.</P>";
    print "<form name=\"EventSelect\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
    print "<P><button class=\"w3-btn w3-lime\">RETURN</button></P>\n";
    ob_end_flush();
    die;
}

IF (isset($_SESSION['EID']) AND isset($_SESSION['Watching'])) {
    $setbb = mysql_query("SELECT EID,events_temp.PID AS ePID,riders.PName AS rPName,events_temp.HID AS eHID,horses.HName AS hHName,DVN,EHS,SHSscore,EHL,SHLscore,ER,SRscore,ED,SDscore,EMS,SMSscore,EMT,SMTscore,EB,SBscore,Erun FROM events_temp LEFT JOIN riders ON events_temp.PID = riders.PID LEFT JOIN horses ON events_temp.HID = horses.HID WHERE EID = '{$_SESSION['EID']}' ORDER BY riders.PName", $db);
    IF ($BB = mysql_fetch_array($setbb)) {
        //$Bcount = mysql_num_rows($BB);
        
        OpenHTML("{$_SESSION['Ename']}");
        
        print "<section class=\"w3-container w3-center w3-centered $S2\">\n";
        SWITCH ($_SESSION['Estatus']) {
            CASE "O":
                print "<H2>{$_SESSION['EName']}</H2>\n";
                print "<P>Scores appearing here are UNOFFICAL.</P>\n";
                BREAK;
            CASE "C":
                print "<H2>{$_SESSION['EName']}</H2><P>has concluded.<BR>\n";
                print "Scores appearing here are UNOFFICAL.</P>\n";
                BREAK;
            CASE "A":
                print "<H2>{$_SESSION['EName']}</H2><P>has been reviewed and accpeted.<BR>\n";
                print "Scores appearing here are OFFICAL and in the IKEqC records.</P>\n";
                BREAK;
            CASE "X":
                print "<P>An internal error has occured for {$_SESSION['EName']}<BR>\n";
                print "Anything appearing here is unreliable.<BR>\n";
                print "With luck, no one will ever see this message.</P>\n";
                ob_end_flush();
                die;

                BREAK;
            DEFAULT:
                print "<H2>{$_SESSION['EName']}</H2><P>has unsual status.<BR>Things might not work normally.</P>\n";
                BREAK;
        }
        print "</section>\n";
        print "<section class=\"w3-container $S2\">\n";
        $Refresh = $_SERVER['PHP_SELF']."?Event=".$_SESSION['EID'];
        print "<form method=\"post\" action=\"$Refresh\">\n";
        print "<button class=\"w3-btn w3-block w3-lime\">REFRESH PAGE</button><BR>\n";
        print "</section>\n";
        do {
            print "<TABLE class=\"w3-table w3-centered $S3\">\n";
            print "<TR><TD><H2>$BB[2] riding $BB[4]</H2></TD></TR>\n";
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
            $TabCount = 0;
            IF ($BB['EHS'] == "Y") {
                print "<TD>HS: ";
                IF (is_null($BB['SHSscore'])) {
                    print "___</TD>\n";
                } ELSE {
                    print $BB[7]."</TD>\n";
                }
                $TabCount++;
            }
            IF ($BB['EHL'] == "Y") {
                print "<TD>HL: ";
                IF (is_null($BB[9])) {
                    print "___</TD>\n";
                } ELSE {
                    print $BB[9]."</TD>\n";
                }
                $TabCount++;
            }
            IF ($BB['ER'] == "Y") {
                print "<TD>R: ";
                IF (is_null($BB[11])) {
                    print "___</TD>\n";
                } ELSE {
                    print $BB[11]."</TD>\n";
                }
                $TabCount++;
            }
            IF ($BB['ED'] == "Y") {
                print "<TD>D: ";
                IF (is_null($BB[13])) {
                    print "___</TD>\n";
                } ELSE {
                    print $BB[13]."</TD>\n";
                }
                $TabCount++;
                IF ($TabCount >= 4) {
                    print "</TR><TR><TD></TD>";
                    $TabCount = 0;
                }
            }
            IF ($BB['EMS'] == "Y") {
                print "<TD>MA1: ";
                IF (is_null($BB[15])) {
                    print "___</TD>\n";
                } ELSE {
                    print $BB[15]."</TD>\n";
                }
                $TabCount++;
                IF ($TabCount >= 4) {
                    print "</TR><TR><TD></TD>";
                    $TabCount = 0;
                }
            }
            IF ($BB['EMT'] == "Y") {
                print "<TD>MA3: ";
                IF (is_null($BB[17])) {
                    print "___</TD>\n";
                } ELSE {
                    print $BB[17]."</TD>\n";
                }
                $TabCount++;
                IF ($TabCount >= 4) {
                    print "</TR><TR>";
                    $TabCount = 0;
                }
            }
            IF ($BB['EB'] == "Y") {
                print "<TD>B: ";
                IF (is_null($BB[19])) {
                    print "___</TD>\n";
                } ELSE {
                    print $BB[19]."</TD>\n";
                }
            }
            print "</TR></TABLE><HR></TD></TR></TABLE></section>\n";
        } while ($BB = mysql_fetch_array($setbb));
        print "<div class=\"w3-container $S4\">\n";
        print "<TABLE class=\"w3-table w3-bordered\">\n";
        print "<TR><TD colspan=2>Abbrivations:</TD></TR>\n";
        print "<TR><TD>HS:</TD><TD>Behead the Enemy - Short Course (21')</TD></TR>\n";
        print "<TR><TD>HL:</TD><TD>Behead the Enemy - Long Course (30')</TD></TR>\n";
        print "<TR><TD>R:</TD><TD>Ring Tilt</TD></TR>\n";
        print "<TR><TD>D:</TD><TD>Reed Chop</TD></TR>\n";
        print "<TR><TD>MA1:</TD><TD>Mounted Archery Single Target</TD></TR>\n";
        print "<TR><TD>MA3:</TD><TD>Mounted Archery Triple Target</TD></TR>\n";
        print "<TR><TD>B:</TD><TD>Birjas</TD></TR>\n";
        print "</TABLE>\n";
        print "<form name=\"WatchReturn\" method=\"POST\" action=\"http://scaikeqc.org/sandbox/lz.php\">\n";
        print "<input type=\"hidden\" name=\"Return\" value=\"9\">\n";
        print "<button class=\"w3-btn-block w3-amber\" type=\"submit\" name=\"trigger\" value=\"1\">TAP HERE TO STOP WATCHING</button>\n";
        print "</div\n";
        //ShowDebug(get_defined_vars(),$vars_start);
        ob_end_flush();
        die;

    }
}

IF (!isset($Event)) {
    OpenHTML("Event Selection");
    
    print "<section class=\"w3-container w3-center $S1\">\n";
    $seta = mysql_query("SELECT EID,Ename FROM events WHERE Estatus = 'O' OR Estatus = 'C' ORDER BY Ename", $db);
    IF ($A = mysql_fetch_array($seta)) {
        print "<form name=\"EventSelect\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
        print "<select class=\"w3-select\" name=\"Event\">\n";
        do {
            printf("<OPTION VALUE=\"%s\">%s\n", $A[0], $A[1]);
        } while ($A = mysql_fetch_row($seta));
        echo "</SELECT>\n<BR>\n";
        print "<P><button class=\"w3-btn w3-lime\">WATCH THIS EVENT</button></P>\n";
    } ELSE {
        print "<div class=\"w3-panel w3-red\"><P>No events to watch.<BR>Check back soon.</P></div>\n";
        ob_end_flush();
        die;


    }
} ELSE {
    $setb = mysql_query("SELECT EID,EName,Edate,Estatus FROM events WHERE EID = $Event",$db);
    IF ($B = mysql_fetch_array($setb)) {
        $_SESSION['EID'] = $B[0];
        $_SESSION['EName'] = $B[1];
        $_SESSION['Edate'] = $B[2];
        $_SESSION['Estatus'] = $B[3];
        $_SESSION['Watching'] = $B[0];
        header('location '. $_SERVER['PHP_SELF']);
        ob_end_flush();
        die;

    }

} // Sets Event details in memory

