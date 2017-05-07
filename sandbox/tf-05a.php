<!DOCTYPE html>
<?PHP
// This is a testbed for a mobile-first data entry system for the IKEqC.
// Sandor Dosa, Jan 2017
// This is v.03
//tf-04a.php
?>

<html>
<title>EXPERIMENTAL NEW FORM</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body style="max-width:600px">

<header class="w3-container w3-teal">
  <h1>Sandboxed Score Calculations</h1>
    <p>This page is designed for use on smartphone screens.  Excessive whitespace on larger clients is a byproduct of this and will be dealt with in due course.</p>

</header>

<?PHP

//IF ($_server['REQUEST_METHOD'] == POST) {
IF (isset($Pname)) {

   echo "<header class=\"w3-container w3-deep-orange\">\n";
  
   IF (!isset($MINS)) {
   	$MINS =0;
   }
   IF (!isset($SECS)) {
   	$MINS =0;
   }
   IF (!isset($TENS)) {
   	$MINS =0;
   }
   IF (!isset($HUNS)) {
   	$MINS =0;
   }
   $T1 = $MINS * 60;
   $T2 = $SECS + $T1;
   $T3 = ($T2 * 10) + $TENS;
   $RAW = ($T3 * 10) + $HUNS;
	IF ($RAW == 0) {
		$Hscore = 0;
	} ELSE {
	   $Hscore = 105 - ($RAW / 100) - $Penalty;
	}
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
   $Dscore = $Dsubscore;
   $Mscore = $MApass1 + $MApass2 + $MApass3; //Section marker for Mounted Archery
   $Bscore = $Bpass1 + $Bpass2 + $Bpass3;

   printf("The Rider:  %s <BR>\n", stripslashes($Pname));
   printf("Mounted on:  %s<BR>\n", stripslashes($Hname));
   printf("at %s<BR>\n", stripslashes($Ename));
	IF ($Hscore > 0) {
	   print "<B>Having scored ".$Hscore." with a time of ".$MINS.":".$SECS.".".$TENS.$HUNS." for the Heads Course.<BR>\n";
	}
	IF ($Rscore > 0) {
	   print "<B>Having taken ".$Rcount." rings scoring ".$Rscore." for the Rings Course.</B><BR>\n";
	}
	IF ($Dscore > 0) {	
	   print "<B>Having taken ".$Dcount." reeds scoring ".$Dscore." for the Reeds Course.</B><BR>\n";
	}   
	IF ($Mscore > 0) {	
	   print "<B>Having scored: ".$Mscore." in Mounted Archery.</B><BR>\n";
	}   
	IF ($Bscore > 0) {	
	   print "<B>Having scored: ".$Bscore." in Birjas.</B><BR>\n";
	}   
   echo "</header>\n";

   echo "<article class=\"w3-container w3-dark-grey\">\n"; 
   print_r($_POST);
   echo "</article>";
} ELSE {
	echo "No score to calculate";
	echo "Click <A HREF=\"tf-04.html\">here</a> to try again.";
	die();
}
?>




<footer class="w3-container w3-teal">
  <h5>This is only a test</h5>
  <p>Had this been a real form, you would have to logged in to use it.<BR>
  Click <A HREF="tf-05.php?">here</A> to start over.<BR>
  tf-05a.php</p>
  
</footer>

</body>
</html>



