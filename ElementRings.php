<?PHP
$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "year.inc";
include "rings.inc";
include "colors.inc";
// /Dev/Data is hardcoded here, actual use will pass this data via $_POST
include "dev_data.inc";
// End /Dev/Data


IF ($_SESSION['RunRings']) {

    IF (isset($REdit)) {
        $run = $_SESSION['RiderID'];
        $review = -1;
        unset($REdit);
        //TODO Breakout which boxes to check for the edit
    }

    IF (!isset($review) OR $review < 0) {

        OpenHTML("Ring Tilt");

        RingsHeader($S1);

        

        

        print "<form name=\"rings\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
        print "<div id=\"Rings\" class=\"w3-container $S2\">\n";
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
        print "6\"<INPUT NAME=\"Ring6L\" class=\"w3-check\" type=\"checkbox\" value=\"$L6\">-OR-\n";
		print "<INPUT NAME=\"Ring1L\" class=\"w3-check\" type=\"checkbox\" value=\"$L1\">1\"\n";
        print "</TD>\n";

		print "\n";
        print "<TD>\n";
		print "1\"<INPUT NAME=\"Ring1R\" class=\"w3-check\" type=\"checkbox\" value=\"$R1\">-OR-\n";
        print "<INPUT NAME=\"Ring6R\" class=\"w3-check\" type=\"checkbox\" value=\"$R6\">6\"\n";
		print "</TD>\n";
		print "</TR>\n";
		print "<TR>\n";
        print "<TD>\n";
		print "5\"<INPUT NAME=\"Ring5L\" class=\"w3-check\" type=\"checkbox\" value=\"$L5\">-OR-\n";
        print "<INPUT NAME=\"Ring2L\" class=\"w3-check\" type=\"checkbox\" value=\"$L2\">2\"\n";

		print "</TD>\n";
        print "\n";
		print "<TD>\n";
        print "2\"<INPUT NAME=\"Ring2R\" class=\"w3-check\" type=\"checkbox\" value=\"$R2\">-OR-\n";
		print "<INPUT NAME=\"Ring5R\" class=\"w3-check\" type=\"checkbox\" value=\"$R5\">5\"\n";
		print "</TD>\n";
		print "</TR>\n";
        print "<TR>\n";
		print "<TD>\n";
        print "4\"<INPUT NAME=\"Ring4L\" class=\"w3-check\" type=\"checkbox\"  value=\"$L4\">-OR-\n";
        print "<INPUT NAME=\"Ring3L\" class=\"w3-check\" type=\"checkbox\"  value=\"$L3\">3\"\n";
        print "</TD>\n";
		print "\n";
        print "<TD>\n";
		print "3\"<INPUT NAME=\"Ring3R\" class=\"w3-check\" type=\"checkbox\"  value=\"$R3\">-OR-\n";
		print "<INPUT NAME=\"Ring4R\" class=\"w3-check\" type=\"checkbox\"  value=\"$R4\">4\"\n";
		print "</TD>\n";

        print "</TABLE></DIV>\n";

        print "<DIV class=\"w3-container $S3 w3-center w3-padding-16\">\n";
        print "<input type=\"hidden\" name=\"review\" value=\"11\">\n";
        print "<button class=\"w3-btn w3-white\" name=\"run\" type=\"submit\" value=\"$run\">Submit</button> -or- \n";
        print "<button class=\"w3-btn w3-black\" name=\"run\" type=\"reset\" value=\"$run\">Reset</button>\n";
        print "</DIV>\n";
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
        $CollRings = NULL;
        IF (ISSET($Ring1L)) {
            $Rsubscore = $Rsubscore + $Ring1L;
            $Arm1++;
            $Rcount++;
            $CollRings = "L1 ";
        }
        IF (ISSET($Ring1R)) {
            $Rsubscore = $Rsubscore + $Ring1R;
            $Arm6++;
            $Rcount++;
            $CollRings = $CollRings . "R1 ";
        }
        IF (ISSET($Ring2L)) {
            $Rsubscore = $Rsubscore + $Ring2L;
            $Arm2++;
            $Rcount++;
            $CollRings = $CollRings . "L2 ";
        }
        IF (ISSET($Ring2R)) {
            $Rsubscore = $Rsubscore + $Ring2R;
            $Arm5++;
            $Rcount++;
            $CollRings = $CollRings . "R2 ";
        }
        IF (ISSET($Ring3L)) {
            $Rsubscore = $Rsubscore + $Ring3L;
            $Arm3++;
            $Rcount++;
            $CollRings = $CollRings . "L3 ";
        }
        IF (ISSET($Ring3R)) {
            $Rsubscore = $Rsubscore + $Ring3R;
            $Arm4++;
            $Rcount++;
            $CollRings = $CollRings . "R3 ";
        }
        IF (ISSET($Ring4L)) {
            $Rsubscore = $Rsubscore + $Ring4L;
            $Arm3++;
            $Rcount++;
            $CollRings = $CollRings . "L4 ";
        }
        IF (ISSET($Ring4R)) {
            $Rsubscore = $Rsubscore + $Ring4R;
            $Arm4++;
            $Rcount++;
            $CollRings = $CollRings . "R4 ";
        }
        IF (ISSET($Ring5L)) {
            $Rsubscore = $Rsubscore + $Ring5L;
            $Arm2++;
            $Rcount++;
            $CollRings = $CollRings . "L5 ";
        }
        IF (ISSET($Ring5R)) {
            $Rsubscore = $Rsubscore + $Ring5R;
            $Arm5++;
            $Rcount++;
            $CollRings = $CollRings . "R5 ";
        }
        IF (ISSET($Ring6L)) {
            $Rsubscore = $Rsubscore + $Ring6L;
            $Arm1++;
            $Rcount++;
            $CollRings = $CollRings . "L6 ";
        }
        IF (ISSET($Ring6R)) {
            $Rsubscore = $Rsubscore + $Ring6R;
            $Arm6++;
            $Rcount++;
            $CollRings = $CollRings . "R6 ";
        }

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

        IF ($All_big > 0) {
            IF (isset($Ring4R) AND isset($Ring5R) AND isset($Ring6R)) {
                $Rsubscore = $Rsubscore + $All_Big;
                $_SESSION['Caution'] = "Rider took all big rings on the Right side, earning a bonus of $All_Big.<BR>";
            }
            IF (isset($Ring4L) AND isset($Ring5L) AND isset($Ring6L)) {
                $Rsubscore = $Rsubscore + $All_Big;
                $_SESSION['Caution'] = "Rider took all big rings on the Left side, earning a bonus of $All_Big.<BR>";
            }

        }

        $Rscore = $Rsubscore;
        OpenHTML("Ring Tilt");

        RingsHeader($S1);

        


        print "<form name=\"ringsreview\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

        print "<section class=\"w3-container $S2\">\n";
        print "<H2>Please Review:</H2>\n";

        print "<P>Took ".$CollRings."scoring $Rscore for those $Rcount Rings.</P>\n";
        print "</section>\n";

        print "<section class=\"w3-container $S3 w3-padding-8\">\n";
        print "<button class=\"w3-btn w3-red\" name=\"REdit\" value=\"1\">EDIT SCORE</button> -or- \n";
        print "<button class=\"w3-btn w3-lime\" name=\"GoodRun\" value=\"1\">CONFIRM</button>\n";


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
        ShowDebug(get_defined_vars(),$vars_start);

        print "</section>\n";
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

