<?PHP

// This is an include with many common custom functions.  It should be called by every script in the IKEqC stack.

function NameTest($n) {
    // This function tests for common Titles at the begining of a Participant's name.
    // Titles or Honors should go in a different blank so we test for it.
    // Because of the fuzzy nature of this test, we can only warn of the discovery and not kick it back as in error just
    //   in case the title we test for shares the first few letters with an otherwise valid name.
    $EntryCaution = 0;
    SWITCH ($n) {
        CASE strncasecmp($n, "king", 4):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "queen", 5):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "princ", 5):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "duke", 4):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "dutchess", 8):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "earl", 4):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "viscount", 7):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "count", 5):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "baron", 5):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "sir ", 4):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "dame ", 5):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "master", 6):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "mistress", 8):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "squire", 6):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "protege", 7):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "apprentice", 10):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
            
    }
    
    return ($EntryCaution);
    
}

function OpenHTML($c1) { //For all of the pages that deal with data entry.

    print "<!DOCTYPE html>\n";
    print "<html lang=\"en\">\n";
    print "<title>$c1</title>\n";
    print "<meta name=\"viewport\" charset=\"UTF-8\" content=\"width=device-width, initial-scale=1\">\n";
    //print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/w3css/4/w3pro.css\">\n"; // original
    print "<link rel=\"stylesheet\" href=\"w3css_4_local.css\">\n"; // local copy of the v4 W3css
    print "<link rel=\"stylesheet\" href=\"ikeqc_lii.css\">\n"; // #FFCC00 (IKEqC logo background) color theme
    print "<link rel=\"icon\" type=\"image/png\" href=\"http://scaikeqc.org/sandbox/favicon.ico\" />\n";
    print "<body style=\"min-height: 100vh; background-color: {$_SESSION['BG']};\">\n";
    // print "<body style=\"max-width:500px; min-height: 100vh; background-color: {$_SESSION['BG']};\">\n";
    IF (isset($_SESSION['Caution']) AND !is_null($_SESSION['Caution'])) {

        print "<article class=\"w3-container w3-yellow\">\n";
        print "<P>Take Note:<BR>\n";
        print "{$_SESSION['Caution']}</P></article>\n";
        $_SESSION['Caution'] = NULL;
    }

    IF (isset($_SESSION['EntryError']) AND !is_null($_SESSION['EntryError'])) {

        print "<article class=\"w3-container w3-red\">\n";
        print "<P>You have an error in your input, please try again.<BR>\n";
        print "{$_SESSION['EntryError']}</P></article>\n";
        $_SESSION['EntryError'] = NULL;
    }

}

function OpenTOP($c1) { //For all of the front-of-the-house pages

    print "<!DOCTYPE html>\n";
    print "<html lang=\"en\">\n";
    print "<title>$c1</title>\n";
    print "<meta name=\"viewport\" charset=\"UTF-8\" content=\"width=device-width, initial-scale=1\">\n";
    print "<link rel=\"stylesheet\" href=\"w3css_4_local.css\">\n"; // local copy of the v4 W3css
    print "<link rel=\"stylesheet\" href=\"ikeqc_lii.css\">\n"; // #FFCC00 (IKEqC logo background) color theme
    print "<link rel=\"icon\" type=\"image/png\" href=\"http://scaikeqc.org/sandbox/favicon.ico\" />\n";
    print "<body>\n";
}


function ShowDebug($v1, $v2) {

    $Vars = array_diff($v1,$v2);
    print "<article class=\"w3-panel w3-black w3-text-amber w3-left-align\">\n";
    print "<P>This section is for debugging purposes only and will not be present in the final version.</P>\n";
    print "<PRE>";
    print "Scope:<BR>\n";
    print_r($Vars);
    print "POST:<BR>\n";
    print_r($_POST);
    print "SESSION:<BR>\n";
    print_r($_SESSION);
    print "</article>\n";

}

function PageHead($d,$e) {

    print "<header class=\"$e\">\n";
    print "<H1>$d</H1>\n";
    print "</header>\n";

}

