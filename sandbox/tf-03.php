<!DOCTYPE html>
<?PHP
// This is a testbed for a mobile-first data entry system for the IKEqC.
// Sandor Dosa, Jan 2017
// This is v.03
//tf-03.php
?>

<html>
<title>EXPERIMENTAL NEW FORM</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<body style="max-width:400px">

<header class="w3-container w3-teal">
  <h1>Sandboxed Data Entry</h1>
    <p>This page is designed for use on smartphone screens.  Excessive whitespace on larger clients is a byproduct of this and will be dealt with in due course.</p>

</header>

<?PHP

//IF ($_server['REQUEST_METHOD'] == POST) {
IF ($_POST) {
  echo "<header class="w3-container w3-deep-orange"> /n";
  
   $T1 = $MINS * 60;
   $T2 = $SECS + $T1;
   $T3 = ($T2 * 10) + $TENS;
   $RAW = ($T3 * 10) + $HUNS;
   $Hscore = 105 - ($RAW / 100) - $Penalty;
   IF (ISSET($Ring1L)) {
     $Rsubscore = $Rsubscore + $Ring1L;
     $Arm1++;
     $Rcount++;
   }
   IF (ISSET($Ring1R)) {
     $Rsubscore = $Rsubscore + $Ring1R;
     $Arm6++;
     $Rcount++;
   }
   IF (ISSET($Ring2L)) {
     $Rsubscore = $Rsubscore + $Ring2L;
     $Arm2++;
     $Rcount++;
   }
   IF (ISSET($Ring2R)) {
     $Rsubscore = $Rsubscore + $Ring2R;
     $Arm5++;
     $Rcount++;
   }
   IF (ISSET($Ring3L)) {
     $Rsubscore = $Rsubscore + $Ring3L;
     $Arm3++;
     $Rcount++;
   }
   IF (ISSET($Ring3R)) {
     $Rsubscore = $Rsubscore + $Ring3R;
     $Arm4++;
     $Rcount++;
   }
   IF (ISSET($Ring4L)) {
     $Rsubscore = $Rsubscore + $Ring4L;
     $Arm3++;
     $Rcount++;
   }
   IF (ISSET($Ring4R)) {
     $Rsubscore = $Rsubscore + $Ring4R;
     $Arm4++;
     $Rcount++;
   }
   IF (ISSET($Ring5L)) {
     $Rsubscore = $Rsubscore + $Ring5L;
     $Arm2++;
     $Rcount++;
   }
   IF (ISSET($Ring5R)) {
     $Rsubscore = $Rsubscore + $Ring5R;
     $Arm5++;
     $Rcount++;
   }
   IF (ISSET($Ring6L)) {
     $Rsubscore = $Rsubscore + $Ring6L;
     $Arm1++;
     $Rcount++;
   }
   IF (ISSET($Ring6R)) {
     $Rsubscore = $Rsubscore + $Ring6R;
     $Arm6++;
     $Rcount++;
   }
   $Rscore = $Rsubscore;
   IF (ISSET($Reed2L)) {
     $Dsubscore = $Dsubscore + $Reed2L;
     $Dcount++;
   }
   IF (ISSET($Reed2R)) {
     $Dsubscore = $Dsubscore + $Reed2R;
     $Dcount++;
   }
   IF (ISSET($Reed4L)) {
     $Dsubscore = $Dsubscore + $Reed4L;
     $Dcount++;
   }
   IF (ISSET($Reed4R)) {
     $Dsubscore = $Dsubscore + $Reed4R;
     $Dcount++;
   }
   IF (ISSET($Reed6L)) {
     $Dsubscore = $Dsubscore + $Reed6L;
     $Dcount++;
   }
   IF (ISSET($Reed6R)) {
     $Dsubscore = $Dsubscore + $Reed6R;
     $Dcount++;
   }
   IF (ISSET($Reed8L)) {
     $Dsubscore = $Dsubscore + $Reed8L;
     $Dcount++;
   }
   IF (ISSET($Reed8R)) {
     $Dsubscore = $Dsubscore + $Reed8R;
     $Dcount++;
   }
   IF (ISSET($Reed9L)) {
     $Dsubscore = $Dsubscore + $Reed9L;
     $Dcount++;
   }
   IF (ISSET($Reed9R)) {
     $Dsubscore = $Dsubscore + $Reed9R;
     $Dcount++;
   }
   $Dscore = $Dsubscore;
   $Mscore = $MApass1 + $MApass2 + $MApass3; //Section marker for Mounted Archery
   $Bscore = $Bpass1 + $Bpass2 + $Bpass3;

   printf("The Rider:  %s <BR>", stripslashes($Pnew));
   printf("Mounted on:  %s<BR>", stripslashes($Hnew));
   print "<B>Having scored ".$Hscore." with a time of ".$MINS.":".$SECS.".".$TENS.$HUNS." for the Heads Course.<BR>\n";
   print "<B>Having taken ".$Rcount." rings scoring ".$Rscore." for the Rings Course.</B><BR>\n";
   print "<B>Having taken ".$Dcount." reeds scoring ".$Dscore." for the Reeds Course.</B><BR>\n";
   print "<B>Having scored: ".$Mscore." in Mounted Archery.</B><BR>\n";
   print "<B>Having scored: ".$Bscore." in Birjas.</B><BR>\n";

  echo "</header> /n";

}
?>

<form class="w3-form" method="post" action="<?php echo $_SERVER[PHP_SELF]?>">

 <div class="w3-accordion w3-light-grey">
  <button onclick="feif('Rider')" class="w3-btn-block w3-centered">
    Open Rider Selection
  </button>
  <div id="Rider" class="w3-accordion-content w3-container w3-red">
   <H2>Select the Rider</H2>
   
   <SELECT class="w3-select" NAME="Pname">
   
<?PHP
  IF (isset($Pname)){
    printf("<OPTION VALUE=\"%s\">RiderID: %s\n", $Pname, $Pname);
  } else {
    echo "<OPTION VALUE=\"XXX\">Select Rider<OPTION VALUE=\"XXX\">-----\n";
    echo "<OPTION VALUE=\"NEW\">**NEW RIDER**\n";
  }
?>

