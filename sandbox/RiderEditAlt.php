<?php
/**
 * Created by PhpStorm.
 * User: Bravo
 * Date: 1/23/17
 * Time: 6:08 PM
 */
// RiderEdit.php
// Sandor Dosa
// v0.03
// Script to allow a Rider to edit their information, or for a new rider to register with the database.
// Set ROMEO Rider Search dropdown
// Set PAPA Rider info pull.
// Set DELTA RiderEdits doublecheck
// SET INDIA Upload edits for review


session_start();
include "year.inc";
include "ikeqcfuncs.inc";

IF ($_POST['Reset'] == 1 OR $_GET['Reset'] == 1) {
    $_SESSION['PIDx'] = -1;
    $_SESSION['xPID'] = -1;
} // Hard Reset

IF (!isset($_SESSION['PIDx']) OR $_SESSION['PIDx'] <= 0) {

    IF ($_SESSION['PIDx'] <= 0) {
        
        IF ($_POST['Rin'] == 999 AND $_POST['Rout'] == 0) {
            $_POST['Rin'] = NULL;
            $_POST['Rout'] = NULL;
            header('Location: '.$_SERVER['PHP_SELF']);
            die;
        } // Soft reset, search again.


        IF (!isset($_POST['Rin']) OR is_null($_POST['Rin'])) {
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

        } // Gather Search string

        IF (!isset($_POST['Rout']) OR is_null($_POST['Rout'])) {

            IF (strlen(trim($_POST['Rin'])) < 1 ) {
                $setr = mysqli_query($db_alt,"SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' ORDER BY Pname");
            } ELSEIF (strlen(trim($_POST['Rin'])) > 6) {
                $_POST['Rin'] = "%".substr($_POST['Rin'], 0, 5) . "%";
                $Rindx = soundex($_POST['Rin']) . "%";
                $setr = mysqli_query($db_alt,"SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '{$_POST['Rin']}' OR Pcka LIKE '{$_POST['Rin']}' OR Paka LIKE '{$_POST['Rin']}' OR Pmka LIKE '{$_POST['Rin']}' OR PSdx LIKE '$Rindx' ) ORDER BY Pname");
            } ELSE {
                $_POST['Rin'] = "%".$_POST['Rin'] . "%";
                $Rindx = soundex($_POST['Rin']) . "%";
                $setr = mysqli_query($db_alt,"SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '{$_POST['Rin']}' OR Pcka LIKE '{$_POST['Rin']}' OR Paka LIKE '{$_POST['Rin']}' OR Pmka LIKE '{$_POST['Rin']}' OR PSdx LIKE '$Rindx' ) ORDER BY Pname");
            } // Search string processing, result is whole database if no string is supplied (1st block), trim string to 5 characters then search (2nd block), or if the user followed directions, search.

            IF ($R = mysqli_fetch_array($setr)) {
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
                } while ($R = mysqli_fetch_array($setr)); // Filling the drop down select with Riders.
                print "<OPTION VALUE=\"0\">-=Search Again=-\n";
                echo "</SELECT>\n<BR>\n";
                print "<P>A pair of asterisks next to a name, indicates that name was found searching against an alternate or mundane name.";
                print "<p><button class=\"w3-btn w3-blue\">Edit this Rider</button></p>\n";
                print "</form>\n";
                die;
            } // Select Rider to Edit

        } // Search Results and Selection

        IF ($_POST['Rout'] > 0 AND $_POST['Rin'] == 999) {
            $_SESSION['PIDx'] = $_POST['Rout'];
            header('Location: ' . $_SERVER['PHP_SELF']);
            die;
        } ELSE {  // Valid Result test
            echo "Something didn't work.\n";
//            print "<article class=\"w3-card w3-orange\">";
//            print "<PRE>\n";
//            print "Ignore me, I am for Sandor's use.\n";
//            print_r($_SESSION);
//            print "</PRE></article>\n";
            print "<A HREF=\"" . $_SERVER['PHP_SELF'] . "?Reset=1\">Click here to start over</A>\n";
            die;
        }  // Invalid result trap  TODO Better error code
    } // Find Rider

} // Load Rider into SESSION

// We have the Rider selected, now lets pull their information, check to see if they have pending edits, and populate the edit form.

