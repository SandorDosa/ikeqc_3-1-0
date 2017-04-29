<?PHP

include "year-rw.php";
// v2.2a based on approval.php v2.12a and events.php

// Security check.  If $suthpass is set to 1 it means the cookie is set, if it
// is set to 2 it means the cookie needs to be set and that the information to
// verify has been gathered.

IF (isset($authpass)) {
    $EID = $authpass;
    IF ($newdata == "Logout") {
                setcookie( "authpass", "", time()-4200);
            print "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\n";
            print "<!-- Alpha -->\n";
            print "<html>\n";
            print "<head>\n";
            print "<title>EMiC's master scoring page</title>\n";
            print "</head>\n";
            print "<BODY>\n";
        print "<P>You are logged out.</P>\n";
        die;
    }

}

// If $authpass is not set, it means its the first trip to this URL or the existing
// cookie has expired.  This starts the process.

IF (!isset($authpass) && !isset($Auth)) {
    print "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\n";
    print "<!-- Bravo -->\n";
        print "<html>\n";
        print "<head>\n";
        print "<title>EMiC's master scoring page</title>\n";
        print "</head>\n";
        print "<BODY>\n";
        print "<H2>Please Select your event, and enter your 'Event Code' below.</H2>\n";
        print "<P><form name=\"Auth\" action=\"".$PHP_SELF."\" method=\"post\">\n";
        print "<TABLE BORDER=0>\n";
        print "<TR>\n";
        print "<TD ALIGH=RIGHT>Event Name:</TD>\n";
        print "<TD ALIGHT=LEFT>\n";
        $setc = mysql_query("SELECT * from events WHERE ((Estatus = 'O' || Estatus = 'C') && Eyear = $anyear)");
        IF ($N = mysql_fetch_row($setc)) {
            echo"<SELECT NAME=\"EvName\" VALIGN=\"MIDDLE\">\n";
            do {
                printf("<OPTION VALUE=\"%s\">%s</OPTION>\n", $N[0], $N[2]);
            } while ($N = mysql_fetch_row($setc));
            echo"</SELECT>\n";
        } ELSE {
            echo"<P>No open events are presently registered.  You must contact the Keeper of the scores to register your event before you can use this system.</P>\n";
        }
        print "</TD></TR>\n";
        print "<TR><TD COLSPAN=2 ALIGN=CENTER>\n";
        print "<P>If you event does not appear in the drop down list you must contact the Keeper of the scores for more instructions.</P>\n";
        print "</TD>\n";
        print "<TR><TD ALIGN=RIGHT>Event Code:</TD>\n";
        print "<TD ALIGN=LEFT><input name=\"EvCode\" type=\"password\" value=\"\"></TD>\n";
        print "</TR><TR><TD ALIGN=CENTER COLSPAN=2><input name=\"Auth\" type=\"submit\" value=\"Send\"></TD></TR></TABLE>\n";
        die;
}

// If $Auth is set but $Authpass is not, that means that data to be verified has been collected.

IF (isset($Auth)) {
        $setb = mysql_query("SELECT * from events WHERE EID = $EvName",$db);
        IF ($B = mysql_fetch_row($setb)) {
            IF ($B[0]==$EvName && $B[3]==$EvCode) {
                setcookie( "authpass", $EvName, time()+4200); // 90 minutes per session
                print "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\n";
                print "<!-- Charlie -->\n";
                print "<html>\n";
                print "<head>\n";
                print "<title>EMiC's master scoring page</title>\n";
                print "</head>\n";
                print "<BODY>\n";
                print "<form name=\"evmaster\" action=\"".$PHP_SELF."\" method=\"POST\">\n";
                print "<H2>Welcome EMiC</H2><P>You must have cookies enabled in your browser and click <A HREF=\"".$PHP_SELF."\">here</A> to continue.\n";
                die;
            } ELSE {
                print "<H2>ERROR!</H2><P>You did not enter the correct Event Code for the Event you selected.  Event codes are case sensitive and must be entered EXACTLY as provided to you.</P>\n";
                die;
            }
        } ELSE {
                print "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\n";
                print "<!-- Delta -->\n";
                print "<html>\n";
                print "<head>\n";
                print "<title>EMiC's master scoring page</title>\n";
                print "</head>\n";
                print "<BODY>\n";
                print "<H1>Ack!</H1>\n";
                print "<P>There has been an error somewhere.  Try again, and make sure you click your browser's refresh button this time.</P>\n";
                die;
        }
}

// If the script gets to this point, the user has been authenticated and a cookie
// has been set on their browser with a duration of 90 minutes

// This section updates any entries that the EMiCs may have deleted on their own

$seta = @mysql_query("SELECT * FROM events WHERE EID = $authpass", $db);
IF ($A = mysql_fetch_row($seta)) {
        $EID = $A[0];
        $Edate = $A[1];
        $Ename = $A[2];
        $Epass = $A[3];
        $Eadmin = $A[4];
        $Estatus = $A[5];
        $Eyear = $A[6];
} ELSE {
        print "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\n";
        print "<!-- Echo -->\n";
        print "<html>\n";
        print "<head>\n";
        print"<P>There has been an unexpected problem.  Contact Sandor [ sandor_dosa (at) yahoo (dot) com ] and tell him that a code eleven error occured on your event's homepage.</P>\n";
        die;
}
print "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\n";
print "<!-- Foxtrot -->\n";
print "<html>\n";
print "<head>\n";
print "<title>Scores Entry Page for ".$Ename."</title>\n";
print "</head>\n";
print "<BODY>\n";
print "<form name=\"evmaster\" action=\"".$PHP_SELF."\" method=\"POST\">\n";
include "year-rw.php";

