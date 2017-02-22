<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 2/13/17
 * Time: 4:33 AM
 */



function MasterReset() {

    $_SESSION['Confirm'] = -1;
    $_SESSION['Event'] = -1;
    $_SESSION['EventName'] = NULL;
    $_SESSION['Rider'] = -1;
    $_SESSION['RiderName'] = NULL;
    $_SESSION['Horse'] = -1;
    $_SESSION['HorseName'] = NULL;
    $_SESSION['Games'] = -1;
    $_SESSION['Progbar'] = 0;
    $_SESSION['Hashtag'] = "Kiosk Mode";
    $_SESSION['EventEMIC'] = NULL;
    $_SESSION['EOHeads'] = -1;
    $_SESSION['EORings'] = -1;
    $_SESSION['EOreeDs'] = -1;
    $_SESSION['EOMoarch'] = -1;
    $_SESSION['EOBirjas'] = -1;
    $_SESSION['Hashtag'] = "#IKEqC";
    $_SESSION['HeadsYes'] = 'N';
    $_SESSION['RingsYes'] = 'N';
    $_SESSION['reeDsYes'] = 'N';
    $_SESSION['MoarchYes'] = 'N';
    $_SESSION['BirjasYes'] = 'N';
    $_SESSION['Reset'] = -1;

}

function NextEntry() {
    $_SESSION['Confirm'] = -1;
    $_SESSION['Rider'] = -1;
    $_SESSION['RiderName'] = NULL;
    $_SESSION['Horse'] = -1;
    $_SESSION['HorseName'] = NULL;
    $_SESSION['Progbar'] = 0;
    $_SESSION['HeadsYes'] = 'N';
    $_SESSION['RingsYes'] = 'N';
    $_SESSION['reeDsYes'] = 'N';
    $_SESSION['MoarchYes'] = 'N';
    $_SESSION['BirjasYes'] = 'N';
    $_SESSION['Reset'] = -1;
}

function ShowProgBar($c) {
    print "<div class=\"w3-card $c\" style=\"width:100%\">\n";
    print "<H2>{$_SESSION['EventName']} Registration Progress</H2></div>\n";
    print "</div>\n";
    print "<div class=\"w3-progress-container\">\n";
    print "<div class=\"w3-progressbar w3-blue\" style=\"width:{$_SESSION['Progbar']}%\">\n";
    print "</div><br>\n";

}