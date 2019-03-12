<?php
/**
 * Created by PhpStorm.
 * User: Alpha
 * Date: 4/5/17
 * Time: 1:01 PM
 */

$vars_start = get_defined_vars();
session_start();
include "year.inc";
include "ikeqcfuncs.inc";
include "index_funcs.inc";
include "colors.inc";
require "blog/wp-blog-header.php"; //link to your blog-header.php using relative path

OpenTOP("IKEqC AS LIII");

halter();


print "<section class=\"w3-row w3-theme w3-margin\">\n"; // Main window

  print "<article class=\"w3-col m9 l10 w3-theme\">\n"; // Content

    print "<div class=\"w3-panel w3-theme-l2 w3-margin w3-center\">\n";
      print "<H2>From the blog...</H2>\n";
      $args = array( 'numberposts' => 1, 'post_status'=>"publish",'post_type'=>"post",'orderby'=>"post_date");
      $postslist = get_posts( $args );
      foreach ($postslist as $post) :  setup_postdata($post);
        print "<h3>".get_the_title()."</h3>\n";
        print "<p>\n".get_the_excerpt()."<hr>\n";
        print "<a href=\"".get_the_permalink()."\">Read the full post</a> Posted on: ".get_the_date();
        print "</p>\n";
      endforeach;
    print "</div>\n";

    include "special_notice.inc"; // Check for a special notice and display it.

    print "<section class=\"w3-container w3-center\">\n"; // Top 5 grid
    print "<article class=\"w3-row\">\n";
    $F = mysqli_query($db_3, "SELECT g,a FROM ( SELECT '1' AS g,AVG(hsscore) AS a FROM ( SELECT SHSscore AS hsscore FROM heads_short WHERE SHSseen = 'Y' && SHSyear = '$anyear') tmp1 ) tmp2 UNION ALL ( SELECT '2' AS g,AVG(hlscore) AS a FROM ( SELECT SHLscore AS hlscore FROM heads_long WHERE SHLseen = 'Y' && SHLyear = '$anyear') tmp3 ) UNION ALL ( SELECT '3' AS g,AVG(rscore) AS a FROM ( SELECT SRscore AS rscore FROM rings WHERE SRseen = 'Y' && SRyear = '$anyear') tmp4 ) UNION ALL ( SELECT '4' AS g,AVG(dscore) AS a FROM ( SELECT SDscore AS dscore FROM reeds WHERE SDseen = 'Y' && SDyear = '$anyear') tmp5 ) UNION ALL ( SELECT '5' AS g,AVG(msscore) AS a FROM ( SELECT SMSscore AS msscore FROM ma_single WHERE SMSseen = 'Y' && SMSyear = '$anyear') tmp7 ) UNION ALL ( SELECT '6' AS g,AVG(mtscore) AS a FROM ( SELECT SMTscore AS mtscore FROM ma_triple WHERE SMTseen = 'Y' && SMTyear = '$anyear') tmp8 ) UNION ALL ( SELECT '7' AS g, '999' AS a ) ORDER BY a DESC");
      IF ($FA = mysqli_fetch_assoc($F)) {
        do {
            SWITCH ($FA[0]) {
                CASE 1:
                    print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
                    print "<p><a href=\"h21.php\">Behead the Enemy - Short</a><br>\n";
                    print "<div class='w3-centered'><table style='margin: 0 auto;'>\n";
                    $count = 0;
                    $A = mysqli_query($db_3, "SELECT riders.Pname,heads_short.SHSscore,heads_short.DVN,heads_short.SHSseen FROM riders LEFT JOIN heads_short ON riders.PID = heads_short.PID WHERE ( heads_short.SHSseen = 'Y' || heads_short.SHSseen = 'U') && heads_short.SHSyear = '$anyear' ORDER BY heads_short.SHSscore DESC LIMIT 5");
                    IF ($AA = mysqli_fetch_array($A)) {
                        do {
                            print "<tr><td class='w3-left-align'>{$AA[0]}</td><td class='w3-right-align'>{$AA[1]}</td>";
                            div_tags($AA[2]);
                            pend_tags($AA[3]);
                            $count++;
                        } while ($AA = mysqli_fetch_array($A));

                    }
                    IF ($count < 5) {
                        do {
                            print "<tr><td colspan='3'>[Your name could be here]</td></tr>\n";
                            $count++;
                        } while ($count < 5);
                    }
                    print "</table></div>\n";
                    print "</div>\n";
                    BREAK; // Heads Short
                CASE 2:
                    print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
                    print "<p><a href=\"h30.php\">Behead the Enemy - Long</a><br>\n";
                    print "<div class='w3-centered'><table style='margin: 0 auto;'>\n";
                    $count = 0;
                    $A = mysqli_query($db_3, "SELECT riders.Pname,heads_long.SHLscore,heads_long.DVN,heads_long.SHLseen FROM riders LEFT JOIN heads_long ON riders.PID = heads_long.PID WHERE ( heads_long.SHLseen = 'Y' || heads_long.SHLseen = 'U') && heads_long.SHLyear = '$anyear' ORDER BY heads_long.SHLscore DESC LIMIT 5");
                    IF ($AA = mysqli_fetch_array($A)) {
                        do {
                            print "<tr><td class='w3-left-align'>{$AA[0]}</td><td class='w3-right-align'>{$AA[1]}</td>";
                            div_tags($AA[2]);
                            pend_tags($AA[3]);
                            $count++;
                        } while ($AA = mysqli_fetch_array($A));

                    }
                    IF ($count < 5) {
                        do {
                            print "<tr><td colspan='3'>[Your name could be here]</td></tr>\n";
                            $count++;
                        } while ($count < 5);
                    }
                    print "</table></div>\n";

                    print "</div>\n";
                    BREAK; // Heads Long
                CASE 3:
                    print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
                    print "<p><a href=\"rings.php\">Ring Tilt</a><br>\n";
                    print "<div class='w3-centered'><table style='margin: 0 auto;'>\n";
                    $count = 0;
                    $A = mysqli_query($db_3, "SELECT riders.Pname,rings.SRscore,rings.DVN,rings.SRseen FROM riders LEFT JOIN rings ON riders.PID = rings.PID WHERE (rings.SRseen = 'Y' || rings.SRseen = 'U') && rings.SRyear = '$anyear' ORDER BY rings.SRscore DESC LIMIT 5");
                    IF ($AA = mysqli_fetch_array($A)) {
                        do {
                            print "<tr><td class='w3-left-align'>{$AA[0]}</td><td class='w3-right-align'>{$AA[1]}</td>";
                            div_tags($AA[2]);
                            pend_tags($AA[3]);
                            $count++;
                        } while ($AA = mysqli_fetch_array($A));

                    }
                    IF ($count < 5) {
                        do {
                            print "<tr><td colspan='3'>[Your name could be here]</td></tr>\n";
                            $count++;
                        } while ($count < 5);
                    }
                    print "</table></div>\n";
                    print "</div>\n";
                    BREAK; // Rings
                CASE 4:
                    print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
                    print "<p>Reed Chop<br>\n";
                    print "<div class='w3-centered'><table style='margin: 0 auto;'>\n";
                    $count = 0;
                    $A = mysqli_query($db_3, "SELECT riders.Pname,reeds.SDscore,reeds.DVN,reeds.SDseen FROM riders LEFT JOIN reeds ON riders.PID = reeds.PID WHERE ( reeds.SDseen = 'Y' || reeds.SDseen = 'U' ) && reeds.SDyear = '$anyear' ORDER BY reeds.SDscore DESC LIMIT 5");
                    IF ($AA = mysqli_fetch_array($A)) {
                        do {
                            print "<tr><td class='w3-left-align'>{$AA[0]}</td><td class='w3-right-align'>{$AA[1]}</td>";
                            div_tags($AA[2]);
                            pend_tags($AA[3]);
                            $count++;
                        } while ($AA = mysqli_fetch_array($A));

                    }
                    IF ($count < 5) {
                        do {
                            print "<tr><td colspan='3'>[Your name could be here]</td></tr>\n";
                            $count++;
                        } while ($count < 5);
                    }
                    print "</table></div>\n";
                    print "</div>\n";
                    BREAK; // Reeds
                CASE 5:
                    print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
                    print "<p><a href=\"mast.php\">Mounted Archery -- Single</a><br>\n";
                    print "<div class='w3-centered'><table style='margin: 0 auto;'>\n";
                    $count = 0;
                    $A = mysqli_query($db_3, "SELECT riders.Pname,ma_single.SMSscore,ma_single.DVN,ma_single.SMSseen FROM riders LEFT JOIN ma_single ON riders.PID = ma_single.PID WHERE ( ma_single.SMSseen = 'Y' || ma_single.SMSseen = 'U' ) && ma_single.SMSyear = '$anyear' ORDER BY ma_single.SMSscore DESC LIMIT 5");
                    IF ($AA = mysqli_fetch_array($A)) {
                        do {
                            print "<tr><td class='w3-left-align'>{$AA[0]}</td><td class='w3-right-align'>{$AA[1]}</td>";
                            div_tags($AA[2]);
                            pend_tags($AA[3]);
                            $count++;
                        } while ($AA = mysqli_fetch_array($A));

                    }
                    IF ($count < 5) {
                        do {
                            print "<tr><td colspan='3'>[Your name could be here]</td></tr>\n";
                            $count++;
                        } while ($count < 5);
                    }
                    print "</table></div>\n";
                    print "</div>\n";
                    BREAK; // MAST
                CASE 6:
                    print "<div class=\"w3-col m6 l4 w3-cell w3-theme-l3 w3-border w3-padding-small w3-center\">\n";
                    print "<p>Mounted Archery -- Triple<br>\n";
                    print "<div class='w3-centered'><table style='margin: 0 auto;'>\n";
                    $count = 0;
                    $A = mysqli_query($db_3, "SELECT riders.Pname,ma_triple.SMTscore,ma_triple.DVN,ma_triple.SMTseen FROM riders LEFT JOIN ma_triple ON riders.PID = ma_triple.PID WHERE ( ma_triple.SMTseen = 'Y' || ma_triple.SMTseen = 'U') && ma_triple.SMTyear = '$anyear' ORDER BY ma_triple.SMTscore DESC LIMIT 5");
                    IF ($AA = mysqli_fetch_array($A)) {
                        do {
                            print "<tr><td class='w3-left-align'>{$AA[0]}</td><td class='w3-right-align'>{$AA[1]}</td>";
                            div_tags($AA[2]);
                            pend_tags($AA[3]);
                            $count++;
                        } while ($AA = mysqli_fetch_array($A));

                    }
                    IF ($count < 5) {
                        do {
                            print "<tr><td colspan='3'>[Your name could be here]</td></tr>\n";
                            $count++;
                        } while ($count < 5);
                    }
                    print "</table></div>\n";

                    print "</div>\n";
                    BREAK; // MATT

            }

        } while ($FA = mysqli_fetch_array($F));
    } // Average Scores Query to result in sorted Top5 Boxes.

    print "</article>\n";
    print "</section>\n"; // End Top 5 grid
  print "</article>\n"; // End Content window

  print "<article class=\"w3-col m3 l2 w3-theme\">\n"; // Sidebar begins

    print "<div class=\"w3-panel w3-theme-l4 w3-center\">\n";
    arc_list();
    print "</div>\n"; // Sidebar ends
  print "</article>\n";



print "</section>\n"; // End Main Window

hoofer();