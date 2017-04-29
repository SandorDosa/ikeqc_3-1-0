<?php
/**
 * Created by PhpStorm.
 * User: Alpha
 * Date: 4/23/17
 * Time: 8:44 PM
 */

$vars_start = get_defined_vars();
session_start();
include "ikeqcfuncs.inc";
include "colors.inc";

OpenTOP("Indent Test");

print "<section class=\"w3-row w3-theme\">\n"; // Banner
print "<article class=\"w3-col m3 l2 w3-cell w3-theme w3-center\">\n"; // Logo Block
print "<img title=\"Logo\" alt=\"Or, A Chamfron and in base the letters IKEqC vert.\" src=\"I3Logo3.png\">\n";
print "</article>\n"; // End Logo block
print "<article class=\"w3-col m9 l10 w3-theme w3-center w3-cell-middle\">\n"; // Title Block
print "<H1>Inter-Kingdom Equestrian Competition</H1>\n";
print "<p>In the Fifty-Second Year of the Society of Creative Anachronism</p>\n";
print "</article>\n"; // End Title block
print "</section>\n"; // End Banner block

print "<section class=\"w3-row w3-theme-l1\">\n"; // Main window
print "<h1>IV. IKEqC Staff (EMiC/EMoG/EM, TA, RaW)</h1>\n";
print "<article class=\"w3-panel w3-theme-l2 w3-left-align\">\n";
  print "<h3>IV.A. Equestrian Marshals</h3>\n";
  print "<div class=\"w3-container w3-theme-l3\">\n";
    print "<p>IV.A.1. Qualifications<br>Equestrian Marshals are authorized external to the IKEqC, based on SCA regulations and Kingdom Law.  If an Equestrian Marshal is qualified by SCA regulation and Kingdom Law, they are considered qualified by the IKEqC.</p>\n";
    print "<div class=\"w3-container w3-theme-l4\">\n";
      print "<p>IV.A.1.a. The IKEqC Council may for just cause limit or revoke any EM's authority to participate in IKEqC tournaments.</p>\n";
      print "</div>\n";
    print "<p>IV.A.2. Large Multi-Kingdom Events<br>Large Multi-Kingdom Events such as Gulf Wars are a huge undertaking and often bring in riders and EMs from far and wide.  If an otherwise qualified Equestrian Marshal is from a Kingdom other than the Hosting Kingdom(s), and is acceptable to the EMiC they may assist in running IKEqC games and in certifying scores.</p>\n";
    print "<p>IV.A.3. EM's of the Game (EMoG)<br>At large events with IKEqC activities spanning several fields or days the IKEqC-EMiC may delegate a lead EM for one or more games.  EM's of the Game (EMoG), must be qualified to be an EMiC, must insure that they are able to provide the minimum required staff per Sec II.C for their game as if it were a separate event, remain subordinate to the EMiC, and follow the reporting requirements as if their game were a separate event.  The EMiC remains personally responsible for the entire event, and must insure that delegated tasks are completed in accordance with the rules.</p>\n";
    print "<p>IV.A.4. EqMIC reporting requirements<br>The EMiC must complete and sign the current year score sheets, have the Riders sign up on the IKEqC Roster form, and enter the data for their event on the IKEqC system.</p>\n";
    print "<div class=\"w3-container w3-theme-l4\">\n";
      print "<p>IV.A.4.a. All paper records must be recorded on forms that match the year.  Scores recorded on forms that do not match the year may be invalidated and removed.<\p>\n";
      print "<div class=\"w3-container w3-theme-l5\">\n";
        print "<p>IV.A.4.a.i. This is required due to the evolving nature of the forms, and to provide an administrator with the ability to easily sort archival scoresheets by type.</p>\n";
        print "</div>\n";
      print "<p>IV.A.4.b. EMiCs are to maintain their paper records for the longer of two years or their Kingdom's record storage requirement.</p>\n";
        print "<div class=\"w3-container w3-theme-l5\">\n";
        print "<p>IV.A.4.b.i. When the record retention window expires, EMiCs should destory scoresheet records like any other sensitive document.</p>\n";
        print "<p>IV.A.4.b.ii. EMiCs may scan scoresheets to assist in keeping an archive longer than the requirements above.</p>\n";
        print "<p>IV.A.4.b.iii. EMiCs may elect at their expense to maintain records indefinitely, provided they safeguard the records in an appropriate way.</p>\n";
        print "</div>\n";
      print "<p>IV.A.4.c. Should it be necessary EMiCs shall add reports of any incidents or accidents to their IKEqC reports.  This includes II.D. Safety issues.  Hard copies of these reports shall be placed with the paper records of the event and submitted with the scores and retained as directed above.</p>\n";
      print "</div>\n";
    print "<p>IV.A.5. EMoG reporting requirements<br>The EMoG must complete and sign the current year score sheets for the games they are in charge of.</p>\n";
    print "<div class=\"w3-container w3-theme-l4\">\n";
      print "<p>IV.A.5.a. There is no need for Riders to complete a new Roster form, instead ensure all Riders are on the IKEqC-EMiC's Roster sheets.</p>\n";
      print "<div class=\"w3-container w3-theme-l5\">\n";
        print "<p>IV.A.5.a.i. EMoGs may elect to use a separate Roster form, and have Riders for their game sign up on it for their convenience.  Such forms become part of the event records and must be turned over to the IKEqC-EMiC and submitted with the event report.</p>\n";
        print "</div>\n";
      print "<p>IV.A.5.b. All paper records must be recorded on forms that match the year.  Scores recorded on forms that do not match the year may be invalidated and removed.</p>\n";
      print "<p>IV.A.5.c. EMoGs shall provide their records to the IKEqC-EMiC before leaving the event site.</p>\n";
      print "<p>IV.A.5.d. EMoGs report to the IKEqC-EMiC, but must cooperate with other event staff (Autocrat, etc al.) as required to perform their duties.</p>\n";
      print "</div>\n";
    print "<p>IV.A.6. Revocation of IKEqC Privileges</p>\n";
    print "<div class=\"w3-container w3-theme-l4\">\n";
      print "<p>IV.A.6.a. Should it come to the notice of the IKEqC Council that an EM is not following IKEqC regulations in running IKEqC events or practices, the IKEqC Council may restrict that EM from acting as a EMiC for IKEqC activities.  The EM will be contacted privately by the IKEqC Council and the issues will be discussed and education on the errors will be offered.  It is hoped that this will be all that is required to solve all issues.</p>\n";
      print "<p>IV.A.6.b. In the event of a serious infraction, an EMs privilege to officiate IKEqC games will be revoked.  The IKEqC Council will report on their reasons and findings to the EM's Kingdom Equestrian Officer and to the Society Equestrian Officer.</p>\n";
      print "<p>IV.A.6.c. While the IKEqC Council does not have the authority to pull an EMs card, we can disallow scores submitted at events and practices managed by an offending EM and even redact scores already submitted if on review it is learned the offense has been prevalent.  If the IKEqC Council is forced to redact scores due to a issue of this nature, a special bulletin will be issued and the IKEqC Council will attempt to reach out to the Riders effected by the scores redacted.</p>\n";
      print "</div>\n";
    print "</div>\n";
  print "</article>\n";

