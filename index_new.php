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

// This is the splash page canidate.

OpenTOP("IKEqC AS LII");

//<div class="w3-row">\n";
//<div class="w3-col m3 l2">\n";
//<p>12 columns on a small screen, 4 on a medium screen, and 3 on a large screen.</p>\n";
//</div>\n";
//<div class="w3-col m8 l9">\n";
//<p>12 columns on a small screen, 8 on a medium screen, and 9 on a large screen.</p>\n";
//</div>\n";
//</div>\n";

print "<section class=\"w3-row w3-theme\" name=\"Banner\">\n";
  print "<article class=\"w3-col m3 l2 w3-cell w3-theme w3-center\" name=\"Logo_Block\">\n";
    print "<img title=\"Logo\" alt=\"Or, A Chamfron and in base the letters IKEqC vert.\" src=\"I3Logo3.png\">\n";
  print "</article>\n"; // Logo
  print "<article class=\"w3-col m9 l10 w3-theme w3-center w3-cell-middle\" name=\"Title_Block\">\n";
    print "<H1>Inter-Kingdom Equestrian Competition</H1>\n";
    print "<p>In the Fifty-Second Year of the Society of Creative Anachronism</p>\n";
      print "<div class=\"w3-bar w3-center\">\n";
      print "<a href=\"#\" class=\"w3-bar-item w3-button w3-mobile\">Rules</a>\n";
      print "<a href=\"#\" class=\"w3-bar-item w3-button w3-mobile\">Downloads</a>\n";
      print "<a href=\"#\" class=\"w3-bar-item w3-button w3-mobile\">Scores Archive</a>\n";
      print "<a href=\"#\" class=\"w3-bar-item w3-button w3-mobile\">Blog Archive</a>\n";
      print "<a href=\"#\" class=\"w3-bar-item w3-button w3-mobile\">Made Possible by:</a>\n";
      print "</div>";
  print "</article>\n"; // Title
print "</section>\n";

print "<section class=\"w3-row w3-theme\" name=\"Main_Window\">\n";

  print "<article class=\"w3-col m9 l10 w3-theme\" name=\"Content\">\n";

    // IF EXISTS SPECIAL NOTICE
    print "<div class=\"w3-panel w3-theme-l1 w3-border w3-margin\">\n";
      print "<H3>SPECIAL NOTICE:</H3>\n";
      print "<p>[text of special notice here]</p>\n";
    print "</div>\n";

    // IF EXISTS Blog Article within date
    print "<div class=\"w3-panel w3-theme-l2 w3-border w3-margin\">\n";
      print "<H3>Blog Article</H3>\n";
      print "<em>Byline</em>\n";
      print "<p>Lorum Ipsum Dolar SitLorum Ipsum Dolar SitLorum Ipsum Dolar SitLorum Ipsum Dolar SitLorum Ipsum Dolar SitLorum Ipsum Dolar SitLorum Ipsum Dolar SitLorum Ipsum Dolar Sit...</p>\n";
    print "</div>\n";

    print "<section class=\"w3-container w3-center\" name=\"Top5_Scores_Grid\">\n";
      print "<article class=\"w3-row\">\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>[Game]<br>\n";
          print "[1st]<br>\n";
          print "[2nd]<br>\n";
          print "[3rd]<br>\n";
          print "[4th]<br>\n";
          print "[5th]</p>\n";
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>[Game]<br>\n";
          print "[1st]<br>\n";
          print "[2nd]<br>\n";
          print "[3rd]<br>\n";
          print "[4th]<br>\n";
          print "[5th]</p>\n";
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>[Game]<br>\n";
          print "[1st]<br>\n";
          print "[2nd]<br>\n";
          print "[3rd]<br>\n";
          print "[4th]<br>\n";
          print "[5th]</p>\n";
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>[Game]<br>\n";
          print "[1st]<br>\n";
          print "[2nd]<br>\n";
          print "[3rd]<br>\n";
          print "[4th]<br>\n";
          print "[5th]</p>\n";
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>[Game]<br>\n";
          print "[1st]<br>\n";
          print "[2nd]<br>\n";
          print "[3rd]<br>\n";
          print "[4th]<br>\n";
          print "[5th]</p>\n";
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>[Game]<br>\n";
          print "[1st]<br>\n";
          print "[2nd]<br>\n";
          print "[3rd]<br>\n";
          print "[4th]<br>\n";
          print "[5th]</p>\n";
        print "</div>\n";
      print "</article>\n";
    print "</section>\n";
  print "</article>\n";

  print "<article class=\"w3-col m3 l2 w3-theme\" name=\"Sidebar\">\n"; // Sidebar begins

    print "<div class=\"w3-panel w3-theme-l2 w3-center\">\n";
      print "<strong>Kingdom Standings</strong>\n";
      print "<p>[1st place]</p>\n";
      print "<p>[2nd place]</p>\n";
      print "<p>[3rd place]</p>\n";
    print "</div>\n";
    print "<div class=\"w3-panel w3-theme-l4 w3-center\">\n";
      print "<strong>Archive</strong>\n";
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
  print "</article>\n";



print "</section>\n";