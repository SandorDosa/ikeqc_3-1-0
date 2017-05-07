<?php
/**
 * Created by PhpStorm.
 * User: bravo
 * Date: 2/14/17
 * Time: 7:58 AM
 */

OpenHTML($S1);

PageHead("New Rider", "w3-container $S2");







print "<section class=\"w3-container $S2\">\n";
print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
print " <table class=\"w3-table-all\"> ";

IF (!isset($PName)) {
    
    print "<TR><TD ALIGN='RIGHT'>SCA Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PName\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Commonly Known:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Pcka\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Also Known:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Paka\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Mundane Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Pmka\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Titles and Honors:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PHonors\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Contact Phone:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PPhone\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Email:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PEmail\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Your website:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PBio\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Kingdom:</TD><TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"Pking\">\n";
    print "<OPTION VALUE=\"1\">An Tir</OPTION>\n";
    print "<OPTION VALUE=\"2\">Ansteorra</OPTION>\n";
    print "<OPTION VALUE=\"3\">Artemisia</OPTION>\n";
    print "<OPTION VALUE=\"4\">Atenveldt</OPTION>\n";
    print "<OPTION VALUE=\"5\">Atlantia</OPTION>\n";
    print "<OPTION VALUE=\"6\">Aethelmearc</OPTION>\n";
    print "<OPTION VALUE=\"7\">Caid</OPTION>\n";
    print "<OPTION VALUE=\"8\">Calontir</OPTION>\n";
    print "<OPTION VALUE=\"9\">Drachenwald</OPTION>\n";
    print "<OPTION VALUE=\"10\">Ealdormere</OPTION>\n";
    print "<OPTION VALUE=\"11\">East</OPTION>\n";
    print "<OPTION VALUE=\"12\">Middle</OPTION>\n";
    print "<OPTION VALUE=\"13\">Meridies</OPTION>\n";
    print "<OPTION VALUE=\"14\">Outlands</OPTION>\n";
    print "<OPTION VALUE=\"15\">Trimaris</OPTION>\n";
    print "<OPTION VALUE=\"16\">West</OPTION>\n";
    print "<OPTION VALUE=\"17\">Northshield</OPTION>\n";
    print "<OPTION VALUE=\"18\">Gleann Abhann</OPTION>\n";
    print "<OPTION VALUE=\"19\">Lochac</OPTION>\n";
    print "<OPTION VALUE=\"20\">Avacal</OPTION>\n";
    print "</SELECT></TD></TR>\n";
    
    print "<TR><TD ALIGN='RIGHT'>Group Size:</TD><TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"PGtype\">\n";
    print "<OPTION VALUE=\"1\">Canton</OPTION>\n";
    print "<OPTION VALUE=\"2\">College</OPTION>\n";
    print "<OPTION VALUE=\"3\">Shire</OPTION>\n";
    print "<OPTION VALUE=\"4\">Barony</OPTION>\n";
//print "<OPTION VALUE=\"5\">County</OPTION>\n";
//print "<OPTION VALUE=\"6\">Duchy</OPTION>\n";
    print "</SELECT></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Home Group:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PHG\" type=\"text\"></TD></TR>\n";
    print "</TABLE>\n";
    print "<p><button class=\"w3-btn w3-yellow\">SUBMIT</button></p>\n";
}

IF (isset($PName)) {
    
    print "<TR><TD ALIGN='RIGHT'>SCA Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PName\" value=\"$PName\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Commonly Known:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Pcka\" value=\"$Pcka\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Also Known:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Paka\" value=\"$Paka\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Mundane Name:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"Pmka\" value=\"$Pmka\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Titles and Honors:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PHonors\" value=\"$PHonors\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Contact Phone:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PPhone\" value=\"$PPhone\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Email:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PEmail\" value=\"$PEmail\" placeholder=\"REQUIRED\" type=\"text\"></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Your website:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PBio\" value=\"$PBio\" placeholder=\"OPTIONAL\" type=\"text\"></TD></TR>\n";
    $KL1 = KingLook($PKing);
    print "<TR><TD ALIGN='RIGHT'>Kingdom:</TD><TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"Pking\">\n";
    print "<OPTION VALUE=\"$PKing\">$KL1[0]</OPTION>\n";
    print "<OPTION VALUE=\"1\">An Tir</OPTION>\n";
    print "<OPTION VALUE=\"2\">Ansteorra</OPTION>\n";
    print "<OPTION VALUE=\"3\">Artemisia</OPTION>\n";
    print "<OPTION VALUE=\"4\">Atenveldt</OPTION>\n";
    print "<OPTION VALUE=\"5\">Atlantia</OPTION>\n";
    print "<OPTION VALUE=\"6\">Aethelmearc</OPTION>\n";
    print "<OPTION VALUE=\"7\">Caid</OPTION>\n";
    print "<OPTION VALUE=\"8\">Calontir</OPTION>\n";
    print "<OPTION VALUE=\"9\">Drachenwald</OPTION>\n";
    print "<OPTION VALUE=\"10\">Ealdormere</OPTION>\n";
    print "<OPTION VALUE=\"11\">East</OPTION>\n";
    print "<OPTION VALUE=\"12\">Middle</OPTION>\n";
    print "<OPTION VALUE=\"13\">Meridies</OPTION>\n";
    print "<OPTION VALUE=\"14\">Outlands</OPTION>\n";
    print "<OPTION VALUE=\"15\">Trimaris</OPTION>\n";
    print "<OPTION VALUE=\"16\">West</OPTION>\n";
    print "<OPTION VALUE=\"17\">Northshield</OPTION>\n";
    print "<OPTION VALUE=\"18\">Gleann Abhann</OPTION>\n";
    print "<OPTION VALUE=\"19\">Lochac</OPTION>\n";
    print "<OPTION VALUE=\"20\">Avacal</OPTION>\n";
    print "</SELECT></TD></TR>\n";
    $GL1 = GroupLook($PGtype);
    print "<TR><TD ALIGN='RIGHT'>Group Size:</TD><TD ALIGN='LEFT'>\n";
    print "<select class=\"w3-select\" name=\"PGtype\">\n";
    print "<OPTION VALUE=\"$PGtype\">$GL1[0]</OPTION>\n";
    print "<OPTION VALUE=\"1\">Canton</OPTION>\n";
    print "<OPTION VALUE=\"2\">College</OPTION>\n";
    print "<OPTION VALUE=\"3\">Shire</OPTION>\n";
    print "<OPTION VALUE=\"4\">Barony</OPTION>\n";
//print "<OPTION VALUE=\"5\">County</OPTION>\n";
//print "<OPTION VALUE=\"6\">Duchy</OPTION>\n";
    print "</SELECT></TD></TR>\n";
    print "<TR><TD ALIGN='RIGHT'>Home Group:</TD><TD ALIGN='LEFT'>\n";
    print "<input class=\"w3-input w3-border\" name=\"PHG\" value=\"$PHG\" type=\"text\"></TD></TR>\n";
    
    print "</TABLE>\n";

}



IF (!isset($review) OR $review < 0) {
    
}
print "<p><button class=\"w3-btn w3-lime\">ADD THIS RIDER</button></p>\n";
?>