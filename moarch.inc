<?php

//The following will allow for the easy alteration of the scoring for the Mounted Archery games.

IF (isset($_SESSION['MA1']) OR $_SESSION['MA1']) {

    // This section for Single Shot

    $Gold = 30;
    $Red = 24;
    $Blue = 18;
    $Black = 12;
    $White = 6;
    $Bounce = 0;
    $Passthru = 0;
    $Dropout = 0;
    $Technical = 0;
}

IF (isset($_SESSION['MA3']) OR $_SESSION['MA3']) {

    $Gold = 5;
    $Red = 4;
    $Blue = 3;
    $Black = 2;
    $White = 1;
    $Bounce = 0;
    $Passthru = 0;
    $Dropout = 0;
    $Technical = 0;
    $bonus_gate = 15;
    $bonus_method = "STRICT";


}
?>
