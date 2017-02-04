<?php
/**
 * Created by PhpStorm.
 * User: Bravo
 * Date: 1/23/17
 * Time: 6:08 PM
 */
// TRiderEdit.php
// Sandor Dosa
// v0.01
// Script to allow a Rider to edit their information, or for a new rider to register with the database.
// Set ROMEO Rider Search dropdown
// Set PAPA Rider info pull.
// Set DELTA RiderEdits doublecheck
// SET INDIA Upload edits for review

session_start();
include "year.inc";
include "ikeqcfuncs.inc";

IF ($Reset == 1) {
    $_SESSION['PIDx'] = -1;
    $_SESSION['xPID'] = -1;
}

IF (!isset($_SESSION['PIDx']) OR $_SESSION['PIDx'] <= 0) {

    IF ($_SESSION['PIDx'] <= 0) {

        IF ($Rin == 999 AND $Rout == 0) {
            unset($Rin);
            unset($Rout);
            header('Location: '.$_SERVER['PHP_SELF']);
            die;
        }


        IF (!isset($Rin)) {
            print "<!DOCTYPE html>\n";
            print "<html>\n";
            print "<title>Rider Information</title>\n";
            print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
            print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

            print "<header class=\"w3-panel\">\n";
            print "<H1>Rider Search:</H1>\n";
            print "</header>\n";

            print "<section class=\"w3-panel\">\n";
            print "<P>With nearly 500 riders in our records, let us filter your results.  Please enter up to the firstfive letters of your name.  Omit all titles and honors (don't worry, we'll show them later).</P><br>\n";
            print "<P>Alternatively you may enter your mundane name if we have it on file.</P>\n";
            print "</section>\n";
            print "<form class=\"w3-container\" method=\"post\" action=\"{$_SERVER['PHP_SELF']}\">\n";
            print "<input class=\"w3-input w3-border\" type=\"text\" name=\"Rin\"><BR>\n";
            print "<P><button class=\"w3-btn w3-blue\">Search Riders</button></p>\n";
            die;

        }
        IF ($Rout <= 0) {

            IF (strlen(trim($Rin)) < 1 ) {
                $setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' ORDER BY Pname", $db);
            } ELSEIF (strlen(trim($Rin)) > 6) {
                $Rin = "%".substr($Rin, 0, 5) . "%";
                $Rindx = soundex($Rin) . "%";
                $setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '$Rin' OR Pcka LIKE '$Rin' OR Paka LIKE '$Rin' OR Pmka LIKE '$Rin' OR PSdx LIKE '$Rindx' ) ORDER BY Pname", $db);
            } ELSE {
                $Rin = "%".$Rin . "%";
                $Rindx = soundex($Rin) . "%";
                $setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '$Rin' OR Pcka LIKE '$Rin' OR Paka LIKE '$Rin' OR Pmka LIKE '$Rin' OR PSdx LIKE '$Rindx' ) ORDER BY Pname", $db);
            }
            IF ($R = mysql_fetch_array($setr)) {
                print "<!DOCTYPE html>\n";
                print "<html>\n";
                print "<title>Rider Information</title>\n";
                print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
                print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

                print "<header class=\"w3-panel\">\n";
                print "<H1>Rider Selection:</H1>\n";
                print "</header>\n";

                print "<section class=\"w3-panel\">\n";
                print "<H2>Please Select the Rider below:</H2>\n";
                print "<P>A pair of asterisks next to a name, indicates that name was found searching against an alternate or mundane name.\n";
                print "</section>\n";


                print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
                print "<input type=\"hidden\" name=\"Rin\" value=\"999\">\n";
                print "<select class=\"w3-select\" name=\"Rout\">\n";
                print "<OPTION VALUE=\"0\">-=Search Again=-\n";
                do {
                    printf("<OPTION VALUE=\"%s\">%s\n", $R[0], $R[1]);
                    IF (!is_null($R['Pcka']) OR !empty($R['Pcka'])) {
                        printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[2]);
                    }
                    IF (!is_null($R['Paka']) OR !empty($R['Paka'])) {
                        printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[3]);
                    }
                    IF (!is_null($R['Pmka']) OR !empty($R['Pmka'])) {
                        printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[1]);
                    }
                } while ($R = mysql_fetch_row($setr));
                print "<OPTION VALUE=\"0\">-=Search Again=-\n";
                echo "</SELECT>\n<BR>\n";
                print "<P>A pair of asterisks next to a name, indicates that name was found searching against an alternate or mundane name.";
                print "<p><button class=\"w3-btn w3-blue\">Edit this Rider</button></p>\n";
                print "</form>\n";
                die;
            }

        }

        IF ($Rout > 0 AND $Rin == 999) {
            $_SESSION['PIDx'] = $Rout;
            header('Location: ' . $_SERVER['PHP_SELF']);
            die;
        } ELSE {
            echo "Something didn't work.\n";
//            print "<article class=\"w3-card w3-orange\">";
//            print "<PRE>\n";
//            print "Ignore me, I am for Sandor's use.\n";
//            print_r($_SESSION);
//            print "</PRE></article>\n";
            print "<A HREF=\"" . $_SERVER['PHP_SELF'] . "?Reset=1\">Click here to start over</A>\n";
            die;
        }
    }

}

