<?PHP
// At-Event Signup Kiosk
// TAER-07.php
// v0.10
// Sandor Dosa
// Set ECHO Event pulldown selection
// Set PAPA Previously registered Riders for this event
// Set ROMEO Rider pulldown selection
// Set HOTEL Horse pulldown selection
// Set GOLF Games checkboxes
// Set INDIGO Input to database
// Set CHARLIE Confirmation lookup

session_start();
include "year.inc";

IF ($Reset == 1) { // Master Reset
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
    header('Location: '.$_SERVER['PHP_SELF']);
}

IF ($Reset == 22) { // Reset for another entry
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
    header('Location: '.$_SERVER['PHP_SELF']);
}

IF (!isset($_SESSION['Event']) OR $_SESSION['Event'] <= 0) {

    IF ($kiosk <= 0) {
        $sete = mysql_query("SELECT * FROM events WHERE Estatus = 'O'", $db);
        IF ($E = mysql_fetch_array($sete)) {
            print "<!DOCTYPE html>\n";
            print "<html>\n";
            print "<title>Kiosk Registration</title>\n";
            print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
            print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";
            print "<header class=\"w3-panel\">\n";
            print "<H2>Please Select your event below:</H2>\n";
            print "</header>\n";
			print "<section class=\"w3=panel w3-yellow\">\n";
			print "<P>Once the event is regisitered to the Kiosk, riders may begin signing up.<HR>If the machine stays idle for too long (20 minutes without any use, the session may expire and you will need to setup the event again.</P>\n";
			print "</section>\n";
            print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
            print "<select class=\"w3-select\" name=\"kiosk\">\n";
            do {
                printf("<OPTION VALUE=\"%s\">%s\n", $E[0], $E[2]);
            } while ($E = mysql_fetch_row($sete));
            echo"</SELECT>\n<BR>\n";
            print "<p><button class=\"w3-btn w3-blue\">Register</button></p>\n";
            die;
        }

    }
    IF ($kiosk > 0 ) {
		$sete = mysql_query("SELECT EID,Ename,Eadmin,EH,ER,ED,EM,EB,EHash FROM events WHERE EID = '$kiosk'", $db);
		IF ($E = mysql_fetch_array($sete)) {
			$_SESSION['Event'] = $E[0];
			$_SESSION['EventName'] = $E[1];
			$_SESSION['EventEMIC'] = $E[2];
			$_SESSION['EOHeads'] = $E[3];
			$_SESSION['EORings'] = $E[4];
			$_SESSION['EOreeDs'] = $E[5];
			$_SESSION['EOMoarch'] = $E[6];
			$_SESSION['EOBirjas'] = $E[7];
			$_SESSION['Hashtag'] = "#".$E[8];
			$_SESSION['Progbar'] = 5;
			header('Location: '.$_SERVER['PHP_SELF']);
			die;
		} ELSE {
			echo "Something didn't work.\n";
			print "<article class=\"w3-card w3-orange\">";
			print "<PRE>\n";
			print "Ignore me, I am for Sandor's use.\n";
			print_r($_SESSION);
			print "</PRE></article>\n";
			print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
			die;
		}

	}
}

// The Event has been set if we get to this point.

