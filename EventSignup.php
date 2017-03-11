<?PHP
// At-Event Signup Kiosk
// EventSignup.php
// v0.10
// Sandor Dosa
// Set ECHO Event pulldown selection
// Set PAPA Previously registered Riders for this event
// Set ROMEO Rider pulldown selection
// Set HOTEL Horse pulldown selection
// Set GOLF Games checkboxes
// Set INDIGO Input to database
// Set CHARLIE Confirmation lookup
$vars_start = get_defined_vars();
session_start();
include "year.inc";
include "colors.inc";
include "ikeqcfuncs.inc";
include "event_signup.inc";

//IF ($Closeout == 333) {
//    $EID = $_SESSION['Event'];
//    session_destroy();
//    header('Location: /sandbox/WatchEvent.php?Event=$EID');
//    die;
//}

IF ($_POST['Reset'] == 1 OR $_GET['Reset'] == 1) { // Master Reset
    MasterReset();
    header('Location: '.$_SERVER['PHP_SELF']);
} // Master Reset (All)

IF ($_POST['Reset'] == 22) { // Reset for another entry
    NextEntry();
    header('Location: '.$_SERVER['PHP_SELF']);
} // Reset all Rider/Horse varibles

IF (!isset($_SESSION['Event']) OR $_SESSION['Event'] <= 0) {

    IF (!isset($_POST['kiosk']) OR $_POST['kiosk'] <= 0) {
        $sete = mysql_query("SELECT * FROM events WHERE Estatus = 'O'", $db);
        IF ($E = mysql_fetch_array($sete)) {
    
            OpenHTML("Rider Registration Kiosk");
    
            print "<header class=\"w3-container $S1\">\n";
            print "<H2>Kiosk Initalization:</H2>\n";
            print "</header>\n";
    
            print "<section class=\"w3=container $S2\">\n";
            print "<P>Once the event is registered to the Kiosk, riders may begin signing up.<HR>If the kiosk stays idle for 20 minutes without any use the session will expire and you will need to setup the event again.</P>\n";
            print "</section>\n";
    
            print "<form name=\"kiosk\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
            print "<select class=\"w3-select\" name=\"kiosk\">\n";
            do {
                printf("<OPTION VALUE=\"%s\">%s\n", $E[0], $E[2]);
            } while ($E = mysql_fetch_row($sete));
            echo "</SELECT>\n<BR>\n";
            print "<p><button class=\"w3-btn w3-lime\">Register</button></p>\n";
            print "<HR><P>If your event is not listed in the drop down above, it may not have been registered, might be locked for maintence or some other issue.  Contact [authority] for more information and run your event on paper.</P>\n";
            die;
        } ELSE {
            $_SESSION['EntryError'] = "<P>No open events found in the system.<BR>";
            $_SESSION['Caution'] = "<P>Contact [authority] for possible last-minute registration.<BR>Failing that, you will need to run your event on paper and report later.<BR>";
            OpenHTML("No Event Data");
            ShowDebug(get_defined_vars(),$vars_start);
            die;
        } // Rider Registration Kiosk Setup

    } // Kiosk Mode

    // Kiosk is set to the correct event.

    IF ($_POST['kiosk'] > 0 ) {
        $kiosk = $_POST['kiosk'];
		$sete = mysql_query("SELECT EID,Ename,EMID,EHS,EHL,ER,ED,EMS,EMT,EB,EHash FROM events WHERE EID = '$kiosk'", $db);
		IF ($E = mysql_fetch_array($sete)) {
			$_SESSION['Event'] = $E[0];
			$_SESSION['EventName'] = $E[1];
			$_SESSION['EventEMIC'] = $E[2];
			$_SESSION['EOHeadsShort'] = $E[3];
			$_SESSION['EOHeadsLong'] = $E[4];
			$_SESSION['EORings'] = $E[5];
			$_SESSION['EOReeds'] = $E[6];
			$_SESSION['EOMAST'] = $E[7];
			$_SESSION['EOMATT'] = $E[8];
			$_SESSION['EOBirjas'] = $E[9];
			$_SESSION['Hashtag'] = "#".$E[10];
			$_SESSION['Progbar'] = 5;
			header('Location: '.$_SERVER['PHP_SELF']);
			die;
		} ELSE {
			print "Something didn't work Line 93.\n";
			print "<article class=\"w3-card w3-orange\">";
			print "<PRE>\n";
			ShowDebug(get_defined_vars(),$vars_start);
			print "</PRE></article>\n";
			print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
			die;
		}
	} // Load Kiosk mode data
    
} // Event is now stored in SESSION.

