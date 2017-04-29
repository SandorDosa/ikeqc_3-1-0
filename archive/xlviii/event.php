<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<link rel="stylesheet" type="text/css" href="../shiny.css"/>
<?php include "year-rw.php"; // this file makes it easy to change the tournament year dynamically throughout the whole site.
print "<title>IKEqC scores for A.S. ".$ucyear."</title>\n";?>
</head>

<body>

<div id="biggirl-overalls"> <!-- defines the overall content area for admin pages-->

<!-- shared header for all admin files -->
<?php include ("../incls/headeradmin.php");?>
<!-- end shared header, begin main-text -->

<h2>Welcome Doucette!</h2>

<form name="eventm" action="<?php echo $php_self; ?>" method="post">


<?php
mysql_select_db("scaikeqc_ikeqc", $db);
if (isset($newrec)) {
  if ($edated == 'xxx' or $edatem == 'xxx' or $edatey =='xxx') {
    echo "<h2>Invalid date supplied. Please select the proper date from the drop down boxes.  Click back button to continue</h2>\n";
    die;
  }
  $setba = mysql_query("select * from events", $db);
  do {
    if ($l = mysql_fetch_row($setba)) {
      if ($l[2] == $ename) {
        echo "<h2>You are trying to add an event that already exists. This includes events from previous years. The name for each event must be unique.</h2><br/>process terminated.<br/>If you meant to edit an event, click the back button and click the button to alter event to submit your changes.\n";
        die;
      }
    }
  } while ($l = mysql_fetch_row($setba));

  $edate = $edatey."-".$edatem."-".$edated;
  $setab = mysql_query("insert into events values ( null, '$edate', '$ename', '$epass', '$eadmin', '$estatus', '$anyear')", $db);
  if ($setab) {
    echo"<h2>Event database updated successfully</h2>\n";
    printf("<a href=\"%s\">click here</a> to return.\n", $php_self);
    die;
  }
}
if (isset($update)) {
  if ($edated == 'xxx' or $edatem == 'xxx' or $edatey =='xxx') {
    echo "<h2>Invalid date supplied. Please select the proper date from the drop down boxes.  click back to continue</h2>\n";
    die;
  }
  $edate = $edatey."-".$edatem."-".$edated;
  $setad = mysql_query("update events set edate='$edate', ename='$ename', epass='$epass', eadmin='$eadmin', estatus='$estatus' where (( eid='$eid' ))", $db);
  if ($setad) {
    echo"<h2>Event database updated successfully</h2>\n";
    printf("<a href=\"%s\">click here</a> to return.\n", $php_self);
    while (list($name, $value) = each($http_post_vars)) {
      echo "$name = $value<br/>\n";
  die;
  }
}
}
?>


<table class="scorelist">

 <tr>
  <th class="sgh">Status: Tentative</th>
  <th class="sgh">Status: Open</th>
  <th class="sgh">Status: Closed</th>
  <th class="sgh">Status: Cancelled</th>  
 <tr>
 
  <td class="sg1">
   <?php
   /* ----- Tentative Events Listing ------ */
   $sett = mysql_query("select * from events where estatus = 't' && eyear = $anyear", $db);
   if ($t = mysql_fetch_row($sett)) {
     do {
       printf("<p><a href=\"event.php?eid=%s\">%s</a></p>\n", $t[0], $t[2]);
     } while ($t = mysql_fetch_row($sett));
   } else {
     echo"none\n";
   }
   ?>
  </td>
  <td class="sg1">
   <?php
   /* ----- Open Events Listing ------ */
   $seta = mysql_query("select * from events where estatus = 'o' && eyear = $anyear", $db);
   if ($a = mysql_fetch_row($seta)) {
     do {
       printf("<p><a href=\"event.php?eid=%s\">%s</a></p>\n", $a[0], $a[2]);
     } while ($a = mysql_fetch_row($seta));
   } else {
     echo"none\n";
   }
   ?>
  </td>
  <td class="sg1">
   <?php
   /* ----- Closed Events Listing ------ */
   $setc = mysql_query("select * from events where estatus = 'c' && eyear = $anyear", $db);
   if ($c = mysql_fetch_row($setc)) {
     do {
       printf("<p><a href=\"event.php?eid=%s\">%s</a></p>\n", $c[0], $c[2]);
     } while ($c = mysql_fetch_row($setc));
   } else {
     echo"none\n";
   }
   ?>
  </td>
  <td class="sg1">
   <?php
   /* ----- Cancelled Events Listing ------ */
   $setx = mysql_query("select * from events where estatus = 'x' && eyear = $anyear", $db);
   if ($x = mysql_fetch_row($setx)) {
     do {
       printf("<p><a href=\"event.php?eid=%s\">%s</a></p>\n", $x[0], $x[2]);
     } while ($x = mysql_fetch_row($setx));
   } else {
     echo"none\n";
   }
  srand((double)microtime()*1000000);
  $randpass = rand(1234,29999);
  if (isset($eid)) {
    printf("<input name=\"eid\" type=\"hidden\" value=\"%s\">\n", $eid);
    $setac = mysql_query("select * from events where eid=$eid", $db);
    if ($ac = mysql_fetch_row($setac)) {
      $mod = true;
      $ename = $ac[2];
      $epass = $ac[3];
      $eadmin = $ac[4];
      $estatus = $ac[5];
      $eyear = $ac[6];
      $setey = mysql_query("select left(edate, 4) from events where eid=$eid", $db);
      if ($ey = mysql_fetch_row($setey)) {
        $edatey = $ey[0];
      }
      $setem = mysql_query("select substring(edate, 6, 2) from events where eid=$eid", $db);
      if ($em = mysql_fetch_row($setem)) {
        $edatem = $em[0];
      }
      $seted = mysql_query("select right(edate, 2) from events where eid=$eid", $db);
      if ($ed = mysql_fetch_row($seted)) {
        $edated = $ed[0];
      }
    }
  }
  ?>
  </td>
 </tr>