IF ($_SESSION['Rider'] <= 0) {

    IF ($Rin == 999 AND $Rout == 0) {
        unset($Rin);
        unset($Rout);
        header('Location: '.$_SERVER['PHP_SELF']);
        die;
    }


    IF (!isset($Rin)) {
        print "<!DOCTYPE html>\n";
        print "<html>\n";
        print "<title>Rider Registration</title>\n";
        print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
        print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

		print "<header class=\"w3-panel\">\n";
		print "<H1>Rider Search:</H1>\n";
		print "</header>\n";

		print "<div class=\"w3-card w3-deep-purple\" style=\"width:100%\">\n";
		printf("<H2>%s IKEqC Current Registration Progress</H2></div>\n", $_SESSION['EventName']);
		print "</div>\n";
		print "<div class=\"w3-progress-container\">\n";
		printf("<div class=\"w3-progressbar w3-blue\" style=\"width:%s\">\n", $_SESSION['Progbar'] . "%");
		print "</div><br>\n";

        print "<section class=\"w3-panel\">\n";
        print "<P>With nearly 500 riders in our records, let us filter your results.  Please enter up to the firstfive letters of your name.  Omit all titles and honors (don't worry, we'll show them later).</P><br>\n";
        print "<P>Alternatively you may enter your mundane name if we have it on file.</P>\n";
        print "</section>\n";
        print "<form class=\"w3-container\" method=\"post\" action=\"{$_SERVER['PHP_SELF']}\">\n";
        print "<input class=\"w3-input w3-border\" type=\"text\" name=\"Rin\"><BR>\n";
        print "<P><button class=\"w3-btn w3-blue\">Search Riders</button></p>\n";
		
		$setp = @mysql_query("SELECT riders.Pname FROM events_temp LEFT JOIN riders ON riders.PID = events_temp.PID WHERE EID = {$_SESSION['Event']}", $db);
		IF ($P = @mysql_fetch_array($setp)) {
			print "<article class=\"w3-panel w3-pale-green\">\n";
			print "<P>The following Rider's have already registered.</P><BR>\n";
			print "<PRE>\n";
			do {
				print $P[0]."<BR>\n";
			} while ($P = mysql_fetch_array($setp));
			print "</article>\n"; 
		}
//        print "<article class=\"w3-card w3-orange\">";
//        print "<PRE>\n";
//		print "Ignore me, I am for Sandor's use.\n";
//        print_r($_SESSION);
//        print "</PRE></article>\n";
//        print "<A HREF=\"" . $_SERVER['PHP_SELF'] . "?Reset=1\">Click here to start over</A>\n";
        die;

    }
    IF ($Rout <= 0) {

        IF (strlen(trim($Rin)) < 1 ) {
            $setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' ORDER BY Pname", $db);
        } ELSEIF (strlen(trim($Rin)) > 6) {
            $Rin = "%".substr($Rin, 0, 5) . "%";
            $Rindx = soundex($Rin) . "%";
            $setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '$Rin' OR Pcka LIKE '$Rin' OR Paka LIKE '$Rin' OR Pmka LIKE '$Rin' OR PSdx LIKE '$Rindx' ) ORDER BY Pname", $db);
        } ELSE {
            $Rin = "%".$Rin . "%";
            $Rindx = soundex($Rin) . "%";
            $setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '$Rin' OR Pcka LIKE '$Rin' OR Paka LIKE '$Rin' OR Pmka LIKE '$Rin' OR PSdx LIKE '$Rindx' ) ORDER BY Pname", $db);
        }
        IF ($R = mysql_fetch_array($setr)) {
            print "<!DOCTYPE html>\n";
            print "<html>\n";
            print "<title>Rider Information</title>\n";
            print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
            print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

            print "<header class=\"w3-panel\">\n";
            print "<H1>Rider Selection:</H1>\n";
            print "</header>\n";

            print "<section class=\"w3-panel\">\n";
            print "<H2>Please Select the Rider below:</H2>\n";
            print "<P>A pair of asterisks next to a name, indicates that name was found searching against an alternate or mundane name.\n";
            print "</section>\n";


            print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
            print "<input type=\"hidden\" name=\"Rin\" value=\"999\">\n";
            print "<select class=\"w3-select\" name=\"Rout\">\n";
            print "<OPTION VALUE=\"0\">-=Search Again=-\n";
            do {
                printf("<OPTION VALUE=\"%s\">%s\n", $R[0], $R[1]);
                IF (!is_null($R['Pcka']) OR !empty($R['Pcka'])) {
                    printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[2]);
                }
                IF (!is_null($R['Paka']) OR !empty($R['Paka'])) {
                    printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[3]);
                }
                IF (!is_null($R['Pmka']) OR !empty($R['Pmka'])) {
                    printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[1);
                }
            } while ($R = mysql_fetch_row($setr));
            print "<OPTION VALUE=\"0\">-=Search Again=-\n";
            echo "</SELECT>\n<BR>\n";
            print "<P>A pair of asterisks next to a name, indicates that name was found searching against an alternate or mundane name."
                print "<p><button class=\"w3-btn w3-blue\">Edit this Rider</button></p>\n";
                print "</form>\n";
                die;
            }

    }

    IF ($Rout > 0 AND $Rin == 999) {
        $_SESSION['Rider'] = $Rout;
        $_SESSION['Progbar'] = 40;
        header('Location: ' . $_SERVER['PHP_SELF']);
        die;
    } ELSE {
        echo "Something didn't work.\n";
        print "<article class=\"w3-card w3-orange\">";
        print "<PRE>\n";
		print "Ignore me, I am for Sandor's use.\n";
        print_r($_SESSION);
        print "</PRE></article>\n";
        print "<A HREF=\"" . $_SERVER['PHP_SELF'] . "?Reset=1\">Click here to start over</A>\n";
        die;
    }
}