// The Event has been set if we get to this point.

IF ($_SESSION['Rider'] <= 0) {

    IF (($_GET['Rin'] == 999 AND $_GET['Rout'] == 0) OR ($_POST['Rin'] == 999 AND $_POST['Rout'] == 0)) {
        // This trap reloads the page with clears the _GET and _POST so that new data can be entered without destroying the session.
        // There is nothing to see here, just a redirect to the base script.
        header('Location: '.$_SERVER['PHP_SELF']);
        die;
    } // This clears the last search and permits a new search

    IF (!isset($_POST['Rin'])) {
        OpenHTML("Rider Registration");

        ShowProgBar($S1);

        print "<header class=\"w3-container $S2\">\n";
		print "<H1>Rider Search:</H1>\n";
		print "</header>\n";

        print "<section class=\"w3-container $S3\">\n";
        print "<P>Please enter first few letters of your name.  Omit all titles (don't worry, we'll show them later).</P><br>\n";
        print "<P>Alternatively you may enter your mundane name if we have it on file.</P>\n";
        print "</section>\n";
        print "<section class=\"w3-container $S4\">\n";
        print "<form name=\"KioskRider\" method=\"post\" action=\"{$_SERVER['PHP_SELF']}\">\n";
        print "<input class=\"w3-input w3-border\" type=\"text\" name=\"Rin\"><BR>\n";
        print "<P><button class=\"w3-btn w3-light-blue\">Search Riders</button></p>\n";
		print "</section>\n";
		$setp = @mysql_query("SELECT riders.PHonors,riders.Pname FROM events_temp LEFT JOIN riders ON riders.PID = events_temp.PID WHERE EID = {$_SESSION['Event']}", $db);
		IF ($P = @mysql_fetch_array($setp)) {
			print "<article class=\"w3-panel $S5\">\n";
			print "<P>The following Rider's have already registered.</P><HR>\n";
			print "<PRE>\n";
			do {
				IF (is_null($P[0])) {
                    print "$P[1]<BR>\n";
                } ELSE {
                    print "$P[0] $P[1]<BR>\n";
                }
			} while ($P = mysql_fetch_array($setp));
			print "</article>\n"; 
		}  //populates the Already Registered panel.
		ShowDebug(get_defined_vars(),$vars_start);
        die;
    } // Participant search input

    // $Rin is set with the search input from the participant

    IF (!isset($_POST['Rout']) OR $_POST['Rout'] <= 0) {
        IF (!isset($_POST['Rout'])) {
            $Rout = 0;
        } ELSE {
            $Rout = $_POST['Rout'];
        }
        $Rin = $_POST['Rin'];
        IF (strlen(trim($Rin)) < 1 ) {  // If no search string is supplied, dump the whole list at the participant.
            $_SESSION['Caution'] = "<P>No search terms supplied, Displaying entire list.<BR>";
            $setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' ORDER BY Pname", $db);
        } ELSEIF (strlen(trim($Rin)) > 6) { // If more than 5 characters are supplied, trim the search string to 5 characters.
            $_SESSION['Caution'] = "Search term was trimmed to improve results.<BR>";
            $Rin = "%".substr($Rin, 0, 5) . "%";
            $Rindx = soundex($_POST['Rin']) . "%";
            $setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '{$_POST['Rin']}' OR Pcka LIKE '$Rin' OR Paka LIKE '$Rin' OR Pmka LIKE '$Rin' OR PSdx LIKE '$Rindx' ) ORDER BY Pname", $db);
        } ELSE { // If the participant followed directions, their search string needs no processing.
            $Rin = "%".$Rin . "%";
            $Rindx = soundex($Rin) . "%";
            $setr = mysql_query("SELECT PID,Pname,Pcka,Paka,Pmka FROM riders WHERE Pret = 'N' AND ( PName LIKE '$Rin' OR Pcka LIKE '$Rin' OR Paka LIKE '$Rin' OR Pmka LIKE '$Rin' OR PSdx LIKE '$Rindx' ) ORDER BY Pname", $db);
        } // Search term processing and handling

        IF ($R = mysql_fetch_array($setr)) {

            OpenHTML("Rider Information");

            ShowProgBar($S1);
            
            print "<header class=\"w3-container $S2\">\n";
            print "<H1>Rider Selection:</H1>\n";
            print "</header>\n";

            print "<section class=\"w3-container $S3\">\n";
            print "<H2>Please Select the Rider below:</H2>\n";
            print "<P>A pair of asterisks next to a name, indicates a rider found under an alternate name.\n";
            print "</section>\n";

            print "<form name=\"KioskRider2\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
            print "<input type=\"hidden\" name=\"Rin\" value=\"999\">\n";
            print "<select class=\"w3-select\" name=\"Rout\">\n";
            print "<OPTION VALUE=\"0\">-=Search Again=-\n"; // First option is to search again in case the right rider isn't found.
            //print "<OPTION VALUE=\"-1\">ADD NEW RIDER\n";
            do { // Here we fill the drop down selector.
                printf("<OPTION VALUE=\"%s\">%s\n", $R[0], $R[1]);

                IF (!is_null($R['Pcka']) OR !empty($R['Pcka'])) { // Pcka Might be NULL or empty, if not we add it to the list with double asterisks
                    printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[2]);
                }

                IF (!is_null($R['Paka']) OR !empty($R['Paka'])) { // Paka Might be NULL or empty, if not we add it to the list with double asterisks
                    printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[3]);
                }

                IF (!is_null($R['Pmka']) OR !empty($R['Pmka'])) { // Pmka should NOT be NULL or empty but might be, if not we add it to the list but showing rider.PName and with double asterisks
                    printf("<OPTION VALUE=\"%s\">%s **\n", $R[0], $R[1]);
                }

            } while ($R = mysql_fetch_row($setr)); // Populate Select dropdown

            print "<OPTION VALUE=\"0\">-=Search Again=-\n"; // Last option is to search again in case the right rider isn't found.
            echo "</SELECT>\n<BR>\n";
            print "<P>A pair of asterisks next to a name, indicates a rider found under an alternate name.\n";  // Important notices often bear repeating.
            print "<p><button class=\"w3-btn w3-lime\">CONTINUE</button></p>\n";
            print "</form>\n";
            ShowDebug(get_defined_vars(),$vars_start);
            die;
        } ELSE { // This is the desired result.
            $_SESSION['Caution'] = "Your search yielded no results.<BR>Search again or select \"ADD NEW RIDER\"<BR>";
            header('Location: '.$_SERVER['PHP_SELF']."?Rin=999&Rout=0"); //TODO TEST THIS!
        } // Rider Selection, with an error trap for a bad search or searching for a rider not in the system.
        // TODO NEW RIDER SECTION
        // If search again was choosen, the section loops, otherwise $_POST['Rout'] is set with the PID of the rider being registered.

    }

    // $Rin is set to 999 and $Rout is set to the PID of the rider being registered

    IF ($_POST['Rout'] == -1 AND $_POST['Rin'] == 999) { // New Rider Section
        
    } // New Rider Section --  Presently empty
    
    IF ($_POST['Rout'] > 0 AND $_POST['Rin'] == 999) {  //Updates the Progress bar
        $_SESSION['Rider'] = $Rout;
        $_SESSION['Progbar'] = 40;
        header('Location: ' . $_SERVER['PHP_SELF']);
        die;
    } ELSE { // This is the desired outcome
        OpenHTML("ERROR!");
        print "<H1>Something didn't work Line 233</H1>\n";
        print "<article class=\"w3-card w3-red\">";
        ShowDebug(get_defined_vars(),$vars_start);
        print "</article>\n";
        print "<A HREF=\"" . $_SERVER['PHP_SELF'] . "?Reset=1\">Click here to start over</A>\n";
        die;
    } // Rider Selected, Progress bar updated, and an error trap for bad tokens.
    
} // Rider

