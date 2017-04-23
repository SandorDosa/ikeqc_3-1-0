<?php
/**
 * Created by PhpStorm.
 * User: Alpha
 * Date: 4/5/17
 * Time: 1:01 PM
 */
$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "colors.inc";
include "index_funcs.inc";

$db_alt = mysqli_connect("localhost","scaikeqc_sb","Kni1ghts", "scaikeqc_sandbox");

OpenTOP("IKEqC AS LII");

print "<section class=\"w3-row w3-theme\">\n"; // Banner
  print "<article class=\"w3-col m3 l2 w3-cell w3-theme w3-center\">\n"; // Logo Block
    print "<img title=\"Logo\" alt=\"Or, A Chamfron and in base the letters IKEqC vert.\" src=\"I3Logo3.png\">\n";
  print "</article>\n"; // End Logo block
   print "<article class=\"w3-col m9 l10 w3-theme w3-center w3-cell-middle\">\n"; // Title Block
    print "<H1>Inter-Kingdom Equestrian Competition</H1>\n";
    print "<p>In the Fifty-Second Year of the Society of Creative Anachronism</p>\n";
      print "<div class=\"w3-bar w3-center\">\n"; // Quick Links
      print "<a href=\"https://sandordosa.github.io/ikeqc_lii\" class=\"w3-bar-item w3-button w3-mobile\">Rules</a>\n";
      print "<a href=\"http://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">Downloads</a>\n";
      print "<a href=\"http://scaikeqc.org/blog/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Blog</a>\n";
      print "</div>"; // End Quick Links
  print "</article>\n"; // End Title block
print "</section>\n"; // End Banner block

print "<section class=\"w3-row w3-theme\">\n"; // Main window

  print "<article class=\"w3-col m9 l10 w3-theme\">\n"; // Content

    include "special_notice.inc"; // Check for a special notice and display it.

    print "<div class=\"w3-panel w3-theme-l2 w3-border w3-margin\">\n";
      print "<H3>Blog Article</H3>\n";
      print "<em>Byline</em>\n";
      print "<p>Lorum Ipsum Dolar Sit Lorum Ipsum Dolar Sit Lorum Ipsum Dolar Sit Lorum Ipsum Dolar Sit Lorum Ipsum Dolar Sit Lorum Ipsum Dolar Sit...</p>\n";
    print "</div>\n"; // TODO Pull this block from WordPress content rather than hardcode.

    print "<section class=\"w3-container w3-center\">\n"; // Top 5 grid
      print "<article class=\"w3-row\">\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          t5_heads_short();
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          t5_heads_long();
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          t5_rings();
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          t5_reeds();
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          t5_ma_single();
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          t5_ma_triple();
        print "</div>\n";
      print "</article>\n";
    print "</section>\n";
  print "</article>\n"; // End Top 5 grid

  print "<article class=\"w3-col m3 l2 w3-theme\">\n"; // Sidebar begins

    print "<div class=\"w3-panel w3-theme-l2 w3-center\">\n";
      print "<strong>Kingdom Standings</strong>\n";
      print "<p>[1st place]</p>\n";
      print "<p>[2nd place]</p>\n";
      print "<p>[3rd place]</p>\n";
    print "</div>\n"; // TODO Kingdom Standings function
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