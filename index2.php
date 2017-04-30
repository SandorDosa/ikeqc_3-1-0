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

$db_3 = mysqli_connect("localhost","scaikeqc_sb","Kni1ghts", "scaikeqc_sandbox");

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
      print "<a href=\"http://scaikeqc.org/not_yet.php\" class=\"w3-bar-item w3-button w3-mobile\">Forms/Downloads</a>\n";
      print "<a href=\"http://scaikeqc.org/blog/index.php\" class=\"w3-bar-item w3-button w3-mobile\">Blog</a>\n";
      print "</div>"; // End Quick Links
  print "</article>\n"; // End Title block
print "</section>\n"; // End Banner block

print "<section class=\"w3-row w3-theme\">\n"; // Main window

  print "<article class=\"w3-col m9 l10 w3-theme\">\n"; // Content

    include "special_notice.inc"; // Check for a special notice and display it.

    print "<section class=\"w3-container w3-center\">\n"; // Top 5 grid
      // TODO Add section re-arranger code based on average of all scores in each game
      // Something like this: >>> 'SELECT AVG(score) FROM (SELECT SMTscore AS score FROM ma_triple) TMP'; <<<
      print "<article class=\"w3-row\">\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>Reed Chop<br>\n";
          print "<table style='margin: 0 auto;'>\n";
          $count = 0;
          $A = mysqli_query($db_alt, "SELECT riders.Pname,reeds.SDscore FROM riders LEFT JOIN reeds ON riders.PID = reeds.PID WHERE reeds.SDseen = 'Y' ORDER BY reeds.SDscore DESC LIMIT 5");
          IF ($AA = mysqli_fetch_array($A)) {
              do {
                  print "<tr><td align='left'>{$AA[0]}</td><td align='right'>{$AA[1]}</td></tr>\n";
                  $count++;
              } while ($AA = mysqli_fetch_array($A));

          }
          IF ($count < 5) {
              do {
                  print "<tr><td colspan='2' align='center'>[Your name could be here]</td></tr>\n";
                  $count++;
              } while ($count < 5);
          }
          print "</table>\n";
        print "</div>\n";



        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>Behead the Enemy - Long<br>\n";
          print "<table style='margin: 0 auto;'>\n";
          $count = 0;
          $A = mysqli_query($db_alt, "SELECT riders.Pname,heads_long.SHLscore FROM riders LEFT JOIN heads_long ON riders.PID = heads_long.PID WHERE heads_long.SHLseen = 'Y' ORDER BY heads_long.SHLscore DESC LIMIT 5");
          IF ($AA = mysqli_fetch_array($A)) {
              do {
                  print "<tr><td align='left'>{$AA[0]}</td><td align='right'>{$AA[1]}</td></tr>\n";
                  $count++;
              } while ($AA = mysqli_fetch_array($A));

          }
          IF ($count < 5) {
              do {
                  print "<tr><td colspan='2' align='center'>[Your name could be here]</td></tr>\n";
                  $count++;
              } while ($count < 5);
          }
          print "</table>\n";
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>Ring Tilt<br>\n";
          print "<table style='margin: 0 auto;'>\n";
          $count = 0;
          $A = mysqli_query($db_alt, "SELECT riders.Pname,rings.SRscore FROM riders LEFT JOIN rings ON riders.PID = rings.PID WHERE rings.SRseen = 'Y' ORDER BY rings.SRscore DESC LIMIT 5");
          IF ($AA = mysqli_fetch_array($A)) {
              do {
                  print "<tr><td align='left'>{$AA[0]}</td><td align='right'>{$AA[1]}</td></tr>\n";
                  $count++;
              } while ($AA = mysqli_fetch_array($A));

          }
          IF ($count < 5) {
              do {
                  print "<tr><td colspan='2' align='center'>[Your name could be here]</td></tr>\n";
                  $count++;
              } while ($count < 5);
          }
          print "</table>\n";
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>Reed Chop<br>\n";
          print "<table style='margin: 0 auto;'>\n";
          $count = 0;
          $A = mysqli_query($db_alt, "SELECT riders.Pname,reeds.SDscore FROM riders LEFT JOIN reeds ON riders.PID = reeds.PID WHERE reeds.SDseen = 'Y' ORDER BY reeds.SDscore LIMIT 5");
          IF ($AA = mysqli_fetch_array($A)) {
              do {
                  print "<tr><td align='left'>{$AA[0]}</td><td align='right'>{$AA[1]}</td></tr>\n";
                  $count++;
              } while ($AA = mysqli_fetch_array($A));

          }
          IF ($count < 5) {
              do {
                  print "<tr><td colspan='2' align='center'>[Your name could be here]</td></tr>\n";
                  $count++;
              } while ($count < 5);
          }
          print "</table>\n";
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>Mounted Archery - Single<br>\n";
          print "<table style='margin: 0 auto;'>\n";
          $count = 0;
          $A = mysqli_query($db_alt, "SELECT riders.Pname,ma_single.SMSscore FROM riders LEFT JOIN ma_single ON riders.PID = ma_single.PID WHERE ma_single.SMSseen = 'Y' ORDER BY ma_single.SMSscore DESC LIMIT 5");
          IF ($AA = mysqli_fetch_array($A)) {
              do {
                  print "<tr><td align='left'>{$AA[0]}</td><td align='right'>{$AA[1]}</td></tr>\n";
                  $count++;
              } while ($AA = mysqli_fetch_array($A));

          }
          IF ($count < 5) {
              do {
                  print "<tr><td colspan='2' align='center'>[Your name could be here]</td></tr>\n";
                  $count++;
              } while ($count < 5);
          }
          print "</table>\n";
        print "</div>\n";
        print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
          print "<p>Mounted Archery - Triple<br>\n";
          print "<table style='margin: 0 auto;'>\n";
          $count = 0;
          $A = mysqli_query($db_3, "SELECT riders.Pname,ma_triple.SMTscore,ma_triple.DVN FROM riders LEFT JOIN ma_triple ON riders.PID = ma_triple.PID WHERE ma_triple.SMTseen = 'Y' ORDER BY ma_triple.SMTscore DESC LIMIT 5");
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
                  $count++;
              } while ($AA = mysqli_fetch_array($A));

          }
          IF ($count < 5) {
              do {
                  print "<tr><td colspan='3'>[Your name could be here]</td></tr>\n";
                  $count++;
              } while ($count < 5);
          }
          print "</table>\n";
        print "</div>\n";
      print "</article>\n";
    print "</section>\n";
  print "</article>\n"; // End Top 5 grid

  print "<article class=\"w3-col m3 l2 w3-theme\">\n"; // Sidebar begins

    print "<div class=\"w3-panel w3-theme-l2 w3-center\">\n";
      //print "<strong>Kingdom Standings</strong>\n";
      //print "<p>[1st place]</p>\n";
      //print "<p>[2nd place]</p>\n";
      //print "<p>[3rd place]</p>\n";
        require('../blog/wp-blog-header.php');//link to your blog-header.php using relative path
    print "<H2>From the blog...</H2>\n";
    $args = array( 'numberposts' => 1, 'post_status'=>"publish",'post_type'=>"post",'orderby'=>"post_date");
    $postslist = get_posts( $args );
      foreach ($postslist as $post) :  setup_postdata($post);
        print "<h3>".get_the_title()."</h3>\n";
        print "<p>\n".get_the_excerpt()."<hr>\n";
        print "<a href=\"".get_the_permalink()."\">Read the full post</a><br>Posted on: ".get_the_date();
        print "</p>\n";
      endforeach;

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