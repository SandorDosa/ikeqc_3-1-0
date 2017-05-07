<?php
/**
 * Created by PhpStorm.
 * User: Alpha
 * Date: 4/23/17
 * Time: 12:22 AM
 */

function t5_heads_short($db_3) {

    print "<p>Behead the Enemy - Short<br>\n";
    print "<table>\n";
    $count = 0;
    $A = mysqli_query($db_3, "SELECT riders.Pname,heads_short.SHSscore FROM riders LEFT JOIN heads_short ON riders.PID = heads_short.PID WHERE heads_short.SHSseen = 'Y' ORDER BY heads_short.SHSscore DESC LIMIT 5");
    IF ($AA = mysqli_fetch_array($A)) {
        do {
            print "<tr><td>{$AA[0]}</td><td>{$AA[1]}</td></tr>\n";
            $count++;
        } while ($AA = mysqli_fetch_array($A));

    }
    IF ($count < 5) {
        do {
            print "<tr><td colspan='2'>[Your name could be here]</td></tr>\n";
            $count++;
        } while ($count < 5);
    }
    print "</table>\n";
} // Heads Short Top 5 block

function t5_heads_long($db_3) {

    print "<p>Behead the Enemy - Long<br>\n";
    print "<table>\n";
    $count = 0;
    $A = mysqli_query($db_3, "SELECT riders.Pname,heads_long.SHLscore FROM riders LEFT JOIN heads_long ON riders.PID = heads_long.PID WHERE heads_long.SHLseen = 'Y' ORDER BY heads_long.SHLscore DESC LIMIT 5");
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
} // Heads Long Top 5 block

function t5_rings($db_3) {

    print "<p>Ring Tilt<br>\n";
    print "<table>\n";
    $count = 0;
    $A = mysqli_query($db_3, "SELECT riders.Pname,rings.SRscore FROM riders LEFT JOIN rings ON riders.PID = rings.PID WHERE rings.SRseen = 'Y' ORDER BY rings.SRscore LIMIT 5");
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
} // Rings Top 5 block

function t5_reeds($db_3) {

    print "<p>Reed Chop<br>\n";
    print "<table>\n";
    $count = 0;
    $A = mysqli_query($db_3, "SELECT riders.Pname,reeds.SDscore FROM riders LEFT JOIN reeds ON riders.PID = reeds.PID WHERE reeds.SDseen = 'Y' ORDER BY reeds.SDscore DESC LIMIT 5");
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
} // Reeds Top 5 block

function t5_ma_single($db_3) {

    print "<p>Mounted Archery -- Single<br>\n";
    print "<table>\n";
    $count = 0;
    $A = mysqli_query($db_3, "SELECT riders.Pname,ma_single.SMSscore FROM riders LEFT JOIN ma_single ON riders.PID = ma_single.PID WHERE ma_single.SMSseen = 'Y' ORDER BY ma_single.SMSscore DESC LIMIT 5");
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
} // MAST Top 5 block

function t5_ma_triple($db_3) {

    print "<p>Mounted Archery -- Triple<br>\n";
    print "<div class='w3-centered'><table style='margin: 0 auto;'>\n";
    $count = 0;
    $A = mysqli_query($db_3, "SELECT riders.Pname,ma_triple.SMTscore FROM riders LEFT JOIN ma_triple ON riders.PID = ma_triple.PID WHERE ma_triple.SMTseen = 'Y' ORDER BY ma_triple.SMTscore DESC LIMIT 5");
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
    print "</table></div>\n";
} // MATT Top 5 block

