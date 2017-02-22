<?php
$vars_start = get_defined_vars();
session_start();
include "year.inc";
include "ikeqcfuncs.inc";
include "colors.inc";


IF (isset($PName)) {

    $EC = NameTest($PName);
    
    IF ($EC > 0) {
        $_SESSION['Caution'] = "It appears you have placed the Rider's honors before their name.<BR>Please EDIT your input and put the Rider's honors in the correct place.<HR>\n";
    }
    
    $PNT = substr($PName, 0, 5)."%";
    $PCT = "%".substr($Pcka, 0, 5)."%";
    $PAT = "%".substr($Paka, 0, 5)."%";
    $PMT = substr($Pmka, 0, 5)."%";
    $PSDXT = soundex($PName);
    
    
    $seta = mysql_query("SELECT PID,PName,Pcka,Paka,Pmka,PSdx FROM riders WHERE (PName LIKE '$PNT' OR Pcka LIKE '$PNT' OR Paka LIKE '$PNT' OR Pcka LIKE '$PNT' OR Pcka LIKE '$PCT' OR Pcka LIKE '$PAT' OR Paka LIKE '$PNT' OR Paka LIKE '$PCT' OR Paka LIKE '$PAT' OR Pmka LIKE '$PMT' OR PSdx LIKE '$PSDXT') ORDER BY PID", $db);
    IF ($A = mysql_fetch_array($seta)) {
        IF ($A) {
            IF (mysql_num_rows($A) > 0) {
                // TODO Finish Dupe name routine
                $_SESSION['Caution'] = $_SESSION['Caution']."There are one or more riders in our database with similar names.<BR>Please double check the list and make sure you are not adding a duplicate.<HR>\n";
        
                OpenHTML($S1);
        
                PageHead("New Rider", "w3-container $S2");
        
                
        
                
        
                print "<DIV CLASS=\"w3-container $S3\">\n";
                print "<H2>Close matches:</H2>\n";
                print "<P>If the rider you are trying to enter is listed below by any name you recognize, you do not need to enter them again.<BR>\n";
                print "If a rider wishes to make changes to their details, it can be handled by visiting the Rider's portal.<BR>\n";
                print "For this event, please use the Rider's existing name, and make adjustments at your liesure.</P>";
                print "<TABLE CLASS=\"w3-table w3-striped\">\n";
                print "<TR CLASS=\"w3-border-bottom\"><TD>SCA Name</TD><TD>Common Alias</TD><TD>Also Known As</TD><TD>Mundanly Known AS</TD></TR>\n";
                do {
                    print "<TR><TD>$A[1]</TD><TD>$A[2]</TD><TD>$A[3]</TD><TD>$A[4]</TD></TR>\n";
                } while ($A = mysql_fetch_array($seta));
                print ""
        
            }
    
        }
    }
    
    IF (isset($Review) AND $Review < 0) {
        unset($Review);
        $trash = time();
        header('Location: '.$_SERVER['PHP_SELF'].'?PName=$PName&Pcka=$Pcka&Paka=$Paka&Pmka=$Pmka&PHonors=$PHonors&PPhone=$PPhone&PEmail=$PEmail&PBio=$PBio&ReviewDone=1&trash='.$trash);
    }
    
    include "new_rider.inc";
} // End PName is set block


