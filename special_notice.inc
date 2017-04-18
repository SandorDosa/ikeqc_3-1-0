<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 4/14/17
 * Time: 12:10 PM
 */

// Set this value to true to enable the special notice panel on the main page.
// Set this value to false to disable the special notice panel on the main page.

$ShowSN = true;

IF ($ShowSN) {
    print "<div class=\"w3-panel w3-theme-l1 w3-border w3-margin\">\n";
      print "<H3>SPECIAL NOTICE:</H3>\n"; // Banner
      print "<em>Birjas as been removed for AS LII</em>\n"; // Headline -- replace with fresh alert
      print "<p>After review of comments presented at Gulf Wars and privately to the IKEqC Council, it has became clear there was a more than a fair bit of confusion on how Birjas should be played. Rather than keep a game that is not well understood it has been decided to suspend the game Birjas (both one and two handed variations) from IKEqC competition for the AS LII year.</p>\n"; // Fill Special Notice here.
      // Retire this notice after 31 May 2017 -- update with take-down date of next notice.
    print "</div>\n";

}