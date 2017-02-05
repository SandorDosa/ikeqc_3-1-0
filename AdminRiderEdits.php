<?php
// TEST-Edit-riders Auth script
// Sandor Dosa
// AdminRiderEdits.php
// v0.07
// 25 Jan 2017
// This script draws in requested edits to a Rider's profile, allows for review and approval.
// Set Alpha -- Unseen and Pending records.
// Set Bravo -- EditID to review.
// Set Charlie -- Approved Edit Updates

session_start();
include "year.inc";
include "ikeqcfuncs.inc";

IF (isset($approve)) {
    $QueryUp = stripcslashes($_SESSION['EditQuery']);
    $setc = mysql_query($QueryUp, $db);
    IF ($setc) {
        $_SESSION['LastEdit'] = $OldEditID;
        $setcc = mysql_query("UPDATE edit_riders SET modStatus=\"A\" WHERE EditID=$OldEditID", $db);

    } ELSE {
        print $QueryUp;
        print_r($_SESSION);
        die(mysql_error());
    }
    header('Location: '.$_SERVER['PHP_SELF']);
    die;
}

IF (isset($pend)) {
    IF ($OldStatus != "P") {
        $setc = mysql_query("UPDATE edit_riders SET modStatus=\"P\" WHERE EditID=$OldEditID", $db);
        IF ($setc) {
            $_SESSION['LastEdit'] = $OldEditID;
        }
    } ELSE {
        print $QueryUp;
        print_r($_SESSION);
        die(mysql_error());    }
    header('Location: '.$_SERVER['PHP_SELF']);
    die;
}

IF (isset($reject)) {
    $setc = mysql_query("UPDATE edit_riders SET modStatus=\"X\" WHERE EditID=$OldEditID", $db);
    IF ($setc) {
        $_SESSION['LastEdit'] = $_POST['OldEditID'];
    } ELSE {
        print $QueryUp;
        print_r($_SESSION);
        die(mysql_error());    }
    header('Location: '.$_SERVER['PHP_SELF']);
    die;
}

