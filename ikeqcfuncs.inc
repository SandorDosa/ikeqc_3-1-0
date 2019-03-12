<?PHP

// This is an include with many common custom functions.  It should be called by every script in the IKEqC stack.

function NameTest($n) {
    // This function tests for common Titles at the beginning of a Participant's name.
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
        CASE strncasecmp($n, "dutc", 4):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "earl", 4):
            $_SESSION['Caution'] = "It appears as if you have indicated the rider's titles in their name.<BR>Please insure that only the rider's name appears in the Name blank, their titles should go in the Honors blank.<BR>\n";
            $EntryCaution++;
            BREAK;
        CASE strncasecmp($n, "visc", 4):
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
    
} // This test is to look for common titles listed before a Rider's name.

function OpenHTML($c1) { //For all of the pages that deal with data entry.

    print "<!DOCTYPE html>\n";
    print "<html lang=\"en\">\n";
    print "<title>$c1</title>\n";
    print "<meta name=\"viewport\" charset=\"UTF-8\" content=\"width=device-width, initial-scale=1\">\n";
    //print "<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3pro.css\">\n"; // original
    print "<link rel=\"stylesheet\" href=\"./w3css_4_local.css\">\n"; // local copy of the v4 W3css
    print "<link rel=\"stylesheet\" href=\"./ikeqc_lii.css\">\n"; // #FFCC00 (IKEqC logo background) color theme
    print "<link rel=\"icon\" type=\"image/png\" href=\"./sandbox/favicon.ico\" />\n";

    IF (isset($_SESSION['BG'])) {
        $BG = $_SESSION['BG'];
    } ELSE {
        $BG = "#FFCC00";
    }

    print "<body style=\"min-height: 100vh; background-color: $BG;\">\n";
    // print "<body style=\"max-width:500px; min-height: 100vh; background-color: {$_SESSION['BG']};\">\n";
    // Farcebooke JS code
    print "<div id=\"fb-root\"></div>\n";
    print "<script>(function(d, s, id) {\n";
      print "var js, fjs = d.getElementsByTagName(s)[0];\n";
      print "if (d.getElementById(id)) return;\n";
      print "js = d.createElement(s); js.id = id;\n";
      print "js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9\";\n";
      print "fjs.parentNode.insertBefore(js, fjs);\n";
    print "}(document, 'script', 'facebook-jssdk'));</script>\n";


} // For all of the back-of-the-house pages.  Error is false-positive in supplied Facebook javascript.

function OpenTOP($c1) { //For all of the front-of-the-house pages

    print "<!DOCTYPE html>\n";
    print "<html lang=\"en\">\n";
    print "<title>$c1</title>\n";
    print "<meta name=\"viewport\" charset=\"UTF-8\" content=\"width=device-width, initial-scale=1\">\n";
    print "<link rel=\"stylesheet\" href=\"w3css_4_local.css\">\n"; // local copy of the v4 W3css
    print "<link rel=\"stylesheet\" href=\"ikeqc_lii.css\">\n"; // #FFCC00 (IKEqC logo background) color theme
    print "<link rel=\"icon\" type=\"image/png\" href=\"sandbox/favicon.ico\" />\n";
    print "<body style=\"min-height: 100vh; background-color: #FFCC00;\">\n";
    // Farcebooke JS code
    print "<div id=\"fb-root\"></div>\n";
    print "<script>(function(d, s, id) {\n";
      print "var js, fjs = d.getElementsByTagName(s)[0];\n";
      print "if (d.getElementById(id)) return;\n";
      print "js = d.createElement(s); js.id = id;\n";
      print "js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9\";\n";
      print "fjs.parentNode.insertBefore(js, fjs);\n";
    print "}(document, 'script', 'facebook-jssdk'));</script>\n";
} // For all of the Front-of-the-house Pages   Error is false-positive in supplied Facebook javascript.

function ShowAlarms() {
    IF (isset($_SESSION['Caution']) AND !is_null($_SESSION['Caution'])) {

        print "<article class=\"w3-panel w3-center w3-theme-light\">\n";
        print "<P>Take Note:<BR>\n";
        print "{$_SESSION['Caution']}</P></article>\n";
        $_SESSION['Caution'] = NULL;
    }

    IF (isset($_SESSION['EntryError']) AND !is_null($_SESSION['EntryError'])) {

        print "<article class=\"w3-panel w3-center w3-theme-dark\">\n";
        print "<P>You have an error in your input, please try again.<BR>\n";
        print "{$_SESSION['EntryError']}</P></article>\n";
        $_SESSION['EntryError'] = NULL;
    }
}

