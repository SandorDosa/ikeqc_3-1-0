<!DOCTYPE html>
<!-- TF-04.html -->
<!-- Temeplate form -->
<html>
<title>EXPERIMENTAL Data Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body style="max-width:600px">

<header class="w3-container w3-teal">
  <h1>Sandboxed Data Entry</h1>
    <p>First Attempt at event specific </p>
</header>

<?PHP
include "year.inc";

IF (!isset($EID)) {

	echo "<form method=\"post\" action=\"".$_SERVER['PHP_SELF']."\">\n";
	$prea = "SELECT * FROM events";
	$seta = mysql_query($prea, $db);
	IF ($N = mysql_fetch_array($seta)) {
		echo"<div class=\"w3-container w3-yellow w3-centered\">\n";
		echo"<p>Select Event:</p>\n";
		echo"<SELECT NAME=\"EID\">\n";
		do {
			printf("<OPTION VALUE=\"%s\">%s\n", $N[0], $N[2]);
		} while ($N = mysql_fetch_row($seta));
		echo"</SELECT>\n<BR>\n";
		echo"<center><INPUT type=\"submit\"></center>\n";
		echo"</div>\n";
		echo"<footer class=\"w3-container w3-teal w3-centered\">\n";
		echo"<h5>This is only a test</h5>\n";
		echo"<p>Had this been a real form, you would be logged in.</p>\n";
		echo"<p>tf-05.php</p>\n";
		echo"</footer>\n";
		echo"</body>\n";
		echo"</html>\n";
		die();
	} ELSE {
		echo"No Events are accepting scores currently.";
		print_r(mysql_error());
		die();
	}

} ELSE {

	$setb = mysql_query("SELECT * FROM events WHERE EID = $EID", $db);
	IF ($E = mysql_fetch_row($setb)) {
	    $Ename = $E[2];
		echo "<section class=\"w3-container w3-centered w3-green\">\n";
		echo "<H2>".$E[2]."</H2><HR>\n";
		echo "Offering the following games:<BR>\n";
		IF ($E[11] == "Y") {
			echo "Behead the Enemny<BR>\n";
		}
		IF ($E[12] == "Y") {
			echo "Ring Tilt<BR>\n";
		}
		IF ($E[13] == "Y") {
			echo "Reed Chop<BR>\n";
		}
		IF ($E[14] == "Y") {
			echo "Mounted Archery<BR>\n";
		}
		IF ($E[15] == "Y") {
			echo "Birjas<BR>\n";
		}
		echo "</section><BR>\n";
	} ELSE {
	echo "The Event selected does not exist in the master tables.";
	die();
	}
}
?>

<form method="post" action="tf-05a.php">

		<div id="Rider" class="w3-container w3-centered w3-red">
			<H2>Select the Rider</H2>
				<SELECT NAME="Pname"><OPTION VALUE="XXX">Select Rider<OPTION VALUE="XXX">-----
				<OPTION VALUE="Donwenna">Donwenna Beasthealer
				<OPTION VALUE="Macha">Macha the Determined
				<OPTION VALUE="Sandor">Sandor the Coding
				<OPTION VALUE="Example">Duke Sir Example
				<OPTION VALUE="Snooty">Count Sir Snooty
				<OPTION VALUE="Unprintable">Baron Unprintable
				<OPTION VALUE="Jezabel">Jezabel of the Lamp Gules
				</SELECT>
		</div>

		<div id="Horse" class="w3-container w3-centered w3-orange">
			<H2>Select the Horse</H2>
				<SELECT NAME="Hname"><OPTION VALUE="XXX">Select Horse<OPTION VALUE="XXX">-----
				<OPTION VALUE="Unknown">Unknown Mount
				<OPTION VALUE="Rental">Rental
				<OPTION VALUE="Ace">Ace
				<OPTION VALUE="Argent">Argent
				<OPTION VALUE="Bob">Bob
				<OPTION VALUE="Haybelly">Haybelly
				<OPTION VALUE="Indigo">Indigo
				<OPTION VALUE="Jerk">Jerk
				<OPTION VALUE="Tony">Tony
				<OPTION VALUE="Zeus">Zeus' Dream
				</SELECT>
		</div>

<?PHP
	IF ($E[11] == "Y") {
?>
		<div id="Heads" class="w3-container w3-light-blue">
			<table class="w3-table w3-centered"> 
				<TR>
					<TD>Heads</TD>
				</TR> 
				<TR class="w3-light-blue">
					<TD>
					Min
					<input name="MINS" type="text" size="1">
					</TD>

					<TD>
					<H2>:</H2>
					</TD>

					<TD>
					Sec
					<input name="SECS" type="text" size="2">
					</TD>

					<TD>
					<H2>.</H2>
					</TD>

					<TD>
					Tenths
					<input name="TENS" type="text" size="1">
					</TD>

					<TD>
					Hundredths
					<input name="HUNS" type="text" size="1">
					</TD>
				</TR>
				<TR class="w3-light-blue">
					<TD COLSPAN=6>
					Penaltes:
					<input name="Penalty" type="text" size="2">
					</TD>
				</TR>
			</TABLE>
		</div>
<?PHP } ?> 