IF (isset($newdata)) {
        IF ($newdata == "Click here to add this score") {
                   print "<P><form name=\"Auth\" action=\"".$PHP_SELF."\" method=\"post\">\n";
        print "<H2>Please verify the data you have entered</H2>\n";

mysql_select_db("scaikeqc_ikeqc", $db);

IF (!isset($Division)) {
        print "<H2>CHECK YOUR INPUT</H2><P>You failed to select which division this score was entered in.<BR>Click back in your browser and try again.</P>";
    die;
}
IF ($Pname == "XXX") {
  echo "<H2>CHECK YOUR INPUT</H2><P>You failed to select a rider, or failed to tell me it was a new rider.  Please click back and try again.\n";
  die;
}
IF ($Pname == "NEW" && ($Pnew == "**NEW RIDER**" || $Pnew==NULL)) {
  echo "<H2>CHECK YOUR INPUT</H2><P>You told me you had a new rider, but failed to provide their name.  Please click back and try again.\n";
  die;
}

$tp2 = stripslashes($Hnew);
IF ($Hname == "NEW" && ($Hnew == "**NEW HORSE**" || $Hnew==NULL)) {
  echo "<H2>CHECK YOUR INPUT</H2><P>You told me you had a new horse, but failed to provide their name.  Please click back and try again.\n";
  die;
}
IF ($Hname == "XXX") {
  echo "<H2>CHECK YOUR INPUT</H2><P>You failed to select a horse, or failed to tell me it was a new horse.  Please click back and try again.\n";
  die;
}
IF (!isset($Hrent)) {
  $Hrent = "N";
}
IF ($Pname=="NEW") {
  $setb = mysql_query("SELECT * from kingdoms WHERE $KID = KID");
  IF ($L = mysql_fetch_row($setb)) {
    echo"<BR>\n";
  } ELSE {
    echo"step 1 -- Error in the database, please exit and restart your browser and try again.\n";
    echo mysql_error();
    die;
  }
  $setba = mysql_query("SELECT * FROM riders", $db);
  do {
    IF ($L = mysql_fetch_row($setba)) {
      IF ($L[1] == $Pnew) {
        echo"<H2>Process Terminated:</H2>\n";
        echo"<P>You have tried to enter a new rider that already exists in our database.  Go back and select the rider's name from the drop down box instead.</P>";
        die;
      }
    }
  } while ($L = mysql_fetch_row($setba));
  print"<TABLE BORDER=0><TR><TD>";
  printf("The Rider:  %s of <A HREF=\"%s\">%s</A><BR>", $Pnew, $L[2], $L[1]);
  $RKID=$KID;
} ELSE {
  $seta = mysql_query("SELECT * from riders WHERE $Pname = PID");
  IF ($R = mysql_fetch_row($seta)) {
    echo"<BR>\n";
    $RKID = $R[3];
    $setb = mysql_query("SELECT * from kingdoms WHERE $RKID = KID");
    IF ($L = mysql_fetch_row($setb)) {
      echo"<BR>\n";
    } ELSE {
    echo"step 2 -- There has been an error in processing the database.  This type of error is almost always fixed if you exit out of your web-browser, and try again after restarting your web-browser.\n";
    echo mysql_error();
    die;
    }
  } ELSE {
    echo"step 3 -- There has been an error in processing the database.  This type of error is almost always fixed if you exit out of your web-browser, and try again after restarting your web-browser.\n";
    echo mysql_error();
    die;
  }
  print"<TABLE BORDER=0><TR><TD>";
  printf("The Rider:  %s of <A HREF=\"%s\">%s</A><BR>", stripslashes($R[1]), $L[2], $L[1]);
}
IF ($Hname=="NEW") {
  $setb = mysql_query("SELECT * from kingdoms WHERE $RKID = KID");
  IF ($L = mysql_fetch_row($setb)) {
    //programming cludge
  } ELSE {
    echo"step 4 -- There has been an error in processing the database.  This type of error is almost always fixed if you exit out of your web-browser, and try again after restarting your web-browser.\n";
    echo mysql_error();
    die;
  }
  $setbb = mysql_query("SELECT * FROM horses", $db);
  do {
    IF ($L = mysql_fetch_row($setbb)) {
      IF ($L[1] == $Hnew) {
        echo"<H2>Process Terminated:</H2>\n";
        echo"<P>You have tried to enter a new horse that already exists in our database.  Go back and select the horse's name from the drop down box instead.</P>";
        die;
      }
    }
  } while ($L = mysql_fetch_row($setbb));
  IF ($Hrent == "Y") {
    printf("Mounted on:  %s, a Rental horse<BR>", stripslashes($Hnew));
  } ELSE {
    printf("Mounted on:  %s, owned by %s<BR>", stripslashes($Hnew), stripslashes($Howner));
  }
} ELSE {
  $setc = mysql_query("SELECT * FROM horses WHERE horses.HID = $Hname", $db);
  //print "<BR><BR>".mysql_error()."<BR><BR>\n";
  IF ($H = mysql_fetch_row($setc)) {
    //programming cludge
  } ELSE {
    echo"step 6 -- There has been an error in processing the database.  This type of error is almost always fixed if you exit out of your web-browser, and try again after restarting your web-browser.\n";
    echo mysql_error();
    die;
  }
  IF ($H[2] == "Y") {
    printf("Mounted on:  %s, a Rental horse<BR>\n", stripslashes($H[1]));
  } ELSE {
    printf("Mounted on:  %s, owned by %s<BR>\n", stripslashes($H[1]), stripslashes($H[3]));
  }
}
$EvName = $EID;
$setd = mysql_query("SELECT * from events WHERE EID = $EID");
IF ($LA = mysql_fetch_row($setd)) {
  printf("At:  %s<BR>\n", $LA[2]);
}
 IF (!isset($NOHEADS) && ($MINS == 0 && $SECS == 0 && $TENS == 0 && $HUNS == 0)) {
   echo "<H2>CHECK YOUR INPUT</H2>\n";
   echo "<P>You have failed to enter any information for the scoring of the HEADS course.  If need be, you may click back and try again.<BR>\n";
   echo "Otherwise this script will assume that this rider earned a score of zero, was disqualified, or declined the course.</P>\n";
   $NOHEADS = 1;
 } ELSE {
   IF (9 < $TENS) {
     echo "<H2>CHECK YOUR INPUT</H2>\n";
     echo "<P>You have entered more TENTHS of seconds than is mathmatically possible.  This score cannot be accurately calculated.  Please click back and put the TENTHS of seconds in the T block and the HUNDREDTHS of seconds in the H block.</P>\n";
     echo "<P>Process terminated.</P>\n";
     die();
   }
   $T1 = $MINS * 60;
   $T2 = $SECS + $T1;
   $T3 = ($T2 * 10) + $TENS;
   $RAW = ($T3 * 10) + $HUNS;
    SWITCH ($Division) {
    CASE "A":
       $DivName = "Advanced 21'";
       $DivQ = 105;
       $Hscore = 105 - ($RAW / 100) - $Penalty;
       break;
    CASE "B":
       $DivName = "Advanced 30'";
       $DivQ = 105;
       $Hscore = 105 - ($RAW / 100) - $Penalty;
       break;
    CASE "C":
       $DivName = "Intermediate 21'";
       $DivQ = 110;
       $Hscore = 110 - ($RAW / 100) - $Penalty;
       break;
    CASE "D":
       $DivName = "Intermediate 30'";
       $DivQ = 110;
       $Hscore = 110 - ($RAW / 100) - $Penalty;
       break;
    CASE "E":
       $DivName = "Beginner 21'";
       $DivQ = 145;
       $Hscore = 145 - ($RAW / 100) - $Penalty;
       break;
    CASE "F":
       $DivName = "Beginner 30'";
       $DivQ = 145;
       $Hscore = 145 - ($RAW / 100) - $Penalty;
       break;
    DEFAULT:
       print "Incorrect or missing division.  Process terminated.";
       die();
       break;
    }
 }

 IF (!isset($NORINGS)) {
   $Rsubscore = 0;
   $Rcount = 0;
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
   IF (!isset($NORINGS) && $Rcount==0) {
     echo "<H2>CHECK YOUR INPUT</H2>\n";
   echo "<P>You have failed to enter any information for the scoring of the RINGS course.  If need be, you may click back and try again.<BR>\n";
   echo "Otherwise this script will assume that this rider earned a score of zero, was disqualified, or declined the course.</P>\n";
     $NORINGS = 1;
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
     print "<H2>CHECK YOUR INPUT</H2>\n";
     print "<P>You have indicated that the rider scored more than one ring per choice offered.  According to the rules of the tournament this is not allowed.  This score is invalid due to this reason.  You may click back and try again if you made an error in data entry.</P>\n";
     print "<P>Process Terminated.</P>";
     die;
   }

 }
 IF (!isset($NOREEDS)) {
   $Dsubscore = 0;
   $Dcount = 0;
   IF (ISSET($Reed2L)) {
     $Dsubscore = $Dsubscore + $Reed2L;
     $Dcount++;
   }
   IF (ISSET($Reed2R)) {
     $Dsubscore = $Dsubscore + $Reed2R;
     $Dcount++;
   }
   IF (ISSET($Reed4L)) {
     $Dsubscore = $Dsubscore + $Reed4L;
     $Dcount++;
   }
   IF (ISSET($Reed4R)) {
     $Dsubscore = $Dsubscore + $Reed4R;
     $Dcount++;
   }
   IF (ISSET($Reed6L)) {
     $Dsubscore = $Dsubscore + $Reed6L;
     $Dcount++;
   }
   IF (ISSET($Reed6R)) {
     $Dsubscore = $Dsubscore + $Reed6R;
     $Dcount++;
   }
   IF (ISSET($Reed8L)) {
     $Dsubscore = $Dsubscore + $Reed8L;
     $Dcount++;
   }
   IF (ISSET($Reed8R)) {
     $Dsubscore = $Dsubscore + $Reed8R;
     $Dcount++;
   }
   IF (ISSET($Reed9L)) {
     $Dsubscore = $Dsubscore + $Reed9L;
     $Dcount++;
   }
   IF (ISSET($Reed9R)) {
     $Dsubscore = $Dsubscore + $Reed9R;
     $Dcount++;
   }
   }
   $Dscore = $Dsubscore;
   IF (!isset($NOREEDS) && $Dcount==0) {
     echo "<H2>CHECK YOUR INPUT</H2>\n";
     echo "<P>You have failed to click any of the reeds for the scoring of the REEDS course.  If need be, you may click back and try again.<BR>\n";
   echo "Otherwise this script will assume that this rider earned a score of zero, was disqualified, or declined the course.</P>\n";
     $NOREEDS = 1;
   }
   $Mscore = $MApass1 + $MApass2 + $MApass3; //Section marker for Mounted Archery

   $Bscore = $Bpass1 + $Bpass2 + $Bpass3;

   print "</TD><TD WIDTH=5%></TD><TD>";
   print "<H1>".$DivName."</H1>\n";
   IF ($NOHEADS) {
    $Hscore = 0;
   }
   print "<B>Having scored ".$Hscore." with a time of ".$MINS.":".$SECS.".".$TENS.$HUNS." for the Heads Course.<BR>\n";
   IF ($NORINGS) {
    $Rcount = 0;
    $Rscore = 0;
   }
   print "<B>Having taken ".$Rcount." rings scoring ".$Rscore." for the Rings Course.</B><BR>\n";
   IF ($NOREEDS) {
    $Dcount = 0;
    $Dscore = 0;
   }
   print "<B>Having taken ".$Dcount." reeds scoring ".$Dscore." for the Reeds Course.</B><BR>\n";
   IF ($NOMOARCH) {
            $Mscore = 0;
   }
   print "<B>Having scored: ".$Mscore." in Mounted Archery.</B><BR>\n";
   IF ($NOBIRJAS) {
   	 $Bscore = 0;
   }
   print "<B>Having scored: ".$Bscore." in Birjas.</B><BR>\n";
   echo"</TD></TR></TABLE>\n";
   print"<P>Be sure that everything is correct before proceeding, if you see something that is not right, click BACK on your browser and change it before proceeding.  This bears repeating...</P>\n";
   print "<H1><B><u>IF ANYTHING DOES NOT LOOK RIGHT ABOVE, GO BACK AND FIX IT BEFORE YOU CONTINE!</u></B></H1>\n";
   print "<P>Once you verify that this entry is 100% correct click on the save score button below.</P>\n";
   print "<P>This process is not like your usual web link.  It can take a little longer than some webpages, and may appear stalled when it is not.  Clicking the link more than once can cause problems that could eat the entire database, make Sandor cry, or cause other great tragdies that you could be responisble for.</P>\n";
   print "<P><B><FONT COLOR=RED>CLICK IT ONLY ONCE!</FONT></B></P>\n";
   print "<P>If it looks like it is stalled, wait for at least 60 full seconds before clicking again.</P>\n";
   printf("<input type=\"hidden\" name=\"Pname\" value=\"%s\">\n", $Pname);
   printf("<input type=\"hidden\" name=\"Pnew\" value=\"%s\">\n", $Pnew);
   printf("<input type=\"hidden\" name=\"KID\" value=\"%s\">\n", $KID);
   printf("<input type=\"hidden\" name=\"Hname\" value=\"%s\">\n", $Hname);
   printf("<input type=\"hidden\" name=\"Hnew\" value=\"%s\">\n", $Hnew);
   printf("<input type=\"hidden\" name=\"Howner\" value=\"%s\">\n", $Howner);
   printf("<input type=\"hidden\" name=\"Hrent\" value=\"%s\">\n", $Hrent);
   printf("<input type=\"hidden\" name=\"EvName\" value=\"%s\">\n", $EID);
   IF (isset($NOHEADS)) {
     printf("<input type=\"hidden\" name=\"NOHEADS\" value=\"%s\">\n", $NOHEADS);
   }
   printf("<input type=\"hidden\" name=\"MINS\" value=\"%s\">\n", $MINS);
   printf("<input type=\"hidden\" name=\"SECS\" value=\"%s\">\n", $SECS);
   printf("<input type=\"hidden\" name=\"TENS\" value=\"%s\">\n", $TENS);
   printf("<input type=\"hidden\" name=\"HUNS\" value=\"%s\">\n", $HUNS);
   printf("<input type=\"hidden\" name=\"RAW\" value=\"%s\">\n", $RAW);
   printf("<input type=\"hidden\" name=\"Penalty\" value=\"%s\">\n", $Penalty);
   printf("<input type=\"hidden\" name=\"Division\" value=\"%s\">\n", $Division);
   printf("<input type=\"hidden\" name=\"Hscore\" value=\"%s\">\n", $Hscore);
   IF (isset($NORINGS)) {
     printf("<input type=\"hidden\" name=\"NORINGS\" value=\"%s\">\n", $NORINGS);
   }
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
   IF (isset($NOREEDS)) {
     printf("<input type=\"hidden\" name=\"NOREEDS\" value=\"%s\">\n", $NOREEDS);
   }
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
   IF (isset($NOMOARCH)) {
         printf("<input type=\"hidden\" name=\"NOMOARCH\" value=\"%s\">\n", $NOMOARCH);
   }
   printf("<input type=\"hidden\" name=\"MApass1\" value=\"%s\">\n", $MApass1);
   printf("<input type=\"hidden\" name=\"MApass2\" value=\"%s\">\n", $MApass2);
   printf("<input type=\"hidden\" name=\"MApass3\" value=\"%s\">\n", $MApass3);
   printf("<input type=\"hidden\" name=\"MAscore\" value=\"%s\">\n", $MAscore);
   IF (isset($NOBIRJAS)) {
         printf("<input type=\"hidden\" name=\"NOBIRJAS\" value=\"%s\">\n", $NOBIRJAS);
   }
   printf("<input type=\"hidden\" name=\"Bpass1\" value=\"%s\">\n", $Bpass1);
   printf("<input type=\"hidden\" name=\"Bpass2\" value=\"%s\">\n", $Bpass2);
   printf("<input type=\"hidden\" name=\"Bpass3\" value=\"%s\">\n", $Bpass3);
   printf("<input type=\"hidden\" name=\"Bscore\" value=\"%s\">\n", $Bscore);

   print "<input value=\"I certify that this score is 100% correct\" name=\"newdata\" type=\"submit\"></FORM></BODY></HTML>\n";
   die;
}
        }
           IF ($newdata == "I certify that this score is 100% correct") {
            IF ($Pname == "NEW") {
            $seta = mysql_query("INSERT INTO riders VALUES ( null, '$Pnew', null, '$KID', null)", $db);
                IF ($seta) {
                echo"<P>New Rider added successfully.</P>\n";
                $Pname = mysql_insert_id();
                } ELSE {
                    $emrider = mysql_error();
                    $emt++;
                }
            } ELSE {
            echo"<P>Updating existing Rider's records.</P>\n";
            }
            IF ($Hname == "NEW") {
                $setb = mysql_query("INSERT INTO horses VALUES (null, '$Hnew', '$Hrent', '$Howner', null)", $db);
                IF ($setb) {
                    echo"<P>New Horse added successfully.</P>\n";
                    $Hname = mysql_insert_id();
                } ELSE {
                    $emhorse = mysql_error();
                    $emt++;
                }
            } ELSE {
                echo"<P>Updating Existing Horse's records.</P>\n";
            }
            IF (!isset($NOHEADS)) {
                echo "<P>Updating HEADS course database...";
                $setc = mysql_query("INSERT INTO heads VALUES (null, '$Pname', '$Hname', '$KID', '$EvName', '$Division', '$RAW', '$Penalty', '$Hscore', null, $anyear)", $db);
                IF ($setc) {
                    echo"done.</P>\n";
                    $SHID = mysql_insert_id();
                }
            } ELSE {
                $SHID = NULL;
                $$Hscore = 0;
            }
            IF (!isset($NORINGS)) {
                echo "<P>Updating RINGS course database...";
                $setd = mysql_query("INSERT INTO rings VALUES (null, '$Pname', '$Hname', '$EvName', '$KID', '$Division', '$Ring1L', '$Ring2L', '$Ring3L', '$Ring4L', '$Ring5L', '$Ring6L', '$Ring1R', '$Ring2R', '$Ring3R', '$Ring4R', '$Ring5R', '$Ring6R', '$Rcount', '$Rscore', null, $anyear)", $db);
                IF ($setd) {
                    echo"done.</P>\n";
                    $SRID = mysql_insert_id();
                }
            } ELSE {
                $SRID = NULL;
                $Rscore = 0;
            }
            IF (!isset($NOREEDS)) {
                echo "<P>Updating REEDS course database...";
                $sete = mysql_query("INSERT INTO reeds VALUES (null, '$Pname', '$Hname', '$EvName', '$KID', '$Division', '$Reed2L', '$Reed4L', '$Reed6L', '$Reed8L', '$Reed9L', '$Reed2R', '$Reed4R', '$Reed6R', '$Reed8R', '$Reed9R', '$Dcount', '$Dscore', null, $anyear)", $db);
                    IF ($sete) {
                    echo"done.</P>\n";
                    $SDID = mysql_insert_id();
                }
            } ELSE {
                $SDID = NULL;
                $Dscore = 0;
            }
            IF (!isset($NOMOARCH)) {
                echo "<P>Updating Mounted Archery course database...";
                $MAscore = $MApass1 + $MApass2 + $MApass3;
                $setf = mysql_query("INSERT INTO moarch VALUES (null, '$Pname', '$Hname', '$EvName', '$KID', '$Division', '$MApass1', '$MApass2', '$MApass3', '$MAscore', null, $anyear)", $db);
                    IF ($setf) {
                    echo"done.</P>\n";
                    $SMID = mysql_insert_id();
                }
            } ELSE {
                $SMID = NULL;
                $MAscore = 0;
            }
            IF (!isset($NOBIRJAS)) {
                echo "<P>Updating Birjas course database...";
                $Bscore = $Bpass1 + $Bpass2 + $Bpass3;
                $setf = mysql_query("INSERT INTO birjas VALUES (null, '$Pname', '$Hname', '$EvName', '$KID', '$Division', '$Bpass1', '$Bpass2', '$Bpass3', '$Bscore', null, $anyear)", $db);
                    IF ($setf) {
                    echo"done.</P>\n";
                    $SBID = mysql_insert_id();
                }
            } ELSE {
                $SBID = NULL;
                $Bscore = 0;
            }

            echo "<P>Making final scores updates...";
            $finalscore = $Hscore + $Rscore + $Dscore + $MAscore + $Bscore;
            $champscore = $Hscore + $Rscore + $Dscore;
            $setg = mysql_query("INSERT INTO $pgyear VALUES (NULL, '$Pname', '$Hname', '$EvName', '$SHID', '$SRID', '$SDID', '$SMID', '$SBID', '$champscore', '$finalscore', '$Division', 'N')", $db);
            IF ($setg) {
                echo"done.</P>\n";
            } ELSE {
                echo mysql_error();
            }
            print "<HR>\n";
            print "<P>All updates complete!</P>\n";
            // OUTPUT of input queries
            echo "<HR><H2>Your records updated.</H2>\n";
            echo "<P><A HREF=\"".$PHP_SELF."\">Click Here</A> to return to your Event's hompage.\n";
            die;
        }