</table>

<table> 
 <tr>
  <td align=right>Event Name:</td>
  <td><input name="ename" type="text" value="<?php echo $ename?>" size="30" cols=80></td>
  <td colspan=2 rowspan=10>
  <center><h3>instructions:</h3></center>
  <p>On this page you will see all of the events in the present database above.<br/>
  To the left you see a form to create a new entry in the events database.<br/>
  The form should be fairly self-explanatory with the only real feature to explain is the assigned password area.<br/>
  In order to both control outside access to the database and to keep tabs on things internally, you can manually assign a password or use the randomly generated one already displayed. This password is the event code that is requested on the emic score input page.</p>
  <p>One other point of note, is that if an event is listed as anything other than "open" the EMiC can check their event's homepage to see the status of their scores, but cannot enter data.  Therefore if change an event to "closed" it will lockout addition score inputs.</p>
  </td>
 </tr>
 <tr>
  <td align=right rowspan=3>Event Date:</td>
  <td><select name="edatem">
     <?php
     if (isset($edatem)) {
       printf("<option selected>%s</options>\n", $edatem);
     } else {
     echo"<option selected value=\"xxx\">month</option>\n";
     }
     ?>
     <option value=\"xxx\">-----</option>
     <option value=5>May</option>
     <option value=6>June</option>
     <option value=7>July</option>
     <option value=8>August</option>
     <option value=9>September</option>
     <option value=10>October</option>
     <option value=11>November</option>
     <option value=12>December</option>
     <option value=1>January</option>
     <option value=2>February</option>
     <option value=3>March</option>
     <option value=4>April</option>
     </select>
  </td>
 </tr>
 <tr>
  <td><select name="edated">
     <?php
     if (isset($edated)) {
       printf("<option selected value=%s>%s</options>\n", $edated, $edated);
     } else {
     echo"<option selected value=\"xxx\">day</option>\n";
     }
     ?>
     <option>1</option>
     <option>2</option>
     <option>3</option>
     <option>4</option>
     <option>5</option>
     <option>6</option>
     <option>7</option>
     <option>8</option>
     <option>9</option>
     <option>10</option>
     <option>11</option>
     <option>12</option>
     <option>13</option>
     <option>14</option>
     <option>15</option>
     <option>16</option>
     <option>17</option>
     <option>18</option>
     <option>19</option>
     <option>20</option>
     <option>21</option>
     <option>22</option>
     <option>23</option>
     <option>24</option>
     <option>25</option>
     <option>26</option>
     <option>27</option>
     <option>28</option>
     <option>29</option>
     <option>30</option>
     <option>31</option>
     </select>
  </td>
 </tr>
 <tr>
  <td><select name="edatey">
     <?php
     if (isset($edatey)) {
       printf("<option selected value=%s>%s</options>\n", $edatey, $edatey);
     } else {
     echo"<option selected value=\"xxx\">year</option>\n";
     }
     print "<option value=\"xxx\">----</option>\n";
     print "<option>".$gyear."</option>\n";
     print "<option>".$gpyear."</option>\n";
     ?>
     </select>
  </td>
 </tr>
 <tr>
  <td align=right>Event Contact:</td>
  <td><input name="eadmin" type="text" value="<?php echo $eadmin?>" size="30" cols=80></td>
 </tr>
 <tr>
  <td align=right>Assigned Password:</td>
  <?php
   if (!isset($epass)) {
    $epass = $randpass;
   }
   ?>
  <td><input name="epass" type="text" size="16" value="<?php echo $epass?>"></td>
 </tr>
 <tr>
  <td align=right rowspan=4>status:</td>
  <?php
  if ($estatus == 't') {
    $est = "checked";
  }
  if ($estatus == 'o') {
    $eso = "checked";
  }
  if ($estatus == 'c') {
    $escl = "checked";
  }
  if ($estatus == 'x') {
    $esx = "checked";
  }
  printf("<td><input name=\"estatus\" %s type=\"radio\" value=\"t\">tenative</td>\n</tr>\n<tr>\n", $est);
  printf("<td><input name=\"estatus\" %s type=\"radio\" value=\"o\">open for data entry</td>\n</tr>\n<tr>\n", $eso);
  printf("<td><input name=\"estatus\" %s type=\"radio\" value=\"c\">closed and filed</td>\n</tr>\n<tr>\n", $escl);
  printf("<td><input name=\"estatus\" %s type=\"radio\" value=\"x\">cancelled</td>\n</tr>\n<tr>\n", $esx);
  ?>
  <td><input name="newrec" value="new event" type="submit"></td>
  <td><input name="update" value="alter event" type="submit"></td>
  <td colspan=2><input name="reset" value="click here to reset this form" type="reset"></td>
  <!--<a href="event.php?">click here</a> to reset the form.-->

  </td>
 </tr>
</table>
<p><a href="approve.php">click here</a> to view the raw database and approve scores on the approvals page.</p>


</div> <!-- closes main-text-admin -->
</div> <!-- closes biggirl-overalls -->

</body>
</html>