// The Rider has been set if we get to this point.

IF (!isset($_SESSION['Horse']) OR $_SESSION['Horse'] <= 0) {

    IF ($Hin == 999 AND $Hout == 0) {
        unset($Hin);
        unset($Hout);
        header('Location: '.$_SERVER['PHP_SELF']);
        die;
    }

	IF (!isset($Hin)) {
		print "<!DOCTYPE html>\n";
		print "<html>\n";
		print "<title>Horse Registration</title>\n";
		print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
		print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

		print "<header class=\"w3-panel\">\n";
		print "<H1>Horse Search:</H1>\n";
		print "</header>\n";

		print "<div class=\"w3-card w3-deep-purple\" style=\"width:100%\">\n";
		printf("<H2>%s IKEqC Current Registration Progress</H2></div>\n", $_SESSION['EventName']);
		print "</div>\n";
		print "<div class=\"w3-progress-container\">\n";
		printf("<div class=\"w3-progressbar w3-blue\" style=\"width:%s\">\n", $_SESSION['Progbar'] . "%");
		print "</div><br>\n";
	
		print "<section class=\"w3-panel\">\n";
		print "<P>With over 300 horses in our records, we can filter your results.  Please enter up to the first five letters of the horse's name.</P><br>\n";
		print "<P>When known, we list either the Horse's owner or if its a rental.</P>\n";
		print "</section>\n";
		print "<form class=\"w3-container\" method=\"post\" action=\"{$_SERVER['PHP_SELF']}\">\n";
		print "<input class=\"w3-input w3-border\" type=\"text\" name=\"Hin\"><BR>\n";
		print "<P><button class=\"w3-btn w3-blue\">Search Horses</button></p>\n";
//		print "<article class=\"w3-card w3-orange\">";
//		print "<PRE>\n";
//		print "Ignore me, I am for Sandor's use.\n";
//		print_r($_SESSION);
//		print "</PRE></article>\n";
//		print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
		die;

	}

	IF ($Hout <= 0) {

		IF (strlen(trim($Hin)) < 1 ) {
			$seth = mysql_query("SELECT HID,HName,Hrent,HOwner,HHome FROM horses WHERE Hret = 'N' ORDER BY HName", $db);
		} ELSEIF (strlen(trim($Hin)) > 6) {
			$Hin = "%". substr($Hin, 0, 5) . "%";
			$seth = mysql_query("SELECT HID,HName,Hrent,HOwner,HHome FROM horses WHERE Hret = 'N' AND HName LIKE '$Hin' ORDER BY HName", $db);
		} ELSE {
			$Hin = "%".$Hin . "%";
			$seth = mysql_query("SELECT HID,HName,Hrent,HOwner,HHome FROM horses WHERE Hret = 'N' AND HName LIKE '$Hin' ORDER BY HName", $db);
		}
		IF ($H = mysql_fetch_array($seth)) {
            IF (mysql_num_rows($H) <= 0) {
                print "<!DOCTYPE html>\n";
                print "<html>\n";
                print "<title>Horse Registration</title>\n";
                print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
                print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

                print "<header class=\"w3-panel\">\n";
                print "<H1>Horse Selection:</H1>\n";
                print "</header>\n";

                print "<div class=\"w3-card w3-deep-purple\" style=\"width:100%\">\n";
                printf("<H2>%s IKEqC Current Registration Progress</H2></div>\n", $_SESSION['EventName']);
                print "</div>\n";
                print "<div class=\"w3-progress-container\">\n";
                printf("<div class=\"w3-progressbar w3-blue\" style=\"width:%s\">\n", $_SESSION['Progbar'] . "%");
                print "</div><br>\n";
                print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
                print "<input type=\"hidden\" name=\"Hin\" value=\"999\">\n";
                print "<input type=\"hidden\" name=\"Hout\" value=\"0\">\n";
                print "<section class=\"w3-panel w3-pale-red><P>Your search yielded no results.</P>\n";
                print "<p><button class=\"w3-btn w3-red\">Search Again</button></p>\n";
                print "</section>\n";
                die;

            }
			print "<!DOCTYPE html>\n";
			print "<html>\n";
			print "<title>Horse Registration</title>\n";
			print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
			print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

			print "<header class=\"w3-panel\">\n";
			print "<H1>Horse Selection:</H1>\n";
			print "</header>\n";

			print "<div class=\"w3-card w3-deep-purple\" style=\"width:100%\">\n";
			printf("<H2>%s IKEqC Current Registration Progress</H2></div>\n", $_SESSION['EventName']);
			print "</div>\n";
			print "<div class=\"w3-progress-container\">\n";
			printf("<div class=\"w3-progressbar w3-blue\" style=\"width:%s\">\n", $_SESSION['Progbar'] . "%");
			print "</div><br>\n";



			print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
			print "<input type=\"hidden\" name=\"Hin\" value=\"999\">\n";
			print "<select class=\"w3-select\" name=\"Hout\">\n";
            print "<OPTION VALUE=\"0\">-=Search Again=-\n";
            do {

				IF ($H[2] == 'N') {
					IF (is_null($H[3])) {
						printf("<OPTION VALUE=\"%s\">%s\n", $H[0], $H[3]);
					} ELSE {
						printf("<OPTION VALUE=\"%s\">%s of %s's stable\n", $H[0], $H[1], $H[3]);
					}
				} ELSEIF ($H[2] == 'Y') {
					IF (is_null($H[4])) {
						printf("<OPTION VALUE=\"%s\">%s, a rental.\n", $H[0], $H[1]);
					} ELSE {
						printf("<OPTION VALUE=\"%s\">%s rented from %s\n", $H[0], $H[1], $H[4]);
					}
				} ELSE {
					printf("<OPTION VALUE=\"%s\">%s\n", $H[0], $H[1]);
				}

			} while ($H = mysql_fetch_row($seth));
            print "<OPTION VALUE=\"0\">-=Search Again=-\n";
            echo"</SELECT>\n<BR>\n";
			print "<p><button class=\"w3-btn w3-blue\">Register this Horse</button></p>\n";
//			print "<article class=\"w3-card w3-orange\">";
//			print "<PRE>\n";
//			print "Ignore me, I am for Sandor's use.\n";
//			print_r($_SESSION);
//			print "</PRE></article>\n";
//			print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
			die;
		}

	}

	IF ($Hout > 0 AND $Hin = 999) {
		$_SESSION['Horse'] = $Hout;
		$_SESSION['Progbar'] = 60;
		header('Location: '.$_SERVER['PHP_SELF']);
	} ELSE {
		echo "Something didn't work.\n";
		print "<article class=\"w3-card w3-orange\">";
		print "<PRE>\n";
		print "Ignore me, I am for Sandor's use.\n";
		print_r($_SESSION);
		print "</PRE></article>\n";
		print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
		die;
	}
}

