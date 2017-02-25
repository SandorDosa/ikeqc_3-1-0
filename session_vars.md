---
title: Known session Vars and their use
---
# Known Session Vars and their use

### Use this code in terminal to re-build this list.
grep -hor "\$_SESSION\['[A-Za-z0-9_]*'\]" * | sort -u

{% highlight php linenos %}

* $_SESSION['BG'] 			// Background color
* $_SESSION['BirjasYes']		// BIRJAS Affirm
* $_SESSION['Caution']		// Important notice collector
* $_SESSION['Confirm']		// Confirmation Token Flag
* $_SESSION['DVN']			// Rider Division, exists in [games].DVN [year].DVN events_temp.DVN
* $_SESSION['EAdmin']			// Event Administrator [not being used as intended]
* $_SESSION['EAemail']		// Event Email [not being used as intended]
* $_SESSION['EAphone']		// Event Phone number [not being used as intended]
* $_SESSION['EB']				// Event Offers BIRJAS
* $_SESSION['EBcount']		// Count of Riders remaining to play BIRJAS
* $_SESSION['ED']				// Event offers REED CHOP
* $_SESSION['EDcount']		// Count if Riders remaining to play REED CHOP
* $_SESSION['EHL']			// Event offers HEADS LONG
* $_SESSION['EHLcount']		// Count of Riders remaining to play HEADS LONG
* $_SESSION['EHS']			// Event offers HEADS SHORT
* $_SESSION['EHScount']		// Count of Riders remaining to play HEADS SHORT
* $_SESSION['EID']			// Event ID number, set in events.EID and is a universal key
* $_SESSION['EMS']			// Event offers MOARCH SINGLE
* $_SESSION['EMScount']		// Count of Riders remaining to play MOARCH SINGLE
* $_SESSION['EMT']			// Event offers MOARCH TRIPLE
* $_SESSION['EMTcount']		// Count of Riders remaining to play MOARCH TRIPLE
* $_SESSION['EName']			// Event Name
* $_SESSION['EOBirjas']		// Event will offer BIRJAS [Consolidate with 'EB'?]
* $_SESSION['EOHeads']		// Event will offer HEADS [depreciate]
* $_SESSION['EOHeadsLong']	// Event will offer HEADS LONG [Consolidate with 'EHL'?]
* $_SESSION['EOHeadsShort']	// Event will offer HEADS SHORT [Consolidate with 'EHS'?]
* $_SESSION['EOMAST']			// Event will offer MOARCH SINGLE [Consolidate with 'EMS'?]
* $_SESSION['EOMASingle']		// Event will offer MOARCH SINGLE [depreciate]
* $_SESSION['EOMATT']			// Event will offer MOARCH TRIPLE [Consolidate with 'EMT'?]
* $_SESSION['EOMATriple']		// Event will offer MOARCH TRIPLE [depreciate]
* $_SESSION['EOMoarch']		// Event will offer MOARCH [depreciate]
* $_SESSION['EOReeds']		// Event will offer REED CHOP [Consolidate with 'ED'?]
* $_SESSION['EORings']		// Event will offer RING TILT [Consolidate with 'ER'?]
* $_SESSION['EOreeDs']		// Event will offer REED CHOP [depreciate]
* $_SESSION['EP']				// [Riders] participating
* $_SESSION['EPass']			// Event Code or EMiC password [may not be using to plan]
* $_SESSION['EPcount']		// [Riders] remaining to participate
* $_SESSION['ER']				// Event offers RING TILT
* $_SESSION['ERcount']		// Count of Riders remaining to play RING TILT
* $_SESSION['Edate']			// Event Date
* $_SESSION['EditQuery']		// [[unsure, likely abandonded]]
* $_SESSION['Ename']			// Event Name, duplicate of EName
* $_SESSION['EntryError']		// Halt Error notice collector
* $_SESSION['Estatus']		// Event Status ('O'pen 'C'omplete 'F'iled 'X'error-locked 'Z'cancelled 'E'xiled)
* $_SESSION['Event']			// Event Number, duplicate of EID, possibly to avoid use of EID
* $_SESSION['EventEMIC']		// Similar to EAdmin
* $_SESSION['EventName']		// Event Name, duplicate of EName,Ename
* $_SESSION['Games']			// [[unsure]]
* $_SESSION['HID']			// Horse ID number, set in horses.HID and is a universal key
* $_SESSION['HLYes']			// Rider will participate in HEADS LONG
* $_SESSION['HSYes']			// Rider will participate in HEADS SHORT
* $_SESSION['Hashtag']		// Event Hashtag, offered for social media use [future use planned]
* $_SESSION['HeadsLongYes']	// Rider will participate in HEADS LONG [dupe of HLYes]
* $_SESSION['HeadsShortYes']	// Rider will participate in HEADS SHORT [dupe of HSYes]
* $_SESSION['Horse']			// Alias of HID
* $_SESSION['HorseName']		// Horse Name
* $_SESSION['KID']			// Kingdom ID number of Rider's home Kingdom, and is a universal lookup
* $_SESSION['LastEdit']		// [[unsure]], used with RiderEdit?
* $_SESSION['LastGame']		// Token to store the last game that had data entered for it.
* $_SESSION['MASTYes']		// Rider will participate in MOARCH SINGLE
* $_SESSION['MASTYesYes']		// Rider will participate in MOARCH SINGLE [typo]
* $_SESSION['MATTYes']		// Rider will participate in MOARCH TRIPLE
* $_SESSION['PID']			// Rider ID Number set in riders.PID and is a universal key.
* $_SESSION['PIDx']			// Alternate Rider ID, used with RiderEdit
* $_SESSION['Progbar']		// Progress Bar, current use is Rider Registration, planned elsewhere.
* $_SESSION['ReedsYes']		// Rider will participate in REED CHOP
* $_SESSION['Reset']			// Reset token flag
* $_SESSION['Rider']			// Alias of PID
* $_SESSION['RiderDVN']		// Alias of DVN
* $_SESSION['RiderHonors']	// Rider's proper titles (Lord/Lady, Sir, Countess, etc al)
* $_SESSION['RiderID']		// Alias of PID
* $_SESSION['RiderName']		// Rider's Name
* $_SESSION['RingsYes']		// Rider will participate in RING TILT
* $_SESSION['RunBirjas']		// BIRJAS token flag (when set true, other games should be false)
* $_SESSION['RunH21']			// HEADS SHORT token flag (when set true, other games should be false)
* $_SESSION['RunH30']			// HEADS LONG token flag (when set true, other games should be false)
* $_SESSION['RunMA1']			// MOARCH SINGLE token flag (when set true, other games should be false)
* $_SESSION['RunMA3']			// MOARCH TRIPLE token flag (when set true, other games should be false)
* $_SESSION['RunReeds']		// REED CHOP token flag (when set true, other games should be false)
* $_SESSION['RunRings']		// RING TILT token flag (when set true, other games should be false)
* $_SESSION['Watching']		// Event Surveilence token flag when matched with EID
* $_SESSION['stats']			// Statistics token flag, (Does the system know how many riders in which games are left)
* $_SESSION['xPID']			// Alternate Rider ID, used with RiderEdit
{% endhighlight %}
