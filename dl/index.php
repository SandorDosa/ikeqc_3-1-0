<?php
/**
 * Created by PhpStorm.
 * User: Alpha
 * Date: 4/23/17
 * Time: 1:41 PM
 */

$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";

OpenTOP("IKEqC AS LII");

halter();

print "<section class=\"w3-row w3-theme\">\n"; // Main window

print "<article class=\"w3-col m9 l10 w3-theme\">\n"; // Content

print "<div class=\"w3-panel w3-theme-l2 w3-border w3-margin\">\n";
print "<H3>Available Downloads</H3>\n";
print "<p><a href=\"IKEqC_LII_r52-4.pdf\">Rules and Regulations for AS LII</a> -- Publication date April 30, 2017 (rev 52.4)<br>\n";
print "<a href=\"IKEqCMainSignoff-ASLII.pdf\">EMiCs Signoff sheet for AS LII</a> -- Publication date April 30, 2017 (rev 52.2)<br>\n";
print "<a href=\"IKEqCParticipantRoster-ASLII.pdf\">Participant Roster sheet for AS LII</a> -- Publication date April 30, 2017 (rev 52.2)<br>\n";
print "<a href=\"IKEqCScoresheetBeheadTheEnemy2017v2.1.pdf\">Behead the Enemy Scoresheet</a> -- Publication date May 5, 2017 (Note on form which course length)<br>\n";
print "<a href=\"IKEqCScoresheetRingTilt-ASLII.pdf\">Ring Tilt Scoresheet</a> -- Publication date May 5, 2017<br>\n";
print "<a href=\"IKEqCScoresheetReedChop-ASLII.pdf\">Reed Chop Scoresheet</a> -- Publication date May 5, 2017<br>\n";
print "<a href=\"IKEqCScoresheetArcherySingleShot-ASLII.pdf\">Mounted Archery Single Target</a> -- Publication date May 5, 2017<br>\n";
print "<a href=\"IKEqCScoresheetArcheryTripleShot-ASLII.pdf\">Mounted Archery Triple Target</a> -- Publication date May 5, 2017</p>\n";

print "<p><a href=\"IKEqC-LII_exp_r52-4.pdf\">Current Experimental Rules being considered</a> -- Publication date May 14, 2017</p>\n"   ;

print "<hr>\n";
print "<p><a href=\"http://scaikeqc.org/index.php\">Click here to return to the main page.</a></p>\n";
print "</div>\n";
print "</section>\n"; // End Main Window
hoofer();