// The Rider has been set if we get to this point.

IF (!isset($_SESSION['Horse']) OR $_SESSION['Horse'] <= 0) {

    IF (($_GET['Hin'] == 999 AND $_GET['Hout'] == 0) OR ($_POST['Hin'] == 999 AND $_POST['Hout'] == 0)) { // Seb-section Reset
        // This trap reloads the page with clears the _GET and _POST so that new data can be entered without destroying the session.
        // There is nothing to see here, just a redirect to the base script.
        header('Location: '.$_SERVER['PHP_SELF']);
        die;
    } // Reset horse search

	IF (!isset($_POST['Hin'])) {

        OpenHTML("Horse Registration");

        ShowProgBar($S1);

		print "<header class=\"w3-panel $S2\">\n";
		print "<H1>Horse Search:</H1>\n";
		print "</header>\n";

		print "<section class=\"w3-panel $S3\">\n";
		print "<P>We can filter your results.  Please enter up to the first five letters of the horse's name.</P><br>\n";
		print "<P>When known, we list either the Horse's owner or if its a rental.</P>\n";
		print "</section>\n";
		print "<form name=\"KioskHorse\" method=\"post\" action=\"{$_SERVER['PHP_SELF']}\">\n";
		print "<input class=\"w3-input w3-border\" type=\"text\" name=\"Hin\"><BR>\n";
		print "<P><button class=\"w3-btn w3-blue\">Search Horses</button></p>\n";
		die;

 	} // Horse Search

	// $Hin is set with the Search string from the Participant

    IF (!isset($_POST['Hout']) OR $_POST['Hout'] <= 0) {
        IF (!isset($_POST['Hout'])) {
            $Hout = 0;
        } ELSE {
            $Hout = $_POST['Hout'];
        }
        $Hin = $_POST['Hin'];

        IF (strlen(trim($Hin)) < 1 ) { // If there is no search string, dump the whole table at the participant.
            $_SESSION['Caution'] = "No search terms supplied, displaying entire list.<BR>";
            $seth = mysql_query("SELECT HID,HName,Hrent,HOwner,HHome FROM horses WHERE Hret = 'N' ORDER BY HName", $db);
        } ELSEIF (strlen(trim($Hin)) > 6) { // If the search string is too long, trim it, and search.
            $_SESSION['Caution'] = "Search term was trimmed to improve results.<BR>";
            $Hin = "%". substr($Hin, 0, 5) . "%";
            $seth = mysql_query("SELECT HID,HName,Hrent,HOwner,HHome FROM horses WHERE Hret = 'N' AND HName LIKE '$Hin' ORDER BY HName", $db);
        } ELSE { // If directions were followed, search.
            $Hin = "%".$Hin . "%";
            $seth = mysql_query("SELECT HID,HName,Hrent,HOwner,HHome FROM horses WHERE Hret = 'N' AND HName LIKE '$Hin' ORDER BY HName", $db);
        } // Find the horses

        IF ($H = mysql_fetch_array($seth)) {

            OpenHTML("Horse Registration");

            ShowProgBar($S1);

            print "<header class=\"w3-panel $S2\">\n";
            print "<H1>Horse Selection:</H1>\n";
            print "</header>\n";

            print "<form name=\"KioskHorse2\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
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

            } while ($H = mysql_fetch_row($seth)); // Populates Horse dropdown
            print "<OPTION VALUE=\"0\">-=Search Again=-\n";
            echo"</SELECT>\n<BR>\n";
            print "<p><button class=\"w3-btn w3-blue\">CONTINUE</button></p>\n";
            ShowDebug(get_defined_vars(),$vars_start);
            die;
        } ELSE {
            $_SESSION['Caution'] = "Your search yielded no results.<BR>Search again or select \"ADD NEW HORSE\"<BR>";
            header('Location: '.$_SERVER['PHP_SELF']."?Hin=999&Hout=0"); //TODO TEST THIS!
        } // Horse Selection with error trap for bad search or a horse not in the database

        // TODO NEW HORSE SECTION

    } // Horse Selection

	// $Hout is set to HID of the horse being registered

	IF ($_POST['Hout'] > 0 AND $_POST['Hin = 999']) { //Updates the Progress bar
		$_SESSION['Horse'] = $_POST['Hout'];
		$_SESSION['Progbar'] = 60;
		header('Location: '.$_SERVER['PHP_SELF']);
	} ELSE {
        OpenHTML("ERROR!");
        print "<H1>Something didn't work Line 346</H1>\n";
        print "<article class=\"w3-card w3-red\">";
        ShowDebug(get_defined_vars(),$vars_start);
        print "</article>\n";
        print "<A HREF=\"" . $_SERVER['PHP_SELF'] . "?Reset=1\">Click here to start over</A>\n";
        die;

	} // Update progress bar with an error trap for bad tokens.

} // Horse