<OPTION VALUE="XXX">-----
<OPTION VALUE="306">Johanna
<OPTION VALUE="83">Aaron MacGregor
<OPTION VALUE="424">Abu Malik al Haddad
<OPTION VALUE="170">Acelin, Lady
<OPTION VALUE="78">Adrielle Kerrec
<OPTION VALUE="25">Aedan mac Suibne
<OPTION VALUE="301">Aesceline
<OPTION VALUE="24">Aeschine
<OPTION VALUE="200">Aethelwyn von Wotanswald
<OPTION VALUE="27">Agelos Evienece
<OPTION VALUE="178">Aiken
<OPTION VALUE="76">Aimee' LongCoeur
<OPTION VALUE="358">Aine ingn Fhinn
<OPTION VALUE="277">Alana Greywood
<OPTION VALUE="215">Alanna of Ealdormere
<OPTION VALUE="435">Alanna of Skye
<OPTION VALUE="366">Alasais Bandeli
<OPTION VALUE="463">Alays de Bergerac
<OPTION VALUE="286">Alessandro chi Marestrale
<OPTION VALUE="398">Alexander de Cuningham
<OPTION VALUE="315">Alexander of the Bells
<OPTION VALUE="441">Alexandra Caithnes
<OPTION VALUE="118">Alexandra de Noir
<OPTION VALUE="303">Alexis
<OPTION VALUE="67">Alexis LaBouche
<OPTION VALUE="314">Ali ibn MaMouk
<OPTION VALUE="77">Alicia Seale
<OPTION VALUE="190">Alienore de Bathe
<OPTION VALUE="59">Aliionara Inghean Tighearnach
<OPTION VALUE="270">Alison Gray
<OPTION VALUE="137">Alissende de Montfauren
<OPTION VALUE="377">Alissende deMontfaucon
<OPTION VALUE="89">Alistair Kirk
<OPTION VALUE="422">Allana Strangeways
<OPTION VALUE="231">Allasandro of Crosston
<OPTION VALUE="75">Allessandra Giovanni
<OPTION VALUE="43">Allison
<OPTION VALUE="308">Allison Walker
<OPTION VALUE="199">Alphia Biraz-Pars
<OPTION VALUE="345">Anastasia Aleksandrovna Andreeva
<OPTION VALUE="380">Anastasia Alexandrovna Andreeva
<OPTION VALUE="204">Anastasia of Borkenholt
<OPTION VALUE="213">Angel MacBrighde
<OPTION VALUE="343">Angharad Banadaspus Drakenhefd
<OPTION VALUE="5">Anluan Trelaine
<OPTION VALUE="245">Ann Lewis
<OPTION VALUE="412">Anna Cameron
<OPTION VALUE="140">Anna Z Pernstefna
<OPTION VALUE="260">Anne of Alanwyck
<OPTION VALUE="88">Anne von Talstadt
<OPTION VALUE="450">Annora Reyner
<OPTION VALUE="6">Anton Polander
<OPTION VALUE="225">Antonio
<OPTION VALUE="386">Aobheallan Sionnach
<OPTION VALUE="117">Aodhfin Seibert
<OPTION VALUE="122">Aoidhna Mora
<OPTION VALUE="45">Appoline d' Avignon, Lady
<OPTION VALUE="157">Ara Mic Bhoom
<OPTION VALUE="383">Arabella da Siena
<OPTION VALUE="173">Ari Keilismuli
<OPTION VALUE="416">Arianna ny Shane
<OPTION VALUE="426">Ariannwynn
<OPTION VALUE="230">Arilid Barrett
<OPTION VALUE="130">Arlette
<OPTION VALUE="396">Arnak
<OPTION VALUE="92">Aurealia deMedici
<OPTION VALUE="432">Aurelia Rufinia
<OPTION VALUE="454">Azenari Basandere
<OPTION VALUE="87">Benedict de Charteris
<OPTION VALUE="86">Benjamin
<OPTION VALUE="334">Bjorn (West K)
<OPTION VALUE="183">Blackhart the Smith
<OPTION VALUE="97">Bran
<OPTION VALUE="153">Brenna Macgrioghaiar
<OPTION VALUE="251">Brian McFarlan
<OPTION VALUE="221">Bridget of Croston
<OPTION VALUE="262">Bridget of St. Kathrines
<OPTION VALUE="73">Bridgette d'Orleans
<OPTION VALUE="288">Brigit ingen Taide
<OPTION VALUE="257">Bronwyn Lorell
<OPTION VALUE="198">Bubba Godgodson
<OPTION VALUE="330">Byron of Edgewood Castle
<OPTION VALUE="119">Caidhe Doreen de Talon
<OPTION VALUE="163">Caitrionade de Lacy
<OPTION VALUE="165">Calena du Rose Noir
<OPTION VALUE="60">Caoil Fhionn
<OPTION VALUE="387">Carlotta Vaquera
<OPTION VALUE="350">Carolyn Egedal
<OPTION VALUE="174">Casidhe Dereen de Fallen
<OPTION VALUE="452">Cassanya Sevgili
<OPTION VALUE="271">Catherine Murphy
<OPTION VALUE="431">Catheryne Greene
<OPTION VALUE="177">Ceadre
<OPTION VALUE="49">Ceara ingen Chanaill
<OPTION VALUE="207">Ceara Roisin
<OPTION VALUE="40">Ceina Ni Mhari
<OPTION VALUE="389">Celine Angeli di Moneta
<OPTION VALUE="376">Charla Noel Du Lac
<OPTION VALUE="368">Checheyigen Oyugun
<OPTION VALUE="371">Checheyigen Oyugun
<OPTION VALUE="267">Cherejin Bayar
<OPTION VALUE="370">Chiere Weeic Maredudo
<OPTION VALUE="116">Chrestienne LaCroniere
<OPTION VALUE="91">Christiaen de Groot
<OPTION VALUE="138">Christine of Falcon's Keep
<OPTION VALUE="241">Christopher of Crystal Mines
<OPTION VALUE="189">Ciar of the Fourth Wall
<OPTION VALUE="61">Ciaran MacDarrach, Sir
<OPTION VALUE="36">Cinthia of Ard Chreag
<OPTION VALUE="249">Cirdonna
<OPTION VALUE="52">Claire of Angels
<OPTION VALUE="340">Clare de Montfort
<OPTION VALUE="406">Clare Delacy
<OPTION VALUE="124">Claudine de Berry
<OPTION VALUE="192">Coleen Woods
<OPTION VALUE="201">Colin Campbell
<OPTION VALUE="10">Colin MacLear
<OPTION VALUE="444">Colleen of Hartstone
<OPTION VALUE="15">Collet of Crosston
<OPTION VALUE="342">Collette de Rayncheval
<OPTION VALUE="415">Conall mac Seaghain
<OPTION VALUE="275">Connor MacAufflie FitzJames
<OPTION VALUE="29">Conrad Martin von Kassel
<OPTION VALUE="35">Constance the Curious
<OPTION VALUE="20">Cornelia Cheval Blanc
<OPTION VALUE="323">Cybi d Elmhurst
<OPTION VALUE="274">Cyneburh of Cantwaraburg
<OPTION VALUE="318">Dafydd Mac na Guibhne
<OPTION VALUE="302">Dalene
<OPTION VALUE="256">Dan Dietrick
<OPTION VALUE="326">Daniel of Aquitaine
<OPTION VALUE="187">Daniel of Three Walls
<OPTION VALUE="304">Danielle
<OPTION VALUE="360">David Muerle
<OPTION VALUE="101">Dawn of Tomorrowland
<OPTION VALUE="470">Dean Dwerlkotte
<OPTION VALUE="58">Deidre  Stewart
<OPTION VALUE="133">Delara
<OPTION VALUE="141">Denis de Beux
<OPTION VALUE="242">Desi of Standing Stones
<OPTION VALUE="228">Dierdre
<OPTION VALUE="333">Domhnall MacCeallaigh
<OPTION VALUE="442">Dominic McMoreland
<OPTION VALUE="305">Dominque
<OPTION VALUE="63">Dona Arabella da Siena
<OPTION VALUE="26">Donwenna la Mareschale
<OPTION VALUE="310">Dori Lazbetak
<OPTION VALUE="427">Doucette de Verdun
<OPTION VALUE="64">Draga von Falkenstein, Lady
<OPTION VALUE="229">Dugal
<OPTION VALUE="154">Duncan Kerr
<OPTION VALUE="206">Duncan Taddio
<OPTION VALUE="462">Eachmharcach an Phasaigh
<OPTION VALUE="90">Eanor of Amberhall
<OPTION VALUE="238">Edaine
<OPTION VALUE="71">Edith Gray
<OPTION VALUE="158">Edward Eagleheart
<OPTION VALUE="42">Edward Ean Anderson
<OPTION VALUE="85">Eileen Lemesurier
<OPTION VALUE="244">Eileen of Ealdormere
<OPTION VALUE="344">Einar Guntherson
<OPTION VALUE="80">Eleanor Cadfan
<OPTION VALUE="162">Elevile Amiltryptoline
<OPTION VALUE="18">Elia Filasimeon
<OPTION VALUE="2">Elina of Beckenham
<OPTION VALUE="364">Elisanda de Luna
<OPTION VALUE="455">Elizabeth Crane
<OPTION VALUE="12">Elizabeth De Champane
<OPTION VALUE="417">Elizabeth Hiatt
<OPTION VALUE="339">Elizabeth of Eskalya
<OPTION VALUE="266">Elizabeth of Pendale
<OPTION VALUE="186">Elizabetta
<OPTION VALUE="434">Ellen du Grandchamp
<OPTION VALUE="338">Ellen of the Western Wind
<OPTION VALUE="283">Else Hunervogt
<OPTION VALUE="375">Elspeth MacNaughton
<OPTION VALUE="411">Elspeth M'affeith
<OPTION VALUE="121">Enna Margerd
<OPTION VALUE="451">Eowyth
<OPTION VALUE="467">Eowyth Sithend
<OPTION VALUE="255">Erick Rhea
<OPTION VALUE="459">Ericka of Hartshorn-Dale
<OPTION VALUE="407">Erin MacLure
<OPTION VALUE="414">Erycka Von Scotte
<OPTION VALUE="82">Etaoin Fearghuil
<OPTION VALUE="265">Felicitae del Hay
<OPTION VALUE="54">Felinah Khan-ad-Din
<OPTION VALUE="156">Fergus O'Shiel
<OPTION VALUE="171">Finna Jomarsdoitter
<OPTION VALUE="219">Francesca Ambrogini
<OPTION VALUE="336">Francesca da Monte
<OPTION VALUE="151">Francessa Dellaluna
<OPTION VALUE="433">Franquiete du Grandchamp
<OPTION VALUE="309">Fred Klink
<OPTION VALUE="233">Frederick of Holland
<OPTION VALUE="98">Freydis the Good
<OPTION VALUE="193">Fulke Grim (Ursus)
<OPTION VALUE="217">Gabriel Chance
<OPTION VALUE="465">Gabriel MacMahon
<OPTION VALUE="16">Gad Waldbars
<OPTION VALUE="37">Gailana Dunkelphere
<OPTION VALUE="403">Gareth of Calanais Nuadh
<OPTION VALUE="425">Garrik
<OPTION VALUE="196">Gavin O' Neil
<OPTION VALUE="227">Genvieve
<OPTION VALUE="150">Genvieve d Argent Chene
<OPTION VALUE="259">Genvieve de Vendome
<OPTION VALUE="280">Gianne
<OPTION VALUE="134">Giovanna
<OPTION VALUE="205">Giraldus Evienece
<OPTION VALUE="332">Glythir
<OPTION VALUE="147">Godiva Longstaff
<OPTION VALUE="236">Graeye
<OPTION VALUE="400">Guendowan the Silent
<OPTION VALUE="55">Guillaume de Belgique
<OPTION VALUE="268">Guillaume dela Rapier
<OPTION VALUE="428">Gunnarr of Endless Hills
<OPTION VALUE="456">Gwendolyn
<OPTION VALUE="226">Gwendwyn
<OPTION VALUE="464">Gwendwyn the Silent
<OPTION VALUE="152">Gwenhavre Cordelia Maynard
<OPTION VALUE="30">Gwynanwedd
<OPTION VALUE="420">Gwynessa Lucan
<OPTION VALUE="353">Hamish
<OPTION VALUE="144">Hansa von Wolfholz
<OPTION VALUE="109">Helena
<OPTION VALUE="469">Helena de Navarre
<OPTION VALUE="179">Helga of Stone Guard
<OPTION VALUE="146">Helgi
<OPTION VALUE="373">Henri le Hibou du Bois
<OPTION VALUE="3">Henrik of Havn
<OPTION VALUE="4">Henrik of Havn
<OPTION VALUE="69">Hugh Heverly
<OPTION VALUE="7">Ianthe
<OPTION VALUE="99">Ilaria
<OPTION VALUE="44">Ilaria Velti degli Ansari
<OPTION VALUE="273">Illgordie
<OPTION VALUE="402">Isabeau of Calanais
<OPTION VALUE="168">Isabeau Pferdebandger
<OPTION VALUE="14">Isabel
<OPTION VALUE="94">Isabel of Arn Hold
<OPTION VALUE="79">Isabol Martain of Dark Horse Keep
<OPTION VALUE="239">Isolde of Hawksholme
<OPTION VALUE="110">Jacques de Monet
<OPTION VALUE="404">Jami Bahadar
<OPTION VALUE="126">Janet' Virago Parva
<OPTION VALUE="8">Jaqueline
<OPTION VALUE="300">Jean-Claude van Adlerstaat
<OPTION VALUE="247">Jennifer Mikkala
<OPTION VALUE="46">Jerald of Galloway
<OPTION VALUE="324">Jessica la Course
<OPTION VALUE="136">Joan ferch David
<OPTION VALUE="194">Jolief Runolfswyf
<OPTION VALUE="278">Julian Beauchamp
<OPTION VALUE="395">Juliana of Avon
<OPTION VALUE="320">Julianna
<OPTION VALUE="108">Julianna Craye
<OPTION VALUE="279">Julianna d' Avalonia
<OPTION VALUE="372">Kaelynn Mitores
<OPTION VALUE="112">Kara Hinn Kottur
<OPTION VALUE="93">Kari of Dellwood Forest
<OPTION VALUE="72">Katherine Clatworthy
<OPTION VALUE="81">Katherine Donne
<OPTION VALUE="356">Katherine Howorth
<OPTION VALUE="65">Katherine of Whiteacre
<OPTION VALUE="430">Katherine Stanhope
<OPTION VALUE="184">Kathryne Sommer
<OPTION VALUE="222">Katla Polander
<OPTION VALUE="142">Kaziah of Chaveaux
<OPTION VALUE="297">Keely
<OPTION VALUE="232">Kellyn Firesinger
<OPTION VALUE="23">Kesimir
<OPTION VALUE="390">Khaalid al Jarrad
<OPTION VALUE="382">Khai
<OPTION VALUE="22">Khaidu Naranaimorin
<OPTION VALUE="394">Kiena Stewart
<OPTION VALUE="448">Kim Hay
<OPTION VALUE="291">Kim Nader
<OPTION VALUE="321">Kimber
<OPTION VALUE="413">Kolfinna Hestrasdottir
<OPTION VALUE="250">Kristal Ziegler
<OPTION VALUE="337">Kristen Hvit Hester
<OPTION VALUE="355">Kristen Lewis
<OPTION VALUE="325">Kyli Emmett
<OPTION VALUE="235">Kyrstan Maynewaring
<OPTION VALUE="409">Lady Danielle Alavaine deLicorne
<OPTION VALUE="100">Landolf Witkowski
<OPTION VALUE="401">Landon
<OPTION VALUE="276">Lasairfhiona
<OPTION VALUE="294">Lasairfhiona
<OPTION VALUE="284">Laura Giorgi
<OPTION VALUE="39">Laura of der Welfengau
<OPTION VALUE="419">Laurentia von Graustein
<OPTION VALUE="317">Layla
<OPTION VALUE="185">Leigh Ann Curtis
<OPTION VALUE="296">Liam Olafssin
<OPTION VALUE="214">Lijbet
<OPTION VALUE="289">Logan Silveraxe
<OPTION VALUE="191">Lora Greymare
<OPTION VALUE="123">Lorraine Fraser
<OPTION VALUE="392">Lourene Atte Blacksterre
<OPTION VALUE="202">Luaran MacCearnaigh
<OPTION VALUE="287">Lucy
<OPTION VALUE="341">Machani Flaearguis
<OPTION VALUE="172">Madeliene Gervais
<OPTION VALUE="357">Madison Williams
<OPTION VALUE="439">Maeve Ni Surtain
<OPTION VALUE="175">Maitre Don Guillaume dela Rapier
<OPTION VALUE="160">Malisa
<OPTION VALUE="11">Marguerite Du Royon
<OPTION VALUE="313">Marguerite FitzWilliam
<OPTION VALUE="107">Maria the Gypsy
<OPTION VALUE="363">Marie of Mere
<OPTION VALUE="68">Marius Greyedge
<OPTION VALUE="393">Mayken de Houtman
<OPTION VALUE="460">Meadhbh Inghean Ui Bhaoghill
<OPTION VALUE="159">Megan Blackheart
<OPTION VALUE="176">Megrhydd Llwyd
<OPTION VALUE="34">Melanie of der Welfengau
<OPTION VALUE="346">Melwyn Deferra
<OPTION VALUE="331">MIchael Mac Seoin
<OPTION VALUE="128">Michelle Fraser
<OPTION VALUE="208">Mikalya Taddio
<OPTION VALUE="378">Mirabelis Zabanen
<OPTION VALUE="47">Miranda Faoltiarna
<OPTION VALUE="269">Moira O'Connor
<OPTION VALUE="437">Morgan Elandris
<OPTION VALUE="169">Morgan Goldbetter
<OPTION VALUE="319">Morrhighan
<OPTION VALUE="96">Morrigan
<OPTION VALUE="211">Mungo Wallace
<OPTION VALUE="111">Murddina O Dolwyddelan
<OPTION VALUE="197">Natabel Colman
<OPTION VALUE="74">Nathaniel Fitzpatrick
<OPTION VALUE="125">Neassa the Obsteperous
<OPTION VALUE="203">Negoshka Gorodisha
<OPTION VALUE="50">Nialls Mac Keth, Lord
<OPTION VALUE="369">Niccolosa Dragonetti
<OPTION VALUE="352">Nicodemus
<OPTION VALUE="367">Nicole Boyd
<OPTION VALUE="388">Nicole of Champclair
<OPTION VALUE="436">Niecola
<OPTION VALUE="423">Niezoala
<OPTION VALUE="166">Noelle Pettit
<OPTION VALUE="351">Nora
<OPTION VALUE="385">O Deane 
<OPTION VALUE="115">Ofria Pinkhand
<OPTION VALUE="234">Ogre
<OPTION VALUE="21">Osogarow the Dredful
<OPTION VALUE="253">Patti of Jester
<OPTION VALUE="164">Peryn Rose Whytehorse
<OPTION VALUE="9">Petra
<OPTION VALUE="102">Philip de Lisboa
<OPTION VALUE="397">Phoebe
<OPTION VALUE="335">Qorin Borajin
<OPTION VALUE="161">Quenthryth of Lavre, Mistress
<OPTION VALUE="453">Ragnailt
<OPTION VALUE="438">Ragnailt in Eich
<OPTION VALUE="329">Ragnar Bloodaxe
<OPTION VALUE="290">Ragnhildr Sigtryggsdottir
<OPTION VALUE="38">Ragni of Amberhall
<OPTION VALUE="263">Rain
<OPTION VALUE="19">Rainar of Artemisia
<OPTION VALUE="307">Rapheal the Rogue
<OPTION VALUE="148">Raynold of Wharram
<OPTION VALUE="449">Reinmar
<OPTION VALUE="103">Reinmar Wolfmeier
<OPTION VALUE="445">Rhiannon filia Catell
<OPTION VALUE="51">Rhiannon o Hafan Gath
<OPTION VALUE="240">Rhiannon of Crystal Mines
<OPTION VALUE="429">Rhiannon the Banshee
<OPTION VALUE="33">Rhianwen ferch Bran ap Gruffydd
<OPTION VALUE="466">Rhoana Carmylie
<OPTION VALUE="237">Rhonriun
<OPTION VALUE="458">Rhua Cat Ifrinn
<OPTION VALUE="457">Rhys
<OPTION VALUE="391">Richard Langsmith
<OPTION VALUE="418">Richard Pearce
<OPTION VALUE="56">Richard Surefoot
<OPTION VALUE="129">Roak of Ealdormere
<OPTION VALUE="312">Robert of Dunharrow
<OPTION VALUE="127">Robin Daniel
<OPTION VALUE="195">Robin de Clair
<OPTION VALUE="106">Rognvald Longarm
<OPTION VALUE="31">Roland Stewart
<OPTION VALUE="70">Rolanda Rossner
<OPTION VALUE="405">Ronan Lothty
<OPTION VALUE="374">Rosalinda DeSalerno
<OPTION VALUE="224">Rose of Degewood Castle
<OPTION VALUE="1">Rose of Greenwood
<OPTION VALUE="180">Rowan Buchanan
<OPTION VALUE="220">Rowan Connor
<OPTION VALUE="155">Rowan de Veres
<OPTION VALUE="120">Rowan de Verez
<OPTION VALUE="461">Rowena McCara
<OPTION VALUE="311">Ruth de Vendome
<OPTION VALUE="293">Ryan Hittinger
<OPTION VALUE="223">Ryran of Edgewood Castle
<OPTION VALUE="167">Ryssza Polander
<OPTION VALUE="443">Sabine la Courratierre de chevaux
<OPTION VALUE="105">Sagen von Ostensee
<OPTION VALUE="322">Sandor Dosa
<OPTION VALUE="143">Saris
<OPTION VALUE="258">Sciath Obraeau
<OPTION VALUE="362">Selene Romero
<OPTION VALUE="354">Seren Carisulen
<OPTION VALUE="212">Shekhan Hawke
<OPTION VALUE="316">Shenandoah
<OPTION VALUE="447">Shoshida Tora Gozen
<OPTION VALUE="379">Sighieri
<OPTION VALUE="104">Simon
<OPTION VALUE="149">Simon Macleod, Sir
<OPTION VALUE="17">Siobhan Ni Seaghdha
<OPTION VALUE="295">Sir Robert MacArthur
<OPTION VALUE="347">Skeggi Ravensfuri
<OPTION VALUE="243">Solveig Kelchadottir
<OPTION VALUE="246">Solveig Keldadottr
<OPTION VALUE="66">Spencer Spiegel
<OPTION VALUE="48">Stephen De Huyn, Sir
<OPTION VALUE="145">Stephen of Beckenham
<OPTION VALUE="410">Stephen of Calanais
<OPTION VALUE="281">Steven Emmett
<OPTION VALUE="139">Summer Brady
<OPTION VALUE="285">Susan of Bellatrix
<OPTION VALUE="299">Svana Mjobeina
<OPTION VALUE="361">Sven Gottfriedson
<OPTION VALUE="348">Tai Tjorkilsdatr
<OPTION VALUE="53">Tainbaid Verch Padraig
<OPTION VALUE="384">Tamara of Many Horses
<OPTION VALUE="209">Taradan banMarca
<OPTION VALUE="264">Teleri
<OPTION VALUE="113">Terri of Gwyntarian
<OPTION VALUE="272">Theorra
<OPTION VALUE="365">Thomas Blackmoore
<OPTION VALUE="216">Thomas MacCruitin
<OPTION VALUE="218">Thomasine MacAngus
<OPTION VALUE="210">Thorkel Haraldsson
<OPTION VALUE="131">Thuri
<OPTION VALUE="57">Tierrynna Caer Narvon
<OPTION VALUE="254">Tim of Detrick
<OPTION VALUE="188">Timotheous Symmes
<OPTION VALUE="41">Togrul Guiscard
<OPTION VALUE="468">Toirdhealbach Wesley
<OPTION VALUE="292">Tom Nader
<OPTION VALUE="381">Tressa Macdommail
<OPTION VALUE="359">Tweadh
<OPTION VALUE="328">Ulv hinn Dokkur
<OPTION VALUE="408">Una
<OPTION VALUE="298">Ursus Grim
<OPTION VALUE="282">Uther, Duke
<OPTION VALUE="132">Vachon
<OPTION VALUE="135">Vanessa
<OPTION VALUE="181">Vincenzo di Calabria
<OPTION VALUE="327">Violet O'Dell
<OPTION VALUE="399">Virginia Read
<OPTION VALUE="252">Walker Dietrick
<OPTION VALUE="349">Walt Szklarski
<OPTION VALUE="182">William of Bellwood
<OPTION VALUE="248">William Wolfhal
<OPTION VALUE="32">Winifred of Rosemier
<OPTION VALUE="446">Wulfgar
<OPTION VALUE="62">Wylkyn ap Kenwrec
<OPTION VALUE="95">Yasmeena bint al Ahlam
<OPTION VALUE="13">Yasmina
<OPTION VALUE="28">Ynesen Ongge Xong Kerij-e
<OPTION VALUE="440">Ysabeau Tiercelin
<OPTION VALUE="261">Yseult of Summerhall
<OPTION VALUE="84">Zaynab bint Zayd
<OPTION VALUE="421">Zinaida Orshima
<OPTION VALUE="114">Zuriel Nightshade
<OPTION VALUE="XXX">-----<OPTION VALUE="NEW">**NEW RIDER**
</SELECT>
  </div>
  <button onclick="feif('Horse')" class="w3-btn-block w3-centered">
    Open Horse Selection
  </button>
  <div id="Horse" class="w3-accordion-content w3-container w3-red">

