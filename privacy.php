<?php
/**
 * Created by PhpStorm.
 * User: Alpha
 * Date: 4/23/17
 * Time: 1:41 PM
 */

$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "colors.inc";
include "index_funcs.inc";

OpenTOP("IKEqC AS LII");

print "<section class=\"w3-row w3-theme\">\n"; // Banner
print "<article class=\"w3-col m3 l2 w3-cell w3-theme w3-center\">\n"; // Logo Block
print "<img title=\"Logo\" alt=\"Or, A Chamfron and in base the letters IKEqC vert.\" src=\"I3Logo3.png\">\n";
print "</article>\n"; // End Logo block
print "<article class=\"w3-col m9 l10 w3-theme w3-center w3-cell-middle\">\n"; // Title Block
print "<H1>Inter-Kingdom Equestrian Competition</H1>\n";
print "<p>In the Fifty-Second Year of the Society of Creative Anachronism</p>\n";
print "</article>\n"; // End Title block
print "</section>\n"; // End Banner block

print "<section class=\"w3-row w3-theme\">\n"; // Main window

print "<article class=\"w3-col m9 l10 w3-theme\">\n"; // Content

print "<div class=\"w3-panel w3-theme-l2 w3-border w3-margin\">\n";
print "<H3>Privacy Policy</H3>\n";
?>
    <p>The Inter-Kingdom Equestrian Competition (IKEqC) is an annual tournament.  To serve its participants, fans, and patrons, the IKEqC operates a web service to display current and historical standings, including details about the events scores were submitted at and the Riders and Horses that compete.  To enable us to do these things, we ask for certain pieces of personal information.</p>
    <p>WHAT we collect or wish to collect:</p>
    <p>We require you to allow us to collect and use your SCA name in our website, and any derivative works such as reports submitted to Group, Kingdom, Society newsletters, news feeds, or other topically relevant publications or services.  If made available to us, we would like to share your persona’s likeness (photo, image, engraving, woodcut, cuneiform tablet, etc al.) in addition to your SCA name, on our service and in our publications and releases.</p>
    <p>In addition to your SCA Name, we may track a “Nom de’ Guerre” or two.  A “Nom de’ Guerre” is just a fancy way of saying what your friends call you around camp when your not in Court.</p>
    <p>We ask for your Mundane (legal) name.  If the participant is under the legal age of majority, we will require the Legal name of their parent or guardian.</p>
    <p>We ask for a contact phone, either landline or mobile.</p>
    <p>We ask for your Home Group and Kingdom.  Let us honor them with your participation.</p>
    <p>We ask for information on the Horse you compete with, each time you compete.  We will ask about the Horse’s owner, their home stable, and if they are rented for the event.</p>
    <p>On the technical side, we will record certain technical data such as IP or MAC address, referral address, as well as other criteria of any computer, device, or phone that digitally accesses our service.</p>
    <p>WHY we need it:</p>
    <p>Names appearing on the Scoreboard or in our reports are the biggest reason.  Also-known-as names and legal names are used by the Marshal’s of the events you participate in order to form a double check on the identity of participants, you deserve proper credit for your successes after all.  Legal Names are required if we should ever need to contact you.  Technical details are needed to separate the genuine visitors from the ner’do-wells.</p>
    <p>HOW we will use it:</p>
    <p>Primarily we will use the information we collect to show the world how good you are at the IKEqC.  We can use alternate names and your legal name to help identify you in the future when registering for events.  Phone numbers and email addresses will be used as a means to contact a participant if it becomes necessary or as a backup means of confirming identity, but this use is internal only.  We do not now, nor do we plan to have any need to share this information with third parties.</p>
    <p>HOW we will safeguard it:</p>
    <p>The technical details on the exact specifications of the safeguards on data are available on request.  The ‘non-nerd English’ version is that we take industry standard steps to secure your data.  At the present, the IKEqC does not possess a SSL certificate, but does employ a sophisticated method of keeping hidden that which should stay hidden.</p>
    <p>WHO may see it:</p>
    <p>The list of people currently authorized to view the entire database can be requested.  These ‘super-users’ will be able to see all of the data.  EMiCs can see a limited subset of this data as it applies to the specific events they are to run.  Participants are free to review all non-technical data upon themselves on request.  Participants will be provided a means to make changes to their personal information, including that which is publicly visible.</p>
    <p>WHEN we will share it with third parties:</p>
    <p>The simple answer is, we might share your personal information in one of two ways.  Upon receipt of a valid court order of mundane or SCA authority.  When setting up a new business relationship with a hosting provider (in this case, the information would be protected by the host’s privacy policy).  Every other disclosure of personal information is to interested parties.</p>
    <p>WE WILL NOT SELL, LEND, OR GIVE YOUR PERSONAL INFORMATION FOR BUSINESS PURPOSES!  Etch it in stone, we won’t do it!</p>
    <p>WHAT If we get hacked?  Fair question, and the truthful answer is that depends on the nature and scope of the attack.  We will do our best to notify you as soon as we can confirm the breach and the scope of the damage.</p>
    <p>Please email all inquiries to ikeqc (at) scaikeqc (dot) org.</p>

<?php
print "<a href=\"http://scaikeqc.org/index.php\">Click here to return to the main page.</a></p>\n";
print "</div>\n";

print "</section>\n"; // End Main Window