// The Horse has been set if we get to this point.

IF ($_SESSION['Games'] <= 0) {

	IF (!isset($_POST['Gin']) OR $_POST['Gin'] <= 0) {
	    IF (!isset($_POST['Gin'])) {
	        $Gin = 0;
        } ELSE {
	        $Gin = $_POST['Gin'];
        } // Kludge to repair $Globals=ON legacy code
		OpenHTML("Games Selection");

		ShowProgBar($S1);

		print "<header class=\"w3-panel $S2\">\n";
		print "<H1>Games Selection:</H1>\n";
		print "</header>\n";

		print "<form name=\"KioskGames\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";
		print "<input type=\"hidden\" name=\"Gin\" value=\"999\">\n";
		print "<section class=\"w3-container $S3\">\n";
		print "<H2>Games offered at {$_SESSION['EventName']}</H2><BR>\n";

		print "<article class=\"w3-card $S4\">\n";

        IF ($_SESSION['EOHeadsShort'] == 'Y') {
            print "<input class=\"w3-check\" name=\"EHS\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Behead the Enemy -- 21'</label><BR>\n";
        } ELSE {
            print "<input class=\"w3-check\" name=\"EHSno\" type=\"checkbox\" disabled><label>Behead the Enemy -- 21'</label><BR>\n";
        } // Heads Short
        IF ($_SESSION['EOHeadsLong'] == 'Y') {
            print "<input class=\"w3-check\" name=\"EHL\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Behead the Enemy -- 30'</label><BR>\n";
        } ELSE {
            print "<input class=\"w3-check\" name=\"EHLno\" type=\"checkbox\" disabled><label>Behead the Enemy -- 30'</label><BR>\n";
        } // Heads Long
		IF ($_SESSION['EORings'] == 'Y') {
			print "<input class=\"w3-check\" name=\"ER\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Ring Tilt</label><BR>\n";
		} ELSE {
			print "<input class=\"w3-check\" name=\"ERno\" type=\"checkbox\" disabled><label>Ring Tilt</label><BR>\n";
		} // Rings
		IF ($_SESSION['EOReeds'] == 'Y') {
			print "<input class=\"w3-check\" name=\"ED\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Reed Chop</label><BR>\n";
		} ELSE {
			print "<input class=\"w3-check\" name=\"EDno\" type=\"checkbox\" disabled><label>Reed Chop</label><BR>\n";
		} // Reeds
        IF ($_SESSION['EOMASingle'] == 'Y') {
            print "<input class=\"w3-check\" name=\"EMS\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Mounted Archery -- Single Target</label><BR>\n";
        } ELSE {
            print "<input class=\"w3-check\" name=\"EMSno\" type=\"checkbox\" disabled><label>Mounted Archery -- Single Target</label><BR>\n";
        } // Mounted Archery Single
        IF ($_SESSION['EOMATriple'] == 'Y') {
            print "<input class=\"w3-check\" name=\"EMT\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Mounted Archery -- Triple Target</label><BR>\n";
        } ELSE {
            print "<input class=\"w3-check\" name=\"EMTno\" type=\"checkbox\" disabled><label>Mounted Archery -- Triple Target</label><BR>\n";
        } // Mounted Archery Triple
		IF ($_SESSION['EOBirjas'] == 'Y') {
			print "<input class=\"w3-check\" name=\"EB\" type=\"checkbox\" checked=\"checked\"><label class=\"w3-validate\">Birjas</label><BR>\n";
		} ELSE {
			print "<input class=\"w3-check\" name=\"EBno\" type=\"checkbox\" disabled><label>Birjas</label><BR>\n";
		} // Birjas

        print "<P>Please unselect any game in which you will not participate.</P><BR>\n";
        print "</article></section>\n";
        print "<section class=\"w3-container $S5\">\n";
        print "<P>Please indicate your Divisional Choice:<BR>\n";
        print "<input class=\"w3-radio\" type=\"radio\" name=\"DVN\" value=\"1\" checked>Walk<BR>\n";
        print "<input class=\"w3-radio\" type=\"radio\" name=\"DVN\" value=\"2\">Trot<BR>\n";
        print "<input class=\"w3-radio\" type=\"radio\" name=\"DVN\" value=\"3\">Canter\n";
        print "</section>\n";
        print "<section class=\"w3-container $S6\">\n";
		print "<P><button class=\"w3-btn w3-yellow\">CONTINUE</button></p>\n";
		print "</section>\n";
		// ShowDebug(get_defined_vars(),$vars_start);
		die;
	}  // Participant chooses Divison and which of the offered games at the Event they will run.

	IF ($_POST['Gin'] == 999) {

        IF ($_POST['EHS']) {
            $_SESSION['HSYes'] = 'Y';
        } ELSE {
            $_SESSION['HSYes'] = 'N';
        } // Heads Short
        IF ($_POST['EHL']) {
            $_SESSION['HLYes'] = 'Y';
        } ELSE {
            $_SESSION['HLYes'] = 'N';
        } // Heads Long
		IF ($_POST['ER']) {
			$_SESSION['RingsYes'] = 'Y';
		} ELSE {
			$_SESSION['RingsYes'] = 'N';
		}  // Rings
		IF ($_POST['ED']) {
			$_SESSION['ReedsYes'] = 'Y';
		} ELSE {
			$_SESSION['ReedsYes'] = 'N';
		}  // Reeds
        IF ($_POST['EMS']) {
            $_SESSION['MASTYes'] = 'Y';
        } ELSE {
            $_SESSION['MASTYes'] = 'N';
        } // Mounted Archery Single
        IF ($_POST['EMT']) {
            $_SESSION['MATTYes'] = 'Y';
        } ELSE {
            $_SESSION['MATTYes'] = 'N';
        } // Mounted Archery Triple
		IF ($_POST['EB']) {
			$_SESSION['BirjasYes'] = 'Y';
		} ELSE {
			$_SESSION['BirjasYes'] = 'N';
		}  // Birjas

        $setc = mysql_query("SELECT PName FROM riders WHERE PID = {$_SESSION['Rider']} LIMIT 1 ", $db);
        IF ($C = mysql_fetch_array($setc)) {
            $_SESSION['RiderName'] = $C[0];
        } ELSE {
            $_SESSION['RiderName'] = "Error";
        }

        $setcc = mysql_query("SELECT HName FROM horses WHERE HID = {$_SESSION['Horse']} LIMIT 1", $db);
        IF ($CC = mysql_fetch_array($setcc)) {
            $_SESSION['HorseName'] = $CC[0];
        } ELSE {
            $_SESSION['HorseName'] = "Error";
        }

        IF ($_SESSION['RiderName'] != "Error" AND $_SESSION['HorseName'] != "Error") { //TODO TEST THIS
            $_SESSION['Games'] = 1;
            $_SESSION['DVN'] = $_POST['DVN'];
            $_SESSION['Progbar'] = 80;
            header('Location: '.$_SERVER['PHP_SELF']);
            die;
        } ELSE {
            OpenHTML("ERROR!");
            print "<H1>Something didn't work Line 484</H1>\n";
            print "<article class=\"w3-card w3-red\">";
            ShowDebug(get_defined_vars(),$vars_start);
            print "</article>\n";
            print "<A HREF=\"" . $_SERVER['PHP_SELF'] . "?Reset=1\">Click here to start over</A>\n";
            die;
        } // Processing data and loating final review, with error traps for bad data.

	} ELSE {
        OpenHTML("ERROR!");
        print "<H1>Something didn't work Line 495</H1>\n";
        print "<article class=\"w3-card w3-red\">";
        ShowDebug(get_defined_vars(),$vars_start);
        print "</article>\n";
        print "<A HREF=\"" . $_SERVER['PHP_SELF'] . "?Reset=1\">Click here to start over</A>\n";
        die;

	} // Games and Division Selection with error traps for bad data.
} // Games and Division selection

