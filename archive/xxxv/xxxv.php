<?php
/**
 * Created by PhpStorm.
 * User: Alpha
 * Date: 4/23/17
 * Time: 1:41 PM
 */

$vars_start = get_defined_vars();
session_start();
include "../../connector.inc";
include "../../ikeqcfuncs.inc";
include "../../colors.inc";
include "../../index_funcs.inc"; // TODO Insure this is right on the server.

OpenTOP("Score Archive for AS XXXV");

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

    print "<div class=\"w3-container w3-theme-l4 w3-margin\">\n";

    $setb = mysqli_query($db_old,"SELECT * FROM xxxv WHERE ((xxxv.Division = 'B')) ORDER BY T_score DESC");
    IF ($B = mysqli_fetch_array($setb)) {
        print "<table>\n";
        print "<tr><th colspan=3 align='center'><h2>Division: Advanced -- 30'</h2></th></tr>\n";
        do {
            print "<tr>\n";
            printf("<td>%s</td><td>%s</td><td>Total Score: %s</td>\n", $B[0], $B[3], $B[16]);
            print "</tr>\n";
        } while ($B = mysqli_fetch_array($setb));
    }
    print "</div>\n";

print "<br>\n";

    print "<div class=\"w3-container w3-theme-l4 w3-margin\">\n";

    $seta = mysqli_query($db_old,"SELECT * FROM xxxv WHERE ((xxxv.Division = 'A')) ORDER BY T_score DESC");
    IF ($A = mysqli_fetch_array($seta)) {
        print "<table>\n";
        print "<tr><th colspan=3 align='center'><h2>Division: Advanced -- 21'</h2></th></tr>\n";
        do {
            print "<tr>\n";
            printf("<td>%s</td><td>%s</td><td>Total Score: %s</td>\n", $A[0], $A[3], $A[16]);
            print "</tr>\n";
        } while ($A = mysqli_fetch_array($seta));
    }
    print "</div>\n";




$seta = mysql_query("SELECT * FROM xxxv WHERE ((xxxv.Division = 'B')) ORDER BY T_score DESC", $db);
IF ($L = mysql_fetch_row($seta)) {
 echo "<tr><th colspan=3 class=\"sgh\"><h2>Division: Advanced -- 30'</h2></th></tr>\n";
 do {
 echo "<tr>\n";
 printf("<td class=\"sg1\"><a href=\"detail.php?Human=%s\">%s</td><td class=\"sg1\">%s</td><td class=\"sg2\">Total Score: %s</td>\n", $L[0], $L[0], $L[3], $L[16]);
 echo "</tr>\n";

 } while ($L = mysql_fetch_row($seta));
}

    print "</div>\n";




print "</div>\n";

print "<article class=\"w3-col m3 l2 w3-theme\">\n"; // Sidebar begins

  print "<div class=\"w3-panel w3-theme-l4 w3-center\">\n";
    print "<strong>Scores Archive</strong>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
    print "<p>[link]</p>\n";
  print "</div>\n"; // Sidebar ends
print "</article>\n"; // TODO Make these links work



print "</section>\n"; // End Main Window

print "<section class=\"w3-container w3-theme-d5 w3-center\">\n";
print "<div class=\"w3-bar w3-center\">\n"; // Quick Links
print "<a href=\"https://sandordosa.github.io/ikeqc_lii\" class=\"w3-bar-item w3-button w3-mobile\">Rules</a>\n";
print "<a href=\"http://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">Downloads</a>\n";
print "<a href=\"http://scaikeqc.org/archive/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Scores Archive</a>\n";
print "<a href=\"http://scaikeqc.org/blog/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Blog</a>\n";
print "<a href=\"http://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">Contact Us</a>\n";
print "<a href=\"http://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">EM/TA Portal</a>\n";
print "<a href=\"http://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">Rider Portal</a>\n";
print "<a href=\"http://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">Made Possible by:</a>\n";
print "<a href=\"http://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">Privacy Policy</a>\n";
print "</div>"; // End Quick Links
// TODO Footer section
print "</section>\n";