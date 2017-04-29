<html>

<head>
  <title>SCA IKEqC Scores Processing</title>
</head>

<body>

<?php
include "year.inc";
$seta = mysql_query("SELECT * FROM $pgyear ORDER BY PID DESC LIMIT 1", $db);

IF ($A = mysql_fetch_row($seta)) {
    $PcountHi = $A[1];
    $Pcount=1;
    $NumAff=0;
} ELSE {
        die;
}
echo "<P>Processing 21' Advanced</P>\n";
do {
        $seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.PID=$Pcount AND $pgyear.div='A' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY score DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
            $Ptemp = 1;
            IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($Ptemp = 1) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                        $Ptemp++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                        $Ptemp++;
                    } while ($A = mysql_fetch_row($seta));
            }
        }
    }
    $Pcount++;
} while ($Pcount <= $PcountHi);
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = 0 + $NumAff;
$NumAff =0;
echo "<P>Processing 30' Advanced</P>\n";
$Pcount = 1;
do {
        $seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.PID=$Pcount AND $pgyear.div='B' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY score DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
            $Ptemp = 1;
            IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($Ptemp = 1) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                        $Ptemp++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                        $Ptemp++;
                    } while ($A = mysql_fetch_row($seta));
            }
        }
    }
    $Pcount++;
} while ($Pcount <= $PcountHi);
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;
$NumAff =0;
echo "<P>Processing 21' Intermediate</P>\n";
$Pcount=1;
do {
        $seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.PID=$Pcount AND $pgyear.div='C' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY score DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
            $Ptemp = 1;
            IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($Ptemp = 1) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                        $Ptemp++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                        $Ptemp++;
                    } while ($A = mysql_fetch_row($seta));
            }
        }
    }
    $Pcount++;
} while ($Pcount <= $PcountHi);
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;
$NumAff =0;
echo "<P>Processing 30' Intermediate</P>\n";
$Pcount=1;
do {
        $seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.PID=$Pcount AND $pgyear.div='D' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY score DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
            $Ptemp = 1;
            IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($Ptemp = 1) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                        $Ptemp++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                        $Ptemp++;
                    } while ($A = mysql_fetch_row($seta));
            }
        }
    }
    $Pcount++;
} while ($Pcount <= $PcountHi);
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;
$NumAff =0;
echo "<P>Processing 21' Beginner</P>\n";
$Pcount=1;
do {
        $seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.PID=$Pcount AND $pgyear.div='E' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY score DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
            $Ptemp = 1;
            IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($Ptemp = 1) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                        $Ptemp++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                        $Ptemp++;
                    } while ($A = mysql_fetch_row($seta));
            }
        }
    }
    $Pcount++;
} while ($Pcount <= $PcountHi);
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;
$NumAff =0;
echo "<P>Processing 30' Beginner</P>\n";
$Pcount=1;
do {
        $seta = mysql_query("SELECT * FROM $pgyear WHERE $pgyear.PID=$Pcount AND $pgyear.div='F' AND ( $pgyear.seen='Y' || $pgyear.seen='D' ) ORDER BY score DESC", $db);
        IF ($seta) {
            IF (mysql_num_rows($seta) > 1) {
            $Ptemp = 1;
            IF ($A = mysql_fetch_row($seta)) {
                    do {
                        IF ($Ptemp = 1) {
                            $setb = mysql_query("UPDATE $pgyear SET seen='Y' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                        $Ptemp++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        } ELSE {
                            $setb = mysql_query("UPDATE $pgyear SET seen='D' WHERE YID=$A[0]", $db);
                            echo "<P>".array_values($A)."</P>\n";
                        $NumAff++;
                            IF (!$setb) {
                                echo "Query failed on record ".$A[0]." while attempting to update status.\n";
                                die;
                            }
                        }
                        $Ptemp++;
                    } while ($A = mysql_fetch_row($seta));
            }
        }
    }
    $Pcount++;
} while ($Pcount <= $PcountHi);
echo "<P>".$NumAff." records altered this Division.</P>\n";
$SubNumAff = $SubNumAff + $NumAff;
$NumAff =0;

echo "<P>A total of ".$SubNumAff." records have been adjusted.  Exceeded scores now marked \"LOW\".</P>\n";
echo "<P>Click <A HREF=\"approve.php\">here</A> to return to the scores admin page.</P>\n";

?>

</body>

</html>