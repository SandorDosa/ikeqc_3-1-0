<?PHP

session_start();
include "ikeqcfuncs.inc";
include "year.inc";
// /Dev/Data is hardcoded here, actual use will pass this data via $_POST
include "dev_data.inc";
// End /Dev/Data
$_SESSION['RiderHonors'] = $RiderHonors;
$_SESSION['RiderName'] = $RiderName;
$_SESSION['RiderID'] = $RiderID;
$_SESSION['RiderDVN'] = $RiderDVN;
$_SESSION['EName'] = $EName;

IF ($RunRings) {

    IF ($RingsEdit > 0) {
        $run = $_SESSION['RiderID'];
        $review = -1;
    }

    IF (!isset($review) OR $review < 0) {

        OpenHTML($_SESSION['EName']);

        PageHeadRider("Ring Tilt", "w3-panel");

        ShowCaution();

        ShowError();

        print "<section class=\"w3-container\">\n";
        print "<form name=\"rings\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
        print "<div id=\"Rings\" class=\"w3-container w3-indigo\">\n";
		print "<table class=\"w3-table w3-centered\"> \n";
		print "<TR>\n";
		print "<TD COLSPAN=2>Rings</TD>\n";
		print "</TR>\n";
		print "<TR>\n";
		print "<TD>LEFT SIDE</TD>\n";
		print "<TD>RIGHT SIDE</TD>\n";
		print "</TR>\n";
		print "<TR>\n";
		print "<TD>\n";
        print "6\"<INPUT NAME=\"Ring6L\" class=\"w3-check\" type=\"checkbox\" value=\"4\">-OR-\n";
		print "<INPUT NAME=\"Ring1L\" class=\"w3-check\" type=\"checkbox\" value=\"20\">1\"\n";
        print "</TD>\n";

		print "\n";
        print "<TD>\n";
		print "1\"<INPUT NAME=\"Ring1R\" class=\"w3-check\" type=\"checkbox\" value=\"20\">-OR-\n";
        print "<INPUT NAME=\"Ring6R\" class=\"w3-check\" type=\"checkbox\" value=\"4\">6\"\n";
		print "</TD>\n";
		print "</TR>\n";
		print "<TR>\n";
        print "<TD>\n";
		print "5\"<INPUT NAME=\"Ring5L\" class=\"w3-check\" type=\"checkbox\" value=\"6\">-OR-\n";
        print "<INPUT NAME=\"Ring2L\" class=\"w3-check\" type=\"checkbox\" value=\"15\">2\"\n";

		print "</TD>\n";
        print "\n";
		print "<TD>\n";
        print "2\"<INPUT NAME=\"Ring2R\" class=\"w3-check\" type=\"checkbox\" value=\"15\">-OR-\n";
		print "<INPUT NAME=\"Ring5R\" class=\"w3-check\" type=\"checkbox\" value=\"6\">5\"\n";
		print "</TD>\n";
		print "</TR>\n";
        print "<TR>\n";
		print "<TD>\n";
        print "4\"<INPUT NAME=\"Ring4L\" class=\"w3-check\" type=\"checkbox\"  value=\"8\">-OR-\n";
        print "<INPUT NAME=\"Ring3L\" class=\"w3-check\" type=\"checkbox\"  value=\"10\">3\"\n";
        print "</TD>\n";
		print "\n";
        print "<TD>\n";
		print "3\"<INPUT NAME=\"Ring3R\" class=\"w3-check\" type=\"checkbox\"  value=\"10\">-OR-\n";
		print "<INPUT NAME=\"Ring4R\" class=\"w3-check\" type=\"checkbox\"  value=\"8\">4\"\n";
		print "</TD>\n";

        print "</TABLE></DIV>\n";

        print "<input type=\"hidden\" name=\"run\" value=\"$run\">\n";
        print "<button class=\"w3-btn w3-black\" name=\"review\" value=\"11\">Submit</button>\n";
        die;
    }

    // If $review is set, The run has been completed.

    IF ($review > 0) {
        $Rsubscore = 0;
        $Rcount = 0;
        $Arm1 = 0;
        $Arm2 = 0;
        $Arm3 = 0;
        $Arm4 = 0;
        $Arm5 = 0;
        $Arm6 = 0;
        $badrings = 0;
        IF (ISSET($Ring1L)) {
            $Rsubscore = $Rsubscore + $Ring1L;
            $Arm1++;
            $Rcount++;
        }
        IF (ISSET($Ring1R)) {
            $Rsubscore = $Rsubscore + $Ring1R;
            $Arm6++;
            $Rcount++;
        }
        IF (ISSET($Ring2L)) {
            $Rsubscore = $Rsubscore + $Ring2L;
            $Arm2++;
            $Rcount++;
        }
        IF (ISSET($Ring2R)) {
            $Rsubscore = $Rsubscore + $Ring2R;
            $Arm5++;
            $Rcount++;
        }
        IF (ISSET($Ring3L)) {
            $Rsubscore = $Rsubscore + $Ring3L;
            $Arm3++;
            $Rcount++;
        }
        IF (ISSET($Ring3R)) {
            $Rsubscore = $Rsubscore + $Ring3R;
            $Arm4++;
            $Rcount++;
        }
        IF (ISSET($Ring4L)) {
            $Rsubscore = $Rsubscore + $Ring4L;
            $Arm3++;
            $Rcount++;
        }
        IF (ISSET($Ring4R)) {
            $Rsubscore = $Rsubscore + $Ring4R;
            $Arm4++;
            $Rcount++;
        }
        IF (ISSET($Ring5L)) {
            $Rsubscore = $Rsubscore + $Ring5L;
            $Arm2++;
            $Rcount++;
        }
        IF (ISSET($Ring5R)) {
            $Rsubscore = $Rsubscore + $Ring5R;
            $Arm5++;
            $Rcount++;
        }
        IF (ISSET($Ring6L)) {
            $Rsubscore = $Rsubscore + $Ring6L;
            $Arm1++;
            $Rcount++;
        }
        IF (ISSET($Ring6R)) {
            $Rsubscore = $Rsubscore + $Ring6R;
            $Arm6++;
            $Rcount++;
        }
        $Rscore = $Rsubscore;
        IF ($Rcount == 0) {
            $_SESSION['Caution'] = "No Rings selected.  This score is ZERO<BR>";
        }
        IF ($Arm1 > 1) {
            $badrings++;
        }
        IF ($Arm2 > 1) {
            $badrings++;
        }
        IF ($Arm3 > 1) {
            $badrings++;
        }
        IF ($Arm4 > 1) {
            $badrings++;
        }
        IF ($Arm5 > 1) {
            $badrings++;
        }
        IF ($Arm6 > 1) {
            $badrings++;
        }
        IF ($badrings > 0) {
            $_SESSION['EntryError'] = "You selected both rings at the same time.<BR>";
            header('Location: ' . $_SERVER['PHP_SELF']);
            die;
        }

        OpenHTML($_SESSION['EName']);

        PageHeadRider("Ring Tilt", "w3-panel");

        ShowCaution();


        print "<form name=\"ringsreview\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

        print "<section class=\"w3-container w3-light-green\">\n";
        print "<H2>Please Review:</H2>\n";

        print "<P>Having taken ".$Rcount." rings scoring ".$Rscore." for the Rings Course.</P>\n";
        print "</section>\n";

        print "<section class=\"w3-container w3-pale-yellow w3-padding-8\">\n";
        print "<button class=\"w3-btn w3-red\" name=\"RingsEdit\" value=\"1\">EDIT SCORE</button>\n";
        print "</section>\n";

        print "<section class=\"w3-container w3-pale-blue w3-padding-8\">\n";

        printf("<input type=\"hidden\" name=\"Ring1L\" value=\"%s\">\n", $Ring1L);
        printf("<input type=\"hidden\" name=\"Ring1R\" value=\"%s\">\n", $Ring1R);
        printf("<input type=\"hidden\" name=\"Ring2L\" value=\"%s\">\n", $Ring2L);
        printf("<input type=\"hidden\" name=\"Ring2R\" value=\"%s\">\n", $Ring2R);
        printf("<input type=\"hidden\" name=\"Ring3L\" value=\"%s\">\n", $Ring3L);
        printf("<input type=\"hidden\" name=\"Ring3R\" value=\"%s\">\n", $Ring3R);
        printf("<input type=\"hidden\" name=\"Ring4L\" value=\"%s\">\n", $Ring4L);
        printf("<input type=\"hidden\" name=\"Ring4R\" value=\"%s\">\n", $Ring4R);
        printf("<input type=\"hidden\" name=\"Ring5L\" value=\"%s\">\n", $Ring5L);
        printf("<input type=\"hidden\" name=\"Ring5R\" value=\"%s\">\n", $Ring5R);
        printf("<input type=\"hidden\" name=\"Ring6L\" value=\"%s\">\n", $Ring6L);
        printf("<input type=\"hidden\" name=\"Ring6R\" value=\"%s\">\n", $Ring6R);
        printf("<input type=\"hidden\" name=\"Rcount\" value=\"%s\">\n", $Rcount);
        printf("<input type=\"hidden\" name=\"Rscore\" value=\"%s\">\n", $Rscore);
        print "<button class=\"w3-btn w3-lime\" name=\"GoodRun\" value=\"1\">CONFIRM</button>\n";
        die;
    }


// If $GoodRun is set, the score has been reviewed and confirmed.

    IF ($run > 0 AND $GoodRun > 0) {
        $setRup = "INSERT INTO rings (PID,HID,EID,DVN,L1,L2,L3,L4,L5,L6,R1,R2,R3,R4,R5,R6,SRcount,SRscore,SRseen,SRyear) VALUES ({$_SESSION['RiderID']},9999,{$_SESSION['EID']},{$_SESSION['RiderDVN']},$Ring1L,$Ring2L,$Ring3L,$Ring4L,$Ring5L,$Ring6L,$Ring1R,$Ring2R,$Ring3R,$Ring4R,$Ring5R,$Ring6R,$Rcount,$RScore,'U',$anyear)";
        //IF ($Rup = mysql_query($setRup, $db)) {
        IF (isset($setRup)) {
            IF ($Rup) {
                //$_SESSION['ER']--;

                OpenHTML($_SESSION['EName']);

                PageHeadRider("Ring Tilt", "w3-panel");



                print "<form name=\"ringsdone\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

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
// ] ELSE { // End RunHeads
// header('location: ' . '/sandbox/TOTF.php?FailReturn=1');
// }

