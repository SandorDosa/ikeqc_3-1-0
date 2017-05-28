<?php
$vars_start = get_defined_vars();
session_start();
include "year.inc";
include "ikeqcfuncs.inc";

IF ( isset($_POST['PName']) AND !isset($_POST['Review']) ) {

    $PName = $_POST['PName'];
    $Pmka = $_POST['Pmka'];
    $PHonors = $_POST['PHonors'];
    $PPhone = $_POST['PPhone'];
    $PEmail = $_POST['PEmail'];
    $PKing = $_POST['PKing'];


    $EC = NameTest($PName);

    IF ($EC > 0) {
        $_SESSION['Caution'] = "It appears you have placed the Rider's honors before their name.<BR>Please EDIT your input and put the Rider's honors in the correct place.<HR>\n";
    }

    $PNT = substr($PName, 0, 5) . "%";    // 'Participant Name Trimmed'
    $PMT = substr($Pmka, 0, 5) . "%";     // 'Participant Mundanly-Known-As Trimmed'
    $PSDXT = soundex($PName);                        // 'Participant Soundex()'

    $seta = mysqli_query($db_3, "SELECT PID,PName,Pcka,Paka,Pmka,PSdx FROM riders WHERE (PName LIKE '$PNT' OR Pcka LIKE '$PNT' OR Paka LIKE '$PNT' OR Pcka LIKE '$PNT' OR Paka LIKE '$PNT' OR Pmka LIKE '$PMT' OR PSdx LIKE '$PSDXT') ORDER BY PID");

    IF ($A = mysqli_fetch_array($seta)) {
        IF ($A) {
            OpenTOP("New Rider");
            halter();
            IF (mysqli_num_rows($seta) > 0) {
                $_SESSION['Caution'] = $_SESSION['Caution'] . "There are one or more riders in our database with similar names.<BR>Please double check the list and make sure you are not adding a duplicate.<HR>\n";

                ShowAlarms();
                print "<section class=\"w3-container w3-center\">\n";
                print "<H1>Review:</H1>\n";
                print "<P>Please review the information you have entered.</P>\n";

                print "<DIV CLASS=\"w3-container w3-theme-l3\">\n";
                print "<H2>Close matches:</H2>\n";
                print "<P>If the rider you are trying to enter is listed below by any name you recognize, you do not need to enter them again.<BR>If names listed below are unknown to you, please ignore this warning.<hr>\n";
                print "If a rider wishes to make changes to their details, it can be handled by visiting the Rider's portal.<BR>\n";
                print "For this event, please use the Rider's existing name, and make adjustments later.</P>";
                print "<TABLE CLASS=\"w3-table w3-striped\">\n";
                print "<TR CLASS=\"w3-border-bottom\"><TD>SCA Name</TD><TD>Common Alias</TD><TD>Also Known As</TD><TD>Mundanly Known AS</TD></TR>\n";
                do {
                    print "<TR><TD>$A[1]</TD><TD>$A[2]</TD><TD>$A[3]</TD><TD>$A[4]</TD></TR>\n";
                } while ($A = mysqli_fetch_array($seta));
                print "</table>\n";
                print "</DIV>\n";
            }

        }
    } ELSE {
        OpenTOP("New Rider");
        halter();
        ShowAlarms();
        print "<section class=\"w3-container w3-center\">\n";
        print "<H1>Review:</H1>\n";
        print "<P>Please review the information you have entered.</P>\n";

    }
    print "<div class=\"w3-container w3-center w3-theme-l3\">\n";
    print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
    print "<table class=\"w3-table w3-centered\">\n";
    print "<TR><TD ALIGN='RIGHT'>SCA Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PName\" placeholder=\"REQUIRED\" type=\"text\" value=\"$PName\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Mundane Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Pmka\" placeholder=\"REQUIRED\" type=\"text\" value=\"$Pmka\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Titles and Honors:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PHonors\" placeholder=\"OPTIONAL\" type=\"text\" value=\"$PHonors\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Contact Phone:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PPhone\" placeholder=\"REQUIRED\" type=\"text\" value=\"$PPhone\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Email:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PEmail\" placeholder=\"REQUIRED\" type=\"text\" value=\"$PEmail\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Kingdom:</TD><TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"PKing\">\n";

    SWITCH ($PKing) {

        CASE 1:
            print "<OPTION VALUE=\"1\">An Tir</OPTION>\n";
            BREAK;

        CASE 2:
            print "<OPTION VALUE=\"2\">Ansteorra</OPTION>\n";
            BREAK;

        CASE 3:
            print "<OPTION VALUE=\"3\">Artemisia</OPTION>\n";
            BREAK;

        CASE 4:
            print "<OPTION VALUE=\"4\">Atenveldt</OPTION>\n";
            BREAK;

        CASE 5:
            print "<OPTION VALUE=\"5\">Atlantia</OPTION>\n";
            BREAK;

        CASE 6:
            print "<OPTION VALUE=\"6\">Aethelmearc</OPTION>\n";
            BREAK;

        CASE 7:
            print "<OPTION VALUE=\"7\">Caid</OPTION>\n";
            BREAK;

        CASE 8:
            print "<OPTION VALUE=\"8\">Calontir</OPTION>\n";
            BREAK;

        CASE 9:
            print "<OPTION VALUE=\"9\">Drachenwald</OPTION>\n";
            BREAK;

        CASE 10:
            print "<OPTION VALUE=\"10\">Ealdormere</OPTION>\n";
            BREAK;

        CASE 11:
            print "<OPTION VALUE=\"11\">East</OPTION>\n";
            BREAK;

        CASE 12:
            print "<OPTION VALUE=\"12\">Middle</OPTION>\n";
            BREAK;

        CASE 13:
            print "<OPTION VALUE=\"13\">Meridies</OPTION>\n";
            BREAK;

        CASE 14:
            print "<OPTION VALUE=\"14\">Outlands</OPTION>\n";
            BREAK;

        CASE 15:
            print "<OPTION VALUE=\"15\">Trimaris</OPTION>\n";
            BREAK;

        CASE 16:
            print "<OPTION VALUE=\"16\">West</OPTION>\n";
            BREAK;

        CASE 17:
            print "<OPTION VALUE=\"17\">Northshield</OPTION>\n";
            BREAK;

        CASE 18:
            print "<OPTION VALUE=\"18\">Gleann Abhann</OPTION>\n";
            BREAK;

        CASE 19:
            print "<OPTION VALUE=\"19\">Lochac</OPTION>\n";
            BREAK;

        CASE 20:
            print "<OPTION VALUE=\"20\">Avacal</OPTION>\n";
            BREAK;
    } // Defaults Top of Select Dropdown to current value

    print "<OPTION VALUE=\"6\">Aethelmearc</OPTION>\n";
    print "<OPTION VALUE=\"2\">Ansteorra</OPTION>\n";
    print "<OPTION VALUE=\"1\">An Tir</OPTION>\n";
    print "<OPTION VALUE=\"3\">Artemisia</OPTION>\n";
    print "<OPTION VALUE=\"4\">Atenveldt</OPTION>\n";
    print "<OPTION VALUE=\"5\">Atlantia</OPTION>\n";
    print "<OPTION VALUE=\"20\">Avacal</OPTION>\n";
    print "<OPTION VALUE=\"7\">Caid</OPTION>\n";
    print "<OPTION VALUE=\"8\">Calontir</OPTION>\n";
    print "<OPTION VALUE=\"9\">Drachenwald</OPTION>\n";
    print "<OPTION VALUE=\"10\">Ealdormere</OPTION>\n";
    print "<OPTION VALUE=\"11\">East</OPTION>\n";
    print "<OPTION VALUE=\"18\">Gleann Abhann</OPTION>\n";
    print "<OPTION VALUE=\"19\">Lochac</OPTION>\n";
    print "<OPTION VALUE=\"13\">Meridies</OPTION>\n";
    print "<OPTION VALUE=\"12\">Middle</OPTION>\n";
    print "<OPTION VALUE=\"17\">Northshield</OPTION>\n";
    print "<OPTION VALUE=\"14\">Outlands</OPTION>\n";
    print "<OPTION VALUE=\"15\">Trimaris</OPTION>\n";
    print "<OPTION VALUE=\"16\">West</OPTION>\n";
    print "</SELECT></TD></TR>\n";
    print "</table>\n";
    print "<button class=\"w3-button w3-theme-light\" name=\"Review\" type=\"submit\" value=\"2\">These Details are correct, Add this Rider</button>\n";
    print "</div>\n";
    print "<br>\n";
    print "</section>\n";
    hoofer();
    die;

} // Review Pass