// The Horse has been set if we get to this point.

IF ($_SESSION['Games'] <= 0) {

	IF (!isset($Gin) OR $Gin <= 0) {
		print "<!DOCTYPE html>\n";
		print "<html>\n";
		print "<title>Games Registration</title>\n";
		print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
		print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

		print "<header class=\"w3-panel\">\n";
		print "<H1>Games Selection:</H1>\n";
		print "</header>\n";

		print "<div class=\"w3-card w3-deep-purple\" style=\"width:100%\">\n";
		printf("<H2>%s IKEqC Current Registration Progress</H2></div>\n", $_SESSION['EventName']);
		print "</div>\n";
		print "<div class=\"w3-progress-container\">\n";
		printf("<div class=\"w3-progressbar w3-blue\" style=\"width:%s\">\n", $_SESSION['Progbar'] . "%");
		print "</div></div><br>\n";

		print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
		print "<input type=\"hidden\" name=\"Gin\" value=\"999\">\n";
		print "<section class=\"w3-container\">\n";
		printf("<H2>Games offered at %s</H2><BR>\n", $_SESSION['EventName']);

		print "<article class=\"w3-card\">\n";

		IF ($_SESSION['EOHeads'] == 'Y') {
			print "<input class=\"w3-check\" name=\"EH\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Behead the Enemy</label><BR>\n";
		} ELSE {
			print "<input class=\"w3-check\" name=\"EHno\" type=\"checkbox\" disabled><label>Behead the Enemy</label><BR>\n";
		}
		IF ($_SESSION['EORings'] == 'Y') {
			print "<input class=\"w3-check\" name=\"ER\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Ring Tilt</label><BR>\n";
		} ELSE {
			print "<input class=\"w3-check\" name=\"ERno\" type=\"checkbox\" disabled><label>Ring Tilt</label><BR>\n";
		}
		IF ($_SESSION['EOreeDs'] == 'Y') {
			print "<input class=\"w3-check\" name=\"ED\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Reed Chop</label><BR>\n";
		} ELSE {
			print "<input class=\"w3-check\" name=\"EDno\" type=\"checkbox\" disabled><label>Reed Chop</label><BR>\n";
		}
		IF ($_SESSION['EOMoarch'] == 'Y') {
			print "<input class=\"w3-check\" name=\"EM\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Mounted Archery</label><BR>\n";
		} ELSE {
			print "<input class=\"w3-check\" name=\"EMno\" type=\"checkbox\" disabled><label>Mounted Archery</label><BR>\n";
		}
		IF ($_SESSION['EOBirjas'] == 'Y') {
			print "<input class=\"w3-check\" name=\"EB\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Birjas</label><BR>\n";
		} ELSE {
			print "<input class=\"w3-check\" name=\"EBno\" type=\"checkbox\" disabled><label>Birjas</label><BR>\n";
		}
		print "</article>\n";

		print "<P>Please unselect any game in which you choose not participate.</P><BR>\n";
		print "<P><button class=\"w3-btn w3-blue\">Games Selected</button></p>\n";
		print "</section>\n";
//		print "<article class=\"w3-card w3-orange\">";
//		print "<PRE>\n";
//		print "Ignore me, I am for Sandor's use.\n";
//		print_r($_SESSION);
//		print "</PRE></article>\n";
		die;
	}
	IF ($Gin == 999) {
		IF ($EH) {
			$_SESSION['HeadsYes'] = 'Y';
		} ELSE {
			$_SESSION['HeadsYes'] = 'N';
		}
		IF ($ER) {
			$_SESSION['RingsYes'] = 'Y';
		} ELSE {
			$_SESSION['RingsYes'] = 'N';
		}
		IF ($ED) {
			$_SESSION['reeDsYes'] = 'Y';
		} ELSE {
			$_SESSION['reeDsYes'] = 'N';
		}
		IF ($EM) {
			$_SESSION['MoarchYes'] = 'Y';
		} ELSE {
			$_SESSION['MoarchYes'] = 'N';
		}
		IF ($EB) {
			$_SESSION['BirjasYes'] = 'Y';
		} ELSE {
			$_SESSION['BirjasYes'] = 'N';
		}
        $setc = mysql_query("SELECT PName FROM riders WHERE PID = {$_SESSION['Rider']} ", $db);
        IF ($C = mysql_fetch_array($setc)) {
            $_SESSION['RiderName'] = $C[0];
        } ELSE {
            $_SESSION['RiderName'] = "Error";
        }
        $setcc = mysql_query("SELECT HName FROM horses WHERE HID = {$_SESSION['Horse']} ", $db);
        IF ($CC = mysql_fetch_array($setcc)) {
            $_SESSION['HorseName'] = $CC[0];
        } ELSE {
            $_SESSION['HorseName'] = "Error";
        }
		$_SESSION['Games'] = 1;
		$_SESSION['Progbar'] = 80;
		header('Location: '.$_SERVER['PHP_SELF']);
		die;
	} ELSE {
		echo "Something didn't work.\n";
		print "<article class=\"w3-card w3-orange\">";
		print "<PRE>\n";
		print "Ignore me, I am for Sandor's use.\n";
		print_r($_SESSION);
		print "</PRE></article>\n";
		print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
		die;
	}
}

