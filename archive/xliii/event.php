<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
<title>Event maintenance page</title>
</head>

<body BGCOLOR=#CCCCCC>
<H1>A.S. XLIII</H1>
<H2>Welcome Svana!</H2>
<form name="EventM" action="<?PHP echo $PHP_SELF; ?>" method="POST">
<?PHP

include "year.inc";
mysql_select_db("scaikeqc_ikeqc", $db);
IF (isset($NEWREC)) {
  IF ($EdateD == 'XXX' or $EdateM == 'XXX' or $EdateY =='XXX') {
    echo "<H2>INVALID DATE SUPPLIED.  Please select the proper date from the drop down boxes.  Click back to continue</H2>\n";
    die;
  }
  $setba = mysql_query("SELECT * FROM events", $db);
  do {
    IF ($L = mysql_fetch_row($setba)) {
      IF ($L[2] == $Ename) {
        echo "<H2>You are trying to add an event that already exists.  This includes events from previous years.  The name for each event must be unique.</H2><BR>Process terminated.<BR>If you meant to EDIT an event, click back and click the button to ALTER EVENT to submit your changes.\n";
        die;
      }
    }
  } while ($L = mysql_fetch_row($setba));

  $Edate = $EdateY."-".$EdateM."-".$EdateD;
  $setab = mysql_query("INSERT INTO events VALUES ( NULL, '$Edate', '$Ename', '$Epass', '$Eadmin', '$Estatus', '$anyear')", $db);
  IF ($setab) {
    echo"<H2>Event Databased Updated successfully</H2>\n";
    printf("<A HREF=\"%s\">Click here</A> to return.\n", $PHP_SELF);
    die;
  }
}
IF (isset($UPDATE)) {
  IF ($EdateD == 'XXX' or $EdateM == 'XXX' or $EdateY =='XXX') {
    echo "<H2>INVALID DATE SUPPLIED.  Please select the proper date from the drop down boxes.  Click back to continue</H2>\n";
    die;
  }
  $Edate = $EdateY."-".$EdateM."-".$EdateD;
  $setad = mysql_query("UPDATE events SET Edate='$Edate', Ename='$Ename', Epass='$Epass', Eadmin='$Eadmin', Estatus='$Estatus' WHERE (( EID='$EID' ))", $db);
  IF ($setad) {
    echo"<H2>Event Databased Updated successfully</H2>\n";
    printf("<A HREF=\"%s\">Click here</A> to return.\n", $PHP_SELF);
    WHILE (list($name, $value) = each($HTTP_POST_VARS)) {
      echo "$name = $value<BR>\n";
  die;
  }
}
}
?>
<TABLE Border=1>
 <TR>
  <TD ALIGN=CENTER>
   <H2>Tentative</H2>
   <?PHP
   $sett = mysql_query("SELECT * FROM events WHERE Estatus = 'T' && Eyear = $anyear", $db);
   IF ($T = mysql_fetch_row($sett)) {
     do {
       printf("<A HREF=\"event.php?EID=%s\">%s</A><BR>\n", $T[0], $T[2]);
     } while ($T = mysql_fetch_row($sett));
   } ELSE {
     echo"NONE\n";
   }
   ?>
  </TD>
  <TD ALIGN=CENTER>
   <H2>Open</H2>
   <?PHP
   $seta = mysql_query("SELECT * FROM events WHERE Estatus = 'O' && Eyear = $anyear", $db);
   IF ($A = mysql_fetch_row($seta)) {
     do {
       printf("<A HREF=\"event.php?EID=%s\">%s</A><BR>\n", $A[0], $A[2]);
     } while ($A = mysql_fetch_row($seta));
   } ELSE {
     echo"NONE\n";
   }
   ?>
  </TD>
  <TD ALIGN=CENTER>
   <H2>Closed</H2>
   <?PHP
   $setc = mysql_query("SELECT * FROM events WHERE Estatus = 'C' && Eyear = $anyear", $db);
   IF ($C = mysql_fetch_row($setc)) {
     do {
       printf("<A HREF=\"event.php?EID=%s\">%s</a><BR>\n", $C[0], $C[2]);
     } while ($C = mysql_fetch_row($setc));
   } ELSE {
     echo"NONE\n";
   }
   ?>
  </TD>
  <TD ALIGN=CENTER>
   <H2>Canclled</H2>
   <?PHP
   $setx = mysql_query("SELECT * FROM events WHERE Estatus = 'X' && Eyear = $anyear", $db);
   IF ($X = mysql_fetch_row($setx)) {
     do {
       printf("<A HREF=\"event.php?EID=%s\">%s</a><BR>\n", $X[0], $X[2]);
     } while ($X = mysql_fetch_row($setx));
   } ELSE {
     echo"NONE\n";
   }
  srand((double)microtime()*1000000);
  $randpass = rand(1234,29999);
  IF (isset($EID)) {
    printf("<INPUT NAME=\"EID\" TYPE=\"HIDDEN\" VALUE=\"%s\">\n", $EID);
    $setac = mysql_query("SELECT * FROM events WHERE EID=$EID", $db);
    IF ($AC = mysql_fetch_row($setac)) {
      $MOD = true;
      $Ename = $AC[2];
      $Epass = $AC[3];
      $Eadmin = $AC[4];
      $Estatus = $AC[5];
      $Eyear = $AC[6];
      $setey = mysql_query("SELECT LEFT(Edate, 4) FROM events WHERE EID=$EID", $db);
      IF ($EY = mysql_fetch_row($setey)) {
        $EdateY = $EY[0];
      }
      $setem = mysql_query("SELECT SUBSTRING(Edate, 6, 2) FROM events WHERE EID=$EID", $db);
      IF ($EM = mysql_fetch_row($setem)) {
        $EdateM = $EM[0];
      }
      $seted = mysql_query("SELECT RIGHT(Edate, 2) FROM events WHERE EID=$EID", $db);
      IF ($ED = mysql_fetch_row($seted)) {
        $EdateD = $ED[0];
      }
    }
  }
  ?>
  </TD>
 </TR>
 <TR>
  <TD ALIGN=RIGHT>Event Name:</TD>
  <TD ALIGN=LEFT><input name="Ename" type="text" value="<?PHP echo $Ename?>" size="30" cols=80></TD>
  <TD ALIGN=CENTER COLSPAN=2 ROWSPAN=10>
  <CENTER><H3>Instructions:</H3></CENTER>
  <P>On this page you will see all of the events in the present database above.<BR>
  To the left you see a form to create a new entry in the events database.<BR>
  The form should be fairly self-explainatory with the only real feature to explain is the Assigned password area.<BR>
  In order to both controll outside access to the database and to keep tabs on things internally.  You can manually assign a password or use the randomly generated one already displayed.  This password is the event code that is requested on the EMiC score input page.
  </P>
  <P>One other point of note, is that if an event is listed as anything other than "OPEN" the EMiC can check their event's homepage to see the status of their scores, but cannot enter data.  Therefore if change an event to "CLOSED" it will lockout addition score inputs.</P>
  </TD>
 </TR>
 <TR>
  <TD ALIGN=RIGHT ROWSPAN=3>Event Date:</TD>
  <TD ALIGN=LEFT><select name="EdateM">
     <?PHP
     IF (isset($EdateM)) {
       printf("<option selected>%s</options>\n", $EdateM);
     } ELSE {
     echo"<option selected value=\"XXX\">Month</option>\n";
     }
     ?>
     <option value=\"XXX\">-----</option>
     <option value=5>May</option>
     <option value=6>June</option>
     <option value=7>July</option>
     <option value=8>August</option>
     <option value=9>September</option>
     <option value=10>October</option>
     <option value=11>November</option>
     <option value=12>December</option>
     <option value=1>January</option>
     <option value=2>Febuary</option>
     <option value=3>March</option>
     <option value=4>April</option>
     </select>
  </TD>
 </TR>
 <TR>
  <TD ALIGN=LEFT><SELECT NAME="EdateD">
     <?PHP
     IF (isset($EdateD)) {
       printf("<option selected Value=%s>%s</options>\n", $EdateD, $EdateD);
     } ELSE {
     echo"<option selected value=\"XXX\">DAY</option>\n";
     }
     ?>
     <OPTION>1</OPTION>
     <OPTION>2</OPTION>
     <OPTION>3</OPTION>
     <OPTION>4</OPTION>
     <OPTION>5</OPTION>
     <OPTION>6</OPTION>
     <OPTION>7</OPTION>
     <OPTION>8</OPTION>
     <OPTION>9</OPTION>
     <OPTION>10</OPTION>
     <OPTION>11</OPTION>
     <OPTION>12</OPTION>
     <OPTION>13</OPTION>
     <OPTION>14</OPTION>
     <OPTION>15</OPTION>
     <OPTION>16</OPTION>
     <OPTION>17</OPTION>
     <OPTION>18</OPTION>
     <OPTION>19</OPTION>
     <OPTION>20</OPTION>
     <OPTION>21</OPTION>
     <OPTION>22</OPTION>
     <OPTION>23</OPTION>
     <OPTION>24</OPTION>
     <OPTION>25</OPTION>
     <OPTION>26</OPTION>
     <OPTION>27</OPTION>
     <OPTION>28</OPTION>
     <OPTION>29</OPTION>
     <OPTION>30</OPTION>
     <OPTION>31</OPTION>
     </SELECT>
  </TD>
 </TR>
 <TR>
  <TD ALIGN=LEFT><SELECT NAME="EdateY">
     <?PHP
     IF (isset($EdateY)) {
       printf("<option selected Value=%s>%s</options>\n", $EdateY, $EdateY);
     } ELSE {
     echo"<option selected value=\"XXX\">Year</option>\n";
     }
     print "<OPTION VALUE=\"XXX\">----</OPTION>\n";
     print "<OPTION>".$gyear."</OPTION>\n";
     print "<OPTION>".$gpyear."</OPTION>\n";
     ?>
     </SELECT>
  </TD>
 </TR>
 <TR>
  <TD ALIGN=RIGHT>Event Contact:</TD>
  <TD ALIGN=LEFT><INPUT NAME="Eadmin" TYPE="TEXT" VALUE="<?PHP echo $Eadmin?>" SIZE="30" COLS=80></TD>
 </TR>
 <TR>
  <TD ALIGN=RIGHT>Assigned Password:</TD>
  <?PHP
   IF (!isset($Epass)) {
    $Epass = $randpass;
   }
   ?>
  <TD ALIGN=LEFT><INPUT NAME="Epass" TYPE="TEXT" SIZE="16" VALUE="<?PHP ECHO $Epass?>"></TD>
 </TR>
 <TR>
  <TD ALIGN=RIGHT ROWSPAN=4>Status:</TD>
  <?PHP
  IF ($Estatus == 'T') {
    $EST = "CHECKED";
  }
  IF ($Estatus == 'O') {
    $ESO = "CHECKED";
  }
  IF ($Estatus == 'C') {
    $ESCL = "CHECKED";
  }
  IF ($Estatus == 'X') {
    $ESX = "CHECKED";
  }
  printf("<TD ALIGN=LEFT><INPUT NAME=\"Estatus\" %s type=\"radio\" VALUE=\"T\">Tenative</TD>\n</TR>\n<TR>\n", $EST);
  printf("<TD ALIGN=LEFT><INPUT NAME=\"Estatus\" %s type=\"radio\" VALUE=\"O\">Open for Data Entry</TD>\n</TR>\n<TR>\n", $ESO);
  printf("<TD ALIGN=LEFT><INPUT NAME=\"Estatus\" %s type=\"radio\" VALUE=\"C\">Closed and filed</TD>\n</TR>\n<TR>\n", $ESCL);
  printf("<TD ALIGN=LEFT><INPUT NAME=\"Estatus\" %s type=\"radio\" VALUE=\"X\">Cancelled</TD>\n</TR>\n<TR>\n", $ESX);
  ?>
  <TD><input NAME="NEWREC" VALUE="NEW EVENT" type="submit"></TD>
  <TD><input NAME="UPDATE" VALUE="ALTER EVENT" type="submit"></TD>
  <TD ALIGN=CENTER COLSPAN=2><INPUT NAME="RESET" VALUE="Click here to Reset this form" Type="RESET"></TD>
  <!--<A HREF="event.php?">click here</A> to reset the form.-->

  </TD>
 </TR>
</TABLE>
<A HREF="approve.php">Click Here</A> to view the raw database and approve scores.

</body>
</html>