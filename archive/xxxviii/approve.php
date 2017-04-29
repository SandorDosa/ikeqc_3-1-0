<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Raw scores approval page</title>
</head>
<BODY>
<form name="approvals" action="<?PHP ECHO $PHP_SELF; ?>" method="POST">
<?PHP

include "year.inc";
IF ($maint==1) {
	print "    <H1>Sorry...</H1>\n";
    print "<P>The system is presently undergoing maintenance.  Please try again later.  If you were doing anything here, your work may be lost.</P>\n";
}
// v2.12a
IF (isset($newdata)) {
  $seta = mysql_query("SELECT * FROM $pgyear", $db);
  IF ($L = mysql_num_rows($seta)) {
    $ZL = 0;
    do {
      IF (isset(${"AP".$ZL})) {
        $temp = ${"AP".$ZL};
        switch ($temp) {
          case "Y":
            $seta = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$ZL", $db);  // Y-ankee for Approved High
            $actcount++;
            break;
          case "D":
            $seta = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$ZL", $db);  // D-elta for Approved Low
            $actcount++;
            break;
          case "Z":
            $seta = mysql_query("UPDATE $pgyear SET seen='Z' WHERE YID=$ZL", $db); // Z-ulu for Delete
            $DelYes++;
            $actcount++;
            break;
          default:
            $seta = mysql_query("UPDATE $pgyear SET seen='N' WHERE YID=$ZL", $db);  // N-ovember for Not-approved
            $actcount++;
            break;
        }
        IF (!$seta) {
          echo mysql_error();
          die;
        }
      }
      $ZL++;
    } while ($ZL <= $L);
    echo "<H2>Updates completed.  Approved records now published, revoked records now removed from public display.</H2>\n";
    IF ($actcount > 0) {
    	printf("<P>%s actions preformed.</P>\n", $actcount);
    }
    echo "<P><A HREF=\"approve.php?\">Click Here</A> to return to the raw score listing.\n";
    IF (isset($DelYes)) {
    	print "<H2>PLEASE NOTE!!!</H2>\n";
        print "<P>You have selected several records to be deleted.  These records have been deleted.  **HOWEVER** Sandor can recover them should it become nessisary.</P>\n";
    }
    die;
  }
 }



IF (!isset($toset)) {
  $toset = "$pgyear.EID";
}
?>
<BR CLEAR=ALL>
<blockquote>
<BLOCKQUOTE>
<?PHP
    $seta = mysql_query("SELECT * FROM $pgyear", $db);
  	IF ($Trec = mysql_num_rows($seta)) {
       	$setb = @mysql_query("SELECT * FROM $pgyear WHERE seen='Y'", $db);
	    IF (mysql_num_rows($setb)) {
          $Arec = mysql_num_rows($setb);
        } ELSE {
          $Arec = 0;
        }
        $setc = @mysql_query("SELECT * FROM $pgyear WHERE seen='D'", $db);
	    IF (mysql_num_rows($setc)) {
          $Lrec = mysql_num_rows($setc);
        } ELSE {
          $Lrec = 0;
        }
        $setd = @mysql_query("SELECT * FROM $pgyear WHERE seen='Z'", $db);
	    IF (mysql_num_rows($setd)) {
          $Drec = mysql_num_rows($setd);
        } ELSE {
          $Drec = 0;
        }
        $sete = @mysql_query("SELECT * FROM $pgyear WHERE seen='N'", $db);
	    IF (mysql_num_rows($sete)) {
          $Nrec = mysql_num_rows($sete);
        } ELSE {
          $Nrec = 0;
        }
        $setf = @mysql_query("SELECT * FROM $pgyear WHERE seen IS NULL", $db);
	    IF (mysql_num_rows($setf)) {
          $N1rec = mysql_num_rows($setf);
        } ELSE {
          $N1rec = 0;
        }
        $Nrec = $Nrec + $N1rec;
print "<H2>Database Statistics</H2>\n";
        printf("<P>Of %s entered scores, %s are valid high scores, %s have been exceeded by another better score this year, %s have been deleted from the database, and %s remain to be verified.\n", $Trec, $Arec, $Lrec, $Drec, $Nrec);
    }