function ShowDebug($v1, $v2) {

    $Vars = array_diff($v1,$v2);
    print "<article class=\"w3-panel w3-black w3-text-amber w3-left-align\">\n";
    print "<P>This section is for debugging purposes only.</P>\n";
    print "<PRE>";
    print "Scope:<BR>\n";
    print_r($Vars);
    print "POST:<BR>\n";
    print_r($_POST);
    print "SESSION:<BR>\n";
    print_r($_SESSION);
    print "</article>\n";

} // Variable and Array dump for Debug purposes.

function PageHead($d,$e) {

    print "<header class=\"$e\">\n";
    print "<H1>$d</H1>\n";
    print "</header>\n";

} // Generic Header.  Depreciated?

function PageHeadRider($f,$g) {

    print "<header class=\"$g\">\n";
    print "<H1>$f</H1>\n";
    IF (is_null($_SESSION['RiderHonors'])) {
        printf("<H2>%s</H2>\n", $_SESSION['RiderName']);
    } ELSE {
        printf("<H2>%s %s</H2>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }
    print "</header>\n";
} // Header with Rider display

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
} // Rider display without headers, for use other than the top of pages.

function PageNoHeadRider($h) {

    print "<header class=\"$h\">\n";
    IF (is_null($_SESSION['RiderHonors'])) {
        printf("<H2>%s</H2>\n", $_SESSION['RiderName']);
    } ELSE {
        printf("<H2>%s %s</H2>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
    }
    print "</header>\n";
} // Rider Display without headers but with customized container type and style.

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
} // Kingdom Lookup.

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
} // Group Type lookup.

function arc_list() {
    print "<strong>Scores Archive</strong><p>\n";
    print "<a href=\"https://scaikeqc.org/archive/xlviii\">XLVIII</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xlvii\">XLVI</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xlv\">XLV</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xliv\">XLIV</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xliii\">XLIII</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xlii\">XLII</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xli\">XLI</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xl\">XL</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xxxix\">XXXIX</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xxxviii\">XXXVIII</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xxxvii\">XXXVII</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xxxvi\">XXXVI</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/xxxv\">XXXV</a><br>\n";
    print "<a href=\"https://scaikeqc.org/archive/index-2.html\">Archive Home</a></p>\n";
} // Organized list of Archive links

function hoofer() {
    print "<section class=\"w3-container w3-theme-d5 w3-center\">\n";
        print "<div class=\"w3-bar w3-center\">\n"; // Quick Links
            print "<a href=\"https://scaikeqc.org/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Home</a>\n";
            print "<a href=\"https://scaikeqc.org/rules/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Rules</a>\n";
            print "<a href=\"https://scaikeqc.org/dl/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Downloads</a>\n";
            print "<a href=\"https://scaikeqc.org/exp.php\" class=\"w3-bar-item w3-button w3-mobile\">Experiments</a>\n";
            print "<a href=\"https://scaikeqc.org/archive/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Scores Archive</a>\n";
            print "<a href=\"https://scaikeqc.org/blog/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Blog</a>\n";
            print "<a href=\"https://scaikeqc.org/contact.php\" class=\"w3-bar-item w3-button w3-mobile\">Contact Us</a>\n";
            print "<a href=\"https://scaikeqc.org/emta.php\" class=\"w3-bar-item w3-button w3-mobile\">EM/TA Portal</a>\n";
            print "<a href=\"https://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">Rider Portal</a>\n";
            print "<a href=\"https://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">Made Possible by:</a>\n";
            print "<a href=\"https://scaikeqc.org/privacy.php\" class=\"w3-bar-item w3-button w3-mobile\">Privacy Policy</a>\n";
            print "<div class=\"w3-bar-item w3-mobile fb-like\" data-href=\"https://scaikeqc.org\" data-layout=\"button\" data-action=\"like\" data-size=\"small\" data-show-faces=\"false\" data-share=\"true\"></div>";
        print "</div>"; // End Quick Links
    print "</section>\n";
} // Containerized footer section with links.

