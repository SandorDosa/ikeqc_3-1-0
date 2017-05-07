<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 5/5/17
 * Time: 8:24 PM
 */

$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "colors.inc";
include "year.inc";
require "blog/wp-blog-header.php";

OpenTOP("IKEqC AS LII");

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


print "<article class=\"w3-col m9 l10 w3-theme w3-center\">\n"; // Content

print "<div class=\"w3-panel w3-theme-l2 w3-border w3-center\">\n";
print "<H1>Mounted Archery -- Single Target</H1>\n";
print "<div class='w3-centered'><table style='margin: 0 auto;'>\n";
$count = 0;
$A = mysqli_query($db_3, "SELECT riders.Pname,ma_single.SMSscore,ma_single.DVN FROM riders LEFT JOIN ma_single ON riders.PID = ma_single.PID WHERE ma_single.SMSseen = 'Y' ORDER BY ma_single.SMSscore DESC");
IF ($AA = mysqli_fetch_array($A)) {
    do {
        print "<tr><td class='w3-left-align'>{$AA[0]}</td><td class='w3-right-align'>{$AA[1]}</td>";
        SWITCH ($AA[2]) {
            CASE 1:
                print "<td class='w3-theme-d5'>Canter</td>\n";
                break;
            CASE 2:
                print "<td class='w3-theme-d5'>Trot</td>\n";
                break;
            CASE 3:
                print "<td class='w3-theme-d5'>Walk</td>\n";
                break;
            DEFAULT:
                print "<td class='w3-theme-d5'>Walk</td>\n";
                break;
        }
    } while ($AA = mysqli_fetch_array($A));
}
print "</table></div>\n";

print "<a href=\"http://scaikeqc.org/index.php\">Click here to return to the main page.</a></p>\n";
print "</div>\n";

print "<div class=\"w3-panel w3-theme-l2 w3-center\">\n";
print "<p>For Mounted Archery -- Single Target, the Rider makes three passes against one target.  Hits on the 60cm FITA standard target score:<br>25 points for Gold<br>20 points for Red<br>15 for Blue<br>10 for Black<br>5 for White<br>\n";
print "Should a arrow strike on the line between colors, it scores to the Rider's advantage.  An additional 15 point award is scored if the Rider can clearly demonstrate the correct technique on at least one of the three passes -- even if they miss.  Bounces and hits that fall out or pass completely through a target do not score.</p>\n";

print "</div>\n";

print "</article>\n";
print "<article class=\"w3-col m3 l2 w3-theme\">\n"; // Sidebar begins

  print "<div class=\"w3-panel w3-theme-l4 w3-center\">\n";
  arc_list();
  print "</div>\n"; // Sidebar ends
print "</article>\n";

print "</section>\n"; // End Main Window

hoofer();