print "<HR width=75%>\n";
print "<P>Click <A HREF=\"procscore.php\">here</A> to process LOW scores.</P>\n";
print "<HR width=75%>\n";
print "<CENTER>Filter: <select name=\"limits\">\n";

IF ($limits == "$pgyear.seen='Y' OR $pgyear.seen='D' OR $pgyear.seen='N' OR $pgyear.seen IS NULL") {
print "  <option value=\"$pgyear.seen='Y' OR $pgyear.seen='D' OR $pgyear.seen='N' OR $pgyear.seen IS NULL\" SELECTED>All Records</option>\n";
} ELSE {
print "  <option value=\"$pgyear.seen='Y' OR $pgyear.seen='D' OR $pgyear.seen='N' OR $pgyear.seen IS NULL\">All Records</option>\n";
}
IF ($limits == "$pgyear.seen='Y' OR $pgyear.seen='D'") {
print "  <option value=\"$pgyear.seen='Y' OR $pgyear.seen='D'\" SELECTED>Only Valid & ValidLo</option>\n";
} ELSE {
print "  <option value=\"$pgyear.seen='Y' OR $pgyear.seen='D'\">Only Valid & ValidLo</option>\n";
}
IF ($limits == "$pgyear.seen='Y'") {
print "  <option value=\"$pgyear.seen='Y'\" SELECTED>Only Valid</option>\n";
} ELSE {
print "  <option value=\"$pgyear.seen='Y'\">Only Valid</option>\n";
}
IF ($limits == "$pgyear.seen='D'") {
print "  <option value=\"$pgyear.seen='D'\" SELECTED>Only ValidLo</option>\n";
} ELSE {
print "  <option value=\"$pgyear.seen='D'\">Only ValidLo</option>\n";
}
IF ($limits == "$pgyear.seen='N' OR $pgyear.seen IS NULL") {
print "  <option value=\"$pgyear.seen='N'\" SELECTED>Only Unapproved</option>\n";
} ELSE {
print "  <option value=\"$pgyear.seen='N'\">Only Unapproved</option>\n";
}
$setaa = mysql_query("SELECT * FROM events WHERE Estatus = 'O' && Eyear = $anyear ORDER BY Ename", $db);
IF ($AA = mysql_fetch_row($setaa)) {
	do {
        IF ($limits == "events.EID=".$AA[0]) {
    	print"<option value=\"events.EID=".$AA[0]."\" SELECTED>".$AA[2]."</option>\n";
        } ELSE {
       	print"<option value=\"events.EID=".$AA[0]."\">".$AA[2]."</option>\n";
        }
    } while ($AA = mysql_fetch_row($setaa));
}
?>
</select>
:: Resort by: <select name="toset">
<?php
IF ($toset == "$pgyear.YID") {
print "<option value=\"$pgyear.YID\" SELECTED>Record Number</option>\n";
} ELSE {
print "<option value=\"$pgyear.YID\">Record Number</option>\n";
}
IF ($toset == "$pgyear.YID") {
print "<option value=\"$pgyear.YID DESC\" SELECTED>Record Number, Descending</option>\n";
} ELSE {
print "<option value=\"$pgyear.YID DESC\">Record Number, Descending</option>\n";
}
IF ($toset == "$pgyear.PID") {
print "<option value=\"$pgyear.PID\" SELECTED>Rider's Name</option>\n";
} ELSE {
print "<option value=\"$pgyear.PID\">Rider's Name</option>\n";
}
IF ($toset == "$pgyear.PID DESC") {
print "<option value=\"$pgyear.PID DESC\" SELECTED>Rider's Name, Descending</option>\n";
} ELSE {
print "<option value=\"$pgyear.PID DESC\">Rider's Name, Descending</option>\n";
}
IF ($toset == "$pgyear.HID") {
print "<option value=\"$pgyear.HID\" SELECTED>Horse's Name</option>\n";
} ELSE {
print "<option value=\"$pgyear.HID\">Horse's Name</option>\n";
}
IF ($toset == "$pgyear.HID DESC") {
print "<option value=\"$pgyear.HID DESC\" SELECTED>Horse's Name, Descending</option>\n";
} ELSE {
print "<option value=\"$pgyear.HID DESC\">Horse's Name, Descending</option>\n";
}
IF ($toset == "$pgyear.EID") {
print "<option value=\"$pgyear.EID\" SELECTED>Event Name</option>\n";
} ELSE {
print "<option value=\"$pgyear.EID\">Event Name</option>\n";
}
IF ($toset == "$pgyear.EID DESC") {
print "<option value=\"$pgyear.EID DESC\" SELECTED>Event Name, Descending</option>\n";
} ELSE {
print "<option value=\"$pgyear.EID DESC\">Event Name, Descending</option>\n";
}
IF ($toset == "$pgyear.score") {
print "<option value=\"$pgyear.score\" SELECTED>Total Score</option>\n";
} ELSE {
print "<option value=\"$pgyear.score\">Total Score</option>\n";
}
IF ($toset == "$pgyear.score DESC") {
print "<option value=\"$pgyear.score DESC\" SELECTED>Total Score, Descending</option>\n";
} ELSE {
print "<option value=\"$pgyear.score DESC\">Total Score, Descending</option>\n";
}
IF ($toset == "$pgyear.DIV") {
print "<option value=\"$pgyear.DIV\" SELECTED>Division</option>\n";
} ELSE {
print "<option value=\"$pgyear.DIV\">Division</option>\n";
}
IF ($toset == "$pgyear.DIV DESC") {
print "<option value=\"$pgyear.DIV DESC\" SELECTED>Division, Descending</option>\n";
} ELSE {
print "<option value=\"$pgyear.DIV DESC\">Division, Descending</option>\n";
}
IF ($toset == "$pgyear.seen,$pgyear.YID") {
print "<option value=\"$pgyear.seen,$pgyear.YID\" SELECTED>Approval Status & Record Number</option>\n";
} ELSE {
print "<option value=\"$pgyear.seen,$pgyear.YID\">Approval Status & Record Number</option>\n";
}
IF ($toset == "$pgyear.seen,$pgyear.PID") {
print "<option value=\"$pgyear.seen,$pgyear.PID\" SELECTED>Approval Status & Rider's Name</option>\n";
} ELSE {
print "<option value=\"$pgyear.seen,$pgyear.PID\">Approval Status & Rider's Name</option>\n";
}
IF ($toset == "$pgyear.seen,$pgyear.PID") {
print "<option value=\"$pgyear.seen,$pgyear.HID\" SELECTED>Approval Status & Horse's Name</option>\n";
} ELSE {
print "<option value=\"$pgyear.seen,$pgyear.HID\">Approval Status & Horse's Name</option>\n";
}
IF ($toset == "$pgyear.seen,$pgyear.EID") {
print "<option value=\"$pgyear.seen,$pgyear.EID\" SELECTED>Approval Status & Event</option>\n";
} ELSE {
print "<option value=\"$pgyear.seen,$pgyear.EID\">Approval Status & Event</option>\n";
}
?>
</select>
<input type="submit" value="Re-Sort"></CENTER>
<HR WIDTH=75%>
<H2>Raw Score Index</H2>
<TABLE WIDTH=800 BORDER=1 BGCOLOR=#BBBBBB>
<TR ALIGN=CENTER>
 <TD>Rcd#:</TD>
 <TD>Rider:</TD>
 <TD>Horse:</TD>
 <TD>Event:</TD>
 <TD>Heads:</TD>
 <TD>Rings:</TD>
 <TD>Reeds:</TD>
 <TD>Total:</TD>
 <TD>Div:</TD>
 <TD>Status:</TD>
