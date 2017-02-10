<?PHP
$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
//include "year.inc";
include "MA1.inc";
// /Dev/Data is hardcoded here, actual use will pass this data via $_POST
include "dev_data.inc";
// End /Dev/Data
$_SESSION['RiderHonors'] = $RiderHonors;
$_SESSION['RiderName'] = $RiderName;
$_SESSION['RiderID'] = $RiderID;
$_SESSION['RiderDVN'] = $RiderDVN;
$_SESSION['EName'] = $EName;

IF ($RunMoarch) {

    IF ($MoarchEdit > 0) {
        $run = $_SESSION['RiderID'];
        $review = -1;
    }

    IF (!isset($review) OR $review < 0) {

        OpenHTML($_SESSION['EName']);

        ShowCaution();

        ShowError();

        print "<form name=\"moarch\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
        print "<div id=\"MoArch\" class=\"w3-container w3-indigo\">\n";
        print "<table class=\"w3-table w3-centered\"> \n";
        print "<TR><TD>Mounted Archery -- Single Shot</TD></TR>\n";

        IF (is_null($_SESSION['RiderHonors'])) {
            printf("<TR><TD><H2>%s</H2></TD></TR>\n", $_SESSION['RiderName']);
        } ELSE {
            printf("<TR><TD><H2>%s %s</H2></TD></TR>\n", $_SESSION['RiderHonors'], $_SESSION['RiderName']);
        }

        print "</TABLE>\n";
        print "</DIV>\n";

        print "<div class=\"w3-display-container\">\n";
        print "<img src=\"target_sm.png\" alt=\"Target\">\n";
        print "<div class=\"w3-display-left w3-container\">\n";
        print "<table class=\"w3-table w3-centered w3-xlarge w3-text-shadow\">\n";
        print "<TR class=\"w3-left-align\">\n";
        print "<TD class=\"w3-text-dark-grey\">$Gold<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"G\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-black\">$Red<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"R\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-white\">$Blue<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"B\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-light-gray\">$Black<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"K\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-dark-gray\">$White<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"W\"></TD>\n";
        print "<TD></TD>\n";
        print "</TR>\n";
        print "</TABLE>\n";
        print "</div>\n";
        print "</div>\n";
        print "<div id=\"MoArch\" class=\"w3-container w3-indigo\">\n";
        print "<table class=\"w3-table w3-centered\"> \n";
        print "<TR><TD>Miss<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"M\"></TD>\n";
        print "<TD>Bounce<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"N\"></TD>\n";
        print "<TD>Dropout<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"D\"></TD>\n";
        print "<TD>P/T<input class=\"w3-radio\" type=\"radio\" name=\"Pass1\" value=\"P\"></TD>\n";
        print "<TD></TD></TR>\n";
        print "</TABLE>\n";
        print "</DIV>\n";

        print "<div class=\"w3-container w3-deep-purple\"><P class=\"w3-text-white\">Second Target</P></div>\n";
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
        print "<div id=\"MoArch\" class=\"w3-container w3-deep-purple\">\n";
        print "<table class=\"w3-table w3-centered\"> \n";
        print "<TR><TD>Miss<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"M\"></TD>\n";
        print "<TD>Bounce<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"N\"></TD>\n";
        print "<TD>Dropout<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"D\"></TD>\n";
        print "<TD>P/T<input class=\"w3-radio\" type=\"radio\" name=\"Pass2\" value=\"P\"></TD>\n";
        print "<TD></TD></TR>\n";
        print "</TABLE>\n";
        print "</DIV>\n";

        print "<div class=\"w3-container w3-purple\"><P class=\"w3-text-white\">Third Target</P></div>\n";
        print "<div class=\"w3-display-container\">\n";
        print "<img src=\"target_sm.png\" alt=\"Archery Target\">\n";
        print "<div class=\"w3-display-left w3-container\">\n";
        print "<table class=\"w3-table w3-centered w3-xlarge w3-text-shadow\">\n";
        print "<TR class=\"w3-left-align\">\n";
        print "<TD class=\"w3-text-light-grey\">$Gold<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"G\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-black\">$Red<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"R\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-white\">$Blue<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"B\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-light-gray\">$Black<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"K\"></TD>\n";
        print "<TD></TD><TD class=\"w3-text-dark-gray\">$White<BR><input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"W\"></TD>\n";
        print "<TD></TD>\n";
        print "</TR>\n";
        print "</TABLE>\n";
        print "</div>\n";
        print "</div>\n";
        print "<div id=\"MoArch\" class=\"w3-container w3-purple\">\n";
        print "<table class=\"w3-table w3-centered\"> \n";
        print "<TR><TD>Miss<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"M\"></TD>\n";
        print "<TD>Bounce<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"N\"></TD>\n";
        print "<TD>Dropout<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"D\"></TD>\n";
        print "<TD>P/T<input class=\"w3-radio\" type=\"radio\" name=\"Pass3\" value=\"P\"></TD>\n";
        print "<TD></TD></TR>\n";
        print "<TR><TD colspan=4 valign=\"middle\">Correct Technique:<input class=\"w3-check\" type=\"checkbox\" name=\"TechOK\" value=\"$run\" checked=\"checked\"></TD></TR>\n";
        print "</TABLE>\n";
        print "</DIV>\n";
        print "<DIV class=\"w3-container w3-pink w3-centered\">\n";
        print "<input type=\"hidden\" name=\"review\" value=\"11\">\n";
        print "<button class=\"w3-btn w3-white\" name=\"run\" type=\"submit\" value=\"$run\">Submit</button> or \n";
        print "<button class=\"w3-btn w3-black\" name=\"run\" type=\"reset\" value=\"$run\">Reset</button>\n";
        ShowDebug(get_defined_vars(),$vars_start);
        print "</DIV>\n";
       die;
    }

    // If $review is set, The run has been completed.

    IF ($review > 0) {


        $subscore = 0;

        SWITCH ($Pass1) {

            CASE "G":
                $subscore = $subscore + $Gold;
                break;
            CASE "R":
                $subscore = $subscore + $Red;
                break;
            CASE "B":
                $subscore = $subscore + $Blue;
                break;
            CASE "K":
                $subscore = $subscore + $Black;
                break;
            CASE "W":
                $subscore = $subscore + $White;
                break;
            DEFAULT:
                $_SESSION['Caution'] = "Pass one scored as a miss<BR>";
                break;
        }
        SWITCH ($Pass2) {

            CASE "G":
                $subscore = $subscore + $Gold;
                break;
            CASE "R":
                $subscore = $subscore + $Red;
                break;
            CASE "B":
                $subscore = $subscore + $Blue;
                break;
            CASE "K":
                $subscore = $subscore + $Black;
                break;
            CASE "W":
                $subscore = $subscore + $White;
                break;
            DEFAULT:
                $_SESSION['Caution'] = $_SESSION['Caution'] . "Pass two scored as a miss<BR>";
                break;
        }
        SWITCH ($Pass3) {

            CASE "G":
                $subscore = $subscore + $Gold;
                break;
            CASE "R":
                $subscore = $subscore + $Red;
                break;
            CASE "B":
                $subscore = $subscore + $Blue;
                break;
            CASE "K":
                $subscore = $subscore + $Black;
                break;
            CASE "W":
                $subscore = $subscore + $White;
                break;
            DEFAULT:
                $_SESSION['Caution'] = $_SESSION['Caution'] . "Pass three scored as a miss<BR>";
                break;
        }

        IF (isset($TechOK) OR $TechOK > 0) {
            $technical = $tech;
        }

        $Score = $subscore + $technical;


        IF ($Score == 0) {
            $_SESSION['Caution'] = $_SESSION['Caution'] . "This score is ZERO<BR>";
        }

        OpenHTML($_SESSION['EName']);

        PageHeadRider("Mounted Archery -- Single Shot", "w3-panel");

        ShowCaution();

        print "<form name=\"MA1review\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

        print "<section class=\"w3-container w3-light-green\">\n";
        print "<H2>Please Review:</H2>\n";

        print "<P>Having shot $Score for Mounted Archery -- Single Shot.</P>\n";
        print "</section>\n";

        print "<section class=\"w3-container w3-pale-yellow w3-padding-8\">\n";
        print "<button class=\"w3-btn w3-red\" name=\"MA1Edit\" value=\"1\">EDIT SCORE</button>\n";
        print "</section>\n";

        print "<section class=\"w3-container w3-pale-blue w3-padding-8\">\n";
        printf("<input type=\"hidden\" name=\"MA1Score\" value=\"%s\">\n", $Score);
        printf("<input type=\"hidden\" name=\"MA1Pass1\" value=\"%s\">\n", $Pass1);
        printf("<input type=\"hidden\" name=\"MA1Pass2\" value=\"%s\">\n", $Pass2);
        printf("<input type=\"hidden\" name=\"MA1Pass3\" value=\"%s\">\n", $Pass3);
        print "<button class=\"w3-btn w3-lime\" name=\"GoodRun\" value=\"1\">CONFIRM</button>\n";
        ShowDebug(get_defined_vars(),$vars_start);
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