// The Games have been set if we get to this point.

IF (!isset($_SESSION['Confirm']) OR $_SESSION['Confirm'] <= 0) {

    print "<!DOCTYPE html>\n";
    print "<html>\n";
    print "<title>Registration Results</title>\n";
    print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
    print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";
   
	print "<header class=\"w3-panel\">\n";
	print "<H1>Please Review:</H1>\n";
	print "</header>\n";

	print "<div class=\"w3-card w3-deep-purple\" style=\"width:100%\">\n";
	printf("<H2>%s IKEqC Current Registration Progress</H2></div>\n", $_SESSION['EventName']);
	print "</div>\n";
	print "<div class=\"w3-progress-container\">\n";
	printf("<div class=\"w3-progressbar w3-blue\" style=\"width:%s\">\n", $_SESSION['Progbar'] . "%");
	print "</div><br>\n";


    print "<body>\n";
    print "<section class=\"w3-panel w3-pale-blue\">\n";
	print "<form class=\"w3-container\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
    print "<P>\n";



    print " <table class=\"w3-table-all\"> ";
    print "<TR><TD>\n";
    printf("%s</TD><TD>\n", $_SESSION['EventName']);
    printf("Event ID: %s</TD></TR>\n", $_SESSION['Event']);
    print "<TR><TD>\n";
    printf("%s</TD><TD>\n", $_SESSION['RiderName']);
    printf("Rider ID: %s</TD></TR>\n", $_SESSION['Rider']);
    print "<TR><TD>\n";
    printf("%s</TD><TD>\n", $_SESSION['HorseName']);
    printf("Horse ID: %s</TD></TR>\n", $_SESSION['Horse']);
    print "<TR><TD>Offered</TD><TD>Registered</TD></TR>\n";

    IF ($_SESSION['EOHeads'] == 'Y') {
        print "<TR><TD>Behead the Enemy</TD>";
        IF ($_SESSION['HeadsYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    }
    IF ($_SESSION['EORings'] == 'Y') {
        print "<TR><TD>Ring Tilt</TD>";
        IF ($_SESSION['RingsYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    }
    IF ($_SESSION['EOreeDs'] == 'Y') {
        print "<TR><TD>Reed Chop</TD>";
        IF ($_SESSION['reeDsYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    }
    IF ($_SESSION['EOMoarch'] == 'Y') {
        print "<TR><TD>Mounted Archery</TD>";
        IF ($_SESSION['MoarchYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    }
    IF ($_SESSION['EOBirjas'] == 'Y') {
        print "<TR><TD>Birjas</TD>";
        IF ($_SESSION['BirjasYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    }
    print "</TABLE><HR>\n";



    IF (!is_null($_SESSION['Hashtag'])) {
        printf("Please consider using the \"%s\" hashtag in your social media posts.\n", $_SESSION['Hashtag']);
    }

    $_SESSION['Confirm'] = $_SESSION['Event'];
	printf("<input type=\"hidden\" name=\"EID\" value=\"%s\">\n", $_SESSION['Event']);
	printf("<input type=\"hidden\" name=\"PID\" value=\"%s\">\n", $_SESSION['Rider']);
	printf("<input type=\"hidden\" name=\"HID\" value=\"%s\">\n", $_SESSION['Horse']);
	printf("<input type=\"hidden\" name=\"EH\" value=\"%s\">\n", $_SESSION['HeadsYes']);
	printf("<input type=\"hidden\" name=\"ER\" value=\"%s\">\n", $_SESSION['RingsYes']);
	printf("<input type=\"hidden\" name=\"ED\" value=\"%s\">\n", $_SESSION['reeDsYes']);
	printf("<input type=\"hidden\" name=\"EM\" value=\"%s\">\n", $_SESSION['MoarchYes']);
	printf("<input type=\"hidden\" name=\"EB\" value=\"%s\">\n", $_SESSION['BirjasYes']);

	print "<P><button class=\"w3-btn w3-red\">THIS IS CORRECT.  Register me.</button></p>\n";
    print "</form>\n";
    print "</P>\n";
//    print "<article class=\"w3-card w3-orange\">";
//    print "<PRE>\n";
//	print "Ignore me, I am for Sandor's use.\n";
//    print_r($_SESSION);
//    print "</PRE></article>\n";
//    print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
//    die;
}

IF ($_SESSION['Confirm'] > 0 ) {
// 	print "INSERT INTO events_temp (EID,PID,HID,EH,ER,ED,EM,EB) VALUES ($EID,$PID,$HID,'$EH','$ER','$ED','$EM','$EB') ";
 	$I = "INSERT INTO events_temp (EID,PID,HID,EH,ER,ED,EM,EB) VALUES ($EID,$PID,$HID,'$EH','$ER','$ED','$EM','$EB') ";
    $seti = @mysql_query($I, $db);
//    print mysql_error($seti);
 	IF ($seti) {
		print "<!DOCTYPE html>\n";
		print "<html>\n";
		print "<title>Registration Sucessful</title>\n";
		print "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n";
		print "<link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n";

		print "<header class=\"w3-panel\">\n";
		print "<H1>Data Saved</H1>\n";
		print "</header>\n";

		print "<div class=\"w3-card w3-deep-purple\" style=\"width:100%\">\n";
		printf("<H2>%s IKEqC Current Registration Progress</H2></div>\n", $_SESSION['EventName']);
		print "</div>\n";
		print "<div class=\"w3-progress-container\">\n";
		print "<div class=\"w3-progressbar w3-blue\" style=\"width:100%\">\n";
		print "</div><br>\n";
		print "<body>\n";
		print "<H2>You have successfully registered for the event.</H2><BR>\n";
		print "<form class=\"w3-container\" method=\"GET\" action=\"{$_SERVER['PHP_SELF']}\">\n";
		print "<input type=\"hidden\" name=\"Reset\" value=\"22\">\n";
		print "<P><button class=\"w3-btn w3-lime\">Reset me for the next Rider</button></p>\n";
		print "</P>\n";
//		print "<article class=\"w3-card w3-orange\">";
//		print "<PRE>\n";
//		print "Ignore me, I am for Sandor's use.\n";
//        print_r($_SESSION);
//        print "<HR>\n";
//        print_r($_POST);
//		print "</PRE></article>\n";
//		print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
		die;
	} ELSE {
		echo "Something didn't work.\n";
		print "<article class=\"w3-card w3-orange\">";
		print "<PRE>\n";
		print "Ignore me, I am for Sandor's use.\n";
		print $setii;
		print "<BR>\n";
		print_r($_SESSION);
		print "<HR>\n";
		print_r($_POST);
		print "</PRE></article>\n";
		print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
		die;
	}		
}	
?>