//  -+-+-+-

//  print "<article class=\"w3-panel w3-theme-d2 w3-left-align\">\n";
//  print "<h3>IV.B. Tournament Assistants (TA)</h3>\n";
//  print "<p>Tournament Assistants are persons that are not currently qualified as an Equestrian Marshal, but are qualified to assist in all things IKEqC that do not involve duties restricted to EMs by SCA regulation or Kingdom Law.</p>\n";
//  print "<div class=\"w3-container w3-theme-d3\">\n";
//    print "<p>IV.B.1. Requirements
//
//   a. Tournament Assistants must have an active paid SCA membership when:
//
//      i. On inital consideration, and when renewing.
//      ii. When acting as a TA for an IKEqC Tournament.
//
//   b. TAs must have signed all appropriate waivers.
//
//   c. TAs must demonstrate working knowledge of the rules of the IKEqC, the scoring systems, and a general knowledge of rules outside of the IKEqC which pertain to Mounted Games, Mounted Archery, and Mounted Combat.
//
//   d. TAs must demonstrate working knowledge of the working limits of their authority.
//
//      i. Specifically that a Tournament Assistant is not an Equestrian Marshall.
//      ii. TAs work for the IKEqC-EMiC, and by extension the Event-EMic.
//      iii. TAs are not permitted to enter an active field, unless they hold another authorization that permits this or an EM specifically invites the TA on the field under the EM's authority under Society, Kingdom, or Local rules for Equestrain Activities.
//
//   _[Sandor's comments:  TAs are off-the-field staff.  If they want to participate on-the-field, get a Groundcrew auth.  The idea is if a gentle with a Groundcrew Auth could be just as useful as an EM for applying our rules and recording scores.  A Groundcrew auth is easier to get than an EM card, and both cards are external to the IKEqC.  Aside from that I wanted to offer a way to allow someone that might not be able to gain an EM or Groundcrew auth to help.  I was thinking specifically like a gentle in a wheelchair, or similar handicap that would not prevent them from wielding a clipboard and using a computer.]_
//
//### 2. Revocation and Attachment to other privileges
//
//   a.  Should a TA have any other Equestrian authorization withdrawn or suspended by the SEO, KEO, or local equestrian officers, their IKEqC Tournament Assistant authorization is likewise withdrawn or suspended automatically.
//
//       i. An appeal for IKEqC priviledges alone may by made to the IKEqC Council, though the IKEqC Council may elect to defer until after the Society, Kingdom, or Local review is complete.
//
//
//   b.  Should the IKEqC Council learn of just cause, a Tournament Assistant may have their authorization suspended or revoked.  Each case will be dealt with on a case-by-case basis and formal channels of appeal for matters such as this are clearly established elsewhere in SCA corpora and Kingdom Law.
//
//   c.  The IKEqC Council will report to the SEO, KEO of the effected gentle's Kingdom and if known the Local Equestrian Officer when the IKEqC Council revokes or suspends an authorization.
//
//### 3. Authorization Process
//
//   a. Upon application, each candidate shall be quizzed by a member of the IKEqC Council or their representative and an Equestrian Marshal familiar with IKEqC games and tournaments.
//
//      i.  If the candidate is sufficently knowldgeable in matters IKEqC, general site safety, and the limits on their authority they will be authorized to act as a Tournament Assistant for the remainder of the current AS year, and two full AS years more.
//
//### 3. Renewal Process
//
//   a.  A TA within 180 days of their expiration but not closer than 29 days (April 1st) may apply for a two year renewal and have the renewed authorization before the beginning of the next AS year.  This request may be made to the IKEqC Council directly or through the TA portal online.
//
//   b.  A TA within 29 days of their expiration but not closer than 7 days (April 22nd) may request an urgent renewal.  Depending on workload, this may or may not be granted before the end of the AS year.  The TA will not be authorized to work events until the renewal is processed and sent to the TA.  This request must be made through the TA portal online.
//
//   c.  A TA within 7 days of expiration but not yet expired may request an emergency renewal only if they are required to work for an event in the month of May.  A fee of $25 will apply and this fee doubles for each successive time a TA must make an emergency request.  This request must be made through the TA portal online.
//
//   d.  A TA who permits their authorization to expire before requesting a renewal, may not renew and must go through the authorization process above.
//
//   e.  In the event of major rules changes (i.e. addition of a new game, major scoring overhaul, etc al.) renewal applicants may be directed to take a quiz on the changes before their renewal is granted.  The exact nature of this quiz will be explained to the renewal applicant at that time.
//
//   e.  All renewal requests are subject to internal review.
//
//