function halter() {
    print "<section class=\"w3-row w3-theme\">\n"; // Banner
        print "<article class=\"w3-col m3 l2 w3-cell w3-theme w3-center\">\n"; // Logo Block
            print "<img title=\"Logo\" alt=\"Or, A Chamfron and in base the letters IKEqC vert.\" src=\"I3Logo3.png\">\n";
        print "</article>\n"; // End Logo block
        print "<article class=\"w3-col m9 l10 w3-theme w3-center w3-cell-middle\">\n"; // Title Block
            print "<H1>Inter-Kingdom Equestrian Competition</H1>\n";
            long_as();
            print "<div class=\"w3-bar w3-center\">\n"; // Quick Links
                print "<a href=\"https://scaikeqc.org/rules/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Rules</a>\n";
                print "<a href=\"https://scaikeqc.org/emta.php\" class=\"w3-bar-item w3-button w3-mobile\">EM/TA Portal</a>\n";
                print "<a href=\"https://scaikeqc.org/dl/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Forms/Downloads</a>\n";
                print "<a href=\"https://scaikeqc.org/blog/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Blog</a>\n";
            print "</div>"; // End Quick Links
        print "</article>\n"; // End Title block
    print "</section>\n"; // End Banner block
} // Containerized header section with links.

function long_as() {
    $date1 = new DateTime("1966-05-01"); // The recognized first day of the SCA Calender
    $date2 = new DateTime("now"); // Date on load time.
    $interval = $date1->diff($date2);
    $as_long = $interval->y;

    switch($as_long) {
        case 52:
            print "<p>In the Fifty-Third Year of the Society of Creative Anachronism</p>\n";
            break;
        case 53:
            print "<p>In the Fifty-Forth Year of the Society of Creative Anachronism</p>\n";
            break;
        case 54:
            print "<p>In the Fifty-Fifth Year of the Society of Creative Anachronism</p>\n";
            break;
        case 55:
            print "<p>In the Fifty-Sixth Year of the Society of Creative Anachronism</p>\n";
            break;
        case 56:
            print "<p>In the Fifty-Seventh Year of the Society of Creative Anachronism</p>\n";
            break;
        case 57:
            print "<p>In the Fifty-Eighth Year of the Society of Creative Anachronism</p>\n";
            break;
        case 58:
            print "<p>In the Fifty-Ninth Year of the Society of Creative Anachronism</p>\n";
            break;
        default:
            print "<p>In the current age of the Society of Creative Anachronism</p>\n";
    } // NOTE: The words are future tense one year higher than the mathematical result.


} // Dynamically calculate the words for the title page, based on a calculation of the current AS date.

function div_tags($div) {
    SWITCH ($div) {
        CASE 1:
            print "<td class='w3-theme-d5'>Canter</td>\n";
            break;
        CASE 2:
            print "<td class='w3-theme-d5'>Trot</td>\n";
            break;
        CASE 3:
            print "<td class='w3-theme-d5'>Walk</td>\n";
            break;
        DEFAULT:
            print "<td class='w3-theme-d5'>Walk</td>\n";
            break;
    }
}

function pend_tags($seen) {
    IF ($seen == "U") {
        print "<td class='w3-theme-d5'>Pending</td>\n";
    }
} // Depreciated

function status_tags($seen) {
    SWITCH ($seen) {
        CASE "A":
            print "<td class='w3-theme-d5'>Offical</td>\n"; // Accepted -- formally code "Y"
            break;
        CASE "D":
            print "<td class='w3-theme-d5'>Exceeded</td>\n"; // Accepted Low -- depreciated
            break;
        CASE "H":
            print "<td class='w3-theme-d5'>Hidden</td>\n"; // new for Scorekeeper v3.1.0
            break;
        CASE "R":
            print "<td class='w3-theme-d5'>Under Review</td>\n"; // new for Scorekeeper v3.1.0
            break;
        CASE "U":
            print "<td class='w3-theme-d5'>Pending</td>\n"; // Reported but not confirmed -- formally code "N"
            break;
        CASE "W":
            print "<td class='w3-theme-d5'>Withdrawn</td>\n"; // new for Scorekeeper v3.1.0
            break;
        CASE "Y":
            print "<td class='w3-theme-d5'>Offical</td>\n"; // Accepted -- formally code "Y"
            break;
        CASE "Z":
            print "<td class='w3-theme-d5'>Deleted</td>\n"; // Deleted
            break;
        default:
            print "<td class='w3-theme-d5'>Hidden</td>\n"; // new for Scorekeeper v3.1.0
            break;
    }
}

