<?php
$vars_start = get_defined_vars();
session_start();
include "year.inc";
include "ikeqcfuncs.inc";
include "colors.inc";


IF (isset($_POST['PName'])) {

    $PName = $_POST['PName'];
    $Pcka = $_POST['Pcka'];
    $Paka = $_POST['Paka'];
    $Pmka = $_POST['Pmka'];
    $PHonors = $_POST['PHonors'];
    $PPhone = $_POST['PPhone'];
    $PEmail = $_POST['PEmail'];
    $PBio = $_POST['PBio'];
    $PKing = $_POST['PKing'];
    $PGtype = $_POST['PGtype'];
    $PHG = $_POST['PHG'];


    $EC = NameTest($PName);
    
    IF ($EC > 0) {
        $_SESSION['Caution'] = "It appears you have placed the Rider's honors before their name.<BR>Please EDIT your input and put the Rider's honors in the correct place.<HR>\n";
    }

    $PNT = substr($PName, 0, 5)."%";    // 'Participant Name Trimmed'
    $PCT = "%".substr($Pcka, 0, 5)."%"; // 'Participant Commonly-Known-As Trimmed'
    $PAT = "%".substr($Paka, 0, 5)."%"; // 'Participant Also-Known-As Trimmed'
    $PMT = substr($Pmka, 0, 5)."%";     // 'Participant Mundanly-Known-As Trimmed'
    $PSDXT = soundex($PName);                        // 'Participant Soundex()'


//    $seta = mysql_query("SELECT PID,PName,Pcka,Paka,Pmka,PSdx FROM riders WHERE (PName LIKE '$PNT' OR Pcka LIKE '$PNT' OR Paka LIKE '$PNT' OR Pcka LIKE '$PNT' OR Pcka LIKE '$PCT' OR Pcka LIKE '$PAT' OR Paka LIKE '$PNT' OR Paka LIKE '$PCT' OR Paka LIKE '$PAT' OR Pmka LIKE '$PMT' OR PSdx LIKE '$PSDXT') ORDER BY PID", $db);
    $seta = mysqli_query($db_3,"SELECT PID,PName,Pcka,Paka,Pmka,PSdx FROM riders WHERE (PName LIKE '$PNT' OR Pcka LIKE '$PNT' OR Paka LIKE '$PNT' OR Pcka LIKE '$PNT' OR Pcka LIKE '$PCT' OR Pcka LIKE '$PAT' OR Paka LIKE '$PNT' OR Paka LIKE '$PCT' OR Paka LIKE '$PAT' OR Pmka LIKE '$PMT' OR PSdx LIKE '$PSDXT') ORDER BY PID");

    IF ($A = mysqli_fetch_array($seta)) {
        IF ($A) {
            OpenTOP();
            halter();
            ShowAlarms();
            print "<DIV CLASS=\"w3-container w3-theme-l3\">\n";
            IF (mysqli_num_rows($seta) > 0) {
                // TODO Finish Dupe name routine
                $_SESSION['Caution'] = $_SESSION['Caution'] . "There are one or more riders in our database with similar names.<BR>Please double check the list and make sure you are not adding a duplicate.<HR>\n";

                OpenHTML($S1);

                //PageHead("New Rider", "w3-container $S2");

                print "<H2>Close matches:</H2>\n";
                print "<P>If the rider you are trying to enter is listed below by any name you recognize, you do not need to enter them again.<BR>\n";
                print "If a rider wishes to make changes to their details, it can be handled by visiting the Rider's portal.<BR>\n";
                print "For this event, please use the Rider's existing name, and make adjustments later.</P>";
                print "<TABLE CLASS=\"w3-table w3-striped\">\n";
                print "<TR CLASS=\"w3-border-bottom\"><TD>SCA Name</TD><TD>Common Alias</TD><TD>Also Known As</TD><TD>Mundanly Known AS</TD></TR>\n";
                do {
                    print "<TR><TD>$A[1]</TD><TD>$A[2]</TD><TD>$A[3]</TD><TD>$A[4]</TD></TR>\n";
                } while ($A = mysqli_fetch_array($seta));
                print "</table>\n";
            }
            print "<button class=\"w3-btn w3-white\" name=\"run\" type=\"submit\" value=\"add\">Add this Rider</button>\n";

        }
    }
    
    IF (isset($Review) AND $Review < 0) {
        unset($Review);
        $trash = time();
        header('Location: '.$_SERVER['PHP_SELF'].'?PName=$PName&Pcka=$Pcka&Paka=$Paka&Pmka=$Pmka&PHonors=$PHonors&PPhone=$PPhone&PEmail=$PEmail&PBio=$PBio&ReviewDone=1&trash='.$trash);
    }
    
IF (!isset($PName)) {

    print "<TR><TD ALIGN='RIGHT'>SCA Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PName\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Commonly Known:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Pcka\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Also Known:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Paka\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Mundane Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Pmka\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Titles and Honors:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PHonors\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Contact Phone:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PPhone\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Email:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PEmail\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Your website:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PBio\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Kingdom:</TD><TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"Pking\">\n";
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

    print "<TR><TD ALIGN='RIGHT'>Group Size:</TD><TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"PGtype\">\n";
    print "<OPTION VALUE=\"1\">Canton</OPTION>\n";
    print "<OPTION VALUE=\"2\">College</OPTION>\n";
    print "<OPTION VALUE=\"3\">Shire</OPTION>\n";
    print "<OPTION VALUE=\"4\">Barony</OPTION>\n";
//print "<OPTION VALUE=\"5\">County</OPTION>\n";
//print "<OPTION VALUE=\"6\">Duchy</OPTION>\n";
    print "</SELECT></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Home Group:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PHG\" type=\"text\"></TD></TR>\n";
    print "</TABLE>\n";
    print "<p><button class=\"w3-btn w3-yellow\">SUBMIT</button></p>\n";
}

IF (isset($PName)) {

    print "<TR><TD ALIGN='RIGHT'>SCA Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PName\" value=\"$PName\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Commonly Known:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Pcka\" value=\"$Pcka\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Also Known:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Paka\" value=\"$Paka\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Mundane Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Pmka\" value=\"$Pmka\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Titles and Honors:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PHonors\" value=\"$PHonors\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Contact Phone:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PPhone\" value=\"$PPhone\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Email:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PEmail\" value=\"$PEmail\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Your website:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PBio\" value=\"$PBio\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    $KL1 = KingLook($PKing);
    print "<TR><TD ALIGN='RIGHT'>Kingdom:</TD><TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"Pking\">\n";
    print "<OPTION VALUE=\"$PKing\">$KL1[0]</OPTION>\n";
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
    $GL1 = GroupLook($PGtype);
    print "<TR><TD ALIGN='RIGHT'>Group Size:</TD><TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"PGtype\">\n";
    print "<OPTION VALUE=\"$PGtype\">$GL1[0]</OPTION>\n";
    print "<OPTION VALUE=\"1\">Canton</OPTION>\n";
    print "<OPTION VALUE=\"2\">College</OPTION>\n";
    print "<OPTION VALUE=\"3\">Shire</OPTION>\n";
    print "<OPTION VALUE=\"4\">Barony</OPTION>\n";
//print "<OPTION VALUE=\"5\">County</OPTION>\n";
//print "<OPTION VALUE=\"6\">Duchy</OPTION>\n";
    print "</SELECT></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Home Group:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PHG\" value=\"$PHG\" type=\"text\"></TD></TR>\n";

    print "</TABLE>\n";

}



IF (!isset($review) OR $review < 0) {

}
print "<p><button class=\"w3-btn w3-lime\">ADD THIS RIDER</button></p>\n";
} // End PName is set block


