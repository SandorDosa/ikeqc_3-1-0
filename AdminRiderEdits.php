<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Rider Edits approval page</title>
</head>
<BODY>
<form name="edits" action="<?PHP ECHO $PHP_SELF; ?>" method="POST">
<?PHP
// TEride.php
// v0.01
// Sandor Dosa
//
// This script draws in requested edits to a Rider's profile, allows for review and approval.
// Set Alpha -- Unseen and Pending records.
// Set Bravo -- EditID to review.


include "year.inc";  // SQL SCAIKEqC SANDBOX Database login
include "ikeqcfuncs.inc";

IF (isset($_GET["EditID"])) {  // Show Details Block
	$setb = mysql_query("SELECT * FROM edit_riders WHERE EditID = {$_GET['EditID']}", $db);
	IF ($B = mysql_fetch_array($setb)) {
		$King = KingLook($B[18]);
		$KingNew = KingLook($B[19]);
		$HG = GroupLook($B[20]);
		$HGNew = GroupLook($B[21]);
		$KOld = $B[18];
		$KNew = $B[19];
		$HGOld = $B[20];
		$HGNew = $B[21];
/*
        // Decoding the array for nice display
		for ($i = 0 ; $i > 29 ; $i++) { // adjust the middle value for the number of items in the array $B[x]
			if (is_string($B[$i])) {
				${"BB".$i} = stripslashes($B[$i]);
			} ELSE IF ($is_null($B[$i])) {
				${"BB".$i} = "NULL";
			}
		}
		// end decoding

		
*/		
		
		
		print "<TABLE BORDER=1>\n";  // Three pane overwindow
		printf("<TR><TD>EditID:%s</TD><TD><H2>Current</H2></TD><TD><H2>Requested Edits</H2></TD></TR>\n", $B[0], stripslashes($B[2]));
		print "<TR><TD>\n";
			print "<TABLE>\n"; // Left pane, Headers
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
			print "<TABLE>\n"; // Center Pane, Exisiting Data
				printf("<TR><TD>-%s</TD></TR>\n", $BB2);
				printf("<TR><TD>-%s</TD></TR>\n", $BB4);
				printf("<TR><TD>-%s</TD></TR>\n", $BB6);
				printf("<TR><TD>-%s</TD></TR>\n", $BB8);
				printf("<TR><TD>-%s</TD></TR>\n", $BB10);
				printf("<TR><TD>-%s</TD></TR>\n", $BB12);
				printf("<TR><TD>-%s</TD></TR>\n", $BB14);
				printf("<TR><TD>-%s</TD></TR>\n", $BB16);
				printf("<TR><TD>-%s</TD></TR>\n", $King[0]);
				printf("<TR><TD>-%s</TD></TR>\n", $HG);
				printf("<TR><TD>-%s</TD></TR>\n", $BB22);
				printf("<TR><TD>-%s</TD></TR>\n", $BB24);
				printf("<TR><TD>-%s</TD></TR>\n", $BB26);
			print "</TABLE>\n"; // End Center Pane
		print "</TD><TD>\n";
			print "<TABLE>\n"; // Right Pane, Requested edits
				printf("<TR><TD>-%s</TD></TR>\n", $BB3);
				printf("<TR><TD>-%s</TD></TR>\n", $BB5);
				printf("<TR><TD>-%s</TD></TR>\n", $BB7);
				printf("<TR><TD>-%s</TD></TR>\n", $BB9);
				printf("<TR><TD>-%s</TD></TR>\n", $BB11);
				printf("<TR><TD>-%s</TD></TR>\n", $BB13);
				printf("<TR><TD>-%s</TD></TR>\n", $BB15);
				printf("<TR><TD>-%s</TD></TR>\n", $BB17);
				printf("<TR><TD>-%s</TD></TR>\n", $KingNew[0]);
				printf("<TR><TD>-%s</TD></TR>\n", $HGNew);
				printf("<TR><TD>-%s</TD></TR>\n", $BB23);
				printf("<TR><TD>-%s</TD></TR>\n", $BB25);
				printf("<TR><TD>-%s</TD></TR>\n", $BB27);
			print "</TABLE>\n"; // End of Right Pane
		print "</TD></TR></TABLE><HR>\n";
		print "Here will be buttons that will either DISMISS (ignore), APPROVE (schedule), PEND (pending), or PUSH (update at once).\n";
		die;

/*  Update buttons.

        // Encoding the data for insertion back into the database
		for ($i = 0 ; $i > 29 ; $i++) {
			if (is_string(${"BB".$i})) {
				${"EN".$i} = addslashes(${"BB".$i});
			} ELSE IF (${"BB".$i} == "NULL") {
				${"EN".$i} = NULL;
			}
		}
		// end encoding




*/




	} ELSE {
		printf("Something went wrong, click <A HREF=\"%s?\">here</A> to try again.\n", $PHP_SELF);
		die(mysql_error());
	}
}  // End of Detail Block


// Display Block
$seta = mysql_query("SELECT * FROM edit_riders WHERE ((modStatus = 'N' || modStatus = 'P'))", $db);
IF ($A = mysql_fetch_array($seta)) {
	print "<TABLE BORDER=1>\n";
	print "<TR><TD>RecNum</TD><TD>Rider</TD><TD>Action</TD><TD>Status</TD></TR>\n";
	do {
		IF ($A[29] == "N") {
			$AA = "Unseen";
		} ELSEIF ($A[29] == "P") {
			$AA = "Pending";
		} ELSE {
			$AA = "Error";
		}
		printf("<TR><TD>%s</TD><TD>%s</TD><TD><A HREF=\"%s?EditID=%s\">review</A></TD><TD>%s</TD></TR>\n", $A[0], stripslashes($A[2]), $PHP_SELF, $A[0], $AA);
	} while ($A = mysql_fetch_array($seta));
	print "</TABLE>\n";
	print_r($A);
} ELSE {
	print "No unseen or pending edits.\n";
}	
// Display Block


?>
