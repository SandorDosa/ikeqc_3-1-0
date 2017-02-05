<?PHP
// MA3.inc
// Include file with the settings of scoring for 'Grand Mounted Archery' aka Triple Shot
// File v0.2a
// Last Updated: 5 FEB 2017
// Sandor Dosa

$Gold = 5;                      //Bullseye of Target
$Red = 4;                       //First Ring
$Blue = 3;                      //Second Ring
$Black = 2;                     //Third Ring
$White = 1;                     //Outer Ring
$Bounce = 0;                    //Shots that strike but do not stick in the target
$Passthru = 0;                  //Shots that pass thru the target
$Dropout = 0;                   //Shots that strike, stick for a moment and then drop out
$Technical = 0;                 //Score added for proper control and technical form (i.e. consolation point(s)
$bonus_gate = 15;               //The time in seconds that must be beaten to earn bonus score
$bonus_method = "STRICT";       //Method for scoring bonus, STRICT = whole integer only / R = remainder

?>