IF (isset($EditID)) {
    $setb = mysql_query("SELECT * FROM edit_riders WHERE EditID = '$EditID'", $db);
    IF ($B = mysql_fetch_array($setb)) {
        $King = KingLook($B[18]);
        $KingNew = KingLook($B[19]);
        $HG = GroupLook($B[20]);
        $HGNew = GroupLook($B[21]);

        print "<!DOCTYPE html>\n";
        print "<html>\n";
        print "<title>Rider Edit Approval Page</title>\n";
        print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
        print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

        print "<header class=\"w3-panel\">\n";
        print "<H1>Rider Edits:</H1>\n";
        print "</header>\n";

        print "<form name=\"edits\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";

        print "<section class\"w3-container\">\n";
        print "<table class=\"w3-table\">\n";  // Three pane overwindow
        printf("<TR><TD>EditID:%s</TD><TD><H2>Current</H2></TD><TD><H2>Requested Edits</H2></TD></TR>\n", $B[0], stripslashes($B[2]));
        print "<TR><TD>\n";
        print "<table class=\"w3-table-all\">\n"; // Left pane, Headers
        print "<TR><TD ALIGN=RIGHT>Name</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>CKA</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>AKA</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>MKA</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Honors</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Phone</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Email</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Webpage</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Kingdom</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>GType</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Home Group</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Retired?</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>Soundex</TD></TR>\n";
        print "</TABLE>\n"; // End Left Pane
        print "</TD><TD>\n";
        print "<table class=\"w3-table-all\">\n"; // Center Pane, Exisiting Data
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[2]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[4]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[6]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[8]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[10]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[12]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[14]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[16]));
        printf("<TR><TD>-%s</TD></TR>\n", $King[0]);
        printf("<TR><TD>-%s</TD></TR>\n", $HG);
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[22]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[24]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[26]));
        print "</TABLE>\n"; // End Center Pane
        print "</TD><TD>\n";
        print "<table class=\"w3-table-all\">\n"; // Right Pane, Requested edits
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[3]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[5]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[7]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[9]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[11]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[13]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[15]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[17]));
        printf("<TR><TD>-%s</TD></TR>\n", $KingNew[0]);
        printf("<TR><TD>-%s</TD></TR>\n", $HGNew);
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[23]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[25]));
        printf("<TR><TD>-%s</TD></TR>\n", stripslashes($B[27]));
        print "</TABLE>\n"; // End of Right Pane
        print "</TD></TR></TABLE><HR>\n";

        $UP = "UPDATE riders SET ";
        $UP2 = "WHERE PID = ".$B[1]." LIMIT 1;\n";

        IF (!is_null($B[3])) {
            IF ($B[2] != $B[3]) {
                $UP = $UP . "PName=\'".$B[3]."\',";
                $UPD++;
            }
        }
        IF (!is_null($B[5])) {
            IF ($B[4] != $B[5]) {
                $UP = $UP . "Pcka=\'".$B[5]."\',";
                $UPD++;
            }
        } ELSE {
            $UP = $UP . "Pcka= NULL";
        }
        IF (!is_null($B[7])) {
            IF ($B[6] != $B[7]) {
                $UP = $UP . "Paka=\'".$B[7]."\',";
                $UPD++;
            }
        } ELSE {
            $UP = $UP . "Paka = NULL";
        }
        IF (!is_null($B[9])) {
            IF ($B[8] != $B[9]) {
                $UP = $UP . "Pmka=\'".$B[9]."\',";
                $UPD++;
            }
        }
        IF (!is_null($B[11])) {
            IF ($B[10] != $B[11]) {
                $UP = $UP . "PHonors=\'".$B[11]."\',";
                $UPD++;
            }
        } ELSE {
            $UP = $UP . "PHonors = NULL";
        }
        IF (!is_null($B[13])) {
            IF ($B[12] != $B[13]) {
                $UP = $UP . "PPhone=\'".$B[13]."\',";
                $UPD++;
            }
        } ELSE {
            $UP = $UP . "PPhone = NULL";
        }
        IF (!is_null($B[15])) {
            IF ($B[14] != $B[15]) {
                $UP = $UP . "PEmail=\'".$B[15]."\',";
                $UPD++;
            }
        } ELSE {
            $UP = $UP . "PEmail = NULL";
        }
        IF (!is_null($B[17])) {
            IF ($B[16] != $B[17]) {
                $UP = $UP . "PBio=\'".$B[17]."\',";
                $UPD++;
            }
        } ELSE {
            $UP = $UP . "Pbio = NULL";
        }
        IF (!is_null($B[19])) {
            IF ($KOld != $KNew) {
                $UP = $UP . " PKing=\'".$KNew."\',";
                $UPD++;
            }
        }
        IF (!is_null($B[21])) {
            IF ($HG != $HGNew) {
                $UP = $UP . " PGtype=\'".$HGNew."\',";
                $UPD++;
            }
        }
        IF (!is_null($B[23])) {
            IF ($B[22] != $B[23]) {
                $UP = $UP . "PHG=\'".$B[23]."\',";
                $UPD++;
            }
        }

        IF (!is_null($B[25])) {
            IF ($B[24] != $B[25]) {
                $UP = $UP . "Pret=\'".$B[25]."\',";
                $UPD++;
            }
        }
        $UP = $UP . "PSdx= \'".soundex($B[3])."\' ";
        $UP = $UP . $UP2;
        echo "<HR>\n";
        echo stripslashes($UP);
        echo "<HR>\n";
        $_SESSION['EditQuery'] = $UP;
        printf("<input type=\"hidden\" name=\"EditUp\" value=\"%s\">\n", $B[0]);
        printf("<input type=\"hidden\" name=\"OldEditID\" value=\"%s\">\n", $B[0]);
        printf("<input type=\"hidden\" name=\"OldStatus\" value=\"%s\">\n", $B['modStatus']);


        print "<P><button class=\"w3-btn w3-green\" name=\"approve\">Approve</button>\n";
        print "<button class=\"w3-btn w3-yellow\" name=\"pend\">No Action</button>\n";
        print "<button class=\"w3-btn w3-red\" name=\"reject\">Reject</button></p>\n";
        print "Form:  name=\"edits\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
        print "</form>\n";
        die;


    } ELSE {
        printf("Something went wrong, click <A HREF=\"%s?\">here</A> to try again.\n", $_SERVER['PHP_SELF']);
        print "<PRE>";
        print_r($_POST);
        die(mysql_error());
    }
}  // End of Detail Block

// Display Block
$seta = mysql_query("SELECT * FROM edit_riders WHERE (modStatus = 'N' OR modStatus = 'P')", $db);
IF ($A = mysql_fetch_array($seta)) {
    print "<!DOCTYPE html>\n";
    print "<html>\n";
    print "<title>Rider Edit Approval Page</title>\n";
    print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
    print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

    print "<header class=\"w3-panel\">\n";
    print "<H1>Rider Edits:</H1>\n";
    print "</header>\n";

    print "<form name=\"edits\" action=\"{$_SERVER['PHP_SELF']}\" method=\"POST\">\n";
	print "<TABLE BORDER=1>\n";
	print "<TR><TD>RecNum</TD><TD>Rider</TD><TD>Action</TD><TD>Status</TD></TR>\n";
	do {
		IF ($A['modStatus'] == "N") {
			$AA = "New";
		} ELSEIF ($A['modStatus'] == "P") {
			$AA = "Pending";
		} ELSE {
			$AA = "Error";
		}
		printf("<TR><TD>%s</TD><TD>%s</TD><TD><button class=\"w3-btn w3-lime\" name=\"EditID\" value=\"%s\">review</button></TD><TD>%s</TD></TR>\n", $A[0], stripslashes($A[2]), $A[0], $AA);
	} while ($A = mysql_fetch_array($seta));
	print "</TABLE>\n";
//	print_r($A);
} ELSE {
	print "No unseen or pending edits.\n";
} // End of Display Block


?>