IF ( isset($_POST['PName']) AND $_POST['Review'] == 2 ) {

    $PName = mysqli_real_escape_string($db_3,$_POST['PName']);
    $Pmka = mysqli_real_escape_string($db_3,$_POST['Pmka']);
    $PPhone = mysqli_real_escape_string($db_3,$_POST['PPhone']);
    $PEmail = mysqli_real_escape_string($db_3,$_POST['PEmail']);
    $PKing = mysqli_real_escape_string($db_3,$_POST['PKing']);

    IF (strlen($_POST['PHonors']) < 2 ) {
        $PHonors = NULL;
    }
    $PHonors = mysqli_real_escape_string($db_3,$_POST['PHonors']);
    $PSdx = soundex($_POST['PName']);

    $B = "INSERT INTO riders (PName,Pmka,PHonors,PPhone,PEmail,PKing,Pret,PSdx) VALUES ('$PName','$Pmka','$PHonors','$PPhone','$PEmail',$PKing,'N','$PSdx')";
    $_SESSION['B_query'] = $B;

    $Set_B = mysqli_query($db_3, $B);

    IF ($Set_B) {
        $_SESSION['Caution'] = "Rider added successfully.<br>";
        $_SESSION['NRR'] = true;

    } ELSE {
        $_SESSION['EntryError'] = mysqli_error($db_3);
        $_SESSION['Caution'] = "Something went wrong, New Rider was NOT saved.<br>Make a note of the error message and contact Sandor.<br>";
        $_SESSION['NRR'] = true;
    }

    header('Location: ' . $_SERVER['PHP_SELF']);
    die;

} // Adds Rider to the database