// We have the Rider selected, now lets pull their information, check to see if they have pending edits, and populate the edit form.

IF (!isset($_SESSION['xPID']) OR $_SESSION['xPID'] <= 0) {

    $setr = mysql_query("SELECT * FROM riders WHERE PID = {$_SESSION['PIDx']}", $db);
    IF ($setr) {
        $R = mysql_fetch_assoc($setr);
    }

    $setp = mysql_query("SELECT * FROM edit_riders WHERE ( PID = {$_SESSION['PIDx']} AND modStatus = 'P' )", $db);

    IF ($setp) {
        $P = mysql_fetch_assoc($setp);
    }
    IF (is_null($P['modPName'])) {
        $P['modPName'] = $R['PName'];
    }
    IF (is_null($P['modPcka'])) {
        $P['modPcka'] = $R['Pcka'];
    }
    IF (is_null($P['modPaka'])) {
        $P['modPaka'] = $R['Paka'];
    }
    IF (is_null($P['modPmka'])) {
        $P['modPmka'] = $R['Pmka'];
    }
    IF (is_null($P['modPHonors'])) {
        $P['modPHonors'] = $R['PHonors'];
    }
    IF (is_null($P['modPPhone'])) {
        $P['modPPhone'] = $R['PPhone'];
    }
    IF (is_null($P['modPEmail'])) {
        $P['modPEmail'] = $R['PEmail'];
    }
    IF (is_null($P['modPBio'])) {
        $P['modPBio'] = $R['PBio'];
    }
    IF (is_null($P['modPking'])) {
        $P['modPking'] = $R['Pking'];
    }
    IF (is_null($P['modPGtype'])) {
        $P['modPGtype'] = $R['PGtype'];
    }
    IF (is_null($P['modPHG'])) {
        $P['modPHG'] = $R['PHG'];
    }

    print "<!DOCTYPE html>\n";
    print "<html>\n";
    print "<title>Rider Information</title>\n";
    print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
    print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

    print "<header class=\"w3-panel\">\n";
    print "<H1>Rider Data:</H1><BR>\n";
    print "<P>Note: not all fields can be edited.  If PENDING edits exist, they will be populated below.</P>\n";
    print "</header>\n";

    print "<body>\n";
    print "<section class=\"w3-panel w3-pale-blue\">\n";
    print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
    print " <table class=\"w3-table-all\"> ";
    printf("<TR><TD COLSPAN='3' ALIGN='CENTER'><H1>%s %s</H1></TD></TR>\n", $R['PHonors'], $R['PName']);
    printf("<input type=\"hidden\" name=\"PID\" value=\"%s\">\n", $R['PID']);
    printf("<input type=\"hidden\" name=\"PName\" value=\"%s\">\n", $R['PName']);
    printf("<TR><TD ALIGN='RIGHT'>SCA Name:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'><input class=\"w3-input w3-border w3-light-grey\" name=\"modPName\" value=\"%s\" type=\"text\"></TD></TR>", $R['PName'], $P['modPName']);
    printf("<input type=\"hidden\" name=\"Pcka\" value=\"%s\">\n", $R['Pcka']);
    printf("<TR><TD ALIGN='RIGHT'>Commonly Known:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'><input class=\"w3-input w3-border w3-light-grey\" name=\"modPcka\" value=\"%s\" type=\"text\"></TD></TR>", $R['Pcka'], $P['modPcka']);
    printf("<input type=\"hidden\" name=\"Paka\" value=\"%s\">\n", $R['Paka']);
    printf("<TR><TD ALIGN='RIGHT'>Also Known:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'><input class=\"w3-input w3-border w3-light-grey\" name=\"modPaka\" value=\"%s\" type=\"text\"></TD></TR>", $R['Paka'], $P['modPaka']);
    printf("<input type=\"hidden\" name=\"Pmka\" value=\"%s\">\n", $R['Pmka']);
    printf("<TR><TD ALIGN='RIGHT'>Mundane Name:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'><input class=\"w3-input w3-border w3-light-grey\" name=\"modPmka\" value=\"%s\" type=\"text\"></TD></TR>", $R['Pmka'], $P['modPmka']);
    printf("<input type=\"hidden\" name=\"PHonors\" value=\"%s\">\n", $R['PHonors']);
    printf("<TR><TD ALIGN='RIGHT'>Titles and Honors:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'><input class=\"w3-input w3-border w3-light-grey\" name=\"modPHonors\" value=\"%s\" type=\"text\"></TD></TR>", $R['PHonors'], $P['modPHonors']);
    printf("<input type=\"hidden\" name=\"PPhone\" value=\"%s\">\n", $R['PPhone']);
    printf("<TR><TD ALIGN='RIGHT'>Contact Phone:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'><input class=\"w3-input w3-border w3-light-grey\" name=\"modPPhone\" value=\"%s\" type=\"text\"></TD></TR>", $R['PPhone'], $P['modPPhone']);
    printf("<input type=\"hidden\" name=\"PEmail\" value=\"%s\">\n", $R['PEmail']);
    printf("<TR><TD ALIGN='RIGHT'>Email:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'><input class=\"w3-input w3-border w3-light-grey\" name=\"modPEmail\" value=\"%s\" type=\"text\"></TD></TR>", $R['PEmail'], $P['modPEmail']);
    printf("<input type=\"hidden\" name=\"PBio\" value=\"%s\">\n", $R['PBio']);
    printf("<TR><TD ALIGN='RIGHT'>Your website:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'><input class=\"w3-input w3-border w3-light-grey\" name=\"modPBio\" value=\"%s\" type=\"text\"></TD></TR>", $R['PBio'], $P['modPBio']);
    printf("<input type=\"hidden\" name=\"Pking\" value=\"%s\">\n", $R['Pking']);
    $KL1 = KingLook($R['Pking']);
    printf("<TR><TD ALIGN='RIGHT'>Kingdom:</TD><TD ALIGN='CENTER'>%s</TD>", $KL1[0]);
    print "<TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"modPking\">\n";
    printf("<OPTION VALUE=\"%s\">%s</OPTION>\n", $P['modPking'], $KL1[0]);
    print "<OPTION VALUE=\"1\">An Tir</OPTION>\n";
    print "<OPTION VALUE=\"2\">Ansteorra</OPTION>\n";
    print "<OPTION VALUE=\"3\">Artemisia</OPTION>\n";
    print "<OPTION VALUE=\"4\">Atenveldt</OPTION>\n";
    print "<OPTION VALUE=\"5\">Atlantia</OPTION>\n";
    print "<OPTION VALUE=\"6\">Aethelmearc</OPTION>\n";
    print "<OPTION VALUE=\"7\">Caid</OPTION>\n";
    print "<OPTION VALUE=\"8\">Calontir</OPTION>\n";
    print "<OPTION VALUE=\"9\">Drachenwald</OPTION>\n";
    print "<OPTION VALUE=\"10\">Ealdormere</OPTION>\n";
    print "<OPTION VALUE=\"11\">East</OPTION>\n";
    print "<OPTION VALUE=\"12\">Middle</OPTION>\n";
    print "<OPTION VALUE=\"13\">Meridies</OPTION>\n";
    print "<OPTION VALUE=\"14\">Outlands</OPTION>\n";
    print "<OPTION VALUE=\"15\">Trimaris</OPTION>\n";
    print "<OPTION VALUE=\"16\">West</OPTION>\n";
    print "<OPTION VALUE=\"17\">Northshield</OPTION>\n";
    print "<OPTION VALUE=\"18\">Gleann Abhann</OPTION>\n";
    print "<OPTION VALUE=\"19\">Lochac</OPTION>\n";
    print "<OPTION VALUE=\"20\">Avacal</OPTION>\n";
    print "</SELECT></TD></TR>\n";
    printf("<input type=\"hidden\" name=\"PGtype\" value=\"%s\">\n", $R['PGtype']);
    $PG1 = GroupLook($R['PGtype']);
    printf("<TR><TD ALIGN='RIGHT'>Group Size:</TD><TD ALIGN='CENTER'>%s of</TD><TD ALIGN='LEFT'>\n", $PG1);

    print "<select class=\"w3-select\" name=\"modPGtype\">\n";
    printf("<OPTION VALUE=\"%s\">%s</OPTION>\n", $P['modPGtype'], $PG1);
    print "<OPTION VALUE=\"1\">Canton</OPTION>\n";
    print "<OPTION VALUE=\"2\">College</OPTION>\n";
    print "<OPTION VALUE=\"3\">Shire</OPTION>\n";
    print "<OPTION VALUE=\"4\">Barony</OPTION>\n";
    print "<OPTION VALUE=\"5\">County</OPTION>\n";
    print "<OPTION VALUE=\"6\">Duchy</OPTION>\n";
    print "</SELECT></TD></TR>\n";
    printf("<input type=\"hidden\" name=\"PHG\" value=\"%s\">\n", $R['PHG']);
    printf("<TR><TD ALIGN='RIGHT'>Home Group:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'><input class=\"w3-input w3-border w3-light-grey\" name=\"modPHG\" value=\"%s\" type=\"text\"></TD></TR>", $R['PHG'], $P['modPHG']);

    print "</TABLE>\n";
    $_SESSION['xPID'] = $_SESSION['PIDx'];
    print "<p><button class=\"w3-btn w3-red\">Save these edits</button></p>\n";

    print "<article class=\"w3-card w3-orange\">";
//    print "<PRE>\n";
//    print "Ignore me, I am for Sandor's use.\n";
//    print_r($R);
//    print_r($P);
//    print "</PRE></article>\n";
    die;
}