IF (!isset($_SESSION['xPID']) OR $_SESSION['xPID'] <= 0) {

    $setr = mysqli_query($db_alt, "SELECT * FROM riders WHERE PID = {$_SESSION['PIDx']}");
    IF ($setr) {
        $R = mysqli_fetch_array($setr);
    }

    $setp = mysqli_query($db_alt, "SELECT * FROM edit_riders WHERE ( PID = {$_SESSION['PIDx']} AND modStatus = 'P' )");

    IF ($setp) {
        $P = mysqli_fetch_array($setp);
    } // Loads any pending edits, these edits will supersede the data currently stored.
    IF (is_null($P['modPName'])) {
        $P['modPName'] = $R['PName'];
    }    // Preloads Name or Pending Name
    IF (is_null($P['modPcka'])) {
        $P['modPcka'] = $R['Pcka'];
    }     // Preloads Commonly-Known-As or Pending CKA
    IF (is_null($P['modPaka'])) {
        $P['modPaka'] = $R['Paka'];
    }     // Preloads Also-Known-As or Pending AKA
    IF (is_null($P['modPmka'])) {
        $P['modPmka'] = $R['Pmka'];
    }     // Preloads Mundane(legal)-Known-As or Pending MKA
    IF (is_null($P['modPHonors'])) {
        $P['modPHonors'] = $R['PHonors'];
    }  // Preloads Honors and Titles or Pending Honors and Titles
    IF (is_null($P['modPPhone'])) {
        $P['modPPhone'] = $R['PPhone'];
    }   // Preloads Contact Phone or Pending Phone
    IF (is_null($P['modPEmail'])) {
        $P['modPEmail'] = $R['PEmail'];
    }   // Preloads Contact Email or Pending Email
    IF (is_null($P['modPBio'])) {
        $P['modPBio'] = $R['PBio'];
    }     // Preloads Rider Bio (weblink) or Pending Bio
    IF (is_null($P['modPking'])) {
        $P['modPking'] = $R['Pking'];
    }    // Preloads Rider Home Kingdom or Pending Kingdom
    IF (is_null($P['modPGtype'])) {
        $P['modPGtype'] = $R['PGtype'];
    }   // Preloads Rider Home Group Type (Shire, Canton, College, Barony) or Pending Group Type
    IF (is_null($P['modPHG'])) {
        $P['modPHG'] = $R['PHG'];
    }      // Preloads Rider's Home Group or Pending Group

    print "<!DOCTYPE html>\n";
    print "<html>\n";
    print "<title>Rider Information</title>\n";
    print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
    print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

    print "<header class=\"w3-panel\">\n";
    print "<H1>Rider Data:</H1><BR>\n";
    print "<P>Note: not all fields can be edited.  PENDING changes are preloaded in the edit fields..</P>\n";
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
    die;
} // Edit Data form

IF ($_SESSION['xPID'] > 0 ) {

    IF (is_null(trim($modPName))) {
        $modPName = $PName;
    }  // We can't permit users to blank their name
    IF (is_null(trim($modPmka))) {
        $modPmka = $Pmka;
    }   // We can't permit users to blank their mundane name
    IF (is_null(trim($modPPhone))) {
        $modPPhone = $PPhone;
    } // We can't permit users to blank their phone number
    IF (is_null(trim($modPEmail))) {
        $modPEmail = $PEmail;
    } // we can't permit users to blank their email address
    IF ($PName != $modPName) {
        $modPSdx = soundex($modPName);
    } ELSE {
        $modPSdx = soundex($PName);
    } // If users have changed their name, we need to generate a new soundex for it.

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
    $seti = mysqli_query($db_alt, "INSERT INTO edit_riders (PID,PName,modPName,Pcka,modPcka,Paka,modPaka,Pmka,modPmka,PHonors,modPHonors,PPhone,modPPhone,PEmail,modPEmail,PBio,modPBio,Pking,modPking,PGtype,modPGtype,PHG,modPHG,modPSdx) VALUES ($PID,'$PName','$modPName','$Pcka','$modPcka','$Paka','$modPaka','$Pmka','$modPmka','$PHonors','$modPHonors','$PPhone','$modPPhone','$PEmail','$modPEmail','$PBio','$modPBio',$Pking,$modPking,$PGtype,$modPGtype,'$PHG','$modPHG','$modPSdx')");
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