</TR>
<?PHP
IF (!isset($limits)) {
	$limits = "(($pgyear.seen='Y') OR ($pgyear.seen='D') OR ($pgyear.seen='N'))";
}
$filterby = stripslashes($limits);
$t1 = "SELECT PName,HName,Ename,SHscore,SRcount,SRscore,SDcount,SDscore,score,$pgyear.DIV,YID,seen,$pgyear.PID,$pgyear.HID FROM $pgyear LEFT JOIN riders ON $pgyear.PID=riders.PID LEFT JOIN events ON $pgyear.EID=events.EID LEFT JOIN horses ON $pgyear.HID=horses.HID LEFT JOIN heads ON $pgyear.SHID=heads.SHID LEFT JOIN rings ON $pgyear.SRID=rings.SRID LEFT JOIN reeds ON $pgyear.SDID=reeds.SDID WHERE $filterby ORDER BY $toset";
$setb = mysql_query($t1, $db);
IF ($L = mysql_fetch_row($setb)) {
  do {
   echo "<TR ALIGN=CENTER>\n";
   IF (isset($L[3])) {
     $Lheads=$L[3];
   } ELSE {
     $Lheads="N/A";
   }
   printf("<TD>%s</TD><TD>%s <A HREF=\"re.php?PID=%s\">[edit]</A></TD><TD>%s  <A HREF=\"he.php?HID=%s\">[edit]</A></TD><TD>%s</TD>\n<TD>%s</TD><TD>%s / %s</TD><TD>%s  / %s</TD>\n<TD>%s</TD><TD>%s</TD>", $L[10], stripslashes($L[0]), $L[12], stripslashes($L[1]), $L[13], $L[2], $Lheads, $L[4], $L[5], $L[6], $L[7], $L[8], $L[9]);
   print"<TD><select name=\"AP".$L[10]."\">";
   $temp=$L[11];
   switch ($temp) {
   		case "Y":
        	print "<option value=\"Y\" SELECTED>Approved</option>\n";
            print "<option value=\"D\">Low</option>\n";
            print "<option value=\"N\">Pending</option>\n";
            print "<option value=\"Z\">**DELETE**</option>\n";
            break;
   		case "N":
        	print "<option value=\"Y\">Approved</option>\n";
            print "<option value=\"D\">Low</option>\n";
            print "<option value=\"N\" SELECTED>Pending</option>\n";
            print "<option value=\"Z\">**DELETE**</option>\n";
            break;
   		case "D":
        	print "<option value=\"Y\">Approved</option>\n";
            print "<option value=\"D\" SELECTED>Low</option>\n";
            print "<option value=\"N\">Pending</option>\n";
            print "<option value=\"Z\">**DELETE**</option>\n";
            break;
   		case "Z":
        	print "<option value=\"Y\">Approved</option>\n";
            print "<option value=\"D\">Low</option>\n";
            print "<option value=\"N\">Pending</option>\n";
            print "<option value=\"Z\" SELECTED>**DELETED**</option>\n";
            break;
   		default:
        	print "<option value=\"Y\">Approved</option>\n";
            print "<option value=\"D\">Low</option>\n";
            print "<option value=\"N\" SELECTED>Pending</option>\n";
            print "<option value=\"Z\">**DELETE**</option>\n";
            break;
   }
   print "</select>";
   echo "</TR>\n";
  } while ($L = mysql_fetch_row($setb));
}
?>
<TR><TD COLSPAN=10 ALIGN=CENTER><input type="submit" name="newdata" value="Click here to update all records"></TD></TR>
</TABLE>
<H2>Notes:</H2>
<P>In the DIV collum, "A" represents Adv 21', "B" represents ADV 30', "C" represents INT 21', "D" represents INT 30', "E" represents BEG 21', and "F" represents BEG 30'.<BR>
To revoke a score, or hide it from the web-site, clear the check mark under approve, if it is still a valid score, but the rider scored a higher one, check ValidLo.<BR>
You will now notice the two drop down boxes at the top, the left one lets you filter out unneeded records, and the right lets you resort the listings.  Be warned, that making approvals and/or deletions and clicking the re-sort button will process things just like the button at the bottom will.</P>
</BLOCKQUOTE>
</BLOCKQUOTE>



</body>
</html>