<H2>Select the Horse</H2>



   <SELECT class="w3-select" NAME="Hname">
   
<?PHP
  IF (isset($Hname)){
    printf("<OPTION VALUE=\"%s\">HorseID:%s\n", $Hname, $Hname);
  } else {
    echo "<OPTION VALUE=\"XXX\">Select Horse<OPTION VALUE=\"XXX\">-----\n";
    echo "<OPTION VALUE=\"NEW\">**NEW Horse**\n";
  }
?>

<OPTION VALUE="12">Unknown Mount
<OPTION VALUE="XXX">-----
<OPTION VALUE="103">Ace
<OPTION VALUE="170">Alamar
<OPTION VALUE="195">Alamar
<OPTION VALUE="40">Amadaes
<OPTION VALUE="46">Andre
<OPTION VALUE="99">Angel
<OPTION VALUE="118">Angelina
<OPTION VALUE="336">Angie
<OPTION VALUE="186">Annabelle
<OPTION VALUE="145">Antares
<OPTION VALUE="159">Apache
<OPTION VALUE="49">Argant
<OPTION VALUE="261">Autumn
<OPTION VALUE="213">Avalon
<OPTION VALUE="296">Azali
<OPTION VALUE="15">Baby
<OPTION VALUE="157">Bacardi
<OPTION VALUE="124">Baccus
<OPTION VALUE="283">Bansidhe
<OPTION VALUE="318">Barney's Brown Sugar
<OPTION VALUE="268">Beauty
<OPTION VALUE="258">Bee
<OPTION VALUE="172">Belle
<OPTION VALUE="174">Belle
<OPTION VALUE="198">Belle
<OPTION VALUE="203">Belle Luna
<OPTION VALUE="259">Bert
<OPTION VALUE="201">Big Belle
<OPTION VALUE="346">Big Expectations
<OPTION VALUE="20">Big Guy
<OPTION VALUE="293">Bilbo
<OPTION VALUE="59">Black Delight
<OPTION VALUE="191">Blackie
<OPTION VALUE="17">Blue
<OPTION VALUE="25">Blue Moon
<OPTION VALUE="181">Bod
<OPTION VALUE="225">Bonanza
<OPTION VALUE="241">Brandy
<OPTION VALUE="114">Breeze
<OPTION VALUE="131">Breeze
<OPTION VALUE="29">Breyer
<OPTION VALUE="289">Bright Boy Wonder
<OPTION VALUE="19">Bristique
<OPTION VALUE="252">Brut
<OPTION VALUE="206">Bud
<OPTION VALUE="61">Bud Light
<OPTION VALUE="100">Buddy
<OPTION VALUE="109">Butterfly
<OPTION VALUE="347">Cadet
<OPTION VALUE="328">Candy
<OPTION VALUE="153">Cannon
<OPTION VALUE="166">Captain
<OPTION VALUE="300">Casa Nova
<OPTION VALUE="82">Cash
<OPTION VALUE="269">Caspar
<OPTION VALUE="250">Catty
<OPTION VALUE="188">Chai
<OPTION VALUE="247">CHEYNNE
<OPTION VALUE="96">Chief
<OPTION VALUE="334">Chief
<OPTION VALUE="219">Chiro
<OPTION VALUE="169">Christa
<OPTION VALUE="256">Cinnabar
<OPTION VALUE="98">Cisco
<OPTION VALUE="2">Clyde
<OPTION VALUE="86">Coco
<OPTION VALUE="327">Cody
<OPTION VALUE="32">Cookie
<OPTION VALUE="262">Cristy
<OPTION VALUE="179">Crystal
<OPTION VALUE="110">Czar
<OPTION VALUE="111">Czar
<OPTION VALUE="297">Daisy
<OPTION VALUE="133">Dakota
<OPTION VALUE="221">Dan
<OPTION VALUE="51">Dance Magic
<OPTION VALUE="329">Danny
<OPTION VALUE="121">Danza
<OPTION VALUE="230">Darla
<OPTION VALUE="34">Dash
<OPTION VALUE="305">Deltraz
<OPTION VALUE="127">Denim
<OPTION VALUE="326">Desiree
<OPTION VALUE="302">Diamond
<OPTION VALUE="107">Dickie
<OPTION VALUE="9">Dillon
<OPTION VALUE="76">Dino
<OPTION VALUE="222">Diva
<OPTION VALUE="295">Do-it
<OPTION VALUE="231">Dove
<OPTION VALUE="351">Dubh
<OPTION VALUE="93">Duchess
<OPTION VALUE="136">Dundee
<OPTION VALUE="232">Dusty
<OPTION VALUE="281">Dutch's Royal Energie
<OPTION VALUE="162">Dweeb
<OPTION VALUE="26">Earl Grey
<OPTION VALUE="264">Ebony
<OPTION VALUE="14">Echo
<OPTION VALUE="70">Enter new Horse's name here
<OPTION VALUE="71">Enter new Horse's name here
<OPTION VALUE="73">Epona
<OPTION VALUE="113">Equinox
<OPTION VALUE="53">Eros
<OPTION VALUE="69">Excaliber
<OPTION VALUE="65">Exotic Two Skip
<OPTION VALUE="291">Fancy
<OPTION VALUE="161">Fannie
<OPTION VALUE="57">Fanny Bright Star
<OPTION VALUE="125">Faye
<OPTION VALUE="316">Fehu
<OPTION VALUE="270">Fiona
<OPTION VALUE="271">Fiona
<OPTION VALUE="30">Firyarran
<OPTION VALUE="102">Flashdance
<OPTION VALUE="284">Floyd
<OPTION VALUE="345">Forbidden Duel
<OPTION VALUE="340">Foxier
<OPTION VALUE="143">Foxy
<OPTION VALUE="10">Gailen
<OPTION VALUE="144">George
<OPTION VALUE="146">Gigi
<OPTION VALUE="176">Ginger
<OPTION VALUE="178">Ginger
<OPTION VALUE="180">Ginger
<OPTION VALUE="42">Graf Zanzibar
<OPTION VALUE="204">GriffinsGuard Belle
<OPTION VALUE="348">Gryphon
<OPTION VALUE="212">Gwen
<OPTION VALUE="226">Hancock
<OPTION VALUE="208">Hank
<OPTION VALUE="273">Harley
<OPTION VALUE="66">Hershey Bar
<OPTION VALUE="223">Hijo
<OPTION VALUE="286">Hodgie
<OPTION VALUE="233">Honey
<OPTION VALUE="352">Hook
<OPTION VALUE="5">Hot Stuff
<OPTION VALUE="205">Icee
<OPTION VALUE="339">Ike
<OPTION VALUE="249">Jack
<OPTION VALUE="154">Jack the Draft
<OPTION VALUE="321">Jane
<OPTION VALUE="338">Jasper
<OPTION VALUE="163">Jenny
<OPTION VALUE="177">Jester
<OPTION VALUE="120">JML Faraj
<OPTION VALUE="196">Joey
<OPTION VALUE="324">John
<OPTION VALUE="224">Jokey
<OPTION VALUE="298">Josephine
<OPTION VALUE="184">Joy
<OPTION VALUE="243">JR
<OPTION VALUE="104">Jubilee
<OPTION VALUE="3">Juliet
<OPTION VALUE="4">Juliet
<OPTION VALUE="333">Kacey
<OPTION VALUE="220">Kamar
<OPTION VALUE="171">Kara
<OPTION VALUE="31">Katie
<OPTION VALUE="234">Kazar
<OPTION VALUE="202">King
<OPTION VALUE="150">Kino
<OPTION VALUE="141">Koquina
<OPTION VALUE="85">Lacy
<OPTION VALUE="92">Lady
<OPTION VALUE="263">Ladybug
<OPTION VALUE="152">Laiah
<OPTION VALUE="228">Lakota
<OPTION VALUE="299">Lance
<OPTION VALUE="39">Lester
<OPTION VALUE="194">Lexie
<OPTION VALUE="275">Lil Man
<OPTION VALUE="41">Lincoln
<OPTION VALUE="52">Logan
<OPTION VALUE="175">Lucas
<OPTION VALUE="306">Lucy - Lulu
<OPTION VALUE="292">Luna
<OPTION VALUE="211">Maggie
<OPTION VALUE="77">Marchesa
<OPTION VALUE="119">Marge
<OPTION VALUE="44">Marianne
<OPTION VALUE="278">Mary
<OPTION VALUE="50">Masada Muhani
<OPTION VALUE="1">Mercedes
<OPTION VALUE="84">Midnight Rose
<OPTION VALUE="229">Mighty
<OPTION VALUE="290">Miracle
<OPTION VALUE="276">Mirage
<OPTION VALUE="207">Mirame
<OPTION VALUE="27">Misty
<OPTION VALUE="245">Monet
<OPTION VALUE="254">Montana
<OPTION VALUE="310">Morin Star
<OPTION VALUE="331">Mouse
<OPTION VALUE="342">Mouse-M
<OPTION VALUE="90">Mr Epic
<OPTION VALUE="80">Mr Independance  -
<OPTION VALUE="142">Mrs Wilson
<OPTION VALUE="94">Mystique
<OPTION VALUE="38">Napoleon
<OPTION VALUE="56">Napoleon
<OPTION VALUE="168">Nassar
<OPTION VALUE="68">Navaroan
<OPTION VALUE="95">Negrita
<OPTION VALUE="272">Nico
<OPTION VALUE="165">Niele
<OPTION VALUE="83">Nitro
<OPTION VALUE="167">Nocoma
<OPTION VALUE="11">Ollie
<OPTION VALUE="349">Oonaugh
<OPTION VALUE="282">Oriflame (
<OPTION VALUE="58">Osiris
<OPTION VALUE="344">Otto
<OPTION VALUE="187">PacMan
<OPTION VALUE="81">Paint Flashdance
<OPTION VALUE="134">Panterra
<OPTION VALUE="197">Patches
<OPTION VALUE="156">Patty
<OPTION VALUE="307">Paulette
<OPTION VALUE="48">Penny
<OPTION VALUE="335">Penny
<OPTION VALUE="138">Peppy
<OPTION VALUE="253">Peppy
<OPTION VALUE="285">Pete
<OPTION VALUE="183">Phoenix
<OPTION VALUE="312">Pig
<OPTION VALUE="216">Piper's Melody
<OPTION VALUE="287">PJ
<OPTION VALUE="43">Plum
<OPTION VALUE="13">Pone
<OPTION VALUE="248">Pooka
<OPTION VALUE="218">Princess
<OPTION VALUE="55">Princess Buttercup
<OPTION VALUE="319">Priscilla
<OPTION VALUE="274">Push
<OPTION VALUE="6">Quincy
<OPTION VALUE="309">Quincy
<OPTION VALUE="130">Radar
<OPTION VALUE="101">Raggs
<OPTION VALUE="288">Rain
<OPTION VALUE="155">Rambo
<OPTION VALUE="185">Raven
<OPTION VALUE="60">Red
<OPTION VALUE="151">Red Rover
<OPTION VALUE="265">Reily
<OPTION VALUE="330">Rex
<OPTION VALUE="341">Riff
<OPTION VALUE="45">Rigalletto
<OPTION VALUE="140">Rio
<OPTION VALUE="88">Rocky
<OPTION VALUE="54">Roo
<OPTION VALUE="23">Rory
<OPTION VALUE="97">Rose
<OPTION VALUE="260">Roshina
<OPTION VALUE="190">Rosie
<OPTION VALUE="122">Roxy
<OPTION VALUE="317">Royal
<OPTION VALUE="89">Ruby
<OPTION VALUE="132">Rue
<OPTION VALUE="117">Rummy
<OPTION VALUE="28">Salty
<OPTION VALUE="239">Sam
<OPTION VALUE="240">Sam
<OPTION VALUE="105">Sancho
<OPTION VALUE="246">SARAFINA
<OPTION VALUE="200">Sarah
<OPTION VALUE="238">Sasha
<OPTION VALUE="47">Saxon
<OPTION VALUE="251">Scotty
<OPTION VALUE="294">Shad
<OPTION VALUE="301">Shadow (aka 
<OPTION VALUE="148">Shady
<OPTION VALUE="214">Shady Lady
<OPTION VALUE="149">Share
<OPTION VALUE="227">Shasta
<OPTION VALUE="320">Shawnee Star
<OPTION VALUE="106">Sheba
<OPTION VALUE="87">Shizon
<OPTION VALUE="277">Showboy
<OPTION VALUE="313">Sic'Em
<OPTION VALUE="189">Silhouette
<OPTION VALUE="74">Simon
<OPTION VALUE="108">Sir William
<OPTION VALUE="128">Sky
<OPTION VALUE="129">Sky
<OPTION VALUE="332">Skye
<OPTION VALUE="67">Slim Pickens
<OPTION VALUE="21">Smokey
<OPTION VALUE="78">Society Star Force
<OPTION VALUE="304">Solo
<OPTION VALUE="126">Sonny
<OPTION VALUE="350">Sonny
<OPTION VALUE="135">Sonny Boy
<OPTION VALUE="325">Sooty
<OPTION VALUE="8">Sorcha
<OPTION VALUE="91">Sox
<OPTION VALUE="164">Sparkles
<OPTION VALUE="75">Spice
<OPTION VALUE="147">Spike
<OPTION VALUE="279">Squeaky
<OPTION VALUE="237">Star
<OPTION VALUE="209">Stormcloud
<OPTION VALUE="24">Streak
<OPTION VALUE="123">Strider
<OPTION VALUE="217">Sue
<OPTION VALUE="63">Sugar
<OPTION VALUE="72">Summer Doll
<OPTION VALUE="315">Summit
<OPTION VALUE="210">Sundance
<OPTION VALUE="257">Sunfire
<OPTION VALUE="22">Sunny
<OPTION VALUE="266">Sunny
<OPTION VALUE="7">Superhorse
<OPTION VALUE="244">Tahoe
<OPTION VALUE="337">Talequa
<OPTION VALUE="139">Tallyho Noel
<OPTION VALUE="192">Taxi
<OPTION VALUE="33">Teddy
<OPTION VALUE="115">Teejays
<OPTION VALUE="199">The Marquesa
<OPTION VALUE="343">Thelma
<OPTION VALUE="322">Theobald
<OPTION VALUE="37">Thumper
<OPTION VALUE="173">Tiara
<OPTION VALUE="235">Tiffany
<OPTION VALUE="323">Tiki
<OPTION VALUE="18">Titus
<OPTION VALUE="242">Tjeerd
<OPTION VALUE="215">Toby
<OPTION VALUE="79">Togger
<OPTION VALUE="255">Tom
<OPTION VALUE="62">Topper
<OPTION VALUE="158">Tory
<OPTION VALUE="267">Trajen
<OPTION VALUE="116">Tucker
<OPTION VALUE="160">Tucker
<OPTION VALUE="182">Tuscon
<OPTION VALUE="193">Twister
<OPTION VALUE="12">Unknown
<OPTION VALUE="308">Unknown Mount - not a rental
<OPTION VALUE="36">Valentine
<OPTION VALUE="16">Valerius
<OPTION VALUE="137">Valiant
<OPTION VALUE="314">Valid Lupin
<OPTION VALUE="303">Valor
<OPTION VALUE="35">War Pig
<OPTION VALUE="311">Wilhelm von Blauner
<OPTION VALUE="112">Wrigley
<OPTION VALUE="64">Yasser
<OPTION VALUE="236">Zeus' Dream
<OPTION VALUE="280">Zia
<OPTION VALUE="XXX">-----<OPTION VALUE="NEW">**NEW HORSE**
</SELECT>  </div>

<!-- HEADS -->
  <button onclick="feif('Heads')" class="w3-btn-block w3-centered">
    Open Heads
  </button>
  <div id="Heads" class="w3-accordion-content w3-container w3-blue">
     <table class="w3-table w3-centered"> 
<TR class="w3-light-blue">
<TD>
Min<BR><input name="MINS" type="text" size="2" <?PHP IF (isset($MINS)) { echo "value=$MINS";} else { echo "value=00";} ?>">
</TD>
<TD>
<H2>:</H2>
</TD>
<TD>
Sec<BR><input name="SECS" type="text" size="2" <?PHP IF (isset($SECS)) { echo "value=$SECS";} else { echo "value=00";} ?>">
</TD>
<TD>
<H2>.</H2>
</TD>
<TD>
Tenths<BR><input name="TENS" type="text" size="1" <?PHP IF (isset($TENS)) { echo "value=$TENS";} else { echo "value=00";} ?>">
</TD>
<TD>
Hundredths<BR><input name="HUNS" type="text" size="1" <?PHP IF (isset($HUNS)) { echo "value=$HUNS";} else { echo "value=00";} ?>">
</TD>
</TR>
<TR class="w3-light-blue">
<TD COLSPAN=6>Penaltes: <input name="Penalty" type="text" size="2" <?PHP IF (isset($Penalty)) { echo "value=$Penalty";} else { echo "value=00";} ?>"></TD>
</TR>
</TABLE>
  </div>
  <button onclick="feif('Rings')" class="w3-btn-block w3-centered">
    Open Rings
  </button>

<!-- Rings -->
  <div id="Rings" class="w3-accordion-content w3-container w3-blue">
     <table class="w3-table w3-centered w3-cyan"> 
<TR>
<TD>
LEFT SIDE
</TD>
<TD class="w3-light-blue">
RIGHT SIDE
</TD>
</TR>



<TR>
<TD>
6" <INPUT NAME="Ring6L" class="w3-check" type="checkbox" <?PHP IF (isset($Ring6L)) { echo "checked=\"checked\"";} ?> value="4"> - OR - 
<INPUT NAME="Ring1L" class="w3-check" type="checkbox" <?PHP IF (isset($Ring1L)) { echo "checked=\"checked\"";} ?> value="4" value="20"> 1" 
</TD>
<TD class="w3-light-blue">
1" <INPUT NAME="Ring1R" class="w3-check" type="checkbox" <?PHP IF (isset($Ring1R)) { echo "checked=\"checked\"";} ?> value="4" value="20"> - OR - 
<INPUT NAME="Ring6R" class="w3-check" type="checkbox" <?PHP IF (isset($Ring6R)) { echo "checked=\"checked\"";} ?> value="4" value="4"> 6" 
</TD>
</TR>

