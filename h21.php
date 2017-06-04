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

halter();

print "<section class=\"w3-row w3-theme w3-margin\">\n"; // Main window


print "<article class=\"w3-col m9 l10 w3-theme w3-center\">\n"; // Content

print "<div class=\"w3-panel w3-theme-l2 w3-border w3-center\">\n";
print "<H1>Behead the Enemy - Short</H1>\n";
print "<div class='w3-centered'><table style='margin: 0 auto;'>\n";
$count = 0;
$A = mysqli_query($db_3, "SELECT riders.Pname,heads_short.SHSscore,heads_short.DVN,events.Ename FROM riders LEFT JOIN heads_short ON riders.PID = heads_short.PID LEFT JOIN events ON events.EID = heads_short.EID WHERE heads_short.SHSseen = 'Y' ORDER BY heads_short.SHSscore DESC");
IF ($AA = mysqli_fetch_array($A)) {
    print "<tr><th class='w3-left-align'>Name</th><th class='w3-center'>Score</th><th>Div</th><th class='w3-center'>Event</th></tr>\n";
    do {
        print "<tr><td class='w3-left-align'>{$AA[0]}</td><td class='w3-center'>{$AA[1]}</td>";
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
        print "<td>{$AA[3]}</td></tr>\n";
    } while ($AA = mysqli_fetch_array($A));
}
print "</table></div>\n";

print "<a href=\"http://scaikeqc.org/index.php\">Click here to return to the main page.</a></p>\n";
print "</div>\n";

print "<div class=\"w3-panel w3-theme-l2 w3-center\">\n";
print "<p>For Behead the Enemy - Short, Riders weave through six poles, striking at target heads on the four center poles.  Score is calculated based on time, the number of heads struck, the number of weaves made, and the divisional gait.</p>\n";
print "<p>See an error?  Please let us know by email at \"ikeqc (at) scaikeqc (dot) org\".</p>\n";

print "</div>\n";

print "</article>\n";
print "<article class=\"w3-col m3 l2 w3-theme\">\n"; // Sidebar begins

  print "<div class=\"w3-panel w3-theme-l4 w3-center w3-margin\">\n";
  arc_list();
  print "</div>\n"; // Sidebar ends
print "</article>\n";

print "</section>\n"; // End Main Window

hoofer();