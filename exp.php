<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 5/5/17
 * Time:variations */

$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "colors.inc";
include "year.inc";
require "blog/wp-blog-header.php";

OpenTOP("IKEqC AS LII");

halter();

print "<section class=\"w3-row w3-theme w3-margin\">\n"; // Main window


print "<article class=\"w3-col m9 l10 w3-theme w3-center\">\n"; // Content

print "<div class=\"w3-panel w3-theme-l2 w3-border w3-center\">\n";
print "<H1>Experiments and Tests</H1>\n";
print "<p>From time to time comments on experimental games or tests of new ways of doing or scoring items will be presented here.<br>Any group is welcome to submit their thoughts and reports about these topics and will be credited with their participation in the experiments.</p>\n";
print "<h3>Birjas...</h3>\n";
print "<p>There have been several items of question about this game and each of its variants.  It was not well represented in IKEqC scores previously.  When it was played, it was often only ever played as the one-handed variation and even then only as part of a challenge course.<br>\n";
print "Reports should outline their methods and findings.  You may compare the proposed versus old rules and report on your opinions of them as well.  In particular experiments about the two-handed or 'Lance Birjas' are particularly desired.</p>\n";
print "<p>The rules currently being considered for use can be downloaded by <a href=\"./dl/IKEqC-LII_exp_r52-4.pdf\">clicking here</a>.</p>\n";
print "For reference you may <a href=\"old_birjas.pdf\">click here to download an archive of the old Birjas rules</a>.\n";
print "<hr>\n";

print "<a href=\"http://scaikeqc.org/index.php\">Click here to return to the main page.</a></p>\n";
print "</div>\n";

print "<div class=\"w3-panel w3-theme-l2 w3-center\">\n";
print "<p>Please send reports by email to \"ikeqc (at) scaikeqc (dot) org\".</p>\n";

print "</div>\n";

print "</article>\n";
//print "<article class=\"w3-col m3 l2 w3-theme\">\n"; // Sidebar begins
//
//  print "<div class=\"w3-panel w3-theme-l4 w3-center w3-margin\">\n";
//  arc_list();
//  print "</div>\n"; // Sidebar ends
//print "</article>\n";

print "</section>\n"; // End Main Window

hoofer();