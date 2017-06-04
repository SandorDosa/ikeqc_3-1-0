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
include "colors.inc";
include "index_funcs.inc";

OpenTOP("IKEqC AS LII");

halter();

print "<section class=\"w3-row w3-theme\">\n"; // Main window

print "<article class=\"w3-col m9 l10 w3-theme\">\n"; // Content

print "<div class=\"w3-panel w3-theme-l2 w3-border w3-margin\">\n";
print "<H3>This Feature not available yet...</H3>\n";
print "<p>Sandor is working hard to implement all sorts of new things on the website.<br>Please check back later for all the great features we have planned.<hr>\n";
print "<a href=\"http://scaikeqc.org/index.php\">Click here to return to the main page.</a></p>\n";
print "</div>\n";

print "</section>\n"; // End Main Window
hoofer();