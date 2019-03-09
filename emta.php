<?php
/**
 * Created by PhpStorm.
 * User: Alpha
 * Date: 5/3/17
 * Time: 9:23 PM
 */

$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "colors.inc";
include "index_funcs.inc";

OpenTOP("EM/TA Portal");

print "<section class=\"w3-row w3-theme\">\n"; // Banner
print "<article class=\"w3-col m3 l2 w3-cell w3-theme w3-center\">\n"; // Logo Block
print "<img title=\"Logo\" alt=\"Or, A Chamfron and in base the letters IKEqC vert.\" src=\"I3Logo3.png\">\n";
print "</article>\n"; // End Logo block
print "<article class=\"w3-col m9 l10 w3-theme w3-center w3-cell-middle\">\n"; // Title Block
print "<H1>Inter-Kingdom Equestrian Competition</H1>\n";
print "<p>In the Fifty-Second Year of the Society of Creative Anachronism</p>\n";
print "</article>\n"; // End Title block
print "</section>\n"; // End Banner block

print "<section class=\"w3-row w3-theme\">\n"; // Main window

print "<article class=\"w3-col m9 l10 w3-theme\">\n"; // Content

print "<div class=\"w3-panel w3-theme-l2 w3-border w3-margin\">\n";
print "<H3>Equestrian Marshal and Tournament Assistant Portal</H3>\n";
print "<p>Welcome IKEqC Event runners!<br>While it would be accurate to say that your contributions are invaluable to the IKEqC its also quite true to say we couldn't do it without you!<br>On behalf of the IKEqC Council, we are glad your here.</p>\n";
print "<div class=\"w3-container w3-theme-l4\">\n";
print "<p>This page is dedicated to helping you run your Event or Practice and in entering your scores.</p>\n";
print "</div>\n";
print "<div class=\"w3-container w3-theme-d2\">\n";
print "<p>Currently, the online systems are being stress tested.  In the interim, to register an event or practice, please send an email with the details of your event or practice and your contact details to \"reports (at) scaikeqc (dot) org\" add \"[IKEqC]\" to the subject line and you will contacted with instructions.</p>\n";
print "</div>\n";
print "<div class=\"w3-container w3-theme-l4\">\n";
print "<p>Tournament Assistant applications are OPEN.  Please email letters of introduction to \"ikeqc (at) scaikeqc (dot) org\" and the IKEqC Council will contact you with instructions.</p>\n";
print "</div>\n";
//print "<div class=\"w3-container w3-theme-d4\">\n";
//print "<p>Tournament Assistant renewals are CLOSED.</p>\n";
//print "</div>\n";



print "<a href=\"http://scaikeqc.org/index.php\">Click here to return to the main page.</a></p>\n";
print "</div>\n";

print "</section>\n"; // End Main Window

hoofer();