<!--
<TR>
<TD>
6" <INPUT NAME="Ring6L" type="checkbox" value="4"> - OR - 
<INPUT NAME="Ring1L" type="checkbox" value="20"> 1" 
</TD>
<TD class="w3-light-blue">
1" <INPUT NAME="Ring1R" type="checkbox" value="20"> - OR - 
<INPUT NAME="Ring6R" type="checkbox" value="4"> 6" 
</TD>
</TR>

-->

<TR>
<TD>
5" <INPUT NAME="Ring5L" class="w3-check" type="checkbox" <?PHP IF (isset($Ring5L)) { echo "checked=\"checked\"";} ?> value="6"> - OR - 
<INPUT NAME="Ring2L" class="w3-check" type="checkbox" <?PHP IF (isset($Ring2L)) { echo "checked=\"checked\"";} ?> value="15"> 2" 
</TD>
<TD class="w3-light-blue">
2" <INPUT NAME="Ring2R" class="w3-check" type="checkbox" <?PHP IF (isset($Ring2R)) { echo "checked=\"checked\"";} ?> value="15"> - OR - 
<INPUT NAME="Ring5R" class="w3-check" type="checkbox" <?PHP IF (isset($Ring5R)) { echo "checked=\"checked\"";} ?> value="6"> 5" 
</TD>
</TR>
<TR>
<TD>
4" <INPUT NAME="Ring4L" class="w3-check" type="checkbox"  <?PHP IF (isset($Ring4L)) { echo "checked=\"checked\"";} ?> value="8"> - OR - 
<INPUT NAME="Ring3L" class="w3-check" type="checkbox"  <?PHP IF (isset($Ring3L)) { echo "checked=\"checked\"";} ?> value="10"> 3" 
</TD>
<TD class="w3-light-blue">
3" <INPUT NAME="Ring3R" class="w3-check" type="checkbox"  <?PHP IF (isset($Ring3R)) { echo "checked=\"checked\"";} ?> value="10"> - OR - 
<INPUT NAME="Ring4R" class="w3-check" type="checkbox"  <?PHP IF (isset($Ring4R)) { echo "checked=\"checked\"";} ?> value="8"> 4" 
</TD>
</TR>
</TABLE>
  </div>