function PageHeadRider($f,$g) {

    print "<header class=\"$g\">\n";
    print "<H1>$f</H1>\n";
    IF (is_null($_SESSION['RiderHonors'])) {
        printf("<H2>%s</H2>\n", $_SESSION['RiderName']);
    } ELSE {
        printf("<H2>%s %s</H2>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }
    print "</header>\n";
}

function AnnounceRider() {
    IF (is_null($_SESSION['RiderName'])) {
        print "Nothing to display.";
        return;
    }
    IF (is_null($_SESSION['RiderHonors'])) {
        printf("%s\n", $_SESSION['RiderName']);
    } ELSE {
        printf("%s %s\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }
}

function PageNoHeadRider($h) {

    print "<header class=\"$h\">\n";
    IF (is_null($_SESSION['RiderHonors'])) {
        printf("<H2>%s</H2>\n", $_SESSION['RiderName']);
    } ELSE {
        printf("<H2>%s %s</H2>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }
    print "</header>\n";
}

function KingLook($a) {

    switch($a) {

        case 1:
            $Kingdom = "An Tir";
            $KingWeb = "http://www.antir.sca.org";
            break;
        case 2:
            $Kingdom = "Ansteorra";
            $KingWeb = "http://www.ansteorra.org";
            break;
        case 3:
            $Kingdom = "Artemisia";
            $KingWeb = "http://www.artemisia.sca.org";
            break;
        case 4:
            $Kingdom = "Atenveldt";
            $KingWeb = "http://www.atenveldt.org";
            break;
        case 5:
            $Kingdom = "Atlantia";
            $KingWeb = "http://www.atlantia.sca.org";
            break;
        case 6:
            $Kingdom = "Aethelmearc";
            $KingWeb = "http://www.aethelmearc.org";
            break;
        case 7:
            $Kingdom = "Caid";
            $KingWeb = "http://www.sca-caid.org";
            break;
        case 8:
            $Kingdom = "Calontir";
            $KingWeb = "http://calontir.sca.org";
            break;
        case 9:
            $Kingdom = "Drachenwald";
            $KingWeb = "http://www.drachenwald.sca.org";
            break;
        case 10:
            $Kingdom = "Ealdormere";
            $KingWeb = "http://www.ealdormere.sca.org";
            break;
        case 11:
            $Kingdom = "East";
            $KingWeb = "http://www.eastkingdom.org";
            break;
        case 12:
            $Kingdom = "Middle";
            $KingWeb = "http://www.midrealm.org";
            break;
        case 13:
            $Kingdom = "Meridies";
            $KingWeb = "http://www.meridies.org";
            break;
        case 14:
            $Kingdom = "Outlands";
            $KingWeb = "http://www.outlands.org";
            break;
        case 15:
            $Kingdom = "Trimaris";
            $KingWeb = "http://www.trimaris.org";
            break;
        case 16:
            $Kingdom = "West";
            $KingWeb = "http://www.westkingdom.org";
            break;
        case 17:
            $Kingdom = "Northshield";
            $KingWeb = "http://www.northshield.org";
            break;
        case 18:
            $Kingdom = "Gleann Abhann";
            $KingWeb = "http://gleannabhann.net";
            break;
        case 19:
            $Kingdom = "Lochac";
            $KingWeb = "http://www.sca.org.au/lochac";
            break;
        case 20:
            $Kingdom = "Avacal";
            $KingWeb = "http://www.avacal.org/SitePages/Home.aspx";
            break;
        default:
            $Kingdom = "Here be dragons";
            $KingWeb = "http://www.sca.org";
            break;
    }
    return array($Kingdom, $KingWeb);
}

function GroupLook($b) {
    switch($b) {
        case 1:
            $GType = "Canton";
            break;
        case 2:
            $GType = "College";
            break;
        case 3:
            $GType = "Shire";
            break;
        case 4:
            $GType = "Barony";
            break;
//        case 5:
//            $GType = "County";
//            break;
//        case 6:
//            $GType = "Duchy";
//            break;
        default:
            $GType = "Unincorporated";
            break;
    }
    return $GType;
}