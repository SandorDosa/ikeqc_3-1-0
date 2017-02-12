<?PHP
$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "year.inc";
include "reeds.inc";
include "colors.inc";
// /Dev/Data is hardcoded here, actual use will pass this data via $_POST
include "dev_data.inc";
// End /Dev/Data

IF ($RunReeds) {

    IF ($DEdit > 0) {
        $run = $_SESSION['RiderID'];
        $review = -1;
        unset($DEdit);
        //TODO Breakout which boxes to check for the edit
    }

    IF (!isset($review) OR $review < 0) {

        OpenHTML("Reed Chop");

        ReedsHeader($S1);

        ShowCaution();

        ShowError();

        print "<form name=\"reeds\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
        print "<div id=\"Reeds\" class=\"w3-container $S2\">\n";
        print "<table class=\"w3-table w3-centered\"> \n";
        print "<TR>\n";
        print "<TD COLSPAN=3>Reeds</TD>\n";
        print "</TR>\n";
        print "<TR>\n";
        print "<TD>LEFT</TD>\n";
        print "<TD>LANE</TD>\n";
        print "<TD>RIGHT</TD>\n";
        print "</TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed2L\" class=\"w3-check\" type=\"checkbox\" value=\"$L2\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "2 in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed2R\" class=\"w3-check\" type=\"checkbox\" value=\"$R2\">\n";
        print "</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed4L\" class=\"w3-check\" type=\"checkbox\" value=\"$L4\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "4 in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed4R\" class=\"w3-check\" type=\"checkbox\" value=\"$R4\">\n";
        print "</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed6L\" class=\"w3-check\" type=\"checkbox\" value=\"$L6\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "6 in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed6R\" class=\"w3-check\" type=\"checkbox\" value=\"$R6\">\n";
        print "</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed8L\" class=\"w3-check\" type=\"checkbox\" value=\"$L8\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "8 in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed8R\" class=\"w3-check\" type=\"checkbox\" value=\"$R8\">\n";
        print "</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed9L\" class=\"w3-check\" type=\"checkbox\" value=\"$L10\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "10in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed9R\" class=\"w3-check\" type=\"checkbox\" value=\"$R10\">\n";
        print "</TD></TR></TABLE>\n"; // END of Reeds Cell
        print "</TABLE></DIV>\n";

        print "<input type=\"hidden\" name=\"run\" value=\"$run\">\n";
        print "<DIV class=\"w3-container $S3 w3-center w3-padding-16\">\n";
        print "<input type=\"hidden\" name=\"review\" value=\"11\">\n";
        print "<button class=\"w3-btn w3-white\" name=\"run\" type=\"submit\" value=\"$run\">Submit</button> -or- \n";
        print "<button class=\"w3-btn w3-black\" name=\"run\" type=\"reset\" value=\"$run\">Reset</button>\n";
        print "</DIV>\n";
        die;
    }

    // If $review is set, The run has been completed.

    IF ($review > 0) {
        $Dsubscore = 0;
        $Dcount = 0;
        $Chopped = NULL;
        IF (ISSET($Reed2L)) {
            $Dsubscore = $Dsubscore + $Reed2L;
            $Dcount++;
            $Chopped = "L2 ";
        }
        IF (ISSET($Reed2R)) {
            $Dsubscore = $Dsubscore + $Reed2R;
            $Dcount++;
            $Chopped = $Chopped . "R2 ";
        }
        IF (ISSET($Reed4L)) {
            $Dsubscore = $Dsubscore + $Reed4L;
            $Dcount++;
            $Chopped = $Chopped . "L4 ";
        }
        IF (ISSET($Reed4R)) {
            $Dsubscore = $Dsubscore + $Reed4R;
            $Dcount++;
            $Chopped = $Chopped . "R4 ";
        }
        IF (ISSET($Reed6L)) {
            $Dsubscore = $Dsubscore + $Reed6L;
            $Dcount++;
            $Chopped = $Chopped . "L6 ";
        }
        IF (ISSET($Reed6R)) {
            $Dsubscore = $Dsubscore + $Reed6R;
            $Dcount++;
            $Chopped = $Chopped . "R6 ";
        }
        IF (ISSET($Reed8L)) {
            $Dsubscore = $Dsubscore + $Reed8L;
            $Dcount++;
            $Chopped = $Chopped . "L8 ";
        }
        IF (ISSET($Reed8R)) {
            $Dsubscore = $Dsubscore + $Reed8R;
            $Dcount++;
            $Chopped = $Chopped . "R8 ";
        }
        IF (ISSET($Reed9L)) {
            $Dsubscore = $Dsubscore + $Reed9L;
            $Dcount++;
            $Chopped = $Chopped . "L10 ";
        }
        IF (ISSET($Reed9R)) {
            $Dsubscore = $Dsubscore + $Reed9R;
            $Dcount++;
            $Chopped = $Chopped . "R10 ";
        }


        $Dscore = $Dsubscore;
        IF ($Dcount == 0 OR $Dscore == 0) {
            $_SESSION['Caution'] = "No Reeds selected.  This score is ZERO<BR>";
        }

        OpenHTML("Reed Chop");

        ReedsHeader($S1);

        ShowCaution();


        print "<form name=\"reedsreview\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

        print "<section class=\"w3-container $S2\">\n";
        print "<H2>Please Review:</H2>\n";

        print "<P>Chopped ".$Chopped."reeds scoring $Dscore for those $Dcount Reeds.</P>\n";
        print "</section>\n";

        print "<section class=\"w3-container $S3 w3-padding-8\">\n";
        print "<button class=\"w3-btn w3-red\" name=\"DEdit\" value=\"1\">EDIT SCORE</button> -or- \n";
        print "<button class=\"w3-btn w3-lime\" name=\"GoodRun\" value=\"1\">CONFIRM</button>\n";

        printf("<input type=\"hidden\" name=\"Reed2L\" value=\"%s\">\n", $Reed2L);
        printf("<input type=\"hidden\" name=\"Reed2R\" value=\"%s\">\n", $Reed2R);
        printf("<input type=\"hidden\" name=\"Reed4L\" value=\"%s\">\n", $Reed4L);
        printf("<input type=\"hidden\" name=\"Reed4R\" value=\"%s\">\n", $Reed4R);
        printf("<input type=\"hidden\" name=\"Reed6L\" value=\"%s\">\n", $Reed6L);
        printf("<input type=\"hidden\" name=\"Reed6R\" value=\"%s\">\n", $Reed6R);
        printf("<input type=\"hidden\" name=\"Reed8L\" value=\"%s\">\n", $Reed8L);
        printf("<input type=\"hidden\" name=\"Reed8R\" value=\"%s\">\n", $Reed8R);
        printf("<input type=\"hidden\" name=\"Reed9L\" value=\"%s\">\n", $Reed9L);
        printf("<input type=\"hidden\" name=\"Reed9R\" value=\"%s\">\n", $Reed9R);
        printf("<input type=\"hidden\" name=\"Dcount\" value=\"%s\">\n", $Dcount);
        printf("<input type=\"hidden\" name=\"Dscore\" value=\"%s\">\n", $Dscore);
        ShowDebug(get_defined_vars(),$vars_start);
        die;
    }


// If $GoodRun is set, the score has been reviewed and confirmed.

    IF ($run > 0 AND $GoodRun > 0) {
        $setRup = "INSERT INTO reeds (PID,HID,EID,DVN,L2,L4,L6,L8,L10,R2,R4,R6,R8,R10,SDcount,SDcount,SDcount,SDyear) VALUES ({$_SESSION['RiderID']},9999,{$_SESSION['EID']},{$_SESSION['RiderDVN']},$Reed2L,$Reed4L,$Reed6L,$Reed8L,$Reed10L,$Reed2R,$Reed4R,$Reed6R,$Reed8R,$Reed10R,$Dcount,$Dscore,'U',$anyear)";
        //IF ($Rup = mysql_query($setRup, $db)) {
        IF (isset($setRup)) {
            IF ($Rup) {
                //$_SESSION['ER']--;

                OpenHTML($_SESSION['EName']);

                PageHeadRider("Reed Chop", "w3-panel");



                print "<form name=\"reedsdone\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

                print "<section class=\"w3-container w3-light-green\">\n";
                print "<H2>Score saved.</H2>\n";
                print "<P>$setRup</P>";
                print "</section>\n";

                print "<section class=\"w3-container w3-pale-yellow w3-padding-8\">\n";
                print "<P>Are we staying with ";
                print "<button class=\"w3-btn w3-amber\" name=\"NextRider\" value=\"1\">THIS RIDER</button>";
                print " or ";
                print "<button class=\"w3-btn w3-lime\" name=\"NextGame\" value=\"1\">THIS GAME</button> for the next run?\n";
                print "</section>\n";
                die;
            }
        } ELSE {
            print "Something went wrong, click <A HREF=\"{$_SERVER['PHP_SELF']}?\">here</A> to try again.\n";
            print "<PRE>";
            print_r($_POST);
            print_r($_SESSION);
            die(mysql_error());
        }

    }

}
// Production fallback to main module if the module state is no longer true.
// Disabled for development and debug.
// ] ELSE { // End RunReeds
// header('location: ' . '/sandbox/TOTF.php?FailReturn=1');
// }
