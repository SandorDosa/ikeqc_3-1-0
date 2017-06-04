<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 4/14/17
 * Time: 12:10 PM
 */

$ShowSN = true;

// Boolean switch to arm or disarm Special Notices.
// Set to false to pull the notice down.

$TakeDownDate = "2017-05-31 00:00:00";
// Date Format is rigid.  "YYYY-MM-DD(space)24hr:MM:SS";
// Noon on May First:     "2017-05-01 12:00:00"
// Expire the date to remove the notice

//IF ($ShowSN) {
//    print "<div class=\"w3-panel w3-theme-d2 w3-border w3-margin\">\n";
//      print "<H3>SPECIAL NOTICE:</H3>\n"; // Banner
//      print "<em>Birjas has been removed for AS LII</em>\n"; // Headline
//      print "<p>After review of comments presented at Gulf Wars and privately to the IKEqC Council, it has became clear there was a more than a fair bit of confusion on how Birjas should be played. Rather than keep a game that is not well understood it has been decided to suspend the game Birjas (both one and two handed variations) from IKEqC competition for the AS LII year.</p>\n"; // Fill Special Notice here.
//      // Retire this notice after 31 May 2017 -- update with take-down date of next notice.
//    print "</div>\n";
//}

IF ($ShowSN AND new DateTime() < new DateTime($TakeDownDate)) {
    print "<div class=\"w3-panel w3-theme-d2 w3-border w3-margin\">\n";
      print "<H3>SPECIAL NOTICE:</H3>\n"; // Banner
      print "<em>Birjas has been removed for AS LII</em>\n"; // Headline
      print "<p>After review of comments presented at Gulf Wars and privately to the IKEqC Council, it has became clear there was a more than a fair bit of confusion on how Birjas should be played. Rather than keep a game that is not well understood it has been decided to suspend the game Birjas (both one and two handed variations) from IKEqC competition for the AS LII year.</p>\n"; // Fill Special Notice here.
      // Retire this notice after 31 May 2017 -- update with take-down date of next notice.
    print "</div>\n";
}

// History of Special Notices:  Add to this when adding a new SN.
// April 2017 -- Birjas as been removed for AS LII
// April 2017 -- After review of comments presented at Gulf Wars and privately to the IKEqC Council, it has became clear there was a more than a fair bit of confusion on how Birjas should be played. Rather than keep a game that is not well understood it has been decided to suspend the game Birjas (both one and two handed variations) from IKEqC competition for the AS LII year.
// --==--