// IF the script gets this far, it is the first pass through for this entry.

OpenTOP("New Rider");
halter();

IF ($_SESSION['NRR']) {
    ShowAlarms();
    print "<!--\n";
    print "<PRE>".$_SESSION['B_query']."</PRE>\n";
    print "-->\n";
    $_SESSION['B_query'] = NULL;
    $_SESSION['NRR'] = NULL;
} // Report success or failure before next adding another Rider

print "<section class=\"w3-container w3-center\">\n";
print "<article class=\"w3-container w3-center w3-theme-l2\">\n";
print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
print "<TABLE class=\"w3-table w3-centered\">\n";
print "<TR><TD ALIGN='RIGHT'>SCA Name:</TD><TD ALIGN='LEFT'>\n";
print "<input class=\"w3-input w3-border\" name=\"PName\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
print "<TR><TD ALIGN='RIGHT'>Mundane Name:</TD><TD ALIGN='LEFT'>\n";
print "<input class=\"w3-input w3-border\" name=\"Pmka\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
print "<TR><TD ALIGN='RIGHT'>Titles and Honors:</TD><TD ALIGN='LEFT'>\n";
print "<input class=\"w3-input w3-border\" name=\"PHonors\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
print "<TR><TD ALIGN='RIGHT'>Contact Phone:</TD><TD ALIGN='LEFT'>\n";
print "<input class=\"w3-input w3-border\" name=\"PPhone\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
print "<TR><TD ALIGN='RIGHT'>Email:</TD><TD ALIGN='LEFT'>\n";
print "<input class=\"w3-input w3-border\" name=\"PEmail\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
print "<TR><TD ALIGN='RIGHT'>Kingdom:</TD><TD ALIGN='LEFT'>\n";
print "<select class=\"w3-select\" name=\"PKing\">\n";
print "<OPTION VALUE=\"6\">Aethelmearc</OPTION>\n";
print "<OPTION VALUE=\"2\">Ansteorra</OPTION>\n";
print "<OPTION VALUE=\"1\">An Tir</OPTION>\n";
print "<OPTION VALUE=\"3\">Artemisia</OPTION>\n";
print "<OPTION VALUE=\"4\">Atenveldt</OPTION>\n";
print "<OPTION VALUE=\"5\">Atlantia</OPTION>\n";
print "<OPTION VALUE=\"20\">Avacal</OPTION>\n";
print "<OPTION VALUE=\"7\">Caid</OPTION>\n";
print "<OPTION VALUE=\"8\">Calontir</OPTION>\n";
print "<OPTION VALUE=\"9\">Drachenwald</OPTION>\n";
print "<OPTION VALUE=\"10\">Ealdormere</OPTION>\n";
print "<OPTION VALUE=\"11\">East</OPTION>\n";
print "<OPTION VALUE=\"18\">Gleann Abhann</OPTION>\n";
print "<OPTION VALUE=\"19\">Lochac</OPTION>\n";
print "<OPTION VALUE=\"13\">Meridies</OPTION>\n";
print "<OPTION VALUE=\"12\">Middle</OPTION>\n";
print "<OPTION VALUE=\"17\">Northshield</OPTION>\n";
print "<OPTION VALUE=\"14\">Outlands</OPTION>\n";
print "<OPTION VALUE=\"15\">Trimaris</OPTION>\n";
print "<OPTION VALUE=\"16\">West</OPTION>\n";
print "</SELECT></TD></TR>\n";
print "</TABLE>\n";
print "<p><button class=\"w3-button w3-theme-light\">SUBMIT</button></p>\n";
print "</article>\n";
hoofer();
die;