<!-- Reeds -->
  <button onclick="feif('Reeds')" class="w3-btn-block w3-centered">
    Open Reed Chop
  </button>
  <div id="Reeds" class="w3-accordion-content w3-container w3-blue">
     <table class="w3-table w3-blue w3-centered"> 
<TR>
<TD>LEFT</TD>
<TD>LANE</TD>
<TD>RIGHT</TD>
</TR>

<TR>
<TD><INPUT NAME="Reed2L" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed2L)) { echo "checked=\"checked\"";} ?> value="15"></TD>
<TD class="w3-light-blue">2"</TD>
<TD><INPUT NAME="Reed2R" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed2R)) { echo "checked=\"checked\"";} ?> value="15"></TD>
</TR>

<TR>
<TD><INPUT NAME="Reed4L" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed4L)) { echo "checked=\"checked\"";} ?> value="12"></TD>
<TD class="w3-light-blue">4"</TD>
<TD><INPUT NAME="Reed4R" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed4R)) { echo "checked=\"checked\"";} ?> value="12"></TD>
</TR>

<TR>
<TD><INPUT NAME="Reed6L" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed6L)) { echo "checked=\"checked\"";} ?> value="9"></TD>
<TD class="w3-light-blue">6"</TD>
<TD><INPUT NAME="Reed6R" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed6R)) { echo "checked=\"checked\"";} ?> value="9"></TD>
</TR>