// The Games have been set if we get to this point.

IF (!isset($_SESSION['Confirm']) OR $_SESSION['Confirm'] <= 0) {

    OpenHTML("Please Review");

    ShowProgBar($S1);

	print "<header class=\"w3-panel $S2\">\n";
	print "<H1>Please Review:</H1>\n";
	print "</header>\n";

    print "<body>\n";
    print "<section class=\"w3-panel $S3\">\n";
	print "<form name=\"KioskReview\" method=\"POST\" action=\"{$_SERVER['PHP_SELF']}\">\n";

    print "<table class=\"w3-table w3-bordered\"> "; // TODO Sanitize internal data from display after testing.
    print "<TR><TD colspan=2>{$_SESSION['EventName']}</TD></TR>\n";

    print "<TR><TD colspan=2>{$_SESSION['RiderName']}</TD></TR>\n";

    print "<TR><TD colspan=2>{$_SESSION['HorseName']}</TD></TR>\n";
    
    SWITCH ($_SESSION['DVN']) {
        CASE 1:
            print "<TR><TD colspan=2>Competeing at the Walk</TD></TR>\n";
            BREAK;
        CASE 2:
            print "<TR><TD colspan=2>Competeing at the Trot</TD></TR>\n";
            BREAK;
        CASE 3:
            print "<TR><TD colspan=2>Competeing at the Canter</TD></TR>\n";
            BREAK;
        DEFAULT:
            print "<TR><TD colspan=2>Not selected, assuming Walk.</TD></TR>\n";
            $_SESSION['DVN'] = 1;
    } // Divisional management
    
    print "<TR><TD colspan=2>Games:</TD></TR>\n";

    IF ($_SESSION['EOHeadsShort'] == 'Y') {
        print "<TR><TD>Behead the Enemy -- 21'</TD>";
        IF ($_SESSION['HSYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSEIF ($_SESSION['EOHeadsShort'] != 'Y') {
            print "<TD>Not offered</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    } // Heads Short
    IF ($_SESSION['EOHeadsLong'] == 'Y') {
        print "<TR><TD>Behead the Enemy -- 30'</TD>";
        IF ($_SESSION['HLYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSEIF ($_SESSION['EOHeadsLong'] != 'Y') {
            print "<TD>Not offered</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    } // Heads Long
    IF ($_SESSION['EORings'] == 'Y') {
        print "<TR><TD>Ring Tilt</TD>";
        IF ($_SESSION['RingsYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSEIF ($_SESSION['EORings'] != 'Y') {
            print "<TD>Not offered</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    } // Rings
    IF ($_SESSION['EOReeds'] == 'Y') {
        print "<TR><TD>Reed Chop</TD>";
        IF ($_SESSION['ReedsYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSEIF ($_SESSION['EOReeds'] != 'Y') {
            print "<TD>Not offered</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    } // Reeds
    IF ($_SESSION['EOMAST'] == 'Y') {
        print "<TR><TD>Mounted Archery -- Single Target</TD>";
        IF ($_SESSION['MASTYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSEIF ($_SESSION['EOMAST'] != 'Y') {
            print "<TD>Not offered</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    } // Mounted Archery Single
    IF ($_SESSION['EOMATT'] == 'Y') {
        print "<TR><TD>Mounted Archery -- Triple Target</TD>";
        IF ($_SESSION['MATTYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSEIF ($_SESSION['EOMATT'] != 'Y') {
            print "<TD>Not offered</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    } // Mounted Archery Triple
    IF ($_SESSION['EOBirjas'] == 'Y') {
        print "<TR><TD>Birjas</TD>";
        IF ($_SESSION['BirjasYes'] == 'Y') {
            print "<TD>Accepted</TD></TR>\n";
        } ELSEIF ($_SESSION['EOBirjas'] != 'Y') {
            print "<TD>Not offered</TD></TR>\n";
        } ELSE {
            print "<TD>Declined</TD></TR>\n";
        }
    } // Birjas
    print "</TABLE><HR>\n";

    IF (!is_null($_SESSION['Hashtag'])) {
        printf("<p>Please consider using the %s hashtag in your social media posts.</p>\n", $_SESSION['Hashtag']);
    } ELSE {
        print "<p>No event specific hashtag has been suggested.<br>\n";
        print "Please consider using #IKEqC in your social media posts.</p>\n";
    }
    print "<HR><P>\n";
    $_SESSION['Confirm'] = $_SESSION['Event'];
    print "Confirm = ".$_SESSION['Confirm'];
	printf("<input type=\"hidden\" name=\"EID\" value=\"%s\">\n", $_SESSION['Event']);
	print "Event: ".$_SESSION['Event']."<BR>\n";
	printf("<input type=\"hidden\" name=\"PID\" value=\"%s\">\n", $_SESSION['Rider']);
	print "Rider: ".$_SESSION['Rider']."<BR>\n";
    printf("<input type=\"hidden\" name=\"HID\" value=\"%s\">\n", $_SESSION['Horse']);
    print "Horse: ".$_SESSION['Horse']."<BR>\n";
    printf("<input type=\"hidden\" name=\"DVN\" value=\"%s\">\n", $_SESSION['DVN']);
    print "DVN: ".$_SESSION['DVN']."<BR>\n";
    printf("<input type=\"hidden\" name=\"EHS\" value=\"%s\">\n", $_SESSION['HSYes']);
    print "Heads Short? ".$_SESSION['HSYes']."<BR>\n";
    printf("<input type=\"hidden\" name=\"EHL\" value=\"%s\">\n", $_SESSION['HLYes']);
    print "Heads Long? ".$_SESSION['HLYes']."<BR>\n";
	printf("<input type=\"hidden\" name=\"ER\" value=\"%s\">\n", $_SESSION['RingsYes']);
	print "Rings? ".$_SESSION['RingsYes']."<BR>\n";
	printf("<input type=\"hidden\" name=\"ED\" value=\"%s\">\n", $_SESSION['ReedsYes']);
	print "Reeds? ".$_SESSION['ReedsYes']."<BR>\n";
    printf("<input type=\"hidden\" name=\"EMS\" value=\"%s\">\n", $_SESSION['MASTYes']);
    print "MAST? ".$_SESSION['MASTYes']."<BR>\n";
    printf("<input type=\"hidden\" name=\"EMT\" value=\"%s\">\n", $_SESSION['MATTYes']);
    print "MATT? ".$_SESSION['MATTYes']."<BR>\n";
	printf("<input type=\"hidden\" name=\"EB\" value=\"%s\">\n", $_SESSION['BirjasYes']);
	print "Birjas? ".$_SESSION['BirjasYes']."<HR></P>\n";

	print "<P><button class=\"w3-btn w3-red\">THIS IS CORRECT.  Register me.</button></p>\n";
    print "</form>\n";
    die;
} // Review form

// At this point, the rider, division, horse, and games have all been set and confirmed.

IF ($_SESSION['Confirm'] > 0 ) {
    $_SESSION['Confirm'] = -1;

    $EID = $_POST['EID'];
    $PID = $_POST['PID'];
    $HID = $_POST['HID'];
    $DVN = $_POST['DVN'];
    $EHS = $_POST['EHS'];
    $EHL = $_POST['EHL'];
    $ER = $_POST['ER'];
    $ED = $_POST['ED'];
    $EMS = $_POST['EMS'];
    $EMT = $_POST['EMT'];
    $EB = $_POST['EB'];

    OpenHTML("Processing");

    // print "$EID,$PID,$HID,$DVN,'$EHS','$EHL','$ER','$ED','$EMS','$EMT','$EB'<HR>\n";
    $seti = @mysql_query("INSERT INTO events_temp (EID,PID,HID,DVN,EHS,EHL,ER,ED,EMS,EMT,EB) VALUES ($EID,$PID,$HID,$DVN,'$EHS','$EHL','$ER','$ED','$EMS','$EMT','$EB')", $db);
 	IF ($seti) {

 	    OpenHTML("Registration Successful");

 	    ShowProgBar($S1);

        print "<header class=\"w3-panel $S2\">\n";
		print "<H1>Data Saved!</H1>\n";
		print "</header>\n";

		print "<div class=\"w3-container $S3\">\n";
		print "<H2>You have successfully registered for the event.</H2><BR>\n";
		print "<form class=\"w3-container\" method=\"GET\" action=\"{$_SERVER['PHP_SELF']}\">\n";
		print "<P><button class=\"w3-btn w3-lime\" name=\"Reset\" value=\"22\">Reset me for the next Rider</button></p>\n";
		print "</P>\n";
		print "</div>\n";
		print "<section class=\"w3-container $S4\">\n";
		// print "<P>If there are no more Riders to register<BR>\n";
		// print "<button class=\"w3-btn w3-red\" name=\"Closeout\" value=\"333\">CLOSE REGISTRATION AND LOGOUT</button></p>\n";
        // print $seti;
//        print "<HR>\n";
//        print mysql_stat($db);
//        print "<HR>\n";
//		ShowDebug(get_defined_vars(),$vars_start);
		die;
	} ELSE {
		print "Something didn't work Line 655.\n";
		print "<article class=\"w3-card w3-orange\">";
		print mysql_error();
        ShowDebug(get_defined_vars(),$vars_start);
		print "<A HREF=\"".$_SERVER['PHP_SELF']."?Reset=1\">Click here to start over</A>\n";
		die;
	}		
}