/*
print "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\n";
print "<!-- Golf -->\n";
print "<html>\n";
print "<head>\n";
print "<title>EMiC's master scoring page</title>\n";
print "</head>\n";
print "<BODY>\n";
print "<form name=\"evmaster\" action=\"".$PHP_SELF."\" method=\"POST\">\n";
*/
$seta = @mysql_query("SELECT * FROM events WHERE EID = $authpass", $db);
IF ($A = mysql_fetch_row($seta)) {
        $EID = $A[0];
        $Edate = $A[1];
        $Ename = $A[2];
        $Epass = $A[3];
        $Eadmin = $A[4];
        $Estatus = $A[5];
        $Eyear = $A[6];
} ELSE {
        print"<P>There has been an unexpected problem.  Contact Sandor [ sandor_dosa (at) yahoo (dot) com ] and tell him that a code eleven error occured on your event's homepage.</P>\n";
        die;
}
print "<BR CLEAR=ALL>\n";
print "<blockquote>\n";
print "<BLOCKQUOTE>\n";
print "<H1>Welcome EMiC</H1>\n";
print "<P>This page will be the homepage for all of your scores for your event, allowing you to enter scores, and check on the status of your scores.  Please note that after you enter your scores in this system, that they will not be immedeatly displayed on the scores page, you must send your event scoresheets in to the Keeper of the Scores to be verified before they will be published.</P>\n";
print "<P>If you see a score that is not correct in the listing below.  Re-enter the score with the correct data, and email the ScoreKeeper so they can delete the incorrect entry.</P\n";
print "<HR>\n";
IF ($Estatus == "O") { //This section only appears if a EMiC can still enter scores.
        print "<P>In this section you will be able to enter your scores.</P>\n";
        print "<TABLE BORDER=5 ALIGN=CENTER>\n";
        print "<TR>\n";
        print "<TD VALIGN=TOP ALIGN=CENTER COLSPAN=2>\n"; //Top of Rider Cell
        $setb = @mysql_query("SELECT * FROM riders ORDER BY Pname", $db);
        IF ($B = mysql_fetch_row($setb)) {
            $Bc = mysql_num_rows($setb);
            echo"<H2>Select the Rider</H2>";
            echo "<SELECT NAME=\"Pname\"><OPTION VALUE=\"XXX\">Select Rider<OPTION VALUE=\"XXX\">-----\n";
            echo "<OPTION VALUE=\"NEW\">**NEW RIDER**\n";
            IF ($B) {
                echo"<OPTION VALUE=\"XXX\">-----\n";
                do {
                    printf("<OPTION VALUE=\"%s\">%s\n", $B[0], stripslashes($B[1]));
                } while ($B = mysql_fetch_row($setb));
                echo "<OPTION VALUE=\"XXX\">-----<OPTION VALUE=\"NEW\">**NEW RIDER**\n";
                echo "</SELECT>\n";
                print "<HR WIDTH=90%><P>There are ".$Bc." riders in this drop down box.  Pressing the first letter of their name will zoom the list to that point.</P>\n";
            } ELSE {
                echo "<OPTION VALUE=\"XXX\">-----<OPTION VALUE=\"NEW\">**NEW RIDER**\n";
                echo "</SELECT>\n";
            }
            echo"<P>If you have selected the option '**NEW RIDER**' then fill in the following blanks.</P>\n";
            echo"<INPUT NAME=\"Pnew\" TYPE=\"text\" VALUE=\"Enter new Rider's name here\" SIZE=\"25\" COLS=80>\n";
            $setd = mysql_query("SELECT * FROM kingdoms");
            IF ($O = mysql_fetch_row($setd)) {
                echo"<SELECT NAME=\"KID\">\n";
                echo"<OPTION VALUE=\"XXX\">Select Kingdom<OPTION VALUE=\"XXX\">-----\n";
                do {
                    printf("<OPTION VALUE=\"%s\">%s</OPTION>\n", $O[0], $O[1]);
                } while ($O = mysql_fetch_row($setd));
                echo"</SELECT>\n";
            }
        }
        print "</TD>\n"; // End of Rider cell
        print "<TD VALIGN=TOP ALIGN=CENTER COLSPAN=3>\n"; // Top of Horse cell
        $setb = @mysql_query("SELECT * FROM horses ORDER BY Hname", $db);
        IF ($B = mysql_fetch_row($setb)) {
            $Bc = mysql_num_rows($setb);

            echo"<H2>Select the Horse</H2>";
            echo "<SELECT NAME=\"Hname\"><OPTION VALUE=\"XXX\">Select Horse<OPTION VALUE=\"XXX\">-----\n";
            echo "<OPTION VALUE=\"NEW\">**NEW HORSE**\n";
            echo "<OPTION VALUE=\"12\">Unknown Mount\n";
            IF ($B) {
                echo"<OPTION VALUE=\"XXX\">-----\n";
                do {
                    printf("<OPTION VALUE=\"%s\">%s\n", $B[0], stripslashes($B[1]));
                } while ($B = mysql_fetch_row($setb));
                echo "<OPTION VALUE=\"XXX\">-----<OPTION VALUE=\"NEW\">**NEW HORSE**\n";
                echo "</SELECT>\n";
                print "<HR WIDTH=90%><P>There are ".$Bc." horses in this drop down box.  Pressing the first letter of their name will zoom the list to that point.</P>\n";
            } ELSE {
                echo "<OPTION VALUE=\"XXX\">-----<OPTION VALUE=\"NEW\">**NEW HORSE**\n";
                echo "</SELECT>\n";
            }
            echo"<P>If you have selected the option '**NEW HORSE**' then fill in the following blanks.</P>\n";
            echo"<INPUT NAME=\"Hnew\" TYPE=\"text\" VALUE=\"Enter new Horse's name here\" SIZE=\"25\" COLS=80><BR>\n";
            echo"<INPUT NAME=\"Howner\" TYPE=\"text\" Value=\"Enter Owners Name here\" SIZE=\"25\" COLS=80><BR>\n";
            echo"And check this box if the horse is a rental mount <INPUT NAME=\"Hrent\" type=\"checkbox\" VALUE=\"Y\">\n";
        }
        print "</TD></TR>\n";  // END of Horse cell
        print "<TR><TD VALIGN=TOP ALIGN=CENTER COLSPAN=5>\n"; // Division Cell
        print "<TABLE BORDER=0><TR><TD>\n";
        print "<H2>Select Division</H2>\n";
        print "</TD><TD COLSPAN=4>\n";
        print "<TABLE BORDER=1 ALIGN=CENTER>\n";
        print "<TR>\n";
        print "<TD>\n";
        print "Advanced 21ft\n";
        print "<input name=\"Division\" type=\"radio\" value=\"A\">\n";
        print "</TD>\n";
        print "<TD>\n";
        print "Intermediate 21ft\n";
        print "<input name=\"Division\" type=\"radio\" value=\"C\">\n";
        print "</TD>\n";
        print "<TD>\n";
        print "Beginner 21ft\n";
        print "<input name=\"Division\" type=\"radio\" value=\"E\">\n";
        print "</TD>\n";
        print "</TR>\n";
        print "<TR>\n";
        print "<TD>\n";
        print "Advanced 30ft\n";
        print "<input name=\"Division\" type=\"radio\" value=\"B\">\n";
        print "</TD>\n";
        print "<TD>\n";
        print "Intermediate 30ft\n";
        print "<input name=\"Division\" type=\"radio\" value=\"D\">\n";
        print "</TD>\n";
        print "<TD>\n";
        print "Beginner 30ft\n";
        print "<input name=\"Division\" type=\"radio\" value=\"F\">\n";
        print "</TD>\n";
        print "</TR>\n";
        print "</TABLE>\n";
        print "</TD></TR></TABLE>\n";
        print "</TD></TR>\n"; // End of Divison Cell
        print "<TR><TD WIDTH=30% VALIGN=TOP ALIGN=CENTER BGCOLOR=#FFAAAA>\n"; // Heads Cell
        print "<H2>Heads Course</H2>\n";
    print "<P>Didn't particapate?<BR>Check here <input name=\"NOHEADS\" type=\"checkbox\"></P>\n";
        print "<TABLE border=1>\n";
        print "<TR><TD>\n";
        print "Min<BR>##\n";
        print "</TD><TD>\n";
        print "<H2>:</H2>\n";
        print "</TD><TD>\n";
        print "Sec<BR>##\n";
        print "</TD><TD>\n";
        print "<H2>.</H2>\n";
        print "</TD><TD>\n";
        print "Ten<BR>#\n";
        print "</TD><TD>\n";
        print "Hun<BR>#\n";
        print "</TD></TR>\n";
        print "<TR><TD>\n";
        print "<input name=\"MINS\" type=\"text\" size=\"2\" value=\"00\" valign=top>\n";
        print "</TD><TD>\n";
        print "<H2>:</H2>\n";
        print "</TD><TD>\n";
        print "<input name=\"SECS\" type=\"text\" size=\"2\" value=\"00\">\n";
        print "</TD><TD>\n";
        print "<H2>.</H2>\n";
        print "</TD><TD>\n";
        print "<input name=\"TENS\" type=\"text\" size=\"1\" value=\"0\">\n";
        print "</TD><TD>\n";
        print "<input name=\"HUNS\" type=\"text\" size=\"1\" value=\"0\">\n";
    print "</TD></TR><TR><TD COLSPAN=3 ALIGN=RIGHT>Penaltes:</TD><TD COLSPAN=3 ALIGHT=LEFT>\n";
    print "<input name=\"Penalty\" type=\"text\" size=\"2\" value=\"00\">\n";
        print "</TD></TR></TABLE>\n";
        print "</TD>\n"; // End of Heads Cell
        print "<TD WIDTH=30% VALIGN=TOP ALIGN=CENTER BGCOLOR=#AAAAFF>\n"; // Rings Cell
        print "<H2>Rings Course</H2>\n";
    print "<P>Didn't particapate?<BR>Check here <input name=\"NORINGS\" type=\"checkbox\"></P>\n";
        print "<TABLE>\n";
        print "<TR><TD WIDTH=50% ALIGN=CENTER BGCOLOR=#EEEEEE>\n";
        print "<H3>LEFT SIDE</H3>\n";
        print "</TD><TD WIDTH=50% ALIGN=CENTER BGCOLOR=#DDDDDD>\n";
        print "<H3>RIGHT SIDE</H3>\n";
        print "</TD></TR>\n";
        print "<TR>\n";
        print "<TR><TD WIDTH=50% ALIGN=CENTER BGCOLOR=#EEEEEE>\n";
        print "6\"<INPUT NAME=\"Ring6L\" type=\"checkbox\" value=\"4\"> or \n";
        print "1\"<INPUT NAME=\"Ring1L\" type=\"checkbox\" value=\"20\">\n";
        print "</TD><TD WIDTH=50% ALIGN=CENTER BGCOLOR=#DDDDDD>\n";
        print "1\"<INPUT NAME=\"Ring1R\" type=\"checkbox\" value=\"20\"> or \n";
        print "6\"<INPUT NAME=\"Ring6R\" type=\"checkbox\" value=\"4\">\n";
        print "</TD></TR>\n";
        print "<TR><TD WIDTH=50% ALIGN=CENTER BGCOLOR=#EEEEEE>\n";
        print "5\"<INPUT NAME=\"Ring5L\" type=\"checkbox\" value=\"6\"> or \n";
        print "2\"<INPUT NAME=\"Ring2L\" type=\"checkbox\" value=\"15\">\n";
        print "</TD><TD WIDTH=50% ALIGN=CENTER BGCOLOR=#DDDDDD>\n";
        print "2\"<INPUT NAME=\"Ring2R\" type=\"checkbox\" value=\"15\"> or \n";
        print "5\"<INPUT NAME=\"Ring5R\" type=\"checkbox\" value=\"6\">\n";
        print "</TD></TR>\n";
        print "<TR><TD WIDTH=50% ALIGN=CENTER BGCOLOR=#EEEEEE>\n";
        print "4\"<INPUT NAME=\"Ring4L\" type=\"checkbox\" value=\"8\"> or \n";
        print "3\"<INPUT NAME=\"Ring3L\" type=\"checkbox\" value=\"10\">\n";
        print "</TD><TD WIDTH=50% ALIGN=CENTER BGCOLOR=#DDDDDD>\n";
        print "3\"<INPUT NAME=\"Ring3R\" type=\"checkbox\" value=\"10\"> or \n";
        print "4\"<INPUT NAME=\"Ring4R\" type=\"checkbox\" value=\"8\">\n";
        print "</TD></TR>\n";
        print "</TABLE>\n";
        print "</TD>\n"; // End of Rings Cell
        print "<TD WIDTH=25%VALIGN=TOP ALIGN=CENTER BGCOLOR=#FFAAFF>\n"; // Reeds Cell
        print "<H2>Reeds Course</H2>\n";
    print "<P>Didn't particapate?<BR>Check here <input name=\"NOREEDS\" type=\"checkbox\"></P>\n";
        print "<TABLE>\n";
        print "<TR><TD>\n";
        print "LEFT\n";
        print "</TD><TD>\n";
        print "LANE\n";
        print "</TD><TD>\n";
        print "RIGHT\n";
        print "</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed2L\" type=\"checkbox\" value=\"15\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "2 in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed2R\" type=\"checkbox\" value=\"15\">\n";
        print "</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed4L\" type=\"checkbox\" value=\"12\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "4 in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed4R\" type=\"checkbox\" value=\"12\">\n";
        print "</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed6L\" type=\"checkbox\" value=\"9\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "6 in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed6R\" type=\"checkbox\" value=\"9\">\n";
        print "</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed8L\" type=\"checkbox\" value=\"6\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "8 in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed8R\" type=\"checkbox\" value=\"6\">\n";
        print "</TD></TR>\n";
        print "<TR><TD ALIGN=RIGHT>\n";
        print "<INPUT NAME=\"Reed9L\" type=\"checkbox\" value=\"3\">\n";
        print "</TD><TD ALIGN=CENTER>\n";
        print "10in\n";
        print "</TD><TD ALIGN=LEFT>\n";
        print "<INPUT NAME=\"Reed9R\" type=\"checkbox\" value=\"3\">\n";
        print "</TD></TR></TABLE>\n"; // END of Reeds Cell
        print "<TD WIDTH=15% VALIGN=TOP ALIGN=CENTER BGCOLOR=#AAFFFF>\n"; // MoARCH Cell
        print "<H2>Mounted Archery</H2>\n";
	    print "<P>Didn't particapate?<BR>Check here <input name=\"NOMOARCH\" type=\"checkbox\"></P>\n";
        print "<TABLE>\n";
	    print "<TR>\n";
  	    print "<TD ALIGN=RIGHT>First Pass:</TD>\n";
      print "<TD ALIGN=LEFT><input name=\"MApass1\" type=\"text\" size=\"2\" value=\"0\">\n";
    print "</TD></TR>\n";
    print "<TR>\n";
    print "<TD ALIGN=RIGHT>Second Pass:</TD>\n";
    print "<TD ALIGN=LEFT><input name=\"MApass2\" type=\"text\" size=\"2\" value=\"0\">\n";
    print "</TD></TR>\n";
    print "<TR>\n";
    print "<TD ALIGN=RIGHT>Third Pass:</TD>\n";
    print "<TD ALIGN=LEFT><input name=\"MApass3\" type=\"text\" size=\"2\" value=\"0\">\n";
    print "</TD></TR>\n";
    print "</TABLE>\n"; // END of MoARCH Cell
        print "<TD WIDTH=15% VALIGN=TOP ALIGN=CENTER BGCOLOR=#FFFFAA>\n"; // Birjas Cell
        print "<H2>Birjas</H2>\n";
    print "<P>Didn't particapate?<BR>Check here <input name=\"NOBIRJAS\" type=\"checkbox\"></P>\n";
        print "<TABLE>\n";
    print "<TR>\n";
    print "<TD ALIGN=RIGHT>First Pass:</TD>\n";
    print "<TD ALIGN=LEFT><input name=\"Bpass1\" type=\"text\" size=\"2\" value=\"0\">\n";
    print "</TD></TR>\n";
    print "<TR>\n";
    print "<TD ALIGN=RIGHT>Second Pass:</TD>\n";
    print "<TD ALIGN=LEFT><input name=\"Bpass2\" type=\"text\" size=\"2\" value=\"0\">\n";
    print "</TD></TR>\n";
    print "<TR>\n";
    print "<TD ALIGN=RIGHT>Third Pass:</TD>\n";
    print "<TD ALIGN=LEFT><input name=\"Bpass3\" type=\"text\" size=\"2\" value=\"0\">\n";
    print "</TD></TR>\n";
    print "</TABLE>\n"; // END of Birjas Cell

    print "<TR><TD COLSPAN=5 ALIGN=CENTER><input type=\"submit\" name=\"newdata\" value=\"Click here to add this score\">\n";
    print "</TD></TR></TABLE>\n"; // End of NEW SCORE Table
    print "</TABLE>\n";
} ELSE {
        print "Contact the Scorekeeper if you need to make adjustments or corrections</P>.\n";
}
print "<HR>\n";
print "<P>In this section you will see all of the scores posted from your event.  These scores are not considered offical until they are listed as 'accepted' or are displayed on the main score page.</P>\n";
print "<P>After you have used this system to enter all of the scores from your event you need to send copies to the Keeper of the Scores.  You are required to maintain the oringinals in your files.  You <u><b>MUST</b></u> send <u><b>COPIES</b></u> via Surface mail, FAX, or by special arrangements made with the Keeper of the Scores.</P>\n";
print "<H2>Entered Scores </H2>\n";
print "<TABLE BORDER=1 BGCOLOR=#BBBBBB TEXT=#000000>\n";
print "<TR ALIGN=CENTER>\n";
print " <TD>Rider:</TD>\n";
print " <TD>Horse:</TD>\n";
print " <TD>Event:</TD>\n";
print " <TD><B>H:</B></TD>\n";
print " <TD><B>R:</B></TD>\n";
print " <TD><B>D:</B></TD>\n";
print " <TD><B>M:</B></TD>\n";
print " <TD><B>B:</B></TD>\n";
print " <TD>I:</TD>\n";
print " <TD>A:</TD>\n";
print " <TD>Div:</TD>\n";
print " <TD>Status:</TD>\n";
print "</TR>\n";
$limits = "(($pgyear.EID = $EID ))";
$filterby = stripslashes($limits);
$Apcount = 0;
$AppLo = 0;
$ApDel = 0;
$ApPend = 0;
$setb = @mysql_query("SELECT PName,HName,Ename,SHscore,SRcount,SRscore,SDcount,SDscore,score,$pgyear.DIV,YID,seen,$pgyear.PID,$pgyear.HID,SMscore,cscore,SBscore FROM $pgyear LEFT JOIN riders ON $pgyear.PID=riders.PID LEFT JOIN events ON $pgyear.EID=events.EID LEFT JOIN horses ON $pgyear.HID=horses.HID LEFT JOIN heads ON $pgyear.SHID=heads.SHID LEFT JOIN rings ON $pgyear.SRID=rings.SRID LEFT JOIN reeds ON $pgyear.SDID=reeds.SDID LEFT JOIN moarch ON $pgyear.SMID=moarch.SMID LEFT JOIN birjas ON $pgyear.SBID=birjas.SBID WHERE $filterby", $db);
IF ($L = mysql_fetch_row($setb)) {
        do {
            echo "<TR ALIGN=CENTER>\n";
            IF (isset($L[3])) {
                $Lheads=$L[3];
            } ELSE {
                $Lheads="N/A";
            }
            IF (isset($L[5])) {
                $Lrings=$L[5];
            } ELSE {
                $Lrings="N/A";
            }
            IF (isset($L[7])) {
                $Lreeds=$L[7];
            } ELSE {
                $Lreeds="N/A";
            }
            IF (isset($L[14])) {
                $Lmoarch=$L[14];
            } ELSE {
                $Lmoarch="N/A";
            }
            IF (isset($L[16])) {
                $Lbirjas=$L[16];
            } ELSE {
                $Lbirjas="N/A";
            }

        $temp = $L[9];
        switch ($temp) {
                case "A":
                    $SDiv = "Adv 21";
                break;
            case "B":
                    $SDiv = "Adv 30";
                break;
            case "C":
                    $SDiv = "Int 21";
                break;
            case "D":
                    $SDiv = "Int 30";
                break;
            case "E":
                    $SDiv = "Beg 21";
                break;
            case "F":
                    $SDiv = "Beg 30";
                break;
            default:
                    $SDiv = "??????";
                break;
        }
            printf("<TD>%s</TD><TD>%s</TD><TD>%s</TD><TD>%s</TD><TD>%s / %s</TD><TD>%s  / %s</TD><TD>%s</TD><TD>%s</TD><TD>%s</TD><TD>%s</TD><TD>%s</TD>", stripslashes($L[0]), stripslashes($L[1]), stripslashes($L[2]), $Lheads, $L[4], $Lrings, $L[6], $Lreeds, $Lmoarch, $Lbirjas, $L[15], $L[8], $SDiv);
        $temp2 = $L[11];
                switch ($temp2) {
                	case "D":
                    	print "<TD>Accepted*</TD>\n";
                	 $AppLo++;
                	 break;
            	 case "Y":
        	 print "<TD>ACCEPTED</TD>\n";
              	 $Apcount++;
                	 break;
            	 case "Z":
            	 print "<TD>**DELETED**</TD>\n";
        	 $ApDel++;
            	 break;
            	 default:
            	 print "<TD>PENDING</TD>\n";
            	 $ApPend++;
            	 break;
            	}
            echo "</TR>\n";
        } while ($L = mysql_fetch_row($setb));
}
print "<TR><TD COLSPAN=12 ALIGN=CENTER>";
IF ($Apcount > 0) {
        print "<P>".$Apcount." scores from your event have been approved and are displayed on the main scores site.</P>\n";
}
IF ($AppLo > 0) {
        print "<P>".$AppLo." scores from your event have been approved; however, these riders have a better on file for this year.  Therefore it not currently displayed.</P>\n";
}
IF ($ApDel > 0) {
        print "<P>".$ApDel." scores from your event have been deleted from the database.  This is often done to clean up errors, or for other reasons.  If you feel this score was deleted in error, contact the scorekeeper.</P>\n";
}
IF ($ApPend > 0) {
        print "<P>".$ApPend." scores from your event have been logged.  Pending scores should not alarm you, a number of reasons will keep certain scores Pending.  If all of your scores are Pending, it usually only means that either the Scorekeeper has not received the hardcopies from your event or that the Scorekeeper has not had a chance to review them.  Please contact the Scorekeeper to see if they have received your hardcopies before assuming something is amiss.</P>\n";
}
print "<input type=\"submit\" name=\"newdata\" value=\"Logout\">\n";
print "</TD></TR>\n";
print "<TR><TD COLSPAN=3>\n";
print "<P>Final Notes:</P>\n";
print "<P>The championship rests on the Reeds and Rings games, and the table above referances that score as I: and AG: The values in these blanks are for the IKEqC: and All Games: blanks just like on your scoresheets.</P><P>Key for abbreviations:</P>\n";
print "<P><B>H:</B> is for Heads.<BR><B>R:</B> is for Rings.<BR><B>D:</B> is for Reeds.<BR><B>M:</B> is for Mounted Archery.<BR><B>B:</B> is for Birjas.<BR><B>I:</B> is for IKEqC score total.<BR><B>A:</B> is for the total for All Games offered at this event.</P>\n";
print "</TD><TD COLSPAN=9>\n";
 include "../incls/hoofnote.htm";  // Master footnotes file
print "</TD></TR>\n";
?>
</TABLE>
</BLOCKQUOTE>
</BLOCKQUOTE>
</body>
</html>