<TR>
<TD><INPUT NAME="Reed8L" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed8L)) { echo "checked=\"checked\"";} ?> value="6"></TD>
<TD class="w3-light-blue">8"</TD>
<TD><INPUT NAME="Reed8R" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed8R)) { echo "checked=\"checked\"";} ?> value="6"></TD>
</TR>

<TR>
<TD><INPUT NAME="Reed9L" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed9L)) { echo "checked=\"checked\"";} ?> value="3"></TD>
<TD class="w3-light-blue">10"</TD>
<TD><INPUT NAME="Reed9R" class="w3-check" type="checkbox"  <?PHP IF (isset($Reed9R)) { echo "checked=\"checked\"";} ?> value="3"></TD>
</TR>
</TABLE>
  </div>

<!-- MoArch-->
  <button onclick="feif('MoArch')" class="w3-btn-block w3-centered">
    Open Mounted Archery
  </button>
  <div id="MoArch" class="w3-accordion-content w3-container w3-blue">
     <table class="w3-table w3-blue w3-centered"> 
<TR>
<TD>First Pass: <input name="MApass1" type="text" size="2" <?PHP IF (isset($MApass1)) { echo "value=$MApass1";} else { echo "value=00";} ?>"></TD>
</TR>

<TR>
<TD>Second Pass: <input name="MApass2" type="text" size="2" <?PHP IF (isset($MApass2)) { echo "value=$MApass2";} else { echo "value=00";} ?>"></TD>
</TR>

