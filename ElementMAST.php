<?PHP

// ScoreKeeper v3
// --> ElementMAST.php (Mounted Archery Single Target)
// -----> Structure complete, Integration Disable.
// Sandor Dosa Feb 10, 2017
// File version 0.5a
// Ready for DB integration.

$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "colors.inc";
// include "year.inc";  // Here is the SQL login and other information related to the tournament year.
include "MA1.inc";
// /Dev/Data is hardcoded here, actual use will pass this data via $_POST
include "dev_data.inc";
// End /Dev/Data
IF ($RunMoarch) {

    IF ($MA1Edit > 0) {
        $run = $_SESSION['RiderID'];
        $review = -1;
    }

    IF (!isset($review) OR $review < 0) {

        OpenHTML("Mounted Archery Single Target");

        ShowCaution();

        ShowError();

        MA1Header($S1);

        print "<form name=\"MA1\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

        print "<div class=\"w3-container $S2 w3-center\"><P class=\"w3-text-white\"><H2>First Arrow</H2></div>\n";
        print "<div class=\"w3-display-container\">\n";
        print "<img src=\"target_sm.png\" alt=\"Archery Target\">\n";
        print "<div class=\"w3-display-left w3-container\">\n";
        print "<table class=\"w3-table w3-centered w3-xlarge w3-text-shadow\">\n";
        print "<TR class=\"w3-left-align\">\n";
        print "<TD class=\"w3-text-black\">$Gold<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"G\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-black\">$Red<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"R\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-white\">$Blue<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"B\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-light-gray\">$Black<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"K\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-dark-gray\">$White<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"W\"></TD>\n";
        print "<TD></TD>\n";
        print "</TR>\n";
        print "</TABLE>\n";
        print "</div>\n";
        print "</div>\n";
        print "<div id=\"MoArch\" class=\"w3-container $S2 w3-padding-8\">\n";
        print "Miss:<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"M\">\n";
        print "Bounce:<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"N\">\n";
        print "Drop:<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"D\">\n";
        print "P/T:<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"P\">\n";
        print "</DIV>\n";

        print "<div class=\"w3-container $S3 w3-center\"><P class=\"w3-text-white\"><H2>Second Arrow</H2></div>\n";
        print "<div class=\"w3-display-container\">\n";
        print "<img src=\"target_sm.png\" alt=\"Archery Target\">\n";
        print "<div class=\"w3-display-left w3-container\">\n";
        print "<table class=\"w3-table w3-centered w3-xlarge w3-text-shadow\">\n";
        print "<TR class=\"w3-left-align\">\n";
        print "<TD class=\"w3-text-black\">$Gold<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"G\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-black\">$Red<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"R\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-white\">$Blue<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"B\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-light-gray\">$Black<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"K\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-dark-gray\">$White<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"W\"></TD>\n";
        print "<TD></TD>\n";
        print "</TR>\n";
        print "</TABLE>\n";
        print "</div>\n";
        print "</div>\n";
        print "<div id=\"MoArch\" class=\"w3-container $S3 w3-padding-8\">\n";
        print "Miss:<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"M\">\n";
        print "Bounce:<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"N\">\n";
        print "Drop:<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"D\">\n";
        print "P/T:<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"P\">\n";
        print "</DIV>\n";

        print "<div class=\"w3-container $S4 w3-center\"><H2 class=\"w3-text-white\"><H2>Third Arrow</H2></div>\n";
        print "<div class=\"w3-display-container\">\n";
        print "<img src=\"target_sm.png\" alt=\"Archery Target\">\n";
        print "<div class=\"w3-display-left w3-container\">\n";
        print "<table class=\"w3-table w3-centered w3-xlarge w3-text-shadow\">\n";
        print "<TR class=\"w3-left-align\">\n";
        print "<TD class=\"w3-text-black\">$Gold<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"G\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-black\">$Red<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"R\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-white\">$Blue<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"B\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-light-gray\">$Black<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"K\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-dark-gray\">$White<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"W\"></TD>\n";
        print "<TD></TD>\n";
        print "</TR>\n";
        print "</TABLE>\n";
        print "</div>\n";
        print "</div>\n";
        print "<div id=\"MoArch\" class=\"w3-container $S4 w3-padding-8\">\n";
        print "Miss:<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"M\">\n";
        print "Bounce:<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"N\">\n";
        print "Drop:<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"D\">\n";
        print "P/T:<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"P\"><HR>\n";
        print "</DIV>\n";
        print "<div class=\"w3-container $S4 w3-center\">Rider's technique correct:<input class=\"w3-check\" type=\"checkbox\" name=\"TechOK\" value=\"1\" checked=\"checked\"></div>\n";
        print "<DIV class=\"w3-container $S5 w3-center w3-padding-16\">\n";
        print "<input type=\"hidden\" name=\"review\" value=\"11\">\n";
        print "<button class=\"w3-btn w3-white\" name=\"run\" type=\"submit\" value=\"$run\">Submit</button> -or- \n";
        print "<button class=\"w3-btn w3-black\" name=\"run\" type=\"reset\" value=\"$run\">Reset</button>\n";
        print "</DIV>\n";
       die;
    }

    // If $review is set, The run has been completed.

    IF ($review > 0) {

        IF (isset($TechOK) OR $TechOK > 0) {
            $technical = $Tech;
        } ELSE {
            $technical = 0;
        }

        $subscore = 0;

        SWITCH ($Pass1) {

            CASE "G":
                $subscore = $subscore + $Gold;
                $Arrow1 = "Gold (+$Gold)";
                break;
            CASE "R":
                $subscore = $subscore + $Red;
                $Arrow1 = "Red (+$Red)";
                break;
            CASE "B":
                $subscore = $subscore + $Blue;
                $Arrow1 = "Blue (+$Blue)";
                break;
            CASE "K":
                $subscore = $subscore + $Black;
                $Arrow1 = "Black (+$Black)";
                break;
            CASE "W":
                $subscore = $subscore + $White;
                $Arrow1 = "White (+$White)";
                break;
            CASE ("N"):
                $Arrow1 = "Bounce ($Bounce)";
                break;
            CASE ("D"):
                $Arrow1 = "Dropout ($Dropout)";
                break;
            CASE ("P"):
                $Arrow1 = "Passthru ($Passthru)";
                break;
            CASE ("M"):
                $Arrow1 = "Miss";
                break;
            DEFAULT:
                $_SESSION['Caution'] = $_SESSION['Caution'] . "Arrow one scored as a miss<BR>";
                $Arrow1 = "Unknown";
                break;

        }
        SWITCH ($Pass2) {

            CASE "G":
                $subscore = $subscore + $Gold;
                $Arrow2 = "Gold (+$Gold)";
                break;
            CASE "R":
                $subscore = $subscore + $Red;
                $Arrow2 = "Red (+$Red)";
                break;
            CASE "B":
                $subscore = $subscore + $Blue;
                $Arrow2 = "Blue (+$Blue)";
                break;
            CASE "K":
                $subscore = $subscore + $Black;
                $Arrow2 = "Black (+$Black)";
                break;
            CASE "W":
                $subscore = $subscore + $White;
                $Arrow2 = "White (+$White)";
                break;
            CASE ("N"):
                $Arrow2 = "Bounce ($Bounce)";
                break;
            CASE ("D"):
                $Arrow2 = "Dropout ($Dropout)";
                break;
            CASE ("P"):
                $Arrow2 = "Passthru ($Passthru)";
                break;
            CASE ("M"):
                $Arrow2 = "Miss";
                break;
            DEFAULT:
                $_SESSION['Caution'] = $_SESSION['Caution'] . "Arrow two scored as a miss<BR>";
                $Arrow2 = "Unknown";
                break;

        }
        SWITCH ($Pass3) {

            CASE "G":
                $subscore = $subscore + $Gold;
                $Arrow3 = "Gold (+$Gold)";
                break;
            CASE "R":
                $subscore = $subscore + $Red;
                $Arrow3 = "Red (+$Red)";
                break;
            CASE "B":
                $subscore = $subscore + $Blue;
                $Arrow3 = "Blue (+$Blue)";
                break;
            CASE "K":
                $subscore = $subscore + $Black;
                $Arrow3 = "Black (+$Black)";
                break;
            CASE "W":
                $subscore = $subscore + $White;
                $Arrow3 = "White (+$White)";
                break;
            CASE ("N"):
                $Arrow3 = "Bounce ($Bounce)";
                break;
            CASE ("D"):
                $Arrow3 = "Dropout ($Dropout)";
                break;
            CASE ("P"):
                $Arrow3 = "Passthru ($Passthru)";
                break;
            CASE ("M"):
                $Arrow3 = "Miss";
                break;
            DEFAULT:
                $_SESSION['Caution'] = $_SESSION['Caution'] . "Arrow three scored as a miss<BR>";
                $Arrow3 = "Unknown";
                break;

        }

        $Score = $subscore + $technical;


        IF ($Pass1 == "N" OR $Pass2 == "N" OR $Pass3 == "N") {
            IF ($Bounce > 0) {
                $_SESSION['Caution'] = "Bounces are scored as $Bounce.<BR>" . $_SESSION['Caution'];
            } ELSE {
                $_SESSION['Caution'] = "Bounces are scored as misses.<BR>" . $_SESSION['Caution'];
            }
        }
        IF ($Pass1 == "D" OR $Pass2 == "D" OR $Pass3 == "D") {
            IF ($Dropout > 0) {
                $_SESSION['Caution'] = "Dropouts are scored as $Dropout.<BR>" . $_SESSION['Caution'];
            } ELSE {
                $_SESSION['Caution'] = "Dropouts are scored as misses.<BR>" . $_SESSION['Caution'];
            }
        }
        IF ($Pass1 == "P" OR $Pass2 == "P" OR $Pass3 == "P") {
            IF ($Passthru > 0) {
                $_SESSION['Caution'] = "Passthrus are scored as $Passthru.<BR>" . $_SESSION['Caution'];
            } ELSE {
                $_SESSION['Caution'] = "Passthrus are scored as misses.<BR>" . $_SESSION['Caution'];
            }
        }

        IF ($Score == 0) {
            $_SESSION['Caution'] = $_SESSION['Caution'] . "This score is ZERO<BR>";
        }

        OpenHTML("Mounted Archery Single Target");

        MA1Header($S1);

        ShowCaution();

        print "<form name=\"MA1review\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

        print "<section class=\"w3-container $S6 w3-center\">\n";
        print "<H2>Please Review:</H2>\n";

        print "<TABLE class=\"w3-table\">\n";
        print "<TR><TD>First Arrow:</TD><TD>$Arrow1</TD></TR>\n";
        print "<TR><TD>Second Arrow:</TD><TD>$Arrow2</TD></TR>\n";
        print "<TR><TD>Third Arrow:</TD><TD>$Arrow3</TD></TR>\n";
        IF ($TechOK > 0) {
            print "<TR><TD>Technique:</TD><TD>OK (+$technical)</TD></TR>\n";
        } ELSE {
            print "<TR><TD>Technique:</TD><TD>NO</TD></TR>\n";
        }
        print "</TABLE>\n";
        print "<P>Having shot $Score for<br>Mounted Archery -- Single Target.</P>\n";
        print "</section>\n";

        print "<section class=\"w3-container $S7 w3-center w3-padding-8\">\n";

        print"<input type=\"hidden\" name=\"MA1Score\" value=\"$Score\">\n";
        print"<input type=\"hidden\" name=\"MA1Pass1\" value=\"$Pass1\">\n";
        print"<input type=\"hidden\" name=\"MA1Pass2\" value=\"$Pass2\">\n";
        print"<input type=\"hidden\" name=\"MA1Pass3\" value=\"$Pass3\">\n";
        print"<input type=\"hidden\" name=\"MA1Tech\" value=\"$technical\">\n";
        print"<input type=\"hidden\" name=\"MA1TechOK\" value=\"$TechOK\">\n";

        print "<button class=\"w3-btn w3-red\" name=\"MA1Edit\" value=\"1\">EDIT SCORE</button> -or- \n";
        print "<button class=\"w3-btn w3-lime\" name=\"GoodRun\" value=\"1\">CONFIRM</button>\n";
        ShowDebug(get_defined_vars(),$vars_start);
        print "</section>\n";
        die;

    }





// If $GoodRun is set, the score has been reviewed and confirmed.

//    IF ($run > 0 AND $GoodRun > 0) {
//        $setRup = "INSERT INTO reeds (PID,HID,EID,DVN,L2,L4,L6,L8,L10,R2,R4,R6,R8,R10,SDcount,SDcount,SDcount,SDyear) VALUES ({$_SESSION['RiderID']},9999,{$_SESSION['EID']},{$_SESSION['RiderDVN']},$Reed2L,$Reed4L,$Reed6L,$Reed8L,$Reed10L,$Reed2R,$Reed4R,$Reed6R,$Reed8R,$Reed10R,$Dcount,$Dscore,'U',$anyear)";
//        //IF ($Rup = mysql_query($setRup, $db)) {
//        IF (isset($setRup)) {
//            IF ($Rup) {
//                //$_SESSION['ER']--;
//
//                OpenHTML($_SESSION['EName']);
//
//                PageHeadRider("Reed Chop", "w3-panel");
//
//
//
//                print "<form name=\"reedsdone\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
//
//                print "<section class=\"w3-container w3-light-green\">\n";
//                print "<H2>Score saved.</H2>\n";
//                print "<P>$setRup</P>";
//                print "</section>\n";
//
//                print "<section class=\"w3-container w3-pale-yellow w3-padding-8\">\n";
//                print "<P>Are we staying with ";
//                print "<button class=\"w3-btn w3-amber\" name=\"NextRider\" value=\"1\">THIS RIDER</button>";
//                print " or ";
//                print "<button class=\"w3-btn w3-lime\" name=\"NextGame\" value=\"1\">THIS GAME</button> for the next run?\n";
//                print "</section>\n";
//                die;
//            }
//        } ELSE {
//            print "Something went wrong, click <A HREF=\"{$_SERVER['PHP_SELF']}?\">here</A> to try again.\n";
//            print "<PRE>";
//            print_r($_POST);
//            print_r($_SESSION);
//            die(mysql_error());
//        }
//
//    }

}
// Production fallback to main module if the module state is no longer true.
// Disabled for development and debug.
// ] ELSE { // End RunMA1
// header('location: ' . '/sandbox/TOTF.php?FailReturn=1');
// }
