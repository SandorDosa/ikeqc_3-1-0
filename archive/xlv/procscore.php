<html>

<head>
  <title>SCA IKEqC Scores Processing</title>
</head>

<body>

<?php
include "year-rw.php";
$seta = mysql_query("SELECT * FROM $pgyear ORDER BY PID DESC LIMIT 1", $db);

IF ($A = mysql_fetch_row($seta)) {
    $PcountHi = $A[1];
    $Pcount=1;
    $NumAff=0;
} ELSE {
        die;
}
echo "<P>Processing 21' Advanced</P>\n";
$seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.div='A' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY PID,cscore DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
                IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($LastP == $A[1]) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                            $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                            $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                    } while ($A = mysql_fetch_row($seta));
                }
            }
        }
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $NumAff;
$NumAff =0;
echo "<P>Processing 30' Advanced</P>\n";
$seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.div='B' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY PID,cscore DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
                IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($LastP == $A[1]) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                    } while ($A = mysql_fetch_row($seta));
                }
            }
        }
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;
$NumAff =0;
echo "<P>Processing 21' Intermediate</P>\n";
$seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.div='C' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY PID,cscore DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
                IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($LastP == $A[1]) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                    } while ($A = mysql_fetch_row($seta));
                }
            }
        }
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;
$NumAff =0;
echo "<P>Processing 30' Intermediate</P>\n";
$seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.div='D' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY PID,cscore DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
                IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($LastP == $A[1]) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                    } while ($A = mysql_fetch_row($seta));
                }
            }
        }
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;
$NumAff =0;
echo "<P>Processing 21' Beginner</P>\n";
$seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.div='E' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY PID,cscore DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
                IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($LastP == $A[1]) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                    } while ($A = mysql_fetch_row($seta));
                }
            }
        }
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;
$NumAff =0;
echo "<P>Processing 30' Beginner</P>\n";
$seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.div='F' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY PID,cscore DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
                IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($LastP == $A[1]) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            $LastP = $A[1];
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                    } while ($A = mysql_fetch_row($seta));
                }
            }
        }
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;

echo "<P>A total of ".$SubNumAff." records have been adjusted.  Exceeded scores now marked \"LOW\".</P>\n";
echo "<P>Click <A HREF=\"approve.php\">here</A> to return to the scores admin page.</P>\n";

?>

</body>

</html>