<?PHP
	IF ($E[12] == "Y") {

?>
		<div id="Rings" class="w3-container w3-indigo">
			<table class="w3-table w3-centered"> 
				<TR>
					<TD>Rings</TD>
				</TR>
				<TR>
					<TD>LEFT SIDE</TD>
					<TD>RIGHT SIDE</TD>
				</TR>
				<TR>
					<TD>
					6"<INPUT NAME="Ring6L" class="w3-check" type="checkbox" value="4">-OR-
					<INPUT NAME="Ring1L" class="w3-check" type="checkbox" value="4" value="20">1"
					</TD>

					<TD>
					1"<INPUT NAME="Ring1R" class="w3-check" type="checkbox" value="4" value="20">-OR-
					<INPUT NAME="Ring6R" class="w3-check" type="checkbox" value="4" value="4">6"
					</TD>
				</TR>
				<TR>
					<TD>
					5"<INPUT NAME="Ring5L" class="w3-check" type="checkbox" value="6">-OR-
					<INPUT NAME="Ring2L" class="w3-check" type="checkbox" value="15">2"
					</TD>

					<TD>
					2"<INPUT NAME="Ring2R" class="w3-check" type="checkbox" value="15">-OR-
					<INPUT NAME="Ring5R" class="w3-check" type="checkbox" value="6">5"
					</TD>
				</TR>
				<TR>
					<TD>
					4"<INPUT NAME="Ring4L" class="w3-check" type="checkbox"  value="8">-OR-
					<INPUT NAME="Ring3L" class="w3-check" type="checkbox"  value="10">3"
					</TD>

					<TD>
					3"<INPUT NAME="Ring3R" class="w3-check" type="checkbox"  value="10">-OR-
					<INPUT NAME="Ring4R" class="w3-check" type="checkbox"  value="8">4"
					</TD>
				</TR>
			</TABLE>
		</div>
<?PHP } ?> 

<?PHP
	IF ($E[13] == "Y") {
?>
		<div id="Reeds" class="w3-container w3-cyan">
			<table class="w3-table w3-centered"> 
				<TR>
					<TD>Reeds</TD>
				</TR>
				<TR>
					<TD>LEFT</TD>
					<TD>LANE</TD>
					<TD>RIGHT</TD>
				</TR>

				<TR>
					<TD><INPUT NAME="Reed2L" class="w3-check" type="checkbox"  value="15"></TD>
					<TD>
					2"</TD>
					<TD><INPUT NAME="Reed2R" class="w3-check" type="checkbox"  value="15"></TD>
				</TR>

				<TR>
					<TD><INPUT NAME="Reed4L" class="w3-check" type="checkbox"  value="12"></TD>
					<TD>
					4"</TD>
					<TD><INPUT NAME="Reed4R" class="w3-check" type="checkbox"  value="12"></TD>
				</TR>

				<TR>
					<TD><INPUT NAME="Reed6L" class="w3-check" type="checkbox"  value="9"></TD>
					<TD>
					6"</TD>
					<TD><INPUT NAME="Reed6R" class="w3-check" type="checkbox"  value="9"></TD>
				</TR>

				<TR>
					<TD><INPUT NAME="Reed8L" class="w3-check" type="checkbox"  value="6"></TD>
					<TD>
					8"</TD>
					<TD><INPUT NAME="Reed8R" class="w3-check" type="checkbox"  value="6"></TD>
				</TR>

				<TR>
					<TD><INPUT NAME="Reed9L" class="w3-check" type="checkbox"  value="3"></TD>
					<TD>
					10"</TD>
					<TD><INPUT NAME="Reed9R" class="w3-check" type="checkbox"  value="3"></TD>
				</TR>
			</TABLE>
		</div>
<?PHP } ?> 

<?PHP
	IF ($E[14] == "Y") {
?>
		<div id="MoArch" class="w3-container w3-blue">
			<table class="w3-table w3-blue w3-centered"> 
				<TR>
					<TD>Mounted Archery</TD>
				</TR>
				<TR>
					<TD>First Pass: <input name="MApass1" type="text" size="2" value="0"></TD>
				</TR>

				<TR>
					<TD>Second Pass: <input name="MApass2" type="text" size="2" value="0"></TD>
				</TR>

				<TR>
					<TD>Third Pass: <input name="MApass3" type="text" size="2" value="0"></TD>
				</TR>
			</TABLE>
		</div>
<?PHP } ?> 

<?PHP
	IF ($E[15] == "Y") {
?>
		<div id="Birjas" class="w3-container w3-purple">
			<table class="w3-table w3-centered"> 
				<TR>
					<TD>Birjas</TD>
				</TR>
				<TR>
					<TD>First Pass: <input name="Bpass1" type="text" size="2" value="0"></TD>
				</TR>
				<TR>
					<TD>Second Pass: <input name="Bpass2" type="text" size="2" value="0"></TD>
				</TR>
				<TR>
					<TD>Third Pass: <input name="Bpass3" type="text" size="2" value="0"></TD>
				</TR>
			</TABLE>
		</div>
<?PHP } 

echo "<input type=\"hidden\" name=\"Ename\" value=\"$E[2]\">";
?> 
		<div id="FormEnd" class="w3-container w3-yellow">
			<input class="w3-centered" type="submit" value="submit">
		</div>

</form>

<footer class="w3-container w3-teal">
  <h5>This is only a test</h5>
  <p>Had this been a real form, you would be logged in.</p>
  <p>tf-05.php</p>
</footer>

</body>
</html>