IF ($_SESSION['xPID'] > 0 ) {

    IF (is_null(trim($modPName))) { // We can't permit users to blank their name
        $modPName = $PName;
    }
    IF (is_null(trim($modPmka))) { // We can't permit users to blank their mundane name
        $modPmka = $Pmka;
    }
    IF (is_null(trim($modPPhone))) { // We can't permit users to blank their phone number
        $modPPhone = $PPhone;
    }
    IF (is_null(trim($modPEmail))) { // we can't permit users to blank their email address
        $modPEmail = $PEmail;
    }
    IF ($PName != $modPName) { // If users have changed their name, we need to generate a new soundex for it.
        $modPSdx = soundex($modPName);
    } ELSE {
        $modPSdx = soundex($PName);
    }

    print "<!DOCTYPE html>\n";
    print "<html>\n";
    print "<title>Rider Information</title>\n";
    print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
    print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

    print "<header class=\"w3-panel\">\n";
    print "<H1>Rider Information:</H1>\n";
    print "</header>\n";

    print "<section class=\"w3-panel\">\n";
    $PBio = strip_tags($PBio);
    $modPBio = strip_tags($modPBio);
//    echo "INSERT INTO edit_riders (PName,modPName,Pcka,modPcka,Paka,modPaka,Pmka,modPmka,PHonors,modPHonors,PPhone,modPPhone,PEmail,modPEmail,PBio,modPBio,Pking,modPking,PGtype,modPGtype,PHG,modPHG,modPSdx) VALUES ('$PName','$modPName','$Pcka','$modPcka','$Paka','$modPaka','$Pmka','$modPmka','$PHonors','$modPHonors','$PPhone','$modPPhone','$PEmail','$modPEmail','$PBio','$modPBio',$Pking,$modPking,$PGtype,$modPGtype,'$PHG','$modPHG','$modPSdx')";
    $seti = mysql_query("INSERT INTO edit_riders (PID,PName,modPName,Pcka,modPcka,Paka,modPaka,Pmka,modPmka,PHonors,modPHonors,PPhone,modPPhone,PEmail,modPEmail,PBio,modPBio,Pking,modPking,PGtype,modPGtype,PHG,modPHG,modPSdx) VALUES ($PID,'$PName','$modPName','$Pcka','$modPcka','$Paka','$modPaka','$Pmka','$modPmka','$PHonors','$modPHonors','$PPhone','$modPPhone','$PEmail','$modPEmail','$PBio','$modPBio',$Pking,$modPking,$PGtype,$modPGtype,'$PHG','$modPHG','$modPSdx')", $db);
    echo mysql_error();
    print "<HR>\n";

    //    IF ($seti) {
//        header('Location: /sandbox/thankyou.php?PN=' . $modPName);
//    }

    print " <table class=\"w3-table-all\"> ";

    printf("<TR><TD ALIGN='RIGHT'>SCA Name:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD></TR>\n", $PName, $modPName);
    printf("<TR><TD ALIGN='RIGHT'>Commonly Known:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD></TR>\n", $Pcka, $modPcka);
    printf("<TR><TD ALIGN='RIGHT'>Also Known:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD></TR>\n", $Paka, $modPaka);
    printf("<TR><TD ALIGN='RIGHT'>Mundane Name:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD></TR>\n", $Pmka, $modPmka);
    printf("<TR><TD ALIGN='RIGHT'>Titles and Honors:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD></TR>\n", $PHonors, $modPHonors);
    printf("<TR><TD ALIGN='RIGHT'>Contact Phone:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD></TR>\n", $PPhone, $modPPhone);
    printf("<TR><TD ALIGN='RIGHT'>Email:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD></TR>\n", $PEmail, $modPEmail);
    printf("<TR><TD ALIGN='RIGHT'>Your website:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD></TR>\n", $PBio, $modPBio);
    printf("<TR><TD ALIGN='RIGHT'>Kingdom:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD>", $Pking, $modPking);
    printf("<TR><TD ALIGN='RIGHT'>Group Size:</TD><TD ALIGN='CENTER'>%s of</TD><TD ALIGN='LEFT'>%s</TD>\n", $PGtype, $modPGtype);
    printf("<TR><TD ALIGN='RIGHT'>Home Group:</TD><TD ALIGN='CENTER'>%s</TD><TD ALIGN='LEFT'>%s</TD></TR>", $PHG, $modPHG);

    print "</TABLE>\n";

    print "<article class=\"w3-card w3-orange\">";
//    print "<PRE>\n";
//    print "Ignore me, I am for Sandor's use.\n";
//    print_r($_SESSION);
//    print "<HR>\n";
//    print_r($_POST);
//    print "</PRE></article>\n";
    print "<A HREF=\"" . $_SERVER['PHP_SELF'] . "?Reset=1\">Click here to start over</A>\n";
    die;

}
?>