<TR>
<TD>Third Pass: <input name="MApass3" type="text" size="2" <?PHP IF (isset($MApass3)) { echo "value=$MApass3";} else { echo "value=00";} ?>"></TD>
</TR>

</TABLE>
  </div>
  <button onclick="feif('Birjas')" class="w3-btn-block w3-centered">
    Open Birjas
  </button>
  <div id="Birjas" class="w3-accordion-content w3-container w3-blue">
     <table class="w3-table w3-blue w3-centered"> 
<TR>
<TD>First Pass: <input name="Bpass1" type="text" size="2" <?PHP IF (isset($Bpass1)) { echo "value=$Bpass1";} else { echo "value=00";} ?>"></TD>
</TR>

<TR>
<TD>Second Pass: <input name="Bpass2" type="text" size="2" <?PHP IF (isset($Bpass2)) { echo "value=$Bpass2";} else { echo "value=00";} ?>"></TD>
</TR>

<TR>
<TD>Third Pass: <input name="Bpass3" type="text" size="2" <?PHP IF (isset($Bpass3)) { echo "value=$Bpass3";} else { echo "value=00";} ?>"></TD>
</TR>
</TABLE>

  </div>
</div>


<input type="submit" value="Submit"</input>
</FORM>


<script>
function feif(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>


<footer class="w3-container w3-teal">
  <h5>This is only a test</h5>
  <p>Had this been a real form, you would have to logged in to use it.</p>
</footer>

</body>
</html>



