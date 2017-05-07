-- MySQL dump 9.11
--
-- Host: localhost    Database: scaikeqc_ikeqc
-- ------------------------------------------------------
-- Server version	4.0.27-standard

--
-- Table structure for table `birjas`
--

CREATE TABLE birjas (
  SBID int(3) NOT NULL auto_increment,
  PID int(3) NOT NULL default '0',
  HID int(3) NOT NULL default '0',
  KID int(2) NOT NULL default '0',
  EID int(3) NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  SBpass1 int(2) NOT NULL default '0',
  SBpass2 int(2) NOT NULL default '0',
  SBpass3 int(2) NOT NULL default '0',
  SBscore float NOT NULL default '0',
  SBseen char(1) default 'N',
  SByear int(2) NOT NULL default '42',
  PRIMARY KEY  (SBID),
  UNIQUE KEY SBID (SBID),
  KEY SBID_2 (SBID)
) TYPE=MyISAM;

--
-- Dumping data for table `birjas`
--

INSERT INTO birjas VALUES (1,322,236,136,0,'A',30,30,30,90,NULL,42);
INSERT INTO birjas VALUES (2,393,301,149,0,'C',0,0,0,0,NULL,42);
INSERT INTO birjas VALUES (3,394,314,158,0,'A',0,0,0,0,NULL,43);
INSERT INTO birjas VALUES (4,434,316,158,0,'E',0,0,0,0,NULL,43);
INSERT INTO birjas VALUES (5,426,298,162,0,'A',0,0,0,0,NULL,43);
INSERT INTO birjas VALUES (6,449,332,172,18,'C',0,0,0,0,NULL,45);
INSERT INTO birjas VALUES (7,450,333,172,8,'C',0,0,0,0,NULL,45);
INSERT INTO birjas VALUES (8,451,333,172,8,'C',0,0,0,0,NULL,45);
INSERT INTO birjas VALUES (9,452,333,172,8,'C',0,0,0,0,NULL,45);
INSERT INTO birjas VALUES (10,428,312,176,0,'A',0,0,0,0,NULL,45);
INSERT INTO birjas VALUES (11,462,326,179,6,'C',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (12,399,344,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (13,415,340,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (14,458,345,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (15,56,303,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (16,383,280,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (17,384,346,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (18,464,309,180,16,'A',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (19,465,347,180,7,'A',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (20,57,348,180,0,'C',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (21,466,349,180,4,'C',0,0,0,0,NULL,46);
INSERT INTO birjas VALUES (22,358,6,180,0,'E',0,0,0,0,NULL,46);

--
-- Table structure for table `bonusa`
--

CREATE TABLE bonusa (
  Lotime char(5) default NULL,
  Hitime char(5) default NULL,
  Points char(6) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table `bonusa`
--

INSERT INTO bonusa VALUES ('1','1200','20');
INSERT INTO bonusa VALUES ('1201','1229','19');
INSERT INTO bonusa VALUES ('1230','1249','18');
INSERT INTO bonusa VALUES ('1250','1269','17');
INSERT INTO bonusa VALUES ('1270','1289','16.00');
INSERT INTO bonusa VALUES ('1290','1309','15.00');
INSERT INTO bonusa VALUES ('1310','1329','14.00');
INSERT INTO bonusa VALUES ('1330','1349','13.00');
INSERT INTO bonusa VALUES ('1350','1369','12.00');
INSERT INTO bonusa VALUES ('1370','1389','11.00');
INSERT INTO bonusa VALUES ('1390','1399','10.00');

--
-- Table structure for table `bonusb`
--

CREATE TABLE bonusb (
  Lotime char(5) default NULL,
  Hitime char(5) default NULL,
  Points char(6) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table `bonusb`
--

INSERT INTO bonusb VALUES ('1','1300','20');
INSERT INTO bonusb VALUES ('1301','1329','19');
INSERT INTO bonusb VALUES ('1330','1349','18');
INSERT INTO bonusb VALUES ('1350','1369','17');
INSERT INTO bonusb VALUES ('1370','1389','16.00');
INSERT INTO bonusb VALUES ('1390','1409','15.00');
INSERT INTO bonusb VALUES ('1410','1429','14.00');
INSERT INTO bonusb VALUES ('1430','1449','13.00');
INSERT INTO bonusb VALUES ('1450','1469','12.00');
INSERT INTO bonusb VALUES ('1470','1489','11.00');
INSERT INTO bonusb VALUES ('1490','1499','10.00');

--
-- Table structure for table `bonusc`
--

CREATE TABLE bonusc (
  Lotime char(5) default NULL,
  Hitime char(5) default NULL,
  Points char(6) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table `bonusc`
--

INSERT INTO bonusc VALUES ('1','1200','20');
INSERT INTO bonusc VALUES ('1201','1229','19');
INSERT INTO bonusc VALUES ('1230','1249','18');
INSERT INTO bonusc VALUES ('1250','1269','17');
INSERT INTO bonusc VALUES ('1270','1289','16.00');
INSERT INTO bonusc VALUES ('1290','1309','15.00');
INSERT INTO bonusc VALUES ('1310','1329','14.00');
INSERT INTO bonusc VALUES ('1330','1349','13.00');
INSERT INTO bonusc VALUES ('1350','1369','12.00');
INSERT INTO bonusc VALUES ('1370','1389','11.00');
INSERT INTO bonusc VALUES ('1390','1399','10.00');

--
-- Table structure for table `bonusd`
--

CREATE TABLE bonusd (
  Lotime char(5) default NULL,
  Hitime char(5) default NULL,
  Points char(6) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table `bonusd`
--

INSERT INTO bonusd VALUES ('1','1300','20');
INSERT INTO bonusd VALUES ('1301','1329','19');
INSERT INTO bonusd VALUES ('1330','1349','18');
INSERT INTO bonusd VALUES ('1350','1369','17');
INSERT INTO bonusd VALUES ('1370','1389','16.00');
INSERT INTO bonusd VALUES ('1390','1409','15.00');
INSERT INTO bonusd VALUES ('1410','1429','14.00');
INSERT INTO bonusd VALUES ('1430','1449','13.00');
INSERT INTO bonusd VALUES ('1450','1469','12.00');
INSERT INTO bonusd VALUES ('1470','1489','11.00');
INSERT INTO bonusd VALUES ('1490','1499','10.00');

--
-- Table structure for table `bonuse`
--

CREATE TABLE bonuse (
  Lotime char(5) default NULL,
  Hitime char(5) default NULL,
  Points char(6) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table `bonuse`
--

INSERT INTO bonuse VALUES ('1','1200','20');
INSERT INTO bonuse VALUES ('1201','1229','19');
INSERT INTO bonuse VALUES ('1230','1249','18');
INSERT INTO bonuse VALUES ('1250','1269','17');
INSERT INTO bonuse VALUES ('1270','1289','16.00');
INSERT INTO bonuse VALUES ('1290','1309','15.00');
INSERT INTO bonuse VALUES ('1310','1329','14.00');
INSERT INTO bonuse VALUES ('1330','1349','13.00');
INSERT INTO bonuse VALUES ('1350','1369','12.00');
INSERT INTO bonuse VALUES ('1370','1389','11.00');
INSERT INTO bonuse VALUES ('1390','1399','10.00');

--
-- Table structure for table `bonusf`
--

CREATE TABLE bonusf (
  Lotime char(5) default NULL,
  Hitime char(5) default NULL,
  Points char(6) default NULL
) TYPE=MyISAM;

--
-- Dumping data for table `bonusf`
--

INSERT INTO bonusf VALUES ('1','1300','20');
INSERT INTO bonusf VALUES ('1301','1329','19');
INSERT INTO bonusf VALUES ('1330','1349','18');
INSERT INTO bonusf VALUES ('1350','1369','17');
INSERT INTO bonusf VALUES ('1370','1389','16.00');
INSERT INTO bonusf VALUES ('1390','1409','15.00');
INSERT INTO bonusf VALUES ('1410','1429','14.00');
INSERT INTO bonusf VALUES ('1430','1449','13.00');
INSERT INTO bonusf VALUES ('1450','1469','12.00');
INSERT INTO bonusf VALUES ('1470','1489','11.00');
INSERT INTO bonusf VALUES ('1490','1499','10.00');

--
-- Table structure for table `donations`
--

CREATE TABLE donations (
  DnID int(5) NOT NULL auto_increment,
  DnName varchar(80) NOT NULL default '',
  DnEmail varchar(80) NOT NULL default '',
  DnHonor varchar(80) default NULL,
  DnYear int(3) NOT NULL default '0',
  DnMethod varchar(20) NOT NULL default 'PayPal',
  DnAmmount int(5) NOT NULL default '0',
  DnAnon char(1) NOT NULL default 'F',
  DnComment mediumtext,
  DnSeen char(1) NOT NULL default 'N',
  PRIMARY KEY  (DnID)
) TYPE=MyISAM;

--
-- Dumping data for table `donations`
--

INSERT INTO donations VALUES (1,'Sandor Dosa','sandor_dosa@yahoo.com','IKEqC',41,'PayPal',999,'F','Just a note here.','Y');
INSERT INTO donations VALUES (2,'Donweena Beasthealer','DrDonna@where.com',NULL,41,'PayPal',100,'F',NULL,'N');
INSERT INTO donations VALUES (3,'Danielle','danielle_sh@yahoo.com',NULL,42,'Check',25,'F',NULL,'N');
INSERT INTO donations VALUES (4,'Bethany Oesting','chestnutmare@gmail.com',NULL,42,'PayPal',20,'F',NULL,'N');
INSERT INTO donations VALUES (5,'Rachael Keish','rachaelo@alumni.utexas.net',NULL,42,'PayPal',2,'F',NULL,'N');

--
-- Table structure for table `events`
--

CREATE TABLE events (
  EID int(3) NOT NULL auto_increment,
  Edate date NOT NULL default '0000-00-00',
  Ename varchar(80) NOT NULL default '',
  Epass varchar(16) NOT NULL default '',
  Eadmin varchar(80) NOT NULL default '',
  Estatus char(1) NOT NULL default 'O',
  Eyear int(2) NOT NULL default '38',
  PRIMARY KEY  (EID),
  UNIQUE KEY EID (EID)
) TYPE=MyISAM;

--
-- Dumping data for table `events`
--

INSERT INTO events VALUES (1,'2002-09-01','Bonfield Battle X','27649','Ragni of Amberhall','O',37);
INSERT INTO events VALUES (2,'2002-09-15','Caid Equestrian Practice (Official)','20359','Draga von Falkenstein','O',37);
INSERT INTO events VALUES (3,'2002-10-12','Caid Golden Charger Tournament','15824','Draga von Falkenstein','O',37);
INSERT INTO events VALUES (4,'2002-07-24','AN TIR July  Coronation','24943','Rapheal the Rogue','O',37);
INSERT INTO events VALUES (5,'2002-06-22','WEST June Crown','3154','Elina of Beckenham','O',37);
INSERT INTO events VALUES (6,'2002-05-04','Martial Arts College II','11111','Madeleine Gervais de BellBois','O',37);
INSERT INTO events VALUES (7,'2002-05-12','Mist\'s Spring Investiture','10111','Elina of Beckenham','O',37);
INSERT INTO events VALUES (8,'2002-06-15','Murder Melee','5284','Anne von Talstadt','O',37);
INSERT INTO events VALUES (9,'2002-08-02','Midrealm Poorman\'s Pennsic X','7936','Anna Z Pernstefna','O',37);
INSERT INTO events VALUES (10,'2002-05-25','Ansteorra Steppes Warlord XXIX','20521','Aimee de Long Coeur','O',37);
INSERT INTO events VALUES (11,'2002-07-26','An Tir William Tell XVII','29203','Togrul Guiscard','O',37);
INSERT INTO events VALUES (12,'2002-09-28','EALDORMERE Fall Coronation','15639','Alistair Kirk','O',37);
INSERT INTO events VALUES (13,'2002-05-01','change me to your next event','12345','lord von whoops','T',37);
INSERT INTO events VALUES (14,'2002-09-14','Ansteorra Stargate Baronial','26561','Lorraine Fraser','O',37);
INSERT INTO events VALUES (15,'2002-09-28','Calontir Landsknecht Event','20071','Gwynanwedd','O',37);
INSERT INTO events VALUES (16,'2002-05-01','Change me to your next event','23456','lord von whoops','T',37);
INSERT INTO events VALUES (17,'2002-08-25','AN TIR South Sound Unity','14393','Murakami Tsuruko','O',37);
INSERT INTO events VALUES (18,'2002-07-06','Midrealm Melee in the Marche','4542','Chrestienne LaCroniere','O',37);
INSERT INTO events VALUES (19,'2002-05-18','Artemisia Joust a Plaisance','2814','Isabelle of Arnhold','X',37);
INSERT INTO events VALUES (20,'2002-09-02','Artemisia Raptor War','15339','Yameena','O',37);
INSERT INTO events VALUES (21,'2002-09-21','Mist\'s Fall Coronet','19151','Elina of Beckenham','O',37);
INSERT INTO events VALUES (22,'2002-09-28','Outland Scored IKEQC','26250','Helena','O',37);
INSERT INTO events VALUES (23,'2002-10-28','West Kingdom Equestrian Practice','25377','Elisabeth de Champagne','O',37);
INSERT INTO events VALUES (24,'2002-10-05','MIDREALM POUNCE!','20337','Aodhfin Seibert','O',37);
INSERT INTO events VALUES (25,'2003-02-14','ESTRELLA XIX','6630','Yasmeena','O',37);
INSERT INTO events VALUES (26,'2003-04-13','Arn Hold IKEQC','4124','Yasmeena','O',37);
INSERT INTO events VALUES (27,'2003-03-17','Gulf Wars 2003','27045','Alicia','O',37);
INSERT INTO events VALUES (28,'2003-03-29','Al-Barran\'s Spring Horse Faire','9557','Dubheasa','X',37);
INSERT INTO events VALUES (29,'2003-03-23','EMPRISE OF THE TILTING LANCE','25947','Draga','O',37);
INSERT INTO events VALUES (30,'2003-03-22','West March Crown 2003','25069','Elisabeth de Champagne','O',37);
INSERT INTO events VALUES (31,'2003-03-05','Mist\'s Coronet 2003','20425','Elisabeth de Champagne','O',37);
INSERT INTO events VALUES (32,'2003-05-01','Sandor\'s Sample','1234','Sandor','X',38);
INSERT INTO events VALUES (33,'2003-05-25','Steppe\'s Warlord 2003','5348','Aimee de Long Couer','X',38);
INSERT INTO events VALUES (34,'2003-05-16','Baron Wars IKEQC','25377','Timotheous','C',38);
INSERT INTO events VALUES (35,'2003-05-24','Cynagua May Coronet','7729','Siobbhan','C',38);
INSERT INTO events VALUES (36,'2003-06-01','Dregate Horse Fair','7475','Khaidu','C',38);
INSERT INTO events VALUES (37,'2003-05-30','Peasant Revolt','24110','Madelaine','C',38);
INSERT INTO events VALUES (38,'2003-05-24','Trimaris TMT','25498','Gavin','C',38);
INSERT INTO events VALUES (39,'2003-06-12','Three Walls Official EQ PRactice','3124','Timotheous','C',38);
INSERT INTO events VALUES (40,'2003-05-17','May Day Carosello','12819','Isabelle','C',38);
INSERT INTO events VALUES (41,'2003-05-31','Mugmort Stables IKEQC','5263','Chrestienne','C',38);
INSERT INTO events VALUES (42,'2003-06-14','Merchants and Mayhem','11528','Svana','C',38);
INSERT INTO events VALUES (43,'2003-06-14','Uprising','14626','Yasmeena','C',38);
INSERT INTO events VALUES (44,'2003-07-02','Arnhold IKEQC PRactice','19902','Yasmeena','X',38);
INSERT INTO events VALUES (45,'2003-06-07','Arnhold IKEQC  Practice','23307','Yasmeena','C',38);
INSERT INTO events VALUES (46,'2003-06-22','CAID Queen\'s EQ CH Spring','27603','Nialls','C',38);
INSERT INTO events VALUES (47,'2003-06-22','CAID Queen\'s EQ CH Spring','27603','Nialls','C',38);
INSERT INTO events VALUES (48,'2003-07-05','Aethel XXI','1723','Madeleine','C',38);
INSERT INTO events VALUES (49,'2003-10-19','Aurum Games','15652','Siobbhan','C',38);
INSERT INTO events VALUES (50,'2003-05-23','error','24367','Meghan','C',38);
INSERT INTO events VALUES (51,'2003-07-12','Stromgard EQ & Archery Chp','9760','Miranda','C',38);
INSERT INTO events VALUES (52,'2003-10-19','1st Annual Fall EQ Games','13626','Siobhan','C',38);
INSERT INTO events VALUES (53,'2003-08-24','Warren War','4553','Khaidu','C',38);
INSERT INTO events VALUES (54,'2003-09-01','Bonfield Battle','2832','Constance','C',38);
INSERT INTO events VALUES (55,'2003-09-20','Autumn War','20262','Khaidu','C',38);
INSERT INTO events VALUES (56,'2003-09-20','Martial Arts Collegium','5249','Madeleine Gervais','C',38);
INSERT INTO events VALUES (57,'2003-10-04','Pounce Harder','5249','Rowan de Veres','C',38);
INSERT INTO events VALUES (58,'2003-10-04','West K Cct Crown','7500','Elina and Siobhan','C',38);
INSERT INTO events VALUES (59,'1990-05-01','Sandor\'s Folly','123','Sandor','O',25);
INSERT INTO events VALUES (60,'1990-06-02','Sample War','123','Lord Exmaple','O',25);
INSERT INTO events VALUES (61,'1990-07-03','Closed Circle Competition','123','THL Old Crow, OOO','C',25);
INSERT INTO events VALUES (62,'2003-09-27','Mist\'s Fall Coronet','11394','Elisabeth de Champagne','C',38);
INSERT INTO events VALUES (63,'2003-09-20','Saints,Martyrs, & Icons','5286','Gynanwedd@aol.com','C',38);
INSERT INTO events VALUES (64,'2003-09-28','Artemisia EQ Champion','10754','Isaabelle did not send forms at all','X',38);
INSERT INTO events VALUES (65,'2003-04-13','Artemisia IKEQC Practice','16989','Isabelle did not send forms at all','X',38);
INSERT INTO events VALUES (66,'2003-06-06','Artemisia IKEQC Practice II','15625','Isabelle did not send forms at all','X',38);
INSERT INTO events VALUES (68,'2003-11-01','Crystal Mines IKEQC','1833','Isolde','C',38);
INSERT INTO events VALUES (67,'2003-10-19','West Fall EQ Practice','11688',' Siobhan','C',38);
INSERT INTO events VALUES (69,'2003-11-15','Castle Wars','2368','<anicholls@mindspring.com> did not send the correct forms','X',38);
INSERT INTO events VALUES (70,'2004-03-14','Midhaven March Practice','27260','Khaidu','C',38);
INSERT INTO events VALUES (71,'2004-04-18','West Kingdom Spring Games','12565','Siobhan ni Seaghdha','C',38);
INSERT INTO events VALUES (72,'2004-04-18','Sir Eddy\'s Tournament','6307','Khaidu','C',38);
INSERT INTO events VALUES (74,'2004-05-15','BARON WARS 7','4666','AODHFIN scotty@one.net','C',39);
INSERT INTO events VALUES (75,'2004-05-30','RIVER\'S BEND MAY PRACTICE','24976','ILLARIA lfjellman@pru-nw.com','C',39);
INSERT INTO events VALUES (76,'2004-05-09','Mountains Gate Muster','22521','Siobhan dkarp@juno.com','C',39);
INSERT INTO events VALUES (77,'2004-05-28','Cynagua May Coronet 2004','11975','Siobahn','C',39);
INSERT INTO events VALUES (78,'2004-06-12','MUGMORT STABLES 2004','26064','Chrestienne clceqdoc@earthlink.net','C',39);
INSERT INTO events VALUES (79,'2004-06-12','JUNE CROWN 2004','5398','Collette','C',39);
INSERT INTO events VALUES (80,'2004-06-18','Merchants  & Mayhem IV','5238','laura.phillips@tn.ngb.army.mil Lora Greymare','C',39);
INSERT INTO events VALUES (81,'2004-05-22','BEST LITTLE ARMY','7391','YASMEENA','C',39);
INSERT INTO events VALUES (82,'2004-07-10','Earnrokke EQ July Practice','4567','Agelos','O',39);
INSERT INTO events VALUES (83,'2004-07-10','PUSH FOR PENNSIC 2004','23144','Aodhfin Seibert','C',39);
INSERT INTO events VALUES (84,'2004-05-01','Sandor\'s Test','A','Sandor','C',39);
INSERT INTO events VALUES (85,'2004-07-24','WILLIAM TELL XIX','22718','TOGRUL togrul@netzero.net','C',39);
INSERT INTO events VALUES (86,'2004-07-31','ARN HOLD IKEQC TOURNAMENT','19461','YASMEENA','O',39);
INSERT INTO events VALUES (87,'2004-07-31','Acorn War 2004','29681','Edward Ean','O',39);
INSERT INTO events VALUES (88,'2004-07-30','Vulpine Reach EQ July Practice','8167','Svana  otaku1974@yahoo.com','O',39);
INSERT INTO events VALUES (89,'2004-07-31','Acorn War 2004','29681','Edward Ean','C',39);
INSERT INTO events VALUES (90,'2004-08-22','Fall Festival Stromgard Sergent\'s Tourney','26212','Illaria <lfjellman@pru-nw.com>','O',39);
INSERT INTO events VALUES (91,'2004-09-18',' Unchained Doom','26930','Lora Greymare =Phillips, Laura C.,CIV','C',39);
INSERT INTO events VALUES (92,'2004-08-29','WARREN WAR 2004','10591','kHAIDU','O',39);
INSERT INTO events VALUES (93,'2004-07-31','Acorn War 2004','29681','Edward Ean','O',39);
INSERT INTO events VALUES (94,'2004-10-02','WEST KINGDOM FALL EVENT','2222','<rachael_keish@hotmail.com>','C',39);
INSERT INTO events VALUES (95,'2004-10-16','WEST KINGDOM OCT CROWN','19320','MARGURIETE','C',39);
INSERT INTO events VALUES (96,'2004-10-17','Midhaven October Practice','16980','Tara','C',39);
INSERT INTO events VALUES (97,'2004-09-26','ARNHOLD FALL IKEQC TOURNEY','11046','Lady Auraelia de Medici','O',39);
INSERT INTO events VALUES (98,'2004-12-09','Fourth Wall IKEqC','16278','Timotheous Symmes timotheous@netpenny.net','O',39);
INSERT INTO events VALUES (99,'2004-08-28',' St Augustine\'s Faire','18015','Rhiannon of Crystal Mynes rheanna2@juno.com','O',39);
INSERT INTO events VALUES (100,'2005-04-23','Spring Equestrian Event','8396','Siobhan','O',39);
INSERT INTO events VALUES (101,'2005-04-30','Earnrokke EQ April Practice','17261','Khaidu','O',39);
INSERT INTO events VALUES (102,'2005-05-31','Sandor\'s Sample','a','Sandor','C',40);
INSERT INTO events VALUES (103,'2005-05-28','Cynagua May Coronet AS XL','1752','dkarp@juno.com','C',40);
INSERT INTO events VALUES (104,'2005-06-11','PUSH FOR PENNSIC 2005','6122','Lord Aodhfin Seibert','C',40);
INSERT INTO events VALUES (105,'2005-06-25','WEST JUNE CROWN','21103','Countess Aricia Jehane Deveraux','C',40);
INSERT INTO events VALUES (106,'2005-07-16','Cynagua July Equestrian Practice','24933','Siobhan','C',40);
INSERT INTO events VALUES (107,'2005-08-27','Purgatorio Coronation','25769','dkarp@yahoo.com','C',40);
INSERT INTO events VALUES (108,'2005-09-03','An Tir Sept Crown','24713','Donwenna','C',40);
INSERT INTO events VALUES (109,'2005-09-17','WILLIAM TELL XX','23135','TOGRUL togrul@netzero.net','C',40);
INSERT INTO events VALUES (110,'2005-09-18','MISTS FALL CORONET','27393','<rachael.keish@gmail.com>','C',40);
INSERT INTO events VALUES (111,'2005-10-09','WEST FALL IKEQC','12754','<rachael.keish@gmail.com>','C',40);
INSERT INTO events VALUES (112,'2006-01-22','EARNROKKE JANUARY PRACTICE','25280','DONWENNA','C',40);
INSERT INTO events VALUES (113,'2006-03-12','MIDHAVEN MARCH PRACTICE','25318','TARA','C',40);
INSERT INTO events VALUES (114,'2006-04-09','MIDHAVEN APRIL PRACTICE','1684','TARA','C',40);
INSERT INTO events VALUES (115,'2006-03-17','GULF WARS XV','20511','SVANA','C',40);
INSERT INTO events VALUES (116,'2006-05-27','','13849','Oso the dreadful (odredful@hotmail.com)','X',40);
INSERT INTO events VALUES (117,'2006-05-01','Sandor\'s Sample','a','Sandor','O',41);
INSERT INTO events VALUES (118,'2006-05-27','An Tir May Crown','13849','Osogarow the Dredful','C',41);
INSERT INTO events VALUES (119,'2006-05-27','Cynagua May Coronet AS41','22704','Siobhan ni Seaghdha','C',41);
INSERT INTO events VALUES (120,'2006-03-05','VULPINE REACH PRACTICE MARCH','20195','sVANA','C',40);
INSERT INTO events VALUES (121,'2006-02-26','VULPINE REACH PRACTICE FEB','22153','SVANA','C',40);
INSERT INTO events VALUES (122,'2006-06-17','St. Martins Practice 06-17-06','7903','Logan Silveraxe','C',41);
INSERT INTO events VALUES (123,'2006-07-07','Push for Pennsic','9180','Aodhfin Siebert','C',41);
INSERT INTO events VALUES (124,'2006-09-23','Mists Fall Coronet 2006','17798','Robert of Dunharrow','C',41);
INSERT INTO events VALUES (125,'2006-10-14','Golden Rivers Oct. Practice','23282','Gwendywn the Silent','C',41);
INSERT INTO events VALUES (126,'2006-10-21','Cynagua Eq Practice 10-21-06','8319','Siobhan ni Seaghdha','C',41);
INSERT INTO events VALUES (127,'2006-11-19','Queens Eq Championship 11-19-06','17064','Arabella da Siena','C',41);
INSERT INTO events VALUES (128,'2007-01-27','Meridies Mentone Practice','987654','Svana Mjobeina','C',41);
INSERT INTO events VALUES (129,'2006-10-22','Dusty Acres Practice 10/22/06','19782','Freydis the Good','X',41);
INSERT INTO events VALUES (130,'2007-02-17','Estrella 2007','2982','Arabella','C',41);
INSERT INTO events VALUES (131,'2007-03-31','North Meridian Calvary Practice','12940','Svana','C',41);
INSERT INTO events VALUES (132,'2007-03-31','Calontir Spring Spears','17462','Gwynanwedd','C',41);
INSERT INTO events VALUES (133,'2007-03-31','North Meridian Cavalry Practice','2831','Svana','X',41);
INSERT INTO events VALUES (134,'2007-04-07','Arn Hold 4-7-07 Practice','10340','Danielle Alavaine deLicorne','C',41);
INSERT INTO events VALUES (135,'2007-04-21','Arn Hold 4-21-07 Practice','5650','Danielle Alavaine deLicorne','C',41);
INSERT INTO events VALUES (136,'2007-05-01','Sandor Sample II','1','Sandor Dosa','C',42);
INSERT INTO events VALUES (137,'2007-05-19','Baron Wars','7543','Rowan (Susan)','C',42);
INSERT INTO events VALUES (138,'2007-05-19','Baron Wars2','14271','Rowan (Susan)','C',42);
INSERT INTO events VALUES (139,'2007-06-16','Last Crusade','1234','Rowan (Susan)','X',42);
INSERT INTO events VALUES (140,'2007-10-06','October Pounce','19188','Rowan (Susan)','X',42);
INSERT INTO events VALUES (141,'2007-06-30','North Meridian Cavalry Practice 6/30/07','12237','Svana','X',42);
INSERT INTO events VALUES (142,'2007-07-28','North Meridian Cavalry Practice 7/28/07','28515','Svana','X',42);
INSERT INTO events VALUES (143,'2007-07-22','Midhaven July Practice','9912','Taradan','C',42);
INSERT INTO events VALUES (144,'2007-08-25','William Tell XXII','19878','Togrul Guiscard','C',42);
INSERT INTO events VALUES (145,'2007-09-29','North Meridian Cavalry Practice 9/29/07','3120','Svana','X',42);
INSERT INTO events VALUES (146,'2007-10-27','North Meridian Cavalry Practice 10/27/07','7083','Svana','X',42);
INSERT INTO events VALUES (147,'2007-09-22','Mists Fall Coronet','8003','Collette','C',42);
INSERT INTO events VALUES (148,'2007-09-29','Westrealm Fall EQ Event','7835','Siobhan','C',42);
INSERT INTO events VALUES (149,'2007-10-05','Great Western War X','18555','Arabella','C',42);
INSERT INTO events VALUES (150,'2007-10-21','Mists Practice 10/21/07','8081','Collette','C',42);
INSERT INTO events VALUES (151,'2007-10-05','Great Western War X','18555','Arabella','X',42);
INSERT INTO events VALUES (152,'2007-11-17','Caer Dearth Tourney','16206','Zinaida','C',42);
INSERT INTO events VALUES (153,'2007-08-25','Warren War 2007','18158','Khaidu','C',42);
INSERT INTO events VALUES (154,'2008-05-11','Midhaven Practice','27939','donwenna','X',43);
INSERT INTO events VALUES (155,'2009-02-07','North Meridies Practice','12011','Bonnie Mumpower Dodson','X',43);
INSERT INTO events VALUES (156,'2008-05-09','Baron Wars','14925','Rowan','X',43);
INSERT INTO events VALUES (157,'2008-12-06','North Meridies Practice','12011','Bonnie Mumpower Dodson','X',43);
INSERT INTO events VALUES (158,'2008-07-03','East Region War Camp XV','27228','Bethany Oesting','C',43);
INSERT INTO events VALUES (159,'2008-05-01','Sandors Sample','1234','Sandor','O',43);
INSERT INTO events VALUES (160,'2008-10-12','War of the Wings','4086','Brandwyn Alston of the Rift','C',43);
INSERT INTO events VALUES (161,'2008-09-21','Golden Rivers Practice','11510','Gwendwyn the Silent','C',43);
INSERT INTO events VALUES (162,'2008-09-12','Warren War X','25874','Khaidu Naranaimorin','C',43);
INSERT INTO events VALUES (163,'2009-09-26','Afternoon of Fun','5414','Rhiannon filia Catell','X',44);
INSERT INTO events VALUES (164,'2009-10-10','Hunters Moon','6745','Rhiannon filia Catell','C',44);
INSERT INTO events VALUES (165,'2009-10-17','Wildrose Renn Faire','25888','Rhiannon filia Catell','X',44);
INSERT INTO events VALUES (166,'2009-11-07','North Meridian Cavalry Practice','28043','Svana Mjobeina','C',44);
INSERT INTO events VALUES (167,'2010-05-15','A Medieval Horse Faire','1819','Rhiannon filia Catell','X',44);
INSERT INTO events VALUES (168,'2010-05-15','A Medieval Horse Faire','1819','Rhiannon filia Catell','C',45);
INSERT INTO events VALUES (169,'2010-08-14','Albion Equestrian Practice August 14 2010','1819','Rhiannon filia Catell','X',45);
INSERT INTO events VALUES (170,'2010-08-28','Albion Equestrian Practice August 28 2010','1819','Rhiannon filia Catell','C',45);
INSERT INTO events VALUES (171,'2010-10-08','Diamond Wars - Friday','2147','Lora Greymare','X',45);
INSERT INTO events VALUES (172,'2010-10-09','Diamond Wars - Saturday','2147','Lora Greymare','C',45);
INSERT INTO events VALUES (173,'2011-03-17','Gulf Wars XX March 17th','9090','Lora Greymare','C',45);
INSERT INTO events VALUES (174,'2011-03-19','Gulf Wars XX March 19th','9090','Lora Greymare','C',45);
INSERT INTO events VALUES (175,'2011-04-16','Starkhafn Baronial Practice April 16 2011','28441','Sionnach','C',45);
INSERT INTO events VALUES (176,'2011-04-30','Southern Region War Camp','13959','Doucette de Verdun','C',45);
INSERT INTO events VALUES (177,'2011-10-08','Afternoon of Fun','2609','Rhiannon filia Catell','X',46);
INSERT INTO events VALUES (178,'2011-06-04','Brass Ring Thing','17155','Ysabeau Tiercelin','X',46);
INSERT INTO events VALUES (179,'2011-09-17','Saxon Summer','20277','Shoshida Tora Gozen','C',46);
INSERT INTO events VALUES (180,'2011-10-08','Great Western War XIV','9622','Sionnach','C',46);
INSERT INTO events VALUES (181,'2011-10-21','Diamond Wars','1209','Lora Greymare','C',46);
INSERT INTO events VALUES (182,'2012-06-30','Stormsport\'s Army Muster and Equestrian Event','11518','Rhiannon filia Catell','O',47);
INSERT INTO events VALUES (183,'2013-06-22','Stormsport Army Muster & Equestrian Championship 2013 - Friday','18419','Rhiannon filia Catell','O',48);
INSERT INTO events VALUES (184,'2013-06-21','Stormsport Army Muster & Equestrian Championship 2013 - Saturday','9759','Rhiannon filia Catell','O',48);
INSERT INTO events VALUES (185,'2013-05-26','Grand Thing 2013','21579','Dame Macha of Mountain Edge','o',48);
INSERT INTO events VALUES (186,'2013-07-28','Summer Hunt VIII','14635','Donwenna la Mareschale','o',48);

--
-- Table structure for table `heads`
--

CREATE TABLE heads (
  SHID int(3) NOT NULL auto_increment,
  PID int(3) NOT NULL default '0',
  HID int(3) NOT NULL default '0',
  KID int(2) NOT NULL default '0',
  EID int(3) NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  SHtime int(8) NOT NULL default '0',
  SHpenalty int(3) NOT NULL default '0',
  SHscore float NOT NULL default '0',
  SHseen char(1) default 'N',
  SHyear int(2) NOT NULL default '38',
  PRIMARY KEY  (SHID),
  UNIQUE KEY SHID (SHID),
  KEY SHID_2 (SHID)
) TYPE=MyISAM;

--
-- Dumping data for table `heads`
--

INSERT INTO heads VALUES (1,1,1,10,5,'D',3500,0,65.5,NULL,37);
INSERT INTO heads VALUES (2,2,2,16,7,'D',2948,0,71.5,NULL,37);
INSERT INTO heads VALUES (3,3,3,16,14,'B',1950,0,81,NULL,37);
INSERT INTO heads VALUES (4,4,4,16,14,'D',1905,0,82,NULL,37);
INSERT INTO heads VALUES (5,5,3,16,14,'B',1857,0,83,NULL,37);
INSERT INTO heads VALUES (6,6,5,16,14,'B',2612,0,74.5,NULL,37);
INSERT INTO heads VALUES (7,7,6,16,14,'B',1904,0,82,NULL,37);
INSERT INTO heads VALUES (8,8,7,16,14,'B',1604,0,88,NULL,37);
INSERT INTO heads VALUES (9,9,8,16,14,'B',2226,10,68.5,NULL,37);
INSERT INTO heads VALUES (10,10,3,16,14,'D',2846,0,72.5,NULL,37);
INSERT INTO heads VALUES (11,11,6,16,14,'D',3100,0,69.5,NULL,37);
INSERT INTO heads VALUES (12,12,5,16,14,'B',2080,0,80,NULL,37);
INSERT INTO heads VALUES (13,13,9,3,7,'D',1725,0,86,NULL,37);
INSERT INTO heads VALUES (14,14,10,3,7,'D',1725,0,86,NULL,37);
INSERT INTO heads VALUES (15,15,11,16,7,'D',3098,0,70,NULL,37);
INSERT INTO heads VALUES (16,16,12,16,7,'D',3722,10,53.5,NULL,37);
INSERT INTO heads VALUES (17,17,13,16,7,'D',3219,0,68.5,NULL,37);
INSERT INTO heads VALUES (18,11,2,0,7,'D',3125,0,69.5,NULL,37);
INSERT INTO heads VALUES (19,18,12,16,7,'D',2780,0,73,NULL,37);
INSERT INTO heads VALUES (20,19,9,3,1,'D',3759,0,63,NULL,37);
INSERT INTO heads VALUES (21,20,14,1,4,'D',3246,0,68.5,NULL,37);
INSERT INTO heads VALUES (22,21,15,1,4,'B',3060,30,40,NULL,37);
INSERT INTO heads VALUES (23,22,16,1,4,'B',1850,10,73,NULL,37);
INSERT INTO heads VALUES (24,23,15,1,4,'B',1717,10,76,NULL,37);
INSERT INTO heads VALUES (25,24,17,1,4,'B',1956,10,71,NULL,37);
INSERT INTO heads VALUES (26,24,17,0,4,'B',1858,0,83,NULL,37);
INSERT INTO heads VALUES (27,25,16,1,4,'B',1964,0,81,NULL,37);
INSERT INTO heads VALUES (28,26,18,1,17,'B',1403,0,107,NULL,37);
INSERT INTO heads VALUES (29,27,18,1,17,'B',1306,0,113,NULL,37);
INSERT INTO heads VALUES (30,28,16,1,17,'B',2523,0,75.5,NULL,37);
INSERT INTO heads VALUES (31,29,19,8,15,'D',3222,0,68.5,NULL,37);
INSERT INTO heads VALUES (32,30,20,8,15,'B',1784,0,85,NULL,37);
INSERT INTO heads VALUES (33,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (34,31,21,8,15,'D',3600,0,64.5,NULL,37);
INSERT INTO heads VALUES (35,32,21,8,15,'B',1934,0,82,NULL,37);
INSERT INTO heads VALUES (36,33,20,8,15,'D',2619,0,74.5,NULL,37);
INSERT INTO heads VALUES (37,34,1,10,12,'B',1920,0,82,NULL,37);
INSERT INTO heads VALUES (38,35,22,10,12,'D',2760,0,73,NULL,37);
INSERT INTO heads VALUES (39,36,23,10,12,'B',1910,10,72,NULL,37);
INSERT INTO heads VALUES (40,37,1,10,12,'B',1790,0,85,NULL,37);
INSERT INTO heads VALUES (41,38,24,10,12,'D',3380,0,67,NULL,37);
INSERT INTO heads VALUES (42,39,24,10,12,'B',1880,0,83,NULL,37);
INSERT INTO heads VALUES (43,40,25,1,11,'B',1689,0,87,NULL,37);
INSERT INTO heads VALUES (44,41,26,1,11,'B',1840,0,84,NULL,37);
INSERT INTO heads VALUES (45,42,27,1,11,'B',1724,0,86,NULL,37);
INSERT INTO heads VALUES (46,43,28,1,11,'B',4128,10,49.5,NULL,37);
INSERT INTO heads VALUES (47,44,29,1,11,'B',1830,0,84,NULL,37);
INSERT INTO heads VALUES (48,45,30,1,11,'D',3027,10,60.5,NULL,37);
INSERT INTO heads VALUES (49,46,31,1,11,'B',1629,0,88,NULL,37);
INSERT INTO heads VALUES (50,47,32,1,11,'B',1802,0,84,NULL,37);
INSERT INTO heads VALUES (51,44,29,1,11,'B',1800,0,84,NULL,37);
INSERT INTO heads VALUES (52,42,27,0,11,'B',1524,0,90,NULL,37);
INSERT INTO heads VALUES (53,47,32,0,1,'B',1755,0,85,NULL,37);
INSERT INTO heads VALUES (54,44,29,0,11,'B',1840,0,84,NULL,37);
INSERT INTO heads VALUES (55,43,28,0,11,'B',2140,0,79.5,NULL,37);
INSERT INTO heads VALUES (56,48,33,7,2,'B',2800,0,72.5,NULL,37);
INSERT INTO heads VALUES (57,49,34,7,2,'B',1647,0,88,NULL,37);
INSERT INTO heads VALUES (58,50,35,7,2,'B',2322,0,77.5,NULL,37);
INSERT INTO heads VALUES (59,51,36,7,2,'B',2231,0,78.5,NULL,37);
INSERT INTO heads VALUES (60,52,34,7,2,'B',1472,0,102,NULL,37);
INSERT INTO heads VALUES (61,53,37,7,2,'B',2643,0,74.5,NULL,37);
INSERT INTO heads VALUES (62,54,38,7,2,'B',1884,0,83,NULL,37);
INSERT INTO heads VALUES (63,55,38,7,2,'B',2575,0,75,NULL,37);
INSERT INTO heads VALUES (64,56,36,7,2,'B',4150,0,59,NULL,37);
INSERT INTO heads VALUES (65,57,39,7,2,'B',3903,0,61.5,NULL,37);
INSERT INTO heads VALUES (66,33,36,0,2,'B',2231,0,78.5,NULL,37);
INSERT INTO heads VALUES (67,53,37,7,2,'B',2643,0,74.5,NULL,37);
INSERT INTO heads VALUES (68,56,36,7,2,'B',4105,0,59.5,NULL,37);
INSERT INTO heads VALUES (69,47,32,1,11,'B',1755,0,85,NULL,37);
INSERT INTO heads VALUES (70,25,16,1,4,'B',1964,0,81,NULL,37);
INSERT INTO heads VALUES (71,14,10,3,5,'B',1725,0,86,NULL,37);
INSERT INTO heads VALUES (72,58,40,8,15,'B',1475,0,102,NULL,37);
INSERT INTO heads VALUES (73,59,1,7,3,'D',3294,0,68,NULL,37);
INSERT INTO heads VALUES (74,53,37,0,3,'B',1899,10,73,NULL,37);
INSERT INTO heads VALUES (75,60,1,7,3,'D',3194,0,69,NULL,37);
INSERT INTO heads VALUES (76,61,1,7,3,'D',3856,20,42,NULL,37);
INSERT INTO heads VALUES (77,62,38,7,3,'D',3519,0,65.5,NULL,37);
INSERT INTO heads VALUES (78,55,38,0,3,'B',3300,0,67.5,NULL,37);
INSERT INTO heads VALUES (79,63,1,7,3,'B',2181,0,79,NULL,37);
INSERT INTO heads VALUES (80,20,41,0,3,'B',2702,0,73.5,NULL,37);
INSERT INTO heads VALUES (81,64,34,7,3,'B',2025,0,80.5,NULL,37);
INSERT INTO heads VALUES (82,49,34,0,3,'B',1825,0,84,NULL,37);
INSERT INTO heads VALUES (83,65,42,7,3,'B',1963,20,61,NULL,37);
INSERT INTO heads VALUES (84,51,36,0,3,'B',2134,0,79.5,NULL,37);
INSERT INTO heads VALUES (85,66,1,7,3,'B',2406,0,76.5,NULL,37);
INSERT INTO heads VALUES (86,67,43,2,10,'B',1434,0,105,NULL,37);
INSERT INTO heads VALUES (87,68,44,2,10,'B',1462,0,103,NULL,37);
INSERT INTO heads VALUES (88,69,45,2,10,'B',1841,0,84,NULL,37);
INSERT INTO heads VALUES (89,70,46,2,10,'B',2100,0,79.5,NULL,37);
INSERT INTO heads VALUES (90,71,47,2,10,'B',1788,0,85,NULL,37);
INSERT INTO heads VALUES (91,72,48,2,10,'B',1513,0,90,NULL,37);
INSERT INTO heads VALUES (92,73,49,2,10,'B',2189,0,79,NULL,37);
INSERT INTO heads VALUES (93,74,50,2,10,'B',1516,0,90,NULL,37);
INSERT INTO heads VALUES (94,75,51,2,10,'D',2475,0,76,NULL,37);
INSERT INTO heads VALUES (95,76,50,2,10,'D',2818,0,72.5,NULL,37);
INSERT INTO heads VALUES (96,77,52,13,10,'B',1669,0,87,NULL,37);
INSERT INTO heads VALUES (97,78,1,10,1,'B',2000,0,80.5,NULL,37);
INSERT INTO heads VALUES (98,79,53,2,10,'B',1389,0,109,NULL,37);
INSERT INTO heads VALUES (99,37,1,10,1,'D',2500,0,75.5,NULL,37);
INSERT INTO heads VALUES (100,80,1,10,1,'D',3050,0,70,NULL,37);
INSERT INTO heads VALUES (101,81,53,2,10,'D',2850,0,72,NULL,37);
INSERT INTO heads VALUES (102,82,1,10,1,'B',1830,0,84,NULL,37);
INSERT INTO heads VALUES (103,83,51,2,10,'D',4422,0,56.5,NULL,37);
INSERT INTO heads VALUES (104,84,54,2,10,'D',2183,0,79,NULL,37);
INSERT INTO heads VALUES (105,85,1,10,1,'D',2704,0,73.5,NULL,37);
INSERT INTO heads VALUES (106,86,55,13,10,'D',4000,0,60.5,NULL,37);
INSERT INTO heads VALUES (107,35,1,10,1,'D',2530,0,76.5,NULL,37);
INSERT INTO heads VALUES (108,87,1,10,1,'D',2906,0,71.5,NULL,37);
INSERT INTO heads VALUES (109,88,1,10,1,'B',1860,0,83,NULL,37);
INSERT INTO heads VALUES (110,89,1,10,1,'B',1520,0,90,NULL,37);
INSERT INTO heads VALUES (111,90,1,10,1,'B',1560,0,89,NULL,37);
INSERT INTO heads VALUES (112,91,56,7,3,'B',1753,0,85,NULL,37);
INSERT INTO heads VALUES (113,92,57,3,20,'D',2929,0,71.5,NULL,37);
INSERT INTO heads VALUES (114,93,58,3,20,'B',1348,1,111,NULL,37);
INSERT INTO heads VALUES (115,94,59,3,20,'B',1874,0,83,NULL,37);
INSERT INTO heads VALUES (116,95,9,3,20,'B',1544,0,90,NULL,37);
INSERT INTO heads VALUES (117,96,60,3,20,'D',3690,0,64,NULL,37);
INSERT INTO heads VALUES (118,97,61,3,20,'D',2,2,0,NULL,37);
INSERT INTO heads VALUES (119,98,60,3,20,'D',3186,0,69,NULL,37);
INSERT INTO heads VALUES (120,42,27,0,20,'B',1392,0,108,NULL,37);
INSERT INTO heads VALUES (121,99,29,1,20,'B',1761,1,84,NULL,37);
INSERT INTO heads VALUES (122,100,10,3,20,'B',1521,0,90,NULL,37);
INSERT INTO heads VALUES (123,101,63,3,20,'D',2977,0,71,NULL,37);
INSERT INTO heads VALUES (124,102,64,3,20,'D',3762,0,63,NULL,37);
INSERT INTO heads VALUES (125,106,65,14,22,'D',2700,0,73.5,NULL,37);
INSERT INTO heads VALUES (126,107,66,14,22,'D',2500,0,75.5,NULL,37);
INSERT INTO heads VALUES (127,108,67,14,22,'D',2700,0,73.5,NULL,37);
INSERT INTO heads VALUES (128,109,68,14,22,'D',2800,0,72.5,NULL,37);
INSERT INTO heads VALUES (129,112,72,12,18,'D',3300,10,57.5,NULL,37);
INSERT INTO heads VALUES (130,113,73,12,18,'D',4200,0,58.5,NULL,37);
INSERT INTO heads VALUES (131,114,74,12,18,'B',2000,0,80.5,NULL,37);
INSERT INTO heads VALUES (132,114,74,12,18,'D',2400,0,76.5,NULL,37);
INSERT INTO heads VALUES (133,115,75,12,18,'D',4500,0,55.5,NULL,37);
INSERT INTO heads VALUES (134,116,72,12,18,'B',1504,0,90,NULL,37);
INSERT INTO heads VALUES (135,117,72,12,18,'D',2708,0,73.5,NULL,37);
INSERT INTO heads VALUES (136,117,72,12,18,'B',1900,10,72,NULL,37);
INSERT INTO heads VALUES (137,118,74,12,18,'D',3800,0,62.5,NULL,37);
INSERT INTO heads VALUES (138,113,73,0,24,'D',3300,10,57.5,NULL,37);
INSERT INTO heads VALUES (139,119,76,12,24,'D',2700,0,73.5,NULL,37);
INSERT INTO heads VALUES (140,120,77,12,24,'B',1800,0,84,NULL,37);
INSERT INTO heads VALUES (141,121,78,12,24,'D',2802,0,72.5,NULL,37);
INSERT INTO heads VALUES (142,116,72,12,24,'B',1475,10,92,NULL,37);
INSERT INTO heads VALUES (143,114,74,12,24,'D',2978,0,71,NULL,37);
INSERT INTO heads VALUES (144,122,79,12,24,'B',1904,10,72,NULL,37);
INSERT INTO heads VALUES (145,112,72,12,24,'D',2800,0,72.5,NULL,37);
INSERT INTO heads VALUES (146,117,72,12,24,'B',1705,0,86,NULL,37);
INSERT INTO heads VALUES (147,123,80,2,14,'B',1928,5,77,NULL,37);
INSERT INTO heads VALUES (148,124,48,2,14,'D',2618,0,74.5,NULL,37);
INSERT INTO heads VALUES (149,125,43,2,14,'D',4406,0,56.5,NULL,37);
INSERT INTO heads VALUES (150,126,81,2,14,'B',2009,5,75.5,NULL,37);
INSERT INTO heads VALUES (151,73,82,0,14,'D',2022,0,80.5,NULL,37);
INSERT INTO heads VALUES (152,67,48,0,14,'B',1512,0,90,NULL,37);
INSERT INTO heads VALUES (153,72,48,0,14,'B',1309,0,113,NULL,37);
INSERT INTO heads VALUES (154,127,83,2,14,'B',1581,0,89,NULL,37);
INSERT INTO heads VALUES (155,128,84,2,14,'B',1965,0,81,NULL,37);
INSERT INTO heads VALUES (156,75,48,0,14,'B',1538,0,90,NULL,37);
INSERT INTO heads VALUES (157,74,85,0,14,'B',1425,5,101,NULL,37);
INSERT INTO heads VALUES (158,129,1,10,1,'D',2600,0,74.5,NULL,37);
INSERT INTO heads VALUES (159,130,1,10,1,'D',2680,0,74,NULL,37);
INSERT INTO heads VALUES (160,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (161,117,72,12,24,'B',1756,0,85,NULL,37);
INSERT INTO heads VALUES (162,71,47,2,10,'B',1788,10,75,NULL,37);
INSERT INTO heads VALUES (163,72,48,2,14,'B',1390,0,108,NULL,37);
INSERT INTO heads VALUES (164,126,81,2,14,'B',2090,10,70,NULL,37);
INSERT INTO heads VALUES (165,125,43,2,14,'D',4460,0,56,NULL,37);
INSERT INTO heads VALUES (166,73,82,2,14,'B',2022,0,80.5,NULL,37);
INSERT INTO heads VALUES (167,2,96,16,21,'D',3880,0,62,NULL,37);
INSERT INTO heads VALUES (168,12,88,16,21,'B',3950,0,61,NULL,37);
INSERT INTO heads VALUES (169,142,97,16,21,'D',4990,0,51,NULL,37);
INSERT INTO heads VALUES (170,7,6,16,21,'D',3134,10,59.5,NULL,37);
INSERT INTO heads VALUES (171,143,23,16,1,'B',3630,0,64.5,NULL,37);
INSERT INTO heads VALUES (172,3,96,15,21,'B',3582,0,65,NULL,37);
INSERT INTO heads VALUES (173,144,88,16,21,'D',3743,0,63.5,NULL,37);
INSERT INTO heads VALUES (174,145,96,16,21,'D',3139,0,69.5,NULL,37);
INSERT INTO heads VALUES (175,146,96,16,21,'D',3743,0,63.5,NULL,37);
INSERT INTO heads VALUES (176,74,85,0,27,'B',1835,0,84,NULL,37);
INSERT INTO heads VALUES (177,147,98,15,27,'B',2234,0,78.5,NULL,37);
INSERT INTO heads VALUES (178,148,99,5,27,'B',2094,0,80,NULL,37);
INSERT INTO heads VALUES (179,149,100,13,27,'B',1753,0,85,NULL,37);
INSERT INTO heads VALUES (180,150,101,13,27,'B',1781,0,85,NULL,37);
INSERT INTO heads VALUES (181,151,99,5,27,'B',2094,0,80,NULL,37);
INSERT INTO heads VALUES (182,79,53,0,27,'B',2003,10,70.5,NULL,37);
INSERT INTO heads VALUES (183,152,102,2,27,'B',2213,0,78.5,NULL,37);
INSERT INTO heads VALUES (184,153,98,15,27,'B',2214,20,58.5,NULL,37);
INSERT INTO heads VALUES (185,75,51,0,27,'D',2625,0,74.5,NULL,37);
INSERT INTO heads VALUES (186,154,103,11,27,'D',2838,0,72.5,NULL,37);
INSERT INTO heads VALUES (187,155,77,12,27,'D',2688,0,74,NULL,37);
INSERT INTO heads VALUES (188,156,104,2,27,'D',3331,0,67.5,NULL,37);
INSERT INTO heads VALUES (189,157,105,2,27,'D',3116,0,69.5,NULL,37);
INSERT INTO heads VALUES (190,158,105,15,27,'D',3835,0,62.5,NULL,37);
INSERT INTO heads VALUES (191,159,98,15,27,'D',3919,0,61.5,NULL,37);
INSERT INTO heads VALUES (192,160,106,13,27,'D',3610,0,64.5,NULL,37);
INSERT INTO heads VALUES (193,161,99,5,27,'D',3182,0,69,NULL,37);
INSERT INTO heads VALUES (194,162,107,12,27,'D',2891,0,72,NULL,37);
INSERT INTO heads VALUES (195,95,9,0,26,'A',1375,0,104,NULL,37);
INSERT INTO heads VALUES (196,163,98,15,27,'D',3365,10,57,NULL,37);
INSERT INTO heads VALUES (197,164,108,13,27,'D',2422,10,66.5,NULL,37);
INSERT INTO heads VALUES (198,165,53,2,27,'D',4316,20,37.5,NULL,37);
INSERT INTO heads VALUES (199,95,9,0,26,'D',1614,0,88,NULL,37);
INSERT INTO heads VALUES (200,97,10,3,26,'A',1859,0,83,NULL,37);
INSERT INTO heads VALUES (201,97,10,0,26,'D',2385,0,77,NULL,37);
INSERT INTO heads VALUES (202,92,57,0,26,'D',2638,0,74.5,NULL,37);
INSERT INTO heads VALUES (203,102,64,0,26,'D',2914,0,71.5,NULL,37);
INSERT INTO heads VALUES (204,94,10,0,26,'A',1695,0,87,NULL,37);
INSERT INTO heads VALUES (205,94,10,0,26,'B',1807,10,74,NULL,37);
INSERT INTO heads VALUES (206,166,64,3,26,'D',3035,0,70.5,NULL,37);
INSERT INTO heads VALUES (207,167,3,16,23,'D',2500,0,75.5,NULL,37);
INSERT INTO heads VALUES (208,12,88,16,23,'B',1900,10,72,NULL,37);
INSERT INTO heads VALUES (209,12,88,16,23,'A',1900,10,72,NULL,37);
INSERT INTO heads VALUES (210,6,5,16,23,'A',1600,0,88,NULL,37);
INSERT INTO heads VALUES (211,142,109,16,23,'A',2400,10,66.5,NULL,37);
INSERT INTO heads VALUES (212,93,58,16,20,'B',1348,10,102,NULL,37);
INSERT INTO heads VALUES (213,95,9,3,20,'B',1544,0,90,NULL,37);
INSERT INTO heads VALUES (214,97,61,3,20,'D',3186,0,69,NULL,37);
INSERT INTO heads VALUES (215,97,61,3,20,'B',3186,0,69,NULL,37);
INSERT INTO heads VALUES (216,44,29,1,20,'B',1761,10,75,NULL,37);
INSERT INTO heads VALUES (217,95,9,3,26,'B',1614,0,88,NULL,37);
INSERT INTO heads VALUES (218,97,10,3,26,'B',2385,0,77,NULL,37);
INSERT INTO heads VALUES (219,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (220,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (221,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (222,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (223,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (224,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (225,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (226,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (227,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (228,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (229,0,0,0,0,'',0,0,0,NULL,37);
INSERT INTO heads VALUES (230,83,103,0,32,'E',3512,0,65.5,NULL,38);
INSERT INTO heads VALUES (231,168,110,12,34,'B',1609,0,88,NULL,38);
INSERT INTO heads VALUES (232,78,111,0,34,'B',2231,0,78.5,NULL,38);
INSERT INTO heads VALUES (233,117,112,0,34,'B',1909,0,82,NULL,38);
INSERT INTO heads VALUES (234,155,77,0,34,'B',1802,0,84,NULL,38);
INSERT INTO heads VALUES (235,169,113,12,34,'B',4001,10,50.5,NULL,38);
INSERT INTO heads VALUES (236,170,114,12,34,'D',6183,0,39,NULL,38);
INSERT INTO heads VALUES (237,171,73,12,34,'D',3603,0,64.5,NULL,38);
INSERT INTO heads VALUES (238,172,115,12,34,'D',2874,0,72,NULL,38);
INSERT INTO heads VALUES (239,136,116,12,34,'D',2790,0,73,NULL,38);
INSERT INTO heads VALUES (240,173,117,12,34,'D',2702,0,73.5,NULL,38);
INSERT INTO heads VALUES (241,116,114,0,34,'D',3105,0,69.5,NULL,38);
INSERT INTO heads VALUES (242,121,118,0,34,'D',3761,20,43,NULL,38);
INSERT INTO heads VALUES (243,162,107,0,34,'D',3640,0,64.5,NULL,38);
INSERT INTO heads VALUES (244,174,77,12,34,'D',3700,0,63.5,NULL,38);
INSERT INTO heads VALUES (245,21,119,0,36,'D',3800,0,62.5,NULL,38);
INSERT INTO heads VALUES (246,176,120,1,36,'B',1960,0,81,NULL,38);
INSERT INTO heads VALUES (247,22,119,0,36,'D',2680,0,74,NULL,38);
INSERT INTO heads VALUES (248,177,121,1,36,'D',2920,0,71.5,NULL,38);
INSERT INTO heads VALUES (249,178,122,1,36,'B',1780,10,75,NULL,38);
INSERT INTO heads VALUES (250,23,122,0,36,'B',1600,10,78,NULL,38);
INSERT INTO heads VALUES (251,167,3,16,35,'D',2404,0,76.5,NULL,38);
INSERT INTO heads VALUES (252,6,5,16,35,'B',1608,0,88,NULL,38);
INSERT INTO heads VALUES (253,179,123,16,35,'B',1838,0,84,NULL,38);
INSERT INTO heads VALUES (254,180,4,16,35,'B',3433,0,66.5,NULL,38);
INSERT INTO heads VALUES (255,181,124,16,35,'D',3588,0,65,NULL,38);
INSERT INTO heads VALUES (256,17,5,0,35,'B',2549,0,75.5,NULL,38);
INSERT INTO heads VALUES (257,6,5,16,35,'B',1625,0,88,NULL,38);
INSERT INTO heads VALUES (258,167,4,16,35,'D',1947,0,82,NULL,38);
INSERT INTO heads VALUES (259,172,125,12,37,'D',2820,10,62.5,NULL,38);
INSERT INTO heads VALUES (260,182,115,12,37,'D',3110,0,69.5,NULL,38);
INSERT INTO heads VALUES (261,183,126,12,39,'B',2372,10,67,NULL,38);
INSERT INTO heads VALUES (262,184,117,12,39,'D',3643,0,64.5,NULL,38);
INSERT INTO heads VALUES (263,185,127,12,39,'B',2483,0,76,NULL,38);
INSERT INTO heads VALUES (264,186,128,12,39,'B',3102,0,69.5,NULL,38);
INSERT INTO heads VALUES (265,187,129,12,39,'D',3898,0,62,NULL,38);
INSERT INTO heads VALUES (266,188,128,12,39,'B',2447,0,76.5,NULL,38);
INSERT INTO heads VALUES (267,189,126,12,39,'B',2108,0,79.5,NULL,38);
INSERT INTO heads VALUES (268,190,130,12,39,'F',6453,0,36,NULL,38);
INSERT INTO heads VALUES (269,83,103,0,32,'A',1201,0,115,NULL,38);
INSERT INTO heads VALUES (270,83,103,0,32,'B',1301,0,113,NULL,38);
INSERT INTO heads VALUES (271,78,40,0,32,'C',1801,0,84,NULL,38);
INSERT INTO heads VALUES (272,78,40,0,32,'D',1901,0,82,NULL,38);
INSERT INTO heads VALUES (273,25,46,0,32,'E',2501,0,75.5,NULL,38);
INSERT INTO heads VALUES (274,25,46,0,32,'F',2601,0,74.5,NULL,38);
INSERT INTO heads VALUES (275,116,131,12,41,'B',1803,0,84,NULL,38);
INSERT INTO heads VALUES (276,191,132,13,42,'C',2312,0,77.5,NULL,38);
INSERT INTO heads VALUES (277,192,97,13,42,'C',2539,0,75.5,NULL,38);
INSERT INTO heads VALUES (278,193,97,13,42,'C',3194,0,69,NULL,38);
INSERT INTO heads VALUES (279,194,132,13,42,'C',2366,0,77,NULL,38);
INSERT INTO heads VALUES (280,21,119,1,36,'D',3800,0,62.5,NULL,38);
INSERT INTO heads VALUES (281,176,120,1,36,'B',1906,0,82,NULL,38);
INSERT INTO heads VALUES (282,177,121,1,36,'D',2902,0,71.5,NULL,38);
INSERT INTO heads VALUES (283,178,122,1,36,'B',1880,10,73,NULL,38);
INSERT INTO heads VALUES (284,22,119,1,36,'D',2680,0,74,NULL,38);
INSERT INTO heads VALUES (285,195,133,15,38,'B',1700,0,86,NULL,38);
INSERT INTO heads VALUES (286,196,103,15,38,'B',1800,0,84,NULL,38);
INSERT INTO heads VALUES (287,197,134,15,38,'B',1900,0,82,NULL,38);
INSERT INTO heads VALUES (288,172,125,12,48,'D',2620,0,74.5,NULL,38);
INSERT INTO heads VALUES (289,172,125,12,48,'D',2680,10,64,NULL,38);
INSERT INTO heads VALUES (290,172,115,12,48,'D',3220,0,68.5,NULL,38);
INSERT INTO heads VALUES (291,198,135,12,48,'D',2920,10,61.5,NULL,38);
INSERT INTO heads VALUES (292,199,136,12,48,'D',2640,0,74.5,NULL,38);
INSERT INTO heads VALUES (293,200,136,12,48,'D',2780,0,73,NULL,38);
INSERT INTO heads VALUES (294,201,135,12,48,'B',2500,0,75.5,NULL,38);
INSERT INTO heads VALUES (295,178,122,1,36,'B',1600,10,78,NULL,38);
INSERT INTO heads VALUES (296,176,120,1,36,'B',1960,0,81,NULL,38);
INSERT INTO heads VALUES (297,197,134,15,38,'B',1900,0,82,NULL,38);
INSERT INTO heads VALUES (298,182,115,12,37,'D',3100,0,69.5,NULL,38);
INSERT INTO heads VALUES (299,172,125,12,37,'D',2800,10,62.5,NULL,38);
INSERT INTO heads VALUES (300,167,4,16,34,'D',2440,0,76.5,NULL,38);
INSERT INTO heads VALUES (301,65,42,7,46,'B',1568,0,89,NULL,38);
INSERT INTO heads VALUES (302,56,137,7,46,'B',2044,0,80.5,NULL,38);
INSERT INTO heads VALUES (303,51,36,7,46,'B',2638,0,74.5,NULL,38);
INSERT INTO heads VALUES (304,202,56,7,46,'B',1843,0,84,NULL,38);
INSERT INTO heads VALUES (305,203,12,7,46,'D',3437,0,66.5,NULL,38);
INSERT INTO heads VALUES (306,204,12,7,46,'D',2713,0,73.5,NULL,38);
INSERT INTO heads VALUES (307,83,1,0,34,'E',901,0,120,NULL,38);
INSERT INTO heads VALUES (308,167,4,16,35,'D',2404,0,76.5,NULL,38);
INSERT INTO heads VALUES (309,6,5,16,35,'B',1608,0,88,NULL,38);
INSERT INTO heads VALUES (310,179,123,16,35,'B',1838,0,84,NULL,38);
INSERT INTO heads VALUES (311,180,4,16,35,'D',3433,0,66.5,NULL,38);
INSERT INTO heads VALUES (312,181,124,16,35,'D',3588,0,65,NULL,38);
INSERT INTO heads VALUES (313,17,5,16,35,'B',2589,0,75,NULL,38);
INSERT INTO heads VALUES (314,6,5,16,35,'B',1625,0,88,NULL,38);
INSERT INTO heads VALUES (315,167,4,16,35,'D',1947,0,82,NULL,38);
INSERT INTO heads VALUES (316,205,16,1,53,'B',1992,0,81,NULL,38);
INSERT INTO heads VALUES (317,22,138,0,53,'B',1734,10,76,NULL,38);
INSERT INTO heads VALUES (318,206,139,1,53,'B',1790,0,85,NULL,38);
INSERT INTO heads VALUES (319,207,140,1,53,'B',1515,0,90,NULL,38);
INSERT INTO heads VALUES (320,208,141,1,53,'F',7515,0,25.5,NULL,38);
INSERT INTO heads VALUES (321,178,142,0,53,'B',1814,0,84,NULL,38);
INSERT INTO heads VALUES (322,209,143,1,53,'B',1580,0,89,NULL,38);
INSERT INTO heads VALUES (323,210,144,1,53,'B',1605,0,88,NULL,38);
INSERT INTO heads VALUES (324,211,139,1,53,'B',1698,0,87,NULL,38);
INSERT INTO heads VALUES (325,26,145,0,53,'B',1756,0,85,NULL,38);
INSERT INTO heads VALUES (326,212,141,1,53,'D',3168,0,69,NULL,38);
INSERT INTO heads VALUES (327,213,16,1,53,'B',1861,0,83,NULL,38);
INSERT INTO heads VALUES (328,214,146,1,53,'F',7062,0,30,NULL,38);
INSERT INTO heads VALUES (329,89,147,0,54,'B',1312,0,113,NULL,38);
INSERT INTO heads VALUES (330,88,148,0,54,'B',1674,30,57,NULL,38);
INSERT INTO heads VALUES (331,90,149,0,54,'B',1511,0,90,NULL,38);
INSERT INTO heads VALUES (332,82,123,0,54,'B',2802,0,72.5,NULL,38);
INSERT INTO heads VALUES (333,129,24,10,54,'D',3869,0,62,NULL,38);
INSERT INTO heads VALUES (334,215,147,10,54,'B',1515,20,70,NULL,38);
INSERT INTO heads VALUES (335,27,18,0,53,'B',1377,0,109,NULL,38);
INSERT INTO heads VALUES (336,47,32,0,51,'B',1641,0,88,NULL,38);
INSERT INTO heads VALUES (337,41,26,0,51,'B',1647,0,88,NULL,38);
INSERT INTO heads VALUES (338,0,0,0,0,'',0,0,0,NULL,38);
INSERT INTO heads VALUES (339,0,0,0,0,'',0,0,0,NULL,38);
INSERT INTO heads VALUES (340,22,139,0,55,'B',1665,0,87,NULL,38);
INSERT INTO heads VALUES (341,211,139,0,55,'B',1607,0,88,NULL,38);
INSERT INTO heads VALUES (342,208,141,0,55,'D',3327,0,67.5,NULL,38);
INSERT INTO heads VALUES (343,206,139,0,55,'B',1760,10,75,NULL,38);
INSERT INTO heads VALUES (344,216,150,1,55,'B',1407,0,107,NULL,38);
INSERT INTO heads VALUES (345,212,141,0,55,'B',1927,0,82,NULL,38);
INSERT INTO heads VALUES (346,47,32,0,55,'B',1682,0,87,NULL,38);
INSERT INTO heads VALUES (347,43,32,0,55,'B',1785,10,75,NULL,38);
INSERT INTO heads VALUES (348,217,135,12,56,'B',2252,0,78,NULL,38);
INSERT INTO heads VALUES (349,218,151,12,56,'D',3410,0,66.5,NULL,38);
INSERT INTO heads VALUES (350,182,115,0,56,'D',3480,0,66,NULL,38);
INSERT INTO heads VALUES (351,201,135,0,56,'B',1920,0,82,NULL,38);
INSERT INTO heads VALUES (352,200,136,0,56,'D',2750,0,73,NULL,38);
INSERT INTO heads VALUES (353,199,136,0,56,'D',2610,0,74.5,NULL,38);
INSERT INTO heads VALUES (354,219,125,12,56,'D',2670,0,74,NULL,38);
INSERT INTO heads VALUES (355,199,136,0,56,'B',2310,0,77.5,NULL,38);
INSERT INTO heads VALUES (356,200,136,0,56,'B',2410,0,76.5,NULL,38);
INSERT INTO heads VALUES (357,220,152,12,56,'D',2980,0,71,NULL,38);
INSERT INTO heads VALUES (358,220,152,0,56,'B',2860,0,72,NULL,38);
INSERT INTO heads VALUES (359,6,5,0,58,'B',1513,0,90,NULL,38);
INSERT INTO heads VALUES (360,221,153,16,58,'D',3038,0,70.5,NULL,38);
INSERT INTO heads VALUES (361,167,3,0,58,'D',2319,0,77.5,NULL,38);
INSERT INTO heads VALUES (362,222,4,16,58,'D',2417,0,76.5,NULL,38);
INSERT INTO heads VALUES (363,223,3,16,58,'D',2602,0,74.5,NULL,38);
INSERT INTO heads VALUES (364,224,3,16,58,'F',2903,0,71.5,NULL,38);
INSERT INTO heads VALUES (365,225,154,16,58,'F',5105,0,49.5,NULL,38);
INSERT INTO heads VALUES (366,226,155,16,58,'F',2903,0,71.5,NULL,38);
INSERT INTO heads VALUES (367,227,156,16,58,'D',4403,0,56.5,NULL,38);
INSERT INTO heads VALUES (368,228,157,16,58,'B',1704,0,86,NULL,38);
INSERT INTO heads VALUES (369,3,158,0,58,'B',1622,0,88,NULL,38);
INSERT INTO heads VALUES (370,11,153,0,58,'B',1653,0,87,NULL,38);
INSERT INTO heads VALUES (371,229,159,16,58,'B',1509,0,90,NULL,38);
INSERT INTO heads VALUES (372,230,159,16,58,'F',4543,0,55.5,NULL,38);
INSERT INTO heads VALUES (373,231,153,16,58,'B',1940,0,82,NULL,38);
INSERT INTO heads VALUES (374,15,159,0,58,'B',2005,1,79.5,NULL,38);
INSERT INTO heads VALUES (375,232,156,16,58,'F',8900,0,11.5,NULL,38);
INSERT INTO heads VALUES (376,83,103,0,61,'A',1230,10,104,NULL,25);
INSERT INTO heads VALUES (377,170,40,0,61,'B',1420,0,106,NULL,25);
INSERT INTO heads VALUES (378,78,46,0,61,'C',1934,0,82,NULL,25);
INSERT INTO heads VALUES (379,83,103,0,61,'A',0,0,0,NULL,25);
INSERT INTO heads VALUES (380,78,46,0,59,'C',1773,0,85,NULL,25);
INSERT INTO heads VALUES (381,25,99,0,59,'B',1420,0,106,NULL,25);
INSERT INTO heads VALUES (382,200,118,0,59,'E',2340,10,67.5,NULL,25);
INSERT INTO heads VALUES (383,168,110,0,34,'B',1690,0,87,NULL,38);
INSERT INTO heads VALUES (384,170,114,0,34,'D',6183,0,39,NULL,38);
INSERT INTO heads VALUES (385,171,73,0,34,'D',3603,0,64.5,NULL,38);
INSERT INTO heads VALUES (386,172,115,0,34,'D',2874,0,72,NULL,38);
INSERT INTO heads VALUES (387,136,160,0,34,'D',2790,0,73,NULL,38);
INSERT INTO heads VALUES (388,78,110,0,34,'B',2231,0,78.5,NULL,38);
INSERT INTO heads VALUES (389,117,112,0,34,'B',1990,0,81,NULL,38);
INSERT INTO heads VALUES (390,173,117,0,34,'D',2720,0,73.5,NULL,38);
INSERT INTO heads VALUES (391,116,114,0,34,'D',3150,0,69,NULL,38);
INSERT INTO heads VALUES (392,155,77,0,34,'B',1820,0,84,NULL,38);
INSERT INTO heads VALUES (393,121,118,0,34,'D',3761,20,43,NULL,38);
INSERT INTO heads VALUES (394,169,113,0,34,'B',4001,10,50.5,NULL,38);
INSERT INTO heads VALUES (395,162,107,0,34,'D',3640,0,64.5,NULL,38);
INSERT INTO heads VALUES (396,174,77,0,34,'D',3700,0,63.5,NULL,38);
INSERT INTO heads VALUES (397,87,157,0,59,'B',1250,0,115,NULL,25);
INSERT INTO heads VALUES (398,183,126,12,39,'B',2372,10,67,NULL,38);
INSERT INTO heads VALUES (399,184,117,12,39,'D',3643,0,64.5,NULL,38);
INSERT INTO heads VALUES (400,185,127,12,39,'B',2483,0,76,NULL,38);
INSERT INTO heads VALUES (401,186,128,12,39,'B',3102,0,69.5,NULL,38);
INSERT INTO heads VALUES (402,187,128,12,39,'D',3898,0,62,NULL,38);
INSERT INTO heads VALUES (403,188,128,12,39,'B',2447,0,76.5,NULL,38);
INSERT INTO heads VALUES (404,189,126,12,39,'B',2103,0,79.5,NULL,38);
INSERT INTO heads VALUES (405,190,130,12,39,'F',6453,0,36,NULL,38);
INSERT INTO heads VALUES (406,92,161,3,45,'D',2770,0,73,NULL,38);
INSERT INTO heads VALUES (407,6,5,16,35,'B',1680,0,87,NULL,38);
INSERT INTO heads VALUES (408,233,123,16,35,'F',3929,0,61.5,NULL,38);
INSERT INTO heads VALUES (409,234,124,16,35,'F',3490,0,66,NULL,38);
INSERT INTO heads VALUES (410,235,162,16,35,'F',2645,10,64.5,NULL,38);
INSERT INTO heads VALUES (411,236,3,16,35,'F',-1000,0,0,NULL,38);
INSERT INTO heads VALUES (412,206,139,1,55,'B',1797,0,85,NULL,38);
INSERT INTO heads VALUES (413,211,139,1,55,'B',1623,0,88,NULL,38);
INSERT INTO heads VALUES (414,216,150,1,55,'B',1484,0,102,NULL,38);
INSERT INTO heads VALUES (415,208,141,1,55,'D',3463,10,56,NULL,38);
INSERT INTO heads VALUES (416,29,70,0,63,'D',5181,10,39,NULL,38);
INSERT INTO heads VALUES (417,32,70,0,63,'D',3672,0,64,NULL,38);
INSERT INTO heads VALUES (418,237,19,8,63,'F',4404,0,56.5,NULL,38);
INSERT INTO heads VALUES (419,30,71,0,63,'B',1768,0,85,NULL,38);
INSERT INTO heads VALUES (420,238,163,8,63,'D',3744,0,63.5,NULL,38);
INSERT INTO heads VALUES (421,32,164,0,68,'D',3315,0,67.5,NULL,38);
INSERT INTO heads VALUES (422,239,165,8,68,'B',1915,0,82,NULL,38);
INSERT INTO heads VALUES (423,240,166,8,68,'B',2122,0,79.5,NULL,38);
INSERT INTO heads VALUES (424,241,167,8,68,'B',2186,0,79,NULL,38);
INSERT INTO heads VALUES (425,58,40,0,68,'B',1575,0,89,NULL,38);
INSERT INTO heads VALUES (426,30,19,0,68,'B',1928,0,82,NULL,38);
INSERT INTO heads VALUES (427,242,19,8,68,'F',4796,0,53,NULL,38);
INSERT INTO heads VALUES (428,101,59,0,40,'D',2681,10,64,NULL,38);
INSERT INTO heads VALUES (429,102,168,3,40,'D',2531,0,75.5,NULL,38);
INSERT INTO heads VALUES (430,93,58,3,40,'B',1408,20,87,NULL,38);
INSERT INTO heads VALUES (431,6,5,16,58,'B',1304,0,113,NULL,38);
INSERT INTO heads VALUES (432,167,3,16,58,'D',2135,0,79.5,NULL,38);
INSERT INTO heads VALUES (433,12,88,16,58,'B',1518,0,90,NULL,38);
INSERT INTO heads VALUES (434,231,153,16,58,'B',1799,0,85,NULL,38);
INSERT INTO heads VALUES (435,243,169,16,58,'D',3999,0,61,NULL,38);
INSERT INTO heads VALUES (436,89,147,10,54,'B',1312,0,113,NULL,38);
INSERT INTO heads VALUES (437,129,24,10,54,'D',3966,0,61,NULL,38);
INSERT INTO heads VALUES (438,215,147,10,54,'B',1515,0,90,NULL,38);
INSERT INTO heads VALUES (439,244,24,10,54,'D',3131,0,69.5,NULL,38);
INSERT INTO heads VALUES (440,6,5,0,67,'B',1340,0,112,NULL,38);
INSERT INTO heads VALUES (441,167,3,0,67,'B',2135,0,79.5,NULL,38);
INSERT INTO heads VALUES (442,12,88,0,67,'B',1518,0,90,NULL,38);
INSERT INTO heads VALUES (443,231,170,0,67,'B',1799,0,85,NULL,38);
INSERT INTO heads VALUES (444,11,153,0,67,'B',1777,0,85,NULL,38);
INSERT INTO heads VALUES (445,245,171,16,67,'B',1388,0,109,NULL,38);
INSERT INTO heads VALUES (446,246,169,16,67,'D',3999,0,61,NULL,38);
INSERT INTO heads VALUES (447,247,172,16,67,'D',3473,0,66,NULL,38);
INSERT INTO heads VALUES (448,248,155,16,67,'F',4436,10,46.5,NULL,38);
INSERT INTO heads VALUES (449,15,173,16,67,'B',1628,0,88,NULL,38);
INSERT INTO heads VALUES (450,225,154,16,67,'F',5009,0,50.5,NULL,38);
INSERT INTO heads VALUES (451,249,153,16,67,'D',3658,0,64,NULL,38);
INSERT INTO heads VALUES (452,145,96,16,67,'B',2706,0,73.5,NULL,38);
INSERT INTO heads VALUES (453,250,174,16,67,'D',2065,0,80,NULL,38);
INSERT INTO heads VALUES (454,251,175,16,67,'D',3093,0,70,NULL,38);
INSERT INTO heads VALUES (455,252,176,16,67,'D',3148,10,59.5,NULL,38);
INSERT INTO heads VALUES (456,253,177,16,67,'D',3592,0,65,NULL,38);
INSERT INTO heads VALUES (457,116,114,0,57,'B',1551,0,89,NULL,38);
INSERT INTO heads VALUES (458,254,178,16,67,'D',2890,0,72,NULL,38);
INSERT INTO heads VALUES (459,255,179,16,67,'D',3527,10,55.5,NULL,38);
INSERT INTO heads VALUES (460,256,180,16,67,'B',1535,10,80,NULL,38);
INSERT INTO heads VALUES (461,257,181,16,67,'D',3074,0,70,NULL,38);
INSERT INTO heads VALUES (462,258,182,16,67,'D',3277,0,68,NULL,38);
INSERT INTO heads VALUES (463,167,3,16,67,'D',2135,0,79.5,NULL,38);
INSERT INTO heads VALUES (464,259,88,16,62,'D',4524,0,55.5,NULL,38);
INSERT INTO heads VALUES (465,15,173,0,62,'B',1428,0,106,NULL,38);
INSERT INTO heads VALUES (466,12,88,0,62,'B',1440,0,105,NULL,38);
INSERT INTO heads VALUES (467,11,88,0,62,'B',1519,1,89,NULL,38);
INSERT INTO heads VALUES (468,260,88,16,62,'D',3918,0,61.5,NULL,38);
INSERT INTO heads VALUES (469,261,183,16,62,'D',3768,0,63,NULL,38);
INSERT INTO heads VALUES (470,262,88,16,62,'D',3481,1,65,NULL,38);
INSERT INTO heads VALUES (471,263,184,5,69,'D',0,0,0,NULL,38);
INSERT INTO heads VALUES (472,264,185,13,69,'D',5256,0,48,NULL,38);
INSERT INTO heads VALUES (473,210,144,1,70,'B',1564,10,79,NULL,38);
INSERT INTO heads VALUES (474,265,186,1,70,'D',3193,0,69,NULL,38);
INSERT INTO heads VALUES (475,207,187,0,70,'B',1321,0,113,NULL,38);
INSERT INTO heads VALUES (476,208,188,0,70,'D',3380,0,67,NULL,38);
INSERT INTO heads VALUES (477,266,189,1,70,'B',2680,0,74,NULL,38);
INSERT INTO heads VALUES (478,209,143,1,70,'B',1540,0,90,NULL,38);
INSERT INTO heads VALUES (479,267,190,1,70,'B',1958,0,81,NULL,38);
INSERT INTO heads VALUES (480,22,16,1,70,'B',2004,0,80.5,NULL,38);
INSERT INTO heads VALUES (481,211,139,0,72,'B',1696,10,77,NULL,38);
INSERT INTO heads VALUES (482,22,138,0,72,'B',1586,0,89,NULL,38);
INSERT INTO heads VALUES (483,205,16,0,72,'B',2002,10,70.5,NULL,38);
INSERT INTO heads VALUES (484,178,138,0,72,'B',2045,0,80.5,NULL,38);
INSERT INTO heads VALUES (485,206,174,0,72,'B',4015,0,60.5,NULL,38);
INSERT INTO heads VALUES (486,208,25,0,72,'B',3165,0,69,NULL,38);
INSERT INTO heads VALUES (487,210,144,0,72,'B',1575,0,89,NULL,38);
INSERT INTO heads VALUES (488,209,143,0,72,'B',1581,0,89,NULL,38);
INSERT INTO heads VALUES (489,40,25,0,72,'B',1764,0,85,NULL,38);
INSERT INTO heads VALUES (490,207,187,0,72,'B',1409,10,97,NULL,38);
INSERT INTO heads VALUES (491,95,9,0,43,'B',1410,0,106,NULL,38);
INSERT INTO heads VALUES (492,95,9,0,43,'B',1410,0,106,NULL,38);
INSERT INTO heads VALUES (493,92,161,0,43,'D',2839,10,62.5,NULL,38);
INSERT INTO heads VALUES (494,95,9,0,43,'B',1410,20,86,NULL,38);
INSERT INTO heads VALUES (495,268,10,3,43,'B',1665,20,67,NULL,38);
INSERT INTO heads VALUES (496,6,5,0,71,'B',1590,0,89,NULL,38);
INSERT INTO heads VALUES (497,167,3,0,71,'B',2280,0,78,NULL,38);
INSERT INTO heads VALUES (498,226,3,0,71,'B',4810,0,52.5,NULL,38);
INSERT INTO heads VALUES (499,269,5,16,71,'F',3280,0,68,NULL,38);
INSERT INTO heads VALUES (500,270,3,16,71,'D',3500,0,65.5,NULL,38);
INSERT INTO heads VALUES (501,225,154,0,71,'F',4937,0,51.5,NULL,38);
INSERT INTO heads VALUES (502,167,3,0,71,'D',2313,0,77.5,NULL,38);
INSERT INTO heads VALUES (503,167,3,0,71,'D',2313,0,77.5,NULL,38);
INSERT INTO heads VALUES (504,272,192,16,71,'D',3835,0,62.5,NULL,38);
INSERT INTO heads VALUES (505,273,193,16,71,'B',2236,10,68.5,NULL,38);
INSERT INTO heads VALUES (506,12,194,0,71,'D',2824,0,72.5,NULL,38);
INSERT INTO heads VALUES (507,11,153,0,71,'B',1623,0,88,NULL,38);
INSERT INTO heads VALUES (508,274,195,16,71,'B',1734,0,86,NULL,38);
INSERT INTO heads VALUES (509,3,196,0,71,'B',1779,0,85,NULL,38);
INSERT INTO heads VALUES (510,6,5,0,71,'B',1490,0,101,NULL,38);
INSERT INTO heads VALUES (511,233,3,0,71,'D',3237,0,68.5,NULL,38);
INSERT INTO heads VALUES (512,275,3,16,71,'D',3354,20,47,NULL,38);
INSERT INTO heads VALUES (513,253,177,0,71,'B',2075,10,70,NULL,38);
INSERT INTO heads VALUES (514,251,175,0,71,'D',3008,0,70.5,NULL,38);
INSERT INTO heads VALUES (515,17,197,0,71,'D',2549,0,75.5,NULL,38);
INSERT INTO heads VALUES (516,226,4,16,71,'D',4810,0,52.5,NULL,38);
INSERT INTO heads VALUES (517,274,195,0,71,'B',1734,0,86,NULL,38);
INSERT INTO heads VALUES (518,12,194,0,71,'D',2824,0,72.5,NULL,38);
INSERT INTO heads VALUES (519,206,198,0,72,'D',4015,0,60.5,NULL,38);
INSERT INTO heads VALUES (520,83,103,0,73,'A',1220,0,115,NULL,39);
INSERT INTO heads VALUES (521,114,74,0,74,'D',2506,0,75.5,NULL,39);
INSERT INTO heads VALUES (522,114,74,0,74,'C',2171,10,69,NULL,39);
INSERT INTO heads VALUES (523,114,74,0,74,'B',1925,0,82,NULL,39);
INSERT INTO heads VALUES (524,116,199,0,74,'D',3096,0,70,NULL,39);
INSERT INTO heads VALUES (525,116,74,0,74,'D',2742,10,63.5,NULL,39);
INSERT INTO heads VALUES (526,171,73,0,74,'D',3453,0,66,NULL,39);
INSERT INTO heads VALUES (527,171,73,0,74,'B',2505,0,75.5,NULL,39);
INSERT INTO heads VALUES (528,117,112,0,74,'D',3671,0,64,NULL,39);
INSERT INTO heads VALUES (529,117,112,0,74,'B',2550,10,65,NULL,39);
INSERT INTO heads VALUES (530,276,112,12,74,'D',4309,20,37.5,NULL,39);
INSERT INTO heads VALUES (531,277,112,10,74,'D',3853,30,32,NULL,39);
INSERT INTO heads VALUES (532,174,199,0,74,'D',3199,0,69,NULL,39);
INSERT INTO heads VALUES (533,278,112,12,74,'F',3546,10,55.5,NULL,39);
INSERT INTO heads VALUES (534,247,200,0,76,'E',2313,0,77.5,NULL,39);
INSERT INTO heads VALUES (535,251,175,0,76,'C',3119,0,69.5,NULL,39);
INSERT INTO heads VALUES (536,246,201,0,76,'C',4150,0,59,NULL,39);
INSERT INTO heads VALUES (537,255,202,0,76,'C',4255,10,48,NULL,39);
INSERT INTO heads VALUES (538,279,177,16,76,'C',3436,0,66.5,NULL,39);
INSERT INTO heads VALUES (539,280,203,16,76,'C',3050,0,70,NULL,39);
INSERT INTO heads VALUES (540,17,203,0,76,'C',2929,0,71.5,NULL,39);
INSERT INTO heads VALUES (541,281,177,16,76,'C',4434,10,46.5,NULL,39);
INSERT INTO heads VALUES (542,275,204,0,77,'C',2468,0,76,NULL,39);
INSERT INTO heads VALUES (543,181,124,0,77,'A',2792,0,73,NULL,39);
INSERT INTO heads VALUES (544,274,162,0,77,'A',2147,0,79.5,NULL,39);
INSERT INTO heads VALUES (545,180,124,0,77,'C',5530,0,45.5,NULL,39);
INSERT INTO heads VALUES (546,251,175,0,77,'C',2434,0,76.5,NULL,39);
INSERT INTO heads VALUES (547,279,177,0,77,'A',1699,0,87,NULL,39);
INSERT INTO heads VALUES (548,282,124,16,77,'C',2839,0,72.5,NULL,39);
INSERT INTO heads VALUES (549,283,123,16,77,'A',1760,0,85,NULL,39);
INSERT INTO heads VALUES (550,116,205,12,78,'C',2100,0,79.5,NULL,39);
INSERT INTO heads VALUES (551,171,73,12,78,'C',2600,0,74.5,NULL,39);
INSERT INTO heads VALUES (552,174,73,12,78,'C',2800,0,72.5,NULL,39);
INSERT INTO heads VALUES (553,25,27,0,75,'A',1485,0,91,NULL,39);
INSERT INTO heads VALUES (554,42,27,0,75,'A',1325,0,108,NULL,39);
INSERT INTO heads VALUES (555,284,96,16,79,'C',2328,0,77.5,NULL,39);
INSERT INTO heads VALUES (556,11,96,0,79,'C',2375,0,77,NULL,39);
INSERT INTO heads VALUES (557,285,96,16,79,'C',2119,0,79.5,NULL,39);
INSERT INTO heads VALUES (558,15,173,0,79,'A',1397,0,103,NULL,39);
INSERT INTO heads VALUES (559,286,206,16,79,'A',1510,0,90,NULL,39);
INSERT INTO heads VALUES (560,191,207,0,80,'C',2069,0,80,NULL,39);
INSERT INTO heads VALUES (561,287,208,13,80,'C',2369,0,77,NULL,39);
INSERT INTO heads VALUES (562,288,209,13,80,'C',2218,0,78.5,NULL,39);
INSERT INTO heads VALUES (563,289,210,13,80,'C',2168,0,79,NULL,39);
INSERT INTO heads VALUES (564,290,208,13,80,'C',2972,0,71,NULL,39);
INSERT INTO heads VALUES (565,232,96,0,79,'F',3838,0,62.5,NULL,39);
INSERT INTO heads VALUES (566,98,64,0,81,'B',1920,10,72,NULL,39);
INSERT INTO heads VALUES (567,246,201,0,76,'C',4150,10,49,NULL,39);
INSERT INTO heads VALUES (568,27,18,1,82,'A',1210,0,115,NULL,39);
INSERT INTO heads VALUES (569,205,16,0,82,'A',1397,0,103,NULL,39);
INSERT INTO heads VALUES (570,26,145,0,82,'A',1272,0,111,NULL,39);
INSERT INTO heads VALUES (571,83,103,0,84,'D',1652,0,87,NULL,39);
INSERT INTO heads VALUES (572,78,195,0,84,'A',1652,0,87,NULL,39);
INSERT INTO heads VALUES (573,116,205,0,83,'C',2480,0,76,NULL,39);
INSERT INTO heads VALUES (574,291,211,12,83,'D',2571,0,75,NULL,39);
INSERT INTO heads VALUES (575,292,211,12,83,'D',2966,10,71,NULL,39);
INSERT INTO heads VALUES (576,293,212,12,83,'F',4259,0,95,NULL,39);
INSERT INTO heads VALUES (577,294,213,12,83,'D',3579,10,55,NULL,39);
INSERT INTO heads VALUES (578,117,112,0,83,'B',2296,0,78,NULL,39);
INSERT INTO heads VALUES (579,117,112,0,83,'A',2104,0,79.5,NULL,39);
INSERT INTO heads VALUES (580,276,213,0,83,'C',2517,0,75.5,NULL,39);
INSERT INTO heads VALUES (581,291,212,0,83,'C',2053,0,80,NULL,39);
INSERT INTO heads VALUES (582,25,40,0,84,'A',1402,0,92,NULL,39);
INSERT INTO heads VALUES (583,292,211,12,83,'D',2966,10,61,NULL,39);
INSERT INTO heads VALUES (584,293,212,12,83,'D',7259,0,28,NULL,39);
INSERT INTO heads VALUES (585,295,214,1,85,'C',2147,0,79.5,NULL,39);
INSERT INTO heads VALUES (586,296,211,1,85,'A',1441,0,92,NULL,39);
INSERT INTO heads VALUES (587,297,27,1,85,'A',1212,0,115,NULL,39);
INSERT INTO heads VALUES (588,44,215,0,85,'E',515,0,100,NULL,39);
INSERT INTO heads VALUES (589,42,27,0,85,'A',1280,0,111,NULL,39);
INSERT INTO heads VALUES (590,191,207,0,91,'C',2180,0,79,NULL,39);
INSERT INTO heads VALUES (591,298,216,13,91,'E',1280,10,85,NULL,39);
INSERT INTO heads VALUES (592,289,210,0,91,'C',2660,0,74,NULL,39);
INSERT INTO heads VALUES (593,299,217,13,91,'C',2490,0,76,NULL,39);
INSERT INTO heads VALUES (594,300,209,13,91,'C',2610,0,74.5,NULL,39);
INSERT INTO heads VALUES (595,98,64,0,81,'D',1812,10,74,NULL,39);
INSERT INTO heads VALUES (596,103,218,0,81,'B',1652,0,87,NULL,39);
INSERT INTO heads VALUES (597,301,10,3,81,'D',2748,0,73.5,NULL,39);
INSERT INTO heads VALUES (598,302,64,3,81,'D',6919,0,31.5,NULL,39);
INSERT INTO heads VALUES (599,303,219,3,81,'B',3541,0,65.5,NULL,39);
INSERT INTO heads VALUES (600,304,220,3,81,'D',2003,0,80.5,NULL,39);
INSERT INTO heads VALUES (601,305,218,3,81,'D',2054,10,70,NULL,39);
INSERT INTO heads VALUES (602,95,9,0,81,'B',1693,0,87,NULL,39);
INSERT INTO heads VALUES (603,306,219,3,81,'B',2541,20,55.5,NULL,39);
INSERT INTO heads VALUES (604,307,221,1,81,'B',1748,0,86,NULL,39);
INSERT INTO heads VALUES (605,25,27,0,93,'A',1390,0,103,NULL,39);
INSERT INTO heads VALUES (606,42,27,0,93,'A',1231,0,114,NULL,39);
INSERT INTO heads VALUES (607,42,90,0,90,'A',1109,0,118,NULL,39);
INSERT INTO heads VALUES (608,308,211,1,90,'A',1418,0,92,NULL,39);
INSERT INTO heads VALUES (609,309,222,16,94,'C',2081,10,70,NULL,39);
INSERT INTO heads VALUES (610,310,223,16,94,'E',572,0,100,NULL,39);
INSERT INTO heads VALUES (611,11,153,0,94,'A',1409,0,92,NULL,39);
INSERT INTO heads VALUES (612,12,88,0,94,'A',1297,0,110,NULL,39);
INSERT INTO heads VALUES (613,226,154,0,94,'C',3681,10,54,NULL,39);
INSERT INTO heads VALUES (614,274,170,0,94,'A',1400,0,92,NULL,39);
INSERT INTO heads VALUES (615,311,224,16,94,'C',2715,0,73.5,NULL,39);
INSERT INTO heads VALUES (616,286,206,0,94,'A',1410,0,92,NULL,39);
INSERT INTO heads VALUES (617,15,173,0,94,'A',1403,0,92,NULL,39);
INSERT INTO heads VALUES (618,312,196,16,94,'C',2825,0,72.5,NULL,39);
INSERT INTO heads VALUES (619,248,225,0,94,'C',2299,0,78,NULL,39);
INSERT INTO heads VALUES (620,206,226,0,92,'A',1550,0,89,NULL,39);
INSERT INTO heads VALUES (621,24,25,0,92,'A',1490,0,91,NULL,39);
INSERT INTO heads VALUES (622,205,16,0,92,'A',1480,0,91,NULL,39);
INSERT INTO heads VALUES (623,22,138,0,92,'A',1600,10,78,NULL,39);
INSERT INTO heads VALUES (624,27,18,0,92,'A',1210,0,115,NULL,39);
INSERT INTO heads VALUES (625,26,145,0,92,'A',1480,0,91,NULL,39);
INSERT INTO heads VALUES (626,313,227,1,96,'C',2365,0,77,NULL,39);
INSERT INTO heads VALUES (627,210,228,0,96,'A',1244,0,114,NULL,39);
INSERT INTO heads VALUES (628,206,138,0,96,'A',1350,0,105,NULL,39);
INSERT INTO heads VALUES (629,206,138,0,96,'A',1284,0,111,NULL,39);
INSERT INTO heads VALUES (630,314,229,1,96,'C',2250,1,77,NULL,39);
INSERT INTO heads VALUES (631,315,227,1,96,'E',3034,0,70.5,NULL,39);
INSERT INTO heads VALUES (632,316,230,1,96,'C',2213,0,78.5,NULL,39);
INSERT INTO heads VALUES (633,314,229,0,96,'A',2250,10,68,NULL,39);
INSERT INTO heads VALUES (634,317,190,1,96,'C',2256,0,78,NULL,39);
INSERT INTO heads VALUES (635,265,186,0,96,'C',2175,0,79,NULL,39);
INSERT INTO heads VALUES (636,209,231,0,96,'A',1325,0,108,NULL,39);
INSERT INTO heads VALUES (637,207,140,0,96,'A',1156,0,117,NULL,39);
INSERT INTO heads VALUES (638,208,138,0,96,'A',1331,20,87,NULL,39);
INSERT INTO heads VALUES (639,26,226,0,96,'A',1397,10,93,NULL,39);
INSERT INTO heads VALUES (640,205,226,0,96,'A',1378,10,94,NULL,39);
INSERT INTO heads VALUES (641,26,226,0,96,'A',1293,10,100,NULL,39);
INSERT INTO heads VALUES (642,265,186,0,96,'C',2366,0,77,NULL,39);
INSERT INTO heads VALUES (643,314,229,0,96,'C',2119,0,79.5,NULL,39);
INSERT INTO heads VALUES (644,314,229,0,96,'C',2250,10,68,NULL,39);
INSERT INTO heads VALUES (645,205,226,0,96,'A',1272,0,111,NULL,39);
INSERT INTO heads VALUES (646,208,138,0,96,'A',1369,10,95,NULL,39);
INSERT INTO heads VALUES (647,26,226,0,96,'A',1206,0,115,NULL,39);
INSERT INTO heads VALUES (648,210,52,0,96,'A',1228,10,105,NULL,39);
INSERT INTO heads VALUES (649,210,228,0,96,'A',1228,10,105,NULL,39);
INSERT INTO heads VALUES (650,210,228,0,96,'A',1281,0,111,NULL,39);
INSERT INTO heads VALUES (651,167,3,0,95,'C',1819,10,74,NULL,39);
INSERT INTO heads VALUES (652,222,5,0,95,'C',1649,0,88,NULL,39);
INSERT INTO heads VALUES (653,270,3,0,95,'C',1860,10,73,NULL,39);
INSERT INTO heads VALUES (654,12,194,0,95,'C',2340,0,77.5,NULL,39);
INSERT INTO heads VALUES (655,319,233,16,95,'C',2482,0,76,NULL,39);
INSERT INTO heads VALUES (656,11,88,0,95,'A',1569,0,89,NULL,39);
INSERT INTO heads VALUES (657,12,88,0,95,'A',1276,0,111,NULL,39);
INSERT INTO heads VALUES (658,320,5,16,95,'A',1449,0,92,NULL,39);
INSERT INTO heads VALUES (659,27,18,0,101,'A',1200,0,116,NULL,39);
INSERT INTO heads VALUES (660,27,18,0,101,'A',1099,0,119,NULL,39);
INSERT INTO heads VALUES (661,205,16,0,101,'A',1544,0,90,NULL,39);
INSERT INTO heads VALUES (662,26,145,0,101,'A',1248,0,114,NULL,39);
INSERT INTO heads VALUES (663,22,145,0,101,'A',1384,0,104,NULL,39);
INSERT INTO heads VALUES (664,17,234,0,100,'A',2075,0,80,NULL,39);
INSERT INTO heads VALUES (665,275,235,0,100,'C',2314,0,77.5,NULL,39);
INSERT INTO heads VALUES (666,6,5,0,100,'A',1240,0,114,NULL,39);
INSERT INTO heads VALUES (667,167,3,0,100,'C',1619,0,88,NULL,39);
INSERT INTO heads VALUES (668,11,153,0,100,'A',1628,0,88,NULL,39);
INSERT INTO heads VALUES (669,11,153,0,100,'A',1628,0,88,NULL,39);
INSERT INTO heads VALUES (670,279,177,0,100,'C',2173,0,79,NULL,39);
INSERT INTO heads VALUES (671,251,175,0,100,'C',2220,0,78.5,NULL,39);
INSERT INTO heads VALUES (672,248,196,0,100,'C',2241,0,78.5,NULL,39);
INSERT INTO heads VALUES (673,179,124,0,100,'A',2378,0,77,NULL,39);
INSERT INTO heads VALUES (674,321,159,16,100,'E',1900,0,82,NULL,39);
INSERT INTO heads VALUES (675,322,236,13,102,'A',1327,0,108,NULL,40);
INSERT INTO heads VALUES (676,322,236,0,102,'B',1298,0,115,NULL,40);
INSERT INTO heads VALUES (677,6,5,0,103,'A',1220,0,115,NULL,40);
INSERT INTO heads VALUES (678,312,235,0,103,'C',2140,0,79.5,NULL,40);
INSERT INTO heads VALUES (679,275,235,0,103,'C',2400,0,76.5,NULL,40);
INSERT INTO heads VALUES (680,279,177,0,103,'A',1690,0,87,NULL,40);
INSERT INTO heads VALUES (681,17,234,0,103,'A',1730,0,86,NULL,40);
INSERT INTO heads VALUES (682,323,3,16,103,'C',2069,0,80,NULL,40);
INSERT INTO heads VALUES (683,324,175,16,103,'E',90,0,100,NULL,40);
INSERT INTO heads VALUES (684,325,237,16,103,'C',2856,0,72,NULL,40);
INSERT INTO heads VALUES (685,274,234,0,103,'C',2249,0,78.5,NULL,40);
INSERT INTO heads VALUES (686,326,3,16,103,'C',1686,0,87,NULL,40);
INSERT INTO heads VALUES (687,116,72,0,104,'B',1771,0,85,NULL,40);
INSERT INTO heads VALUES (688,116,72,0,104,'A',1355,0,105,NULL,40);
INSERT INTO heads VALUES (689,327,238,12,104,'F',4896,0,52,NULL,40);
INSERT INTO heads VALUES (690,328,72,12,104,'C',2699,0,74,NULL,40);
INSERT INTO heads VALUES (691,329,72,12,104,'C',2700,0,73.5,NULL,40);
INSERT INTO heads VALUES (692,117,72,0,104,'A',1386,0,104,NULL,40);
INSERT INTO heads VALUES (693,167,3,0,105,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (694,312,239,0,105,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (695,312,240,0,105,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (696,6,5,0,105,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (697,7,6,0,105,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (698,279,177,0,105,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (699,42,239,0,105,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (700,11,241,0,105,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (701,322,236,0,102,'F',1500,0,90,NULL,40);
INSERT INTO heads VALUES (702,42,27,0,109,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (703,334,248,16,107,'E',2766,0,73,NULL,40);
INSERT INTO heads VALUES (704,335,249,16,107,'E',3119,0,69.5,NULL,40);
INSERT INTO heads VALUES (705,337,250,16,111,'C',2259,0,78,NULL,40);
INSERT INTO heads VALUES (706,338,250,16,111,'E',2456,0,76,NULL,40);
INSERT INTO heads VALUES (707,248,196,0,111,'C',2216,0,78.5,NULL,40);
INSERT INTO heads VALUES (708,11,153,0,111,'A',1634,0,88,NULL,40);
INSERT INTO heads VALUES (709,339,251,16,111,'C',2606,0,74.5,NULL,40);
INSERT INTO heads VALUES (710,340,159,16,111,'E',1178,0,97,NULL,40);
INSERT INTO heads VALUES (711,341,239,16,111,'E',2753,0,73,NULL,40);
INSERT INTO heads VALUES (712,286,252,0,111,'C',2071,0,80,NULL,40);
INSERT INTO heads VALUES (713,342,173,16,111,'C',2788,0,73,NULL,40);
INSERT INTO heads VALUES (714,259,241,0,111,'C',2818,0,72.5,NULL,40);
INSERT INTO heads VALUES (715,226,239,0,111,'C',2743,0,73.5,NULL,40);
INSERT INTO heads VALUES (716,343,145,1,112,'B',1879,0,83,NULL,40);
INSERT INTO heads VALUES (717,343,145,1,112,'B',1940,0,82,NULL,40);
INSERT INTO heads VALUES (718,344,16,1,112,'B',3700,0,63.5,NULL,40);
INSERT INTO heads VALUES (719,205,145,1,112,'B',1866,0,83,NULL,40);
INSERT INTO heads VALUES (720,345,16,1,112,'B',4228,0,58.5,NULL,40);
INSERT INTO heads VALUES (721,346,145,1,112,'B',2066,0,80,NULL,40);
INSERT INTO heads VALUES (722,347,16,1,112,'B',2200,0,78.5,NULL,40);
INSERT INTO heads VALUES (723,348,16,1,112,'D',4406,0,56.5,NULL,40);
INSERT INTO heads VALUES (724,345,16,0,112,'D',4228,0,58.5,NULL,40);
INSERT INTO heads VALUES (725,344,16,1,112,'D',3700,0,63.5,NULL,40);
INSERT INTO heads VALUES (726,207,253,1,113,'A',1387,0,104,NULL,40);
INSERT INTO heads VALUES (727,209,246,1,113,'A',1341,0,107,NULL,40);
INSERT INTO heads VALUES (728,209,246,1,113,'A',1228,0,115,NULL,40);
INSERT INTO heads VALUES (729,313,254,1,113,'C',2337,0,77.5,NULL,40);
INSERT INTO heads VALUES (730,313,254,1,113,'C',2562,0,75,NULL,40);
INSERT INTO heads VALUES (731,336,255,1,113,'A',1150,10,107,NULL,40);
INSERT INTO heads VALUES (732,336,255,1,113,'A',1122,0,118,NULL,40);
INSERT INTO heads VALUES (733,265,253,1,113,'A',1338,20,87,NULL,40);
INSERT INTO heads VALUES (734,265,253,1,113,'A',1444,0,92,NULL,40);
INSERT INTO heads VALUES (735,207,253,1,113,'A',1431,0,92,NULL,40);
INSERT INTO heads VALUES (736,349,256,1,113,'C',2196,0,79,NULL,40);
INSERT INTO heads VALUES (737,350,257,1,113,'A',1650,10,77,NULL,40);
INSERT INTO heads VALUES (738,350,257,1,113,'A',1491,10,81,NULL,40);
INSERT INTO heads VALUES (739,208,258,1,113,'A',1653,0,87,NULL,40);
INSERT INTO heads VALUES (740,206,226,1,113,'A',1370,10,94,NULL,40);
INSERT INTO heads VALUES (741,206,226,1,113,'A',1600,30,58,NULL,40);
INSERT INTO heads VALUES (742,266,245,1,113,'C',2091,10,70,NULL,40);
INSERT INTO heads VALUES (743,266,245,1,113,'C',2197,0,79,NULL,40);
INSERT INTO heads VALUES (744,210,259,1,113,'A',1309,10,99,NULL,40);
INSERT INTO heads VALUES (745,210,259,1,113,'A',1268,0,112,NULL,40);
INSERT INTO heads VALUES (746,322,236,0,117,'A',1248,0,92.52,NULL,41);
INSERT INTO heads VALUES (747,322,236,0,117,'C',1267,0,97.33,NULL,41);
INSERT INTO heads VALUES (748,42,27,0,118,'A',1362,0,91.38,NULL,41);
INSERT INTO heads VALUES (749,6,5,0,119,'A',1283,0,92.17,NULL,41);
INSERT INTO heads VALUES (750,179,123,0,119,'A',1307,0,91.93,NULL,41);
INSERT INTO heads VALUES (751,354,262,16,119,'C',3369,30,46.31,NULL,41);
INSERT INTO heads VALUES (752,355,262,16,119,'E',4867,0,101.33,NULL,41);
INSERT INTO heads VALUES (753,356,263,16,119,'E',3642,0,113.58,NULL,41);
INSERT INTO heads VALUES (754,357,235,16,119,'E',6005,0,89.95,NULL,41);
INSERT INTO heads VALUES (755,274,234,0,119,'C',2340,0,86.6,NULL,41);
INSERT INTO heads VALUES (756,233,4,0,119,'E',4658,10,93.42,NULL,41);
INSERT INTO heads VALUES (757,358,239,16,119,'E',6085,10,79.15,NULL,41);
INSERT INTO heads VALUES (758,359,124,16,119,'E',5230,0,97.7,NULL,41);
INSERT INTO heads VALUES (759,279,177,0,119,'A',1369,0,91.31,NULL,41);
INSERT INTO heads VALUES (760,167,4,0,119,'C',1831,0,91.69,NULL,41);
INSERT INTO heads VALUES (761,368,270,17,115,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (762,369,217,15,115,'E',-3000,0,0,NULL,40);
INSERT INTO heads VALUES (763,289,210,0,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (764,370,217,15,115,'E',-3000,0,0,NULL,40);
INSERT INTO heads VALUES (765,371,271,17,115,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (766,369,217,0,115,'E',-3000,0,0,NULL,40);
INSERT INTO heads VALUES (767,289,210,0,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (768,370,217,0,115,'E',-3000,0,0,NULL,40);
INSERT INTO heads VALUES (769,372,217,15,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (770,299,217,0,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (771,164,272,0,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (772,373,273,2,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (773,374,274,2,115,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (774,375,272,15,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (775,239,272,0,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (776,376,274,2,115,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (777,26,273,0,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (778,343,267,0,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (779,365,267,0,115,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (780,377,275,17,115,'E',-3000,0,0,NULL,40);
INSERT INTO heads VALUES (781,378,273,2,115,'E',-3000,0,0,NULL,40);
INSERT INTO heads VALUES (782,165,273,0,115,'E',-3000,0,0,NULL,40);
INSERT INTO heads VALUES (783,240,208,0,115,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (784,379,276,2,115,'E',-3000,0,0,NULL,40);
INSERT INTO heads VALUES (785,380,217,8,115,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (786,381,208,1,115,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (787,365,267,0,120,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (788,364,217,0,120,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (789,289,210,0,120,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (790,298,277,0,120,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (791,299,267,0,120,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (792,365,267,0,121,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (793,364,217,0,121,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (794,299,267,0,121,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (795,298,277,0,121,'C',0,0,0,NULL,40);
INSERT INTO heads VALUES (796,289,210,0,121,'A',0,0,0,NULL,40);
INSERT INTO heads VALUES (797,116,278,0,123,'C',2647,0,83.53,NULL,41);
INSERT INTO heads VALUES (798,329,72,0,123,'C',2709,0,82.91,NULL,41);
INSERT INTO heads VALUES (799,117,112,0,123,'C',2450,0,85.5,NULL,41);
INSERT INTO heads VALUES (800,117,112,0,123,'A',2250,0,82.5,NULL,41);
INSERT INTO heads VALUES (801,355,124,0,119,'E',4867,0,96.33,NULL,41);
INSERT INTO heads VALUES (802,357,263,0,119,'E',6005,0,84.95,NULL,41);
INSERT INTO heads VALUES (803,356,263,0,119,'E',3542,0,109.58,NULL,41);
INSERT INTO heads VALUES (804,233,3,0,119,'E',4658,10,88.42,NULL,41);
INSERT INTO heads VALUES (805,358,239,0,119,'E',6085,10,74.15,NULL,41);
INSERT INTO heads VALUES (806,359,124,0,119,'E',5230,0,92.7,NULL,41);
INSERT INTO heads VALUES (807,207,140,0,118,'A',1172,10,83.28,NULL,41);
INSERT INTO heads VALUES (808,382,279,1,118,'A',1496,40,50.04,NULL,41);
INSERT INTO heads VALUES (809,342,173,0,124,'A',1511,0,89.89,NULL,41);
INSERT INTO heads VALUES (810,12,194,0,124,'A',1497,0,90.03,NULL,41);
INSERT INTO heads VALUES (811,386,283,7,127,'D',3781,10,62.19,NULL,41);
INSERT INTO heads VALUES (812,279,239,0,125,'A',1610,0,88.9,NULL,41);
INSERT INTO heads VALUES (813,167,3,0,125,'C',2270,0,87.3,NULL,41);
INSERT INTO heads VALUES (814,6,5,0,125,'A',2070,0,84.3,NULL,41);
INSERT INTO heads VALUES (815,340,196,0,125,'C',2400,0,86,NULL,41);
INSERT INTO heads VALUES (816,388,225,16,125,'A',2200,0,83,NULL,41);
INSERT INTO heads VALUES (817,360,265,0,125,'C',3100,0,79,NULL,41);
INSERT INTO heads VALUES (818,341,240,16,125,'E',4720,0,97.8,NULL,41);
INSERT INTO heads VALUES (819,226,240,0,125,'C',3180,0,78.2,NULL,41);
INSERT INTO heads VALUES (820,389,3,16,125,'C',2050,0,89.5,NULL,41);
INSERT INTO heads VALUES (821,339,153,0,125,'C',2220,0,87.8,NULL,41);
INSERT INTO heads VALUES (822,279,177,0,125,'A',1610,0,88.9,NULL,41);
INSERT INTO heads VALUES (823,279,240,0,125,'A',1610,0,88.9,NULL,41);
INSERT INTO heads VALUES (824,279,240,0,125,'A',1331,0,91.69,NULL,41);
INSERT INTO heads VALUES (825,167,3,0,125,'C',1670,0,93.3,NULL,41);
INSERT INTO heads VALUES (826,6,5,0,125,'A',1287,0,92.13,NULL,41);
INSERT INTO heads VALUES (827,340,196,0,125,'C',2310,0,86.9,NULL,41);
INSERT INTO heads VALUES (828,388,225,0,125,'A',1480,0,90.2,NULL,41);
INSERT INTO heads VALUES (829,360,265,0,125,'C',2290,0,87.1,NULL,41);
INSERT INTO heads VALUES (830,341,240,0,125,'E',4522,0,99.78,NULL,41);
INSERT INTO heads VALUES (831,226,240,0,125,'C',2388,0,86.12,NULL,41);
INSERT INTO heads VALUES (832,339,153,0,125,'C',2022,0,89.78,NULL,41);
INSERT INTO heads VALUES (833,275,235,0,126,'A',1524,0,89.76,NULL,41);
INSERT INTO heads VALUES (834,390,235,16,126,'E',5021,10,84.79,NULL,41);
INSERT INTO heads VALUES (835,17,234,0,126,'A',1395,10,81.05,NULL,41);
INSERT INTO heads VALUES (836,391,209,13,128,'C',0,0,110,NULL,41);
INSERT INTO heads VALUES (837,392,277,13,128,'E',0,0,145,NULL,41);
INSERT INTO heads VALUES (838,365,267,0,128,'C',0,0,110,NULL,41);
INSERT INTO heads VALUES (839,393,194,7,130,'C',2422,0,85.78,NULL,41);
INSERT INTO heads VALUES (840,394,285,11,130,'A',1362,10,81.38,NULL,41);
INSERT INTO heads VALUES (841,395,282,16,130,'A',1557,0,89.43,NULL,41);
INSERT INTO heads VALUES (842,396,286,4,130,'C',2806,0,81.94,NULL,41);
INSERT INTO heads VALUES (843,397,286,4,130,'C',2678,0,83.22,NULL,41);
INSERT INTO heads VALUES (844,398,116,7,130,'E',4884,0,96.16,NULL,41);
INSERT INTO heads VALUES (845,6,282,0,130,'A',1388,0,91.12,NULL,41);
INSERT INTO heads VALUES (846,399,22,7,130,'C',2216,0,87.84,NULL,41);
INSERT INTO heads VALUES (847,400,287,16,130,'A',2543,0,79.57,NULL,41);
INSERT INTO heads VALUES (848,401,286,7,130,'A',1659,0,88.41,NULL,41);
INSERT INTO heads VALUES (849,30,288,0,132,'E',6930,0,75.7,NULL,41);
INSERT INTO heads VALUES (850,402,289,8,132,'E',6330,0,81.7,NULL,41);
INSERT INTO heads VALUES (851,403,289,8,132,'E',8210,0,62.9,NULL,41);
INSERT INTO heads VALUES (852,404,290,3,134,'A',1353,0,91.47,NULL,41);
INSERT INTO heads VALUES (853,405,291,3,134,'E',5062,0,94.38,NULL,41);
INSERT INTO heads VALUES (854,406,292,3,134,'C',2966,1,79.34,NULL,41);
INSERT INTO heads VALUES (855,407,220,3,134,'A',1850,0,86.5,NULL,41);
INSERT INTO heads VALUES (856,408,293,3,134,'C',3619,0,73.81,NULL,41);
INSERT INTO heads VALUES (857,409,294,3,135,'C',2338,0,86.62,NULL,41);
INSERT INTO heads VALUES (858,102,295,0,135,'C',2504,0,84.96,NULL,41);
INSERT INTO heads VALUES (859,404,290,0,135,'A',1391,0,91.09,NULL,41);
INSERT INTO heads VALUES (860,408,293,0,135,'C',4494,0,65.06,NULL,41);
INSERT INTO heads VALUES (861,409,290,0,135,'A',1728,1,86.72,NULL,41);
INSERT INTO heads VALUES (862,407,296,0,135,'E',6390,2,79.1,NULL,41);
INSERT INTO heads VALUES (863,322,236,0,136,'A',1002,0,94.98,NULL,42);
INSERT INTO heads VALUES (864,322,236,0,136,'A',1141,0,93.59,NULL,42);
INSERT INTO heads VALUES (865,322,236,0,136,'A',1141,0,93.59,NULL,42);
INSERT INTO heads VALUES (866,322,236,0,136,'A',1021,0,94.79,NULL,42);
INSERT INTO heads VALUES (867,410,297,8,132,'E',4575,0,99.25,NULL,41);
INSERT INTO heads VALUES (868,411,289,8,132,'E',6244,0,82.56,NULL,41);
INSERT INTO heads VALUES (869,30,288,0,132,'E',6453,0,80.47,NULL,41);
INSERT INTO heads VALUES (870,402,289,0,132,'E',5853,0,86.47,NULL,41);
INSERT INTO heads VALUES (871,403,289,0,132,'E',7481,0,70.19,NULL,41);
INSERT INTO heads VALUES (872,210,228,0,143,'A',1094,0,94.06,NULL,42);
INSERT INTO heads VALUES (873,210,228,0,143,'A',1156,0,93.44,NULL,42);
INSERT INTO heads VALUES (874,345,258,0,143,'E',5144,0,93.56,NULL,42);
INSERT INTO heads VALUES (875,380,258,0,143,'E',4797,0,97.03,NULL,42);
INSERT INTO heads VALUES (876,336,298,0,143,'A',1184,0,93.16,NULL,42);
INSERT INTO heads VALUES (877,336,298,0,143,'A',1115,0,93.85,NULL,42);
INSERT INTO heads VALUES (878,317,258,0,143,'C',3107,30,48.93,NULL,42);
INSERT INTO heads VALUES (879,317,258,0,143,'C',3193,0,78.07,NULL,42);
INSERT INTO heads VALUES (880,209,299,0,143,'A',1393,10,81.07,NULL,42);
INSERT INTO heads VALUES (881,209,299,0,143,'A',1310,0,91.9,NULL,42);
INSERT INTO heads VALUES (882,206,258,0,143,'A',1438,30,60.62,NULL,42);
INSERT INTO heads VALUES (883,206,258,0,143,'A',1410,30,60.9,NULL,42);
INSERT INTO heads VALUES (884,208,258,0,143,'A',1503,30,59.97,NULL,42);
INSERT INTO heads VALUES (885,412,188,1,143,'C',3403,0,75.97,NULL,42);
INSERT INTO heads VALUES (886,412,188,0,143,'C',2666,0,83.34,NULL,42);
INSERT INTO heads VALUES (887,399,300,0,149,'A',1540,10,79.6,NULL,42);
INSERT INTO heads VALUES (888,393,301,0,149,'C',2550,0,84.5,NULL,42);
INSERT INTO heads VALUES (889,414,302,7,149,'C',2470,0,85.3,NULL,42);
INSERT INTO heads VALUES (890,383,280,0,149,'A',1575,0,89.25,NULL,42);
INSERT INTO heads VALUES (891,399,301,0,149,'A',1520,10,79.8,NULL,42);
INSERT INTO heads VALUES (892,415,143,7,149,'A',2660,10,68.4,NULL,42);
INSERT INTO heads VALUES (893,51,303,0,149,'C',3290,0,77.1,NULL,42);
INSERT INTO heads VALUES (894,416,303,7,149,'A',1570,0,89.3,NULL,42);
INSERT INTO heads VALUES (895,417,304,16,150,'C',1750,0,92.5,NULL,42);
INSERT INTO heads VALUES (896,418,305,16,150,'C',2370,0,86.3,NULL,42);
INSERT INTO heads VALUES (897,11,241,0,150,'C',2750,10,72.5,NULL,42);
INSERT INTO heads VALUES (898,335,249,0,150,'E',4700,0,98,NULL,42);
INSERT INTO heads VALUES (899,312,306,0,150,'E',5300,0,92,NULL,42);
INSERT INTO heads VALUES (900,419,307,16,150,'C',2260,0,87.4,NULL,42);
INSERT INTO heads VALUES (901,420,306,16,150,'E',5450,0,90.5,NULL,42);
INSERT INTO heads VALUES (902,421,306,16,150,'C',2850,10,71.5,NULL,42);
INSERT INTO heads VALUES (903,360,308,0,147,'C',2077,0,89.23,NULL,42);
INSERT INTO heads VALUES (904,422,306,16,147,'C',2189,0,88.11,NULL,42);
INSERT INTO heads VALUES (905,423,308,16,147,'C',2289,0,87.11,NULL,42);
INSERT INTO heads VALUES (906,17,234,0,148,'A',1369,0,91.31,NULL,42);
INSERT INTO heads VALUES (907,424,235,16,148,'E',4882,0,96.18,NULL,42);
INSERT INTO heads VALUES (908,425,235,16,148,'E',5530,0,89.7,NULL,42);
INSERT INTO heads VALUES (909,275,235,0,148,'A',1289,0,92.11,NULL,42);
INSERT INTO heads VALUES (910,331,235,0,148,'E',5464,0,90.36,NULL,42);
INSERT INTO heads VALUES (911,400,309,0,148,'C',2820,10,71.8,NULL,42);
INSERT INTO heads VALUES (912,274,234,0,148,'A',1324,0,91.76,NULL,42);
INSERT INTO heads VALUES (913,423,234,0,148,'A',1158,0,93.42,NULL,42);
INSERT INTO heads VALUES (914,17,264,0,148,'A',1800,20,67,NULL,42);
INSERT INTO heads VALUES (915,428,312,6,158,'C',2430,0,85.7,NULL,43);
INSERT INTO heads VALUES (916,429,313,6,158,'A',1281,0,92.19,NULL,43);
INSERT INTO heads VALUES (917,430,314,11,158,'C',2650,0,83.5,NULL,43);
INSERT INTO heads VALUES (918,431,312,11,158,'C',2400,0,86,NULL,43);
INSERT INTO heads VALUES (919,432,311,11,158,'E',5640,0,88.6,NULL,43);
INSERT INTO heads VALUES (920,433,315,11,158,'E',4500,0,100,NULL,43);
INSERT INTO heads VALUES (921,434,315,11,158,'C',2170,0,88.3,NULL,43);
INSERT INTO heads VALUES (922,435,314,11,158,'A',1330,40,51.7,NULL,43);
INSERT INTO heads VALUES (923,394,314,0,158,'A',1543,0,89.57,NULL,43);
INSERT INTO heads VALUES (924,434,316,0,158,'E',5625,10,78.75,NULL,43);
INSERT INTO heads VALUES (925,226,6,0,161,'C',2200,0,88,NULL,43);
INSERT INTO heads VALUES (926,436,318,16,161,'A',1540,0,89.6,NULL,43);
INSERT INTO heads VALUES (927,437,319,6,164,'E',5844,10,76.56,NULL,44);
INSERT INTO heads VALUES (928,438,320,6,164,'C',4152,20,48.48,NULL,44);
INSERT INTO heads VALUES (929,439,321,6,164,'E',5011,10,84.89,NULL,44);
INSERT INTO heads VALUES (930,440,322,6,164,'E',5551,10,79.49,NULL,44);
INSERT INTO heads VALUES (931,441,323,6,164,'A',2518,10,69.82,NULL,44);
INSERT INTO heads VALUES (932,442,324,6,164,'C',3506,0,74.94,NULL,44);
INSERT INTO heads VALUES (933,443,325,6,164,'C',3346,10,66.54,NULL,44);
INSERT INTO heads VALUES (934,444,320,6,164,'C',5378,10,46.22,NULL,44);
INSERT INTO heads VALUES (935,445,326,6,164,'A',1851,0,86.49,NULL,44);
INSERT INTO heads VALUES (936,445,326,0,164,'C',2535,0,84.65,NULL,44);
INSERT INTO heads VALUES (937,447,329,6,167,'C',2330,0,86.7,NULL,44);
INSERT INTO heads VALUES (938,447,329,0,167,'C',1700,0,93,NULL,44);
INSERT INTO heads VALUES (939,447,329,0,167,'A',1400,0,91,NULL,44);
INSERT INTO heads VALUES (940,447,329,0,168,'C',2330,0,86.7,NULL,45);
INSERT INTO heads VALUES (941,447,329,0,168,'C',1700,0,93,NULL,45);
INSERT INTO heads VALUES (942,447,329,0,168,'A',1400,0,91,NULL,45);
INSERT INTO heads VALUES (943,447,329,0,170,'A',1556,0,89.44,NULL,45);
INSERT INTO heads VALUES (944,447,329,0,170,'C',2127,0,88.73,NULL,45);
INSERT INTO heads VALUES (945,447,330,0,170,'C',2021,0,89.79,NULL,45);
INSERT INTO heads VALUES (946,445,326,0,170,'C',2887,0,81.13,NULL,45);
INSERT INTO heads VALUES (947,445,326,0,170,'C',3109,10,68.91,NULL,45);
INSERT INTO heads VALUES (948,448,331,6,170,'C',2270,0,87.3,NULL,45);
INSERT INTO heads VALUES (949,448,331,0,170,'C',2096,0,89.04,NULL,45);
INSERT INTO heads VALUES (950,449,332,18,172,'C',2553,10,74.47,NULL,45);
INSERT INTO heads VALUES (951,450,333,8,172,'C',2622,0,83.78,NULL,45);
INSERT INTO heads VALUES (952,451,333,8,172,'C',2509,0,84.91,NULL,45);
INSERT INTO heads VALUES (953,452,333,8,172,'C',2647,0,83.53,NULL,45);
INSERT INTO heads VALUES (954,453,334,15,173,'C',2500,0,85,NULL,45);
INSERT INTO heads VALUES (955,454,335,8,173,'C',2806,0,81.94,NULL,45);
INSERT INTO heads VALUES (956,455,336,12,173,'C',2625,0,83.75,NULL,45);
INSERT INTO heads VALUES (957,456,337,12,173,'C',2843,0,81.57,NULL,45);
INSERT INTO heads VALUES (958,450,207,0,173,'C',1885,0,91.15,NULL,45);
INSERT INTO heads VALUES (959,457,338,2,173,'C',3810,20,51.9,NULL,45);
INSERT INTO heads VALUES (960,454,335,0,174,'C',2266,0,87.34,NULL,45);
INSERT INTO heads VALUES (961,457,338,0,174,'C',2838,0,81.62,NULL,45);
INSERT INTO heads VALUES (962,455,336,0,174,'C',2519,0,84.81,NULL,45);
INSERT INTO heads VALUES (963,456,339,0,174,'E',5000,0,95,NULL,45);
INSERT INTO heads VALUES (964,191,207,18,174,'A',1363,0,91.37,NULL,45);
INSERT INTO heads VALUES (965,415,340,7,175,'A',1201,0,92.99,NULL,45);
INSERT INTO heads VALUES (966,458,341,7,175,'C',2501,0,84.99,NULL,45);
INSERT INTO heads VALUES (967,427,311,0,176,'C',2219,0,87.81,NULL,45);
INSERT INTO heads VALUES (968,427,311,0,176,'A',1725,0,87.75,NULL,45);
INSERT INTO heads VALUES (969,430,312,0,176,'C',2594,0,84.06,NULL,45);
INSERT INTO heads VALUES (970,429,313,0,176,'A',1237,0,92.63,NULL,45);
INSERT INTO heads VALUES (971,409,311,11,176,'C',3244,0,77.56,NULL,45);
INSERT INTO heads VALUES (972,429,313,0,176,'A',1312,0,91.88,NULL,45);
INSERT INTO heads VALUES (973,428,312,0,176,'A',1825,0,86.75,NULL,45);
INSERT INTO heads VALUES (974,427,311,0,176,'E',4144,0,103.56,NULL,45);
INSERT INTO heads VALUES (975,459,312,11,176,'C',2678,10,73.22,NULL,45);
INSERT INTO heads VALUES (976,171,73,0,179,'C',2797,0,82.03,NULL,46);
INSERT INTO heads VALUES (977,447,329,0,179,'A',1787,0,87.13,NULL,46);
INSERT INTO heads VALUES (978,460,342,6,179,'C',2110,0,88.9,NULL,46);
INSERT INTO heads VALUES (979,461,329,6,179,'E',3944,0,105.56,NULL,46);
INSERT INTO heads VALUES (980,462,326,6,179,'C',2935,0,80.65,NULL,46);
INSERT INTO heads VALUES (981,463,343,6,179,'C',2493,0,85.07,NULL,46);
INSERT INTO heads VALUES (982,399,344,0,180,'A',1682,10,78.18,NULL,46);
INSERT INTO heads VALUES (983,415,340,0,180,'A',1594,0,89.06,NULL,46);
INSERT INTO heads VALUES (984,56,303,0,180,'A',1625,0,88.75,NULL,46);
INSERT INTO heads VALUES (985,383,280,0,180,'A',1412,0,90.88,NULL,46);
INSERT INTO heads VALUES (986,465,347,7,180,'A',1532,0,89.68,NULL,46);
INSERT INTO heads VALUES (987,57,348,0,180,'C',2566,0,84.34,NULL,46);
INSERT INTO heads VALUES (988,466,349,4,180,'C',1863,0,91.37,NULL,46);
INSERT INTO heads VALUES (989,358,6,0,180,'E',4466,0,100.34,NULL,46);
INSERT INTO heads VALUES (990,467,333,8,181,'C',1975,0,90.25,NULL,46);
INSERT INTO heads VALUES (991,450,333,0,181,'C',1919,0,90.81,NULL,46);
INSERT INTO heads VALUES (992,468,350,18,181,'C',2475,0,85.25,NULL,46);
INSERT INTO heads VALUES (993,191,207,0,181,'A',1612,10,78.88,NULL,46);
INSERT INTO heads VALUES (994,449,332,0,181,'C',2341,0,86.59,NULL,46);
INSERT INTO heads VALUES (995,469,351,18,181,'E',5018,0,94.82,NULL,46);
INSERT INTO heads VALUES (996,470,352,8,181,'E',6196,0,83.04,NULL,46);

--
-- Table structure for table `horses`
--

CREATE TABLE horses (
  HID int(3) NOT NULL auto_increment,
  HName varchar(80) NOT NULL default '',
  Hrent char(1) default NULL,
  HOwner varchar(80) NOT NULL default '',
  HBio varchar(255) default 'http://www.yourhomepage.com',
  PRIMARY KEY  (HID),
  UNIQUE KEY HID (HID)
) TYPE=MyISAM;

--
-- Dumping data for table `horses`
--

INSERT INTO horses VALUES (1,'Mercedes','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (2,'Clyde','Y','Rental',NULL);
INSERT INTO horses VALUES (3,'Juliet','N','Ryessa Polander',NULL);
INSERT INTO horses VALUES (4,'Juliet','N','Ryessa Polander',NULL);
INSERT INTO horses VALUES (5,'Hot Stuff','N','Anton Polander',NULL);
INSERT INTO horses VALUES (6,'Quincy','N','Christine Stender',NULL);
INSERT INTO horses VALUES (7,'Superhorse','N','Jaqueline Blais',NULL);
INSERT INTO horses VALUES (8,'Sorcha','N','Petra Jorcenko',NULL);
INSERT INTO horses VALUES (9,'Dillon','N','Yasmina',NULL);
INSERT INTO horses VALUES (10,'Gailen','N','Isabel',NULL);
INSERT INTO horses VALUES (11,'Ollie','Y','Rental',NULL);
INSERT INTO horses VALUES (12,'Unknown','Y','Rental',NULL);
INSERT INTO horses VALUES (13,'Pone','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (14,'Echo','N','Cornelia',NULL);
INSERT INTO horses VALUES (15,'Baby','N','Kesimir',NULL);
INSERT INTO horses VALUES (16,'Valerius','N','Donwenna',NULL);
INSERT INTO horses VALUES (17,'Blue','N','Aeschine',NULL);
INSERT INTO horses VALUES (18,'Titus','N','Agelos',NULL);
INSERT INTO horses VALUES (19,'Bristique','N','Virginia Scott',NULL);
INSERT INTO horses VALUES (20,'Big Guy','N','Cheryl Scott',NULL);
INSERT INTO horses VALUES (21,'Smokey','N','Cheryl Scott',NULL);
INSERT INTO horses VALUES (22,'Sunny','N','Constance the Curious',NULL);
INSERT INTO horses VALUES (23,'Rory','N','Cinthia of Ard Chreag',NULL);
INSERT INTO horses VALUES (24,'Streak','N','Ragni of Amberhall',NULL);
INSERT INTO horses VALUES (25,'Blue Moon','N','Ceina Ni Mhari',NULL);
INSERT INTO horses VALUES (26,'Earl Grey','N','Togrul Guiscard',NULL);
INSERT INTO horses VALUES (27,'Misty','N','Edward Ean Anderson',NULL);
INSERT INTO horses VALUES (28,'Salty','N','Allison Walker',NULL);
INSERT INTO horses VALUES (29,'Breyer','N','Ilaria',NULL);
INSERT INTO horses VALUES (30,'Firyarran','N','Appoline',NULL);
INSERT INTO horses VALUES (31,'Katie','N','Sir Jerald',NULL);
INSERT INTO horses VALUES (32,'Cookie','N','Miranda',NULL);
INSERT INTO horses VALUES (33,'Teddy','Y','Prado Equestrian Center',NULL);
INSERT INTO horses VALUES (34,'Dash','N','Lady Ceara ingen Chanaill',NULL);
INSERT INTO horses VALUES (35,'War Pig','Y','Prado Equestrian Center',NULL);
INSERT INTO horses VALUES (36,'Valentine','N','Rhiannon o Hafan Gath',NULL);
INSERT INTO horses VALUES (37,'Thumper','N','Erica McBride',NULL);
INSERT INTO horses VALUES (38,'Napoleon','N','Kristin Sweet',NULL);
INSERT INTO horses VALUES (39,'Lester','Y','Prado Equestrian Center',NULL);
INSERT INTO horses VALUES (40,'Amadaes','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (41,'Lincoln','Y','Prado Equestrian Center',NULL);
INSERT INTO horses VALUES (42,'Graf Zanzibar','N','Kate Fey',NULL);
INSERT INTO horses VALUES (43,'Plum','N','Dave Wise',NULL);
INSERT INTO horses VALUES (44,'Marianne','N','EinarR Ragnarson',NULL);
INSERT INTO horses VALUES (45,'Rigalletto','N','David Frey',NULL);
INSERT INTO horses VALUES (46,'Andre','N','Trixie DeLisle',NULL);
INSERT INTO horses VALUES (47,'Saxon','N','Edith Gray',NULL);
INSERT INTO horses VALUES (48,'Penny','N','Michelle Adams',NULL);
INSERT INTO horses VALUES (49,'Argant','N','Jennifer E. Jobst',NULL);
INSERT INTO horses VALUES (50,'Masada Muhani','N','Lisa LeChatton-Bureau',NULL);
INSERT INTO horses VALUES (51,'Dance Magic','N','Ashia Yother',NULL);
INSERT INTO horses VALUES (52,'Logan','N','Alicia Trissler',NULL);
INSERT INTO horses VALUES (53,'Eros','N','Heather Vernon',NULL);
INSERT INTO horses VALUES (54,'Roo','N','Tamara Woodcock',NULL);
INSERT INTO horses VALUES (55,'Princess Buttercup','N','Laura Betenbaugh',NULL);
INSERT INTO horses VALUES (56,'Napoleon','N','Christiaen de Groot',NULL);
INSERT INTO horses VALUES (57,'Fanny Bright Star','N','Yasmeena bint al Ahlam',NULL);
INSERT INTO horses VALUES (58,'Osiris','N','Karin Marie',NULL);
INSERT INTO horses VALUES (59,'Black Delight','N','Isabel of Arn Hold',NULL);
INSERT INTO horses VALUES (60,'Red','Y','Gary Towle Outfitters',NULL);
INSERT INTO horses VALUES (61,'Bud Light','Y','Gary Towle Outfitters',NULL);
INSERT INTO horses VALUES (62,'Topper','N','Kari Marie',NULL);
INSERT INTO horses VALUES (63,'Sugar','N','Dawn of Tomorrowland',NULL);
INSERT INTO horses VALUES (64,'Yasser','N','Yasmeena bint al AhlamEnter Owners Name here',NULL);
INSERT INTO horses VALUES (65,'Exotic Two Skip','N','Helena Ordeville',NULL);
INSERT INTO horses VALUES (66,'Hershey Bar','N','Maria the Gypsy',NULL);
INSERT INTO horses VALUES (67,'Slim Pickens','N','Julianna Craye',NULL);
INSERT INTO horses VALUES (68,'Navaroan','N','Helena, Outlander',NULL);
INSERT INTO horses VALUES (69,'Excaliber','N','Jacques de Monet',NULL);
INSERT INTO horses VALUES (70,'Enter new Horse\\\'s name here','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (71,'Enter new Horse\\\'s name here','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (72,'Summer Doll','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (73,'Epona','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (74,'Simon','N','THL Zuriel Nightshade',NULL);
INSERT INTO horses VALUES (75,'Spice','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (76,'Dino','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (77,'Marchesa','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (78,'Society Star Force','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (79,'Togger','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (80,'Mr Independance  -\\','N','Lady Lorraine Fraser',NULL);
INSERT INTO horses VALUES (81,'Paint Flashdance','N','Diane Maynard',NULL);
INSERT INTO horses VALUES (82,'Cash','N','Jennifer Jobst',NULL);
INSERT INTO horses VALUES (83,'Nitro','N','Robin Daniel',NULL);
INSERT INTO horses VALUES (84,'Midnight Rose','N','Michelle Betenbaugh',NULL);
INSERT INTO horses VALUES (85,'Lacy','N','Diane Maynard',NULL);
INSERT INTO horses VALUES (86,'Coco','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (87,'Shizon','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (88,'Rocky','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (89,'Ruby','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (90,'Mr Epic','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (91,'Sox','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (92,'Lady','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (93,'Duchess','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (94,'Mystique','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (95,'Negrita','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (96,'Chief','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (97,'Rose','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (98,'Cisco','N','Deonne Berger',NULL);
INSERT INTO horses VALUES (99,'Angel','N','Melissa Brown',NULL);
INSERT INTO horses VALUES (100,'Buddy','N','Shawn Little',NULL);
INSERT INTO horses VALUES (101,'Raggs','N','Judith Mcfarland',NULL);
INSERT INTO horses VALUES (102,'Flashdance','N','Diane Maynard',NULL);
INSERT INTO horses VALUES (103,'Ace','Y','King\\\'s Arrow Ranch',NULL);
INSERT INTO horses VALUES (104,'Jubilee','N','Scott Snowden',NULL);
INSERT INTO horses VALUES (105,'Sancho','Y','King\\\'s Arrow Ranch',NULL);
INSERT INTO horses VALUES (106,'Sheba','N','Shannon Hembree',NULL);
INSERT INTO horses VALUES (107,'Dickie','N','Kimberly Ninninger',NULL);
INSERT INTO horses VALUES (108,'Sir William','N','Judith McFarland',NULL);
INSERT INTO horses VALUES (109,'Butterfly','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (110,'Czar','N','Karen Stegmier',NULL);
INSERT INTO horses VALUES (111,'Czar','N','Karen Stegmeier',NULL);
INSERT INTO horses VALUES (112,'Wrigley','N','Scott Lane',NULL);
INSERT INTO horses VALUES (113,'Equinox','N','Holly Rassmusen',NULL);
INSERT INTO horses VALUES (114,'Breeze','N','Racheal Alexander',NULL);
INSERT INTO horses VALUES (115,'Teejays','N','Chris Bell',NULL);
INSERT INTO horses VALUES (116,'Tucker','N','Nan Van Doren',NULL);
INSERT INTO horses VALUES (117,'Rummy','N','Lee Anne Sims',NULL);
INSERT INTO horses VALUES (118,'Angelina','N','Erin Kaiser',NULL);
INSERT INTO horses VALUES (119,'Marge','N','Kesimir',NULL);
INSERT INTO horses VALUES (120,'JML Faraj','N','Megrhydd Llwyd',NULL);
INSERT INTO horses VALUES (121,'Danza','N','Ceadre',NULL);
INSERT INTO horses VALUES (122,'Roxy','N','Kesimir',NULL);
INSERT INTO horses VALUES (123,'Strider','N','Ariah Hume',NULL);
INSERT INTO horses VALUES (124,'Baccus','N','Ariah Hume',NULL);
INSERT INTO horses VALUES (125,'Faye','N','Christine Bell',NULL);
INSERT INTO horses VALUES (126,'Sonny','N','Jim Tyler',NULL);
INSERT INTO horses VALUES (127,'Denim','N','Leigh Ann Curtis',NULL);
INSERT INTO horses VALUES (128,'Sky','N','Lee Anne Sims',NULL);
INSERT INTO horses VALUES (129,'Sky','N','Lee Anne Sims',NULL);
INSERT INTO horses VALUES (130,'Radar','N','Lee Anne Sims',NULL);
INSERT INTO horses VALUES (131,'Breeze','N','Rachel Alexander/ Chrestienne LaCroniere',NULL);
INSERT INTO horses VALUES (132,'Rue','N','Camille',NULL);
INSERT INTO horses VALUES (133,'Dakota','N','Rob Dalrymaie',NULL);
INSERT INTO horses VALUES (134,'Panterra','N','Gail Wright',NULL);
INSERT INTO horses VALUES (135,'Sonny Boy','N','Alice Buzzard',NULL);
INSERT INTO horses VALUES (136,'Dundee','N','Alice Buzzard',NULL);
INSERT INTO horses VALUES (137,'Valiant','N','Chuck Dodd',NULL);
INSERT INTO horses VALUES (138,'Peppy','Y','Langs',NULL);
INSERT INTO horses VALUES (139,'Tallyho Noel','N','Shekhan Hawke',NULL);
INSERT INTO horses VALUES (140,'Rio','Y','Langs',NULL);
INSERT INTO horses VALUES (141,'Koquina','N','Shekhan Hawke',NULL);
INSERT INTO horses VALUES (142,'Mrs Wilson','Y','Langs',NULL);
INSERT INTO horses VALUES (143,'Foxy','Y','Langs',NULL);
INSERT INTO horses VALUES (144,'George','Y','Langs',NULL);
INSERT INTO horses VALUES (145,'Antares','N','Donwenna Beast Healer',NULL);
INSERT INTO horses VALUES (146,'Gigi','N','Shekhan Hawke',NULL);
INSERT INTO horses VALUES (147,'Spike','N','Alistair Kirk',NULL);
INSERT INTO horses VALUES (148,'Shady','N','Anne von Talstadt',NULL);
INSERT INTO horses VALUES (149,'Share','N','Constance the Curious',NULL);
INSERT INTO horses VALUES (150,'Kino','N','Thomas MacCruitin',NULL);
INSERT INTO horses VALUES (151,'Red Rover','N','Christine Bell',NULL);
INSERT INTO horses VALUES (152,'Laiah','N','Rebecca Riley-Vargas',NULL);
INSERT INTO horses VALUES (153,'Cannon','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (154,'Jack the Draft','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (155,'Rambo','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (156,'Patty','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (157,'Bacardi','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (158,'Tory','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (159,'Apache','Y','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (160,'Tucker','N','Nancy Van Doorn',NULL);
INSERT INTO horses VALUES (161,'Fannie','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (162,'Dweeb','N','Ariah Hume',NULL);
INSERT INTO horses VALUES (163,'Jenny','N','Jennifer Bayne-Donnell',NULL);
INSERT INTO horses VALUES (164,'Sparkles','N','Cheryl Scott',NULL);
INSERT INTO horses VALUES (165,'Niele','N','Judith Kensington',NULL);
INSERT INTO horses VALUES (166,'Captain','N','Sherrie Bakie',NULL);
INSERT INTO horses VALUES (167,'Nocoma','N','Sherrie Bakie',NULL);
INSERT INTO horses VALUES (168,'Nassar','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (169,'Christa','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (170,'Alamar','Y','Jerry Bestpitch',NULL);
INSERT INTO horses VALUES (171,'Kara','N','Ann Lewis',NULL);
INSERT INTO horses VALUES (172,'Belle','N','Jennifer Mikkala',NULL);
INSERT INTO horses VALUES (173,'Tiara','N','Autume Cardone',NULL);
INSERT INTO horses VALUES (174,'Belle','N','',NULL);
INSERT INTO horses VALUES (175,'Lucas','N','',NULL);
INSERT INTO horses VALUES (176,'Ginger','N','Tim Dietrick',NULL);
INSERT INTO horses VALUES (177,'Jester','N','Patti Lacorse',NULL);
INSERT INTO horses VALUES (178,'Ginger','N','Tim Detrick',NULL);
INSERT INTO horses VALUES (179,'Crystal','N','',NULL);
INSERT INTO horses VALUES (180,'Ginger','N','',NULL);
INSERT INTO horses VALUES (181,'Bod','Y','Jerry Bestpitch',NULL);
INSERT INTO horses VALUES (182,'Tuscon','N','Sciath Obreau',NULL);
INSERT INTO horses VALUES (183,'Phoenix','N','Michael Canfield',NULL);
INSERT INTO horses VALUES (184,'Joy','N','Barbara Gagnon/ Birna',NULL);
INSERT INTO horses VALUES (185,'Raven','N','Sir Wulfric/ Andy Lang',NULL);
INSERT INTO horses VALUES (186,'Annabelle','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (187,'PacMan','N','Lang\\\'s',NULL);
INSERT INTO horses VALUES (188,'Chai','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (189,'Silhouette','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (190,'Rosie','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (191,'Blackie','Y','Jerry Bestpitch',NULL);
INSERT INTO horses VALUES (192,'Taxi','N','Theorra',NULL);
INSERT INTO horses VALUES (193,'Twister','N','Illgordie',NULL);
INSERT INTO horses VALUES (194,'Lexie','N','Elizabeth de Champane',NULL);
INSERT INTO horses VALUES (195,'Alamar','Y','Jerry Bestpitch',NULL);
INSERT INTO horses VALUES (196,'Joey','Y','Jerry Bestpitch',NULL);
INSERT INTO horses VALUES (197,'Patches','Y','Jerry Bestpitch',NULL);
INSERT INTO horses VALUES (198,'Belle','N','Violante',NULL);
INSERT INTO horses VALUES (199,'The Marquesa','N','Susan Thurston',NULL);
INSERT INTO horses VALUES (200,'Sarah','N','Jennifer Mikkola',NULL);
INSERT INTO horses VALUES (201,'Big Belle','N','Solvang',NULL);
INSERT INTO horses VALUES (202,'King','N','Jennifer Mikkola',NULL);
INSERT INTO horses VALUES (203,'Belle Luna','N','Patti Chelseth',NULL);
INSERT INTO horses VALUES (204,'GriffinsGuard Belle','N','Ariah Hume',NULL);
INSERT INTO horses VALUES (205,'Icee','N','Rachel Alexander',NULL);
INSERT INTO horses VALUES (206,'Bud','N','Sycamore Ranch',NULL);
INSERT INTO horses VALUES (207,'Mirame','N','Laura Phillips',NULL);
INSERT INTO horses VALUES (208,'Hank','N','Christina Rymer',NULL);
INSERT INTO horses VALUES (209,'Stormcloud','N','Kevin Stevenson',NULL);
INSERT INTO horses VALUES (210,'Sundance','N','Kevin Stephenson',NULL);
INSERT INTO horses VALUES (211,'Maggie','N','Kim Nader',NULL);
INSERT INTO horses VALUES (212,'Gwen','N','Ryan Hittinger',NULL);
INSERT INTO horses VALUES (213,'Avalon','N','Courtney Davis',NULL);
INSERT INTO horses VALUES (214,'Shady Lady','N','Sir Robert MacArthur',NULL);
INSERT INTO horses VALUES (215,'Toby','N','Ilaria',NULL);
INSERT INTO horses VALUES (216,'Piper\\\'s Melody','N','Nancy Smith',NULL);
INSERT INTO horses VALUES (217,'Sue','N','Susan',NULL);
INSERT INTO horses VALUES (218,'Princess','N','Robert',NULL);
INSERT INTO horses VALUES (219,'Chiro','Y','Susan',NULL);
INSERT INTO horses VALUES (220,'Kamar','N','Erin',NULL);
INSERT INTO horses VALUES (221,'Dan','N','Susan',NULL);
INSERT INTO horses VALUES (222,'Diva','N','Fred Klink',NULL);
INSERT INTO horses VALUES (223,'Hijo','N','Dori Lazbetak',NULL);
INSERT INTO horses VALUES (224,'Jokey','N','Debbie Powell',NULL);
INSERT INTO horses VALUES (225,'Bonanza','Y','Jerry Bestpitch',NULL);
INSERT INTO horses VALUES (226,'Hancock','Y','Langs',NULL);
INSERT INTO horses VALUES (227,'Shasta','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (228,'Lakota','N','Lang\\\'s',NULL);
INSERT INTO horses VALUES (229,'Mighty','N','Lang\\\'s',NULL);
INSERT INTO horses VALUES (230,'Darla','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (231,'Dove','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (232,'Dusty','N','Dafydd Mac na Guibhne',NULL);
INSERT INTO horses VALUES (233,'Honey','N','Morrhighan',NULL);
INSERT INTO horses VALUES (234,'Kazar','N','Dianne Karp',NULL);
INSERT INTO horses VALUES (235,'Tiffany','N','Mark Murphy',NULL);
INSERT INTO horses VALUES (236,'Zeus\\\' Dream','N','Sandor Dosa',NULL);
INSERT INTO horses VALUES (237,'Star','N','Steve Emmett',NULL);
INSERT INTO horses VALUES (238,'Sasha','N','Gwindelin O\\\'Dell',NULL);
INSERT INTO horses VALUES (239,'Sam','N','Gwen',NULL);
INSERT INTO horses VALUES (240,'Sam','N','Gwen',NULL);
INSERT INTO horses VALUES (241,'Brandy','N','',NULL);
INSERT INTO horses VALUES (242,'Tjeerd','N','Cornelia',NULL);
INSERT INTO horses VALUES (243,'JR','N','Glythir',NULL);
INSERT INTO horses VALUES (244,'Tahoe','N','Domhnall MacCeallaigh',NULL);
INSERT INTO horses VALUES (245,'Monet','Y','Lang\\\'s Ranch',NULL);
INSERT INTO horses VALUES (246,'SARAFINA','Y','LANG\\\'S',NULL);
INSERT INTO horses VALUES (247,'CHEYNNE','N','KHAIDU',NULL);
INSERT INTO horses VALUES (248,'Pooka','N','Bjorn (West K)',NULL);
INSERT INTO horses VALUES (249,'Jack','N','Enter Owners Name here',NULL);
INSERT INTO horses VALUES (250,'Catty','N','Kristen Hvit Hester',NULL);
INSERT INTO horses VALUES (251,'Scotty','Y','Jerry Bestpitch',NULL);
INSERT INTO horses VALUES (252,'Brut','Y','Jerry Bestpitch',NULL);
INSERT INTO horses VALUES (253,'Peppy','N','Lisa Hayes',NULL);
INSERT INTO horses VALUES (254,'Montana','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (255,'Tom','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (256,'Cinnabar','N','Walt Szklarski',NULL);
INSERT INTO horses VALUES (257,'Sunfire','N','Carolyn Egedal',NULL);
INSERT INTO horses VALUES (258,'Bee','N','Lila Reno',NULL);
INSERT INTO horses VALUES (259,'Bert','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (260,'Roshina','N','Nora',NULL);
INSERT INTO horses VALUES (261,'Autumn','N','Patti LaCourse',NULL);
INSERT INTO horses VALUES (262,'Cristy','N','Haley Boehme',NULL);
INSERT INTO horses VALUES (263,'Ladybug','N','Katherine Howorth',NULL);
INSERT INTO horses VALUES (264,'Ebony','N','Dianne Karp',NULL);
INSERT INTO horses VALUES (265,'Reily','N','David Muerle',NULL);
INSERT INTO horses VALUES (266,'Sunny','Y','Nancy Smith',NULL);
INSERT INTO horses VALUES (267,'Trajen','N','Sam Davis',NULL);
INSERT INTO horses VALUES (268,'Beauty','Y','Nancy Smith',NULL);
INSERT INTO horses VALUES (269,'Caspar','Y','Nancy Smith',NULL);
INSERT INTO horses VALUES (270,'Fiona','N','Checheyigen Oyugun',NULL);
INSERT INTO horses VALUES (271,'Fiona','N','Checheyigen Oyugun',NULL);
INSERT INTO horses VALUES (272,'Nico','N','Svana Mjobeina',NULL);
INSERT INTO horses VALUES (273,'Harley','N','Henri Dubose',NULL);
INSERT INTO horses VALUES (274,'Push','N','Rosalinda DeSalerno',NULL);
INSERT INTO horses VALUES (275,'Lil Man','Y','John Rester',NULL);
INSERT INTO horses VALUES (276,'Mirage','N','Sighieri',NULL);
INSERT INTO horses VALUES (277,'Showboy','N','Svana Mjobeina',NULL);
INSERT INTO horses VALUES (278,'Mary','N','Chrestienne LaCroniere',NULL);
INSERT INTO horses VALUES (279,'Squeaky','N','Khai',NULL);
INSERT INTO horses VALUES (280,'Zia','N','Arabella da Siena',NULL);
INSERT INTO horses VALUES (281,'Dutch\\\'s Royal Energie','N','Tamara of Many Horses',NULL);
INSERT INTO horses VALUES (282,'Oriflame (\\','N','Ariadne de Glevo',NULL);
INSERT INTO horses VALUES (283,'Bansidhe','N','Aobheallan Sionnach',NULL);
INSERT INTO horses VALUES (284,'Floyd','N','Carlotta',NULL);
INSERT INTO horses VALUES (285,'Pete','Y','',NULL);
INSERT INTO horses VALUES (286,'Hodgie','N','Phoebe',NULL);
INSERT INTO horses VALUES (287,'PJ','Y','',NULL);
INSERT INTO horses VALUES (288,'Rain','N','Erin Taylor',NULL);
INSERT INTO horses VALUES (289,'Bright Boy Wonder','N','Pat Adams',NULL);
INSERT INTO horses VALUES (290,'Miracle','N','Jami Bahadar',NULL);
INSERT INTO horses VALUES (291,'Fancy','N','Ronan Lothty',NULL);
INSERT INTO horses VALUES (292,'Luna','N','Clare Delacy',NULL);
INSERT INTO horses VALUES (293,'Bilbo','N','Una',NULL);
INSERT INTO horses VALUES (294,'Shad','N','Lady Danielle Alavaine deLicorne',NULL);
INSERT INTO horses VALUES (295,'Do-it','Y','Destiny Arabians',NULL);
INSERT INTO horses VALUES (296,'Azali','N','Erin MacLure',NULL);
INSERT INTO horses VALUES (297,'Daisy','N','Steve Gospich',NULL);
INSERT INTO horses VALUES (298,'Josephine','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (299,'Lance','Y','Lang\\\'s',NULL);
INSERT INTO horses VALUES (300,'Casa Nova','N','Virginia Hankins',NULL);
INSERT INTO horses VALUES (301,'Shadow (aka \\','N','Virginia Hankins',NULL);
INSERT INTO horses VALUES (302,'Diamond','N','Stacy Tanner',NULL);
INSERT INTO horses VALUES (303,'Valor','N','Richard Surefoot',NULL);
INSERT INTO horses VALUES (304,'Solo','N','Elizabeth Hiatt',NULL);
INSERT INTO horses VALUES (305,'Deltraz','N','Richard Pearce',NULL);
INSERT INTO horses VALUES (306,'Lucy - Lulu','N','Zinaida',NULL);
INSERT INTO horses VALUES (307,'Paulette','N','Laurentia von Graustein',NULL);
INSERT INTO horses VALUES (308,'Unknown Mount - not a rental','N','Rider',NULL);
INSERT INTO horses VALUES (309,'Quincy','N','Gwen Bulot-Smith',NULL);
INSERT INTO horses VALUES (310,'Morin Star','N','Khaidu Naranaimorin',NULL);
INSERT INTO horses VALUES (311,'Wilhelm von Blauner','N','Doucette de Verdun',NULL);
INSERT INTO horses VALUES (312,'Pig','N','Gunnarr of Endless Hills',NULL);
INSERT INTO horses VALUES (313,'Sic\\\'Em','N','Rhiannon the Banshee',NULL);
INSERT INTO horses VALUES (314,'Valid Lupin','N','Kiena Stewart',NULL);
INSERT INTO horses VALUES (315,'Summit','N','Ellen du Grandchamp',NULL);
INSERT INTO horses VALUES (316,'Fehu','N','Ellen du Grandchamp',NULL);
INSERT INTO horses VALUES (317,'Royal','N','Felicitae del Hay',NULL);
INSERT INTO horses VALUES (318,'Barney\\\'s Brown Sugar','N','Gwendwyn the Silent',NULL);
INSERT INTO horses VALUES (319,'Priscilla','Y','Billy Murphy',NULL);
INSERT INTO horses VALUES (320,'Shawnee Star','N','Ragnailt in Eich',NULL);
INSERT INTO horses VALUES (321,'Jane','Y','Joe Backer',NULL);
INSERT INTO horses VALUES (322,'Theobald','N','Ysabeau Tiercelin',NULL);
INSERT INTO horses VALUES (323,'Tiki','N','Rannveigr Haakonardottir',NULL);
INSERT INTO horses VALUES (324,'John','N','Dominic McMoreland',NULL);
INSERT INTO horses VALUES (325,'Sooty','N','Sabine la Courratierre de chevaux',NULL);
INSERT INTO horses VALUES (326,'Desiree','N','Rhiannon filia Catell',NULL);
INSERT INTO horses VALUES (327,'Cody','Y','Nancy Smith',NULL);
INSERT INTO horses VALUES (328,'Candy','Y','Nancy Smith',NULL);
INSERT INTO horses VALUES (329,'Danny','N','Shoshida Tora Gozen',NULL);
INSERT INTO horses VALUES (330,'Rex','N','Shosida Tora Gozen',NULL);
INSERT INTO horses VALUES (331,'Mouse','N','Kim Hay',NULL);
INSERT INTO horses VALUES (332,'Skye','N','Brent Lecher',NULL);
INSERT INTO horses VALUES (333,'Kacey','N','Tiffany Parrett',NULL);
INSERT INTO horses VALUES (334,'Chief','N','Ragnailt',NULL);
INSERT INTO horses VALUES (335,'Penny','N','Sato',NULL);
INSERT INTO horses VALUES (336,'Angie','N','Elizabeth Crane',NULL);
INSERT INTO horses VALUES (337,'Talequa','N','Elizabeth Crane',NULL);
INSERT INTO horses VALUES (338,'Jasper','N','Rhys',NULL);
INSERT INTO horses VALUES (339,'Ike','N','Cambria',NULL);
INSERT INTO horses VALUES (340,'Foxier','N','Conall mac Seaghain',NULL);
INSERT INTO horses VALUES (341,'Riff','Y','Aoibheall an Sionnach',NULL);
INSERT INTO horses VALUES (342,'Mouse-M','N','Meadhbh Inghean Ui Bhaoighill',NULL);
INSERT INTO horses VALUES (343,'Thelma','N','Alays de Bergerac',NULL);
INSERT INTO horses VALUES (344,'Otto','N','Arabella da Siena',NULL);
INSERT INTO horses VALUES (345,'Forbidden Duel','N','Tiefrrynna CaerNarvon',NULL);
INSERT INTO horses VALUES (346,'Big Expectations','N','Tamara of Many Horses',NULL);
INSERT INTO horses VALUES (347,'Cadet','N','Gabriel MacMahon',NULL);
INSERT INTO horses VALUES (348,'Gryphon','N','Tierrynna CaerNarvon',NULL);
INSERT INTO horses VALUES (349,'Oonaugh','N','Saragrace Knaupf',NULL);
INSERT INTO horses VALUES (350,'Sonny','N','Jessica Saucier',NULL);
INSERT INTO horses VALUES (351,'Dubh','N','Amber Sanders',NULL);
INSERT INTO horses VALUES (352,'Hook','N','Karen Dwerlkotte',NULL);

--
-- Table structure for table `kingdoms`
--

CREATE TABLE kingdoms (
  KID int(2) NOT NULL auto_increment,
  Kname varchar(30) NOT NULL default '',
  KURL varchar(255) NOT NULL default '',
  PRIMARY KEY  (KID),
  UNIQUE KEY KID (KID),
  KEY KID_2 (KID)
) TYPE=MyISAM;

--
-- Dumping data for table `kingdoms`
--

INSERT INTO kingdoms VALUES (1,'An Tir','http://www.antir.sca.org');
INSERT INTO kingdoms VALUES (2,'Ansteorra','http://www.ansteorra.org');
INSERT INTO kingdoms VALUES (3,'Artemisia','http://www.artemisia.sca.org');
INSERT INTO kingdoms VALUES (4,'Atenveldt','http://www.atenveldt.org');
INSERT INTO kingdoms VALUES (5,'Atlantia','http://www.atlantia.sca.org');
INSERT INTO kingdoms VALUES (6,'Aethelmearc','http://www.aethelmearc.org');
INSERT INTO kingdoms VALUES (7,'Caid','http://www.sca-caid.org');
INSERT INTO kingdoms VALUES (8,'Calontir','http://calontir.sca.org');
INSERT INTO kingdoms VALUES (9,'Drachenwald','http://www.drachenwald.sca.org');
INSERT INTO kingdoms VALUES (10,'Ealdormere','http://www.ealdormere.sca.org');
INSERT INTO kingdoms VALUES (11,'East','http://www.eastkingdom.org');
INSERT INTO kingdoms VALUES (12,'Middle','http://www.midrealm.org');
INSERT INTO kingdoms VALUES (13,'Meridies','http://www.meridies.org');
INSERT INTO kingdoms VALUES (14,'Outlands','http://www.outlands.org');
INSERT INTO kingdoms VALUES (15,'Trimaris','http://www.trimaris.org');
INSERT INTO kingdoms VALUES (16,'West','http://www.westkingdom.org');
INSERT INTO kingdoms VALUES (17,'Northshield','http://www.northshield.org');
INSERT INTO kingdoms VALUES (18,'Gleann Abhann','http://gleannabhann.net');
INSERT INTO kingdoms VALUES (19,'Lochac','http://www.sca.org.au/lochac');

--
-- Table structure for table `moarch`
--

CREATE TABLE moarch (
  SMID int(3) NOT NULL auto_increment,
  PID int(3) NOT NULL default '0',
  HID int(3) NOT NULL default '0',
  KID int(2) NOT NULL default '0',
  EID int(3) NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  SMpass1 int(2) NOT NULL default '0',
  SMpass2 int(2) NOT NULL default '0',
  SMpass3 int(2) NOT NULL default '0',
  SMscore float NOT NULL default '0',
  SMseen char(1) default 'N',
  SMyear int(2) NOT NULL default '39',
  PRIMARY KEY  (SMID),
  UNIQUE KEY SHID (SMID),
  KEY SMID_2 (SMID)
) TYPE=MyISAM;

--
-- Dumping data for table `moarch`
--

INSERT INTO moarch VALUES (2,25,40,84,0,'A',30,30,30,90,NULL,39);
INSERT INTO moarch VALUES (3,295,214,85,1,'C',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (4,296,211,85,1,'A',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (5,297,27,85,1,'A',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (6,44,215,85,0,'E',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (7,42,27,85,0,'A',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (8,191,207,91,0,'C',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (9,298,216,91,13,'E',0,30,12,42,NULL,39);
INSERT INTO moarch VALUES (10,289,210,91,0,'C',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (11,299,217,91,13,'C',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (12,300,209,91,13,'C',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (13,25,27,93,0,'A',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (14,42,27,93,0,'A',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (15,42,90,90,0,'A',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (16,308,211,90,1,'A',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (17,6,5,100,0,'A',0,0,0,0,NULL,39);
INSERT INTO moarch VALUES (18,322,236,102,13,'A',30,30,30,90,NULL,40);
INSERT INTO moarch VALUES (19,322,236,102,0,'B',30,30,30,90,NULL,40);
INSERT INTO moarch VALUES (20,167,3,105,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (21,312,239,105,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (22,312,240,105,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (23,6,5,105,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (24,7,6,105,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (25,279,177,105,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (26,42,239,105,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (27,11,241,105,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (28,322,236,102,0,'F',30,30,30,90,NULL,40);
INSERT INTO moarch VALUES (29,42,27,109,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (30,322,236,117,0,'A',30,30,30,90,NULL,41);
INSERT INTO moarch VALUES (31,322,236,117,0,'C',30,30,30,90,NULL,41);
INSERT INTO moarch VALUES (32,179,123,119,0,'A',0,0,0,0,NULL,41);
INSERT INTO moarch VALUES (33,368,270,115,17,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (34,369,217,115,15,'E',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (35,289,210,115,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (36,370,217,115,15,'E',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (37,371,271,115,17,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (38,369,217,115,0,'E',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (39,289,210,115,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (40,370,217,115,0,'E',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (41,372,217,115,15,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (42,299,217,115,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (43,164,272,115,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (44,373,273,115,2,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (45,374,274,115,2,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (46,375,272,115,15,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (47,239,272,115,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (48,376,274,115,2,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (49,26,273,115,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (50,343,267,115,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (51,365,267,115,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (52,377,275,115,17,'E',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (53,378,273,115,2,'E',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (54,165,273,115,0,'E',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (55,240,208,115,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (56,379,276,115,2,'E',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (57,380,217,115,8,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (58,381,208,115,1,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (59,365,267,120,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (60,364,217,120,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (61,289,210,120,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (62,298,277,120,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (63,299,267,120,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (64,365,267,121,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (65,364,217,121,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (66,299,267,121,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (67,298,277,121,0,'C',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (68,289,210,121,0,'A',0,0,0,0,NULL,40);
INSERT INTO moarch VALUES (69,167,3,125,0,'C',0,0,0,0,NULL,41);
INSERT INTO moarch VALUES (70,6,5,125,0,'A',0,0,0,0,NULL,41);
INSERT INTO moarch VALUES (71,391,209,128,13,'C',0,0,0,0,NULL,41);
INSERT INTO moarch VALUES (72,392,277,128,13,'E',0,0,0,0,NULL,41);
INSERT INTO moarch VALUES (73,365,267,128,0,'C',0,0,0,0,NULL,41);
INSERT INTO moarch VALUES (74,322,236,136,0,'A',30,30,30,90,NULL,42);
INSERT INTO moarch VALUES (75,322,236,136,0,'A',30,30,30,90,NULL,42);
INSERT INTO moarch VALUES (76,322,236,136,0,'A',30,30,30,90,NULL,42);
INSERT INTO moarch VALUES (77,322,236,136,0,'A',30,30,30,90,NULL,42);
INSERT INTO moarch VALUES (78,393,301,149,0,'C',0,0,0,0,NULL,42);
INSERT INTO moarch VALUES (79,22,310,153,0,'A',0,0,30,30,NULL,42);
INSERT INTO moarch VALUES (80,426,298,153,1,'A',0,12,0,12,NULL,42);
INSERT INTO moarch VALUES (81,430,314,158,11,'C',0,0,0,0,NULL,43);
INSERT INTO moarch VALUES (82,394,314,158,0,'A',0,0,0,0,NULL,43);
INSERT INTO moarch VALUES (83,434,316,158,0,'E',0,0,0,0,NULL,43);
INSERT INTO moarch VALUES (84,426,298,162,0,'A',0,30,0,30,NULL,43);
INSERT INTO moarch VALUES (85,22,258,162,0,'A',18,0,0,18,NULL,43);
INSERT INTO moarch VALUES (86,265,317,162,0,'A',0,0,18,18,NULL,43);
INSERT INTO moarch VALUES (87,426,298,162,0,'A',0,6,0,6,NULL,43);
INSERT INTO moarch VALUES (88,265,317,162,0,'A',0,0,12,12,NULL,43);
INSERT INTO moarch VALUES (89,428,312,176,0,'A',0,0,0,0,NULL,45);
INSERT INTO moarch VALUES (90,462,326,179,6,'C',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (91,399,344,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (92,415,340,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (93,458,345,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (94,56,303,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (95,383,280,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (96,384,346,180,0,'A',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (97,464,309,180,16,'A',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (98,465,347,180,7,'A',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (99,57,348,180,0,'C',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (100,466,349,180,4,'C',0,0,0,0,NULL,46);
INSERT INTO moarch VALUES (101,358,6,180,0,'E',0,0,0,0,NULL,46);

--
-- Table structure for table `reeds`
--

CREATE TABLE reeds (
  SDID int(3) NOT NULL auto_increment,
  PID int(3) NOT NULL default '0',
  HID int(3) NOT NULL default '0',
  EID int(3) NOT NULL default '0',
  KID int(2) NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  L2 int(2) default '0',
  L4 int(2) default '0',
  L6 int(2) default '0',
  L8 int(2) default '0',
  L10 int(2) default '0',
  R2 int(2) default '0',
  R4 int(2) default '0',
  R6 int(2) default '0',
  R8 int(2) default '0',
  R10 int(2) default '0',
  SDcount int(2) NOT NULL default '0',
  SDscore float NOT NULL default '0',
  SDseen char(1) default NULL,
  SDyear int(2) NOT NULL default '38',
  PRIMARY KEY  (SDID),
  UNIQUE KEY SRID (SDID),
  KEY SRID_2 (SDID)
) TYPE=MyISAM;

--
-- Dumping data for table `reeds`
--

INSERT INTO reeds VALUES (1,1,1,5,10,'D',25,20,15,10,5,0,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (2,2,2,7,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (3,3,3,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (4,4,4,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (5,5,3,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (6,6,5,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (7,7,6,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (8,8,7,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (9,9,8,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (10,10,3,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (11,11,6,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (12,12,5,14,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (13,13,9,7,3,'D',25,20,15,10,5,0,0,0,0,5,6,80,NULL,37);
INSERT INTO reeds VALUES (14,14,10,7,3,'D',0,0,15,10,5,0,0,0,0,0,3,30,NULL,37);
INSERT INTO reeds VALUES (15,15,11,7,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (16,16,12,7,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (17,17,13,7,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (18,11,2,7,0,'D',0,0,15,0,5,0,0,15,10,5,5,50,NULL,37);
INSERT INTO reeds VALUES (19,18,12,7,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (20,19,9,1,3,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (21,20,14,4,1,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (22,21,15,4,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (23,22,16,4,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (24,23,15,4,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (25,24,17,4,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (26,24,17,4,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (27,25,16,4,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (28,26,18,17,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (29,27,18,17,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (30,28,16,17,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (31,29,19,15,8,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (32,30,20,15,8,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (33,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (34,31,21,15,8,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (35,32,21,15,8,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (36,33,20,15,8,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (37,34,1,12,10,'B',25,0,15,10,5,20,0,15,10,5,8,105,NULL,37);
INSERT INTO reeds VALUES (38,35,22,12,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (39,36,23,12,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (40,37,1,12,10,'B',25,20,15,10,5,0,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (41,38,24,12,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (42,39,24,12,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (43,40,25,11,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (44,41,26,11,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (45,42,27,11,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (46,43,28,11,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (47,44,29,11,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (48,45,30,11,1,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (49,46,31,11,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (50,47,32,11,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (51,44,29,11,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (52,42,27,11,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (53,47,32,1,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (54,44,29,11,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (55,43,28,11,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (56,48,33,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (57,49,34,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (58,50,35,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (59,51,36,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (60,52,34,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (61,53,37,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (62,54,38,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (63,55,38,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (64,56,36,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (65,57,39,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (66,33,36,2,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (67,53,37,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (68,56,36,2,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (69,47,32,11,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (70,25,16,4,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (71,14,10,5,3,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (72,58,40,15,8,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (73,59,1,3,7,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (74,53,37,3,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (75,60,1,3,7,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (76,61,1,3,7,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (77,62,38,3,7,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (78,55,38,3,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (79,63,1,3,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (80,20,41,3,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (81,64,34,3,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (82,49,34,3,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (83,65,42,3,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (84,51,36,3,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (85,66,1,3,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (86,67,43,10,2,'B',20,0,15,10,5,25,0,0,10,5,7,90,NULL,37);
INSERT INTO reeds VALUES (87,68,44,10,2,'B',20,0,15,10,5,0,0,0,10,0,5,60,NULL,37);
INSERT INTO reeds VALUES (88,69,45,10,2,'B',20,0,15,0,5,20,0,0,0,5,5,65,NULL,37);
INSERT INTO reeds VALUES (89,70,46,10,2,'B',20,0,15,10,5,20,0,15,0,5,7,90,NULL,37);
INSERT INTO reeds VALUES (90,71,47,10,2,'B',20,0,15,0,5,20,0,15,10,5,7,90,NULL,37);
INSERT INTO reeds VALUES (91,72,48,10,2,'B',0,0,15,10,5,0,0,15,10,5,6,60,NULL,37);
INSERT INTO reeds VALUES (92,73,49,10,2,'B',20,0,15,10,5,20,0,0,10,5,7,85,NULL,37);
INSERT INTO reeds VALUES (93,74,50,10,2,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (94,75,51,10,2,'D',25,0,15,10,5,20,0,15,10,5,8,105,NULL,37);
INSERT INTO reeds VALUES (95,76,50,10,2,'D',20,0,15,10,5,0,0,0,0,5,5,55,NULL,37);
INSERT INTO reeds VALUES (96,77,52,10,13,'B',0,0,0,0,0,0,0,15,10,5,3,30,NULL,37);
INSERT INTO reeds VALUES (97,78,1,1,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (98,79,53,10,2,'B',25,0,0,0,5,0,0,0,0,5,3,35,NULL,37);
INSERT INTO reeds VALUES (99,37,1,1,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (100,80,1,1,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (101,81,53,10,2,'D',20,0,15,10,5,0,0,15,0,5,6,70,NULL,37);
INSERT INTO reeds VALUES (102,82,1,1,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (103,83,51,10,2,'D',0,0,0,10,5,20,0,0,10,5,5,50,NULL,37);
INSERT INTO reeds VALUES (104,84,54,10,2,'D',20,0,0,10,5,0,0,0,0,5,4,40,NULL,37);
INSERT INTO reeds VALUES (105,85,1,1,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (106,86,55,10,13,'D',20,0,15,10,5,25,0,15,10,5,8,105,NULL,37);
INSERT INTO reeds VALUES (107,35,1,1,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (108,87,1,1,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (109,88,1,1,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (110,89,1,1,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (111,90,1,1,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (112,91,56,3,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (113,92,57,20,3,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (114,93,58,20,3,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (115,94,59,20,3,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (116,95,9,20,3,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (117,96,60,20,3,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (118,97,61,20,3,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (119,98,60,20,3,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (120,42,27,20,0,'B',0,0,15,10,5,0,0,0,10,5,5,45,NULL,37);
INSERT INTO reeds VALUES (121,92,57,20,0,'D',0,0,0,10,5,0,20,0,0,5,4,40,NULL,37);
INSERT INTO reeds VALUES (122,93,58,20,0,'D',0,0,15,10,5,0,0,15,10,5,6,60,NULL,37);
INSERT INTO reeds VALUES (123,96,62,20,0,'D',0,0,0,0,5,0,0,0,0,5,2,10,NULL,37);
INSERT INTO reeds VALUES (124,97,61,20,0,'B',0,20,15,10,5,25,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (125,99,29,20,1,'B',0,20,15,10,5,25,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (126,100,10,20,3,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (127,101,63,20,3,'D',25,20,15,10,5,25,0,15,10,5,9,130,NULL,37);
INSERT INTO reeds VALUES (128,102,64,20,3,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (129,102,9,20,0,'D',25,20,15,10,5,25,0,0,10,5,8,115,NULL,37);
INSERT INTO reeds VALUES (130,103,9,20,3,'D',0,0,15,10,5,0,0,15,10,5,6,60,NULL,37);
INSERT INTO reeds VALUES (131,104,64,20,3,'D',25,20,15,10,0,0,20,15,10,5,8,120,NULL,37);
INSERT INTO reeds VALUES (132,105,10,20,3,'D',0,0,15,0,5,0,0,0,0,5,3,25,NULL,37);
INSERT INTO reeds VALUES (133,106,65,22,14,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (134,107,66,22,14,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (135,108,67,22,14,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (136,109,68,22,14,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (137,110,69,25,4,'B',25,20,15,10,5,25,20,15,10,5,10,150,NULL,37);
INSERT INTO reeds VALUES (138,111,70,25,4,'D',25,20,15,10,5,0,0,15,10,5,8,105,NULL,37);
INSERT INTO reeds VALUES (139,108,67,25,4,'D',25,20,15,10,5,25,0,15,10,5,9,130,NULL,37);
INSERT INTO reeds VALUES (140,20,71,25,1,'D',25,20,15,10,5,0,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (141,109,67,25,14,'B',0,20,0,0,0,25,20,15,10,5,6,95,NULL,37);
INSERT INTO reeds VALUES (142,112,72,18,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (143,113,73,18,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (144,114,74,18,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (145,114,74,18,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (146,115,75,18,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (147,116,72,18,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (148,117,72,18,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (149,117,72,18,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (150,118,74,18,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (151,113,73,24,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (152,119,76,24,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (153,120,77,24,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (154,121,78,24,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (155,116,72,24,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (156,114,74,24,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (157,122,79,24,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (158,112,72,24,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (159,117,72,24,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (160,123,80,14,2,'B',0,20,15,10,5,0,20,15,10,5,8,100,NULL,37);
INSERT INTO reeds VALUES (161,124,48,14,2,'D',25,0,15,10,5,0,20,15,10,5,8,105,NULL,37);
INSERT INTO reeds VALUES (162,125,43,14,2,'D',0,0,15,10,5,0,0,0,10,0,4,40,NULL,37);
INSERT INTO reeds VALUES (163,126,81,14,2,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (164,73,82,14,0,'D',25,20,0,10,5,25,0,15,0,5,7,105,NULL,37);
INSERT INTO reeds VALUES (165,67,48,14,0,'B',0,20,0,0,0,0,20,0,0,0,2,40,NULL,37);
INSERT INTO reeds VALUES (166,72,48,14,0,'B',0,0,15,0,5,0,0,15,0,0,3,35,NULL,37);
INSERT INTO reeds VALUES (167,127,83,14,2,'B',0,0,15,0,0,0,0,0,0,5,2,20,NULL,37);
INSERT INTO reeds VALUES (168,128,84,14,2,'B',0,0,0,10,0,0,0,0,0,5,2,15,NULL,37);
INSERT INTO reeds VALUES (169,75,48,14,0,'B',0,20,15,0,5,25,0,15,10,0,6,90,NULL,37);
INSERT INTO reeds VALUES (170,74,85,14,0,'B',0,20,0,0,5,0,20,0,0,0,3,45,NULL,37);
INSERT INTO reeds VALUES (171,129,1,1,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (172,130,1,1,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (173,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (174,117,72,24,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (175,71,47,10,2,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (176,72,48,14,2,'B',0,0,15,0,5,0,0,15,0,0,3,35,NULL,37);
INSERT INTO reeds VALUES (177,126,81,14,2,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (178,125,43,14,2,'D',0,0,15,10,5,0,0,0,10,0,4,40,NULL,37);
INSERT INTO reeds VALUES (179,73,82,14,2,'B',25,20,15,10,5,25,0,0,0,5,7,105,NULL,37);
INSERT INTO reeds VALUES (180,131,86,9,12,'B',0,20,15,10,5,25,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (181,132,87,9,12,'B',0,20,15,10,5,25,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (182,131,86,9,12,'B',0,20,15,10,5,25,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (183,133,88,9,12,'B',0,20,15,10,5,0,0,15,10,5,7,80,NULL,37);
INSERT INTO reeds VALUES (184,134,89,9,12,'D',25,0,15,10,5,25,0,15,10,5,8,110,NULL,37);
INSERT INTO reeds VALUES (185,135,90,9,12,'D',25,0,15,10,5,25,20,0,10,5,8,115,NULL,37);
INSERT INTO reeds VALUES (186,136,91,9,11,'D',25,20,15,10,5,0,20,15,0,5,8,115,NULL,37);
INSERT INTO reeds VALUES (187,137,92,9,12,'D',0,20,15,10,5,0,20,15,10,5,8,100,NULL,37);
INSERT INTO reeds VALUES (188,138,93,9,12,'D',0,20,0,10,0,0,20,0,10,5,5,65,NULL,37);
INSERT INTO reeds VALUES (189,139,94,9,12,'D',25,20,0,10,5,25,20,15,10,5,9,135,NULL,37);
INSERT INTO reeds VALUES (190,140,95,10,12,'D',0,20,0,10,5,0,20,15,10,5,7,85,NULL,37);
INSERT INTO reeds VALUES (191,141,90,9,12,'D',0,20,15,0,5,0,20,15,0,5,6,80,NULL,37);
INSERT INTO reeds VALUES (192,2,96,21,16,'D',25,20,15,10,5,25,20,15,10,5,10,150,NULL,37);
INSERT INTO reeds VALUES (193,12,88,21,16,'B',25,20,15,10,5,25,20,15,10,5,10,150,NULL,37);
INSERT INTO reeds VALUES (194,142,97,21,16,'D',25,20,15,10,5,25,20,15,10,5,10,150,NULL,37);
INSERT INTO reeds VALUES (195,7,6,21,16,'D',25,20,15,10,5,25,20,15,10,5,10,150,NULL,37);
INSERT INTO reeds VALUES (196,143,23,1,16,'B',25,20,15,10,5,25,20,15,10,5,10,150,NULL,37);
INSERT INTO reeds VALUES (197,3,96,21,15,'B',25,20,15,10,5,25,20,15,10,0,9,145,NULL,37);
INSERT INTO reeds VALUES (198,144,88,21,16,'D',25,20,15,10,5,0,0,0,10,5,7,90,NULL,37);
INSERT INTO reeds VALUES (199,145,96,21,16,'D',25,20,15,10,5,25,20,15,10,5,10,150,NULL,37);
INSERT INTO reeds VALUES (200,146,96,21,16,'D',25,20,0,10,5,25,20,15,10,5,9,135,NULL,37);
INSERT INTO reeds VALUES (201,74,85,27,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (202,147,98,27,15,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (203,148,99,27,5,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (204,149,100,27,13,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (205,150,101,27,13,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (206,151,99,27,5,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (207,79,53,27,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (208,152,102,27,2,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (209,153,98,27,15,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (210,75,51,27,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (211,154,103,27,11,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (212,155,77,27,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (213,156,104,27,2,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (214,157,105,27,2,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (215,158,105,27,15,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (216,159,98,27,15,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (217,160,106,27,13,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (218,161,99,27,5,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (219,162,107,27,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (220,95,9,26,0,'A',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (221,163,98,27,15,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (222,164,108,27,13,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (223,165,53,27,2,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (224,95,9,26,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (225,97,10,26,3,'A',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (226,97,10,26,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (227,92,57,26,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (228,102,64,26,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (229,94,10,26,0,'A',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (230,94,10,26,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (231,166,64,26,3,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (232,167,3,23,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (233,12,88,23,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (234,12,88,23,16,'A',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (235,6,5,23,16,'A',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (236,142,109,23,16,'A',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (237,93,58,20,16,'B',0,0,15,10,5,0,0,0,10,5,5,45,NULL,37);
INSERT INTO reeds VALUES (238,95,9,20,3,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (239,97,61,20,3,'D',25,20,15,10,5,0,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (240,97,61,20,3,'B',25,20,15,10,5,0,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (241,44,29,20,1,'B',25,20,15,10,5,0,20,15,10,5,9,125,NULL,37);
INSERT INTO reeds VALUES (242,95,9,26,3,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (243,97,10,26,3,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (244,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (245,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (246,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (247,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (248,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (249,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (250,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (251,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (252,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (253,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (254,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO reeds VALUES (255,83,103,32,0,'E',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (256,168,110,34,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (257,78,111,34,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (258,117,112,34,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (259,155,77,34,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (260,169,113,34,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (261,170,114,34,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (262,171,73,34,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (263,172,115,34,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (264,136,116,34,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (265,173,117,34,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (266,116,114,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (267,121,118,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (268,162,107,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (269,174,77,34,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (270,21,119,36,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (271,176,120,36,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (272,22,119,36,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (273,177,121,36,1,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (274,178,122,36,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (275,23,122,36,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (276,167,3,35,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (277,6,5,35,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (278,179,123,35,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (279,180,4,35,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (280,181,124,35,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (281,17,5,35,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (282,6,5,35,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (283,167,4,35,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (284,172,125,37,12,'D',25,20,15,10,5,0,20,15,10,5,9,125,NULL,38);
INSERT INTO reeds VALUES (285,182,115,37,12,'D',25,20,15,10,5,0,20,15,10,5,9,125,NULL,38);
INSERT INTO reeds VALUES (286,183,126,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (287,184,117,39,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (288,185,127,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (289,186,128,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (290,187,129,39,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (291,188,128,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (292,189,126,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (293,190,130,39,12,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (294,83,103,32,0,'A',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (295,83,103,32,0,'B',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (296,78,40,32,0,'C',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (297,78,40,32,0,'D',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (298,25,46,32,0,'E',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (299,25,46,32,0,'F',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (300,116,131,41,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (301,191,132,42,13,'C',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (302,192,97,42,13,'C',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (303,193,97,42,13,'C',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (304,194,132,42,13,'C',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (305,21,119,36,1,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (306,176,120,36,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (307,177,121,36,1,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (308,178,122,36,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (309,22,119,36,1,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (310,195,133,38,15,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (311,196,103,38,15,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (312,197,134,38,15,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (313,172,125,48,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (314,172,125,48,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (315,172,115,48,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (316,198,135,48,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (317,199,136,48,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (318,200,136,48,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (319,201,135,48,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (320,178,122,36,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (321,176,120,36,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (322,197,134,38,15,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (323,182,115,37,12,'D',25,20,15,10,5,0,20,15,10,5,9,125,NULL,38);
INSERT INTO reeds VALUES (324,172,125,37,12,'D',0,20,15,10,5,25,20,15,10,5,9,125,NULL,38);
INSERT INTO reeds VALUES (325,167,4,34,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (326,65,42,46,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (327,56,137,46,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (328,51,36,46,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (329,202,56,46,7,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (330,203,12,46,7,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (331,204,12,46,7,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (332,83,1,34,0,'E',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (333,167,4,35,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (334,6,5,35,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (335,179,123,35,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (336,180,4,35,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (337,181,124,35,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (338,17,5,35,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (339,6,5,35,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (340,167,4,35,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (341,205,16,53,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (342,22,138,53,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (343,206,139,53,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (344,207,140,53,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (345,208,141,53,1,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (346,178,142,53,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (347,209,143,53,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (348,210,144,53,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (349,211,139,53,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (350,26,145,53,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (351,212,141,53,1,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (352,213,16,53,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (353,214,146,53,1,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (354,89,147,54,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (355,88,148,54,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (356,90,149,54,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (357,82,123,54,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (358,129,24,54,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (359,215,147,54,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (360,27,18,53,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (361,47,32,51,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (362,41,26,51,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (363,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (364,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (365,22,139,55,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (366,211,139,55,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (367,208,141,55,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (368,206,139,55,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (369,216,150,55,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (370,212,141,55,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (371,47,32,55,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (372,43,32,55,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (373,217,135,56,12,'B',0,0,0,10,5,25,20,15,10,5,7,90,NULL,38);
INSERT INTO reeds VALUES (374,218,151,56,12,'D',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (375,182,115,56,0,'D',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (376,201,135,56,0,'B',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (377,200,136,56,0,'D',25,20,15,10,5,25,20,15,10,5,10,150,NULL,38);
INSERT INTO reeds VALUES (378,199,136,56,0,'D',25,20,15,10,5,0,20,15,10,5,9,125,NULL,38);
INSERT INTO reeds VALUES (379,219,125,56,12,'D',25,20,15,10,5,0,20,15,10,5,9,125,NULL,38);
INSERT INTO reeds VALUES (380,199,136,56,0,'B',0,20,15,10,5,0,0,15,10,5,7,80,NULL,38);
INSERT INTO reeds VALUES (381,200,136,56,0,'B',25,20,15,10,5,25,0,15,10,5,9,130,NULL,38);
INSERT INTO reeds VALUES (382,220,152,56,12,'D',0,0,15,10,5,0,0,15,10,5,6,60,NULL,38);
INSERT INTO reeds VALUES (383,220,152,56,0,'B',0,20,15,10,5,0,20,15,10,5,8,100,NULL,38);
INSERT INTO reeds VALUES (384,6,5,58,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (385,221,153,58,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (386,167,3,58,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (387,222,4,58,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (388,223,3,58,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (389,224,3,58,16,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (390,225,154,58,16,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (391,226,155,58,16,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (392,227,156,58,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (393,228,157,58,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (394,3,158,58,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (395,11,153,58,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (396,229,159,58,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (397,230,159,58,16,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (398,231,153,58,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (399,15,159,58,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (400,232,156,58,16,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (401,78,46,59,0,'C',25,20,15,10,5,0,20,15,10,5,9,125,NULL,25);
INSERT INTO reeds VALUES (402,25,99,59,0,'B',0,20,15,10,0,0,0,15,10,5,6,75,NULL,25);
INSERT INTO reeds VALUES (403,168,110,34,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (404,170,114,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (405,171,73,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (406,172,115,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (407,136,160,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (408,78,110,34,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (409,117,112,34,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (410,173,117,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (411,116,114,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (412,155,77,34,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (413,121,118,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (414,169,113,34,0,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (415,162,107,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (416,174,77,34,0,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (417,183,126,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (418,184,117,39,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (419,185,127,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (420,186,128,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (421,187,128,39,12,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (422,188,128,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (423,189,126,39,12,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (424,190,130,39,12,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (425,92,161,45,3,'D',0,20,15,10,5,0,20,0,10,5,7,85,NULL,38);
INSERT INTO reeds VALUES (426,6,5,35,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (427,233,123,35,16,'F',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (428,206,139,55,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (429,211,139,55,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (430,216,150,55,1,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (431,208,141,55,1,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (432,6,5,58,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (433,167,3,58,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (434,12,88,58,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (435,231,153,58,16,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (436,243,169,58,16,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (437,89,147,54,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (438,129,24,54,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (439,215,147,54,10,'B',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (440,244,24,54,10,'D',0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO reeds VALUES (441,116,114,57,0,'B',25,0,15,10,0,25,0,0,0,5,5,80,NULL,38);
INSERT INTO reeds VALUES (442,95,9,43,0,'B',25,20,15,10,0,0,0,0,0,0,4,70,NULL,38);
INSERT INTO reeds VALUES (443,95,9,43,0,'B',25,20,15,10,0,0,0,0,0,0,4,70,NULL,38);
INSERT INTO reeds VALUES (444,92,161,43,0,'D',25,20,15,10,5,0,20,15,10,5,9,125,NULL,38);
INSERT INTO reeds VALUES (445,95,9,43,0,'B',25,20,15,10,0,0,0,0,0,0,4,70,NULL,38);
INSERT INTO reeds VALUES (446,268,10,43,3,'B',0,0,0,0,5,25,20,15,10,5,6,80,NULL,38);
INSERT INTO reeds VALUES (447,83,103,73,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (448,114,74,74,0,'D',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (449,114,74,74,0,'C',15,0,9,6,3,15,12,9,6,3,9,78,NULL,39);
INSERT INTO reeds VALUES (450,114,74,74,0,'B',15,0,9,6,3,0,0,0,6,0,5,39,NULL,39);
INSERT INTO reeds VALUES (451,116,199,74,0,'D',0,0,0,6,3,0,0,9,6,3,5,27,NULL,39);
INSERT INTO reeds VALUES (452,116,74,74,0,'D',15,12,9,6,3,0,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (453,171,73,74,0,'D',0,0,9,6,3,0,0,9,6,3,6,36,NULL,39);
INSERT INTO reeds VALUES (454,171,73,74,0,'B',0,12,9,6,3,0,12,0,6,3,7,51,NULL,39);
INSERT INTO reeds VALUES (455,117,112,74,0,'D',15,12,9,6,3,0,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (456,117,112,74,0,'B',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (457,276,112,74,12,'D',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (458,277,112,74,10,'D',0,0,9,6,3,0,12,0,6,3,6,39,NULL,39);
INSERT INTO reeds VALUES (459,174,199,74,0,'D',0,0,0,0,3,0,0,0,6,3,3,12,NULL,39);
INSERT INTO reeds VALUES (460,278,112,74,12,'F',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (461,284,96,79,16,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (462,11,96,79,0,'C',0,12,9,6,3,0,12,9,6,3,8,60,NULL,39);
INSERT INTO reeds VALUES (463,285,96,79,16,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (464,15,173,79,0,'A',15,12,0,6,3,15,0,9,6,3,8,69,NULL,39);
INSERT INTO reeds VALUES (465,286,206,79,16,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (466,232,96,79,0,'F',15,12,9,0,3,15,12,9,6,3,9,84,NULL,39);
INSERT INTO reeds VALUES (467,116,205,83,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (468,291,211,83,12,'D',0,12,9,6,3,15,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (469,292,211,83,12,'D',0,12,9,6,3,15,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (470,293,212,83,12,'F',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (471,294,213,83,12,'D',15,0,9,6,3,15,12,9,6,3,9,78,NULL,39);
INSERT INTO reeds VALUES (472,117,112,83,0,'B',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (473,117,112,83,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (474,276,213,83,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (475,291,212,83,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (476,25,40,84,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (477,292,211,83,12,'D',0,12,9,6,3,15,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (478,293,212,83,12,'D',15,12,9,6,3,15,0,9,6,3,9,78,NULL,39);
INSERT INTO reeds VALUES (479,191,207,91,0,'C',15,12,9,6,3,15,0,9,6,3,9,78,NULL,39);
INSERT INTO reeds VALUES (480,298,216,91,13,'E',0,0,0,6,3,0,0,9,6,3,5,27,NULL,39);
INSERT INTO reeds VALUES (481,289,210,91,0,'C',15,12,0,6,0,15,12,9,6,3,8,78,NULL,39);
INSERT INTO reeds VALUES (482,299,217,91,13,'C',15,12,0,6,3,15,12,9,6,3,9,81,NULL,39);
INSERT INTO reeds VALUES (483,300,209,91,13,'C',15,12,9,6,3,0,12,9,0,3,8,69,NULL,39);
INSERT INTO reeds VALUES (484,309,222,94,16,'C',15,12,9,6,3,0,0,9,6,3,8,63,NULL,39);
INSERT INTO reeds VALUES (485,310,223,94,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (486,11,153,94,0,'A',0,12,9,6,3,0,12,0,6,3,7,51,NULL,39);
INSERT INTO reeds VALUES (487,12,88,94,0,'A',0,12,9,6,3,0,0,9,6,3,7,48,NULL,39);
INSERT INTO reeds VALUES (488,226,154,94,0,'C',15,12,9,6,3,0,12,9,0,0,7,66,NULL,39);
INSERT INTO reeds VALUES (489,274,170,94,0,'A',0,12,9,6,3,0,0,9,6,0,6,45,NULL,39);
INSERT INTO reeds VALUES (490,311,224,94,16,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (491,286,206,94,0,'A',15,0,9,6,3,15,12,9,6,3,9,78,NULL,39);
INSERT INTO reeds VALUES (492,15,173,94,0,'A',15,12,9,6,3,0,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (493,312,196,94,16,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (494,248,225,94,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (495,17,234,100,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (496,275,235,100,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (497,6,5,100,0,'A',15,12,9,6,3,0,12,9,6,0,8,72,NULL,39);
INSERT INTO reeds VALUES (498,11,153,100,0,'A',0,0,9,0,3,0,12,9,6,3,6,42,NULL,39);
INSERT INTO reeds VALUES (499,11,153,100,0,'A',0,0,9,0,3,0,12,9,6,3,6,42,NULL,39);
INSERT INTO reeds VALUES (500,279,177,100,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,39);
INSERT INTO reeds VALUES (501,251,175,100,0,'C',15,12,9,6,3,15,12,9,6,0,9,87,NULL,39);
INSERT INTO reeds VALUES (502,248,196,100,0,'C',15,0,9,6,3,15,0,9,6,3,8,66,NULL,39);
INSERT INTO reeds VALUES (503,321,159,100,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,39);
INSERT INTO reeds VALUES (504,322,236,102,13,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (505,322,236,102,0,'B',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (506,6,5,103,0,'A',15,12,0,6,3,0,12,9,6,3,8,66,NULL,40);
INSERT INTO reeds VALUES (507,312,235,103,0,'C',15,12,9,0,3,15,12,9,6,3,9,84,NULL,40);
INSERT INTO reeds VALUES (508,275,235,103,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (509,279,177,103,0,'A',15,12,9,6,3,0,0,9,6,3,8,63,NULL,40);
INSERT INTO reeds VALUES (510,281,213,103,0,'A',0,0,0,0,0,0,0,0,6,3,2,9,NULL,40);
INSERT INTO reeds VALUES (511,17,234,103,0,'A',15,12,9,6,3,15,0,9,6,3,9,78,NULL,40);
INSERT INTO reeds VALUES (512,321,177,103,0,'E',15,12,0,0,3,15,0,9,6,3,7,63,NULL,40);
INSERT INTO reeds VALUES (513,323,3,103,16,'C',0,12,9,6,0,0,12,9,6,3,7,57,NULL,40);
INSERT INTO reeds VALUES (514,324,175,103,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (515,325,237,103,16,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (516,274,234,103,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (517,116,72,104,0,'B',0,0,0,0,0,0,12,9,6,3,4,30,NULL,40);
INSERT INTO reeds VALUES (518,116,72,104,0,'A',0,0,9,6,3,0,0,9,6,3,6,36,NULL,40);
INSERT INTO reeds VALUES (519,327,238,104,12,'F',15,12,9,0,3,15,0,9,6,3,8,72,NULL,40);
INSERT INTO reeds VALUES (520,328,72,104,12,'C',0,12,0,0,0,15,0,9,6,3,5,45,NULL,40);
INSERT INTO reeds VALUES (521,329,72,104,12,'C',0,0,9,6,3,0,12,9,6,3,7,48,NULL,40);
INSERT INTO reeds VALUES (522,117,72,104,0,'A',0,12,9,6,3,15,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (523,167,3,105,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (524,312,239,105,0,'A',0,12,9,0,3,0,0,9,6,3,6,42,NULL,40);
INSERT INTO reeds VALUES (525,312,240,105,0,'A',0,12,9,0,3,0,0,9,6,3,6,42,NULL,40);
INSERT INTO reeds VALUES (526,6,5,105,0,'A',0,12,9,6,3,15,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (527,7,6,105,0,'A',15,12,9,6,0,15,12,0,6,3,8,78,NULL,40);
INSERT INTO reeds VALUES (528,279,177,105,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (529,42,239,105,0,'A',0,12,9,6,3,15,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (530,11,241,105,0,'A',15,12,9,6,3,15,0,9,6,3,9,78,NULL,40);
INSERT INTO reeds VALUES (531,274,3,106,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (532,330,3,106,16,'C',15,12,9,6,3,0,0,9,6,3,8,63,NULL,40);
INSERT INTO reeds VALUES (533,331,235,106,16,'E',0,12,9,6,3,15,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (534,205,16,108,1,'A',15,12,9,6,0,15,12,9,6,3,9,87,NULL,40);
INSERT INTO reeds VALUES (535,207,140,108,1,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,40);
INSERT INTO reeds VALUES (536,210,144,108,1,'A',0,0,9,6,3,0,12,9,6,3,7,48,NULL,40);
INSERT INTO reeds VALUES (537,322,236,102,0,'F',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (538,320,177,105,16,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (539,42,27,109,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (540,332,243,109,1,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (541,333,244,109,1,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (542,206,245,108,1,'C',0,12,9,6,3,15,12,9,0,3,8,69,NULL,40);
INSERT INTO reeds VALUES (543,209,246,108,0,'A',15,12,9,0,3,0,12,9,6,3,8,69,NULL,40);
INSERT INTO reeds VALUES (544,26,145,108,1,'A',0,12,9,6,3,15,0,9,6,3,8,63,NULL,40);
INSERT INTO reeds VALUES (545,208,144,108,1,'A',15,0,9,6,3,0,0,9,0,3,6,45,NULL,40);
INSERT INTO reeds VALUES (546,313,227,108,1,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (547,22,247,108,0,'A',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (548,15,173,107,0,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (549,334,248,107,16,'E',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (550,335,249,107,16,'E',15,12,9,6,3,15,12,0,6,3,9,81,NULL,40);
INSERT INTO reeds VALUES (551,336,228,108,1,'A',15,12,0,6,3,0,12,9,6,3,8,66,NULL,40);
INSERT INTO reeds VALUES (552,334,248,110,0,'E',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (553,335,249,110,0,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (554,337,250,111,16,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (555,338,250,111,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (556,248,196,111,0,'C',15,0,9,6,3,0,12,9,6,3,8,63,NULL,40);
INSERT INTO reeds VALUES (557,11,153,111,0,'A',15,12,9,6,3,0,0,0,6,3,7,54,NULL,40);
INSERT INTO reeds VALUES (558,339,251,111,16,'C',0,12,0,6,3,15,12,0,6,3,7,57,NULL,40);
INSERT INTO reeds VALUES (559,340,159,111,16,'E',0,12,9,6,3,0,12,9,6,3,8,60,NULL,40);
INSERT INTO reeds VALUES (560,341,239,111,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (561,286,252,111,0,'C',15,12,9,6,3,0,0,0,6,0,6,51,NULL,40);
INSERT INTO reeds VALUES (562,342,173,111,16,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (563,259,241,111,0,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (564,226,239,111,0,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (565,336,228,114,1,'A',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (566,207,140,114,1,'A',15,12,9,6,3,15,0,9,6,3,9,78,NULL,40);
INSERT INTO reeds VALUES (567,210,144,114,1,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,40);
INSERT INTO reeds VALUES (568,336,228,114,1,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,40);
INSERT INTO reeds VALUES (569,209,246,114,1,'A',0,0,9,6,3,0,0,9,6,3,6,36,NULL,40);
INSERT INTO reeds VALUES (570,207,140,114,1,'A',0,0,9,6,3,0,0,9,6,3,6,36,NULL,40);
INSERT INTO reeds VALUES (571,210,144,114,1,'A',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (572,209,246,114,1,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,40);
INSERT INTO reeds VALUES (573,322,236,117,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (574,322,236,117,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (575,42,27,118,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (576,351,260,118,1,'A',15,12,9,6,3,15,12,9,0,3,9,84,NULL,41);
INSERT INTO reeds VALUES (577,270,261,119,0,'C',0,12,9,0,3,15,0,9,0,0,5,48,NULL,41);
INSERT INTO reeds VALUES (578,352,124,119,16,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (579,353,124,119,16,'C',15,12,9,6,3,0,12,0,6,3,8,66,NULL,41);
INSERT INTO reeds VALUES (580,6,5,119,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (581,179,123,119,0,'A',15,0,9,6,3,15,12,9,6,3,9,78,NULL,41);
INSERT INTO reeds VALUES (582,274,234,119,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (583,17,264,119,0,'C',0,12,9,0,3,0,12,9,6,3,7,54,NULL,41);
INSERT INTO reeds VALUES (584,233,4,119,0,'E',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (585,275,234,119,0,'A',0,0,0,6,3,0,12,9,6,3,6,39,NULL,41);
INSERT INTO reeds VALUES (586,279,177,119,0,'A',0,12,9,6,0,15,12,9,6,3,8,72,NULL,41);
INSERT INTO reeds VALUES (587,360,265,119,16,'C',0,12,9,6,0,15,12,9,0,3,7,66,NULL,41);
INSERT INTO reeds VALUES (588,363,217,122,13,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (589,364,266,122,13,'A',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (590,365,267,122,13,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (591,288,268,122,0,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (592,289,210,122,0,'A',0,12,9,6,3,0,12,0,6,3,7,51,NULL,41);
INSERT INTO reeds VALUES (593,366,209,122,13,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (594,367,269,122,13,'E',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (595,371,271,115,17,'C',0,12,9,6,3,15,12,0,6,3,8,66,NULL,40);
INSERT INTO reeds VALUES (596,369,217,115,0,'E',15,12,0,6,3,0,12,9,6,3,8,66,NULL,40);
INSERT INTO reeds VALUES (597,289,210,115,0,'A',0,12,0,6,3,0,0,0,0,3,4,24,NULL,40);
INSERT INTO reeds VALUES (598,370,217,115,0,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (599,372,217,115,15,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (600,299,217,115,0,'A',15,12,0,6,3,0,12,9,0,3,7,60,NULL,40);
INSERT INTO reeds VALUES (601,164,272,115,0,'A',0,12,9,0,3,0,0,9,6,3,6,42,NULL,40);
INSERT INTO reeds VALUES (602,373,273,115,2,'A',15,12,9,6,3,0,12,9,0,3,8,69,NULL,40);
INSERT INTO reeds VALUES (603,374,274,115,2,'C',0,0,9,6,3,0,12,9,6,3,7,48,NULL,40);
INSERT INTO reeds VALUES (604,375,272,115,15,'A',15,12,9,6,3,15,0,9,6,3,9,78,NULL,40);
INSERT INTO reeds VALUES (605,239,272,115,0,'A',15,12,9,6,3,0,12,9,6,0,8,72,NULL,40);
INSERT INTO reeds VALUES (606,376,274,115,2,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (607,26,273,115,0,'A',0,0,0,0,3,15,12,0,6,3,5,39,NULL,40);
INSERT INTO reeds VALUES (608,343,267,115,0,'A',0,12,9,0,0,15,12,9,0,3,6,60,NULL,40);
INSERT INTO reeds VALUES (609,365,267,115,0,'C',15,0,9,6,3,15,12,9,6,3,9,78,NULL,40);
INSERT INTO reeds VALUES (610,377,275,115,17,'E',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (611,378,273,115,2,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (612,165,273,115,0,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (613,240,208,115,0,'A',15,12,9,6,3,15,0,0,6,3,8,69,NULL,40);
INSERT INTO reeds VALUES (614,380,217,115,8,'C',0,12,0,0,0,15,12,9,6,3,6,57,NULL,40);
INSERT INTO reeds VALUES (615,381,208,115,1,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,40);
INSERT INTO reeds VALUES (616,365,267,120,0,'C',0,0,9,6,3,15,12,9,6,3,8,63,NULL,40);
INSERT INTO reeds VALUES (617,364,217,120,0,'C',15,12,9,6,3,0,0,9,6,3,8,63,NULL,40);
INSERT INTO reeds VALUES (618,289,210,120,0,'A',0,12,9,6,3,15,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (619,298,277,120,0,'C',0,12,9,6,3,0,12,9,6,3,8,60,NULL,40);
INSERT INTO reeds VALUES (620,299,267,120,0,'C',15,12,9,6,3,0,12,0,6,3,8,66,NULL,40);
INSERT INTO reeds VALUES (621,365,267,121,0,'C',15,12,9,6,3,15,0,9,6,0,8,75,NULL,40);
INSERT INTO reeds VALUES (622,364,217,121,0,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,40);
INSERT INTO reeds VALUES (623,299,267,121,0,'C',15,12,9,6,3,15,0,0,6,3,8,69,NULL,40);
INSERT INTO reeds VALUES (624,298,277,121,0,'C',0,12,9,6,3,0,12,9,6,3,8,60,NULL,40);
INSERT INTO reeds VALUES (625,289,210,121,0,'A',0,0,9,6,3,15,12,9,6,3,8,63,NULL,40);
INSERT INTO reeds VALUES (626,116,278,123,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (627,329,72,123,0,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (628,117,112,123,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (629,117,112,123,0,'A',15,0,9,6,3,15,12,9,6,3,9,78,NULL,41);
INSERT INTO reeds VALUES (630,233,3,119,0,'E',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (631,207,140,118,0,'A',15,12,9,6,3,0,0,9,6,3,8,63,NULL,41);
INSERT INTO reeds VALUES (632,382,279,118,1,'A',0,0,9,6,3,0,0,9,6,3,6,36,NULL,41);
INSERT INTO reeds VALUES (633,332,146,118,0,'A',0,12,0,0,3,0,0,0,6,0,3,21,NULL,41);
INSERT INTO reeds VALUES (634,342,173,124,0,'A',0,12,9,6,3,0,12,0,6,3,7,51,NULL,41);
INSERT INTO reeds VALUES (635,12,194,124,0,'A',0,12,9,6,3,0,0,9,6,0,6,45,NULL,41);
INSERT INTO reeds VALUES (636,383,280,127,7,'A',0,0,9,6,3,15,12,9,0,3,7,57,NULL,41);
INSERT INTO reeds VALUES (637,384,281,127,7,'A',15,0,9,6,3,0,12,9,0,3,7,57,NULL,41);
INSERT INTO reeds VALUES (638,385,282,127,7,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (639,386,283,127,7,'D',15,12,9,6,3,15,0,9,6,3,9,78,NULL,41);
INSERT INTO reeds VALUES (640,279,239,125,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (641,387,284,125,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (642,167,3,125,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (643,340,196,125,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (644,388,225,125,16,'A',15,12,9,6,0,0,12,9,0,3,7,66,NULL,41);
INSERT INTO reeds VALUES (645,360,265,125,0,'C',0,12,9,6,3,15,12,9,6,0,8,72,NULL,41);
INSERT INTO reeds VALUES (646,341,240,125,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (647,226,240,125,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (648,389,3,125,16,'C',15,12,9,6,0,15,12,9,6,0,8,84,NULL,41);
INSERT INTO reeds VALUES (649,339,153,125,0,'C',15,12,9,6,3,15,12,9,6,0,9,87,NULL,41);
INSERT INTO reeds VALUES (650,279,177,125,0,'A',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (651,279,240,125,0,'A',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (652,279,240,125,0,'A',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (653,167,3,125,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (654,340,196,125,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (655,388,225,125,0,'A',15,12,9,6,0,0,12,9,0,3,7,66,NULL,41);
INSERT INTO reeds VALUES (656,360,265,125,0,'C',0,12,9,6,3,15,12,9,6,0,8,72,NULL,41);
INSERT INTO reeds VALUES (657,341,240,125,0,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (658,226,240,125,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (659,339,153,125,0,'C',15,12,9,6,3,15,12,9,6,0,9,87,NULL,41);
INSERT INTO reeds VALUES (660,360,265,119,0,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (661,275,235,126,0,'A',15,12,9,6,3,15,12,9,6,0,9,87,NULL,41);
INSERT INTO reeds VALUES (662,390,235,126,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (663,17,234,126,0,'A',15,12,0,6,0,0,0,0,6,0,4,39,NULL,41);
INSERT INTO reeds VALUES (664,393,194,130,7,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (665,395,282,130,16,'A',15,12,9,6,3,0,0,9,6,3,8,63,NULL,41);
INSERT INTO reeds VALUES (666,396,286,130,4,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (667,398,116,130,7,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (668,6,282,130,0,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,41);
INSERT INTO reeds VALUES (669,399,22,130,7,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (670,400,287,130,16,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,41);
INSERT INTO reeds VALUES (671,30,288,132,0,'E',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (672,402,289,132,8,'E',15,12,9,6,0,15,12,9,6,0,8,84,NULL,41);
INSERT INTO reeds VALUES (673,403,289,132,8,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (674,404,290,134,3,'A',15,0,9,6,3,15,12,9,6,3,9,78,NULL,41);
INSERT INTO reeds VALUES (675,405,291,134,3,'E',0,12,9,6,3,0,12,0,6,3,7,51,NULL,41);
INSERT INTO reeds VALUES (676,406,292,134,3,'C',15,12,9,6,3,0,0,9,6,0,7,60,NULL,41);
INSERT INTO reeds VALUES (677,407,220,134,3,'A',0,12,9,6,0,0,12,9,6,0,6,54,NULL,41);
INSERT INTO reeds VALUES (678,408,293,134,3,'C',0,12,9,6,0,0,12,9,6,0,6,54,NULL,41);
INSERT INTO reeds VALUES (679,409,294,135,3,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (680,102,295,135,0,'C',15,12,9,6,3,0,0,9,0,0,6,54,NULL,41);
INSERT INTO reeds VALUES (681,404,290,135,0,'A',15,12,0,6,3,0,12,9,0,3,7,60,NULL,41);
INSERT INTO reeds VALUES (682,408,293,135,0,'C',15,12,9,6,3,15,12,9,0,3,9,84,NULL,41);
INSERT INTO reeds VALUES (683,409,290,135,0,'A',15,0,9,6,3,0,0,0,6,3,6,42,NULL,41);
INSERT INTO reeds VALUES (684,322,236,136,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,42);
INSERT INTO reeds VALUES (685,322,236,136,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,42);
INSERT INTO reeds VALUES (686,322,236,136,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,42);
INSERT INTO reeds VALUES (687,322,236,136,0,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,42);
INSERT INTO reeds VALUES (688,410,297,132,8,'E',0,0,0,6,3,15,12,9,6,3,7,54,NULL,41);
INSERT INTO reeds VALUES (689,411,289,132,8,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (690,391,209,128,0,'C',15,12,0,6,3,0,0,9,6,3,7,54,NULL,41);
INSERT INTO reeds VALUES (691,392,277,128,0,'E',0,12,0,6,3,0,0,9,6,3,6,39,NULL,41);
INSERT INTO reeds VALUES (692,365,267,128,0,'C',15,0,9,6,3,15,12,9,6,3,9,78,NULL,41);
INSERT INTO reeds VALUES (693,30,288,132,0,'E',0,12,9,6,3,15,12,9,6,3,9,75,NULL,41);
INSERT INTO reeds VALUES (694,402,289,132,0,'E',15,12,9,6,0,15,12,9,6,3,9,87,NULL,41);
INSERT INTO reeds VALUES (695,403,289,132,0,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,41);
INSERT INTO reeds VALUES (696,210,228,143,0,'A',15,12,9,6,3,0,12,9,6,3,9,75,NULL,42);
INSERT INTO reeds VALUES (697,210,228,143,0,'A',15,12,9,6,3,0,12,9,0,3,8,69,NULL,42);
INSERT INTO reeds VALUES (698,345,258,143,0,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,42);
INSERT INTO reeds VALUES (699,380,258,143,0,'E',0,12,9,6,3,15,12,9,6,3,9,75,NULL,42);
INSERT INTO reeds VALUES (700,336,298,143,0,'A',0,0,9,6,3,0,12,9,6,3,7,48,NULL,42);
INSERT INTO reeds VALUES (701,336,298,143,0,'A',0,0,0,6,3,0,0,9,6,3,5,27,NULL,42);
INSERT INTO reeds VALUES (702,317,258,143,0,'C',15,0,9,6,0,15,12,0,6,0,6,63,NULL,42);
INSERT INTO reeds VALUES (703,317,258,143,0,'C',15,12,9,6,3,0,12,9,0,3,8,69,NULL,42);
INSERT INTO reeds VALUES (704,209,299,143,0,'A',0,0,0,6,3,15,0,9,6,0,5,39,NULL,42);
INSERT INTO reeds VALUES (705,209,299,143,0,'A',0,12,9,0,3,0,0,9,0,0,4,33,NULL,42);
INSERT INTO reeds VALUES (706,206,258,143,0,'A',0,12,9,6,3,15,12,9,6,3,9,75,NULL,42);
INSERT INTO reeds VALUES (707,206,258,143,0,'A',0,12,9,6,3,0,12,0,6,3,7,51,NULL,42);
INSERT INTO reeds VALUES (708,208,258,143,0,'A',0,12,9,6,3,0,0,9,0,3,6,42,NULL,42);
INSERT INTO reeds VALUES (709,208,258,143,0,'A',0,0,0,6,3,0,0,9,6,3,5,27,NULL,42);
INSERT INTO reeds VALUES (710,412,188,143,1,'C',0,12,9,6,3,0,12,9,6,3,8,60,NULL,42);
INSERT INTO reeds VALUES (711,412,188,143,0,'C',0,12,9,6,3,0,12,9,6,3,8,60,NULL,42);
INSERT INTO reeds VALUES (712,413,228,143,1,'A',15,12,9,6,3,0,0,9,6,3,8,63,NULL,42);
INSERT INTO reeds VALUES (713,413,228,143,0,'A',0,0,9,6,3,0,12,9,6,3,7,48,NULL,42);
INSERT INTO reeds VALUES (714,399,300,149,0,'A',15,12,9,6,3,15,12,9,0,3,9,84,NULL,42);
INSERT INTO reeds VALUES (715,393,301,149,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,42);
INSERT INTO reeds VALUES (716,414,302,149,7,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,42);
INSERT INTO reeds VALUES (717,383,280,149,0,'A',15,12,9,6,3,0,12,9,6,3,9,75,NULL,42);
INSERT INTO reeds VALUES (718,399,301,149,0,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,42);
INSERT INTO reeds VALUES (719,415,143,149,7,'A',15,12,9,6,3,15,0,9,6,3,9,78,NULL,42);
INSERT INTO reeds VALUES (720,51,303,149,0,'C',15,12,9,6,3,0,0,0,6,3,7,54,NULL,42);
INSERT INTO reeds VALUES (721,416,303,149,7,'A',15,12,9,0,3,15,12,9,6,3,9,84,NULL,42);
INSERT INTO reeds VALUES (722,17,234,148,0,'A',0,12,9,6,3,0,0,9,0,3,6,42,NULL,42);
INSERT INTO reeds VALUES (723,424,235,148,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,42);
INSERT INTO reeds VALUES (724,425,235,148,16,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,42);
INSERT INTO reeds VALUES (725,275,235,148,0,'A',15,12,9,6,3,0,12,9,6,3,9,75,NULL,42);
INSERT INTO reeds VALUES (726,274,234,148,0,'A',15,12,9,6,3,15,12,9,6,0,9,87,NULL,42);
INSERT INTO reeds VALUES (727,423,234,148,0,'A',0,12,9,6,3,0,12,9,6,0,7,57,NULL,42);
INSERT INTO reeds VALUES (728,17,264,148,0,'A',15,12,9,6,3,15,0,0,0,0,6,60,NULL,42);
INSERT INTO reeds VALUES (729,427,311,158,11,'A',15,12,9,6,3,0,0,0,0,0,5,45,NULL,43);
INSERT INTO reeds VALUES (730,428,312,158,6,'C',15,0,9,6,3,15,12,9,6,3,9,78,NULL,43);
INSERT INTO reeds VALUES (731,429,313,158,6,'A',0,0,9,6,0,0,12,9,6,3,6,45,NULL,43);
INSERT INTO reeds VALUES (732,430,314,158,11,'C',0,12,9,6,3,0,12,9,6,3,8,60,NULL,43);
INSERT INTO reeds VALUES (733,431,312,158,11,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,43);
INSERT INTO reeds VALUES (734,432,311,158,11,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,43);
INSERT INTO reeds VALUES (735,433,315,158,11,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,43);
INSERT INTO reeds VALUES (736,434,315,158,11,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,43);
INSERT INTO reeds VALUES (737,435,314,158,11,'A',0,0,0,0,3,15,12,0,0,3,4,33,NULL,43);
INSERT INTO reeds VALUES (738,394,314,158,0,'A',15,12,9,0,0,15,12,9,0,3,7,75,NULL,43);
INSERT INTO reeds VALUES (739,434,316,158,0,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,43);
INSERT INTO reeds VALUES (740,226,6,161,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,43);
INSERT INTO reeds VALUES (741,436,318,161,16,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,43);
INSERT INTO reeds VALUES (742,437,319,164,6,'E',15,0,9,6,3,15,12,9,6,3,9,78,NULL,44);
INSERT INTO reeds VALUES (743,438,320,164,6,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,44);
INSERT INTO reeds VALUES (744,439,321,164,6,'E',15,12,9,6,3,0,12,0,6,3,8,66,NULL,44);
INSERT INTO reeds VALUES (745,440,322,164,6,'E',15,12,9,6,3,15,12,9,6,0,9,87,NULL,44);
INSERT INTO reeds VALUES (746,441,323,164,6,'A',15,12,0,6,3,15,12,9,6,3,9,81,NULL,44);
INSERT INTO reeds VALUES (747,442,324,164,6,'C',0,0,0,6,3,0,0,0,6,3,4,18,NULL,44);
INSERT INTO reeds VALUES (748,443,325,164,6,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,44);
INSERT INTO reeds VALUES (749,444,320,164,6,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,44);
INSERT INTO reeds VALUES (750,445,326,164,6,'A',15,12,9,6,3,15,12,9,6,3,10,90,NULL,44);
INSERT INTO reeds VALUES (751,445,326,164,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,44);
INSERT INTO reeds VALUES (752,446,327,166,13,'C',0,12,9,6,3,0,0,9,6,3,7,48,NULL,44);
INSERT INTO reeds VALUES (753,298,328,166,0,'C',15,0,9,6,3,15,12,9,6,3,9,78,NULL,44);
INSERT INTO reeds VALUES (754,164,272,166,0,'A',0,0,0,0,3,0,12,9,6,3,5,33,NULL,44);
INSERT INTO reeds VALUES (755,447,329,167,6,'C',15,12,9,6,3,15,0,0,6,3,8,69,NULL,44);
INSERT INTO reeds VALUES (756,447,329,167,0,'C',15,0,9,6,3,0,12,9,6,3,8,63,NULL,44);
INSERT INTO reeds VALUES (757,447,329,167,0,'A',15,12,0,6,3,0,12,9,6,3,8,66,NULL,44);
INSERT INTO reeds VALUES (758,447,329,168,0,'C',15,12,9,6,3,15,0,0,6,3,8,69,NULL,45);
INSERT INTO reeds VALUES (759,447,329,168,0,'C',15,0,9,6,3,0,12,9,6,3,8,63,NULL,45);
INSERT INTO reeds VALUES (760,447,329,168,0,'A',15,12,0,6,3,0,12,9,6,3,8,66,NULL,45);
INSERT INTO reeds VALUES (761,447,329,170,0,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,45);
INSERT INTO reeds VALUES (762,447,329,170,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,45);
INSERT INTO reeds VALUES (763,447,330,170,0,'C',15,12,0,6,3,15,12,9,6,3,9,81,NULL,45);
INSERT INTO reeds VALUES (764,445,326,170,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,45);
INSERT INTO reeds VALUES (765,445,326,170,0,'C',0,12,9,6,3,0,12,9,6,3,8,60,NULL,45);
INSERT INTO reeds VALUES (766,448,331,170,6,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,45);
INSERT INTO reeds VALUES (767,448,331,170,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,45);
INSERT INTO reeds VALUES (768,449,332,172,18,'C',15,12,9,6,3,0,12,0,6,0,7,63,NULL,45);
INSERT INTO reeds VALUES (769,450,333,172,8,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,45);
INSERT INTO reeds VALUES (770,451,333,172,8,'C',0,12,9,6,3,0,12,0,6,3,7,51,NULL,45);
INSERT INTO reeds VALUES (771,452,333,172,8,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,45);
INSERT INTO reeds VALUES (772,453,334,173,15,'C',0,12,0,6,0,0,12,9,6,3,6,48,NULL,45);
INSERT INTO reeds VALUES (773,454,335,173,8,'C',15,12,9,6,3,15,0,9,6,3,9,78,NULL,45);
INSERT INTO reeds VALUES (774,455,336,173,12,'C',0,12,9,0,3,0,12,9,6,0,6,51,NULL,45);
INSERT INTO reeds VALUES (775,456,337,173,12,'C',0,0,9,6,3,15,0,9,6,3,7,51,NULL,45);
INSERT INTO reeds VALUES (776,450,207,173,0,'C',0,12,0,6,0,15,12,9,6,3,7,63,NULL,45);
INSERT INTO reeds VALUES (777,457,338,173,2,'C',0,0,9,0,0,15,12,9,6,3,6,54,NULL,45);
INSERT INTO reeds VALUES (778,454,335,174,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,45);
INSERT INTO reeds VALUES (779,457,338,174,0,'C',0,0,0,6,3,0,0,9,6,3,5,27,NULL,45);
INSERT INTO reeds VALUES (780,455,336,174,0,'C',15,0,9,6,3,15,12,9,6,3,9,78,NULL,45);
INSERT INTO reeds VALUES (781,456,339,174,0,'E',0,12,9,6,3,15,12,9,6,3,9,75,NULL,45);
INSERT INTO reeds VALUES (782,191,207,174,18,'A',0,0,0,6,3,0,12,9,6,3,6,39,NULL,45);
INSERT INTO reeds VALUES (783,415,340,175,7,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,45);
INSERT INTO reeds VALUES (784,458,341,175,7,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,45);
INSERT INTO reeds VALUES (785,427,311,176,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,45);
INSERT INTO reeds VALUES (786,427,311,176,0,'A',0,0,9,6,3,0,0,9,6,0,5,33,NULL,45);
INSERT INTO reeds VALUES (787,430,312,176,0,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,45);
INSERT INTO reeds VALUES (788,429,313,176,0,'A',0,0,9,6,3,0,0,9,6,0,5,33,NULL,45);
INSERT INTO reeds VALUES (789,430,312,176,0,'A',15,12,9,6,3,15,12,0,6,3,9,81,NULL,45);
INSERT INTO reeds VALUES (790,409,311,176,11,'C',0,0,9,6,3,0,0,9,6,3,6,36,NULL,45);
INSERT INTO reeds VALUES (791,429,313,176,0,'A',0,0,0,6,0,0,12,0,6,3,4,27,NULL,45);
INSERT INTO reeds VALUES (792,428,312,176,0,'A',15,0,9,6,3,0,12,9,6,3,8,63,NULL,45);
INSERT INTO reeds VALUES (793,427,311,176,0,'E',15,12,9,6,3,15,12,9,6,3,10,90,NULL,45);
INSERT INTO reeds VALUES (794,459,312,176,11,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,45);
INSERT INTO reeds VALUES (795,171,73,179,0,'C',15,12,9,0,3,15,0,9,6,3,8,72,NULL,46);
INSERT INTO reeds VALUES (796,445,326,179,0,'A',0,12,9,0,3,0,12,9,0,3,6,48,NULL,46);
INSERT INTO reeds VALUES (797,447,329,179,0,'A',0,12,9,6,3,0,12,0,6,3,7,51,NULL,46);
INSERT INTO reeds VALUES (798,460,342,179,6,'C',15,12,9,6,3,0,12,9,6,3,9,75,NULL,46);
INSERT INTO reeds VALUES (799,461,329,179,6,'E',0,0,9,6,3,0,0,9,0,3,5,30,NULL,46);
INSERT INTO reeds VALUES (800,462,326,179,6,'C',15,12,9,6,3,15,12,9,6,3,10,90,NULL,46);
INSERT INTO reeds VALUES (801,463,343,179,6,'C',0,0,0,6,3,0,12,0,6,0,4,27,NULL,46);
INSERT INTO reeds VALUES (802,399,344,180,0,'A',15,0,0,6,3,15,12,9,6,3,8,69,NULL,46);
INSERT INTO reeds VALUES (803,415,340,180,0,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,46);
INSERT INTO reeds VALUES (804,458,345,180,0,'A',0,12,9,6,3,0,12,9,6,3,8,60,NULL,46);
INSERT INTO reeds VALUES (805,56,303,180,0,'A',15,12,9,6,3,0,12,9,0,3,8,69,NULL,46);
INSERT INTO reeds VALUES (806,383,280,180,0,'A',0,0,9,6,3,15,12,9,6,3,8,63,NULL,46);
INSERT INTO reeds VALUES (807,384,346,180,0,'A',0,12,9,6,3,0,0,9,6,3,7,48,NULL,46);
INSERT INTO reeds VALUES (808,464,309,180,16,'A',0,0,9,6,3,0,12,9,6,3,7,48,NULL,46);
INSERT INTO reeds VALUES (809,465,347,180,7,'A',15,12,9,6,3,0,0,0,6,3,7,54,NULL,46);
INSERT INTO reeds VALUES (810,57,348,180,0,'C',15,12,0,6,3,15,12,9,6,3,9,81,NULL,46);
INSERT INTO reeds VALUES (811,466,349,180,4,'C',15,0,9,6,3,15,12,9,6,3,9,78,NULL,46);
INSERT INTO reeds VALUES (812,358,6,180,0,'E',15,12,9,6,3,0,12,9,6,3,9,75,NULL,46);
INSERT INTO reeds VALUES (813,467,333,181,8,'C',15,0,9,0,3,15,12,9,6,3,8,72,NULL,46);
INSERT INTO reeds VALUES (814,450,333,181,0,'C',0,12,9,6,3,15,12,9,6,3,9,75,NULL,46);
INSERT INTO reeds VALUES (815,468,350,181,18,'C',0,0,9,0,3,15,0,9,6,3,6,45,NULL,46);
INSERT INTO reeds VALUES (816,191,207,181,0,'A',0,0,0,0,3,15,0,9,0,3,4,30,NULL,46);
INSERT INTO reeds VALUES (817,449,332,181,0,'C',0,0,9,6,3,15,12,0,6,3,7,54,NULL,46);
INSERT INTO reeds VALUES (818,469,351,181,18,'E',0,12,9,6,3,15,12,9,6,3,9,75,NULL,46);
INSERT INTO reeds VALUES (819,470,352,181,8,'E',0,12,9,6,3,15,0,9,6,3,8,63,NULL,46);

--
-- Table structure for table `riders`
--

CREATE TABLE riders (
  PID int(3) NOT NULL auto_increment,
  PName varchar(80) NOT NULL default '',
  PBio varchar(255) default 'http://www.yourhomepage.com',
  Pking int(2) NOT NULL default '0',
  Pret char(1) default NULL,
  PRIMARY KEY  (PID),
  UNIQUE KEY PID (PID),
  KEY PID_2 (PID)
) TYPE=MyISAM;

--
-- Dumping data for table `riders`
--

INSERT INTO riders VALUES (1,'Rose of Greenwood',NULL,10,NULL);
INSERT INTO riders VALUES (2,'Elina of Beckenham',NULL,16,NULL);
INSERT INTO riders VALUES (3,'Henrik of Havn',NULL,16,NULL);
INSERT INTO riders VALUES (4,'Henrik of Havn',NULL,16,NULL);
INSERT INTO riders VALUES (5,'Anluan Trelaine',NULL,16,NULL);
INSERT INTO riders VALUES (6,'Anton Polander',NULL,16,NULL);
INSERT INTO riders VALUES (7,'Ianthe',NULL,16,NULL);
INSERT INTO riders VALUES (8,'Jaqueline',NULL,16,NULL);
INSERT INTO riders VALUES (9,'Petra',NULL,16,NULL);
INSERT INTO riders VALUES (10,'Colin MacLear',NULL,16,NULL);
INSERT INTO riders VALUES (11,'Marguerite Du Royon',NULL,16,NULL);
INSERT INTO riders VALUES (12,'Elizabeth De Champane',NULL,16,NULL);
INSERT INTO riders VALUES (13,'Yasmina',NULL,3,NULL);
INSERT INTO riders VALUES (14,'Isabel',NULL,3,NULL);
INSERT INTO riders VALUES (15,'Collet of Crosston',NULL,16,NULL);
INSERT INTO riders VALUES (16,'Gad Waldbars',NULL,16,NULL);
INSERT INTO riders VALUES (17,'Siobhan Ni Seaghdha',NULL,16,NULL);
INSERT INTO riders VALUES (18,'Elia Filasimeon',NULL,16,NULL);
INSERT INTO riders VALUES (19,'Rainar of Artemisia',NULL,3,NULL);
INSERT INTO riders VALUES (20,'Cornelia Cheval Blanc',NULL,1,NULL);
INSERT INTO riders VALUES (21,'Osogarow the Dredful',NULL,1,'N');
INSERT INTO riders VALUES (22,'Khaidu Naranaimorin',NULL,1,'N');
INSERT INTO riders VALUES (23,'Kesimir',NULL,1,NULL);
INSERT INTO riders VALUES (24,'Aeschine',NULL,1,NULL);
INSERT INTO riders VALUES (25,'Aedan mac Suibne',NULL,1,NULL);
INSERT INTO riders VALUES (26,'Donwenna la Mareschale',NULL,1,'N');
INSERT INTO riders VALUES (27,'Agelos Evienece',NULL,1,NULL);
INSERT INTO riders VALUES (28,'Ynesen Ongge Xong Kerij-e',NULL,1,NULL);
INSERT INTO riders VALUES (29,'Conrad Martin von Kassel',NULL,8,NULL);
INSERT INTO riders VALUES (30,'Gwynanwedd',NULL,8,NULL);
INSERT INTO riders VALUES (31,'Roland Stewart',NULL,8,NULL);
INSERT INTO riders VALUES (32,'Winifred of Rosemier',NULL,8,NULL);
INSERT INTO riders VALUES (33,'Rhianwen ferch Bran ap Gruffydd',NULL,8,NULL);
INSERT INTO riders VALUES (34,'Melanie of der Welfengau',NULL,10,NULL);
INSERT INTO riders VALUES (35,'Constance the Curious',NULL,10,NULL);
INSERT INTO riders VALUES (36,'Cinthia of Ard Chreag',NULL,10,NULL);
INSERT INTO riders VALUES (37,'Gailana Dunkelphere',NULL,10,NULL);
INSERT INTO riders VALUES (38,'Ragni of Amberhall',NULL,10,NULL);
INSERT INTO riders VALUES (39,'Laura of der Welfengau',NULL,10,NULL);
INSERT INTO riders VALUES (40,'Ceina Ni Mhari',NULL,1,NULL);
INSERT INTO riders VALUES (41,'Togrul Guiscard',NULL,1,'N');
INSERT INTO riders VALUES (42,'Edward Ean Anderson, Earl Sir',NULL,1,'N');
INSERT INTO riders VALUES (43,'Allison',NULL,1,NULL);
INSERT INTO riders VALUES (44,'Ilaria Velti degli Ansari, Comtessa Mistress',NULL,1,'N');
INSERT INTO riders VALUES (45,'Appoline d\' Avignon, Lady',NULL,1,'N');
INSERT INTO riders VALUES (46,'Jerald of Galloway, Viscount Sir',NULL,1,'N');
INSERT INTO riders VALUES (47,'Miranda Faoltiarna',NULL,1,NULL);
INSERT INTO riders VALUES (48,'Stephen De Huyn, Sir',NULL,7,'N');
INSERT INTO riders VALUES (49,'Ceara ingen Chanaill',NULL,7,'N');
INSERT INTO riders VALUES (50,'Nialls Mac Keth, Lord',NULL,7,'N');
INSERT INTO riders VALUES (51,'Rhiannon o Hafan Gath',NULL,7,NULL);
INSERT INTO riders VALUES (52,'Claire of Angels',NULL,7,NULL);
INSERT INTO riders VALUES (53,'Tainbaid Verch Padraig',NULL,7,NULL);
INSERT INTO riders VALUES (54,'Felinah Tifarah Arnvella Memo Hazara Khan-ad-Din, Dutchess',NULL,7,'N');
INSERT INTO riders VALUES (55,'Guillaume de Belgique, Duke',NULL,7,'N');
INSERT INTO riders VALUES (56,'Richard Surefoot',NULL,7,NULL);
INSERT INTO riders VALUES (57,'Tierrynna Caer Narvon',NULL,7,NULL);
INSERT INTO riders VALUES (58,'Deidre  Stewart',NULL,8,NULL);
INSERT INTO riders VALUES (59,'Aliionara Inghean Tighearnach',NULL,7,NULL);
INSERT INTO riders VALUES (60,'Caoil Fhionn',NULL,7,NULL);
INSERT INTO riders VALUES (61,'Ciaran MacDarrach, Sir',NULL,7,'N');
INSERT INTO riders VALUES (62,'Wylkyn ap Kenwrec',NULL,7,NULL);
INSERT INTO riders VALUES (63,'Dona Arabella da Siena',NULL,7,NULL);
INSERT INTO riders VALUES (64,'Draga von Falkenstein, Lady',NULL,7,'N');
INSERT INTO riders VALUES (65,'Katherine of Whiteacre',NULL,7,'N');
INSERT INTO riders VALUES (66,'Spencer Spiegel',NULL,7,NULL);
INSERT INTO riders VALUES (67,'Alexis LaBouche',NULL,2,NULL);
INSERT INTO riders VALUES (68,'Marius Greyedge',NULL,2,NULL);
INSERT INTO riders VALUES (69,'Hugh Heverly',NULL,2,NULL);
INSERT INTO riders VALUES (70,'Rolanda Rossner',NULL,2,NULL);
INSERT INTO riders VALUES (71,'Edith Gray',NULL,2,NULL);
INSERT INTO riders VALUES (72,'Katherine Clatworthy',NULL,2,NULL);
INSERT INTO riders VALUES (73,'Bridgette d\\\'Orleans',NULL,2,NULL);
INSERT INTO riders VALUES (74,'Nathaniel Fitzpatrick',NULL,2,NULL);
INSERT INTO riders VALUES (75,'Allessandra Giovanni',NULL,2,NULL);
INSERT INTO riders VALUES (76,'Aimee\\\' LongCoeur',NULL,2,NULL);
INSERT INTO riders VALUES (77,'Alicia Seale',NULL,13,NULL);
INSERT INTO riders VALUES (78,'Adrielle Kerrec',NULL,10,NULL);
INSERT INTO riders VALUES (79,'Isabol Martain of Dark Horse Keep',NULL,2,NULL);
INSERT INTO riders VALUES (80,'Eleanor Cadfan',NULL,10,NULL);
INSERT INTO riders VALUES (81,'Katherine Donne',NULL,2,NULL);
INSERT INTO riders VALUES (82,'Etaoin Fearghuil',NULL,10,NULL);
INSERT INTO riders VALUES (83,'Aaron MacGregor',NULL,2,NULL);
INSERT INTO riders VALUES (84,'Zaynab bint Zayd',NULL,2,NULL);
INSERT INTO riders VALUES (85,'Eileen Lemesurier',NULL,10,NULL);
INSERT INTO riders VALUES (86,'Benjamin',NULL,13,NULL);
INSERT INTO riders VALUES (87,'Benedict de Charteris',NULL,10,NULL);
INSERT INTO riders VALUES (88,'Anne von Talstadt',NULL,10,NULL);
INSERT INTO riders VALUES (89,'Alistair Kirk',NULL,10,NULL);
INSERT INTO riders VALUES (90,'Eanor of Amberhall',NULL,10,NULL);
INSERT INTO riders VALUES (91,'Christiaen de Groot',NULL,7,NULL);
INSERT INTO riders VALUES (92,'Aurealia deMedici',NULL,3,NULL);
INSERT INTO riders VALUES (93,'Kari of Dellwood Forest',NULL,3,NULL);
INSERT INTO riders VALUES (94,'Isabel of Arn Hold',NULL,3,NULL);
INSERT INTO riders VALUES (95,'Yasmeena bint al Ahlam',NULL,3,NULL);
INSERT INTO riders VALUES (96,'Morrigan',NULL,3,NULL);
INSERT INTO riders VALUES (97,'Bran',NULL,3,NULL);
INSERT INTO riders VALUES (98,'Freydis the Good',NULL,3,NULL);
INSERT INTO riders VALUES (99,'Ilaria',NULL,1,NULL);
INSERT INTO riders VALUES (100,'Landolf Witkowski',NULL,3,NULL);
INSERT INTO riders VALUES (101,'Dawn of Tomorrowland',NULL,3,NULL);
INSERT INTO riders VALUES (102,'Philip de Lisboa',NULL,3,NULL);
INSERT INTO riders VALUES (103,'Reinmar Wolfmeier',NULL,3,NULL);
INSERT INTO riders VALUES (104,'Simon',NULL,3,NULL);
INSERT INTO riders VALUES (105,'Sagen von Ostensee',NULL,3,NULL);
INSERT INTO riders VALUES (106,'Rognvald Longarm',NULL,14,NULL);
INSERT INTO riders VALUES (107,'Maria the Gypsy',NULL,14,NULL);
INSERT INTO riders VALUES (108,'Julianna Craye',NULL,14,NULL);
INSERT INTO riders VALUES (109,'Helena',NULL,14,NULL);
INSERT INTO riders VALUES (110,'Jacques de Monet',NULL,4,NULL);
INSERT INTO riders VALUES (111,'Murddina O Dolwyddelan',NULL,4,NULL);
INSERT INTO riders VALUES (112,'Kara Hinn Kottur',NULL,12,NULL);
INSERT INTO riders VALUES (113,'Terri of Gwyntarian',NULL,12,NULL);
INSERT INTO riders VALUES (114,'Zuriel Nightshade',NULL,12,NULL);
INSERT INTO riders VALUES (115,'Ofria Pinkhand',NULL,12,NULL);
INSERT INTO riders VALUES (116,'Chrestienne LaCroniere',NULL,12,'N');
INSERT INTO riders VALUES (117,'Aodhfin Seibert',NULL,12,NULL);
INSERT INTO riders VALUES (118,'Alexandra de Noir',NULL,12,NULL);
INSERT INTO riders VALUES (119,'Caidhe Doreen de Talon',NULL,12,NULL);
INSERT INTO riders VALUES (120,'Rowan de Verez',NULL,12,NULL);
INSERT INTO riders VALUES (121,'Enna Margerd',NULL,12,NULL);
INSERT INTO riders VALUES (122,'Aoidhna Mora',NULL,12,NULL);
INSERT INTO riders VALUES (123,'Lorraine Fraser',NULL,2,'N');
INSERT INTO riders VALUES (124,'Claudine de Berry',NULL,2,NULL);
INSERT INTO riders VALUES (125,'Neassa the Obsteperous',NULL,2,NULL);
INSERT INTO riders VALUES (126,'Janet\' Virago Parva, Mistress',NULL,2,'N');
INSERT INTO riders VALUES (127,'Robin Daniel',NULL,2,NULL);
INSERT INTO riders VALUES (128,'Michelle Fraser',NULL,2,NULL);
INSERT INTO riders VALUES (129,'Roak of Ealdormere',NULL,10,'N');
INSERT INTO riders VALUES (130,'Arlette',NULL,10,NULL);
INSERT INTO riders VALUES (131,'Thuri',NULL,12,NULL);
INSERT INTO riders VALUES (132,'Vachon',NULL,12,NULL);
INSERT INTO riders VALUES (133,'Delara',NULL,12,NULL);
INSERT INTO riders VALUES (134,'Giovanna',NULL,12,NULL);
INSERT INTO riders VALUES (135,'Vanessa',NULL,12,NULL);
INSERT INTO riders VALUES (136,'Joan ferch David',NULL,11,NULL);
INSERT INTO riders VALUES (137,'Alissende de Montfauren',NULL,12,NULL);
INSERT INTO riders VALUES (138,'Christine of Falcon\\\'s Keep',NULL,12,NULL);
INSERT INTO riders VALUES (139,'Summer Brady',NULL,12,NULL);
INSERT INTO riders VALUES (140,'Anna Z Pernstefna',NULL,12,NULL);
INSERT INTO riders VALUES (141,'Denis de Beux',NULL,12,NULL);
INSERT INTO riders VALUES (142,'Kaziah of Chaveaux',NULL,16,NULL);
INSERT INTO riders VALUES (143,'Saris',NULL,16,NULL);
INSERT INTO riders VALUES (144,'Hansa von Wolfholz',NULL,16,NULL);
INSERT INTO riders VALUES (145,'Stephen of Beckenham',NULL,16,NULL);
INSERT INTO riders VALUES (146,'Helgi',NULL,16,NULL);
INSERT INTO riders VALUES (147,'Godiva Longstaff',NULL,15,NULL);
INSERT INTO riders VALUES (148,'Raynold of Wharram',NULL,5,NULL);
INSERT INTO riders VALUES (149,'Simon Macleod, Sir',NULL,13,'N');
INSERT INTO riders VALUES (150,'Genvieve d Argent Chene',NULL,13,NULL);
INSERT INTO riders VALUES (151,'Francessa Dellaluna',NULL,5,NULL);
INSERT INTO riders VALUES (152,'Gwenhavre Cordelia Maynard',NULL,2,NULL);
INSERT INTO riders VALUES (153,'Brenna Macgrioghaiar',NULL,15,NULL);
INSERT INTO riders VALUES (154,'Duncan Kerr',NULL,11,NULL);
INSERT INTO riders VALUES (155,'Rowan de Veres',NULL,12,NULL);
INSERT INTO riders VALUES (156,'Fergus O\\\'Shiel',NULL,2,NULL);
INSERT INTO riders VALUES (157,'Ara Mic Bhoom',NULL,2,NULL);
INSERT INTO riders VALUES (158,'Edward Eagleheart',NULL,15,NULL);
INSERT INTO riders VALUES (159,'Megan Blackheart',NULL,15,NULL);
INSERT INTO riders VALUES (160,'Malisa',NULL,13,NULL);
INSERT INTO riders VALUES (161,'Quenthryth of Lavre, Mistress',NULL,5,'N');
INSERT INTO riders VALUES (162,'Elevile Amiltryptoline de Quigly',NULL,12,NULL);
INSERT INTO riders VALUES (163,'Caitrionade de Lacy',NULL,15,NULL);
INSERT INTO riders VALUES (164,'Peryn Rose Whytehorse',NULL,13,NULL);
INSERT INTO riders VALUES (165,'Calena du Rose Noir',NULL,2,NULL);
INSERT INTO riders VALUES (166,'Noelle Pettit',NULL,3,NULL);
INSERT INTO riders VALUES (167,'Ryssza Polander',NULL,16,'N');
INSERT INTO riders VALUES (168,'Isabeau Pferdebandger, Mistress',NULL,12,'N');
INSERT INTO riders VALUES (169,'Morgan Goldbetter',NULL,12,'N');
INSERT INTO riders VALUES (170,'Acelin, Lady',NULL,12,'N');
INSERT INTO riders VALUES (171,'Finna Jomarsdoitter',NULL,12,NULL);
INSERT INTO riders VALUES (172,'Madeliene Gervais',NULL,12,NULL);
INSERT INTO riders VALUES (173,'Ari Keilismuli',NULL,12,NULL);
INSERT INTO riders VALUES (174,'Casidhe Dereen de Fallen',NULL,12,NULL);
INSERT INTO riders VALUES (175,'Maitre Don Guillaume dela Rapier',NULL,3,NULL);
INSERT INTO riders VALUES (176,'Megrhydd Llwyd',NULL,1,NULL);
INSERT INTO riders VALUES (177,'Ceadre',NULL,1,NULL);
INSERT INTO riders VALUES (178,'Aiken',NULL,1,NULL);
INSERT INTO riders VALUES (179,'Helga of Stone Guard',NULL,16,NULL);
INSERT INTO riders VALUES (180,'Rowan Buchanan',NULL,16,NULL);
INSERT INTO riders VALUES (181,'Vincenzo di Calabria',NULL,16,NULL);
INSERT INTO riders VALUES (182,'William of Bellwood',NULL,12,NULL);
INSERT INTO riders VALUES (183,'Blackhart the Smith',NULL,12,NULL);
INSERT INTO riders VALUES (184,'Kathryne Sommer',NULL,12,NULL);
INSERT INTO riders VALUES (185,'Leigh Ann Curtis',NULL,12,NULL);
INSERT INTO riders VALUES (186,'Elizabetta',NULL,12,NULL);
INSERT INTO riders VALUES (187,'Daniel of Three Walls',NULL,12,NULL);
INSERT INTO riders VALUES (188,'Timotheous Symmes',NULL,12,NULL);
INSERT INTO riders VALUES (189,'Ciar of the Fourth Wall',NULL,12,NULL);
INSERT INTO riders VALUES (190,'Alienore de Bathe',NULL,12,NULL);
INSERT INTO riders VALUES (191,'Lora Greymare',NULL,18,NULL);
INSERT INTO riders VALUES (192,'Coleen Woods',NULL,13,NULL);
INSERT INTO riders VALUES (193,'Fulke Grim (Ursus)',NULL,13,NULL);
INSERT INTO riders VALUES (194,'Jolief Runolfswyf',NULL,13,NULL);
INSERT INTO riders VALUES (195,'Robin de Clair',NULL,15,NULL);
INSERT INTO riders VALUES (196,'Gavin O\\\' Neil',NULL,15,NULL);
INSERT INTO riders VALUES (197,'Natabel Colman',NULL,15,NULL);
INSERT INTO riders VALUES (198,'Bubba Godgodson',NULL,12,NULL);
INSERT INTO riders VALUES (199,'Alphia Biraz-Pars',NULL,12,NULL);
INSERT INTO riders VALUES (200,'Aethelwyn von Wotanswald',NULL,12,NULL);
INSERT INTO riders VALUES (201,'Colin Campbell',NULL,12,NULL);
INSERT INTO riders VALUES (202,'Luaran MacCearnaigh',NULL,7,NULL);
INSERT INTO riders VALUES (203,'Negoshka Gorodisha',NULL,7,NULL);
INSERT INTO riders VALUES (204,'Anastasia of Borkenholt',NULL,7,NULL);
INSERT INTO riders VALUES (205,'Giraldus Evienece',NULL,1,'N');
INSERT INTO riders VALUES (206,'Duncan Taddio',NULL,1,NULL);
INSERT INTO riders VALUES (207,'Ceara Roisin',NULL,1,NULL);
INSERT INTO riders VALUES (208,'Mikalya Taddio',NULL,1,'N');
INSERT INTO riders VALUES (209,'Taradan banMarca',NULL,1,NULL);
INSERT INTO riders VALUES (210,'Thorkel Haraldsson',NULL,1,NULL);
INSERT INTO riders VALUES (211,'Mungo Wallace',NULL,1,NULL);
INSERT INTO riders VALUES (212,'Shekhan Hawke',NULL,1,NULL);
INSERT INTO riders VALUES (213,'Angel MacBrighde',NULL,1,NULL);
INSERT INTO riders VALUES (214,'Lijbet',NULL,1,NULL);
INSERT INTO riders VALUES (215,'Alanna of Ealdormere',NULL,10,'N');
INSERT INTO riders VALUES (216,'Thomas MacCruitin',NULL,1,NULL);
INSERT INTO riders VALUES (217,'Gabriel Chance',NULL,12,NULL);
INSERT INTO riders VALUES (218,'Thomasine MacAngus',NULL,12,NULL);
INSERT INTO riders VALUES (219,'Francesca Ambrogini',NULL,12,NULL);
INSERT INTO riders VALUES (220,'Rowan Connor',NULL,12,NULL);
INSERT INTO riders VALUES (221,'Bridget of Croston',NULL,16,NULL);
INSERT INTO riders VALUES (222,'Katla Polander',NULL,16,NULL);
INSERT INTO riders VALUES (223,'Ryran of Edgewood Castle',NULL,16,NULL);
INSERT INTO riders VALUES (224,'Rose of Degewood Castle',NULL,16,NULL);
INSERT INTO riders VALUES (225,'Antonio',NULL,16,NULL);
INSERT INTO riders VALUES (226,'Gwendwyn',NULL,16,NULL);
INSERT INTO riders VALUES (227,'Genvieve',NULL,16,NULL);
INSERT INTO riders VALUES (228,'Dierdre',NULL,16,NULL);
INSERT INTO riders VALUES (229,'Dugal',NULL,16,NULL);
INSERT INTO riders VALUES (230,'Arilid Barrett',NULL,16,NULL);
INSERT INTO riders VALUES (231,'Allasandro of Crosston',NULL,16,NULL);
INSERT INTO riders VALUES (232,'Kellyn Firesinger',NULL,16,NULL);
INSERT INTO riders VALUES (233,'Frederick of Holland',NULL,16,NULL);
INSERT INTO riders VALUES (234,'Ogre',NULL,16,NULL);
INSERT INTO riders VALUES (235,'Kyrstan Maynewaring',NULL,16,NULL);
INSERT INTO riders VALUES (236,'Graeye',NULL,16,NULL);
INSERT INTO riders VALUES (237,'Rhonriun',NULL,8,NULL);
INSERT INTO riders VALUES (238,'Edaine',NULL,8,NULL);
INSERT INTO riders VALUES (239,'Isolde of Hawksholme',NULL,8,NULL);
INSERT INTO riders VALUES (240,'Rhiannon of Crystal Mines',NULL,8,NULL);
INSERT INTO riders VALUES (241,'Christopher of Crystal Mines',NULL,8,NULL);
INSERT INTO riders VALUES (242,'Desi of Standing Stones',NULL,8,NULL);
INSERT INTO riders VALUES (243,'Solveig KelchadottirEnter new Rider\\\'s name here',NULL,16,NULL);
INSERT INTO riders VALUES (244,'Eileen of Ealdormere',NULL,10,'N');
INSERT INTO riders VALUES (245,'Ann Lewis',NULL,16,NULL);
INSERT INTO riders VALUES (246,'Solveig Keldadottr',NULL,16,NULL);
INSERT INTO riders VALUES (247,'Jennifer Mikkala',NULL,16,NULL);
INSERT INTO riders VALUES (248,'William Wolfhal',NULL,16,NULL);
INSERT INTO riders VALUES (249,'Cirdonna',NULL,16,NULL);
INSERT INTO riders VALUES (250,'Kristal Ziegler',NULL,16,NULL);
INSERT INTO riders VALUES (251,'Brian McFarlan',NULL,16,NULL);
INSERT INTO riders VALUES (252,'Walker Dietrick',NULL,16,NULL);
INSERT INTO riders VALUES (253,'Patti of Jester',NULL,16,NULL);
INSERT INTO riders VALUES (254,'Tim of Detrick',NULL,16,NULL);
INSERT INTO riders VALUES (255,'Erick Rhea',NULL,16,NULL);
INSERT INTO riders VALUES (256,'Dan Dietrick',NULL,16,NULL);
INSERT INTO riders VALUES (257,'Bronwyn Lorell',NULL,16,NULL);
INSERT INTO riders VALUES (258,'Sciath Obraeau',NULL,16,NULL);
INSERT INTO riders VALUES (259,'Genvieve de Vendome',NULL,16,NULL);
INSERT INTO riders VALUES (260,'Anne of Alanwyck',NULL,16,NULL);
INSERT INTO riders VALUES (261,'Yseult of Summerhall',NULL,16,NULL);
INSERT INTO riders VALUES (262,'Bridget of St. Kathrines',NULL,16,NULL);
INSERT INTO riders VALUES (263,'Rain',NULL,5,NULL);
INSERT INTO riders VALUES (264,'Teleri',NULL,13,NULL);
INSERT INTO riders VALUES (265,'Felicitae del Hay',NULL,1,NULL);
INSERT INTO riders VALUES (266,'Elizabeth of Pendale',NULL,1,NULL);
INSERT INTO riders VALUES (267,'Cherejin Bayar',NULL,1,NULL);
INSERT INTO riders VALUES (268,'Guillaume dela Rapier',NULL,3,NULL);
INSERT INTO riders VALUES (269,'Moira O\\\'Connor',NULL,16,NULL);
INSERT INTO riders VALUES (270,'Alison Gray',NULL,16,NULL);
INSERT INTO riders VALUES (271,'Catherine Murphy',NULL,16,NULL);
INSERT INTO riders VALUES (272,'Theorra',NULL,16,NULL);
INSERT INTO riders VALUES (273,'Illgordie',NULL,16,NULL);
INSERT INTO riders VALUES (274,'Cyneburh of Cantwaraburg',NULL,16,NULL);
INSERT INTO riders VALUES (275,'Connor MacAufflie FitzJames',NULL,16,NULL);
INSERT INTO riders VALUES (276,'Lasairfhiona',NULL,12,NULL);
INSERT INTO riders VALUES (277,'Alana Greywood',NULL,10,NULL);
INSERT INTO riders VALUES (278,'Julian Beauchamp',NULL,12,NULL);
INSERT INTO riders VALUES (279,'Julianna d\\\' Avalonia',NULL,16,NULL);
INSERT INTO riders VALUES (280,'Gianne',NULL,16,NULL);
INSERT INTO riders VALUES (281,'Steven Emmett',NULL,16,NULL);
INSERT INTO riders VALUES (282,'Uther, Duke',NULL,16,NULL);
INSERT INTO riders VALUES (283,'Else Hunervogt',NULL,16,NULL);
INSERT INTO riders VALUES (284,'Laura Giorgi',NULL,16,NULL);
INSERT INTO riders VALUES (285,'Susan of Bellatrix',NULL,16,NULL);
INSERT INTO riders VALUES (286,'Alessandro chi Marestrale',NULL,16,NULL);
INSERT INTO riders VALUES (287,'Lucy',NULL,13,NULL);
INSERT INTO riders VALUES (288,'Brigit ingen Taide',NULL,13,NULL);
INSERT INTO riders VALUES (289,'Logan Silveraxe',NULL,13,NULL);
INSERT INTO riders VALUES (290,'Ragnhildr Sigtryggsdottir',NULL,13,NULL);
INSERT INTO riders VALUES (291,'Kim Nader',NULL,12,NULL);
INSERT INTO riders VALUES (292,'Tom Nader',NULL,12,NULL);
INSERT INTO riders VALUES (293,'Ryan Hittinger',NULL,12,NULL);
INSERT INTO riders VALUES (294,'Lasairfhiona',NULL,12,NULL);
INSERT INTO riders VALUES (295,'Sir Robert MacArthur',NULL,1,NULL);
INSERT INTO riders VALUES (296,'Liam Olafssin',NULL,1,NULL);
INSERT INTO riders VALUES (297,'Keely',NULL,1,NULL);
INSERT INTO riders VALUES (298,'Ursus Grim',NULL,13,NULL);
INSERT INTO riders VALUES (299,'Svana Mjobeina',NULL,13,NULL);
INSERT INTO riders VALUES (300,'Jean-Claude van Adlerstaat',NULL,13,NULL);
INSERT INTO riders VALUES (301,'Aesceline',NULL,3,NULL);
INSERT INTO riders VALUES (302,'Dalene',NULL,3,NULL);
INSERT INTO riders VALUES (303,'Alexis',NULL,3,NULL);
INSERT INTO riders VALUES (304,'Danielle',NULL,3,NULL);
INSERT INTO riders VALUES (305,'Dominque',NULL,3,NULL);
INSERT INTO riders VALUES (306,'    Johanna',NULL,3,NULL);
INSERT INTO riders VALUES (307,'Rapheal the Rogue',NULL,1,NULL);
INSERT INTO riders VALUES (308,'Allison Walker',NULL,1,NULL);
INSERT INTO riders VALUES (309,'Fred Klink',NULL,16,NULL);
INSERT INTO riders VALUES (310,'Dori Lazbetak',NULL,16,NULL);
INSERT INTO riders VALUES (311,'Ruth de Vendome',NULL,16,NULL);
INSERT INTO riders VALUES (312,'Robert of Dunharrow',NULL,16,NULL);
INSERT INTO riders VALUES (313,'Marguerite FitzWilliam',NULL,1,NULL);
INSERT INTO riders VALUES (314,'Ali ibn MaMouk',NULL,1,NULL);
INSERT INTO riders VALUES (315,'Alexander of the Bells',NULL,1,NULL);
INSERT INTO riders VALUES (316,'Shenandoah',NULL,1,NULL);
INSERT INTO riders VALUES (317,'Layla',NULL,1,NULL);
INSERT INTO riders VALUES (318,'Dafydd Mac na Guibhne',NULL,16,NULL);
INSERT INTO riders VALUES (319,'Morrhighan',NULL,16,NULL);
INSERT INTO riders VALUES (320,'Julianna',NULL,16,NULL);
INSERT INTO riders VALUES (321,'Kimber',NULL,16,NULL);
INSERT INTO riders VALUES (322,'Sandor Dosa',NULL,13,NULL);
INSERT INTO riders VALUES (323,'Cybi d Elmhurst',NULL,16,NULL);
INSERT INTO riders VALUES (324,'Jessica la Course',NULL,16,NULL);
INSERT INTO riders VALUES (325,'Kyli Emmett',NULL,16,NULL);
INSERT INTO riders VALUES (326,'Daniel of Aquitaine',NULL,16,NULL);
INSERT INTO riders VALUES (327,'Violet O\\\'Dell',NULL,12,NULL);
INSERT INTO riders VALUES (328,'Ulv hinn Dokkur',NULL,12,NULL);
INSERT INTO riders VALUES (329,'Ragnar Bloodaxe',NULL,12,NULL);
INSERT INTO riders VALUES (330,'Byron of Edgewood Castle',NULL,16,NULL);
INSERT INTO riders VALUES (331,'MIchael Mac Seoin',NULL,16,NULL);
INSERT INTO riders VALUES (332,'Glythir',NULL,1,NULL);
INSERT INTO riders VALUES (333,'Domhnall MacCeallaigh',NULL,1,NULL);
INSERT INTO riders VALUES (334,'Bjorn (West K)',NULL,16,NULL);
INSERT INTO riders VALUES (335,'Qorin Borajin',NULL,16,NULL);
INSERT INTO riders VALUES (336,'Francesca da Monte',NULL,1,NULL);
INSERT INTO riders VALUES (337,'Kristen Hvit Hester',NULL,16,NULL);
INSERT INTO riders VALUES (338,'Ellen of the Western Wind',NULL,16,NULL);
INSERT INTO riders VALUES (339,'Elizabeth of Eskalya',NULL,16,NULL);
INSERT INTO riders VALUES (340,'Clare de Montfort',NULL,16,NULL);
INSERT INTO riders VALUES (341,'Machani Flaearguis',NULL,16,NULL);
INSERT INTO riders VALUES (342,'Collette de Rayncheval',NULL,16,NULL);
INSERT INTO riders VALUES (343,'Angharad Banadaspus Drakenhefd',NULL,1,NULL);
INSERT INTO riders VALUES (344,'Einar Guntherson',NULL,1,NULL);
INSERT INTO riders VALUES (345,'Anastasia Aleksandrovna Andreeva',NULL,1,NULL);
INSERT INTO riders VALUES (346,'Melwyn Deferra',NULL,1,NULL);
INSERT INTO riders VALUES (347,'Skeggi Ravensfuri',NULL,1,NULL);
INSERT INTO riders VALUES (348,'Tai Tjorkilsdatr',NULL,1,NULL);
INSERT INTO riders VALUES (349,'Walt Szklarski',NULL,1,NULL);
INSERT INTO riders VALUES (350,'Carolyn Egedal',NULL,1,NULL);
INSERT INTO riders VALUES (351,'Nora',NULL,1,NULL);
INSERT INTO riders VALUES (352,'Nicodemus',NULL,16,NULL);
INSERT INTO riders VALUES (353,'Hamish',NULL,16,NULL);
INSERT INTO riders VALUES (354,'Seren Carisulen',NULL,16,NULL);
INSERT INTO riders VALUES (355,'Kristen Lewis',NULL,16,NULL);
INSERT INTO riders VALUES (356,'Katherine Howorth',NULL,16,NULL);
INSERT INTO riders VALUES (357,'Madison Williams',NULL,16,NULL);
INSERT INTO riders VALUES (358,'Aine ingn Fhinn',NULL,16,NULL);
INSERT INTO riders VALUES (359,'Tweadh',NULL,16,NULL);
INSERT INTO riders VALUES (360,'David Muerle',NULL,16,NULL);
INSERT INTO riders VALUES (361,'Sven Gottfriedson',NULL,16,NULL);
INSERT INTO riders VALUES (362,'Selene Romero',NULL,16,NULL);
INSERT INTO riders VALUES (363,'Marie of Mere',NULL,13,NULL);
INSERT INTO riders VALUES (364,'Elisanda de Luna',NULL,13,NULL);
INSERT INTO riders VALUES (365,'Thomas Blackmoore',NULL,13,NULL);
INSERT INTO riders VALUES (366,'Alasais Bandeli',NULL,13,NULL);
INSERT INTO riders VALUES (367,'Nicole Boyd',NULL,13,NULL);
INSERT INTO riders VALUES (368,'Checheyigen Oyugun',NULL,17,NULL);
INSERT INTO riders VALUES (369,'Niccolosa Dragonetti',NULL,15,NULL);
INSERT INTO riders VALUES (370,'Chiere Weeic Maredudo',NULL,15,NULL);
INSERT INTO riders VALUES (371,'Checheyigen Oyugun',NULL,17,NULL);
INSERT INTO riders VALUES (372,'Kaelynn Mitores',NULL,15,NULL);
INSERT INTO riders VALUES (373,'Henri le Hibou du Bois',NULL,2,'N');
INSERT INTO riders VALUES (374,'Rosalinda DeSalerno',NULL,2,NULL);
INSERT INTO riders VALUES (375,'Elspeth MacNaughton',NULL,15,NULL);
INSERT INTO riders VALUES (376,'Charla Noel Du Lac',NULL,2,NULL);
INSERT INTO riders VALUES (377,'Alissende deMontfaucon',NULL,17,NULL);
INSERT INTO riders VALUES (378,'Mirabelis Zabanen',NULL,2,NULL);
INSERT INTO riders VALUES (379,'Sighieri',NULL,2,NULL);
INSERT INTO riders VALUES (380,'Anastasia Alexandrovna Andreeva',NULL,1,'N');
INSERT INTO riders VALUES (381,'Tressa Macdommail',NULL,1,NULL);
INSERT INTO riders VALUES (382,'Khai',NULL,1,NULL);
INSERT INTO riders VALUES (383,'Arabella da Siena',NULL,7,NULL);
INSERT INTO riders VALUES (384,'Tamara of Many Horses',NULL,7,NULL);
INSERT INTO riders VALUES (385,'O Deane \\',NULL,7,NULL);
INSERT INTO riders VALUES (386,'Aobheallan Sionnach',NULL,7,NULL);
INSERT INTO riders VALUES (387,'Carlotta Vaquera',NULL,16,NULL);
INSERT INTO riders VALUES (388,'Nicole of Champclair',NULL,16,NULL);
INSERT INTO riders VALUES (389,'Celine Angeli di Moneta',NULL,16,NULL);
INSERT INTO riders VALUES (390,'Khaalid al Jarrad',NULL,16,NULL);
INSERT INTO riders VALUES (391,'Richard Langsmith',NULL,13,NULL);
INSERT INTO riders VALUES (392,'Lourene Atte Blacksterre',NULL,13,NULL);
INSERT INTO riders VALUES (393,'Mayken de Houtman',NULL,7,NULL);
INSERT INTO riders VALUES (394,'Kiena Stewart',NULL,11,NULL);
INSERT INTO riders VALUES (395,'Juliana of Avon',NULL,16,NULL);
INSERT INTO riders VALUES (396,'Arnak',NULL,4,NULL);
INSERT INTO riders VALUES (397,'Phoebe',NULL,4,NULL);
INSERT INTO riders VALUES (398,'Alexander de Cuningham',NULL,7,NULL);
INSERT INTO riders VALUES (399,'Virginia Read',NULL,7,NULL);
INSERT INTO riders VALUES (400,'Guendowan the Silent',NULL,16,NULL);
INSERT INTO riders VALUES (401,'Landon',NULL,7,NULL);
INSERT INTO riders VALUES (402,'Isabeau of Calanais',NULL,8,NULL);
INSERT INTO riders VALUES (403,'Gareth of Calanais Nuadh',NULL,8,NULL);
INSERT INTO riders VALUES (404,'Jami Bahadar',NULL,3,NULL);
INSERT INTO riders VALUES (405,'Ronan Lothty',NULL,3,NULL);
INSERT INTO riders VALUES (406,'Clare Delacy',NULL,3,NULL);
INSERT INTO riders VALUES (407,'Erin MacLure',NULL,3,NULL);
INSERT INTO riders VALUES (408,'Una',NULL,3,NULL);
INSERT INTO riders VALUES (409,'Lady Danielle Alavaine deLicorne',NULL,3,NULL);
INSERT INTO riders VALUES (410,'Stephen of Calanais',NULL,8,NULL);
INSERT INTO riders VALUES (411,'Elspeth M\\\'affeith',NULL,8,NULL);
INSERT INTO riders VALUES (412,'Anna Cameron',NULL,1,NULL);
INSERT INTO riders VALUES (413,'Kolfinna Hestrasdottir',NULL,1,NULL);
INSERT INTO riders VALUES (414,'Erycka Von Scotte',NULL,7,NULL);
INSERT INTO riders VALUES (415,'Conall mac Seaghain',NULL,7,NULL);
INSERT INTO riders VALUES (416,'Arianna ny Shane',NULL,7,NULL);
INSERT INTO riders VALUES (417,'Elizabeth Hiatt',NULL,16,NULL);
INSERT INTO riders VALUES (418,'Richard Pearce',NULL,16,NULL);
INSERT INTO riders VALUES (419,'Laurentia von Graustein',NULL,16,NULL);
INSERT INTO riders VALUES (420,'Gwynessa Lucan',NULL,16,NULL);
INSERT INTO riders VALUES (421,'Zinaida Orshima',NULL,16,NULL);
INSERT INTO riders VALUES (422,'Allana Strangeways',NULL,16,NULL);
INSERT INTO riders VALUES (423,'Niezoala',NULL,16,NULL);
INSERT INTO riders VALUES (424,'Abu Malik al Haddad',NULL,16,NULL);
INSERT INTO riders VALUES (425,'Garrik',NULL,16,NULL);
INSERT INTO riders VALUES (426,'Ariannwynn',NULL,1,NULL);
INSERT INTO riders VALUES (427,'Doucette de Verdun',NULL,11,NULL);
INSERT INTO riders VALUES (428,'Gunnarr of Endless Hills',NULL,6,NULL);
INSERT INTO riders VALUES (429,'Rhiannon the Banshee',NULL,6,NULL);
INSERT INTO riders VALUES (430,'Katherine Stanhope',NULL,11,NULL);
INSERT INTO riders VALUES (431,'Catheryne Greene',NULL,11,'N');
INSERT INTO riders VALUES (432,'Aurelia Rufinia',NULL,11,NULL);
INSERT INTO riders VALUES (433,'Franquiete du Grandchamp',NULL,11,NULL);
INSERT INTO riders VALUES (434,'Ellen du Grandchamp',NULL,11,NULL);
INSERT INTO riders VALUES (435,'Alanna of Skye',NULL,11,NULL);
INSERT INTO riders VALUES (436,'Niecola',NULL,16,NULL);
INSERT INTO riders VALUES (437,'Morgan Elandris',NULL,6,NULL);
INSERT INTO riders VALUES (438,'Ragnailt in Eich',NULL,6,NULL);
INSERT INTO riders VALUES (439,'Maeve Ni Surtain',NULL,6,NULL);
INSERT INTO riders VALUES (440,'Ysabeau Tiercelin',NULL,6,NULL);
INSERT INTO riders VALUES (441,'Alexandra Caithnes',NULL,6,NULL);
INSERT INTO riders VALUES (442,'Dominic McMoreland',NULL,6,NULL);
INSERT INTO riders VALUES (443,'Sabine la Courratierre de chevaux',NULL,6,NULL);
INSERT INTO riders VALUES (444,'Colleen of Hartstone',NULL,6,NULL);
INSERT INTO riders VALUES (445,'Rhiannon filia Catell',NULL,6,NULL);
INSERT INTO riders VALUES (446,'Wulfgar',NULL,13,NULL);
INSERT INTO riders VALUES (447,'Shoshida Tora Gozen',NULL,6,NULL);
INSERT INTO riders VALUES (448,'Kim Hay',NULL,6,NULL);
INSERT INTO riders VALUES (449,'Reinmar',NULL,18,NULL);
INSERT INTO riders VALUES (450,'Annora Reyner',NULL,8,NULL);
INSERT INTO riders VALUES (451,'Eowyth',NULL,8,NULL);
INSERT INTO riders VALUES (452,'Cassanya Sevgili',NULL,8,NULL);
INSERT INTO riders VALUES (453,'Ragnailt',NULL,15,NULL);
INSERT INTO riders VALUES (454,'Azenari Basandere',NULL,8,NULL);
INSERT INTO riders VALUES (455,'Elizabeth Crane',NULL,12,NULL);
INSERT INTO riders VALUES (456,'Gwendolyn',NULL,12,NULL);
INSERT INTO riders VALUES (457,'Rhys',NULL,2,NULL);
INSERT INTO riders VALUES (458,'Rhua Cat Ifrinn',NULL,7,NULL);
INSERT INTO riders VALUES (459,'Ericka of Hartshorn-Dale',NULL,11,NULL);
INSERT INTO riders VALUES (460,'Meadhbh Inghean Ui Bhaoghill',NULL,6,NULL);
INSERT INTO riders VALUES (461,'Rowena McCara',NULL,6,NULL);
INSERT INTO riders VALUES (462,'Eachmharcach an Phasaigh',NULL,6,NULL);
INSERT INTO riders VALUES (463,'Alays de Bergerac',NULL,6,NULL);
INSERT INTO riders VALUES (464,'Gwendwyn the Silent',NULL,16,NULL);
INSERT INTO riders VALUES (465,'Gabriel MacMahon',NULL,7,NULL);
INSERT INTO riders VALUES (466,'Rhoana Carmylie',NULL,4,NULL);
INSERT INTO riders VALUES (467,'Eowyth Sithend',NULL,8,NULL);
INSERT INTO riders VALUES (468,'Toirdhealbach Wesley',NULL,18,NULL);
INSERT INTO riders VALUES (469,'Helena de Navarre',NULL,18,NULL);
INSERT INTO riders VALUES (470,'Dean Dwerlkotte',NULL,8,NULL);

--
-- Table structure for table `rings`
--

CREATE TABLE rings (
  SRID int(3) NOT NULL auto_increment,
  PID int(3) NOT NULL default '0',
  HID int(3) NOT NULL default '0',
  EID int(3) NOT NULL default '0',
  KID int(2) NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  L1 int(2) default NULL,
  L2 int(2) default NULL,
  L3 int(2) default NULL,
  L4 int(2) default NULL,
  L5 int(2) default NULL,
  L6 int(2) default NULL,
  R1 int(2) default NULL,
  R2 int(2) default NULL,
  R3 int(2) default NULL,
  R4 int(2) default NULL,
  R5 int(2) default NULL,
  R6 int(2) default NULL,
  SRcount int(2) NOT NULL default '0',
  SRscore float NOT NULL default '0',
  SRseen char(1) default NULL,
  SRyear int(2) NOT NULL default '38',
  PRIMARY KEY  (SRID),
  UNIQUE KEY SRID (SRID),
  KEY SRID_2 (SRID)
) TYPE=MyISAM;

--
-- Dumping data for table `rings`
--

INSERT INTO rings VALUES (1,1,1,5,10,'D',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,37);
INSERT INTO rings VALUES (2,2,2,7,16,'D',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,37);
INSERT INTO rings VALUES (3,3,3,14,16,'D',0,0,0,8,0,0,0,0,0,0,0,0,1,8,NULL,37);
INSERT INTO rings VALUES (4,4,4,14,16,'D',0,0,10,0,0,0,0,0,0,0,0,0,1,10,NULL,37);
INSERT INTO rings VALUES (5,5,3,14,16,'D',0,0,0,0,6,0,0,0,0,0,0,0,1,6,NULL,37);
INSERT INTO rings VALUES (6,6,5,14,16,'D',0,0,0,8,6,0,0,0,0,0,0,0,2,14,NULL,37);
INSERT INTO rings VALUES (7,7,6,14,16,'D',0,0,10,0,0,0,0,0,0,0,0,0,1,10,NULL,37);
INSERT INTO rings VALUES (8,8,7,14,16,'D',0,0,0,8,6,0,0,0,0,0,6,0,3,20,NULL,37);
INSERT INTO rings VALUES (9,9,8,14,16,'D',0,0,0,0,6,0,0,0,0,0,6,4,3,16,NULL,37);
INSERT INTO rings VALUES (10,10,3,14,16,'D',0,0,0,8,6,0,0,0,0,0,0,4,3,18,NULL,37);
INSERT INTO rings VALUES (11,11,6,14,16,'D',0,0,0,8,0,0,0,0,0,0,0,4,2,12,NULL,37);
INSERT INTO rings VALUES (12,12,5,14,16,'D',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,37);
INSERT INTO rings VALUES (13,13,9,7,3,'D',0,15,10,0,0,0,0,0,0,0,0,0,2,25,NULL,37);
INSERT INTO rings VALUES (14,14,10,7,3,'D',0,15,10,0,0,0,0,0,0,0,0,0,2,25,NULL,37);
INSERT INTO rings VALUES (15,15,11,7,16,'D',0,0,0,8,6,0,0,0,0,8,6,0,4,28,NULL,37);
INSERT INTO rings VALUES (16,16,12,7,16,'D',0,0,0,8,0,4,0,0,0,8,6,4,4,30,NULL,37);
INSERT INTO rings VALUES (17,17,13,7,16,'D',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (18,11,2,7,0,'D',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,37);
INSERT INTO rings VALUES (19,18,12,7,16,'D',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,37);
INSERT INTO rings VALUES (20,19,9,5,3,'D',0,0,0,8,6,4,0,0,0,0,6,4,2,28,NULL,37);
INSERT INTO rings VALUES (21,20,14,4,1,'D',0,15,10,0,0,4,0,0,10,0,6,4,6,49,NULL,37);
INSERT INTO rings VALUES (22,21,15,4,1,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (23,22,16,4,1,'B',0,15,10,0,0,0,0,0,10,0,0,4,4,39,NULL,37);
INSERT INTO rings VALUES (24,23,15,4,1,'B',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,37);
INSERT INTO rings VALUES (25,24,17,4,1,'B',0,0,0,0,0,0,0,0,0,0,0,4,1,4,NULL,37);
INSERT INTO rings VALUES (26,24,17,4,0,'B',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,37);
INSERT INTO rings VALUES (27,25,16,4,1,'B',0,0,0,8,6,0,20,0,0,8,6,0,5,48,NULL,37);
INSERT INTO rings VALUES (28,26,18,17,1,'B',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,37);
INSERT INTO rings VALUES (29,27,18,17,1,'B',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,37);
INSERT INTO rings VALUES (30,28,16,17,1,'B',0,0,0,0,0,4,0,0,0,8,0,4,3,16,NULL,37);
INSERT INTO rings VALUES (31,29,19,15,8,'D',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,37);
INSERT INTO rings VALUES (32,30,20,15,8,'B',0,0,0,8,0,0,0,0,0,0,0,4,2,12,NULL,37);
INSERT INTO rings VALUES (33,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (34,31,21,15,8,'D',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (35,32,21,15,8,'B',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,37);
INSERT INTO rings VALUES (36,33,20,15,8,'D',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (37,34,1,12,10,'B',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,37);
INSERT INTO rings VALUES (38,35,22,12,10,'D',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,37);
INSERT INTO rings VALUES (39,36,23,12,10,'B',0,0,10,0,6,4,0,0,0,0,0,0,3,20,NULL,37);
INSERT INTO rings VALUES (40,37,1,12,10,'B',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,37);
INSERT INTO rings VALUES (41,38,24,12,10,'D',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,37);
INSERT INTO rings VALUES (42,39,24,12,10,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (43,40,25,11,1,'B',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,37);
INSERT INTO rings VALUES (44,41,26,11,1,'B',0,15,10,0,0,4,0,0,10,0,6,4,6,49,NULL,37);
INSERT INTO rings VALUES (45,42,27,11,1,'B',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,37);
INSERT INTO rings VALUES (46,43,28,11,1,'B',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,37);
INSERT INTO rings VALUES (47,44,29,11,1,'B',20,0,10,0,0,0,0,0,10,0,0,0,3,40,NULL,37);
INSERT INTO rings VALUES (48,45,30,11,1,'D',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,37);
INSERT INTO rings VALUES (49,46,31,11,1,'B',0,0,10,0,6,4,0,0,0,8,6,0,5,34,NULL,37);
INSERT INTO rings VALUES (50,47,32,11,1,'B',0,15,10,0,0,0,0,0,10,0,0,4,4,39,NULL,37);
INSERT INTO rings VALUES (51,44,29,11,1,'B',20,15,10,0,0,0,0,0,0,0,0,0,3,45,NULL,37);
INSERT INTO rings VALUES (52,42,27,11,0,'B',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,37);
INSERT INTO rings VALUES (53,47,32,1,0,'B',20,15,10,0,0,0,0,0,10,0,6,4,6,65,NULL,37);
INSERT INTO rings VALUES (54,44,29,11,0,'B',0,15,10,0,0,0,0,15,10,0,0,0,4,50,NULL,37);
INSERT INTO rings VALUES (55,43,28,11,0,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (56,48,33,2,7,'B',0,0,0,0,6,0,0,0,0,8,6,4,4,24,NULL,37);
INSERT INTO rings VALUES (57,49,34,2,7,'B',0,0,0,8,0,4,0,0,10,0,6,4,5,32,NULL,37);
INSERT INTO rings VALUES (58,50,35,2,7,'B',0,0,10,0,6,0,0,0,0,0,0,0,2,16,NULL,37);
INSERT INTO rings VALUES (59,51,36,2,7,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (60,52,34,2,7,'B',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,37);
INSERT INTO rings VALUES (61,53,37,2,7,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (62,54,38,2,7,'B',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,37);
INSERT INTO rings VALUES (63,55,38,2,7,'B',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,37);
INSERT INTO rings VALUES (64,56,36,2,7,'B',0,15,10,0,0,4,0,0,0,8,0,4,5,41,NULL,37);
INSERT INTO rings VALUES (65,57,39,2,7,'B',0,15,0,0,0,4,0,0,0,0,0,4,3,23,NULL,37);
INSERT INTO rings VALUES (66,33,36,2,0,'B',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (67,53,37,2,7,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (68,56,36,2,7,'B',0,15,10,0,0,4,0,0,0,8,0,4,5,41,NULL,37);
INSERT INTO rings VALUES (69,47,32,11,1,'B',20,15,10,0,0,0,0,0,10,0,6,4,6,65,NULL,37);
INSERT INTO rings VALUES (70,25,16,4,1,'B',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,37);
INSERT INTO rings VALUES (71,14,10,5,3,'B',0,15,0,0,0,0,0,0,10,0,0,0,2,25,NULL,37);
INSERT INTO rings VALUES (72,58,40,15,8,'B',0,0,10,0,6,4,0,0,0,0,0,4,4,24,NULL,37);
INSERT INTO rings VALUES (73,59,1,3,7,'D',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,37);
INSERT INTO rings VALUES (74,53,37,3,0,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (75,60,1,3,7,'D',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (76,61,1,3,7,'D',0,15,10,0,0,4,0,0,10,0,0,4,5,43,NULL,37);
INSERT INTO rings VALUES (77,62,38,3,7,'D',0,15,0,0,0,0,0,15,10,0,0,4,4,44,NULL,37);
INSERT INTO rings VALUES (78,55,38,3,0,'B',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (79,63,1,3,7,'B',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,37);
INSERT INTO rings VALUES (80,20,41,3,0,'B',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,37);
INSERT INTO rings VALUES (81,64,34,3,7,'B',0,0,0,8,6,0,0,0,0,0,6,4,4,24,NULL,37);
INSERT INTO rings VALUES (82,49,34,3,0,'B',0,0,10,0,6,4,0,0,0,0,0,4,4,24,NULL,37);
INSERT INTO rings VALUES (83,65,42,3,7,'B',0,0,0,0,6,0,0,0,0,0,0,4,2,10,NULL,37);
INSERT INTO rings VALUES (84,51,36,3,0,'B',0,0,10,0,6,0,0,0,0,8,0,4,4,28,NULL,37);
INSERT INTO rings VALUES (85,66,1,3,7,'B',0,0,0,0,6,4,0,0,0,8,6,0,4,24,NULL,37);
INSERT INTO rings VALUES (86,67,43,10,2,'B',0,15,10,8,0,0,0,0,10,8,0,0,5,51,NULL,37);
INSERT INTO rings VALUES (87,68,44,10,2,'B',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,37);
INSERT INTO rings VALUES (88,69,45,10,2,'B',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (89,70,46,10,2,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (90,71,47,10,2,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (91,72,48,10,2,'B',0,15,0,0,0,4,0,15,10,0,0,4,5,48,NULL,37);
INSERT INTO rings VALUES (92,73,49,10,2,'B',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,37);
INSERT INTO rings VALUES (93,74,50,10,2,'B',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,37);
INSERT INTO rings VALUES (94,75,51,10,2,'D',0,15,10,0,0,0,0,0,10,0,6,4,5,45,NULL,37);
INSERT INTO rings VALUES (95,76,50,10,2,'D',0,15,10,0,0,4,0,15,10,0,0,4,6,58,NULL,37);
INSERT INTO rings VALUES (96,77,52,10,13,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (97,78,1,1,10,'B',0,0,0,0,6,0,0,0,0,8,6,4,4,24,NULL,37);
INSERT INTO rings VALUES (98,79,53,10,2,'B',0,0,0,0,6,0,0,0,0,0,6,4,3,16,NULL,37);
INSERT INTO rings VALUES (99,37,1,1,10,'D',0,15,10,0,0,4,0,0,10,0,6,4,6,49,NULL,37);
INSERT INTO rings VALUES (100,80,1,1,10,'D',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,37);
INSERT INTO rings VALUES (101,81,53,10,2,'D',0,0,0,0,0,0,0,0,0,0,6,4,2,10,NULL,37);
INSERT INTO rings VALUES (102,82,1,1,10,'B',0,0,0,0,0,0,0,0,0,8,6,4,3,18,NULL,37);
INSERT INTO rings VALUES (103,83,51,10,2,'D',0,0,0,0,0,4,0,0,0,8,6,4,4,22,NULL,37);
INSERT INTO rings VALUES (104,84,54,10,2,'D',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,37);
INSERT INTO rings VALUES (105,85,1,1,10,'D',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (106,86,55,10,13,'D',0,0,0,0,0,4,0,0,0,8,6,4,4,22,NULL,37);
INSERT INTO rings VALUES (107,35,1,1,10,'D',0,15,10,0,0,0,0,0,0,0,0,4,3,29,NULL,37);
INSERT INTO rings VALUES (108,87,1,1,10,'D',0,0,0,0,6,0,0,0,0,0,6,4,3,16,NULL,37);
INSERT INTO rings VALUES (109,88,1,1,10,'B',0,15,10,0,0,4,0,0,0,0,0,0,3,29,NULL,37);
INSERT INTO rings VALUES (110,89,1,1,10,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (111,90,1,1,10,'B',0,0,0,8,6,0,0,0,0,8,0,0,3,22,NULL,37);
INSERT INTO rings VALUES (112,91,56,3,7,'B',0,0,0,0,0,4,0,0,0,8,0,4,3,16,NULL,37);
INSERT INTO rings VALUES (113,92,57,20,3,'D',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,37);
INSERT INTO rings VALUES (114,93,58,20,3,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (115,94,59,20,3,'B',0,0,10,0,0,0,0,0,10,0,0,4,3,24,NULL,37);
INSERT INTO rings VALUES (116,95,9,20,3,'B',0,0,10,0,6,0,0,0,0,0,0,0,2,16,NULL,37);
INSERT INTO rings VALUES (117,96,60,20,3,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (118,97,61,20,3,'D',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,37);
INSERT INTO rings VALUES (119,98,60,20,3,'D',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,37);
INSERT INTO rings VALUES (120,42,27,20,0,'B',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,37);
INSERT INTO rings VALUES (121,99,29,20,1,'B',0,0,10,0,6,4,0,0,0,0,0,0,3,20,NULL,37);
INSERT INTO rings VALUES (122,100,10,20,3,'B',0,0,10,0,6,0,0,0,10,0,0,4,4,30,NULL,37);
INSERT INTO rings VALUES (123,101,63,20,3,'D',20,15,10,0,0,0,0,0,10,0,0,0,4,55,NULL,37);
INSERT INTO rings VALUES (124,102,64,20,3,'D',20,0,10,0,0,0,0,0,0,0,0,0,2,30,NULL,37);
INSERT INTO rings VALUES (125,106,65,22,14,'D',20,15,0,0,0,0,0,0,10,0,6,4,5,55,NULL,37);
INSERT INTO rings VALUES (126,107,66,22,14,'D',0,15,10,0,0,4,0,0,10,0,6,4,6,49,NULL,37);
INSERT INTO rings VALUES (127,108,67,22,14,'D',0,15,10,0,0,4,0,0,10,0,6,0,5,45,NULL,37);
INSERT INTO rings VALUES (128,109,68,22,14,'D',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,37);
INSERT INTO rings VALUES (129,112,72,18,12,'D',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (130,113,73,18,12,'D',0,15,10,0,0,0,0,0,0,0,0,0,2,25,NULL,37);
INSERT INTO rings VALUES (131,114,74,18,12,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (132,114,74,18,12,'D',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,37);
INSERT INTO rings VALUES (133,115,75,18,12,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (134,116,72,18,12,'B',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,37);
INSERT INTO rings VALUES (135,117,72,18,12,'D',0,15,10,0,6,4,0,0,10,0,0,0,5,45,NULL,37);
INSERT INTO rings VALUES (136,117,72,18,12,'B',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,37);
INSERT INTO rings VALUES (137,118,74,18,12,'D',0,0,0,8,0,0,0,0,0,8,6,4,4,26,NULL,37);
INSERT INTO rings VALUES (138,113,73,24,0,'D',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,37);
INSERT INTO rings VALUES (139,119,76,24,12,'D',0,15,10,0,0,0,0,15,0,0,0,0,3,40,NULL,37);
INSERT INTO rings VALUES (140,120,77,24,12,'B',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (141,121,78,24,12,'D',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,37);
INSERT INTO rings VALUES (142,116,72,24,12,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (143,114,74,24,12,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (144,122,79,24,12,'B',0,0,0,8,6,0,0,0,0,0,0,0,2,14,NULL,37);
INSERT INTO rings VALUES (145,112,72,24,12,'D',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,37);
INSERT INTO rings VALUES (146,117,72,24,12,'B',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,37);
INSERT INTO rings VALUES (147,123,80,14,2,'B',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,37);
INSERT INTO rings VALUES (148,124,48,14,2,'D',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,37);
INSERT INTO rings VALUES (149,125,43,14,2,'D',0,15,10,0,0,4,0,0,10,0,0,4,5,43,NULL,37);
INSERT INTO rings VALUES (150,126,81,14,2,'B',0,15,10,0,0,4,0,0,0,0,6,4,5,39,NULL,37);
INSERT INTO rings VALUES (151,73,82,14,0,'D',0,15,10,0,0,4,0,0,0,0,6,4,5,39,NULL,37);
INSERT INTO rings VALUES (152,67,48,14,0,'B',0,15,10,0,0,4,0,15,10,0,0,0,5,54,NULL,37);
INSERT INTO rings VALUES (153,72,48,14,0,'B',0,0,0,0,0,4,0,0,0,8,0,4,3,16,NULL,37);
INSERT INTO rings VALUES (154,127,83,14,2,'B',0,0,0,8,0,0,0,0,0,8,6,4,4,26,NULL,37);
INSERT INTO rings VALUES (155,128,84,14,2,'B',0,15,10,0,0,4,0,0,0,0,6,4,5,39,NULL,37);
INSERT INTO rings VALUES (156,75,48,14,0,'B',0,0,10,0,6,0,0,0,0,0,0,4,3,20,NULL,37);
INSERT INTO rings VALUES (157,74,85,14,0,'B',0,0,10,0,0,4,0,0,0,0,6,0,3,20,NULL,37);
INSERT INTO rings VALUES (158,129,1,1,10,'D',0,15,10,0,0,4,0,0,0,0,0,0,3,29,NULL,37);
INSERT INTO rings VALUES (159,130,1,1,10,'D',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,37);
INSERT INTO rings VALUES (160,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (161,117,72,24,12,'B',0,0,0,8,6,0,0,0,0,0,6,4,4,24,NULL,37);
INSERT INTO rings VALUES (162,71,47,10,2,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (163,72,48,14,2,'B',0,0,0,0,0,4,0,0,0,8,0,4,3,16,NULL,37);
INSERT INTO rings VALUES (164,126,81,14,2,'B',0,15,10,0,6,4,0,0,0,0,0,4,5,39,NULL,37);
INSERT INTO rings VALUES (165,125,43,14,2,'D',0,15,10,0,0,4,0,0,10,0,0,4,5,43,NULL,37);
INSERT INTO rings VALUES (166,73,82,14,2,'B',0,0,0,0,0,4,0,15,10,0,6,4,5,39,NULL,37);
INSERT INTO rings VALUES (167,132,87,9,12,'B',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,37);
INSERT INTO rings VALUES (168,131,86,9,12,'B',0,15,0,0,0,4,0,0,0,0,0,0,2,19,NULL,37);
INSERT INTO rings VALUES (169,133,88,9,12,'B',0,0,10,0,0,4,0,0,0,0,0,0,2,14,NULL,37);
INSERT INTO rings VALUES (170,134,89,9,12,'D',0,0,10,0,6,4,0,0,0,8,6,0,5,34,NULL,37);
INSERT INTO rings VALUES (171,135,90,9,12,'D',0,0,0,0,6,4,0,0,10,0,6,0,4,26,NULL,37);
INSERT INTO rings VALUES (172,137,92,9,12,'D',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (173,138,93,9,12,'D',0,0,0,8,0,4,0,0,0,8,6,4,5,30,NULL,37);
INSERT INTO rings VALUES (174,139,94,9,12,'D',0,0,0,0,0,4,0,15,10,0,0,4,4,33,NULL,37);
INSERT INTO rings VALUES (175,140,95,10,12,'D',0,0,10,0,0,4,0,0,0,0,0,0,2,14,NULL,37);
INSERT INTO rings VALUES (176,141,90,9,12,'D',0,15,10,0,0,0,0,0,10,0,0,4,4,39,NULL,37);
INSERT INTO rings VALUES (177,2,96,21,16,'D',0,0,10,0,6,0,0,0,0,0,6,4,4,26,NULL,37);
INSERT INTO rings VALUES (178,12,88,21,16,'B',0,0,0,0,0,0,0,0,10,0,6,4,3,20,NULL,37);
INSERT INTO rings VALUES (179,7,6,21,16,'D',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,37);
INSERT INTO rings VALUES (180,143,23,1,16,'B',0,0,0,0,6,0,0,0,0,0,0,0,1,6,NULL,37);
INSERT INTO rings VALUES (181,3,96,21,15,'B',0,0,10,0,0,4,0,0,0,0,0,4,3,18,NULL,37);
INSERT INTO rings VALUES (182,144,88,21,16,'D',0,15,10,0,0,4,0,0,0,0,0,4,4,33,NULL,37);
INSERT INTO rings VALUES (183,145,96,21,16,'D',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,37);
INSERT INTO rings VALUES (184,146,96,21,16,'D',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (185,74,85,27,0,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,37);
INSERT INTO rings VALUES (186,147,98,27,15,'B',0,0,10,0,0,0,0,0,10,8,6,4,5,38,NULL,37);
INSERT INTO rings VALUES (187,148,99,27,5,'B',0,0,10,0,0,4,0,0,10,8,0,4,5,36,NULL,37);
INSERT INTO rings VALUES (188,149,100,27,13,'B',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,37);
INSERT INTO rings VALUES (189,150,101,27,13,'B',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,37);
INSERT INTO rings VALUES (190,151,99,27,5,'B',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,37);
INSERT INTO rings VALUES (191,79,53,27,0,'B',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,37);
INSERT INTO rings VALUES (192,152,102,27,2,'B',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (193,153,98,27,15,'B',0,0,10,8,6,0,0,0,0,0,0,0,3,24,NULL,37);
INSERT INTO rings VALUES (194,75,51,27,0,'D',0,0,10,8,6,4,0,0,10,0,0,4,6,42,NULL,37);
INSERT INTO rings VALUES (195,154,103,27,11,'D',0,15,10,8,0,4,0,0,0,8,0,4,6,49,NULL,37);
INSERT INTO rings VALUES (196,155,77,27,12,'D',0,0,10,0,0,4,0,0,10,8,6,4,6,42,NULL,37);
INSERT INTO rings VALUES (197,156,104,27,2,'D',0,0,10,8,0,4,0,0,0,8,0,4,5,34,NULL,37);
INSERT INTO rings VALUES (198,157,105,27,2,'D',0,0,0,8,0,4,0,0,0,0,6,4,4,22,NULL,37);
INSERT INTO rings VALUES (199,158,105,27,15,'D',0,0,10,8,0,0,0,0,0,8,0,0,3,26,NULL,37);
INSERT INTO rings VALUES (200,159,98,27,15,'D',0,0,10,8,0,4,0,0,0,0,0,4,4,26,NULL,37);
INSERT INTO rings VALUES (201,160,106,27,13,'D',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,37);
INSERT INTO rings VALUES (202,161,99,27,5,'D',0,0,0,0,6,0,0,0,0,0,6,4,3,16,NULL,37);
INSERT INTO rings VALUES (203,162,107,27,12,'D',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,37);
INSERT INTO rings VALUES (204,95,9,26,0,'A',20,15,10,0,0,0,0,0,0,0,0,0,3,45,NULL,37);
INSERT INTO rings VALUES (205,163,98,27,15,'D',0,0,10,8,0,0,0,0,0,0,0,4,3,22,NULL,37);
INSERT INTO rings VALUES (206,164,108,27,13,'D',0,0,0,8,0,4,0,0,0,0,0,0,2,12,NULL,37);
INSERT INTO rings VALUES (207,165,53,27,2,'D',0,0,10,8,6,4,0,0,0,0,0,4,5,32,NULL,37);
INSERT INTO rings VALUES (208,95,9,26,0,'D',20,15,0,0,0,0,0,15,0,0,0,0,3,50,NULL,37);
INSERT INTO rings VALUES (209,97,10,26,3,'A',0,15,0,0,0,4,0,0,0,0,6,4,4,29,NULL,37);
INSERT INTO rings VALUES (210,97,10,26,0,'D',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (211,92,57,26,0,'D',0,15,10,0,0,0,0,0,10,0,0,4,4,39,NULL,37);
INSERT INTO rings VALUES (212,102,64,26,0,'D',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,37);
INSERT INTO rings VALUES (213,94,10,26,0,'A',0,0,0,8,0,0,0,0,0,0,0,4,2,12,NULL,37);
INSERT INTO rings VALUES (214,94,10,26,0,'B',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,37);
INSERT INTO rings VALUES (215,166,64,26,3,'D',0,0,0,0,6,4,0,0,0,0,6,0,3,16,NULL,37);
INSERT INTO rings VALUES (216,167,3,23,16,'D',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (217,12,88,23,16,'B',0,0,0,0,6,4,0,0,0,8,6,0,4,24,NULL,37);
INSERT INTO rings VALUES (218,12,88,23,16,'A',0,0,0,8,6,0,0,0,0,0,6,4,4,24,NULL,37);
INSERT INTO rings VALUES (219,6,5,23,16,'A',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (220,142,109,23,16,'A',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,37);
INSERT INTO rings VALUES (221,93,58,20,16,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,37);
INSERT INTO rings VALUES (222,95,9,20,3,'B',0,15,0,0,0,0,0,15,0,0,0,0,2,30,NULL,37);
INSERT INTO rings VALUES (223,97,61,20,3,'D',0,0,10,0,0,0,0,0,10,0,6,4,4,30,NULL,37);
INSERT INTO rings VALUES (224,97,61,20,3,'B',0,0,10,0,0,0,0,0,10,0,6,4,4,30,NULL,37);
INSERT INTO rings VALUES (225,44,29,20,1,'B',0,0,10,0,6,4,0,0,0,0,0,0,3,20,NULL,37);
INSERT INTO rings VALUES (226,95,9,26,3,'B',0,15,0,0,0,0,20,15,0,0,0,0,3,50,NULL,37);
INSERT INTO rings VALUES (227,97,10,26,3,'B',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,37);
INSERT INTO rings VALUES (228,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (229,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (230,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (231,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (232,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (233,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (234,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (235,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (236,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (237,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (238,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,37);
INSERT INTO rings VALUES (239,83,103,32,0,'E',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,38);
INSERT INTO rings VALUES (240,168,110,34,12,'B',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,38);
INSERT INTO rings VALUES (241,78,111,34,0,'B',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (242,117,112,34,0,'B',20,0,0,8,6,0,0,0,0,0,6,4,5,44,NULL,38);
INSERT INTO rings VALUES (243,155,77,34,0,'B',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,38);
INSERT INTO rings VALUES (244,169,113,34,12,'B',20,15,10,0,0,0,0,0,0,0,0,4,4,49,NULL,38);
INSERT INTO rings VALUES (245,170,114,34,12,'D',0,15,10,0,0,0,0,0,10,0,6,0,4,41,NULL,38);
INSERT INTO rings VALUES (246,171,73,34,12,'D',0,0,10,0,0,0,0,0,0,0,0,4,2,14,NULL,38);
INSERT INTO rings VALUES (247,172,115,34,12,'D',0,0,10,0,6,4,0,0,0,8,6,4,6,38,NULL,38);
INSERT INTO rings VALUES (248,136,116,34,12,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (249,173,117,34,12,'D',0,0,10,0,0,4,0,0,0,0,0,4,3,18,NULL,38);
INSERT INTO rings VALUES (250,116,114,34,0,'D',0,0,0,0,0,4,0,0,0,0,6,0,2,10,NULL,38);
INSERT INTO rings VALUES (251,121,118,34,0,'D',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,38);
INSERT INTO rings VALUES (252,162,107,34,0,'D',20,15,10,0,0,0,0,0,0,0,0,0,3,45,NULL,38);
INSERT INTO rings VALUES (253,174,77,34,12,'D',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,38);
INSERT INTO rings VALUES (254,21,119,36,0,'D',0,0,0,0,6,4,0,0,10,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (255,176,120,36,1,'B',0,0,0,0,0,4,0,0,0,0,0,0,1,4,NULL,38);
INSERT INTO rings VALUES (256,22,119,36,0,'D',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,38);
INSERT INTO rings VALUES (257,177,121,36,1,'D',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,38);
INSERT INTO rings VALUES (258,23,122,36,0,'B',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,38);
INSERT INTO rings VALUES (259,167,3,35,16,'D',0,0,0,8,6,0,0,0,0,8,0,4,4,26,NULL,38);
INSERT INTO rings VALUES (260,6,5,35,16,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (261,179,123,35,16,'B',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,38);
INSERT INTO rings VALUES (262,180,4,35,16,'B',0,0,0,0,6,0,0,0,0,0,0,0,1,6,NULL,38);
INSERT INTO rings VALUES (263,181,124,35,16,'D',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,38);
INSERT INTO rings VALUES (264,17,5,35,0,'B',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,38);
INSERT INTO rings VALUES (265,167,4,35,16,'D',0,0,0,0,6,4,0,0,0,0,6,0,3,16,NULL,38);
INSERT INTO rings VALUES (266,172,125,37,12,'D',0,0,10,0,0,4,0,0,0,8,6,4,5,32,NULL,38);
INSERT INTO rings VALUES (267,182,115,37,12,'D',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,38);
INSERT INTO rings VALUES (268,183,126,39,12,'B',0,15,10,0,0,4,0,15,0,0,0,0,4,44,NULL,38);
INSERT INTO rings VALUES (269,184,117,39,12,'D',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,38);
INSERT INTO rings VALUES (270,185,127,39,12,'B',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,38);
INSERT INTO rings VALUES (271,186,128,39,12,'B',0,15,10,0,0,4,0,0,0,0,0,0,3,29,NULL,38);
INSERT INTO rings VALUES (272,187,129,39,12,'D',0,15,10,0,0,4,0,0,0,0,0,0,3,29,NULL,38);
INSERT INTO rings VALUES (273,188,128,39,12,'B',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,38);
INSERT INTO rings VALUES (274,189,126,39,12,'B',0,0,0,0,6,4,0,0,10,0,0,4,4,24,NULL,38);
INSERT INTO rings VALUES (275,190,130,39,12,'F',0,0,10,0,0,0,0,0,0,8,0,4,3,22,NULL,38);
INSERT INTO rings VALUES (276,83,103,32,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,38);
INSERT INTO rings VALUES (277,83,103,32,0,'B',20,15,10,0,0,0,20,15,0,8,0,0,6,88,NULL,38);
INSERT INTO rings VALUES (278,78,40,32,0,'C',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,38);
INSERT INTO rings VALUES (279,78,40,32,0,'D',20,15,10,0,0,0,20,15,0,8,0,0,6,88,NULL,38);
INSERT INTO rings VALUES (280,25,46,32,0,'E',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,38);
INSERT INTO rings VALUES (281,25,46,32,0,'F',20,15,10,0,0,0,20,15,0,8,0,0,6,88,NULL,38);
INSERT INTO rings VALUES (282,116,131,41,12,'B',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,38);
INSERT INTO rings VALUES (283,191,132,42,13,'C',0,15,0,8,0,4,0,0,0,0,6,4,5,37,NULL,38);
INSERT INTO rings VALUES (284,192,97,42,13,'C',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,38);
INSERT INTO rings VALUES (285,193,97,42,13,'C',0,0,0,8,0,0,0,0,10,0,0,0,2,18,NULL,38);
INSERT INTO rings VALUES (286,194,132,42,13,'C',0,0,0,0,0,4,0,0,0,0,6,0,2,10,NULL,38);
INSERT INTO rings VALUES (287,21,119,36,1,'D',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (288,176,120,36,1,'B',0,0,0,0,0,4,0,0,0,0,0,0,1,4,NULL,38);
INSERT INTO rings VALUES (289,177,121,36,1,'D',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,38);
INSERT INTO rings VALUES (290,22,119,36,1,'D',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,38);
INSERT INTO rings VALUES (291,195,133,38,15,'B',0,0,0,8,6,0,0,0,0,0,6,0,3,20,NULL,38);
INSERT INTO rings VALUES (292,196,103,38,15,'B',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,38);
INSERT INTO rings VALUES (293,197,134,38,15,'B',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,38);
INSERT INTO rings VALUES (294,172,125,48,12,'D',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,38);
INSERT INTO rings VALUES (295,172,125,48,12,'D',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,38);
INSERT INTO rings VALUES (296,172,115,48,12,'D',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,38);
INSERT INTO rings VALUES (297,198,135,48,12,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (298,199,136,48,12,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (299,200,136,48,12,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (300,201,135,48,12,'B',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,38);
INSERT INTO rings VALUES (301,178,122,36,1,'B',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,38);
INSERT INTO rings VALUES (302,176,120,36,1,'B',0,0,0,0,0,4,0,0,0,0,0,0,1,4,NULL,38);
INSERT INTO rings VALUES (303,197,134,38,15,'B',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,38);
INSERT INTO rings VALUES (304,182,115,37,12,'D',0,0,10,0,0,4,0,0,0,0,0,4,3,18,NULL,38);
INSERT INTO rings VALUES (305,172,125,37,12,'D',0,0,10,0,6,4,0,0,0,8,6,4,6,38,NULL,38);
INSERT INTO rings VALUES (306,167,4,34,16,'D',0,0,0,8,0,0,0,0,0,8,6,4,4,26,NULL,38);
INSERT INTO rings VALUES (307,65,42,46,7,'B',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,38);
INSERT INTO rings VALUES (308,56,137,46,7,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (309,51,36,46,7,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (310,202,56,46,7,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (311,203,12,46,7,'D',0,15,0,8,0,4,0,0,0,8,0,4,5,39,NULL,38);
INSERT INTO rings VALUES (312,204,12,46,7,'D',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,38);
INSERT INTO rings VALUES (313,83,1,34,0,'E',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,38);
INSERT INTO rings VALUES (314,167,4,35,16,'D',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,38);
INSERT INTO rings VALUES (315,6,5,35,16,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (316,179,123,35,16,'B',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,38);
INSERT INTO rings VALUES (317,180,4,35,16,'D',0,0,0,0,0,0,0,0,0,0,6,0,1,6,NULL,38);
INSERT INTO rings VALUES (318,181,124,35,16,'D',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,38);
INSERT INTO rings VALUES (319,17,5,35,16,'B',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,38);
INSERT INTO rings VALUES (320,167,4,35,16,'D',0,0,0,0,6,4,0,0,0,0,6,0,3,16,NULL,38);
INSERT INTO rings VALUES (321,205,16,53,1,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (322,22,138,53,0,'B',0,15,0,0,0,0,20,15,10,0,0,0,4,60,NULL,38);
INSERT INTO rings VALUES (323,206,139,53,1,'B',0,0,0,0,6,0,0,15,10,0,0,0,3,31,NULL,38);
INSERT INTO rings VALUES (324,207,140,53,1,'B',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,38);
INSERT INTO rings VALUES (325,208,141,53,1,'F',0,0,0,8,0,4,20,0,0,8,0,0,4,40,NULL,38);
INSERT INTO rings VALUES (326,178,142,53,0,'B',0,0,10,0,0,0,20,15,10,0,0,0,4,55,NULL,38);
INSERT INTO rings VALUES (327,209,143,53,1,'B',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,38);
INSERT INTO rings VALUES (328,210,144,53,1,'B',0,0,0,0,6,4,0,0,0,0,6,0,3,16,NULL,38);
INSERT INTO rings VALUES (329,211,139,53,1,'B',0,0,0,0,6,4,0,0,0,8,6,0,4,24,NULL,38);
INSERT INTO rings VALUES (330,26,145,53,0,'B',0,0,10,0,0,0,20,15,10,0,0,0,4,55,NULL,38);
INSERT INTO rings VALUES (331,212,141,53,1,'D',0,0,0,0,6,4,0,0,0,8,6,0,4,24,NULL,38);
INSERT INTO rings VALUES (332,213,16,53,1,'B',0,0,0,0,6,4,0,0,10,0,0,0,3,20,NULL,38);
INSERT INTO rings VALUES (333,214,146,53,1,'F',0,0,0,0,0,4,0,0,0,8,0,4,3,16,NULL,38);
INSERT INTO rings VALUES (334,89,147,54,0,'B',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,38);
INSERT INTO rings VALUES (335,88,148,54,0,'B',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,38);
INSERT INTO rings VALUES (336,90,149,54,0,'B',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,38);
INSERT INTO rings VALUES (337,82,123,54,0,'B',0,15,10,0,0,0,0,15,10,0,0,4,5,54,NULL,38);
INSERT INTO rings VALUES (338,129,24,54,10,'D',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,38);
INSERT INTO rings VALUES (339,27,18,53,0,'B',0,15,10,0,0,0,20,15,10,0,0,0,5,70,NULL,38);
INSERT INTO rings VALUES (340,47,32,51,0,'B',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (341,41,26,51,0,'B',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (342,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO rings VALUES (343,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,38);
INSERT INTO rings VALUES (344,22,139,55,0,'B',20,15,10,0,0,0,0,0,0,0,0,0,3,45,NULL,38);
INSERT INTO rings VALUES (345,211,139,55,0,'B',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,38);
INSERT INTO rings VALUES (346,208,141,55,0,'D',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,38);
INSERT INTO rings VALUES (347,206,139,55,0,'B',0,0,0,0,6,4,20,15,10,0,0,0,5,55,NULL,38);
INSERT INTO rings VALUES (348,216,150,55,1,'B',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (349,212,141,55,0,'B',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (350,47,32,55,0,'B',0,15,10,0,0,0,0,15,10,0,0,0,4,50,NULL,38);
INSERT INTO rings VALUES (351,43,32,55,0,'B',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (352,217,135,56,12,'B',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,38);
INSERT INTO rings VALUES (353,218,151,56,12,'D',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (354,182,115,56,0,'D',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,38);
INSERT INTO rings VALUES (355,201,135,56,0,'B',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,38);
INSERT INTO rings VALUES (356,200,136,56,0,'D',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (357,199,136,56,0,'D',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (358,219,125,56,12,'D',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (359,199,136,56,0,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (360,200,136,56,0,'B',0,0,0,8,0,4,0,0,10,0,0,4,4,26,NULL,38);
INSERT INTO rings VALUES (361,220,152,56,12,'D',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,38);
INSERT INTO rings VALUES (362,220,152,56,0,'B',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,38);
INSERT INTO rings VALUES (363,6,5,58,0,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (364,221,153,58,16,'D',0,15,10,0,0,0,0,0,10,0,0,4,4,39,NULL,38);
INSERT INTO rings VALUES (365,167,3,58,0,'D',0,15,10,0,0,4,0,0,0,0,0,4,4,33,NULL,38);
INSERT INTO rings VALUES (366,222,4,58,16,'D',0,0,0,8,0,4,0,0,0,0,0,0,2,12,NULL,38);
INSERT INTO rings VALUES (367,223,3,58,16,'D',0,0,10,0,0,4,0,0,0,0,0,4,3,18,NULL,38);
INSERT INTO rings VALUES (368,224,3,58,16,'F',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,38);
INSERT INTO rings VALUES (369,225,154,58,16,'F',0,0,10,0,6,4,0,0,0,8,0,0,4,28,NULL,38);
INSERT INTO rings VALUES (370,226,155,58,16,'F',0,15,10,0,0,4,0,0,0,0,6,4,5,39,NULL,38);
INSERT INTO rings VALUES (371,227,156,58,16,'D',0,15,10,0,0,4,0,0,0,0,0,4,4,33,NULL,38);
INSERT INTO rings VALUES (372,228,157,58,16,'B',0,0,0,0,6,0,0,0,0,0,0,4,2,10,NULL,38);
INSERT INTO rings VALUES (373,3,158,58,0,'B',0,15,10,0,0,0,0,0,0,0,6,0,3,31,NULL,38);
INSERT INTO rings VALUES (374,11,153,58,0,'B',0,0,10,0,6,0,0,0,0,0,6,4,4,26,NULL,38);
INSERT INTO rings VALUES (375,229,159,58,16,'B',0,0,0,0,6,0,0,0,0,0,6,0,2,12,NULL,38);
INSERT INTO rings VALUES (376,230,159,58,16,'F',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (377,231,153,58,16,'B',0,15,10,0,0,4,0,0,10,0,6,0,5,45,NULL,38);
INSERT INTO rings VALUES (378,15,159,58,0,'B',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,38);
INSERT INTO rings VALUES (379,232,156,58,16,'F',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (380,83,103,61,0,'A',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,25);
INSERT INTO rings VALUES (381,170,40,61,0,'B',20,0,10,0,0,0,20,15,10,0,0,0,5,75,NULL,25);
INSERT INTO rings VALUES (382,78,46,61,0,'C',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,25);
INSERT INTO rings VALUES (383,83,103,61,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,25);
INSERT INTO rings VALUES (384,78,46,59,0,'C',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,25);
INSERT INTO rings VALUES (385,25,99,59,0,'B',20,15,0,0,0,0,20,0,10,0,0,0,4,65,NULL,25);
INSERT INTO rings VALUES (386,200,118,59,0,'E',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,25);
INSERT INTO rings VALUES (387,168,110,34,0,'B',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,38);
INSERT INTO rings VALUES (388,170,114,34,0,'D',0,0,10,0,6,0,0,15,10,0,0,0,4,41,NULL,38);
INSERT INTO rings VALUES (389,171,73,34,0,'D',0,0,10,0,0,4,0,0,0,0,0,0,2,14,NULL,38);
INSERT INTO rings VALUES (390,172,115,34,0,'D',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,38);
INSERT INTO rings VALUES (391,136,160,34,0,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (392,78,110,34,0,'B',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (393,117,112,34,0,'B',0,0,0,8,6,4,20,0,0,0,6,0,5,44,NULL,38);
INSERT INTO rings VALUES (394,173,117,34,0,'D',0,0,10,0,0,4,0,0,0,0,0,4,3,18,NULL,38);
INSERT INTO rings VALUES (395,116,114,34,0,'D',0,0,0,0,6,0,0,0,0,0,0,4,2,10,NULL,38);
INSERT INTO rings VALUES (396,155,77,34,0,'B',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,38);
INSERT INTO rings VALUES (397,121,118,34,0,'D',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,38);
INSERT INTO rings VALUES (398,169,113,34,0,'B',0,15,0,0,0,4,20,0,10,0,0,0,4,49,NULL,38);
INSERT INTO rings VALUES (399,162,107,34,0,'D',20,0,10,0,0,0,0,15,0,0,0,0,3,45,NULL,38);
INSERT INTO rings VALUES (400,174,77,34,0,'D',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,38);
INSERT INTO rings VALUES (401,87,157,59,0,'B',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,25);
INSERT INTO rings VALUES (402,183,126,39,12,'B',0,15,0,0,0,0,0,15,10,0,0,4,4,44,NULL,38);
INSERT INTO rings VALUES (403,184,117,39,12,'D',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,38);
INSERT INTO rings VALUES (404,185,127,39,12,'B',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,38);
INSERT INTO rings VALUES (405,186,128,39,12,'B',0,0,0,0,0,0,0,15,10,0,0,4,3,29,NULL,38);
INSERT INTO rings VALUES (406,187,128,39,12,'D',0,0,0,0,0,0,0,15,10,0,0,4,3,29,NULL,38);
INSERT INTO rings VALUES (407,188,128,39,12,'B',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,38);
INSERT INTO rings VALUES (408,189,126,39,12,'B',0,0,0,0,0,4,0,0,10,0,6,4,4,24,NULL,38);
INSERT INTO rings VALUES (409,190,130,39,12,'F',0,0,10,0,0,0,0,0,0,8,0,4,3,22,NULL,38);
INSERT INTO rings VALUES (410,92,161,45,3,'D',0,0,10,0,0,4,0,0,10,0,6,4,5,34,NULL,38);
INSERT INTO rings VALUES (411,6,5,35,16,'B',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (412,233,123,35,16,'F',0,0,10,0,6,0,0,0,0,8,6,4,5,34,NULL,38);
INSERT INTO rings VALUES (413,234,124,35,16,'F',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (414,235,162,35,16,'F',0,0,0,0,0,4,0,0,0,8,6,4,4,22,NULL,38);
INSERT INTO rings VALUES (415,206,139,55,1,'B',0,0,10,0,0,0,0,0,10,0,6,4,4,30,NULL,38);
INSERT INTO rings VALUES (416,211,139,55,1,'B',0,0,0,0,6,0,0,0,0,0,6,4,3,16,NULL,38);
INSERT INTO rings VALUES (417,216,150,55,1,'B',0,0,0,0,0,0,0,0,0,8,0,4,2,12,NULL,38);
INSERT INTO rings VALUES (418,208,141,55,1,'D',0,0,0,0,0,4,0,0,0,8,6,4,4,22,NULL,38);
INSERT INTO rings VALUES (419,29,70,63,0,'D',0,0,0,8,0,0,0,0,0,0,0,4,2,12,NULL,38);
INSERT INTO rings VALUES (420,32,70,63,0,'D',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,38);
INSERT INTO rings VALUES (421,237,19,63,8,'F',20,15,10,0,0,0,0,0,10,0,0,4,5,59,NULL,38);
INSERT INTO rings VALUES (422,30,71,63,0,'B',0,0,0,0,0,4,0,0,0,8,0,0,2,12,NULL,38);
INSERT INTO rings VALUES (423,238,163,63,8,'D',0,0,0,8,0,0,0,0,0,0,6,0,2,14,NULL,38);
INSERT INTO rings VALUES (424,32,164,68,0,'D',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,38);
INSERT INTO rings VALUES (425,239,165,68,8,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (426,240,166,68,8,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (427,241,167,68,8,'B',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (428,58,40,68,0,'B',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,38);
INSERT INTO rings VALUES (429,30,19,68,0,'B',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,38);
INSERT INTO rings VALUES (430,242,19,68,8,'F',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,38);
INSERT INTO rings VALUES (431,101,59,40,0,'D',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,38);
INSERT INTO rings VALUES (432,102,168,40,3,'D',0,0,10,0,0,4,0,0,10,0,6,4,5,34,NULL,38);
INSERT INTO rings VALUES (433,93,58,40,3,'B',0,0,10,0,0,4,0,0,10,0,6,4,5,34,NULL,38);
INSERT INTO rings VALUES (434,6,5,58,16,'B',0,0,0,0,6,4,0,0,0,8,6,0,4,24,NULL,38);
INSERT INTO rings VALUES (435,167,3,58,16,'D',0,0,10,0,6,0,0,0,0,0,6,4,4,26,NULL,38);
INSERT INTO rings VALUES (436,12,88,58,16,'B',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (437,231,153,58,16,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (438,243,169,58,16,'D',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,38);
INSERT INTO rings VALUES (439,89,147,54,10,'B',0,0,0,0,0,0,0,0,0,0,6,4,2,10,NULL,38);
INSERT INTO rings VALUES (440,129,24,54,10,'D',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,38);
INSERT INTO rings VALUES (441,244,24,54,10,'D',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,38);
INSERT INTO rings VALUES (442,6,5,67,0,'B',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,38);
INSERT INTO rings VALUES (443,167,3,67,0,'B',0,0,10,0,6,4,0,0,0,0,6,0,4,26,NULL,38);
INSERT INTO rings VALUES (444,12,88,67,0,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (445,231,170,67,0,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (446,11,153,67,0,'B',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,38);
INSERT INTO rings VALUES (447,245,171,67,16,'B',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,38);
INSERT INTO rings VALUES (448,246,169,67,16,'D',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,38);
INSERT INTO rings VALUES (449,247,172,67,16,'D',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,38);
INSERT INTO rings VALUES (450,248,155,67,16,'F',0,0,0,8,6,4,0,15,0,0,0,4,5,37,NULL,38);
INSERT INTO rings VALUES (451,15,173,67,16,'B',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,38);
INSERT INTO rings VALUES (452,225,154,67,16,'F',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (453,145,96,67,16,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (454,250,174,67,16,'D',0,15,0,8,0,4,0,0,0,0,6,4,5,37,NULL,38);
INSERT INTO rings VALUES (455,251,175,67,16,'D',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (456,252,176,67,16,'D',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,38);
INSERT INTO rings VALUES (457,253,177,67,16,'D',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,38);
INSERT INTO rings VALUES (458,116,114,57,0,'B',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,38);
INSERT INTO rings VALUES (459,254,178,67,16,'D',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (460,255,179,67,16,'D',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,38);
INSERT INTO rings VALUES (461,256,180,67,16,'B',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (462,257,181,67,16,'D',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,38);
INSERT INTO rings VALUES (463,258,182,67,16,'D',0,0,0,0,0,4,0,0,0,8,6,4,4,22,NULL,38);
INSERT INTO rings VALUES (464,167,3,67,16,'D',0,0,10,0,6,4,0,0,0,0,6,0,4,26,NULL,38);
INSERT INTO rings VALUES (465,15,173,62,0,'B',0,0,10,0,6,4,0,0,0,8,6,4,6,38,NULL,38);
INSERT INTO rings VALUES (466,12,88,62,0,'B',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,38);
INSERT INTO rings VALUES (467,11,88,62,0,'B',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,38);
INSERT INTO rings VALUES (468,262,88,62,16,'D',0,15,10,0,0,0,0,0,0,0,0,4,3,29,NULL,38);
INSERT INTO rings VALUES (469,263,184,69,5,'D',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,38);
INSERT INTO rings VALUES (470,264,185,69,13,'D',0,15,10,0,0,4,0,0,0,8,0,4,5,41,NULL,38);
INSERT INTO rings VALUES (471,210,144,70,1,'B',0,0,0,8,0,4,0,0,0,8,0,4,4,24,NULL,38);
INSERT INTO rings VALUES (472,265,186,70,1,'D',0,0,10,0,6,0,0,0,10,0,6,4,5,36,NULL,38);
INSERT INTO rings VALUES (473,207,187,70,0,'B',0,0,0,8,6,0,0,0,0,8,6,4,5,32,NULL,38);
INSERT INTO rings VALUES (474,208,188,70,0,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (475,266,189,70,1,'B',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,38);
INSERT INTO rings VALUES (476,209,143,70,1,'B',0,15,0,0,0,0,0,0,10,0,0,0,2,25,NULL,38);
INSERT INTO rings VALUES (477,267,190,70,1,'B',0,0,0,0,0,4,0,0,0,8,6,4,4,22,NULL,38);
INSERT INTO rings VALUES (478,22,16,70,1,'B',20,15,10,0,0,0,0,0,10,0,0,0,4,55,NULL,38);
INSERT INTO rings VALUES (479,211,139,72,0,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,38);
INSERT INTO rings VALUES (480,22,138,72,0,'B',20,0,10,0,0,0,0,0,10,0,0,0,3,40,NULL,38);
INSERT INTO rings VALUES (481,205,16,72,0,'B',0,0,10,0,6,4,0,0,0,8,6,4,6,38,NULL,38);
INSERT INTO rings VALUES (482,178,138,72,0,'B',0,15,0,0,0,0,0,0,10,0,0,0,2,25,NULL,38);
INSERT INTO rings VALUES (483,206,174,72,0,'B',0,15,0,8,0,0,20,0,0,0,0,0,3,43,NULL,38);
INSERT INTO rings VALUES (484,208,25,72,0,'B',0,0,0,8,0,0,0,0,0,8,0,0,2,16,NULL,38);
INSERT INTO rings VALUES (485,210,144,72,0,'B',0,0,10,0,0,0,0,0,0,0,0,4,2,14,NULL,38);
INSERT INTO rings VALUES (486,209,143,72,0,'B',20,0,0,0,0,0,0,0,0,0,0,0,1,20,NULL,38);
INSERT INTO rings VALUES (487,40,25,72,0,'B',0,0,10,0,0,0,0,0,0,0,0,4,2,14,NULL,38);
INSERT INTO rings VALUES (488,207,187,72,0,'B',0,0,0,8,0,0,0,0,0,0,6,0,2,14,NULL,38);
INSERT INTO rings VALUES (489,95,9,43,0,'B',0,0,0,8,0,4,0,0,0,8,0,4,4,24,NULL,38);
INSERT INTO rings VALUES (490,95,9,43,0,'B',0,0,0,8,0,4,0,0,0,8,0,4,4,24,NULL,38);
INSERT INTO rings VALUES (491,92,161,43,0,'D',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,38);
INSERT INTO rings VALUES (492,95,9,43,0,'B',0,0,0,8,0,4,0,0,0,8,0,4,4,24,NULL,38);
INSERT INTO rings VALUES (493,268,10,43,3,'B',0,0,0,8,0,0,0,0,0,8,6,0,3,22,NULL,38);
INSERT INTO rings VALUES (494,6,5,71,0,'B',0,15,0,8,0,4,0,0,0,0,0,4,4,31,NULL,38);
INSERT INTO rings VALUES (495,167,3,71,0,'B',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,38);
INSERT INTO rings VALUES (496,226,3,71,0,'B',0,0,10,0,0,4,0,0,10,0,6,4,5,34,NULL,38);
INSERT INTO rings VALUES (497,269,5,71,16,'F',0,0,10,0,0,4,0,0,10,0,6,4,5,34,NULL,38);
INSERT INTO rings VALUES (498,270,3,71,16,'D',0,0,0,8,0,0,0,0,0,0,0,4,2,12,NULL,38);
INSERT INTO rings VALUES (499,225,154,71,0,'F',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,38);
INSERT INTO rings VALUES (500,271,191,71,16,'F',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,38);
INSERT INTO rings VALUES (501,167,3,71,0,'D',0,15,0,8,0,4,0,0,0,0,0,4,4,31,NULL,38);
INSERT INTO rings VALUES (502,167,3,71,0,'D',0,15,0,8,0,4,0,0,0,0,0,4,4,31,NULL,38);
INSERT INTO rings VALUES (503,272,192,71,16,'D',0,0,10,0,6,4,0,0,0,0,0,4,4,24,NULL,38);
INSERT INTO rings VALUES (504,273,193,71,16,'B',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,38);
INSERT INTO rings VALUES (505,12,194,71,0,'D',0,15,10,0,0,4,0,0,10,0,0,4,5,43,NULL,38);
INSERT INTO rings VALUES (506,11,153,71,0,'B',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,38);
INSERT INTO rings VALUES (507,274,195,71,16,'B',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,38);
INSERT INTO rings VALUES (508,3,196,71,0,'B',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,38);
INSERT INTO rings VALUES (509,6,5,71,0,'B',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,38);
INSERT INTO rings VALUES (510,233,3,71,0,'D',0,0,0,8,0,4,0,0,0,0,0,0,2,12,NULL,38);
INSERT INTO rings VALUES (511,275,3,71,16,'D',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,38);
INSERT INTO rings VALUES (512,253,177,71,0,'B',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,38);
INSERT INTO rings VALUES (513,251,175,71,0,'D',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,38);
INSERT INTO rings VALUES (514,17,197,71,0,'D',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,38);
INSERT INTO rings VALUES (515,226,4,71,16,'D',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,38);
INSERT INTO rings VALUES (516,274,195,71,0,'B',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,38);
INSERT INTO rings VALUES (517,12,194,71,0,'D',0,15,10,0,0,4,0,0,10,0,0,4,5,43,NULL,38);
INSERT INTO rings VALUES (518,206,198,72,0,'D',20,15,0,0,0,0,0,0,0,8,0,0,3,43,NULL,38);
INSERT INTO rings VALUES (519,83,103,73,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,39);
INSERT INTO rings VALUES (520,114,74,74,0,'D',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,39);
INSERT INTO rings VALUES (521,114,74,74,0,'C',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,39);
INSERT INTO rings VALUES (522,114,74,74,0,'B',0,0,0,8,6,4,0,0,10,0,6,0,5,34,NULL,39);
INSERT INTO rings VALUES (523,116,199,74,0,'D',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,39);
INSERT INTO rings VALUES (524,116,74,74,0,'D',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,39);
INSERT INTO rings VALUES (525,171,73,74,0,'D',0,0,10,0,0,4,0,15,10,0,0,0,4,39,NULL,39);
INSERT INTO rings VALUES (526,171,73,74,0,'B',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,39);
INSERT INTO rings VALUES (527,117,112,74,0,'D',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,39);
INSERT INTO rings VALUES (528,117,112,74,0,'B',0,0,0,8,6,0,0,0,0,0,6,4,4,24,NULL,39);
INSERT INTO rings VALUES (529,276,112,74,12,'D',0,0,10,0,0,4,0,0,0,0,0,4,3,18,NULL,39);
INSERT INTO rings VALUES (530,277,112,74,10,'D',0,0,0,0,6,4,0,0,0,8,0,4,4,22,NULL,39);
INSERT INTO rings VALUES (531,174,199,74,0,'D',0,0,10,0,0,4,0,15,0,0,0,4,4,33,NULL,39);
INSERT INTO rings VALUES (532,278,112,74,12,'F',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,39);
INSERT INTO rings VALUES (533,251,175,76,0,'C',0,0,0,0,0,0,0,0,0,8,0,4,2,12,NULL,39);
INSERT INTO rings VALUES (534,279,177,76,16,'C',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,39);
INSERT INTO rings VALUES (535,17,203,76,0,'C',0,15,0,8,0,4,0,15,0,8,0,0,5,50,NULL,39);
INSERT INTO rings VALUES (536,281,177,76,16,'C',0,15,0,0,0,4,0,0,0,0,0,4,3,23,NULL,39);
INSERT INTO rings VALUES (537,116,205,78,12,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,39);
INSERT INTO rings VALUES (538,171,73,78,12,'C',0,15,10,0,0,4,0,15,10,0,0,0,5,54,NULL,39);
INSERT INTO rings VALUES (539,174,73,78,12,'C',0,0,10,0,0,0,0,15,10,0,0,0,3,35,NULL,39);
INSERT INTO rings VALUES (540,25,27,75,0,'A',0,15,0,0,0,0,0,15,10,0,0,0,3,40,NULL,39);
INSERT INTO rings VALUES (541,42,27,75,0,'A',0,15,10,0,0,0,0,15,10,0,0,0,4,50,NULL,39);
INSERT INTO rings VALUES (542,284,96,79,16,'C',0,0,10,0,6,4,0,0,0,0,0,0,3,20,NULL,39);
INSERT INTO rings VALUES (543,11,96,79,0,'C',0,0,0,0,6,4,0,0,10,0,0,0,3,20,NULL,39);
INSERT INTO rings VALUES (544,285,96,79,16,'C',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,39);
INSERT INTO rings VALUES (545,15,173,79,0,'A',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,39);
INSERT INTO rings VALUES (546,286,206,79,16,'A',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,39);
INSERT INTO rings VALUES (547,191,207,80,0,'C',0,0,0,0,6,4,0,0,10,0,0,4,4,24,NULL,39);
INSERT INTO rings VALUES (548,287,208,80,13,'C',0,0,10,0,0,4,0,15,10,0,0,4,5,43,NULL,39);
INSERT INTO rings VALUES (549,288,209,80,13,'C',0,0,0,0,6,4,0,0,0,8,0,4,4,22,NULL,39);
INSERT INTO rings VALUES (550,289,210,80,13,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,39);
INSERT INTO rings VALUES (551,290,208,80,13,'C',0,0,0,8,6,4,0,0,10,0,0,4,5,32,NULL,39);
INSERT INTO rings VALUES (552,232,96,79,0,'F',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,39);
INSERT INTO rings VALUES (553,98,64,81,0,'B',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,39);
INSERT INTO rings VALUES (554,27,18,82,1,'A',0,15,10,0,0,0,0,15,10,0,0,0,4,50,NULL,39);
INSERT INTO rings VALUES (555,205,16,82,0,'A',0,0,0,0,0,4,0,0,10,0,0,0,2,14,NULL,39);
INSERT INTO rings VALUES (556,26,145,82,0,'A',0,0,0,0,6,0,20,15,10,0,0,0,4,51,NULL,39);
INSERT INTO rings VALUES (557,83,103,84,0,'D',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,39);
INSERT INTO rings VALUES (558,78,195,84,0,'A',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,39);
INSERT INTO rings VALUES (559,116,205,83,0,'C',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,39);
INSERT INTO rings VALUES (560,291,211,83,12,'D',0,0,0,0,0,4,0,0,10,0,6,4,4,24,NULL,39);
INSERT INTO rings VALUES (561,292,211,83,12,'D',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,39);
INSERT INTO rings VALUES (562,293,212,83,12,'F',0,0,0,0,0,4,0,0,10,0,0,4,3,18,NULL,39);
INSERT INTO rings VALUES (563,294,213,83,12,'D',0,0,10,0,0,4,0,0,0,0,0,0,2,14,NULL,39);
INSERT INTO rings VALUES (564,117,112,83,0,'B',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,39);
INSERT INTO rings VALUES (565,117,112,83,0,'A',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,39);
INSERT INTO rings VALUES (566,276,213,83,0,'C',0,0,10,0,0,4,0,15,10,0,0,4,5,43,NULL,39);
INSERT INTO rings VALUES (567,291,212,83,0,'C',0,0,10,0,6,4,0,15,0,8,0,0,5,43,NULL,39);
INSERT INTO rings VALUES (568,25,40,84,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,39);
INSERT INTO rings VALUES (569,292,211,83,12,'D',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,39);
INSERT INTO rings VALUES (570,293,212,83,12,'D',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,39);
INSERT INTO rings VALUES (571,295,214,85,1,'C',0,15,10,0,0,4,0,15,0,0,0,0,4,44,NULL,39);
INSERT INTO rings VALUES (572,296,211,85,1,'A',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,39);
INSERT INTO rings VALUES (573,297,27,85,1,'A',0,0,10,0,0,4,0,15,10,0,0,0,4,39,NULL,39);
INSERT INTO rings VALUES (574,44,215,85,0,'E',0,15,10,0,0,0,0,15,10,0,0,0,4,50,NULL,39);
INSERT INTO rings VALUES (575,42,27,85,0,'A',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,39);
INSERT INTO rings VALUES (576,191,207,91,0,'C',0,0,10,0,6,4,0,15,10,0,0,4,6,49,NULL,39);
INSERT INTO rings VALUES (577,298,216,91,13,'E',0,0,0,0,6,4,0,15,0,8,0,0,4,33,NULL,39);
INSERT INTO rings VALUES (578,289,210,91,0,'C',0,0,0,8,6,4,0,0,10,0,6,0,5,34,NULL,39);
INSERT INTO rings VALUES (579,299,217,91,13,'C',0,0,0,0,6,4,0,0,10,0,0,0,3,20,NULL,39);
INSERT INTO rings VALUES (580,98,64,81,0,'D',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,39);
INSERT INTO rings VALUES (581,103,218,81,0,'B',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,39);
INSERT INTO rings VALUES (582,301,10,81,3,'D',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,39);
INSERT INTO rings VALUES (583,302,64,81,3,'D',0,0,10,0,6,0,0,0,0,0,0,0,2,16,NULL,39);
INSERT INTO rings VALUES (584,303,219,81,3,'B',0,0,0,0,6,4,0,0,10,0,6,0,4,26,NULL,39);
INSERT INTO rings VALUES (585,304,220,81,3,'D',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,39);
INSERT INTO rings VALUES (586,305,218,81,3,'D',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,39);
INSERT INTO rings VALUES (587,95,9,81,0,'B',0,0,0,0,0,4,0,0,0,8,0,0,2,12,NULL,39);
INSERT INTO rings VALUES (588,306,219,81,3,'B',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,39);
INSERT INTO rings VALUES (589,307,221,81,1,'B',0,15,0,8,0,0,0,15,0,0,0,0,3,38,NULL,39);
INSERT INTO rings VALUES (590,25,27,93,0,'A',0,15,10,0,0,0,0,15,0,0,0,0,3,40,NULL,39);
INSERT INTO rings VALUES (591,42,27,93,0,'A',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,39);
INSERT INTO rings VALUES (592,42,90,90,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,39);
INSERT INTO rings VALUES (593,308,211,90,1,'A',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,39);
INSERT INTO rings VALUES (594,309,222,94,16,'C',0,0,0,0,6,4,0,15,0,0,0,4,4,29,NULL,39);
INSERT INTO rings VALUES (595,310,223,94,16,'E',0,0,0,0,6,4,0,15,0,0,0,4,4,29,NULL,39);
INSERT INTO rings VALUES (596,11,153,94,0,'A',0,0,10,0,6,0,0,0,0,0,6,4,4,26,NULL,39);
INSERT INTO rings VALUES (597,12,88,94,0,'A',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,39);
INSERT INTO rings VALUES (598,226,154,94,0,'C',0,0,10,0,6,4,0,0,0,0,0,0,3,20,NULL,39);
INSERT INTO rings VALUES (599,274,170,94,0,'A',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,39);
INSERT INTO rings VALUES (600,311,224,94,16,'C',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,39);
INSERT INTO rings VALUES (601,286,206,94,0,'A',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,39);
INSERT INTO rings VALUES (602,15,173,94,0,'A',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,39);
INSERT INTO rings VALUES (603,312,196,94,16,'C',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,39);
INSERT INTO rings VALUES (604,248,225,94,0,'C',0,0,10,0,6,4,0,0,0,0,0,4,4,24,NULL,39);
INSERT INTO rings VALUES (605,206,226,92,0,'A',0,0,0,0,0,4,20,0,0,0,0,0,2,24,NULL,39);
INSERT INTO rings VALUES (606,24,25,92,0,'A',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,39);
INSERT INTO rings VALUES (607,205,16,92,0,'A',0,0,10,0,6,4,0,0,10,0,0,0,4,30,NULL,39);
INSERT INTO rings VALUES (608,22,138,92,0,'A',0,15,10,0,0,0,0,0,10,0,0,0,3,35,NULL,39);
INSERT INTO rings VALUES (609,27,18,92,0,'A',0,0,10,0,6,0,0,15,10,0,0,0,4,41,NULL,39);
INSERT INTO rings VALUES (610,26,145,92,0,'A',20,0,0,8,0,0,0,0,10,0,0,0,3,38,NULL,39);
INSERT INTO rings VALUES (611,313,227,96,1,'C',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,39);
INSERT INTO rings VALUES (612,210,228,96,0,'A',20,0,10,0,0,0,0,0,0,8,6,0,4,44,NULL,39);
INSERT INTO rings VALUES (613,206,138,96,0,'A',0,0,10,0,0,0,0,0,0,0,6,0,2,16,NULL,39);
INSERT INTO rings VALUES (614,206,138,96,0,'A',20,15,10,0,0,0,0,0,10,0,6,0,5,61,NULL,39);
INSERT INTO rings VALUES (615,314,229,96,1,'C',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,39);
INSERT INTO rings VALUES (616,315,227,96,1,'E',0,15,10,0,0,0,0,0,10,0,0,4,4,39,NULL,39);
INSERT INTO rings VALUES (617,316,230,96,1,'C',0,0,10,0,0,0,0,0,0,0,0,0,1,10,NULL,39);
INSERT INTO rings VALUES (618,314,229,96,0,'A',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,39);
INSERT INTO rings VALUES (619,317,190,96,1,'C',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,39);
INSERT INTO rings VALUES (620,265,186,96,0,'C',20,15,10,0,0,0,0,0,10,0,6,4,6,65,NULL,39);
INSERT INTO rings VALUES (621,209,231,96,0,'A',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,39);
INSERT INTO rings VALUES (622,207,140,96,0,'A',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,39);
INSERT INTO rings VALUES (623,208,138,96,0,'A',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,39);
INSERT INTO rings VALUES (624,26,226,96,0,'A',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,39);
INSERT INTO rings VALUES (625,205,226,96,0,'A',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,39);
INSERT INTO rings VALUES (626,26,226,96,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,39);
INSERT INTO rings VALUES (627,314,229,96,0,'C',0,0,10,0,6,4,0,0,0,0,0,0,3,20,NULL,39);
INSERT INTO rings VALUES (628,314,229,96,0,'C',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,39);
INSERT INTO rings VALUES (629,205,226,96,0,'A',0,0,0,0,0,4,0,0,0,8,0,0,2,12,NULL,39);
INSERT INTO rings VALUES (630,26,226,96,0,'A',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,39);
INSERT INTO rings VALUES (631,210,52,96,0,'A',20,0,10,0,0,0,0,0,0,0,0,0,2,30,NULL,39);
INSERT INTO rings VALUES (632,210,228,96,0,'A',20,0,10,0,0,0,0,0,0,0,0,0,2,30,NULL,39);
INSERT INTO rings VALUES (633,210,228,96,0,'A',0,0,10,0,0,0,0,0,0,0,6,0,2,16,NULL,39);
INSERT INTO rings VALUES (634,167,3,95,0,'C',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,39);
INSERT INTO rings VALUES (635,222,5,95,0,'C',0,0,0,0,0,4,0,0,10,0,0,0,2,14,NULL,39);
INSERT INTO rings VALUES (636,318,232,95,16,'C',0,0,0,0,6,4,0,0,0,0,6,0,3,16,NULL,39);
INSERT INTO rings VALUES (637,12,194,95,0,'C',0,15,10,0,0,4,0,0,10,0,0,4,5,43,NULL,39);
INSERT INTO rings VALUES (638,319,233,95,16,'C',0,15,10,0,0,4,0,0,0,0,0,4,4,33,NULL,39);
INSERT INTO rings VALUES (639,11,88,95,0,'A',0,0,0,0,0,4,0,0,0,0,6,0,2,10,NULL,39);
INSERT INTO rings VALUES (640,12,88,95,0,'A',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,39);
INSERT INTO rings VALUES (641,320,5,95,16,'A',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,39);
INSERT INTO rings VALUES (642,27,18,101,0,'A',20,15,10,0,0,0,20,0,10,0,0,0,5,75,NULL,39);
INSERT INTO rings VALUES (643,27,18,101,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,39);
INSERT INTO rings VALUES (644,205,16,101,0,'A',20,15,0,0,0,0,0,15,0,0,0,0,3,50,NULL,39);
INSERT INTO rings VALUES (645,26,145,101,0,'A',0,15,0,8,0,0,0,15,10,0,0,0,4,48,NULL,39);
INSERT INTO rings VALUES (646,22,145,101,0,'A',0,0,10,0,0,0,0,15,10,0,0,0,3,35,NULL,39);
INSERT INTO rings VALUES (647,275,235,100,0,'C',0,0,0,0,6,4,0,0,10,0,6,4,5,30,NULL,39);
INSERT INTO rings VALUES (648,6,5,100,0,'A',0,0,0,0,6,0,0,0,0,0,0,4,2,10,NULL,39);
INSERT INTO rings VALUES (649,167,3,100,0,'C',0,0,0,0,0,4,0,0,10,0,6,4,4,24,NULL,39);
INSERT INTO rings VALUES (650,11,153,100,0,'A',0,0,0,0,0,4,0,0,10,0,0,4,3,18,NULL,39);
INSERT INTO rings VALUES (651,11,153,100,0,'A',0,0,0,0,0,4,0,0,10,0,0,4,3,18,NULL,39);
INSERT INTO rings VALUES (652,279,177,100,0,'C',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,39);
INSERT INTO rings VALUES (653,251,175,100,0,'C',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,39);
INSERT INTO rings VALUES (654,248,196,100,0,'C',0,0,10,0,0,4,0,0,0,0,6,4,4,24,NULL,39);
INSERT INTO rings VALUES (655,179,124,100,0,'A',0,0,0,0,6,4,0,0,0,8,0,4,4,22,NULL,39);
INSERT INTO rings VALUES (656,321,159,100,16,'E',0,0,0,8,6,4,0,15,10,0,0,4,6,47,NULL,39);
INSERT INTO rings VALUES (657,322,236,102,13,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,40);
INSERT INTO rings VALUES (658,322,236,102,0,'B',20,15,10,0,0,0,20,15,0,0,0,0,5,80,NULL,40);
INSERT INTO rings VALUES (659,6,5,103,0,'A',0,0,0,0,6,4,0,0,0,8,0,4,4,22,NULL,40);
INSERT INTO rings VALUES (660,312,235,103,0,'C',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,40);
INSERT INTO rings VALUES (661,275,235,103,0,'C',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,40);
INSERT INTO rings VALUES (662,279,177,103,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (663,281,213,103,0,'A',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,40);
INSERT INTO rings VALUES (664,17,234,103,0,'A',0,0,0,0,6,4,0,0,0,8,0,0,3,18,NULL,40);
INSERT INTO rings VALUES (665,323,3,103,16,'C',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,40);
INSERT INTO rings VALUES (666,324,175,103,16,'E',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,40);
INSERT INTO rings VALUES (667,325,237,103,16,'C',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,40);
INSERT INTO rings VALUES (668,274,234,103,0,'C',0,0,0,0,6,4,0,0,10,0,6,4,5,30,NULL,40);
INSERT INTO rings VALUES (669,116,72,104,0,'B',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,40);
INSERT INTO rings VALUES (670,116,72,104,0,'A',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,40);
INSERT INTO rings VALUES (671,327,238,104,12,'F',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,40);
INSERT INTO rings VALUES (672,328,72,104,12,'C',0,15,10,0,0,4,0,0,0,0,0,4,4,33,NULL,40);
INSERT INTO rings VALUES (673,329,72,104,12,'C',0,15,0,0,0,4,0,0,0,0,0,4,3,23,NULL,40);
INSERT INTO rings VALUES (674,117,72,104,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (675,167,3,105,0,'C',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,40);
INSERT INTO rings VALUES (676,312,239,105,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (677,312,240,105,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (678,6,5,105,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (679,7,6,105,0,'A',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,40);
INSERT INTO rings VALUES (680,279,177,105,0,'A',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,40);
INSERT INTO rings VALUES (681,42,239,105,0,'A',0,15,10,0,0,0,0,15,10,0,0,0,4,50,NULL,40);
INSERT INTO rings VALUES (682,11,241,105,0,'A',0,15,10,0,0,0,0,0,0,0,0,0,2,25,NULL,40);
INSERT INTO rings VALUES (683,17,234,106,0,'A',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,40);
INSERT INTO rings VALUES (684,6,5,106,0,'A',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,40);
INSERT INTO rings VALUES (685,274,3,106,0,'C',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,40);
INSERT INTO rings VALUES (686,330,3,106,16,'C',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,40);
INSERT INTO rings VALUES (687,275,235,106,0,'C',0,0,0,0,6,4,0,0,0,8,0,4,4,22,NULL,40);
INSERT INTO rings VALUES (688,167,3,106,0,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (689,331,235,106,16,'E',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (690,331,235,106,0,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (691,205,16,108,1,'A',0,15,10,0,0,0,0,0,0,0,0,0,2,25,NULL,40);
INSERT INTO rings VALUES (692,20,242,108,1,'C',0,0,0,0,6,4,0,0,10,0,6,4,5,30,NULL,40);
INSERT INTO rings VALUES (693,207,140,108,1,'A',0,0,10,0,0,0,20,0,10,0,0,0,3,40,NULL,40);
INSERT INTO rings VALUES (694,210,144,108,1,'A',0,0,10,0,0,0,20,0,10,0,0,0,3,40,NULL,40);
INSERT INTO rings VALUES (695,322,236,102,0,'F',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,40);
INSERT INTO rings VALUES (696,320,177,105,16,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (697,42,27,109,0,'A',0,15,10,0,0,0,20,15,10,0,0,0,5,70,NULL,40);
INSERT INTO rings VALUES (698,332,243,109,1,'A',0,0,0,0,6,4,0,15,10,0,0,4,5,39,NULL,40);
INSERT INTO rings VALUES (699,333,244,109,1,'E',0,15,10,0,0,0,0,15,10,0,0,0,4,50,NULL,40);
INSERT INTO rings VALUES (700,206,245,108,1,'C',20,15,10,0,0,0,0,0,0,0,0,4,4,49,NULL,40);
INSERT INTO rings VALUES (701,209,246,108,0,'A',20,15,10,0,0,0,0,0,10,0,0,0,4,55,NULL,40);
INSERT INTO rings VALUES (702,26,145,108,1,'A',0,15,0,0,0,0,0,15,10,0,0,0,3,40,NULL,40);
INSERT INTO rings VALUES (703,208,144,108,1,'A',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,40);
INSERT INTO rings VALUES (704,313,227,108,1,'C',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,40);
INSERT INTO rings VALUES (705,22,247,108,0,'A',0,15,10,0,0,0,0,0,10,0,0,0,3,35,NULL,40);
INSERT INTO rings VALUES (706,226,240,107,0,'C',0,0,0,8,6,0,0,0,0,0,0,0,2,14,NULL,40);
INSERT INTO rings VALUES (707,15,173,107,0,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (708,334,248,107,16,'E',0,0,0,8,6,4,0,15,0,0,0,0,4,33,NULL,40);
INSERT INTO rings VALUES (709,335,249,107,16,'E',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,40);
INSERT INTO rings VALUES (710,336,228,108,1,'A',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,40);
INSERT INTO rings VALUES (711,334,248,110,0,'E',0,0,10,0,0,4,0,0,10,0,0,0,3,24,NULL,40);
INSERT INTO rings VALUES (712,335,249,110,0,'E',0,15,10,0,0,0,0,0,0,0,0,0,2,25,NULL,40);
INSERT INTO rings VALUES (713,337,250,111,16,'C',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,40);
INSERT INTO rings VALUES (714,338,250,111,16,'E',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,40);
INSERT INTO rings VALUES (715,248,196,111,0,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (716,11,153,111,0,'A',0,15,0,0,0,0,0,0,0,0,0,0,1,15,NULL,40);
INSERT INTO rings VALUES (717,339,251,111,16,'C',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,40);
INSERT INTO rings VALUES (718,340,159,111,16,'E',0,0,0,0,0,4,0,0,10,0,0,4,3,18,NULL,40);
INSERT INTO rings VALUES (719,341,239,111,16,'E',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,40);
INSERT INTO rings VALUES (720,286,252,111,0,'C',0,0,0,0,6,0,0,0,0,0,0,0,1,6,NULL,40);
INSERT INTO rings VALUES (721,342,173,111,16,'C',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,40);
INSERT INTO rings VALUES (722,259,241,111,0,'C',0,15,10,0,0,4,0,15,0,0,0,0,4,44,NULL,40);
INSERT INTO rings VALUES (723,226,239,111,0,'C',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,40);
INSERT INTO rings VALUES (724,343,145,112,1,'B',0,0,0,8,0,4,0,0,0,8,6,4,5,30,NULL,40);
INSERT INTO rings VALUES (725,343,145,112,1,'B',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (726,344,16,112,1,'B',0,0,10,0,0,4,0,0,0,0,6,4,4,24,NULL,40);
INSERT INTO rings VALUES (727,205,145,112,1,'B',0,0,10,0,6,0,0,0,0,0,0,0,2,16,NULL,40);
INSERT INTO rings VALUES (728,345,16,112,1,'B',0,0,0,0,6,4,0,0,0,8,0,0,3,18,NULL,40);
INSERT INTO rings VALUES (729,346,145,112,1,'B',0,0,0,0,6,0,0,0,0,0,0,0,1,6,NULL,40);
INSERT INTO rings VALUES (730,347,16,112,1,'B',0,0,0,0,6,0,0,0,0,0,0,0,1,6,NULL,40);
INSERT INTO rings VALUES (731,348,16,112,1,'D',0,0,10,0,6,4,0,0,0,0,0,4,4,24,NULL,40);
INSERT INTO rings VALUES (732,345,16,112,0,'D',0,0,0,0,6,0,0,0,0,8,6,0,3,20,NULL,40);
INSERT INTO rings VALUES (733,344,16,112,1,'D',0,0,0,0,0,4,0,0,10,0,6,4,4,24,NULL,40);
INSERT INTO rings VALUES (734,207,253,113,1,'A',0,15,10,0,0,0,0,0,10,0,0,0,3,35,NULL,40);
INSERT INTO rings VALUES (735,209,246,113,1,'A',0,15,10,0,0,0,0,0,10,0,0,0,3,35,NULL,40);
INSERT INTO rings VALUES (736,209,246,113,1,'A',0,15,10,0,0,0,0,0,10,0,0,0,3,35,NULL,40);
INSERT INTO rings VALUES (737,313,254,113,1,'C',0,15,10,0,0,4,0,15,10,0,0,4,6,58,NULL,40);
INSERT INTO rings VALUES (738,313,254,113,1,'C',0,15,0,0,0,4,0,0,10,0,0,4,4,33,NULL,40);
INSERT INTO rings VALUES (739,336,255,113,1,'A',20,0,0,0,0,0,0,15,10,0,0,0,3,45,NULL,40);
INSERT INTO rings VALUES (740,336,255,113,1,'A',0,15,10,0,0,0,0,0,10,0,0,0,3,35,NULL,40);
INSERT INTO rings VALUES (741,265,253,113,1,'A',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,40);
INSERT INTO rings VALUES (742,265,253,113,1,'A',0,0,10,0,0,4,0,0,0,0,0,4,3,18,NULL,40);
INSERT INTO rings VALUES (743,207,253,113,1,'A',0,15,0,0,0,4,0,0,10,0,0,0,3,29,NULL,40);
INSERT INTO rings VALUES (744,349,256,113,1,'C',0,15,10,0,0,0,0,15,10,0,0,0,4,50,NULL,40);
INSERT INTO rings VALUES (745,350,257,113,1,'A',0,0,0,0,0,4,0,0,0,8,0,0,2,12,NULL,40);
INSERT INTO rings VALUES (746,350,257,113,1,'A',0,0,0,0,0,4,0,0,0,0,6,0,2,10,NULL,40);
INSERT INTO rings VALUES (747,206,226,113,1,'A',20,0,0,0,0,0,0,0,0,0,0,0,1,20,NULL,40);
INSERT INTO rings VALUES (748,206,226,113,1,'A',0,15,0,0,0,0,0,0,10,0,0,0,2,25,NULL,40);
INSERT INTO rings VALUES (749,266,245,113,1,'C',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,40);
INSERT INTO rings VALUES (750,210,259,113,1,'A',0,15,0,0,0,0,0,15,0,8,0,0,3,38,NULL,40);
INSERT INTO rings VALUES (751,317,258,113,1,'C',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,40);
INSERT INTO rings VALUES (752,336,228,114,1,'A',20,0,0,0,0,0,20,0,10,0,0,0,3,50,NULL,40);
INSERT INTO rings VALUES (753,207,140,114,1,'A',0,0,10,0,0,0,0,0,0,0,0,0,1,10,NULL,40);
INSERT INTO rings VALUES (754,210,144,114,1,'A',0,15,10,0,0,0,0,0,0,0,0,0,2,25,NULL,40);
INSERT INTO rings VALUES (755,336,228,114,1,'A',0,0,0,0,0,0,0,15,10,0,0,0,2,25,NULL,40);
INSERT INTO rings VALUES (756,209,246,114,1,'A',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,40);
INSERT INTO rings VALUES (757,207,140,114,1,'A',0,0,0,0,0,0,0,15,10,0,0,0,2,25,NULL,40);
INSERT INTO rings VALUES (758,210,144,114,1,'A',0,0,0,0,0,0,0,15,10,0,0,0,2,25,NULL,40);
INSERT INTO rings VALUES (759,322,236,117,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,41);
INSERT INTO rings VALUES (760,322,236,117,0,'C',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,41);
INSERT INTO rings VALUES (761,42,27,118,0,'A',20,15,0,0,0,0,20,0,10,0,0,0,4,65,NULL,41);
INSERT INTO rings VALUES (762,351,260,118,1,'A',0,0,0,0,6,4,0,0,0,0,6,0,3,16,NULL,41);
INSERT INTO rings VALUES (763,6,5,119,0,'A',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,41);
INSERT INTO rings VALUES (764,179,123,119,0,'A',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,41);
INSERT INTO rings VALUES (765,17,264,119,0,'C',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,41);
INSERT INTO rings VALUES (766,361,261,119,16,'C',0,0,0,0,6,4,0,0,10,0,0,4,4,24,NULL,41);
INSERT INTO rings VALUES (767,362,240,119,16,'C',0,0,0,8,6,4,0,0,0,0,6,0,4,24,NULL,41);
INSERT INTO rings VALUES (768,363,217,122,13,'E',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,41);
INSERT INTO rings VALUES (769,365,267,122,13,'C',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,41);
INSERT INTO rings VALUES (770,288,268,122,0,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,41);
INSERT INTO rings VALUES (771,289,210,122,0,'A',0,0,0,0,6,4,0,0,0,8,0,4,4,22,NULL,41);
INSERT INTO rings VALUES (772,367,269,122,13,'E',0,0,0,8,6,4,0,15,10,0,0,4,6,47,NULL,41);
INSERT INTO rings VALUES (773,371,271,115,17,'C',0,0,10,0,6,4,0,0,10,0,0,0,4,30,NULL,40);
INSERT INTO rings VALUES (774,369,217,115,0,'E',0,15,0,0,0,0,0,0,0,0,6,4,3,25,NULL,40);
INSERT INTO rings VALUES (775,289,210,115,0,'A',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,40);
INSERT INTO rings VALUES (776,370,217,115,0,'E',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,40);
INSERT INTO rings VALUES (777,372,217,115,15,'A',0,0,10,0,0,0,0,0,10,0,0,4,3,24,NULL,40);
INSERT INTO rings VALUES (778,299,217,115,0,'A',0,0,0,0,0,4,0,0,0,0,0,0,1,4,NULL,40);
INSERT INTO rings VALUES (779,164,272,115,0,'A',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,40);
INSERT INTO rings VALUES (780,373,273,115,2,'A',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,40);
INSERT INTO rings VALUES (781,374,274,115,2,'C',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,40);
INSERT INTO rings VALUES (782,239,272,115,0,'A',0,0,0,8,6,0,0,0,0,8,6,4,5,32,NULL,40);
INSERT INTO rings VALUES (783,376,274,115,2,'C',0,0,0,0,0,4,0,0,0,0,6,0,2,10,NULL,40);
INSERT INTO rings VALUES (784,26,273,115,0,'A',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,40);
INSERT INTO rings VALUES (785,343,267,115,0,'A',0,0,10,0,6,4,0,0,0,0,0,0,3,20,NULL,40);
INSERT INTO rings VALUES (786,365,267,115,0,'C',0,0,0,0,0,4,0,15,10,0,0,4,4,33,NULL,40);
INSERT INTO rings VALUES (787,377,275,115,17,'E',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,40);
INSERT INTO rings VALUES (788,378,273,115,2,'E',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,40);
INSERT INTO rings VALUES (789,165,273,115,0,'E',0,0,10,0,0,4,0,0,10,0,0,0,3,24,NULL,40);
INSERT INTO rings VALUES (790,240,208,115,0,'A',0,0,0,0,0,4,0,0,0,0,6,0,2,10,NULL,40);
INSERT INTO rings VALUES (791,379,276,115,2,'E',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,40);
INSERT INTO rings VALUES (792,381,208,115,1,'C',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,40);
INSERT INTO rings VALUES (793,365,267,120,0,'C',0,0,0,0,0,0,0,0,0,8,6,4,3,18,NULL,40);
INSERT INTO rings VALUES (794,364,217,120,0,'C',0,15,0,0,0,4,0,0,0,8,0,4,4,31,NULL,40);
INSERT INTO rings VALUES (795,289,210,120,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (796,298,277,120,0,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (797,299,267,120,0,'C',0,0,0,0,6,0,0,0,0,8,0,4,3,18,NULL,40);
INSERT INTO rings VALUES (798,365,267,121,0,'C',0,0,10,0,0,4,0,0,10,0,0,0,3,24,NULL,40);
INSERT INTO rings VALUES (799,364,217,121,0,'C',0,0,10,0,0,4,0,0,0,0,6,4,4,24,NULL,40);
INSERT INTO rings VALUES (800,299,267,121,0,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,40);
INSERT INTO rings VALUES (801,298,277,121,0,'C',0,0,0,8,6,0,0,0,0,8,6,4,5,32,NULL,40);
INSERT INTO rings VALUES (802,289,210,121,0,'A',0,0,0,8,0,4,0,0,0,8,0,4,4,24,NULL,40);
INSERT INTO rings VALUES (803,116,278,123,0,'C',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,41);
INSERT INTO rings VALUES (804,329,72,123,0,'C',0,15,10,0,0,4,0,0,10,0,0,0,4,39,NULL,41);
INSERT INTO rings VALUES (805,117,112,123,0,'C',0,0,10,0,6,4,0,0,10,0,0,4,5,34,NULL,41);
INSERT INTO rings VALUES (806,117,112,123,0,'A',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,41);
INSERT INTO rings VALUES (807,207,140,118,0,'A',0,15,0,0,0,4,0,0,0,8,0,0,3,27,NULL,41);
INSERT INTO rings VALUES (808,382,279,118,1,'A',0,0,0,0,6,0,0,0,0,0,6,0,2,12,NULL,41);
INSERT INTO rings VALUES (809,332,146,118,0,'A',0,0,10,0,0,4,0,0,10,0,0,0,3,24,NULL,41);
INSERT INTO rings VALUES (810,342,173,124,0,'A',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,41);
INSERT INTO rings VALUES (811,12,194,124,0,'A',0,0,0,0,0,4,0,0,0,0,0,0,1,4,NULL,41);
INSERT INTO rings VALUES (812,279,239,125,0,'A',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,41);
INSERT INTO rings VALUES (813,387,284,125,16,'E',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,41);
INSERT INTO rings VALUES (814,167,3,125,0,'C',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,41);
INSERT INTO rings VALUES (815,6,5,125,0,'A',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,41);
INSERT INTO rings VALUES (816,340,196,125,0,'C',0,0,0,0,6,0,0,0,0,0,0,0,1,6,NULL,41);
INSERT INTO rings VALUES (817,341,240,125,16,'E',0,0,10,0,0,4,0,0,0,8,0,0,3,22,NULL,41);
INSERT INTO rings VALUES (818,226,240,125,0,'C',0,0,0,0,6,0,0,0,0,8,0,0,2,14,NULL,41);
INSERT INTO rings VALUES (819,389,3,125,16,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,41);
INSERT INTO rings VALUES (820,339,153,125,0,'C',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,41);
INSERT INTO rings VALUES (821,279,177,125,0,'A',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,41);
INSERT INTO rings VALUES (822,279,240,125,0,'A',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,41);
INSERT INTO rings VALUES (823,279,240,125,0,'A',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,41);
INSERT INTO rings VALUES (824,167,3,125,0,'C',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,41);
INSERT INTO rings VALUES (825,6,5,125,0,'A',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,41);
INSERT INTO rings VALUES (826,340,196,125,0,'C',0,0,0,0,6,0,0,0,0,0,0,0,1,6,NULL,41);
INSERT INTO rings VALUES (827,341,240,125,0,'E',0,0,0,8,0,4,0,0,10,0,0,0,3,22,NULL,41);
INSERT INTO rings VALUES (828,226,240,125,0,'C',0,0,0,0,6,0,0,0,0,8,0,0,2,14,NULL,41);
INSERT INTO rings VALUES (829,339,153,125,0,'C',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,41);
INSERT INTO rings VALUES (830,275,235,126,0,'A',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,41);
INSERT INTO rings VALUES (831,390,235,126,16,'E',0,0,10,0,0,4,20,0,10,0,0,0,4,44,NULL,41);
INSERT INTO rings VALUES (832,17,234,126,0,'A',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,41);
INSERT INTO rings VALUES (833,393,194,130,7,'C',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,41);
INSERT INTO rings VALUES (834,395,282,130,16,'A',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,41);
INSERT INTO rings VALUES (835,396,286,130,4,'C',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,41);
INSERT INTO rings VALUES (836,398,116,130,7,'E',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,41);
INSERT INTO rings VALUES (837,6,282,130,0,'A',0,0,0,8,0,4,0,0,0,8,0,0,3,20,NULL,41);
INSERT INTO rings VALUES (838,399,22,130,7,'C',0,0,0,8,0,4,0,0,0,8,0,4,4,24,NULL,41);
INSERT INTO rings VALUES (839,400,287,130,16,'A',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,41);
INSERT INTO rings VALUES (840,401,286,130,7,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,41);
INSERT INTO rings VALUES (841,30,288,132,0,'E',0,0,0,0,0,4,0,0,0,0,6,0,2,10,NULL,41);
INSERT INTO rings VALUES (842,402,289,132,8,'E',0,15,10,0,0,4,0,15,0,0,0,0,4,44,NULL,41);
INSERT INTO rings VALUES (843,403,289,132,8,'E',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,41);
INSERT INTO rings VALUES (844,404,290,134,3,'A',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,41);
INSERT INTO rings VALUES (845,405,291,134,3,'E',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,41);
INSERT INTO rings VALUES (846,406,292,134,3,'C',0,0,10,0,6,4,0,15,0,0,0,0,4,35,NULL,41);
INSERT INTO rings VALUES (847,407,220,134,3,'A',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,41);
INSERT INTO rings VALUES (848,408,293,134,3,'C',0,0,10,0,6,4,0,0,10,0,6,4,6,40,NULL,41);
INSERT INTO rings VALUES (849,409,294,135,3,'C',0,0,0,0,6,4,0,15,0,0,0,4,4,29,NULL,41);
INSERT INTO rings VALUES (850,102,295,135,0,'C',0,0,0,0,6,0,0,0,0,0,0,0,1,6,NULL,41);
INSERT INTO rings VALUES (851,404,290,135,0,'A',0,15,10,0,0,0,0,0,0,8,0,0,3,33,NULL,41);
INSERT INTO rings VALUES (852,322,236,136,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,42);
INSERT INTO rings VALUES (853,322,236,136,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,42);
INSERT INTO rings VALUES (854,322,236,136,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,42);
INSERT INTO rings VALUES (855,322,236,136,0,'A',20,15,10,0,0,0,20,15,10,0,0,0,6,90,NULL,42);
INSERT INTO rings VALUES (856,410,297,132,8,'E',0,0,10,0,6,4,0,0,10,0,6,0,5,36,NULL,41);
INSERT INTO rings VALUES (857,411,289,132,8,'E',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,41);
INSERT INTO rings VALUES (858,391,209,128,0,'C',0,15,0,8,0,4,0,0,0,8,0,0,4,35,NULL,41);
INSERT INTO rings VALUES (859,392,277,128,0,'E',0,0,0,0,6,4,0,0,10,0,0,0,3,20,NULL,41);
INSERT INTO rings VALUES (860,365,267,128,0,'C',20,0,0,8,6,0,0,0,0,8,0,0,4,42,NULL,41);
INSERT INTO rings VALUES (861,30,288,132,0,'E',0,0,0,0,0,4,0,0,0,0,6,0,2,10,NULL,41);
INSERT INTO rings VALUES (862,402,289,132,0,'E',0,15,10,0,0,4,0,15,0,0,0,0,4,44,NULL,41);
INSERT INTO rings VALUES (863,403,289,132,0,'E',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,41);
INSERT INTO rings VALUES (864,210,228,143,0,'A',0,0,10,0,0,0,0,0,10,0,0,0,2,20,NULL,42);
INSERT INTO rings VALUES (865,345,258,143,0,'E',0,0,0,8,6,4,0,0,10,0,0,4,5,32,NULL,42);
INSERT INTO rings VALUES (866,380,258,143,0,'E',20,15,10,0,0,0,0,15,10,0,0,0,5,70,NULL,42);
INSERT INTO rings VALUES (867,336,298,143,0,'A',0,0,10,0,6,0,0,0,0,0,0,0,2,16,NULL,42);
INSERT INTO rings VALUES (868,336,298,143,0,'A',0,0,10,0,0,0,0,0,0,0,0,0,1,10,NULL,42);
INSERT INTO rings VALUES (869,317,258,143,0,'C',0,0,0,0,0,4,0,0,10,0,0,0,2,14,NULL,42);
INSERT INTO rings VALUES (870,317,258,143,0,'C',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,42);
INSERT INTO rings VALUES (871,209,299,143,0,'A',0,0,10,0,0,0,0,0,0,0,0,0,1,10,NULL,42);
INSERT INTO rings VALUES (872,209,299,143,0,'A',0,15,0,0,0,0,0,0,0,0,0,0,1,15,NULL,42);
INSERT INTO rings VALUES (873,206,258,143,0,'A',0,0,10,0,0,4,0,0,0,0,0,0,2,14,NULL,42);
INSERT INTO rings VALUES (874,208,258,143,0,'A',0,0,10,0,6,0,0,0,0,0,6,0,3,22,NULL,42);
INSERT INTO rings VALUES (875,208,258,143,0,'A',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,42);
INSERT INTO rings VALUES (876,412,188,143,1,'C',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,42);
INSERT INTO rings VALUES (877,412,188,143,0,'C',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,42);
INSERT INTO rings VALUES (878,413,228,143,1,'A',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,42);
INSERT INTO rings VALUES (879,413,228,143,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,42);
INSERT INTO rings VALUES (880,399,300,149,0,'A',0,0,0,0,0,4,0,0,10,0,0,0,2,14,NULL,42);
INSERT INTO rings VALUES (881,393,301,149,0,'C',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,42);
INSERT INTO rings VALUES (882,414,302,149,7,'C',0,0,10,0,0,4,0,15,0,0,0,0,3,29,NULL,42);
INSERT INTO rings VALUES (883,383,280,149,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,42);
INSERT INTO rings VALUES (884,399,301,149,0,'A',0,0,10,0,0,4,0,0,10,0,6,4,5,34,NULL,42);
INSERT INTO rings VALUES (885,415,143,149,7,'A',0,0,0,0,6,4,0,0,10,0,6,4,5,30,NULL,42);
INSERT INTO rings VALUES (886,51,303,149,0,'C',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,42);
INSERT INTO rings VALUES (887,416,303,149,7,'A',0,0,0,0,6,0,0,0,0,0,6,0,2,12,NULL,42);
INSERT INTO rings VALUES (888,417,304,150,16,'C',0,0,0,8,6,4,0,15,10,0,0,4,6,47,NULL,42);
INSERT INTO rings VALUES (889,418,305,150,16,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,42);
INSERT INTO rings VALUES (890,11,241,150,0,'C',0,0,10,0,6,4,0,15,10,0,0,0,5,45,NULL,42);
INSERT INTO rings VALUES (891,312,306,150,0,'E',0,15,10,0,0,4,0,15,10,0,0,4,6,58,NULL,42);
INSERT INTO rings VALUES (892,421,306,150,16,'C',0,0,0,0,6,4,0,0,0,0,0,0,2,10,NULL,42);
INSERT INTO rings VALUES (893,17,234,148,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,42);
INSERT INTO rings VALUES (894,424,235,148,16,'E',0,0,0,8,0,4,0,0,10,0,6,0,4,28,NULL,42);
INSERT INTO rings VALUES (895,425,235,148,16,'E',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,42);
INSERT INTO rings VALUES (896,275,235,148,0,'A',0,0,0,8,0,4,0,0,0,8,0,0,3,20,NULL,42);
INSERT INTO rings VALUES (897,331,235,148,0,'E',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,42);
INSERT INTO rings VALUES (898,400,309,148,0,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,42);
INSERT INTO rings VALUES (899,274,234,148,0,'A',0,0,0,8,0,4,0,0,0,8,6,0,4,26,NULL,42);
INSERT INTO rings VALUES (900,423,234,148,0,'A',0,0,0,0,6,4,0,0,0,8,0,4,4,22,NULL,42);
INSERT INTO rings VALUES (901,17,264,148,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,42);
INSERT INTO rings VALUES (902,427,311,158,11,'A',0,0,0,8,6,4,0,0,0,0,0,0,3,18,NULL,43);
INSERT INTO rings VALUES (903,428,312,158,6,'C',0,0,0,0,6,4,0,0,0,8,0,4,4,22,NULL,43);
INSERT INTO rings VALUES (904,429,313,158,6,'A',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,43);
INSERT INTO rings VALUES (905,430,314,158,11,'C',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,43);
INSERT INTO rings VALUES (906,431,312,158,11,'C',0,0,0,0,0,4,0,0,0,8,6,0,3,18,NULL,43);
INSERT INTO rings VALUES (907,432,311,158,11,'E',0,0,0,0,6,4,0,0,0,0,6,0,3,16,NULL,43);
INSERT INTO rings VALUES (908,433,315,158,11,'E',0,15,10,0,0,4,0,15,10,0,0,0,5,54,NULL,43);
INSERT INTO rings VALUES (909,434,315,158,11,'C',0,0,0,8,0,4,0,0,0,0,6,4,4,22,NULL,43);
INSERT INTO rings VALUES (910,435,314,158,11,'A',0,0,0,8,0,4,0,0,0,0,0,0,2,12,NULL,43);
INSERT INTO rings VALUES (911,394,314,158,0,'A',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,43);
INSERT INTO rings VALUES (912,434,316,158,0,'E',0,0,10,0,6,4,0,15,0,0,0,0,4,35,NULL,43);
INSERT INTO rings VALUES (913,226,6,161,0,'C',0,0,10,0,0,4,0,0,0,0,6,4,4,24,NULL,43);
INSERT INTO rings VALUES (914,436,318,161,16,'A',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,43);
INSERT INTO rings VALUES (915,437,319,164,6,'E',0,0,0,8,0,4,0,0,10,0,6,4,5,32,NULL,44);
INSERT INTO rings VALUES (916,438,320,164,6,'C',0,15,0,0,0,4,0,15,0,0,0,4,4,38,NULL,44);
INSERT INTO rings VALUES (917,439,321,164,6,'E',0,0,0,8,6,4,0,0,0,8,0,4,5,30,NULL,44);
INSERT INTO rings VALUES (918,440,322,164,6,'E',0,0,10,0,6,4,0,15,10,0,0,4,6,49,NULL,44);
INSERT INTO rings VALUES (919,441,323,164,6,'A',0,0,0,8,0,4,0,0,0,8,6,4,5,30,NULL,44);
INSERT INTO rings VALUES (920,442,324,164,6,'C',0,0,0,8,6,0,0,0,0,8,6,4,5,32,NULL,44);
INSERT INTO rings VALUES (921,443,325,164,6,'C',0,0,0,0,0,4,0,0,0,8,6,4,4,22,NULL,44);
INSERT INTO rings VALUES (922,444,320,164,6,'C',0,0,0,0,0,4,0,0,0,8,6,4,4,22,NULL,44);
INSERT INTO rings VALUES (923,445,326,164,6,'A',0,15,10,0,0,4,0,0,0,8,0,4,5,41,NULL,44);
INSERT INTO rings VALUES (924,445,326,164,0,'C',0,15,10,0,0,4,0,0,10,0,0,4,5,43,NULL,44);
INSERT INTO rings VALUES (925,446,327,166,13,'C',0,0,0,0,6,4,0,0,0,8,0,4,4,22,NULL,44);
INSERT INTO rings VALUES (926,298,328,166,0,'C',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,44);
INSERT INTO rings VALUES (927,164,272,166,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,44);
INSERT INTO rings VALUES (928,447,329,167,6,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,44);
INSERT INTO rings VALUES (929,447,329,167,0,'C',0,15,0,8,0,4,0,15,0,8,0,4,6,54,NULL,44);
INSERT INTO rings VALUES (930,447,329,167,0,'A',0,0,0,8,0,4,0,15,0,8,0,4,5,39,NULL,44);
INSERT INTO rings VALUES (931,447,329,168,0,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,45);
INSERT INTO rings VALUES (932,447,329,168,0,'C',0,15,0,8,0,4,0,15,0,8,0,4,6,54,NULL,45);
INSERT INTO rings VALUES (933,447,329,168,0,'A',0,15,0,8,0,4,0,0,0,8,0,4,5,39,NULL,45);
INSERT INTO rings VALUES (934,447,329,170,0,'A',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,45);
INSERT INTO rings VALUES (935,447,329,170,0,'C',0,0,0,8,6,4,0,0,10,0,6,4,6,38,NULL,45);
INSERT INTO rings VALUES (936,447,330,170,0,'C',0,0,10,0,0,4,0,0,0,8,6,4,5,32,NULL,45);
INSERT INTO rings VALUES (937,445,326,170,0,'C',0,15,10,0,0,0,0,15,0,0,0,0,3,40,NULL,45);
INSERT INTO rings VALUES (938,445,326,170,0,'C',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,45);
INSERT INTO rings VALUES (939,448,331,170,6,'C',0,0,10,0,0,4,0,0,0,0,6,4,4,24,NULL,45);
INSERT INTO rings VALUES (940,448,331,170,0,'C',0,0,0,8,0,4,0,0,0,0,6,0,3,18,NULL,45);
INSERT INTO rings VALUES (941,449,332,172,18,'C',0,0,10,0,0,4,0,0,0,0,0,0,2,14,NULL,45);
INSERT INTO rings VALUES (942,450,333,172,8,'C',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,45);
INSERT INTO rings VALUES (943,451,333,172,8,'C',0,0,0,8,6,4,0,0,0,8,0,0,4,26,NULL,45);
INSERT INTO rings VALUES (944,452,333,172,8,'C',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,45);
INSERT INTO rings VALUES (945,453,334,173,15,'C',0,0,10,0,0,0,0,0,0,0,0,0,1,10,NULL,45);
INSERT INTO rings VALUES (946,454,335,173,8,'C',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,45);
INSERT INTO rings VALUES (947,455,336,173,12,'C',0,0,0,0,0,4,0,0,0,0,6,0,2,10,NULL,45);
INSERT INTO rings VALUES (948,456,337,173,12,'C',0,0,0,0,6,4,0,0,0,8,6,0,4,24,NULL,45);
INSERT INTO rings VALUES (949,450,207,173,0,'C',0,0,0,8,0,4,0,0,0,8,0,0,3,20,NULL,45);
INSERT INTO rings VALUES (950,457,338,173,2,'C',0,0,0,0,0,4,0,0,0,8,0,0,2,12,NULL,45);
INSERT INTO rings VALUES (951,454,335,174,0,'C',0,0,0,0,0,0,0,0,0,0,6,0,1,6,NULL,45);
INSERT INTO rings VALUES (952,457,338,174,0,'C',0,0,0,0,6,0,0,0,0,0,0,4,2,10,NULL,45);
INSERT INTO rings VALUES (953,455,336,174,0,'C',0,0,0,0,0,4,0,0,0,8,0,4,3,16,NULL,45);
INSERT INTO rings VALUES (954,456,339,174,0,'E',0,15,0,0,0,4,20,0,10,0,0,0,4,49,NULL,45);
INSERT INTO rings VALUES (955,191,207,174,18,'A',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,45);
INSERT INTO rings VALUES (956,415,340,175,7,'A',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,45);
INSERT INTO rings VALUES (957,458,341,175,7,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,45);
INSERT INTO rings VALUES (958,427,311,176,0,'C',0,0,10,0,6,4,0,0,0,0,6,4,5,30,NULL,45);
INSERT INTO rings VALUES (959,427,311,176,0,'A',0,0,0,8,6,4,0,0,0,0,0,4,4,22,NULL,45);
INSERT INTO rings VALUES (960,430,312,176,0,'C',0,0,10,0,6,4,0,0,0,0,0,4,4,24,NULL,45);
INSERT INTO rings VALUES (961,429,313,176,0,'A',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,45);
INSERT INTO rings VALUES (962,430,312,176,0,'A',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,45);
INSERT INTO rings VALUES (963,409,311,176,11,'C',0,0,0,0,0,4,0,0,0,0,0,0,1,4,NULL,45);
INSERT INTO rings VALUES (964,429,313,176,0,'A',0,0,0,0,6,4,0,0,0,0,0,4,3,14,NULL,45);
INSERT INTO rings VALUES (965,428,312,176,0,'A',0,0,0,0,6,4,0,0,0,8,0,0,3,18,NULL,45);
INSERT INTO rings VALUES (966,427,311,176,0,'E',0,15,10,0,0,4,0,15,10,0,0,4,6,58,NULL,45);
INSERT INTO rings VALUES (967,459,312,176,11,'C',0,0,0,0,6,4,0,0,0,0,6,4,4,20,NULL,45);
INSERT INTO rings VALUES (968,171,73,179,0,'C',0,15,10,0,0,4,0,0,10,0,0,4,5,43,NULL,46);
INSERT INTO rings VALUES (969,447,329,179,0,'A',0,0,0,0,6,4,0,15,10,0,0,4,5,39,NULL,46);
INSERT INTO rings VALUES (970,460,342,179,6,'C',0,0,0,8,6,4,0,0,0,0,6,4,5,28,NULL,46);
INSERT INTO rings VALUES (971,461,329,179,6,'E',0,15,0,0,0,4,0,0,10,0,0,4,4,33,NULL,46);
INSERT INTO rings VALUES (972,463,343,179,6,'C',0,15,10,0,0,4,0,15,10,0,0,0,5,54,NULL,46);
INSERT INTO rings VALUES (973,399,344,180,0,'A',0,0,0,8,0,4,0,0,0,0,6,4,4,22,NULL,46);
INSERT INTO rings VALUES (974,415,340,180,0,'A',0,0,0,8,0,4,0,0,0,0,0,4,3,16,NULL,46);
INSERT INTO rings VALUES (975,458,345,180,0,'A',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,46);
INSERT INTO rings VALUES (976,56,303,180,0,'A',0,0,0,8,0,4,0,0,0,8,6,4,5,30,NULL,46);
INSERT INTO rings VALUES (977,383,280,180,0,'A',0,0,0,8,6,4,0,0,0,8,6,0,5,32,NULL,46);
INSERT INTO rings VALUES (978,384,346,180,0,'A',0,0,0,0,0,4,0,0,0,0,0,4,2,8,NULL,46);
INSERT INTO rings VALUES (979,464,309,180,16,'A',0,0,0,0,0,4,0,0,0,0,6,4,3,14,NULL,46);
INSERT INTO rings VALUES (980,465,347,180,7,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,46);
INSERT INTO rings VALUES (981,57,348,180,0,'C',0,0,0,0,6,4,0,0,0,8,6,4,5,28,NULL,46);
INSERT INTO rings VALUES (982,466,349,180,4,'C',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,46);
INSERT INTO rings VALUES (983,358,6,180,0,'E',0,0,10,0,0,4,0,0,10,0,0,4,4,28,NULL,46);
INSERT INTO rings VALUES (984,467,333,181,8,'C',0,0,0,0,6,4,0,0,0,8,6,0,4,24,NULL,46);
INSERT INTO rings VALUES (985,450,333,181,0,'C',0,0,0,0,6,4,0,0,0,8,6,0,4,24,NULL,46);
INSERT INTO rings VALUES (986,468,350,181,18,'C',0,0,0,0,0,0,0,0,10,0,0,0,1,10,NULL,46);
INSERT INTO rings VALUES (987,191,207,181,0,'A',0,0,0,8,6,4,0,0,0,8,6,4,6,36,NULL,46);
INSERT INTO rings VALUES (988,449,332,181,0,'C',0,0,0,0,0,0,0,0,0,8,0,0,1,8,NULL,46);
INSERT INTO rings VALUES (989,469,351,181,18,'E',0,0,10,0,6,4,0,0,10,0,0,0,4,30,NULL,46);
INSERT INTO rings VALUES (990,470,352,181,8,'E',0,0,0,0,0,4,0,0,0,0,0,0,1,4,NULL,46);

--
-- Table structure for table `timecon`
--

CREATE TABLE timecon (
  Lotime char(5) default NULL,
  Hitime char(5) default NULL,
  Points char(6) default NULL,
  KEY Points (Points)
) TYPE=MyISAM;

--
-- Dumping data for table `timecon`
--

INSERT INTO timecon VALUES ('1','1049','100.00');
INSERT INTO timecon VALUES ('1050','1099','99.00');
INSERT INTO timecon VALUES ('1100','1149','98.00');
INSERT INTO timecon VALUES ('1150','1199','97.00');
INSERT INTO timecon VALUES ('1200','1249','96.00');
INSERT INTO timecon VALUES ('1250','1299','95.00');
INSERT INTO timecon VALUES ('1300','1349','94.00');
INSERT INTO timecon VALUES ('1350','1399','93.00');
INSERT INTO timecon VALUES ('1400','1449','92.00');
INSERT INTO timecon VALUES ('1450','1499','91.00');
INSERT INTO timecon VALUES ('1500','1549','90.00');
INSERT INTO timecon VALUES ('1550','1599','89.00');
INSERT INTO timecon VALUES ('1600','1649','88.00');
INSERT INTO timecon VALUES ('1650','1699','87.00');
INSERT INTO timecon VALUES ('1700','1749','86.00');
INSERT INTO timecon VALUES ('1750','1799','85.00');
INSERT INTO timecon VALUES ('1800','1849','84.00');
INSERT INTO timecon VALUES ('1850','1899','83.00');
INSERT INTO timecon VALUES ('1900','1949','82.00');
INSERT INTO timecon VALUES ('1950','1999','81.00');
INSERT INTO timecon VALUES ('2000','2049','80.50');
INSERT INTO timecon VALUES ('2050','2099','80.00');
INSERT INTO timecon VALUES ('2100','2149','79.50');
INSERT INTO timecon VALUES ('2150','2199','79.00');
INSERT INTO timecon VALUES ('2200','2249','78.50');
INSERT INTO timecon VALUES ('2250','2299','78.00');
INSERT INTO timecon VALUES ('2300','2349','77.50');
INSERT INTO timecon VALUES ('2350','2399','77.00');
INSERT INTO timecon VALUES ('2400','2449','76.50');
INSERT INTO timecon VALUES ('2450','2499','76.00');
INSERT INTO timecon VALUES ('2500','2549','75.50');
INSERT INTO timecon VALUES ('2550','2599','75.00');
INSERT INTO timecon VALUES ('2600','2649','74.50');
INSERT INTO timecon VALUES ('2650','2699','74.00');
INSERT INTO timecon VALUES ('2700','2749','73.50');
INSERT INTO timecon VALUES ('2750','2799','73.00');
INSERT INTO timecon VALUES ('2800','2849','72.50');
INSERT INTO timecon VALUES ('2850','2899','72.00');
INSERT INTO timecon VALUES ('2900','2949','71.50');
INSERT INTO timecon VALUES ('2950','2999','71.00');
INSERT INTO timecon VALUES ('3000','3049','70.50');
INSERT INTO timecon VALUES ('3050','3099','70.00');
INSERT INTO timecon VALUES ('3100','3149','69.50');
INSERT INTO timecon VALUES ('3150','3199','69.00');
INSERT INTO timecon VALUES ('3200','3249','68.50');
INSERT INTO timecon VALUES ('3250','3299','68.00');
INSERT INTO timecon VALUES ('3300','3349','67.50');
INSERT INTO timecon VALUES ('3350','3399','67.00');
INSERT INTO timecon VALUES ('3400','3449','66.50');
INSERT INTO timecon VALUES ('3450','3499','66.00');
INSERT INTO timecon VALUES ('3500','3549','65.50');
INSERT INTO timecon VALUES ('3550','3599','65.00');
INSERT INTO timecon VALUES ('3600','3649','64.50');
INSERT INTO timecon VALUES ('3650','3699','64.00');
INSERT INTO timecon VALUES ('3700','3749','63.50');
INSERT INTO timecon VALUES ('3750','3799','63.00');
INSERT INTO timecon VALUES ('3800','3849','62.50');
INSERT INTO timecon VALUES ('3850','3899','62.00');
INSERT INTO timecon VALUES ('3900','3949','61.50');
INSERT INTO timecon VALUES ('3950','3999','61.00');
INSERT INTO timecon VALUES ('4000','4049','60.50');
INSERT INTO timecon VALUES ('4050','4099','60.00');
INSERT INTO timecon VALUES ('4100','4149','59.50');
INSERT INTO timecon VALUES ('4150','4199','59.00');
INSERT INTO timecon VALUES ('4200','4249','58.50');
INSERT INTO timecon VALUES ('4250','4299','58.00');
INSERT INTO timecon VALUES ('4300','4349','57.50');
INSERT INTO timecon VALUES ('4350','4399','57.00');
INSERT INTO timecon VALUES ('4400','4449','56.50');
INSERT INTO timecon VALUES ('4450','4499','56.00');
INSERT INTO timecon VALUES ('4500','4549','55.50');
INSERT INTO timecon VALUES ('4550','4599','55.00');
INSERT INTO timecon VALUES ('4600','4649','54.50');
INSERT INTO timecon VALUES ('4650','4699','54.00');
INSERT INTO timecon VALUES ('4700','4749','53.50');
INSERT INTO timecon VALUES ('4750','4799','53.00');
INSERT INTO timecon VALUES ('4800','4849','52.50');
INSERT INTO timecon VALUES ('4850','4899','52.00');
INSERT INTO timecon VALUES ('4900','4949','51.50');
INSERT INTO timecon VALUES ('4950','4999','51.00');
INSERT INTO timecon VALUES ('5000','5049','50.50');
INSERT INTO timecon VALUES ('5050','5099','50.00');
INSERT INTO timecon VALUES ('5100','5149','49.50');
INSERT INTO timecon VALUES ('5150','5199','49.00');
INSERT INTO timecon VALUES ('5200','5249','48.50');
INSERT INTO timecon VALUES ('5250','5299','48.00');
INSERT INTO timecon VALUES ('5300','5349','47.50');
INSERT INTO timecon VALUES ('5350','5399','47.00');
INSERT INTO timecon VALUES ('5400','5449','46.50');
INSERT INTO timecon VALUES ('5450','5499','46.00');
INSERT INTO timecon VALUES ('5500','5549','45.50');
INSERT INTO timecon VALUES ('5550','5599','45.00');
INSERT INTO timecon VALUES ('5600','5649','44.50');
INSERT INTO timecon VALUES ('5650','5699','44.00');
INSERT INTO timecon VALUES ('5700','5749','43.50');
INSERT INTO timecon VALUES ('5750','5799','43.00');
INSERT INTO timecon VALUES ('5800','5849','42.50');
INSERT INTO timecon VALUES ('5850','5899','42.00');
INSERT INTO timecon VALUES ('5900','5949','41.50');
INSERT INTO timecon VALUES ('5950','5999','41.00');
INSERT INTO timecon VALUES ('6000','6049','40.50');
INSERT INTO timecon VALUES ('6050','6099','40.00');
INSERT INTO timecon VALUES ('6100','6149','39.50');
INSERT INTO timecon VALUES ('6150','6199','39.00');
INSERT INTO timecon VALUES ('6200','6249','38.50');
INSERT INTO timecon VALUES ('6250','6299','38.00');
INSERT INTO timecon VALUES ('6300','6349','37.50');
INSERT INTO timecon VALUES ('6350','6399','37.00');
INSERT INTO timecon VALUES ('6400','6449','36.50');
INSERT INTO timecon VALUES ('6450','6499','36.00');
INSERT INTO timecon VALUES ('6500','6549','35.50');
INSERT INTO timecon VALUES ('6550','6599','35.00');
INSERT INTO timecon VALUES ('6600','6649','34.50');
INSERT INTO timecon VALUES ('6650','6699','34.00');
INSERT INTO timecon VALUES ('6700','6749','33.50');
INSERT INTO timecon VALUES ('6750','6799','33.00');
INSERT INTO timecon VALUES ('6800','6849','32.50');
INSERT INTO timecon VALUES ('6850','6899','32.00');
INSERT INTO timecon VALUES ('6900','6949','31.50');
INSERT INTO timecon VALUES ('6950','6999','31.00');
INSERT INTO timecon VALUES ('7000','7049','30.50');
INSERT INTO timecon VALUES ('7050','7099','30.00');
INSERT INTO timecon VALUES ('7100','7149','29.50');
INSERT INTO timecon VALUES ('7150','7199','29.00');
INSERT INTO timecon VALUES ('7200','7249','28.50');
INSERT INTO timecon VALUES ('7250','7299','28.00');
INSERT INTO timecon VALUES ('7300','7349','27.50');
INSERT INTO timecon VALUES ('7350','7399','27.00');
INSERT INTO timecon VALUES ('7400','7449','26.50');
INSERT INTO timecon VALUES ('7450','7499','26.00');
INSERT INTO timecon VALUES ('7500','7549','25.50');
INSERT INTO timecon VALUES ('7550','7599','25.00');
INSERT INTO timecon VALUES ('7600','7649','24.50');
INSERT INTO timecon VALUES ('7650','7699','24.00');
INSERT INTO timecon VALUES ('7700','7749','23.50');
INSERT INTO timecon VALUES ('7750','7799','23.00');
INSERT INTO timecon VALUES ('7800','7849','22.50');
INSERT INTO timecon VALUES ('7850','7899','22.00');
INSERT INTO timecon VALUES ('7900','7949','21.50');
INSERT INTO timecon VALUES ('7950','7999','21.00');
INSERT INTO timecon VALUES ('8000','8049','20.50');
INSERT INTO timecon VALUES ('8050','8099','20.00');
INSERT INTO timecon VALUES ('8100','8149','19.50');
INSERT INTO timecon VALUES ('8150','8199','19.00');
INSERT INTO timecon VALUES ('8200','8249','18.50');
INSERT INTO timecon VALUES ('8250','8299','18.00');
INSERT INTO timecon VALUES ('8300','8349','17.50');
INSERT INTO timecon VALUES ('8350','8399','17.00');
INSERT INTO timecon VALUES ('8400','8449','16.50');
INSERT INTO timecon VALUES ('8450','8499','16.00');
INSERT INTO timecon VALUES ('8500','8549','15.50');
INSERT INTO timecon VALUES ('8550','8599','15.00');
INSERT INTO timecon VALUES ('8600','8649','14.50');
INSERT INTO timecon VALUES ('8650','8699','14.00');
INSERT INTO timecon VALUES ('8700','8749','13.50');
INSERT INTO timecon VALUES ('8750','8799','13.00');
INSERT INTO timecon VALUES ('8800','8849','12.50');
INSERT INTO timecon VALUES ('8850','8899','12.00');
INSERT INTO timecon VALUES ('8900','8949','11.50');
INSERT INTO timecon VALUES ('8950','8999','11.00');
INSERT INTO timecon VALUES ('9000','9049','10.50');
INSERT INTO timecon VALUES ('9050','9099','10.00');
INSERT INTO timecon VALUES ('9100','9149','9.50');
INSERT INTO timecon VALUES ('9150','9199','9.00');
INSERT INTO timecon VALUES ('9200','9249','8.50');
INSERT INTO timecon VALUES ('9250','9299','8.00');
INSERT INTO timecon VALUES ('9300','9349','7.50');
INSERT INTO timecon VALUES ('9350','9399','7.00');
INSERT INTO timecon VALUES ('9400','9449','6.50');
INSERT INTO timecon VALUES ('9450','9499','6.00');
INSERT INTO timecon VALUES ('9500','9549','5.50');
INSERT INTO timecon VALUES ('9550','9599','5.00');
INSERT INTO timecon VALUES ('9600','9649','4.50');
INSERT INTO timecon VALUES ('9650','9699','4.00');
INSERT INTO timecon VALUES ('9700','9749','3.50');
INSERT INTO timecon VALUES ('9750','9799','3.00');
INSERT INTO timecon VALUES ('9800','9849','2.50');
INSERT INTO timecon VALUES ('9850','9899','2.00');
INSERT INTO timecon VALUES ('9900','9949','1.50');
INSERT INTO timecon VALUES ('9950','9999','1.00');
INSERT INTO timecon VALUES ('10000','10049','0.50');
INSERT INTO timecon VALUES ('10050','99999','0');

--
-- Table structure for table `xl`
--

CREATE TABLE xl (
  YID int(5) NOT NULL auto_increment,
  PID int(4) NOT NULL default '0',
  HID int(4) NOT NULL default '0',
  EID int(4) NOT NULL default '0',
  SHID int(4) default NULL,
  SRID int(4) default NULL,
  SDID int(4) default NULL,
  SMID int(4) default NULL,
  cscore float NOT NULL default '0',
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xl`
--

INSERT INTO xl VALUES (1,322,236,102,675,657,504,18,180,378,'A','Z');
INSERT INTO xl VALUES (2,322,236,102,676,658,505,19,170,375,'B','Z');
INSERT INTO xl VALUES (3,6,5,103,677,659,506,0,88,203,'A','D');
INSERT INTO xl VALUES (4,312,235,103,678,660,507,0,104,183.5,'C','Y');
INSERT INTO xl VALUES (5,275,235,103,679,661,508,0,128,204.5,'C','Y');
INSERT INTO xl VALUES (6,279,177,103,680,662,509,0,99,186,'A','Y');
INSERT INTO xl VALUES (7,281,213,103,0,663,510,0,29,29,'A','Y');
INSERT INTO xl VALUES (8,17,234,103,681,664,511,0,96,182,'A','Y');
INSERT INTO xl VALUES (9,321,177,103,0,0,512,0,63,63,'E','Y');
INSERT INTO xl VALUES (10,323,3,103,682,665,513,0,75,155,'C','Y');
INSERT INTO xl VALUES (11,324,175,103,683,666,514,0,108,208,'E','Y');
INSERT INTO xl VALUES (12,325,237,103,684,667,515,0,114,186,'C','Y');
INSERT INTO xl VALUES (13,274,234,103,685,668,516,0,120,198.5,'C','Y');
INSERT INTO xl VALUES (14,326,3,103,686,0,0,0,0,87,'C','Y');
INSERT INTO xl VALUES (15,116,72,104,687,669,517,0,62,147,'B','Y');
INSERT INTO xl VALUES (16,116,72,104,688,670,518,0,46,151,'A','Y');
INSERT INTO xl VALUES (17,327,238,104,689,671,519,0,102,154,'F','Y');
INSERT INTO xl VALUES (18,328,72,104,690,672,520,0,78,152,'C','Y');
INSERT INTO xl VALUES (19,329,72,104,691,673,521,0,71,144.5,'C','Y');
INSERT INTO xl VALUES (20,117,72,104,692,674,522,0,111,215,'A','Y');
INSERT INTO xl VALUES (21,167,3,105,693,675,523,20,112,112,'C','Y');
INSERT INTO xl VALUES (22,312,239,105,694,676,524,21,78,78,'A','Y');
INSERT INTO xl VALUES (23,312,240,105,695,677,525,22,78,78,'A','D');
INSERT INTO xl VALUES (24,6,5,105,696,678,526,23,111,111,'A','Y');
INSERT INTO xl VALUES (25,7,6,105,697,679,527,24,92,92,'A','Y');
INSERT INTO xl VALUES (26,279,177,105,698,680,528,25,118,118,'A','Z');
INSERT INTO xl VALUES (27,42,239,105,699,681,529,26,125,125,'A','D');
INSERT INTO xl VALUES (28,11,241,105,700,682,530,27,103,103,'A','Y');
INSERT INTO xl VALUES (29,17,234,106,0,683,0,0,10,10,'A','D');
INSERT INTO xl VALUES (30,6,5,106,0,684,0,0,32,32,'A','D');
INSERT INTO xl VALUES (31,274,3,106,0,685,531,0,120,120,'C','D');
INSERT INTO xl VALUES (32,330,3,106,0,686,532,0,93,93,'C','Y');
INSERT INTO xl VALUES (33,275,235,106,0,687,0,0,22,22,'C','D');
INSERT INTO xl VALUES (34,167,3,106,0,688,0,0,36,36,'C','D');
INSERT INTO xl VALUES (35,331,235,106,0,689,533,0,111,111,'E','Y');
INSERT INTO xl VALUES (36,331,235,106,0,690,0,0,36,36,'C','Y');
INSERT INTO xl VALUES (37,205,16,108,0,691,534,0,112,112,'A','Y');
INSERT INTO xl VALUES (38,20,242,108,0,692,0,0,30,30,'C','Y');
INSERT INTO xl VALUES (39,207,140,108,0,693,535,0,100,100,'A','Y');
INSERT INTO xl VALUES (40,210,144,108,0,694,536,0,88,88,'A','D');
INSERT INTO xl VALUES (41,322,236,102,701,695,537,28,180,360,'F','N');
INSERT INTO xl VALUES (42,320,177,105,0,696,538,0,126,126,'A','Y');
INSERT INTO xl VALUES (43,42,27,109,702,697,539,29,160,160,'A','Y');
INSERT INTO xl VALUES (44,332,243,109,0,698,540,0,129,129,'A','Y');
INSERT INTO xl VALUES (45,333,244,109,0,699,541,0,140,140,'E','Y');
INSERT INTO xl VALUES (46,206,245,108,0,700,542,0,118,118,'C','Y');
INSERT INTO xl VALUES (47,209,246,108,0,701,543,0,124,124,'A','Y');
INSERT INTO xl VALUES (48,26,145,108,0,702,544,0,103,103,'A','Y');
INSERT INTO xl VALUES (49,208,144,108,0,703,545,0,73,73,'A','Y');
INSERT INTO xl VALUES (50,313,227,108,0,704,546,0,124,124,'C','Y');
INSERT INTO xl VALUES (51,22,247,108,0,705,547,0,110,110,'A','Y');
INSERT INTO xl VALUES (52,226,240,107,0,706,0,0,14,14,'C','D');
INSERT INTO xl VALUES (53,15,173,107,0,707,548,0,111,111,'C','Y');
INSERT INTO xl VALUES (54,334,248,107,703,708,549,0,108,181,'E','Y');
INSERT INTO xl VALUES (55,335,249,107,704,709,550,0,89,158.5,'E','D');
INSERT INTO xl VALUES (56,336,228,108,0,710,551,0,86,86,'A','D');
INSERT INTO xl VALUES (57,334,248,110,0,711,552,0,99,99,'E','D');
INSERT INTO xl VALUES (58,335,249,110,0,712,553,0,115,115,'E','Y');
INSERT INTO xl VALUES (59,337,250,111,705,713,554,0,103,181,'C','Y');
INSERT INTO xl VALUES (60,338,250,111,706,714,555,0,124,200,'E','Y');
INSERT INTO xl VALUES (61,248,196,111,707,715,556,0,99,177.5,'C','Y');
INSERT INTO xl VALUES (62,11,153,111,708,716,557,0,69,157,'A','D');
INSERT INTO xl VALUES (63,339,251,111,709,717,558,0,65,139.5,'C','Y');
INSERT INTO xl VALUES (64,340,159,111,710,718,559,0,78,175,'E','Y');
INSERT INTO xl VALUES (65,341,239,111,711,719,560,0,110,183,'E','Y');
INSERT INTO xl VALUES (66,286,252,111,712,720,561,0,57,137,'C','Y');
INSERT INTO xl VALUES (67,342,173,111,713,721,562,0,118,191,'C','Y');
INSERT INTO xl VALUES (68,259,241,111,714,722,563,0,119,191.5,'C','Y');
INSERT INTO xl VALUES (69,226,239,111,715,723,564,0,93,166.5,'C','Y');
INSERT INTO xl VALUES (70,343,145,112,716,724,0,0,30,113,'B','D');
INSERT INTO xl VALUES (71,343,145,112,717,725,0,0,36,118,'B','Y');
INSERT INTO xl VALUES (72,344,16,112,718,726,0,0,24,87.5,'B','Z');
INSERT INTO xl VALUES (73,205,145,112,719,727,0,0,16,99,'B','Y');
INSERT INTO xl VALUES (74,345,16,112,720,728,0,0,18,76.5,'B','Z');
INSERT INTO xl VALUES (75,346,145,112,721,729,0,0,6,86,'B','Y');
INSERT INTO xl VALUES (76,347,16,112,722,730,0,0,6,84.5,'B','Y');
INSERT INTO xl VALUES (77,348,16,112,723,731,0,0,24,80.5,'D','Y');
INSERT INTO xl VALUES (78,345,16,112,724,732,0,0,20,78.5,'D','Y');
INSERT INTO xl VALUES (79,344,16,112,725,733,0,0,24,87.5,'D','Y');
INSERT INTO xl VALUES (80,207,253,113,726,734,0,0,35,139,'A','N');
INSERT INTO xl VALUES (81,209,246,113,727,735,0,0,35,142,'A','D');
INSERT INTO xl VALUES (82,209,246,113,728,736,0,0,35,150,'A','D');
INSERT INTO xl VALUES (83,313,254,113,729,737,0,0,58,135.5,'C','D');
INSERT INTO xl VALUES (84,313,254,113,730,738,0,0,33,108,'C','D');
INSERT INTO xl VALUES (85,336,255,113,731,739,0,0,45,152,'A','D');
INSERT INTO xl VALUES (86,336,255,113,732,740,0,0,35,153,'A','D');
INSERT INTO xl VALUES (87,265,253,113,733,741,0,0,40,127,'A','Y');
INSERT INTO xl VALUES (88,265,253,113,734,742,0,0,18,110,'A','D');
INSERT INTO xl VALUES (89,207,253,113,735,743,0,0,29,121,'A','D');
INSERT INTO xl VALUES (90,349,256,113,736,0,0,0,0,79,'C','D');
INSERT INTO xl VALUES (91,349,256,113,0,744,0,0,50,50,'C','Y');
INSERT INTO xl VALUES (92,350,257,113,737,745,0,0,12,89,'A','Y');
INSERT INTO xl VALUES (93,350,257,113,738,746,0,0,10,91,'A','D');
INSERT INTO xl VALUES (94,208,258,113,739,0,0,0,0,87,'A','D');
INSERT INTO xl VALUES (95,206,226,113,740,747,0,0,20,114,'A','D');
INSERT INTO xl VALUES (96,206,226,113,741,748,0,0,25,83,'A','Y');
INSERT INTO xl VALUES (97,266,245,113,742,0,0,0,0,70,'C','D');
INSERT INTO xl VALUES (98,266,245,113,743,749,0,0,20,99,'C','Y');
INSERT INTO xl VALUES (99,210,259,113,744,0,0,0,0,99,'A','D');
INSERT INTO xl VALUES (100,210,259,113,745,750,0,0,38,150,'A','D');
INSERT INTO xl VALUES (101,317,258,113,0,751,0,0,14,14,'C','Y');
INSERT INTO xl VALUES (102,336,228,114,0,752,565,0,125,125,'A','Y');
INSERT INTO xl VALUES (103,207,140,114,0,753,566,0,88,88,'A','D');
INSERT INTO xl VALUES (104,210,144,114,0,754,567,0,85,85,'A','D');
INSERT INTO xl VALUES (105,336,228,114,0,755,568,0,85,85,'A','D');
INSERT INTO xl VALUES (106,209,246,114,0,756,569,0,56,56,'A','D');
INSERT INTO xl VALUES (107,207,140,114,0,757,570,0,61,61,'A','D');
INSERT INTO xl VALUES (108,210,144,114,0,758,571,0,100,100,'A','Y');
INSERT INTO xl VALUES (109,209,246,114,0,0,572,0,60,60,'A','D');
INSERT INTO xl VALUES (110,368,270,115,761,0,0,33,0,0,'C','Z');
INSERT INTO xl VALUES (111,369,217,115,762,0,0,34,0,0,'E','Z');
INSERT INTO xl VALUES (112,289,210,115,763,0,0,35,0,0,'A','Z');
INSERT INTO xl VALUES (113,370,217,115,764,0,0,36,0,0,'E','Z');
INSERT INTO xl VALUES (114,371,271,115,765,773,595,37,96,96,'C','Z');
INSERT INTO xl VALUES (115,369,217,115,766,774,596,38,91,91,'E','Y');
INSERT INTO xl VALUES (116,289,210,115,767,775,597,39,46,46,'A','D');
INSERT INTO xl VALUES (117,370,217,115,768,776,598,40,110,110,'E','Y');
INSERT INTO xl VALUES (118,372,217,115,769,777,599,41,114,114,'A','Y');
INSERT INTO xl VALUES (119,299,217,115,770,778,600,42,64,64,'A','Y');
INSERT INTO xl VALUES (120,164,272,115,771,779,601,43,70,70,'A','Y');
INSERT INTO xl VALUES (121,373,273,115,772,780,602,44,89,89,'A','Y');
INSERT INTO xl VALUES (122,374,274,115,773,781,603,45,82,82,'C','Y');
INSERT INTO xl VALUES (123,375,272,115,774,0,604,46,78,78,'A','Y');
INSERT INTO xl VALUES (124,239,272,115,775,782,605,47,104,104,'A','Y');
INSERT INTO xl VALUES (125,376,274,115,776,783,606,48,100,100,'C','Y');
INSERT INTO xl VALUES (126,26,273,115,777,784,607,49,59,59,'A','D');
INSERT INTO xl VALUES (127,343,267,115,778,785,608,50,80,80,'A','Y');
INSERT INTO xl VALUES (128,365,267,115,779,786,609,51,111,111,'C','Y');
INSERT INTO xl VALUES (129,377,275,115,780,787,610,52,113,113,'E','Y');
INSERT INTO xl VALUES (130,378,273,115,781,788,611,53,118,118,'E','Y');
INSERT INTO xl VALUES (131,165,273,115,782,789,612,54,114,114,'E','Y');
INSERT INTO xl VALUES (132,240,208,115,783,790,613,55,79,79,'A','Y');
INSERT INTO xl VALUES (133,379,276,115,784,791,0,56,34,34,'E','Y');
INSERT INTO xl VALUES (134,380,217,115,785,0,614,57,57,57,'C','Y');
INSERT INTO xl VALUES (135,381,208,115,786,792,615,58,118,118,'C','Y');
INSERT INTO xl VALUES (136,365,267,120,787,793,616,59,81,81,'C','D');
INSERT INTO xl VALUES (137,364,217,120,788,794,617,60,94,94,'C','D');
INSERT INTO xl VALUES (138,289,210,120,789,795,618,61,111,111,'A','Y');
INSERT INTO xl VALUES (139,298,277,120,790,796,619,62,96,96,'C','Y');
INSERT INTO xl VALUES (140,299,267,120,791,797,620,63,84,84,'C','D');
INSERT INTO xl VALUES (141,365,267,121,792,798,621,64,99,99,'C','D');
INSERT INTO xl VALUES (142,364,217,121,793,799,622,65,99,99,'C','Y');
INSERT INTO xl VALUES (143,299,267,121,794,800,623,66,105,105,'C','Y');
INSERT INTO xl VALUES (144,298,277,121,795,801,624,67,92,92,'C','D');
INSERT INTO xl VALUES (145,289,210,121,796,802,625,68,87,87,'A','D');

--
-- Table structure for table `xli`
--

CREATE TABLE xli (
  YID int(5) NOT NULL auto_increment,
  PID int(4) NOT NULL default '0',
  HID int(4) NOT NULL default '0',
  EID int(4) NOT NULL default '0',
  SHID int(4) default NULL,
  SRID int(4) default NULL,
  SDID int(4) default NULL,
  SMID int(4) default NULL,
  cscore float NOT NULL default '0',
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xli`
--

INSERT INTO xli VALUES (1,322,236,117,746,759,573,30,180,362.52,'A','Z');
INSERT INTO xli VALUES (2,322,236,117,747,760,574,31,277.33,367.33,'C','Z');
INSERT INTO xli VALUES (3,42,27,118,748,761,575,0,246.38,246.38,'A','Y');
INSERT INTO xli VALUES (4,351,260,118,0,762,576,0,100,100,'A','Y');
INSERT INTO xli VALUES (5,270,261,119,0,0,577,0,48,48,'C','Y');
INSERT INTO xli VALUES (6,352,124,119,0,0,578,0,90,90,'C','Y');
INSERT INTO xli VALUES (7,353,124,119,0,0,579,0,66,66,'C','Y');
INSERT INTO xli VALUES (8,6,5,119,749,763,580,0,206.17,206.17,'A','Y');
INSERT INTO xli VALUES (9,179,123,119,750,764,581,32,183.93,183.93,'A','Y');
INSERT INTO xli VALUES (10,354,262,119,751,0,0,0,46.31,46.31,'C','Y');
INSERT INTO xli VALUES (11,355,262,119,752,0,0,0,101.33,101.33,'E','Z');
INSERT INTO xli VALUES (12,356,263,119,753,0,0,0,113.58,113.58,'E','Z');
INSERT INTO xli VALUES (13,357,235,119,754,0,0,0,89.95,89.95,'E','Z');
INSERT INTO xli VALUES (14,274,234,119,755,0,582,0,176.6,176.6,'C','Y');
INSERT INTO xli VALUES (15,17,264,119,0,765,583,0,86,86,'C','Y');
INSERT INTO xli VALUES (16,233,4,119,756,0,584,0,168.42,168.42,'E','Z');
INSERT INTO xli VALUES (17,358,239,119,757,0,0,0,79.15,79.15,'E','Z');
INSERT INTO xli VALUES (18,359,124,119,758,0,0,0,97.7,97.7,'E','Z');
INSERT INTO xli VALUES (19,275,234,119,0,0,585,0,39,39,'A','Y');
INSERT INTO xli VALUES (20,279,177,119,759,0,586,0,163.31,163.31,'A','D');
INSERT INTO xli VALUES (21,360,265,119,0,0,587,0,66,66,'C','Z');
INSERT INTO xli VALUES (22,167,4,119,760,0,0,0,91.69,91.69,'C','D');
INSERT INTO xli VALUES (23,361,261,119,0,766,0,0,24,24,'C','Y');
INSERT INTO xli VALUES (24,362,240,119,0,767,0,0,24,24,'C','Y');
INSERT INTO xli VALUES (25,363,217,122,0,768,588,0,130,130,'E','Y');
INSERT INTO xli VALUES (26,364,266,122,0,0,589,0,75,75,'A','Y');
INSERT INTO xli VALUES (27,365,267,122,0,769,590,0,118,118,'C','Y');
INSERT INTO xli VALUES (28,288,268,122,0,770,591,0,111,111,'C','Y');
INSERT INTO xli VALUES (29,289,210,122,0,771,592,0,73,73,'A','Y');
INSERT INTO xli VALUES (30,366,209,122,0,0,593,0,90,90,'E','Y');
INSERT INTO xli VALUES (31,367,269,122,0,772,594,0,122,122,'E','Y');
INSERT INTO xli VALUES (32,116,278,123,797,803,626,0,211.53,211.53,'C','Y');
INSERT INTO xli VALUES (33,329,72,123,798,804,627,0,196.91,196.91,'C','Y');
INSERT INTO xli VALUES (34,117,112,123,799,805,628,0,209.5,209.5,'C','Y');
INSERT INTO xli VALUES (35,117,112,123,800,806,629,0,180.5,180.5,'A','Y');
INSERT INTO xli VALUES (36,355,124,119,801,0,0,0,96.33,96.33,'E','Y');
INSERT INTO xli VALUES (37,357,263,119,802,0,0,0,84.95,84.95,'E','Y');
INSERT INTO xli VALUES (38,356,263,119,803,0,0,0,109.58,109.58,'E','Y');
INSERT INTO xli VALUES (39,233,3,119,804,0,630,0,163.42,163.42,'E','Y');
INSERT INTO xli VALUES (40,358,239,119,805,0,0,0,74.15,74.15,'E','Y');
INSERT INTO xli VALUES (41,359,124,119,806,0,0,0,92.7,92.7,'E','Y');
INSERT INTO xli VALUES (42,207,140,118,807,807,631,0,173.28,173.28,'A','Z');
INSERT INTO xli VALUES (43,382,279,118,808,808,632,0,98.04,98.04,'A','Y');
INSERT INTO xli VALUES (44,332,146,118,0,809,633,0,45,45,'A','Y');
INSERT INTO xli VALUES (45,342,173,124,809,810,634,0,150.89,150.89,'A','Y');
INSERT INTO xli VALUES (46,12,194,124,810,811,635,0,139.03,139.03,'A','Y');
INSERT INTO xli VALUES (47,383,280,127,0,0,636,0,57,57,'A','Y');
INSERT INTO xli VALUES (48,384,281,127,0,0,637,0,57,57,'A','Y');
INSERT INTO xli VALUES (49,385,282,127,0,0,638,0,90,90,'C','Y');
INSERT INTO xli VALUES (50,386,283,127,811,0,639,0,140.19,140.19,'D','Z');
INSERT INTO xli VALUES (51,279,239,125,812,812,640,0,194.9,194.9,'A','Z');
INSERT INTO xli VALUES (52,387,284,125,0,813,641,0,118,118,'E','Z');
INSERT INTO xli VALUES (53,167,3,125,813,814,642,69,190.3,190.3,'C','Z');
INSERT INTO xli VALUES (54,6,5,125,814,815,0,70,102.3,102.3,'A','Z');
INSERT INTO xli VALUES (55,340,196,125,815,816,643,0,167,167,'C','Z');
INSERT INTO xli VALUES (56,388,225,125,816,0,644,0,149,149,'A','Z');
INSERT INTO xli VALUES (57,360,265,125,817,0,645,0,151,151,'C','Z');
INSERT INTO xli VALUES (58,341,240,125,818,817,646,0,209.8,209.8,'E','Z');
INSERT INTO xli VALUES (59,226,240,125,819,818,647,0,167.2,167.2,'C','Z');
INSERT INTO xli VALUES (60,389,3,125,820,819,648,0,209.5,209.5,'C','Z');
INSERT INTO xli VALUES (61,339,153,125,821,820,649,0,190.8,190.8,'C','Z');
INSERT INTO xli VALUES (62,279,177,125,822,821,650,0,179.9,179.9,'A','Z');
INSERT INTO xli VALUES (63,279,240,125,823,822,651,0,179.9,179.9,'A','Z');
INSERT INTO xli VALUES (64,279,240,125,824,823,652,0,182.69,182.69,'A','Y');
INSERT INTO xli VALUES (65,167,3,125,825,824,653,0,196.3,196.3,'C','Y');
INSERT INTO xli VALUES (66,6,5,125,826,825,0,0,110.13,110.13,'A','D');
INSERT INTO xli VALUES (67,340,196,125,827,826,654,0,167.9,167.9,'C','Y');
INSERT INTO xli VALUES (68,388,225,125,828,0,655,0,156.2,156.2,'A','Y');
INSERT INTO xli VALUES (69,360,265,125,829,0,656,0,159.1,159.1,'C','Y');
INSERT INTO xli VALUES (70,341,240,125,830,827,657,0,211.78,211.78,'E','Y');
INSERT INTO xli VALUES (71,226,240,125,831,828,658,0,175.12,175.12,'C','Y');
INSERT INTO xli VALUES (72,339,153,125,832,829,659,0,192.78,192.78,'C','Y');
INSERT INTO xli VALUES (73,360,265,119,0,0,660,0,75,75,'C','D');
INSERT INTO xli VALUES (74,275,235,126,833,830,661,0,190.76,190.76,'A','Y');
INSERT INTO xli VALUES (75,390,235,126,834,831,662,0,218.79,218.79,'E','Y');
INSERT INTO xli VALUES (76,17,234,126,835,832,663,0,134.05,134.05,'A','Y');
INSERT INTO xli VALUES (77,391,209,128,836,0,0,71,110,110,'C','Z');
INSERT INTO xli VALUES (78,392,277,128,837,0,0,72,145,145,'E','Z');
INSERT INTO xli VALUES (79,365,267,128,838,0,0,73,110,110,'C','Z');
INSERT INTO xli VALUES (80,393,194,130,839,833,664,0,190.78,190.78,'C','Y');
INSERT INTO xli VALUES (81,394,285,130,840,0,0,0,81.38,81.38,'A','Y');
INSERT INTO xli VALUES (82,395,282,130,841,834,665,0,162.43,162.43,'A','Y');
INSERT INTO xli VALUES (83,396,286,130,842,835,666,0,203.94,203.94,'C','Y');
INSERT INTO xli VALUES (84,397,286,130,843,0,0,0,83.22,83.22,'C','Y');
INSERT INTO xli VALUES (85,398,116,130,844,836,667,0,208.16,208.16,'E','Y');
INSERT INTO xli VALUES (86,6,282,130,845,837,668,0,171.12,171.12,'A','Y');
INSERT INTO xli VALUES (87,399,22,130,846,838,669,0,186.84,186.84,'C','Y');
INSERT INTO xli VALUES (88,400,287,130,847,839,670,0,153.57,153.57,'A','Y');
INSERT INTO xli VALUES (89,401,286,130,848,840,0,0,124.41,124.41,'A','Z');
INSERT INTO xli VALUES (90,30,288,132,849,841,671,0,160.7,160.7,'E','Z');
INSERT INTO xli VALUES (91,402,289,132,850,842,672,0,209.7,209.7,'E','Z');
INSERT INTO xli VALUES (92,403,289,132,851,843,673,0,180.9,180.9,'E','Z');
INSERT INTO xli VALUES (93,404,290,134,852,844,674,0,189.47,189.47,'A','Y');
INSERT INTO xli VALUES (94,405,291,134,853,845,675,0,215.38,215.38,'E','Y');
INSERT INTO xli VALUES (95,406,292,134,854,846,676,0,174.34,174.34,'C','Y');
INSERT INTO xli VALUES (96,407,220,134,855,847,677,0,168.5,168.5,'A','Y');
INSERT INTO xli VALUES (97,408,293,134,856,848,678,0,167.81,167.81,'C','Y');
INSERT INTO xli VALUES (98,409,294,135,857,849,679,0,190.62,190.62,'C','Y');
INSERT INTO xli VALUES (99,102,295,135,858,850,680,0,144.96,144.96,'C','Y');
INSERT INTO xli VALUES (100,404,290,135,859,851,681,0,184.09,184.09,'A','Y');
INSERT INTO xli VALUES (101,408,293,135,860,0,682,0,149.06,149.06,'C','Y');
INSERT INTO xli VALUES (102,409,290,135,861,0,683,0,128.72,128.72,'A','Y');
INSERT INTO xli VALUES (103,407,296,135,862,0,0,0,79.1,79.1,'E','Y');
INSERT INTO xli VALUES (104,410,297,132,867,856,688,0,189.25,189.25,'E','Y');
INSERT INTO xli VALUES (105,411,289,132,868,857,689,0,198.56,198.56,'E','Y');
INSERT INTO xli VALUES (106,391,209,128,0,858,690,0,89,89,'C','Y');
INSERT INTO xli VALUES (107,392,277,128,0,859,691,0,59,59,'E','Y');
INSERT INTO xli VALUES (108,365,267,128,0,860,692,0,120,120,'C','Y');
INSERT INTO xli VALUES (109,30,288,132,869,861,693,0,165.47,165.47,'E','Y');
INSERT INTO xli VALUES (110,402,289,132,870,862,694,0,217.47,217.47,'E','Y');
INSERT INTO xli VALUES (111,403,289,132,871,863,695,0,188.19,188.19,'E','Y');

--
-- Table structure for table `xlii`
--

CREATE TABLE xlii (
  YID int(5) NOT NULL auto_increment,
  PID int(4) NOT NULL default '0',
  HID int(4) NOT NULL default '0',
  EID int(4) NOT NULL default '0',
  SHID int(4) default NULL,
  SRID int(4) default NULL,
  SDID int(4) default NULL,
  SMID int(4) default NULL,
  SBID int(4) default NULL,
  cscore float NOT NULL default '0',
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xlii`
--

INSERT INTO xlii VALUES (1,322,236,136,865,854,686,76,0,273.59,363.59,'A','Z');
INSERT INTO xlii VALUES (2,322,236,136,866,855,687,77,1,274.79,454.79,'A','Z');
INSERT INTO xlii VALUES (3,210,228,143,872,0,696,0,0,169.06,169.06,'A','D');
INSERT INTO xlii VALUES (4,210,228,143,873,864,697,0,0,182.44,182.44,'A','Y');
INSERT INTO xlii VALUES (5,345,258,143,874,865,698,0,0,215.56,215.56,'E','Y');
INSERT INTO xlii VALUES (6,380,258,143,875,866,699,0,0,242.03,242.03,'E','Y');
INSERT INTO xlii VALUES (7,336,298,143,876,867,700,0,0,157.16,157.16,'A','Y');
INSERT INTO xlii VALUES (8,336,298,143,877,868,701,0,0,130.85,130.85,'A','D');
INSERT INTO xlii VALUES (9,317,258,143,878,869,702,0,0,125.93,125.93,'C','D');
INSERT INTO xlii VALUES (10,317,258,143,879,870,703,0,0,179.07,179.07,'C','Y');
INSERT INTO xlii VALUES (11,209,299,143,880,871,704,0,0,130.07,130.07,'A','D');
INSERT INTO xlii VALUES (12,209,299,143,881,872,705,0,0,139.9,139.9,'A','Y');
INSERT INTO xlii VALUES (13,206,258,143,882,873,706,0,0,149.62,149.62,'A','Y');
INSERT INTO xlii VALUES (14,206,258,143,883,0,707,0,0,111.9,111.9,'A','D');
INSERT INTO xlii VALUES (15,208,258,143,884,874,708,0,0,123.97,123.97,'A','Y');
INSERT INTO xlii VALUES (16,208,258,143,0,875,709,0,0,35,35,'A','D');
INSERT INTO xlii VALUES (17,412,188,143,885,876,710,0,0,163.97,163.97,'C','D');
INSERT INTO xlii VALUES (18,412,188,143,886,877,711,0,0,171.34,171.34,'C','Y');
INSERT INTO xlii VALUES (19,413,228,143,0,878,712,0,0,85,85,'A','Y');
INSERT INTO xlii VALUES (20,413,228,143,0,879,713,0,0,84,84,'A','D');
INSERT INTO xlii VALUES (21,399,300,149,887,880,714,0,0,177.6,177.6,'A','Y');
INSERT INTO xlii VALUES (22,393,301,149,888,881,715,78,2,188.5,188.5,'C','Y');
INSERT INTO xlii VALUES (23,414,302,149,889,882,716,0,0,204.3,204.3,'C','Y');
INSERT INTO xlii VALUES (24,383,280,149,890,883,717,0,0,200.25,200.25,'A','Y');
INSERT INTO xlii VALUES (25,399,301,149,891,884,718,0,0,173.8,173.8,'A','D');
INSERT INTO xlii VALUES (26,415,143,149,892,885,719,0,0,176.4,176.4,'A','Y');
INSERT INTO xlii VALUES (27,51,303,149,893,886,720,0,0,157.1,157.1,'C','Y');
INSERT INTO xlii VALUES (28,416,303,149,894,887,721,0,0,185.3,185.3,'A','Y');
INSERT INTO xlii VALUES (29,417,304,150,895,888,0,0,0,139.5,139.5,'C','Y');
INSERT INTO xlii VALUES (30,418,305,150,896,889,0,0,0,122.3,122.3,'C','Y');
INSERT INTO xlii VALUES (31,11,241,150,897,890,0,0,0,117.5,117.5,'C','Y');
INSERT INTO xlii VALUES (32,335,249,150,898,0,0,0,0,98,98,'E','Y');
INSERT INTO xlii VALUES (33,312,306,150,899,891,0,0,0,150,150,'E','Y');
INSERT INTO xlii VALUES (34,419,307,150,900,0,0,0,0,87.4,87.4,'C','Y');
INSERT INTO xlii VALUES (35,420,306,150,901,0,0,0,0,90.5,90.5,'E','Y');
INSERT INTO xlii VALUES (36,421,306,150,902,892,0,0,0,81.5,81.5,'C','Y');
INSERT INTO xlii VALUES (37,360,308,147,903,0,0,0,0,89.23,89.23,'C','Y');
INSERT INTO xlii VALUES (38,422,306,147,904,0,0,0,0,88.11,88.11,'C','Y');
INSERT INTO xlii VALUES (39,423,308,147,905,0,0,0,0,87.11,87.11,'C','Y');
INSERT INTO xlii VALUES (40,17,234,148,906,893,722,0,0,169.31,169.31,'A','Y');
INSERT INTO xlii VALUES (41,424,235,148,907,894,723,0,0,214.18,214.18,'E','Y');
INSERT INTO xlii VALUES (42,425,235,148,908,895,724,0,0,205.7,205.7,'E','Y');
INSERT INTO xlii VALUES (43,275,235,148,909,896,725,0,0,187.11,187.11,'A','Y');
INSERT INTO xlii VALUES (44,331,235,148,910,897,0,0,0,104.36,104.36,'E','Y');
INSERT INTO xlii VALUES (45,400,309,148,911,898,0,0,0,107.8,107.8,'C','Y');
INSERT INTO xlii VALUES (46,274,234,148,912,899,726,0,0,204.76,204.76,'A','Y');
INSERT INTO xlii VALUES (47,423,234,148,913,900,727,0,0,172.42,172.42,'A','Y');
INSERT INTO xlii VALUES (48,17,264,148,914,901,728,0,0,163,163,'A','D');
INSERT INTO xlii VALUES (49,22,310,153,0,0,0,79,0,0,30,'A','Y');
INSERT INTO xlii VALUES (50,426,298,153,0,0,0,80,0,0,12,'A','Y');

--
-- Table structure for table `xliii`
--

CREATE TABLE xliii (
  YID int(5) NOT NULL auto_increment,
  PID int(4) NOT NULL default '0',
  HID int(4) NOT NULL default '0',
  EID int(4) NOT NULL default '0',
  SHID int(4) default NULL,
  SRID int(4) default NULL,
  SDID int(4) default NULL,
  SMID int(4) default NULL,
  SBID int(4) default NULL,
  cscore float NOT NULL default '0',
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xliii`
--

INSERT INTO xliii VALUES (1,427,311,158,0,902,729,0,0,63,63,'A','Y');
INSERT INTO xliii VALUES (2,428,312,158,915,903,730,0,0,185.7,185.7,'C','Y');
INSERT INTO xliii VALUES (3,429,313,158,916,904,731,0,0,159.19,159.19,'A','Y');
INSERT INTO xliii VALUES (4,430,314,158,917,905,732,81,0,171.5,171.5,'C','Y');
INSERT INTO xliii VALUES (5,431,312,158,918,906,733,0,0,179,179,'C','Y');
INSERT INTO xliii VALUES (6,432,311,158,919,907,734,0,0,194.6,194.6,'E','Y');
INSERT INTO xliii VALUES (7,433,315,158,920,908,735,0,0,244,244,'E','Y');
INSERT INTO xliii VALUES (8,434,315,158,921,909,736,0,0,200.3,200.3,'C','Y');
INSERT INTO xliii VALUES (9,435,314,158,922,910,737,0,0,96.7,96.7,'A','Y');
INSERT INTO xliii VALUES (10,394,314,158,923,911,738,82,3,172.57,172.57,'A','Y');
INSERT INTO xliii VALUES (11,434,316,158,924,912,739,83,4,203.75,203.75,'E','Y');
INSERT INTO xliii VALUES (12,426,298,162,0,0,0,84,5,0,30,'A','Y');
INSERT INTO xliii VALUES (13,22,258,162,0,0,0,85,0,0,18,'A','Y');
INSERT INTO xliii VALUES (14,265,317,162,0,0,0,86,0,0,18,'A','Y');
INSERT INTO xliii VALUES (15,426,298,162,0,0,0,87,0,0,6,'A','Y');
INSERT INTO xliii VALUES (16,265,317,162,0,0,0,88,0,0,12,'A','Y');
INSERT INTO xliii VALUES (17,226,6,161,925,913,740,0,0,202,202,'C','Y');
INSERT INTO xliii VALUES (18,436,318,161,926,914,741,0,0,207.6,207.6,'A','Y');

--
-- Table structure for table `xliv`
--

CREATE TABLE xliv (
  YID int(5) NOT NULL auto_increment,
  PID int(4) NOT NULL default '0',
  HID int(4) NOT NULL default '0',
  EID int(4) NOT NULL default '0',
  SHID int(4) default NULL,
  SRID int(4) default NULL,
  SDID int(4) default NULL,
  SMID int(4) default NULL,
  SBID int(4) default NULL,
  cscore float NOT NULL default '0',
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xliv`
--

INSERT INTO xliv VALUES (1,437,319,164,927,915,742,0,0,186.56,186.56,'E','Y');
INSERT INTO xliv VALUES (2,438,320,164,928,916,743,0,0,176.48,176.48,'C','Y');
INSERT INTO xliv VALUES (3,439,321,164,929,917,744,0,0,180.89,180.89,'E','Y');
INSERT INTO xliv VALUES (4,440,322,164,930,918,745,0,0,215.49,215.49,'E','Y');
INSERT INTO xliv VALUES (5,441,323,164,931,919,746,0,0,180.82,180.82,'A','Y');
INSERT INTO xliv VALUES (6,442,324,164,932,920,747,0,0,124.94,124.94,'C','Y');
INSERT INTO xliv VALUES (7,443,325,164,933,921,748,0,0,163.54,163.54,'C','Y');
INSERT INTO xliv VALUES (8,444,320,164,934,922,749,0,0,158.22,158.22,'C','Y');
INSERT INTO xliv VALUES (9,445,326,164,935,923,750,0,0,217.49,217.49,'A','Y');
INSERT INTO xliv VALUES (10,445,326,164,936,924,751,0,0,217.65,217.65,'C','Y');
INSERT INTO xliv VALUES (11,446,327,166,0,925,752,0,0,70,70,'C','Y');
INSERT INTO xliv VALUES (12,298,328,166,0,926,753,0,0,108,108,'C','Y');
INSERT INTO xliv VALUES (13,164,272,166,0,927,754,0,0,69,69,'A','Y');
INSERT INTO xliv VALUES (14,447,329,167,937,928,755,0,0,191.7,191.7,'C','Z');
INSERT INTO xliv VALUES (15,447,329,167,938,929,756,0,0,210,210,'C','Z');
INSERT INTO xliv VALUES (16,447,329,167,939,930,757,0,0,196,196,'A','Z');

--
-- Table structure for table `xlv`
--

CREATE TABLE xlv (
  YID int(5) NOT NULL auto_increment,
  PID int(4) NOT NULL default '0',
  HID int(4) NOT NULL default '0',
  EID int(4) NOT NULL default '0',
  SHID int(4) default NULL,
  SRID int(4) default NULL,
  SDID int(4) default NULL,
  SMID int(4) default NULL,
  SBID int(4) default NULL,
  cscore float NOT NULL default '0',
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xlv`
--

INSERT INTO xlv VALUES (1,447,329,168,940,931,758,0,0,191.7,191.7,'C','D');
INSERT INTO xlv VALUES (2,447,329,168,941,932,759,0,0,210,210,'C','Y');
INSERT INTO xlv VALUES (3,447,329,168,942,933,760,0,0,196,196,'A','Y');
INSERT INTO xlv VALUES (4,447,329,170,943,934,761,0,0,179.44,179.44,'A','Y');
INSERT INTO xlv VALUES (5,447,329,170,944,935,762,0,0,201.73,201.73,'C','Y');
INSERT INTO xlv VALUES (6,447,330,170,945,936,763,0,0,202.79,202.79,'C','Y');
INSERT INTO xlv VALUES (7,445,326,170,946,937,764,0,0,196.13,196.13,'C','Y');
INSERT INTO xlv VALUES (8,445,326,170,947,938,765,0,0,156.91,156.91,'C','D');
INSERT INTO xlv VALUES (9,448,331,170,948,939,766,0,0,201.3,201.3,'C','Y');
INSERT INTO xlv VALUES (10,448,331,170,949,940,767,0,0,197.04,197.04,'C','D');
INSERT INTO xlv VALUES (11,449,332,172,950,941,768,0,6,151.47,151.47,'C','Y');
INSERT INTO xlv VALUES (12,450,333,172,951,942,769,0,7,186.78,186.78,'C','Y');
INSERT INTO xlv VALUES (13,451,333,172,952,943,770,0,8,161.91,161.91,'C','Y');
INSERT INTO xlv VALUES (14,452,333,172,953,944,771,0,9,172.53,172.53,'C','Y');
INSERT INTO xlv VALUES (15,453,334,173,954,945,772,0,0,143,143,'C','Y');
INSERT INTO xlv VALUES (16,454,335,173,955,946,773,0,0,175.94,175.94,'C','Y');
INSERT INTO xlv VALUES (17,455,336,173,956,947,774,0,0,144.75,144.75,'C','Y');
INSERT INTO xlv VALUES (18,456,337,173,957,948,775,0,0,156.57,156.57,'C','Y');
INSERT INTO xlv VALUES (19,450,207,173,958,949,776,0,0,174.15,174.15,'C','Y');
INSERT INTO xlv VALUES (20,457,338,173,959,950,777,0,0,117.9,117.9,'C','Y');
INSERT INTO xlv VALUES (21,454,335,174,960,951,778,0,0,168.34,168.34,'C','Y');
INSERT INTO xlv VALUES (22,457,338,174,961,952,779,0,0,118.62,118.62,'C','Y');
INSERT INTO xlv VALUES (23,455,336,174,962,953,780,0,0,178.81,178.81,'C','Y');
INSERT INTO xlv VALUES (24,456,339,174,963,954,781,0,0,219,219,'E','Y');
INSERT INTO xlv VALUES (25,191,207,174,964,955,782,0,0,150.37,150.37,'A','Y');
INSERT INTO xlv VALUES (26,415,340,175,965,956,783,0,0,172.99,172.99,'A','Y');
INSERT INTO xlv VALUES (27,458,341,175,966,957,784,0,0,195.99,195.99,'C','Y');
INSERT INTO xlv VALUES (28,427,311,176,967,958,785,0,0,207.81,207.81,'C','Y');
INSERT INTO xlv VALUES (29,427,311,176,968,959,786,0,0,142.75,142.75,'A','Y');
INSERT INTO xlv VALUES (30,430,312,176,969,960,787,0,0,198.06,198.06,'C','Y');
INSERT INTO xlv VALUES (31,429,313,176,970,961,788,0,0,145.63,145.63,'A','Y');
INSERT INTO xlv VALUES (32,430,312,176,0,962,789,0,0,109,109,'A','Y');
INSERT INTO xlv VALUES (33,409,311,176,971,963,790,0,0,117.56,117.56,'C','Y');
INSERT INTO xlv VALUES (34,429,313,176,972,964,791,0,0,132.88,132.88,'A','D');
INSERT INTO xlv VALUES (35,428,312,176,973,965,792,89,10,167.75,167.75,'A','Y');
INSERT INTO xlv VALUES (36,427,311,176,974,966,793,0,0,251.56,251.56,'E','Y');
INSERT INTO xlv VALUES (37,459,312,176,975,967,794,0,0,183.22,183.22,'C','Y');

--
-- Table structure for table `xlvi`
--

CREATE TABLE xlvi (
  YID int(5) NOT NULL auto_increment,
  PID int(4) NOT NULL default '0',
  HID int(4) NOT NULL default '0',
  EID int(4) NOT NULL default '0',
  SHID int(4) default NULL,
  SRID int(4) default NULL,
  SDID int(4) default NULL,
  SMID int(4) default NULL,
  SBID int(4) default NULL,
  cscore float NOT NULL default '0',
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xlvi`
--

INSERT INTO xlvi VALUES (38,171,73,179,976,968,795,0,0,197.03,197.03,'C','Y');
INSERT INTO xlvi VALUES (39,445,326,179,0,0,796,0,0,48,48,'A','Y');
INSERT INTO xlvi VALUES (40,447,329,179,977,969,797,0,0,177.13,177.13,'A','Y');
INSERT INTO xlvi VALUES (41,460,342,179,978,970,798,0,0,191.9,191.9,'C','Y');
INSERT INTO xlvi VALUES (42,461,329,179,979,971,799,0,0,168.56,168.56,'E','Y');
INSERT INTO xlvi VALUES (43,462,326,179,980,0,800,90,11,170.65,170.65,'C','Y');
INSERT INTO xlvi VALUES (44,463,343,179,981,972,801,0,0,166.07,166.07,'C','Y');
INSERT INTO xlvi VALUES (45,399,344,180,982,973,802,91,12,169.18,169.18,'A','Y');
INSERT INTO xlvi VALUES (46,415,340,180,983,974,803,92,13,165.06,165.06,'A','Y');
INSERT INTO xlvi VALUES (47,458,345,180,0,975,804,93,14,88,88,'A','Y');
INSERT INTO xlvi VALUES (48,56,303,180,984,976,805,94,15,187.75,187.75,'A','Y');
INSERT INTO xlvi VALUES (49,383,280,180,985,977,806,95,16,185.88,185.88,'A','Y');
INSERT INTO xlvi VALUES (50,384,346,180,0,978,807,96,17,56,56,'A','Y');
INSERT INTO xlvi VALUES (51,464,309,180,0,979,808,97,18,62,62,'A','Y');
INSERT INTO xlvi VALUES (52,465,347,180,986,980,809,98,19,179.68,179.68,'A','Y');
INSERT INTO xlvi VALUES (53,57,348,180,987,981,810,99,20,193.34,193.34,'C','Y');
INSERT INTO xlvi VALUES (54,466,349,180,988,982,811,100,21,205.37,205.37,'C','Y');
INSERT INTO xlvi VALUES (55,358,6,180,989,983,812,101,22,203.34,203.34,'E','Y');
INSERT INTO xlvi VALUES (56,467,333,181,990,984,813,0,0,186.25,186.25,'C','Y');
INSERT INTO xlvi VALUES (57,450,333,181,991,985,814,0,0,189.81,189.81,'C','Y');
INSERT INTO xlvi VALUES (58,468,350,181,992,986,815,0,0,140.25,140.25,'C','Y');
INSERT INTO xlvi VALUES (59,191,207,181,993,987,816,0,0,144.88,144.88,'A','Y');
INSERT INTO xlvi VALUES (60,449,332,181,994,988,817,0,0,148.59,148.59,'C','Y');
INSERT INTO xlvi VALUES (61,469,351,181,995,989,818,0,0,199.82,199.82,'E','Y');
INSERT INTO xlvi VALUES (62,470,352,181,996,990,819,0,0,150.04,150.04,'E','Y');

--
-- Table structure for table `xlvii`
--

CREATE TABLE xlvii (
  YID int(5) NOT NULL auto_increment,
  PID int(4) NOT NULL default '0',
  HID int(4) NOT NULL default '0',
  EID int(4) NOT NULL default '0',
  SHID int(4) default NULL,
  SRID int(4) default NULL,
  SDID int(4) default NULL,
  SMID int(4) default NULL,
  SBID int(4) default NULL,
  cscore float NOT NULL default '0',
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xlvii`
--


--
-- Table structure for table `xxv`
--

CREATE TABLE xxv (
  YID int(5) NOT NULL auto_increment,
  PID int(3) NOT NULL default '0',
  HID int(3) NOT NULL default '0',
  EID int(3) NOT NULL default '0',
  SHID int(3) default NULL,
  SRID int(3) default NULL,
  SDID int(3) default NULL,
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xxv`
--

INSERT INTO xxv VALUES (1,83,103,61,376,380,0,174,'A','Y');
INSERT INTO xxv VALUES (2,170,40,61,377,381,0,181,'B','Y');
INSERT INTO xxv VALUES (3,78,46,61,378,382,0,172,'C','D');
INSERT INTO xxv VALUES (4,83,103,61,379,383,0,90,'A','Z');
INSERT INTO xxv VALUES (5,78,46,59,380,384,401,175,'C','Y');
INSERT INTO xxv VALUES (6,25,99,59,381,385,402,171,'B','Y');
INSERT INTO xxv VALUES (7,200,118,59,382,386,0,95.5,'E','Y');
INSERT INTO xxv VALUES (8,87,157,59,397,401,0,205,'B','N');

--
-- Table structure for table `xxxix`
--

CREATE TABLE xxxix (
  YID int(5) NOT NULL auto_increment,
  PID int(3) NOT NULL default '0',
  HID int(3) NOT NULL default '0',
  EID int(3) NOT NULL default '0',
  SHID int(3) default NULL,
  SRID int(3) default NULL,
  SDID int(3) default NULL,
  SMID int(3) default NULL,
  cscore float NOT NULL default '0',
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xxxix`
--

INSERT INTO xxxix VALUES (1,114,74,74,521,520,448,0,111.5,201.5,'D','Y');
INSERT INTO xxxix VALUES (2,114,74,74,522,521,449,0,97,175,'C','Y');
INSERT INTO xxxix VALUES (3,114,74,74,523,522,450,0,116,155,'B','Y');
INSERT INTO xxxix VALUES (4,116,199,74,524,523,451,0,110,137,'D','Y');
INSERT INTO xxxix VALUES (5,116,74,74,525,524,452,0,93.5,168.5,'D','D');
INSERT INTO xxxix VALUES (6,171,73,74,526,525,453,0,105,141,'D','Y');
INSERT INTO xxxix VALUES (7,171,73,74,527,526,454,0,95.5,146.5,'B','Y');
INSERT INTO xxxix VALUES (8,117,112,74,528,527,455,0,102,177,'D','Y');
INSERT INTO xxxix VALUES (9,117,112,74,529,528,456,0,89,179,'B','D');
INSERT INTO xxxix VALUES (10,276,112,74,530,529,457,0,55.5,145.5,'D','Y');
INSERT INTO xxxix VALUES (11,277,112,74,531,530,458,0,54,93,'D','Y');
INSERT INTO xxxix VALUES (12,174,199,74,532,531,459,0,102,114,'D','Y');
INSERT INTO xxxix VALUES (13,278,112,74,533,532,460,0,91.5,181.5,'F','Y');
INSERT INTO xxxix VALUES (14,247,200,76,534,0,0,0,77.5,77.5,'E','Y');
INSERT INTO xxxix VALUES (15,251,175,76,535,533,0,0,81.5,81.5,'C','D');
INSERT INTO xxxix VALUES (16,246,201,76,536,0,0,0,59,59,'C','Z');
INSERT INTO xxxix VALUES (17,255,202,76,537,0,0,0,48,48,'C','Y');
INSERT INTO xxxix VALUES (18,279,177,76,538,534,0,0,80.5,80.5,'C','D');
INSERT INTO xxxix VALUES (19,280,203,76,539,0,0,0,70,70,'C','Y');
INSERT INTO xxxix VALUES (20,17,203,76,540,535,0,0,121.5,121.5,'C','Y');
INSERT INTO xxxix VALUES (21,281,177,76,541,536,0,0,69.5,69.5,'C','Y');
INSERT INTO xxxix VALUES (22,275,204,77,542,0,0,0,76,76,'C','D');
INSERT INTO xxxix VALUES (23,181,124,77,543,0,0,0,73,73,'A','Y');
INSERT INTO xxxix VALUES (24,274,162,77,544,0,0,0,79.5,79.5,'A','D');
INSERT INTO xxxix VALUES (25,180,124,77,545,0,0,0,45.5,45.5,'C','Y');
INSERT INTO xxxix VALUES (26,251,175,77,546,0,0,0,76.5,76.5,'C','D');
INSERT INTO xxxix VALUES (27,279,177,77,547,0,0,0,87,87,'A','Y');
INSERT INTO xxxix VALUES (28,282,124,77,548,0,0,0,72.5,72.5,'C','Y');
INSERT INTO xxxix VALUES (29,283,123,77,549,0,0,0,85,85,'A','Y');
INSERT INTO xxxix VALUES (30,116,205,78,550,537,0,0,115.5,115.5,'C','D');
INSERT INTO xxxix VALUES (31,171,73,78,551,538,0,0,128.5,128.5,'C','Y');
INSERT INTO xxxix VALUES (32,174,73,78,552,539,0,0,107.5,107.5,'C','Y');
INSERT INTO xxxix VALUES (33,25,27,75,553,540,0,0,131,131,'A','Z');
INSERT INTO xxxix VALUES (34,42,27,75,554,541,0,0,158,158,'A','D');
INSERT INTO xxxix VALUES (35,284,96,79,555,542,461,0,97.5,187.5,'C','Y');
INSERT INTO xxxix VALUES (36,11,96,79,556,543,462,0,97,157,'C','Y');
INSERT INTO xxxix VALUES (37,285,96,79,557,544,463,0,103.5,193.5,'C','Y');
INSERT INTO xxxix VALUES (38,15,173,79,558,545,464,0,125,194,'A','Y');
INSERT INTO xxxix VALUES (39,286,206,79,559,546,465,0,118,208,'A','Y');
INSERT INTO xxxix VALUES (40,191,207,80,560,547,0,0,104,104,'C','N');
INSERT INTO xxxix VALUES (41,287,208,80,561,548,0,0,120,120,'C','Y');
INSERT INTO xxxix VALUES (42,288,209,80,562,549,0,0,100.5,100.5,'C','Y');
INSERT INTO xxxix VALUES (43,289,210,80,563,550,0,0,115,115,'C','Y');
INSERT INTO xxxix VALUES (44,290,208,80,564,551,0,0,103,103,'C','Y');
INSERT INTO xxxix VALUES (45,232,96,79,565,552,466,0,76.5,160.5,'F','Y');
INSERT INTO xxxix VALUES (46,98,64,81,566,553,0,0,106,106,'B','Z');
INSERT INTO xxxix VALUES (47,246,201,76,567,0,0,0,49,49,'C','N');
INSERT INTO xxxix VALUES (48,27,18,82,568,554,0,0,165,165,'A','D');
INSERT INTO xxxix VALUES (49,205,16,82,569,555,0,0,117,117,'A','D');
INSERT INTO xxxix VALUES (50,26,145,82,570,556,0,0,162,162,'A','Y');
INSERT INTO xxxix VALUES (51,83,103,84,571,557,0,0,125,125,'D','Z');
INSERT INTO xxxix VALUES (52,78,195,84,572,558,0,0,125,125,'A','Z');
INSERT INTO xxxix VALUES (53,116,205,83,573,559,467,0,116,206,'C','Y');
INSERT INTO xxxix VALUES (54,291,211,83,574,560,468,0,99,174,'D','Y');
INSERT INTO xxxix VALUES (55,292,211,83,575,561,469,0,101,176,'D','Z');
INSERT INTO xxxix VALUES (56,293,212,83,576,562,470,0,113,203,'F','Z');
INSERT INTO xxxix VALUES (57,294,213,83,577,563,471,0,69,147,'D','Y');
INSERT INTO xxxix VALUES (58,117,112,83,578,564,472,0,108,198,'B','Y');
INSERT INTO xxxix VALUES (59,117,112,83,579,565,473,0,109.5,199.5,'A','Y');
INSERT INTO xxxix VALUES (60,276,213,83,580,566,474,0,118.5,193.5,'C','Y');
INSERT INTO xxxix VALUES (61,291,212,83,581,567,475,0,123,213,'C','Y');
INSERT INTO xxxix VALUES (62,25,40,84,582,568,476,2,182,362,'A','Z');
INSERT INTO xxxix VALUES (63,292,211,83,583,569,477,0,91,166,'D','Y');
INSERT INTO xxxix VALUES (64,293,212,83,584,570,478,0,56,134,'D','N');
INSERT INTO xxxix VALUES (65,295,214,85,585,571,0,3,123.5,123.5,'C','Y');
INSERT INTO xxxix VALUES (66,296,211,85,586,572,0,4,124,124,'A','Y');
INSERT INTO xxxix VALUES (67,297,27,85,587,573,0,5,154,154,'A','Y');
INSERT INTO xxxix VALUES (68,44,215,85,588,574,0,6,150,150,'E','Y');
INSERT INTO xxxix VALUES (69,42,27,85,589,575,0,7,181,181,'A','D');
INSERT INTO xxxix VALUES (70,191,207,91,590,576,479,8,128,206,'C','Y');
INSERT INTO xxxix VALUES (71,298,216,91,591,577,480,9,118,187,'E','N');
INSERT INTO xxxix VALUES (72,289,210,91,592,578,481,10,108,186,'C','D');
INSERT INTO xxxix VALUES (73,299,217,91,593,579,482,11,96,177,'C','Y');
INSERT INTO xxxix VALUES (74,300,209,91,594,0,483,12,74.5,143.5,'C','Y');
INSERT INTO xxxix VALUES (75,98,64,81,595,580,0,0,108,108,'D','Y');
INSERT INTO xxxix VALUES (76,103,218,81,596,581,0,0,125,125,'B','Y');
INSERT INTO xxxix VALUES (77,301,10,81,597,582,0,0,83.5,83.5,'D','Y');
INSERT INTO xxxix VALUES (78,302,64,81,598,583,0,0,47.5,47.5,'D','Y');
INSERT INTO xxxix VALUES (79,303,219,81,599,584,0,0,91.5,91.5,'B','Y');
INSERT INTO xxxix VALUES (80,304,220,81,600,585,0,0,90.5,90.5,'D','Y');
INSERT INTO xxxix VALUES (81,305,218,81,601,586,0,0,98,98,'D','Y');
INSERT INTO xxxix VALUES (82,95,9,81,602,587,0,0,99,99,'B','Y');
INSERT INTO xxxix VALUES (83,306,219,81,603,588,0,0,75.5,75.5,'B','Y');
INSERT INTO xxxix VALUES (84,307,221,81,604,589,0,0,124,124,'B','Y');
INSERT INTO xxxix VALUES (85,25,27,93,605,590,0,13,143,143,'A','Y');
INSERT INTO xxxix VALUES (86,42,27,93,606,591,0,14,184,184,'A','D');
INSERT INTO xxxix VALUES (87,42,90,90,607,592,0,15,208,208,'A','Y');
INSERT INTO xxxix VALUES (88,308,211,90,608,593,0,16,162,162,'A','Y');
INSERT INTO xxxix VALUES (89,309,222,94,609,594,484,0,99,162,'C','Y');
INSERT INTO xxxix VALUES (90,310,223,94,610,595,485,0,129,219,'E','Y');
INSERT INTO xxxix VALUES (91,11,153,94,611,596,486,0,118,169,'A','Y');
INSERT INTO xxxix VALUES (92,12,88,94,612,597,487,0,130,178,'A','Y');
INSERT INTO xxxix VALUES (93,226,154,94,613,598,488,0,74,140,'C','Y');
INSERT INTO xxxix VALUES (94,274,170,94,614,599,489,0,102,147,'A','Y');
INSERT INTO xxxix VALUES (95,311,224,94,615,600,490,0,87.5,162.5,'C','Y');
INSERT INTO xxxix VALUES (96,286,206,94,616,601,491,0,102,180,'A','D');
INSERT INTO xxxix VALUES (97,15,173,94,617,602,492,0,102,177,'A','D');
INSERT INTO xxxix VALUES (98,312,196,94,618,603,493,0,92.5,182.5,'C','Y');
INSERT INTO xxxix VALUES (99,248,225,94,619,604,494,0,102,192,'C','D');
INSERT INTO xxxix VALUES (100,206,226,92,620,605,0,0,113,113,'A','N');
INSERT INTO xxxix VALUES (101,24,25,92,621,606,0,0,101,101,'A','N');
INSERT INTO xxxix VALUES (102,205,16,92,622,607,0,0,121,121,'A','N');
INSERT INTO xxxix VALUES (103,22,138,92,623,608,0,0,113,113,'A','N');
INSERT INTO xxxix VALUES (104,27,18,92,624,609,0,0,156,156,'A','N');
INSERT INTO xxxix VALUES (105,26,145,92,625,610,0,0,129,129,'A','N');
INSERT INTO xxxix VALUES (106,313,227,96,626,611,0,0,107,107,'C','Y');
INSERT INTO xxxix VALUES (107,210,228,96,627,612,0,0,158,158,'A','Y');
INSERT INTO xxxix VALUES (108,206,138,96,628,613,0,0,121,121,'A','D');
INSERT INTO xxxix VALUES (109,206,138,96,629,614,0,0,172,172,'A','Y');
INSERT INTO xxxix VALUES (110,314,229,96,630,615,0,0,107,107,'C','Z');
INSERT INTO xxxix VALUES (111,315,227,96,631,616,0,0,109.5,109.5,'E','Y');
INSERT INTO xxxix VALUES (112,316,230,96,632,617,0,0,88.5,88.5,'C','Y');
INSERT INTO xxxix VALUES (113,314,229,96,633,618,0,0,98,98,'A','Z');
INSERT INTO xxxix VALUES (114,317,190,96,634,619,0,0,96,96,'C','Y');
INSERT INTO xxxix VALUES (115,265,186,96,635,620,0,0,144,144,'C','Y');
INSERT INTO xxxix VALUES (116,209,231,96,636,621,0,0,128,128,'A','Y');
INSERT INTO xxxix VALUES (117,207,140,96,637,622,0,0,139,139,'A','Y');
INSERT INTO xxxix VALUES (118,208,138,96,638,623,0,0,115,115,'A','Y');
INSERT INTO xxxix VALUES (119,26,226,96,639,624,0,0,113,113,'A','D');
INSERT INTO xxxix VALUES (120,205,226,96,640,625,0,0,114,114,'A','D');
INSERT INTO xxxix VALUES (121,26,226,96,641,626,0,0,136,136,'A','D');
INSERT INTO xxxix VALUES (122,265,186,96,642,0,0,0,77,77,'C','D');
INSERT INTO xxxix VALUES (123,314,229,96,643,627,0,0,99.5,99.5,'C','Y');
INSERT INTO xxxix VALUES (124,314,229,96,644,628,0,0,98,98,'C','D');
INSERT INTO xxxix VALUES (125,205,226,96,645,629,0,0,123,123,'A','D');
INSERT INTO xxxix VALUES (126,208,138,96,646,0,0,0,95,95,'A','D');
INSERT INTO xxxix VALUES (127,26,226,96,647,630,0,0,149,149,'A','D');
INSERT INTO xxxix VALUES (128,210,52,96,648,631,0,0,135,135,'A','Z');
INSERT INTO xxxix VALUES (129,210,228,96,649,632,0,0,135,135,'A','D');
INSERT INTO xxxix VALUES (130,210,228,96,650,633,0,0,127,127,'A','D');
INSERT INTO xxxix VALUES (131,167,3,95,651,634,0,0,102,102,'C','D');
INSERT INTO xxxix VALUES (132,222,5,95,652,635,0,0,102,102,'C','Y');
INSERT INTO xxxix VALUES (133,270,3,95,653,0,0,0,73,73,'C','Y');
INSERT INTO xxxix VALUES (134,318,232,95,0,636,0,0,16,16,'C','Y');
INSERT INTO xxxix VALUES (135,12,194,95,654,637,0,0,120.5,120.5,'C','Y');
INSERT INTO xxxix VALUES (136,319,233,95,655,638,0,0,109,109,'C','N');
INSERT INTO xxxix VALUES (137,11,88,95,656,639,0,0,99,99,'A','D');
INSERT INTO xxxix VALUES (138,12,88,95,657,640,0,0,125,125,'A','D');
INSERT INTO xxxix VALUES (139,320,5,95,658,641,0,0,110,110,'A','Y');
INSERT INTO xxxix VALUES (140,27,18,101,659,642,0,0,191,191,'A','D');
INSERT INTO xxxix VALUES (141,27,18,101,660,643,0,0,209,209,'A','Y');
INSERT INTO xxxix VALUES (142,205,16,101,661,644,0,0,140,140,'A','Y');
INSERT INTO xxxix VALUES (143,26,145,101,662,645,0,0,162,162,'A','D');
INSERT INTO xxxix VALUES (144,22,145,101,663,646,0,0,139,139,'A','Y');
INSERT INTO xxxix VALUES (145,17,234,100,664,0,495,0,80,170,'A','Y');
INSERT INTO xxxix VALUES (146,275,235,100,665,647,496,0,107.5,182.5,'C','Y');
INSERT INTO xxxix VALUES (147,6,5,100,666,648,497,17,124,196,'A','Y');
INSERT INTO xxxix VALUES (148,167,3,100,667,649,0,0,112,112,'C','Y');
INSERT INTO xxxix VALUES (149,11,153,100,668,650,498,0,106,148,'A','D');
INSERT INTO xxxix VALUES (150,11,153,100,669,651,499,0,106,148,'A','D');
INSERT INTO xxxix VALUES (151,279,177,100,670,652,500,0,99,174,'C','Y');
INSERT INTO xxxix VALUES (152,251,175,100,671,653,501,0,106.5,193.5,'C','Y');
INSERT INTO xxxix VALUES (153,248,196,100,672,654,502,0,102.5,168.5,'C','Y');
INSERT INTO xxxix VALUES (154,179,124,100,673,655,0,0,99,99,'A','Y');
INSERT INTO xxxix VALUES (155,321,159,100,674,656,503,0,129,219,'E','Y');

--
-- Table structure for table `xxxv`
--

CREATE TABLE xxxv (
  Human varchar(80) NOT NULL default '',
  Horse varchar(80) default NULL,
  Division char(1) NOT NULL default '',
  Kingdom varchar(25) NOT NULL default '',
  Event varchar(255) default NULL,
  Behead_time varchar(5) default NULL,
  Penalty varchar(4) default NULL,
  Bonus varchar(4) default NULL,
  B_score int(5) default NULL,
  1ring int(1) default NULL,
  2ring int(1) default NULL,
  3ring int(1) default NULL,
  4ring int(1) default NULL,
  5ring int(1) default NULL,
  6ring int(1) default NULL,
  R_score int(5) default NULL,
  T_score int(6) default NULL,
  KEY T_score (T_score),
  KEY Human (Human)
) TYPE=MyISAM;

--
-- Dumping data for table `xxxv`
--

INSERT INTO xxxv VALUES ('Madallaine de Cat','.','C','Trimaris','Gulf Wars X','21.28','NONE',NULL,14,0,0,0,0,0,0,NULL,94);
INSERT INTO xxxv VALUES ('Ragnar Bloodaxe','.','C','Middle','Rivenstar Fall Frolic','36.03','10',NULL,NULL,0,2,1,0,0,0,NULL,94);
INSERT INTO xxxv VALUES ('Alistair Kirk','.','A','Ealdomere','BDLC Invitat\'l','12.41','NONE',NULL,NULL,0,0,0,2,1,1,NULL,122);
INSERT INTO xxxv VALUES ('Wm Eckerle','.','C','Artemesia','Uprising XIV','32.13','NONE',NULL,NULL,0,1,0,1,1,0,NULL,98);
INSERT INTO xxxv VALUES ('Mis Ragni of Amberhall','.','C','Ealdormere','Battle of Big Creek 2','28.8','NONE',NULL,NULL,0,0,0,1,2,2,NULL,100);
INSERT INTO xxxv VALUES ('Lady Edith Grey','.','C','Ansteorra','Queens Champion','30.9','NONE',NULL,NULL,0,0,2,0,1,1,NULL,100);
INSERT INTO xxxv VALUES ('Adrielle Kerrec','.','C','Ealdormere','Bonfield Battle VIII','27','NONE',NULL,NULL,0,0,0,1,2,2,NULL,102);
INSERT INTO xxxv VALUES ('Fraucesca Ambrogine','.','C','Middle','Martial Arts Collegium','28','NONE',NULL,NULL,0,0,1,0,2,2,NULL,102);
INSERT INTO xxxv VALUES ('Killdare Silverwolf Thorkillson','.','C','Ealdormere','Battle of Big Creek 2','27.5','NONE',NULL,NULL,0,0,0,2,1,2,NULL,103);
INSERT INTO xxxv VALUES ('Madelaine Gervais','.','C','Middle','Martial Arts Coll','27','NONE',NULL,NULL,0,0,1,1,1,2,NULL,106);
INSERT INTO xxxv VALUES ('THL Judith McIntyre','.','C','Meridies','Gulf WarsX','27.09','NONE',NULL,32,0,0,0,0,0,0,NULL,106);
INSERT INTO xxxv VALUES ('Rowan Connor','.','C','Middle','Martial Arts Coll','28.5','NONE',NULL,NULL,0,0,2,0,1,2,NULL,106);
INSERT INTO xxxv VALUES ('Wilhelm Von Pottruff','.','C','Ealdormere','Battle of Big Creek 2','27.3','NONE',NULL,NULL,0,0,2,0,1,2,NULL,108);
INSERT INTO xxxv VALUES ('Christian Fraser','.','C','Ealdormere','Battle of Big Creek 2','28.8','NONE',NULL,NULL,0,0,0,2,2,2,NULL,108);
INSERT INTO xxxv VALUES ('Etaoin O Fearghail','.','C','Ealdormere','Battle of Big Creek 2','24.2','NONE',NULL,NULL,0,0,0,2,2,1,NULL,108);
INSERT INTO xxxv VALUES ('Elina of Beckenham','.','C','West','Martial Arts Coll','28','NONE',NULL,NULL,0,0,0,2,2,2,NULL,108);
INSERT INTO xxxv VALUES ('Aodhein Seibert','.','C','Middle','Martial Arts Collegium','26.5','NONE',NULL,NULL,0,0,0,2,2,2,NULL,110);
INSERT INTO xxxv VALUES ('Constance the Curious','.','C','Ealdormere','Bonfield Battle VIII','27.07','NONE',NULL,NULL,0,0,2,0,2,2,NULL,114);
INSERT INTO xxxv VALUES ('Sir Roak of Ealdormere','.','C','Ealdormere','Battle of Big Creek 2','35.1','NONE',NULL,NULL,1,1,1,0,0,1,NULL,114);
INSERT INTO xxxv VALUES ('Mis Nan Astrid of York','.','C','Middle','Thunder on the Fields','31.54','NONE',NULL,NULL,1,2,1,0,0,0,NULL,129);
INSERT INTO xxxv VALUES ('Kristen Kastille','.','B','Ansteorra','Gulf Wars X','26.13','30',NULL,44,0,0,0,0,0,0,NULL,44);
INSERT INTO xxxv VALUES ('THL Wilhelm Von Adlersheim','.','B','Artemesia','Destriers Bralse','26.4','10',NULL,NULL,0,0,0,0,0,0,NULL,64);
INSERT INTO xxxv VALUES ('Amelia of Apollo s Echo','.','B','Middle','Vikings Go Home Emprise','18.8','20',NULL,NULL,0,0,0,0,1,2,NULL,72);
INSERT INTO xxxv VALUES ('Gabriella of Black Dragon','.','B','Middle','Vikings Go Home Emprise','19.7','NONE',NULL,NULL,0,0,0,0,0,0,NULL,81);
INSERT INTO xxxv VALUES ('Aodhfin Seibert','.','B','Middle','Baron Wars III','27.8','NONE',NULL,NULL,0,0,0,0,0,2,NULL,81);
INSERT INTO xxxv VALUES ('Evangelista','.','B','Outlands','Great Hunt','20','10',NULL,NULL,0,0,0,0,2,0,NULL,82);
INSERT INTO xxxv VALUES ('Lance Armstrong','.','B','Outlands','Grand Outlandish 27','19','NONE',NULL,NULL,0,0,0,0,0,1,NULL,86);
INSERT INTO xxxv VALUES ('Rheannon','.','B','Calontir','11th C Althing','17.25','NONE',NULL,NULL,0,0,0,0,0,0,NULL,86);
INSERT INTO xxxv VALUES ('Timotheous Symmes','.','B','Middle','Vikings Go Home Emprise','23','NONE',NULL,NULL,0,0,0,0,1,1,NULL,88);
INSERT INTO xxxv VALUES ('THL Stietan der Bogenshutz','.','B','Outlands','Pennsic Pity Party','18','NONE',NULL,NULL,0,0,0,0,0,1,NULL,88);
INSERT INTO xxxv VALUES ('Sir Henri','.','B','Ansteorra','Gulf Wars X','14.56','NONE',NULL,16,0,0,0,0,0,0,NULL,107);
INSERT INTO xxxv VALUES ('Lady Ariel of Dragonsmark','.','B','Middle','Baron Wars III','26.7','NONE',NULL,NULL,0,0,0,0,1,2,NULL,88);
INSERT INTO xxxv VALUES ('Tore av Ubdevalla','.','B','Outlands','Grand Outlandish 27','20.5','NONE',NULL,NULL,0,0,0,0,1,1,NULL,90);
INSERT INTO xxxv VALUES ('Aurildrs Peregrina','.','B','Middle','Baron Wars III','24.4','NONE',NULL,NULL,0,0,0,0,1,2,NULL,90);
INSERT INTO xxxv VALUES ('Ceridwyn Ferch Thomais','.','B','Artemesia','Baronial Picnic','23.06','NONE',NULL,NULL,0,0,0,1,1,0,NULL,92);
INSERT INTO xxxv VALUES ('Lady Isabel Mhartain','.','B','Ansteorra','Stargate Baronial','22.28','NONE',NULL,NULL,0,0,0,0,1,2,NULL,92);
INSERT INTO xxxv VALUES ('Ld Corwyn of Saxony','.','B','Ansteorra',NULL,'15.56','10',NULL,4,0,0,0,0,0,0,NULL,92);
INSERT INTO xxxv VALUES ('Aed Leod','.','B','Outlands','Pennsic Pity Party','18','NONE',NULL,NULL,0,0,0,1,0,1,NULL,96);
INSERT INTO xxxv VALUES ('Cihan O Harrel','.','B','Outlands','Grand Outlandish 27','21','NONE',NULL,NULL,0,0,0,1,1,1,NULL,98);
INSERT INTO xxxv VALUES ('Lady Averick of GlenRowany','.','B','Outlands','Cattle Raid V','16.25','NONE',NULL,NULL,0,0,0,0,1,1,NULL,98);
INSERT INTO xxxv VALUES ('THLord Fionnbharr MacShane','.','B','Middle','Mayfaire','16.75','10',NULL,NULL,0,0,1,0,1,2,NULL,98);
INSERT INTO xxxv VALUES ('Gabrielle','.','B','Outlands','Great Hunt','17.5','NONE',NULL,NULL,0,0,0,1,1,0,NULL,99);
INSERT INTO xxxv VALUES ('Contessa Dame Ilaria','.','B','AnTir','Equestrian All-Thing','17.03','NONE',NULL,NULL,0,1,0,0,0,0,NULL,101);
INSERT INTO xxxv VALUES ('Caitlin MacLachlan','.','B','Ealdormere','Battle of Big Creek 2','18.8','NONE',NULL,NULL,0,0,0,0,2,1,NULL,99);
INSERT INTO xxxv VALUES ('Aethelwyn von Wotanswald','.','B','Middle','Marshal Arts Collegium','18','NONE',NULL,NULL,0,0,0,2,2,2,NULL,120);
INSERT INTO xxxv VALUES ('Heather Lun of Black Dragon','.','B','Middle','Vikings Go Home Emprise','19.1','10',NULL,NULL,0,0,2,0,1,1,NULL,102);
INSERT INTO xxxv VALUES ('Lord James MacPherson','.','B','Middle','Vikings Go Home Emprise','20.6','NONE',NULL,NULL,0,0,0,1,1,2,NULL,102);
INSERT INTO xxxv VALUES ('Lady Erin MacClure','.','B','Artemesia','Baronial Picnic','19.32','NONE',NULL,NULL,0,0,1,0,1,1,NULL,102);
INSERT INTO xxxv VALUES ('Isabeau of Skeldergate','.','B','Ealdormere','Battle of Big Creek 2','20.3','NONE',NULL,NULL,0,0,0,1,1,2,NULL,102);
INSERT INTO xxxv VALUES ('Dariakus of Vest Yorvik','.','B','Ealdormere','Battle of Big Creek 2','20.4','NONE',NULL,NULL,0,0,0,2,1,0,NULL,102);
INSERT INTO xxxv VALUES ('Tannion','.','B','Outlands','Great Hunt','20.5','NONE',NULL,NULL,0,0,0,2,0,2,NULL,104);
INSERT INTO xxxv VALUES ('Cnts Takaya Mereleone','.','B','Middle','Vikings Go Home Emprise','18','NONE',NULL,NULL,0,0,1,0,1,1,NULL,104);
INSERT INTO xxxv VALUES ('Jennifer of Stargate','.','B','Ansteorra','Queens Champion','15.34','10',NULL,NULL,0,0,0,2,1,2,NULL,106);
INSERT INTO xxxv VALUES ('Lord Janusz Zawisza','.','B','Middle','Thunder on the Fields','19.06','NONE',NULL,NULL,0,1,1,0,0,0,NULL,106);
INSERT INTO xxxv VALUES ('Mor Ruadh','.','B','Middle','Baron Wars III','18.1','NONE',NULL,NULL,0,0,0,1,1,2,NULL,106);
INSERT INTO xxxv VALUES ('THL Yasmeena bint alAhlam','.','B','Artemesia','Destriers Bralse','20.09','10',NULL,NULL,1,0,0,1,0,2,NULL,106);
INSERT INTO xxxv VALUES ('Rodrigo Vargas de Leon','.','B','Middle','Martial Arts Collegium','24','NONE',NULL,NULL,0,0,0,2,1,2,NULL,106);
INSERT INTO xxxv VALUES ('Brion of Tarragon','.','B','East','Gulf Wars X','17.53','NONE',NULL,22,0,0,0,0,0,0,NULL,107);
INSERT INTO xxxv VALUES ('Gailana Dunkelphere','.','B','Ealdomere','BDLC Invational','20.6','NONE',NULL,NULL,0,0,0,1,2,2,NULL,108);
INSERT INTO xxxv VALUES ('Asa Thorkillsdatir','.','B','Ealdormere','Battle of Big Creek 2','20.4','NONE',NULL,NULL,0,0,0,1,2,2,NULL,108);
INSERT INTO xxxv VALUES ('Lady Capt Morgan Goldbeter','.','B','Middle','Vikings Go Home Emprise','17.5','NONE',NULL,NULL,0,0,1,0,1,2,NULL,109);
INSERT INTO xxxv VALUES ('Geoffrey of Shrewsberry','.','B','Middle','Baron Wars III','17.5','NONE',NULL,NULL,0,1,0,0,0,2,NULL,109);
INSERT INTO xxxv VALUES ('Lady Isabelle of Arnhold','.','B','Artemesia','Hearthwarming','22.73','NONE',NULL,NULL,0,0,2,0,2,0,NULL,110);
INSERT INTO xxxv VALUES ('Rolanda Rossner','.','B','Ansteorra','Steppes Warlord Tourney','17.3','NONE',NULL,NULL,0,0,1,0,1,2,NULL,110);
INSERT INTO xxxv VALUES ('THL Siubhan MacDuff','.','B','Outlands','Pennsic Pity Party','25.9','NONE',NULL,NULL,0,0,0,2,2,2,NULL,111);
INSERT INTO xxxv VALUES ('Anne von Talstadt','.','B','Ealdormere','BDLC Invational','16.03','NONE',NULL,NULL,0,0,0,1,2,2,NULL,116);
INSERT INTO xxxv VALUES ('Ld Ponce Rodrigo de Loronha','.','B','Outlands','Pennsic Pity Party','18','NONE',NULL,NULL,0,0,0,1,2,2,NULL,112);
INSERT INTO xxxv VALUES ('Vis Jerald of Galloway','.','B','Caid','Gulf Wars X','15.72','NONE',NULL,26,0,0,0,0,0,0,NULL,115);
INSERT INTO xxxv VALUES ('Helena','.','B','Outlands','Grand Outlandish 27','23','NONE',NULL,NULL,0,0,0,2,2,2,NULL,114);
INSERT INTO xxxv VALUES ('Mis Alphia Biraz Pars','.','B','Middle','Thunder on the Fields','19.2','NONE',NULL,NULL,0,0,1,1,1,2,NULL,114);
INSERT INTO xxxv VALUES ('Kristine de Habbekirk','.','B','Ealdormere','Forfiefs','15.3','NONE',NULL,NULL,0,0,1,0,1,2,NULL,114);
INSERT INTO xxxv VALUES ('Lady Chrestienne La Croniere','.','B','Middle','Northern Oaken War','16.63','NONE',NULL,NULL,0,0,0,1,2,2,NULL,115);
INSERT INTO xxxv VALUES ('Leanne Sims','.','B','Middle','Vikings Go Home Emprise','21','NONE',NULL,NULL,0,0,0,2,2,2,NULL,116);
INSERT INTO xxxv VALUES ('THLy Zuriel Nightshade','.','B','Middle','Northern Oaken War','19.11','NONE',NULL,NULL,0,0,0,2,2,2,NULL,118);
INSERT INTO xxxv VALUES ('Michelle Fraser','.','B','Ansteorra','Gulf Wars X','19.13',NULL,NULL,36,0,0,0,0,0,0,NULL,120);
INSERT INTO xxxv VALUES ('Mstr Janet Venaco','.','B','Ansteorra','Gulf Wars X','19.66','NONE',NULL,38,0,0,0,0,0,0,NULL,120);
INSERT INTO xxxv VALUES ('THL Donwenna Beasthealer','.','B','AnTir','September Crown','14.97','NONE',NULL,NULL,0,0,0,2,1,2,NULL,120);
INSERT INTO xxxv VALUES ('Christian de Cousy','.','B','AnTir','AnTir Coronation','14.42','NONE',NULL,NULL,1,0,1,0,0,0,NULL,122);
INSERT INTO xxxv VALUES ('Vis Raphael the Rogue','.','B','AnTir','September Crown','18.43','NONE',NULL,NULL,1,0,2,0,0,0,NULL,123);
INSERT INTO xxxv VALUES ('Mis Isabeau Pferdebandiger','.','B','Middle','Mayfaire','15.5','NONE',NULL,NULL,0,0,0,2,2,2,NULL,125);
INSERT INTO xxxv VALUES ('Lady Lorraine Fraser','.','B','Ansteorra','Queens Champion','15.83','NONE',NULL,NULL,0,0,1,1,2,1,NULL,127);
INSERT INTO xxxv VALUES ('Lord Corwin of Saxony','.','B','Ansteorra','Queens Champion','19.97','NONE',NULL,NULL,0,2,2,0,0,0,NULL,131);
INSERT INTO xxxv VALUES ('Sir Alexis La Bouche','.','B','Ansteorra','Queens Champion','15.27','NONE',NULL,NULL,0,1,2,0,0,2,NULL,133);
INSERT INTO xxxv VALUES ('THL Kealan Mkgow','.','B','Middle','Thunder on the Fields','17.23','NONE',NULL,NULL,0,2,2,0,0,2,NULL,144);
INSERT INTO xxxv VALUES ('HL Togrul Guiscard','.','B','AnTir','Equestrian AllThing','18.42','NONE',NULL,NULL,1,2,1,0,0,0,NULL,144);
INSERT INTO xxxv VALUES ('Lord Agelos Evience','.','B','AnTir','AnTir Coronation','14.73','NONE',NULL,NULL,1,1,2,0,0,0,NULL,146);
INSERT INTO xxxv VALUES ('Lady Katharyn Clatworthy','.','B','Ansteorra','Steppes Warlord Tourney','15.95','NONE',NULL,NULL,0,2,2,0,0,2,NULL,146);
INSERT INTO xxxv VALUES ('Earl Sir Edward Ean Anderson','.','B','AnTir','Equestrian AllThing','16.65','NONE',NULL,NULL,1,2,1,0,0,0,NULL,147);
INSERT INTO xxxv VALUES ('Sir Pieter VanDorn','.','B','Middle','Thunder on the Fields','19.34','NONE',NULL,NULL,1,2,2,0,0,0,NULL,152);
INSERT INTO xxxv VALUES ('Lady Guinevere of Gate s Edge','.','B','Ansteorra','Queens Champion','15.18','NONE',NULL,NULL,1,2,2,0,0,0,NULL,160);
INSERT INTO xxxv VALUES ('Lady Winnifred of Rosemere','.','A','Calontir','11th C Althing','37.38','10',NULL,NULL,0,0,1,0,0,0,NULL,64);
INSERT INTO xxxv VALUES ('Diedre Stewart','.','A','Calontir','11th C Althing','20.68','NONE',NULL,NULL,0,0,0,0,0,0,NULL,80);
INSERT INTO xxxv VALUES ('Gwynadwedd','.','A','Calontir','11th C Althing','14.37','NONE',NULL,NULL,0,0,1,0,0,0,NULL,102);
INSERT INTO xxxv VALUES ('Lady Luzia Do Valongo','.','A','Calontir','11th C Althing','13.28','NONE',NULL,NULL,0,1,0,1,0,1,NULL,121);
INSERT INTO xxxv VALUES ('Eanor of Amberhall','.','A','Ealdomere','BDLC Invational','13.1','NONE',NULL,NULL,0,0,0,2,1,2,NULL,124);
INSERT INTO xxxv VALUES ('Lady Isolde of Hawksholme','.','A','Calontir','11th C Althing','13.4','NONE',NULL,NULL,0,0,1,1,1,2,NULL,126);
INSERT INTO xxxv VALUES ('Jochen von Balduinseck','.','C','Outlands','Grand Outlandish 27','32','NONE',NULL,NULL,0,0,0,1,2,1,NULL,92);
INSERT INTO xxxv VALUES ('Marie von Rosenburg','.','C','Middle','martial Arts Collegium','35','NONE',NULL,NULL,0,1,0,1,0,1,NULL,92);
INSERT INTO xxxv VALUES ('Lady Robin von Glonn','.','C','Outlands','Cattle Raid V','27.4','NONE',NULL,NULL,0,0,0,0,2,1,NULL,90);
INSERT INTO xxxv VALUES ('Arlette Des Saules','.','C','Ealdormere','Battle of Big Creek 2','32.4','NONE',NULL,NULL,0,0,0,0,2,2,NULL,88);
INSERT INTO xxxv VALUES ('Yongwyne','.','C','Ealdormere','Bonfield Battle VIII','29','NONE',NULL,NULL,0,0,0,0,2,1,NULL,88);
INSERT INTO xxxv VALUES ('Ynesen Ongge Xong Kerij-e','.','C','AnTir','September Crown','31.87','NONE',NULL,NULL,0,0,1,0,0,2,NULL,87);
INSERT INTO xxxv VALUES ('Checheyigan','.','C','Calontir','11th C Althing','34.43','NONE',NULL,NULL,0,0,1,0,1,1,NULL,86);
INSERT INTO xxxv VALUES ('Lucia Amberle of Black Dragon','.','C','Middle','Vikings Go Home Emprise','32.6','NONE',NULL,NULL,0,0,0,1,1,1,NULL,86);
INSERT INTO xxxv VALUES ('Michelina D Este','.','C','Ealdormere','Battle of Big Creek 2','26.9','20',NULL,NULL,0,0,1,0,2,2,NULL,84);
INSERT INTO xxxv VALUES ('Elizabeth Koenig','.','C','Middle','Baron Wars III','42.9','NONE',NULL,NULL,0,0,0,1,2,1,NULL,82);
INSERT INTO xxxv VALUES ('Jenna Silentfire','.','C','Middle','Mayfaire','33.87','10',NULL,NULL,0,0,0,1,2,1,NULL,81);
INSERT INTO xxxv VALUES ('Lady Celestine of Arnhold','.','C','Artemesia','Uprising XIV','40.7','NONE',NULL,NULL,0,0,1,1,0,0,NULL,78);
INSERT INTO xxxv VALUES ('Kevin of Ben Dunfirth','.','C','Ealdormere','Battle of Big Creek 2','43.8','NONE',NULL,NULL,0,0,0,0,2,2,NULL,77);
INSERT INTO xxxv VALUES ('Kira Anastasia','.','C','Middle','Rivenstar Fall Frolic','37.56','NONE',NULL,NULL,0,0,0,0,1,2,NULL,77);
INSERT INTO xxxv VALUES ('Bran Rothaich','.','C','Outlands','Grand Outlandish 27','34','10',NULL,NULL,0,1,0,0,0,1,NULL,76);
INSERT INTO xxxv VALUES ('Dawn of Tomorrowland','.','C','Artemesia','Destriers Bralse','34.46','10',NULL,NULL,0,1,0,0,0,1,NULL,75);
INSERT INTO xxxv VALUES ('Lady Sabina','.','C','Outlands','Cattle Raid V','31.16','NONE',NULL,NULL,0,0,0,0,0,1,NULL,74);
INSERT INTO xxxv VALUES ('Sir Gregory of Bec','.','C','Artemesia','Hearthwarming','39.6','NONE',NULL,NULL,0,0,1,0,0,0,NULL,71);
INSERT INTO xxxv VALUES ('Ken of Black Dragon','.','C','Middle','Vikings Go Home Emprise','36.3','NONE',NULL,NULL,0,0,0,0,1,0,NULL,70);
INSERT INTO xxxv VALUES ('Tracy','.','C','Artemesia','Destriers Bralse','35.02','10',NULL,NULL,0,0,1,0,0,1,NULL,70);
INSERT INTO xxxv VALUES ('Laurel','.','C','Outlands','Grand Outlandish 27','32','10',NULL,NULL,0,0,0,0,1,1,NULL,68);
INSERT INTO xxxv VALUES ('Kelly','.','C','Calontir','11th C Althing','33.72','NONE',NULL,NULL,0,0,0,0,0,0,NULL,67);
INSERT INTO xxxv VALUES ('Ceredwyn Gan Gwynedd','.','C','Ealdormere','Battle of Big Creek 2','47.9','NONE',NULL,NULL,0,0,0,0,1,1,NULL,63);
INSERT INTO xxxv VALUES ('Neania Silverhorse','.','C','Middle','Rivenstar Fall Frolic','33.72','20',NULL,NULL,0,0,0,0,2,1,NULL,63);
INSERT INTO xxxv VALUES ('Acaija','.','C','Artemesia','Destriers Bralse','40.73','10',NULL,NULL,0,0,0,0,0,2,NULL,58);
INSERT INTO xxxv VALUES ('Ldy Sapphira','.','C','trimaris','Gulf Wars X','21.28','NONE',NULL,14,0,0,0,0,0,0,NULL,58);
INSERT INTO xxxv VALUES ('Elizabetta','.','C','Middle','Rivenstar Fall Frolic','36.47','30',NULL,NULL,0,0,1,0,1,2,NULL,58);
INSERT INTO xxxv VALUES ('William of Bellwood','.','C','Middle','Martial Arts Collegium','30.5','NONE',NULL,NULL,0,1,2,0,1,2,NULL,49);
INSERT INTO xxxv VALUES ('Larissa Na Kiet','.','C','Artemesia','Uprising XIV','DQ','NONE',NULL,NULL,0,1,1,1,0,0,NULL,33);
INSERT INTO xxxv VALUES ('Fredis the Good','.','C','Artemesia','Uprising XIV','DQ','NONE',NULL,NULL,0,0,1,1,1,0,NULL,24);
INSERT INTO xxxv VALUES ('Ragnar Bloodaxe','.','C','Middle','Rivenstar Fall Frolic','36.03','10',NULL,NULL,0,2,1,0,0,0,NULL,94);
INSERT INTO xxxv VALUES ('Ragnar Bloodaxe','.','C','Middle','Rivenstar Fall Frolic','36.03','10',NULL,NULL,0,2,1,0,0,0,NULL,94);

--
-- Table structure for table `xxxvi`
--

CREATE TABLE xxxvi (
  Human varchar(80) NOT NULL default '',
  Horse varchar(80) default NULL,
  Division char(1) NOT NULL default '',
  Kingdom varchar(25) NOT NULL default '',
  Event varchar(255) default NULL,
  Behead_time varchar(5) default NULL,
  Penalty varchar(4) default NULL,
  Bonus varchar(4) default NULL,
  B_score varchar(5) default NULL,
  1ring char(1) default NULL,
  2ring char(1) default NULL,
  3ring char(1) default NULL,
  4ring char(1) default NULL,
  5ring char(1) default NULL,
  6ring char(1) default NULL,
  R_score varchar(5) default NULL,
  T_score float default NULL,
  KEY Human (Human)
) TYPE=MyISAM;

--
-- Dumping data for table `xxxvi`
--

INSERT INTO xxxvi VALUES ('Roskva the Rus','Sky','A','Middle','Vikings Go Home','16.9','0','0','84','0','0','2','0','0','2','28',112);
INSERT INTO xxxvi VALUES ('Cailean mac kenzie','Waverly','A','East','Flames of Fall','12.34','0','18','114','0','0','0','1','2','2','28',142);
INSERT INTO xxxvi VALUES ('Ellen du Grandchamp','Ciria','A','East','Flames of Fall','12.31','0','18','114','0','0','0','0','1','2','14',128);
INSERT INTO xxxvi VALUES ('Niniae of Witches Oak','Shonnie','A','East','Flames of Fall','13.75','0','11','104','0','0','0','0','1','1','10',114);
INSERT INTO xxxvi VALUES ('Yaari','Charm','A','East','Flames of Fall','37.19','0','0','53.5','0','0','0','1','1','1','18',71.5);
INSERT INTO xxxvi VALUES ('Yasmeena bint al Ahlam','Dillon','A','Artemesia','Official Practice','15.02','0','0','90','0','0','0','1','2','2','28',118);
INSERT INTO xxxvi VALUES ('Isabelle of Arn Hold','Beauty','A','Artemesia','Official Practice','16.96','0','0','86','0','0','2','0','2','1','36',122);
INSERT INTO xxxvi VALUES ('Kathleen dubh fraser','unknown mount','A','Artemesia','Official Practice','24.38','0','0','76.5','0','0','2','0','0','1','24',100.5);
INSERT INTO xxxvi VALUES ('Deidre Stewart','unknown mount','A','Calontir','Grey Niche','17.98','0','0','85','0','0','0','2','1','1','18',103);
INSERT INTO xxxvi VALUES ('Isolde of Hawksholme','unknown mount','A','Calontir','Grey Niche','12.68','0','17','112','0','0','1','1','1','2','32',144);
INSERT INTO xxxvi VALUES ('Winnifred of Rosemere','unknown mount','A','Calontir','Grey Niche','14.6','0','0','91','0','0','0','1','0','2','16',107);
INSERT INTO xxxvi VALUES ('Rhiannon','unknown mount','A','Calontir','Grey Niche','17.28','0','0','86','0','0','0','0','1','0','',92);
INSERT INTO xxxvi VALUES ('Jivete','unknown mount','A','Calontir','Grey Niche','17.75','0','0','85','0','0','1','1','1','2','32',117);
INSERT INTO xxxvi VALUES ('Nathaniel of Gatesedge','Kristas','A','Ansteorra','Border Wars','14.83','0','0','91','0','0','0','1','2','2','28',119);
INSERT INTO xxxvi VALUES ('Guenevere Maynard','Kristas','A','Ansteorra','Border Wars','13.17','0','14','108','0','0','2','0','2','2','40',148);
INSERT INTO xxxvi VALUES ('Adrielle Kerrec','unknown mount','A','Ealdormere','Bonfield Battle 9','16.3','0','0','88','0','0','0','1','1','2','22',110);
INSERT INTO xxxvi VALUES ('Eanor of Amberhall','unknown mount','A','Ealdormere','Bonfield Battle 9','15','0','0','90','0','0','0','1','1','2','22',112);
INSERT INTO xxxvi VALUES ('Alistair Kirk','unknown mount','A','Ealdormere','Bonfield Battle 9','12.3','0','18','114','0','0','0','0','2','2','20',134);
INSERT INTO xxxvi VALUES ('Agelos Evienece','Titus','B','An Tir','Warren War','14.71','0','11','102','1','2','2','0','0','0','70',172);
INSERT INTO xxxvi VALUES ('Rapheal the Rogue','Valerius','B','An Tir','Warren War','18.33','0','0','84','2','2','1','0','0','0','80',164);
INSERT INTO xxxvi VALUES ('Donwenna BeastHealer','Venus','B','An Tir','Warren War','16.95','0','0','87','2','1','0','1','0','0','63',150);
INSERT INTO xxxvi VALUES ('ValdarGaldrasmid','Valerius','B','An Tir','Warren War','18.9','0','0','83','0','1','1','0','0','1','29',112);
INSERT INTO xxxvi VALUES ('Edward Ean Anderson','Misty','B','An Tir','William tell XVI','18.17','0','0','84','1','2','2','0','0','0','70',154);
INSERT INTO xxxvi VALUES ('Togrul Guiscard','Earl Grey','B','An Tir','William tell XVI','17.7','0','0','85','1','2','1','0','0','0','60',145);
INSERT INTO xxxvi VALUES ('Fionn ban MacAdoidh','Brier','B','An Tir','William tell XVI','19.5','0','0','81','0','0','1','0','1','1','20',101);
INSERT INTO xxxvi VALUES ('Aedan macSuibne','Rafairrah','B','An Tir','William tell XVI','22.6','0','0','78','0','0','0','1','1','2','22',100);
INSERT INTO xxxvi VALUES ('Illaria Veltri degliAnsari','Brier','B','An Tir','William tell XVI','20.19','0','0','80.5','0','0','0','1','0','2','18',98.5);
INSERT INTO xxxvi VALUES ('RognvaldR Bassi','Cookie','B','An Tir','William tell XVI','17.05','0','0','86','0','0','0','2','2','2','36',122);
INSERT INTO xxxvi VALUES ('Appoline D Avignon','Firyarran','B','An Tir','William tell XVI','20.65','4','0','40','0','0','0','0','0','1','4',44);
INSERT INTO xxxvi VALUES ('Tegan Conwy','Taz','B','An Tir','William tell XVI','35.85','4','0','25','0','0','1','0','1','1','20',45);
INSERT INTO xxxvi VALUES ('Ceina nic Mhari','PacMan','B','An Tir','EQ Practice','21.45','0','0','78.5','0','0','0','1','2','2','28',106.5);
INSERT INTO xxxvi VALUES ('Ponce Rodrigo','unknown mount','B','Outlands','Great Hunt','17','0','0','86','0','0','0','1','2','1','24',110);
INSERT INTO xxxvi VALUES ('Tore av Uddevala','unknown mount','B','Outlands','Great Hunt','18.2','0','0','84','0','0','0','2','1','0','22',106);
INSERT INTO xxxvi VALUES ('Dhubheasa','unknown mount','B','Outlands','Great Hunt','23','0','0','77.5','0','0','0','1','0','2','16',93.5);
INSERT INTO xxxvi VALUES ('Helena Ordeville','unknown mount','B','Outlands','Great Hunt','35','0','0','66.5','0','0','0','2','0','1','20',85.5);
INSERT INTO xxxvi VALUES ('Siubhan MacDuff','unknown mount','B','Outlands','Great Hunt','27','10','0','63.5','0','0','0','0','2','0','12',75.5);
INSERT INTO xxxvi VALUES ('Todd','unknown mount','B','Outlands','Rios de los Animas','28.34','0','0','72.5','0','0','1','0','1','2','24',96.5);
INSERT INTO xxxvi VALUES ('Eddie','unknown mount','B','Outlands','Rios de los Animas','18.92','10','0','73','0','0','0','2','1','2','30',103);
INSERT INTO xxxvi VALUES ('Etain ingeanui Fouhy','Buck','B','Artemesia','Uprising XV','19.68','20','0','61','0','0','0','0','0','0','0',61);
INSERT INTO xxxvi VALUES ('Cerridwyn ferch Tomias','Lacy','B','Artemesia','Uprising XV','18.31','0','0','84','0','0','0','1','1','2','22',106);
INSERT INTO xxxvi VALUES ('Yasmeena bint al Ahlam','Dillon','B','Artemesia','Uprising XV','20.78','0','0','80','0','0','1','0','1','1','20',100);
INSERT INTO xxxvi VALUES ('Landolf Wilkowski','unknown mount','B','Artemesia','Uprising XV','19.82','0','0','81','0','0','0','2','0','1','20',101);
INSERT INTO xxxvi VALUES ('Shari Watters','Lacy','B','Artemesia','Uprising XV','22.27','0','0','78.5','0','0','0','0','0','1','4',82.5);
INSERT INTO xxxvi VALUES ('Heloise de Bei','Beauty','B','Artemesia','Uprising XV','25.47','10','0','65.5','0','0','0','0','0','0','0',65.5);
INSERT INTO xxxvi VALUES ('Isabelle of Arnhold','Galen','B','Artemesia','Uprising XV','20.54','0','0','80','0','0','0','0','0','1','4',84);
INSERT INTO xxxvi VALUES ('Freydis the Good','unknown mount','B','Artemesia','Uprising XV','24.89','0','0','76','0','0','1','1','0','1','22',98);
INSERT INTO xxxvi VALUES ('Roskva the Rus','Sky','B','Middle','Vikings Go Home','18.25','0','0','84','0','0','2','0','0','2','28',112);
INSERT INTO xxxvi VALUES ('Fionnbharr Mac Shane','Bubba','B','Middle','Vikings Go Home','17.6','0','0','85','0','2','2','0','0','0','50',135);
INSERT INTO xxxvi VALUES ('Anne von Talstadt','Shady Lady','B','Ealdormere','1st Kick @Can','16.9','0','0','87','0','0','1','1','0','1','22',109);
INSERT INTO xxxvi VALUES ('Alistair Kir','Escapade','B','Ealdormere','1st Kick @Can','14.6','0','12','103','0','0','0','2','2','2','36',139);
INSERT INTO xxxvi VALUES ('Gailana Dunkelphere','Mercedes','B','Ealdormere','Caer Draeth Spring Tune Up','18.7','0','0','83','0','0','1','1','2','0','30',113);
INSERT INTO xxxvi VALUES ('Adrielle Kerrec','unknown mount','B','Ealdormere','Bonfield Battle 9','17.6','0','0','85','0','0','0','1','2','2','28',113);
INSERT INTO xxxvi VALUES ('Laura of Welfengau','Escapade','B','Ealdormere','Caer Draeth Spring Tune Up','17.2','0','0','86','0','0','0','2','1','0','22',108);
INSERT INTO xxxvi VALUES ('Eanor of Amberhall','unknown mount','B','Ealdormere','Bonfield Battle 9','15','10','10','90','0','0','0','1','1','2','22',112);
INSERT INTO xxxvi VALUES ('Alexis la Bouche','Plum','B','Ansteorra','Gulf Wars XI','14.13','0','14','106','0','2','2','0','0','2','58',164);
INSERT INTO xxxvi VALUES ('Isabol Mhartain','Eros','B','Ansteorra','Seawnds Defender','13.25','0','19','113','0','1','2','0','0','0','35',148);
INSERT INTO xxxvi VALUES ('Michelle Fraser','Rosie','B','Ansteorra','Steppes Warlord','20.31','0','0','80.5','0','0','0','2','2','2','36',116.5);
INSERT INTO xxxvi VALUES ('Guenivere Maynard','Christis','B','Ansteorra','Steppes Warlord','14.65','0','12','103','0','1','2','0','0','2','43',146);
INSERT INTO xxxvi VALUES ('Lorraine Fraser','Indy','B','Ansteorra','Seawnds Defender','15.28','0','0','90','0','0','1','0','2','2','30',120);
INSERT INTO xxxvi VALUES ('Allessandra de Vetorri','Plum','B','Ansteorra','Seawnds Defender','15.72','0','0','89','0','0','0','0','1','1','10',99);
INSERT INTO xxxvi VALUES ('Katherine Clatworthy','Penny','B','Ansteorra','Seawnds Defender','14.69','0','12','103','0','0','2','0','0','2','28',131);
INSERT INTO xxxvi VALUES ('Patrick of Greywood','Eros','B','Ansteorra','Steppes Warlord','15.87','0','0','89','0','0','2','0','1','1','30',119);
INSERT INTO xxxvi VALUES ('Serena Kimbahoyke','Summer','B','Middle','KWAH','23.66','10','0','67','0','0','0','0','0','1','4',71);
INSERT INTO xxxvi VALUES ('Alphia Biraz-Pars','Dundee','B','Middle','KWAH','19.19','0','0','82','0','0','0','1','2','2','28',110);
INSERT INTO xxxvi VALUES ('Pieter Van Dorn','Bubba','B','Middle','KWAH','18.65','0','0','83','0','0','0','1','1','1','18',101);
INSERT INTO xxxvi VALUES ('Chrestienne La Croniere','Summer Doll','B','Middle','KWAH','15.9','0','0','89','0','0','0','2','2','1','32',121);
INSERT INTO xxxvi VALUES ('Raynold of Wharram','Special Dark','B','Atlantia','EQ War Practice','30.82','0','0','70','0','0','1','0','1','0','16',86);
INSERT INTO xxxvi VALUES ('Lora Greymare','Quija','B','Atlantia','Would Caesar Believe This','17.5','0','0','85','0','0','0','2','1','1','26',111);
INSERT INTO xxxvi VALUES ('Brandwyn Alston','Stella','B','Atlantia','Would Caesar Believe This','20.07','20','0','60.5','0','0','0','1','0','0','8',68.5);
INSERT INTO xxxvi VALUES ('Alicia Seale','Warrior','B','Meridies','Gulf Wars XI','16.72','0','0','87','0','0','0','2','2','2','36',123);
INSERT INTO xxxvi VALUES ('Durand Fitz Robert','Eros','B','Middle','Gulf Wars XI','15','10','0','90','0','0','0','1','0','1','12',102);
INSERT INTO xxxvi VALUES ('Jean-Claude von Alderstaat','Belle','B','Meridies','Gulf Wars XI','17.9','0','0','85','0','0','1','0','0','1','14',99);
INSERT INTO xxxvi VALUES ('Sunnifa','Cody','B','Trimaris','Gulf Wars XI','18.7','0','0','83','0','0','0','0','1','1','14',97);
INSERT INTO xxxvi VALUES ('Pepsia Dochartaigh','Spritz','B','Meridies','Gulf Wars XI','23.8','10','0','67','0','0','0','1','2','2','28',95);
INSERT INTO xxxvi VALUES ('Katherine of Whiteacre','Ace','B','Caid','Gulf Wars XI','18.79','0','0','83','0','0','0','0','1','1','28',93);
INSERT INTO xxxvi VALUES ('Kirsten','Sioux','B','Trimaris','Gulf Wars XI','18.72','0','0','83','0','0','0','0','0','2','8',91);
INSERT INTO xxxvi VALUES ('Genvieve d Argent Chene','Raggs','B','Meridies','Gulf Wars XI','16.58','20','0','67','0','0','2','0','0','1','24',91);
INSERT INTO xxxvi VALUES ('Chieri wreic maredudd','Trimaris','B','Cody','Gulf Wars XI','18.67','0','0','83','0','0','0','0','0','1','4',87);
INSERT INTO xxxvi VALUES ('Nem Dochartaigh','Meridies','B','Bo','Gulf Wars XI','20.68','10','0','70','0','0','0','1','0','2','16',86);
INSERT INTO xxxvi VALUES ('Jane t Virago Parva','Flashdance','B','Ansteorra','Gulf Wars XI','20.18','0','0','80.5','0','0','0','2','2','2','36',116.5);
INSERT INTO xxxvi VALUES ('Gavin O Neil','Lucan','B','Trimaris','Gulf Wars XI','16.16','0','0','88','0','0','0','2','1','1','26',114);
INSERT INTO xxxvi VALUES ('Debra of Pinewood','Drako','B','Meridies','Gulf Wars XI','16.25','0','0','88','0','0','1','0','0','1','16',104);
INSERT INTO xxxvi VALUES ('Brion Tarragon','LittleMan','B','East','Gulf Wars XI','16.25','10','0','78','0','0','0','0','0','0','0',78);
INSERT INTO xxxvi VALUES ('Eibleanne Bohane','Red Rover','B','Middle','Gulf Wars XI','23.38','20','0','57.5','0','0','1','0','0','1','14',71.5);
INSERT INTO xxxvi VALUES ('Einor R-genja Ragnarson','Eros','B','Ansteorra','Gulf Wars XI','33','0','0','','0','0','0','0','0','0','',0);
INSERT INTO xxxvi VALUES ('Ynesen Onge Xong Kerij-e','Rose','C','An Tir','Western  Reg l Practice','29','0','0','71.5','2','2','2','0','0','0','90',161.5);
INSERT INTO xxxvi VALUES ('Cheregin','Bella','C','An Tir','Western  Reg l Practice','27.4','0','0','73.5','0','0','2','0','2','1','36',109.5);
INSERT INTO xxxvi VALUES ('Devon Tsarsis','Rayna','C','An Tir','Warren War','29.03','0','0','71.5','0','0','1','1','2','2','38',109.5);
INSERT INTO xxxvi VALUES ('Marie the Gamesmistress','Valerius','C','An Tir','Warren War','32.25','0','0','68.5','0','0','0','1','2','1','24',92.5);
INSERT INTO xxxvi VALUES ('Donwenna','Rayna','C','An Tir','Warren War','28.42','0','0','72.5','0','0','0','0','1','0','6',78.5);
INSERT INTO xxxvi VALUES ('Taradan banMarca','Copper','C','An Tir','Western  Reg l Practice','25','0','0','75.5','0','2','2','0','0','0','50',125.5);
INSERT INTO xxxvi VALUES ('Tore av Uddevala','unknown mount','C','Outlands','Great hunt','35.5','0','0','65','0','1','0','1','1','0','29',94);
INSERT INTO xxxvi VALUES ('Althea of Fair Isle','unknown mount','C','Outlands','Great Hunt','29','0','0','71.5','0','0','0','1','1','2','22',93.5);
INSERT INTO xxxvi VALUES ('Siubbhan macDuff','unknown mount','C','Outlands','Great Hunt','34','0','0','66.5','0','0','0','0','1','2','14',80.5);
INSERT INTO xxxvi VALUES ('Treva','unknown mount','C','Outlands','Rios de los Animas','49.6','0','0','51','0','0','1','1','2','2','38',89);
INSERT INTO xxxvi VALUES ('Cecily','unknown mount','C','Outlands','Rios de los Animas','27.18','10','0','63.5','0','0','2','0','2','1','36',99.5);
INSERT INTO xxxvi VALUES ('Mary','unknown mount','C','Outlands','Rios de los Animas','24.3','0','0','76.5','0','0','1','0','1','1','20',96.5);
INSERT INTO xxxvi VALUES ('Todd','unknown mount','C','Outlands','Rios de los Animas','33.97','0','0','67','0','1','1','1','0','2','41',108);
INSERT INTO xxxvi VALUES ('Aed MacLeod','unknown mount','C','Outlands','Rios de los Animas','28.3','0','0','72.5','0','1','1','0','1','1','29',101.5);
INSERT INTO xxxvi VALUES ('Jochen von Balduinseck','unknown mount','C','Outlands','Great Hunt','41','0','0','59.5','0','0','0','0','2','2','20',79.5);
INSERT INTO xxxvi VALUES ('Adria Jermyne','unknown mount','C','Artemesia','Uprising XV','44.1','10','0','54.1','0','2','2','0','0','1','54',100.5);
INSERT INTO xxxvi VALUES ('Gwenora McDonald','unknown mount','C','Artemesia','Uprising XV','36.3','10','0','54.5','0','0','0','2','1','1','26',80.5);
INSERT INTO xxxvi VALUES ('Mandie Dies','Shar','C','Artemesia','Uprising XV','31','0','0','69.5','0','0','1','0','0','1','14',83.5);
INSERT INTO xxxvi VALUES ('Marisa Weyland','Red Fox','C','Artemesia','Uprising XV','28.7','0','0','72','0','0','0','1','2','2','28',100);
INSERT INTO xxxvi VALUES ('Ulric Gilchrist','unknown mount','C','Artemesia','Uprising XV','33.4','0','0','67.5','0','0','0','0','2','2','20',87.5);
INSERT INTO xxxvi VALUES ('Luidvina Twinthrower','Radar','C','Middle','Vikings Go Home','23.58','10','0','67','0','0','1','0','2','1','26',93);
INSERT INTO xxxvi VALUES ('Grey Oddson','CC','C','Middle','Vikings Go Home','26.56','0','0','74','0','0','0','1','2','2','28',102);
INSERT INTO xxxvi VALUES ('Marius Greyedge','Jasmine','C','Ansteorra','Steppes Warlord','25.2','0','0','75.5','0','0','0','0','2','2','20',95.5);
INSERT INTO xxxvi VALUES ('Angelique','BJ','C','Ansteorra','Steppes Warlord','39.4','0','0','61.5','0','0','1','0','1','1','20',81.5);
INSERT INTO xxxvi VALUES ('Allesandra de Vittori','Jaz','C','Ansteorra','Steppes Warlord','32.99','0','0','68','0','0','0','0','2','2','20',88);
INSERT INTO xxxvi VALUES ('Aimee de long Coeur','Muhani','C','Ansteorra','Steppes Warlord','28.57','0','0','72','0','0','0','0','2','2','20',92);
INSERT INTO xxxvi VALUES ('Christian Fraser','Moe','C','Ealdormere','1st Kick @ Can','31.5','0','0','69','0','0','0','0','2','2','20',89);
INSERT INTO xxxvi VALUES ('Lena of Ardcreag','Pete','C','Ealdormere','1st Kick @ Can','38.5','0','0','62','0','0','0','0','2','2','20',82);
INSERT INTO xxxvi VALUES ('Roak of Ealdomere','unknown mount','C','Ealdormere','Bonfield Battle 9','26.8','0','0','74','0','0','2','0','2','2','40',114);
INSERT INTO xxxvi VALUES ('Etaoin o Fearghuil','unknown mount','C','Ealdormere','Bonfield Battle 9','25','0','0','75.5','0','0','0','2','2','1','32',107.5);
INSERT INTO xxxvi VALUES ('Arlette of Ealdomere','unknown mount','C','Ealdormere','Bonfield Battle 9','28','0','0','72.5','0','1','1','1','1','1','43',115.5);
INSERT INTO xxxvi VALUES ('Eleanor Cadfan','unknown mount','C','Ealdormere','Bonfield Battle 9','42.3','10','0','58.5','0','0','0','1','1','2','22',80.5);
INSERT INTO xxxvi VALUES ('Savina of Tor Brandt','unknown mount','C','Ealdormere','Bonfield Battle 9','36','20','0','44.5','0','0','1','0','1','1','20',64.5);
INSERT INTO xxxvi VALUES ('Yonwyne de Lokwood','unknown mount','C','Ealdomere','Bonfield Battle 9','32.9','10','0','58','0','0','0','1','1','2','22',80);
INSERT INTO xxxvi VALUES ('Eileen','unknown mount','C','Ealdormere','Bonfield Battle 9','28.3','0','0','72.5','0','0','0','1','1','1','18',90.5);
INSERT INTO xxxvi VALUES ('Aelfwyn of Longwood','unknown mount','C','Ealdormere','Bonfield Battle 9','30.2','0','0','70.5','0','0','1','0','2','1','26',96.5);
INSERT INTO xxxvi VALUES ('Isabeau of Skeldergate','Mercedes','C','Ealdormere','Caer Draeth Spring Tune Up','37.1','0','0','63.5','0','0','0','1','0','1','12',75.5);
INSERT INTO xxxvi VALUES ('Ragni D Zintara','Streak','C','Ealdormere','Caer Draeth Spring Tune Up','35.1','0','0','65.5','0','0','1','1','1','2','32',97.5);
INSERT INTO xxxvi VALUES ('Etaoin O Fearghail','Streak','C','Ealdormere','Caer Draeth Spring Tune Up','30.4','0','0','70.5','0','0','1','0','2','2','30',100.5);
INSERT INTO xxxvi VALUES ('Ragnar Bloodaxe','Bubba','C','Middle','KWAH','40','0','0','60.5','0','0','0','0','1','1','10',70.5);
INSERT INTO xxxvi VALUES ('Kara Linn Kottur','Summer','C','Middle','KWAH','33.6','0','0','67','0','0','1','0','2','2','30',97);
INSERT INTO xxxvi VALUES ('Takaya Mereleone','Griffin','C','Middle','KWAH','26.13','0','0','74.5','0','0','0','1','0','1','12',86.5);
INSERT INTO xxxvi VALUES ('Bridei Nic Gillechattan','Sonny','C','Middle','KWAH','26.56','10','0','64','0','0','1','0','2','2','30',94);
INSERT INTO xxxvi VALUES ('Tancred Bras-de-Fer','Cricket','C','Atlantia','EQ War Practice','29.64','0','0','71','0','0','0','0','0','0','0',71);
INSERT INTO xxxvi VALUES ('Quenthryth of Laure','Cricket','C','Atlantia','EQ War Practice','29.72','10','0','61','0','0','0','1','1','1','18',79);
INSERT INTO xxxvi VALUES ('Sorcha oeis mirreach','unknown mount','C','East','Flames of Fall','26.57','0','0','74','0','0','0','0','0','2','8',82);
INSERT INTO xxxvi VALUES ('Diana Scott','Sahara','C','East','Flames of Fall','21.12','0','0','79.5','0','0','0','1','2','2','28',107.5);
INSERT INTO xxxvi VALUES ('Ihsan','Angel','C','Atlantia','Would Caesar Believe This','30.01','0','0','70.5','0','1','0','1','0','1','31',101.5);
INSERT INTO xxxvi VALUES ('Tanith of Hawkwood','Cricket','C','Atlantia','Would Caesar Believe This','29.69','0','0','71','0','1','0','1','1','1','37',98);
INSERT INTO xxxvi VALUES ('Einor R-genja Ragnarson','Eros','C','Ansteorra','Gulf Wars XI','33','0','0','67','0','0','0','2','2','2','36',103);
INSERT INTO xxxvi VALUES ('Buga Boke Negor','Cowboy','C','Trimaris','Gulf Wars XI','29.21','0','0','71.5','0','0','0','1','2','2','28',99.5);
INSERT INTO xxxvi VALUES ('Peryn Rose Whytehorse','Sir William','C','Merides','Gulf Wars XI','28.94','0','0','72','0','0','2','0','0','0','20',92);
INSERT INTO xxxvi VALUES ('Neassa the Obstreperous','Paint Flash','C','Ansteorra','Gulf Wars XI','38.87','0','0','62','0','0','0','1','2','2','28',90);
INSERT INTO xxxvi VALUES ('Sapphira die Kraeftig','Pantera','C','Trimaris','Gulf Wars XI','38.94','0','0','62','0','0','0','1','1','2','22',84);
INSERT INTO xxxvi VALUES ('Elizabetta','Fey','C','Middle','Gulf Wars XI','27.63','0','0','63','0','0','0','1','1','1','18',81);
INSERT INTO xxxvi VALUES ('Brenna caitlin MacGrioghair','Cisco','C','Trimaris','Gulf Wars XI','32.38','0','0','68.5','0','0','0','0','1','1','10',78.5);

--
-- Table structure for table `xxxvii`
--

CREATE TABLE xxxvii (
  YID int(5) NOT NULL auto_increment,
  PID int(3) NOT NULL default '0',
  HID int(3) NOT NULL default '0',
  EID int(3) NOT NULL default '0',
  SHID int(3) default NULL,
  SRID int(3) default NULL,
  SDID int(3) default NULL,
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default NULL,
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xxxvii`
--

INSERT INTO xxxvii VALUES (1,1,1,8,1,1,1,75.5,'D','Y');
INSERT INTO xxxvii VALUES (2,2,2,5,2,2,2,101.5,'D','Y');
INSERT INTO xxxvii VALUES (3,3,3,7,3,3,3,91,'B','Y');
INSERT INTO xxxvii VALUES (4,4,4,7,4,4,4,92,'D','N');
INSERT INTO xxxvii VALUES (5,5,3,7,5,5,5,89,'B','Y');
INSERT INTO xxxvii VALUES (6,6,5,7,6,6,6,88.5,'B','Y');
INSERT INTO xxxvii VALUES (7,7,6,7,7,7,7,92,'B','Y');
INSERT INTO xxxvii VALUES (8,8,7,7,8,8,8,108,'B','Y');
INSERT INTO xxxvii VALUES (9,9,8,7,9,9,9,84.5,'B','Y');
INSERT INTO xxxvii VALUES (10,10,3,7,10,10,10,90.5,'D','Y');
INSERT INTO xxxvii VALUES (11,11,6,7,11,11,11,81.5,'D','D');
INSERT INTO xxxvii VALUES (12,12,5,7,12,12,12,100,'B','Y');
INSERT INTO xxxvii VALUES (13,13,9,5,13,13,13,111,'B','Y');
INSERT INTO xxxvii VALUES (14,14,10,5,14,14,14,111,'B','Y');
INSERT INTO xxxvii VALUES (15,15,11,5,15,15,15,98,'D','Y');
INSERT INTO xxxvii VALUES (16,16,12,5,16,16,16,83.5,'D','Y');
INSERT INTO xxxvii VALUES (17,17,13,5,17,17,17,82.5,'D','Y');
INSERT INTO xxxvii VALUES (18,11,2,5,18,18,18,85.5,'D','Y');
INSERT INTO xxxvii VALUES (19,18,12,5,19,19,19,91,'D','Y');
INSERT INTO xxxvii VALUES (20,19,9,5,20,20,20,91,'D','Y');
INSERT INTO xxxvii VALUES (21,20,14,4,21,21,21,117.5,'D','Y');
INSERT INTO xxxvii VALUES (22,21,15,4,22,22,22,76,'B','Y');
INSERT INTO xxxvii VALUES (23,22,16,4,23,23,23,112,'B','Y');
INSERT INTO xxxvii VALUES (24,23,15,4,24,24,24,84,'B','Y');
INSERT INTO xxxvii VALUES (25,24,17,4,25,25,25,75,'B','D');
INSERT INTO xxxvii VALUES (26,24,17,4,26,26,26,91,'B','Y');
INSERT INTO xxxvii VALUES (27,25,16,4,27,27,27,129,'B','N');
INSERT INTO xxxvii VALUES (28,26,18,17,28,28,28,177,'B','Y');
INSERT INTO xxxvii VALUES (29,27,18,17,29,29,29,183,'B','Y');
INSERT INTO xxxvii VALUES (30,28,16,17,30,30,30,91.5,'B','Y');
INSERT INTO xxxvii VALUES (31,29,19,15,31,31,31,98.5,'D','Y');
INSERT INTO xxxvii VALUES (32,30,20,15,32,32,32,97,'B','Y');
INSERT INTO xxxvii VALUES (73,59,12,3,73,73,73,98,'D','Y');
INSERT INTO xxxvii VALUES (34,31,21,15,34,34,34,78.5,'D','Y');
INSERT INTO xxxvii VALUES (35,32,21,15,35,35,35,102,'B','Y');
INSERT INTO xxxvii VALUES (36,33,20,15,36,36,36,88.5,'D','Y');
INSERT INTO xxxvii VALUES (37,34,12,12,37,37,37,108,'B','Y');
INSERT INTO xxxvii VALUES (38,35,22,12,38,38,38,103,'D','D');
INSERT INTO xxxvii VALUES (39,36,23,12,39,39,39,92,'B','Y');
INSERT INTO xxxvii VALUES (40,37,12,12,40,40,40,115,'B','N');
INSERT INTO xxxvii VALUES (41,38,24,12,41,41,41,95,'D','Y');
INSERT INTO xxxvii VALUES (42,39,24,12,42,42,42,111,'B','Y');
INSERT INTO xxxvii VALUES (43,40,25,11,43,43,43,109,'B','Y');
INSERT INTO xxxvii VALUES (44,41,26,11,44,44,44,133,'B','Y');
INSERT INTO xxxvii VALUES (45,42,27,11,45,45,45,176,'B','Y');
INSERT INTO xxxvii VALUES (46,43,28,11,46,46,46,67.5,'B','Y');
INSERT INTO xxxvii VALUES (47,44,29,11,47,47,47,124,'B','D');
INSERT INTO xxxvii VALUES (48,45,30,11,48,48,48,100.5,'D','Y');
INSERT INTO xxxvii VALUES (49,46,31,11,49,49,49,122,'B','Y');
INSERT INTO xxxvii VALUES (50,47,32,11,50,50,50,123,'B','D');
INSERT INTO xxxvii VALUES (51,44,29,11,51,51,51,129,'B','D');
INSERT INTO xxxvii VALUES (52,42,27,11,52,52,52,160,'B','D');
INSERT INTO xxxvii VALUES (53,47,32,1,53,53,53,150,'B','N');
INSERT INTO xxxvii VALUES (54,44,29,11,54,54,54,134,'B','Y');
INSERT INTO xxxvii VALUES (55,43,28,11,55,55,55,115.5,'B','Y');
INSERT INTO xxxvii VALUES (56,48,33,2,56,56,56,96.5,'B','Y');
INSERT INTO xxxvii VALUES (57,49,34,2,57,57,57,120,'B','Y');
INSERT INTO xxxvii VALUES (58,50,35,2,58,58,58,93.5,'B','Y');
INSERT INTO xxxvii VALUES (59,51,36,2,59,59,59,106.5,'B','D');
INSERT INTO xxxvii VALUES (60,52,34,2,60,60,60,130,'B','Y');
INSERT INTO xxxvii VALUES (61,53,37,2,61,61,61,102.5,'B','Y');
INSERT INTO xxxvii VALUES (62,54,38,2,62,62,62,105,'B','Y');
INSERT INTO xxxvii VALUES (63,55,38,2,63,63,63,89,'B','Y');
INSERT INTO xxxvii VALUES (64,56,36,2,64,64,64,100,'B','Y');
INSERT INTO xxxvii VALUES (65,57,39,2,65,65,65,84.5,'B','Y');
INSERT INTO xxxvii VALUES (66,33,36,2,66,66,66,106.5,'B','Y');
INSERT INTO xxxvii VALUES (67,53,37,2,67,67,67,102.5,'B','N');
INSERT INTO xxxvii VALUES (68,56,36,2,68,68,68,100.5,'B','N');
INSERT INTO xxxvii VALUES (69,47,32,11,69,69,69,150,'B','Y');
INSERT INTO xxxvii VALUES (70,25,16,4,70,70,70,113,'B','Y');
INSERT INTO xxxvii VALUES (71,14,10,5,71,71,71,111,'B','N');
INSERT INTO xxxvii VALUES (72,58,40,15,72,72,72,126,'B','Y');
INSERT INTO xxxvii VALUES (74,53,37,3,74,74,74,101,'B','D');
INSERT INTO xxxvii VALUES (75,60,12,3,75,75,75,97,'D','Y');
INSERT INTO xxxvii VALUES (76,61,12,3,76,76,76,85,'D','Y');
INSERT INTO xxxvii VALUES (77,62,38,3,77,77,77,109.5,'D','Y');
INSERT INTO xxxvii VALUES (78,55,38,3,78,78,78,81.5,'B','D');
INSERT INTO xxxvii VALUES (79,63,12,3,79,79,79,97,'B','Y');
INSERT INTO xxxvii VALUES (80,20,41,3,80,80,80,87.5,'B','Y');
INSERT INTO xxxvii VALUES (81,64,34,3,81,81,81,104.5,'B','Y');
INSERT INTO xxxvii VALUES (82,49,34,3,82,82,82,108,'B','D');
INSERT INTO xxxvii VALUES (83,65,42,3,83,83,83,71,'B','Y');
INSERT INTO xxxvii VALUES (84,51,36,3,84,84,84,107.5,'B','Y');
INSERT INTO xxxvii VALUES (85,66,12,3,85,85,85,100.5,'B','Y');
INSERT INTO xxxvii VALUES (86,67,43,10,86,86,86,156,'B','Y');
INSERT INTO xxxvii VALUES (87,68,44,10,87,87,87,113,'B','Y');
INSERT INTO xxxvii VALUES (88,69,45,10,88,88,88,112,'B','Y');
INSERT INTO xxxvii VALUES (89,70,46,10,89,89,89,107.5,'B','Y');
INSERT INTO xxxvii VALUES (90,71,47,10,90,90,90,113,'B','D');
INSERT INTO xxxvii VALUES (91,72,48,10,91,91,91,138,'B','Y');
INSERT INTO xxxvii VALUES (92,73,49,10,92,92,92,103,'B','N');
INSERT INTO xxxvii VALUES (93,74,50,10,93,93,93,124,'B','Y');
INSERT INTO xxxvii VALUES (94,75,51,10,94,94,94,121,'D','Y');
INSERT INTO xxxvii VALUES (95,76,50,10,95,95,95,130.5,'D','Y');
INSERT INTO xxxvii VALUES (96,77,52,10,96,96,96,123,'B','Y');
INSERT INTO xxxvii VALUES (97,78,12,1,97,97,97,104.5,'B','Y');
INSERT INTO xxxvii VALUES (98,79,53,10,98,98,98,125,'B','Y');
INSERT INTO xxxvii VALUES (99,37,12,1,99,99,99,124.5,'D','Y');
INSERT INTO xxxvii VALUES (100,80,12,1,100,100,100,88,'D','Y');
INSERT INTO xxxvii VALUES (101,81,53,10,101,101,101,82,'D','Y');
INSERT INTO xxxvii VALUES (102,82,12,1,102,102,102,102,'B','Y');
INSERT INTO xxxvii VALUES (103,83,51,10,103,103,103,78.5,'D','N');
INSERT INTO xxxvii VALUES (104,84,54,10,104,104,104,93,'D','Y');
INSERT INTO xxxvii VALUES (105,85,12,1,105,105,105,101.5,'D','Y');
INSERT INTO xxxvii VALUES (106,86,55,10,106,106,106,82.5,'D','N');
INSERT INTO xxxvii VALUES (107,35,12,1,107,107,107,105.5,'D','D');
INSERT INTO xxxvii VALUES (108,87,12,1,108,108,108,87.5,'D','Y');
INSERT INTO xxxvii VALUES (109,88,12,1,109,109,109,112,'B','Y');
INSERT INTO xxxvii VALUES (110,89,12,1,110,110,110,118,'B','Y');
INSERT INTO xxxvii VALUES (111,90,12,1,111,111,111,111,'B','N');
INSERT INTO xxxvii VALUES (112,91,56,3,112,112,112,101,'B','Y');
INSERT INTO xxxvii VALUES (113,92,57,20,113,113,113,105.5,'D','Y');
INSERT INTO xxxvii VALUES (114,93,58,20,114,114,114,147,'B','N');
INSERT INTO xxxvii VALUES (115,94,59,20,115,115,115,107,'B','Y');
INSERT INTO xxxvii VALUES (116,95,9,20,116,116,116,106,'B','N');
INSERT INTO xxxvii VALUES (117,96,60,20,117,117,117,100,'D','N');
INSERT INTO xxxvii VALUES (118,97,61,20,118,118,118,18,'D','N');
INSERT INTO xxxvii VALUES (119,98,60,20,119,119,119,89,'D','N');
INSERT INTO xxxvii VALUES (120,42,27,20,120,120,120,128,'B','D');
INSERT INTO xxxvii VALUES (121,92,57,20,0,0,121,0,'D','N');
INSERT INTO xxxvii VALUES (122,93,58,20,0,0,122,0,'D','N');
INSERT INTO xxxvii VALUES (123,96,62,20,0,0,123,0,'D','N');
INSERT INTO xxxvii VALUES (124,97,61,20,0,0,124,0,'B','N');
INSERT INTO xxxvii VALUES (125,99,29,20,121,121,125,104,'B','N');
INSERT INTO xxxvii VALUES (126,100,10,20,122,122,126,120,'B','Y');
INSERT INTO xxxvii VALUES (127,101,63,20,123,123,127,126,'D','Y');
INSERT INTO xxxvii VALUES (128,102,64,20,124,124,128,93,'D','Y');
INSERT INTO xxxvii VALUES (129,102,9,20,0,0,129,0,'D','N');
INSERT INTO xxxvii VALUES (130,103,9,20,0,0,130,0,'D','N');
INSERT INTO xxxvii VALUES (131,104,64,20,0,0,131,0,'D','N');
INSERT INTO xxxvii VALUES (132,105,10,20,0,0,132,0,'D','N');
INSERT INTO xxxvii VALUES (133,106,65,22,125,125,133,128.5,'D','Y');
INSERT INTO xxxvii VALUES (134,107,66,22,126,126,134,124.5,'D','Y');
INSERT INTO xxxvii VALUES (135,108,67,22,135,135,135,118.5,'D','Y');
INSERT INTO xxxvii VALUES (136,109,68,22,128,128,136,94.5,'D','Y');
INSERT INTO xxxvii VALUES (137,110,69,25,0,0,137,0,'B','N');
INSERT INTO xxxvii VALUES (138,111,70,25,0,0,138,0,'D','N');
INSERT INTO xxxvii VALUES (139,108,67,25,0,0,139,0,'D','N');
INSERT INTO xxxvii VALUES (140,20,71,25,0,0,140,0,'D','Y');
INSERT INTO xxxvii VALUES (141,109,67,25,0,0,141,0,'B','N');
INSERT INTO xxxvii VALUES (142,112,72,18,129,129,142,85.5,'D','D');
INSERT INTO xxxvii VALUES (143,113,73,18,130,130,143,83.5,'D','D');
INSERT INTO xxxvii VALUES (144,114,74,18,131,131,144,116.5,'B','Y');
INSERT INTO xxxvii VALUES (145,114,74,18,132,132,145,116.5,'D','Y');
INSERT INTO xxxvii VALUES (146,115,75,18,133,133,146,91.5,'D','Y');
INSERT INTO xxxvii VALUES (147,116,72,18,134,134,147,130,'B','Y');
INSERT INTO xxxvii VALUES (148,117,72,18,135,135,148,104.5,'D','Y');
INSERT INTO xxxvii VALUES (149,117,72,18,136,136,149,94,'B','Y');
INSERT INTO xxxvii VALUES (150,118,74,18,137,137,150,88.5,'D','Y');
INSERT INTO xxxvii VALUES (151,113,73,24,138,138,151,91.5,'D','Y');
INSERT INTO xxxvii VALUES (152,119,76,24,139,139,152,113.5,'D','Y');
INSERT INTO xxxvii VALUES (153,120,77,24,140,140,153,98,'B','Y');
INSERT INTO xxxvii VALUES (154,121,78,24,141,141,154,104.5,'D','Y');
INSERT INTO xxxvii VALUES (155,116,72,24,142,142,155,128,'B','D');
INSERT INTO xxxvii VALUES (156,114,74,24,143,143,156,107,'D','D');
INSERT INTO xxxvii VALUES (157,122,79,24,144,144,157,86,'B','Y');
INSERT INTO xxxvii VALUES (158,112,72,24,145,145,158,92.5,'D','Y');
INSERT INTO xxxvii VALUES (159,117,72,24,146,146,159,110,'B','N');
INSERT INTO xxxvii VALUES (160,123,80,14,147,147,160,115,'B','Y');
INSERT INTO xxxvii VALUES (161,124,48,14,148,148,161,102.5,'D','Y');
INSERT INTO xxxvii VALUES (162,125,43,14,149,149,162,99.5,'D','N');
INSERT INTO xxxvii VALUES (163,126,81,14,150,150,163,114.5,'B','N');
INSERT INTO xxxvii VALUES (164,73,82,14,151,151,164,119.5,'D','N');
INSERT INTO xxxvii VALUES (165,67,48,14,152,152,165,144,'B','Y');
INSERT INTO xxxvii VALUES (166,72,48,14,153,153,166,129,'B','N');
INSERT INTO xxxvii VALUES (167,127,83,14,154,154,167,115,'B','Y');
INSERT INTO xxxvii VALUES (168,128,84,14,155,155,168,120,'B','Y');
INSERT INTO xxxvii VALUES (169,75,48,14,156,156,169,110,'B','Y');
INSERT INTO xxxvii VALUES (170,74,85,14,157,157,170,121,'B','Y');
INSERT INTO xxxvii VALUES (171,129,12,1,158,158,171,103.5,'D','Y');
INSERT INTO xxxvii VALUES (172,130,12,1,159,159,172,98,'D','N');
INSERT INTO xxxvii VALUES (173,0,0,0,160,160,173,0,'','Z');
INSERT INTO xxxvii VALUES (174,117,72,24,161,161,174,109,'B','Y');
INSERT INTO xxxvii VALUES (175,71,47,10,162,162,175,103,'B','Y');
INSERT INTO xxxvii VALUES (176,72,48,14,163,163,176,124,'B','Y');
INSERT INTO xxxvii VALUES (177,126,81,14,164,164,177,109,'B','Y');
INSERT INTO xxxvii VALUES (178,125,43,14,165,165,178,99,'D','Y');
INSERT INTO xxxvii VALUES (179,73,82,14,166,166,179,119.5,'B','N');
INSERT INTO xxxvii VALUES (180,131,86,9,0,0,180,0,'B','N');
INSERT INTO xxxvii VALUES (181,132,87,9,0,167,181,28,'B','Y');
INSERT INTO xxxvii VALUES (182,131,86,9,0,168,182,19,'B','Y');
INSERT INTO xxxvii VALUES (183,133,88,9,0,169,183,14,'B','Y');
INSERT INTO xxxvii VALUES (184,134,89,9,0,170,184,34,'D','Y');
INSERT INTO xxxvii VALUES (185,135,90,9,0,171,185,26,'D','Y');
INSERT INTO xxxvii VALUES (186,136,91,9,0,0,186,0,'D','Y');
INSERT INTO xxxvii VALUES (187,137,92,9,0,172,187,28,'D','Y');
INSERT INTO xxxvii VALUES (188,138,93,9,0,173,188,30,'D','Y');
INSERT INTO xxxvii VALUES (189,139,94,9,0,174,189,33,'D','Y');
INSERT INTO xxxvii VALUES (190,140,95,10,0,175,190,14,'D','N');
INSERT INTO xxxvii VALUES (191,141,90,9,0,176,191,39,'D','N');
INSERT INTO xxxvii VALUES (192,2,96,21,167,177,192,88,'D','Y');
INSERT INTO xxxvii VALUES (193,12,88,21,168,178,193,81,'B','Y');
INSERT INTO xxxvii VALUES (194,142,97,21,169,0,194,51,'D','Y');
INSERT INTO xxxvii VALUES (195,7,6,21,170,179,195,77.5,'D','Y');
INSERT INTO xxxvii VALUES (196,143,23,1,171,180,196,70.5,'B','N');
INSERT INTO xxxvii VALUES (197,3,96,21,172,181,197,83,'B','Y');
INSERT INTO xxxvii VALUES (198,144,88,21,173,182,198,96.5,'D','Y');
INSERT INTO xxxvii VALUES (199,145,96,21,174,183,199,77.5,'D','Y');
INSERT INTO xxxvii VALUES (200,146,96,21,175,184,200,77.5,'D','N');
INSERT INTO xxxvii VALUES (201,74,85,27,176,185,201,120,'B','Y');
INSERT INTO xxxvii VALUES (202,147,98,27,177,186,202,116.5,'B','N');
INSERT INTO xxxvii VALUES (203,148,99,27,178,187,203,116,'B','N');
INSERT INTO xxxvii VALUES (204,149,100,27,179,188,204,115,'B','Y');
INSERT INTO xxxvii VALUES (205,150,101,27,180,189,205,107,'B','Y');
INSERT INTO xxxvii VALUES (206,151,99,27,181,190,206,106,'B','Y');
INSERT INTO xxxvii VALUES (207,79,53,27,182,191,207,100.5,'B','Y');
INSERT INTO xxxvii VALUES (208,152,102,27,183,192,208,92.5,'B','Y');
INSERT INTO xxxvii VALUES (209,153,98,27,184,193,209,82.5,'B','Y');
INSERT INTO xxxvii VALUES (210,75,51,27,185,194,210,116.5,'D','N');
INSERT INTO xxxvii VALUES (211,154,103,27,186,195,211,121.5,'D','N');
INSERT INTO xxxvii VALUES (212,155,77,27,187,196,212,116,'D','N');
INSERT INTO xxxvii VALUES (213,156,104,27,188,197,213,101.5,'D','N');
INSERT INTO xxxvii VALUES (214,157,105,27,189,198,214,91.5,'D','Y');
INSERT INTO xxxvii VALUES (215,158,105,27,190,199,215,88.5,'D','N');
INSERT INTO xxxvii VALUES (216,159,98,27,191,200,216,87.5,'D','Y');
INSERT INTO xxxvii VALUES (217,160,106,27,192,201,217,86.5,'D','Y');
INSERT INTO xxxvii VALUES (218,161,99,27,193,202,218,85,'D','Y');
INSERT INTO xxxvii VALUES (219,162,107,27,194,203,219,80,'D','Y');
INSERT INTO xxxvii VALUES (220,95,9,26,195,204,220,149,'A','Y');
INSERT INTO xxxvii VALUES (221,163,98,27,196,205,221,79,'D','Y');
INSERT INTO xxxvii VALUES (222,164,108,27,197,206,222,78.5,'D','Y');
INSERT INTO xxxvii VALUES (223,165,53,27,198,207,223,69.5,'D','Y');
INSERT INTO xxxvii VALUES (224,95,9,26,199,208,224,138,'D','N');
INSERT INTO xxxvii VALUES (225,97,10,26,200,209,225,112,'A','Y');
INSERT INTO xxxvii VALUES (226,97,10,26,201,210,226,91,'D','N');
INSERT INTO xxxvii VALUES (227,92,57,26,202,211,227,113.5,'D','Y');
INSERT INTO xxxvii VALUES (228,102,64,26,203,212,228,91.5,'D','Y');
INSERT INTO xxxvii VALUES (229,94,10,26,204,213,229,99,'A','Y');
INSERT INTO xxxvii VALUES (230,94,10,26,205,214,230,102,'B','Y');
INSERT INTO xxxvii VALUES (231,166,64,26,206,215,231,86.5,'D','Y');
INSERT INTO xxxvii VALUES (232,167,3,23,207,216,232,89.5,'D','N');
INSERT INTO xxxvii VALUES (233,12,88,23,208,217,233,96,'B','N');
INSERT INTO xxxvii VALUES (234,12,88,23,209,218,234,96,'A','Y');
INSERT INTO xxxvii VALUES (235,6,5,23,210,219,235,116,'A','Y');
INSERT INTO xxxvii VALUES (236,142,109,23,211,220,236,74.5,'A','N');
INSERT INTO xxxvii VALUES (237,93,58,20,212,221,237,130,'B','Y');
INSERT INTO xxxvii VALUES (238,95,9,20,213,222,238,120,'B','Y');
INSERT INTO xxxvii VALUES (239,97,61,20,214,223,239,99,'D','N');
INSERT INTO xxxvii VALUES (240,97,61,20,215,224,240,99,'B','Y');
INSERT INTO xxxvii VALUES (241,44,29,20,216,225,241,95,'B','Y');
INSERT INTO xxxvii VALUES (242,95,9,26,217,226,242,138,'B','N');
INSERT INTO xxxvii VALUES (243,97,10,26,218,227,243,91,'B','N');
INSERT INTO xxxvii VALUES (244,0,0,0,219,228,244,0,'','Z');
INSERT INTO xxxvii VALUES (245,0,0,0,220,229,245,0,'','Z');
INSERT INTO xxxvii VALUES (246,0,0,0,221,230,246,0,'','Z');
INSERT INTO xxxvii VALUES (247,0,0,0,222,231,247,0,'','Z');
INSERT INTO xxxvii VALUES (248,0,0,0,223,232,248,0,'','Z');
INSERT INTO xxxvii VALUES (249,0,0,0,224,233,249,0,'','Z');
INSERT INTO xxxvii VALUES (250,0,0,0,225,234,250,0,'','Z');
INSERT INTO xxxvii VALUES (251,0,0,0,226,235,251,0,'','Z');
INSERT INTO xxxvii VALUES (252,0,0,0,227,236,252,0,'','Z');
INSERT INTO xxxvii VALUES (253,0,0,0,228,237,253,0,'','Z');
INSERT INTO xxxvii VALUES (254,0,0,0,229,238,254,0,'',NULL);
INSERT INTO xxxvii VALUES (255,92,57,26,0,0,0,107,'C',NULL);
INSERT INTO xxxvii VALUES (256,175,10,26,0,0,0,89,'B',NULL);
INSERT INTO xxxvii VALUES (257,95,9,26,0,0,0,91,'B',NULL);
INSERT INTO xxxvii VALUES (258,95,9,43,0,0,0,110,'B',NULL);
INSERT INTO xxxvii VALUES (259,92,57,43,0,0,0,90.5,'C',NULL);

--
-- Table structure for table `xxxviii`
--

CREATE TABLE xxxviii (
  YID int(5) NOT NULL auto_increment,
  PID int(3) NOT NULL default '0',
  HID int(3) NOT NULL default '0',
  EID int(3) NOT NULL default '0',
  SHID int(3) default NULL,
  SRID int(3) default NULL,
  SDID int(3) default NULL,
  score float NOT NULL default '0',
  DIV char(1) NOT NULL default '',
  seen char(1) default 'N',
  PRIMARY KEY  (YID),
  KEY YID (YID),
  KEY score (score)
) TYPE=MyISAM;

--
-- Dumping data for table `xxxviii`
--

INSERT INTO xxxviii VALUES (1,0,0,0,0,0,0,0,'0','Z');
INSERT INTO xxxviii VALUES (3,83,103,32,269,276,294,205,'A','Z');
INSERT INTO xxxviii VALUES (4,83,103,32,270,277,295,201,'B','Z');
INSERT INTO xxxviii VALUES (5,78,40,32,271,278,296,174,'C','Z');
INSERT INTO xxxviii VALUES (6,78,40,32,272,279,297,170,'D','Z');
INSERT INTO xxxviii VALUES (7,25,46,32,273,280,298,165.5,'E','Z');
INSERT INTO xxxviii VALUES (8,25,46,32,274,281,299,162.5,'F','Z');
INSERT INTO xxxviii VALUES (9,116,131,41,275,282,300,114,'B','D');
INSERT INTO xxxviii VALUES (10,191,132,42,276,283,301,114.5,'C','Y');
INSERT INTO xxxviii VALUES (11,192,97,42,277,284,302,93.5,'C','Y');
INSERT INTO xxxviii VALUES (12,193,97,42,278,285,303,87,'C','Y');
INSERT INTO xxxviii VALUES (13,194,132,42,279,286,304,87,'C','Y');
INSERT INTO xxxviii VALUES (14,21,119,36,280,287,305,92.5,'D','Y');
INSERT INTO xxxviii VALUES (15,176,120,36,281,288,306,86,'B','Z');
INSERT INTO xxxviii VALUES (16,177,121,36,282,289,307,85.5,'D','Y');
INSERT INTO xxxviii VALUES (17,178,122,36,283,0,308,73,'B','Z');
INSERT INTO xxxviii VALUES (18,22,119,36,284,290,309,144,'D','Y');
INSERT INTO xxxviii VALUES (19,195,133,38,285,291,310,106,'B','Y');
INSERT INTO xxxviii VALUES (20,196,103,38,286,292,311,92,'B','Y');
INSERT INTO xxxviii VALUES (21,197,134,38,287,293,312,96,'B','Y');
INSERT INTO xxxviii VALUES (22,172,125,48,288,294,313,114.5,'D','Y');
INSERT INTO xxxviii VALUES (23,172,125,48,289,295,314,104,'D','Z');
INSERT INTO xxxviii VALUES (24,172,115,48,290,296,315,92.5,'D','D');
INSERT INTO xxxviii VALUES (25,198,135,48,291,297,316,97.5,'D','Y');
INSERT INTO xxxviii VALUES (26,199,136,48,292,298,317,110.5,'D','Y');
INSERT INTO xxxviii VALUES (27,200,136,48,293,299,318,109,'D','Y');
INSERT INTO xxxviii VALUES (28,201,135,48,294,300,319,83.5,'B','D');
INSERT INTO xxxviii VALUES (29,178,122,36,295,301,320,106,'B','D');
INSERT INTO xxxviii VALUES (30,176,120,36,296,302,321,85,'B','Y');
INSERT INTO xxxviii VALUES (31,197,134,38,297,303,322,96,'B','Z');
INSERT INTO xxxviii VALUES (32,182,115,37,298,304,323,87.5,'D','D');
INSERT INTO xxxviii VALUES (33,172,125,37,299,305,324,100.5,'D','D');
INSERT INTO xxxviii VALUES (34,167,4,34,300,306,325,102.5,'D','Z');
INSERT INTO xxxviii VALUES (35,65,42,46,301,307,326,121,'B','Y');
INSERT INTO xxxviii VALUES (36,56,137,46,302,308,327,108.5,'B','Y');
INSERT INTO xxxviii VALUES (37,51,36,46,303,309,328,102.5,'B','Y');
INSERT INTO xxxviii VALUES (38,202,56,46,304,310,329,120,'B','Y');
INSERT INTO xxxviii VALUES (39,203,12,46,305,311,330,105.5,'D','Y');
INSERT INTO xxxviii VALUES (40,204,12,46,306,312,331,81.5,'D','Y');
INSERT INTO xxxviii VALUES (41,83,12,34,307,313,332,210,'E','Z');
INSERT INTO xxxviii VALUES (42,167,4,35,308,314,333,102.5,'D','D');
INSERT INTO xxxviii VALUES (43,6,5,35,309,315,334,116,'B','Z');
INSERT INTO xxxviii VALUES (44,179,123,35,310,316,335,100,'B','Y');
INSERT INTO xxxviii VALUES (45,180,4,35,311,317,336,72.5,'D','Y');
INSERT INTO xxxviii VALUES (46,181,124,35,312,318,337,95,'D','Y');
INSERT INTO xxxviii VALUES (47,17,5,35,313,319,338,83,'B','Y');
INSERT INTO xxxviii VALUES (48,6,5,35,314,0,339,88,'B','Z');
INSERT INTO xxxviii VALUES (49,167,4,35,315,320,340,98,'D','D');
INSERT INTO xxxviii VALUES (50,205,16,53,316,321,341,117,'B','Y');
INSERT INTO xxxviii VALUES (51,22,138,53,317,322,342,136,'B','Y');
INSERT INTO xxxviii VALUES (52,206,139,53,318,323,343,116,'B','D');
INSERT INTO xxxviii VALUES (53,207,140,53,319,324,344,120,'B','D');
INSERT INTO xxxviii VALUES (54,208,141,53,320,325,345,65.5,'F','Y');
INSERT INTO xxxviii VALUES (55,178,142,53,321,326,346,139,'B','Y');
INSERT INTO xxxviii VALUES (56,209,143,53,322,327,347,109,'B','D');
INSERT INTO xxxviii VALUES (57,210,144,53,323,328,348,104,'B','Y');
INSERT INTO xxxviii VALUES (58,211,139,53,324,329,349,111,'B','D');
INSERT INTO xxxviii VALUES (59,26,145,53,325,330,350,140,'B','Y');
INSERT INTO xxxviii VALUES (60,212,141,53,326,331,351,93,'D','Y');
INSERT INTO xxxviii VALUES (61,213,16,53,327,332,352,103,'B','Y');
INSERT INTO xxxviii VALUES (62,214,146,53,328,333,353,46,'F','Y');
INSERT INTO xxxviii VALUES (63,89,147,54,329,334,354,121,'B','Z');
INSERT INTO xxxviii VALUES (64,88,148,54,330,335,355,65,'B','Y');
INSERT INTO xxxviii VALUES (65,90,149,54,331,336,356,114,'B','Y');
INSERT INTO xxxviii VALUES (66,82,24,54,332,337,357,126.5,'D','Y');
INSERT INTO xxxviii VALUES (67,129,24,54,333,338,358,102,'D','Z');
INSERT INTO xxxviii VALUES (68,215,147,54,334,0,359,70,'B','Z');
INSERT INTO xxxviii VALUES (69,27,18,53,335,339,360,179,'B','Y');
INSERT INTO xxxviii VALUES (70,47,32,51,336,340,361,118,'B','D');
INSERT INTO xxxviii VALUES (71,41,26,51,337,341,362,118,'B','Y');
INSERT INTO xxxviii VALUES (72,0,0,0,338,342,363,0,'','Z');
INSERT INTO xxxviii VALUES (73,0,0,0,339,343,364,0,'','Z');
INSERT INTO xxxviii VALUES (74,22,139,55,340,344,365,132,'B','D');
INSERT INTO xxxviii VALUES (75,211,139,55,341,345,366,120,'B','Y');
INSERT INTO xxxviii VALUES (76,208,141,55,342,346,367,85.5,'D','D');
INSERT INTO xxxviii VALUES (77,206,139,55,343,347,368,130,'B','Y');
INSERT INTO xxxviii VALUES (78,216,150,55,344,348,369,135,'B','Y');
INSERT INTO xxxviii VALUES (79,212,141,55,345,349,370,110,'B','Y');
INSERT INTO xxxviii VALUES (80,47,32,55,346,350,371,137,'B','Y');
INSERT INTO xxxviii VALUES (81,43,32,55,347,351,372,103,'B','Y');
INSERT INTO xxxviii VALUES (82,217,135,56,348,352,373,104,'B','Y');
INSERT INTO xxxviii VALUES (83,218,151,56,349,353,374,94.5,'D','Y');
INSERT INTO xxxviii VALUES (84,182,115,56,350,354,375,104,'D','Y');
INSERT INTO xxxviii VALUES (85,201,135,56,351,355,376,92,'B','Y');
INSERT INTO xxxviii VALUES (86,200,136,56,352,356,377,103,'D','D');
INSERT INTO xxxviii VALUES (87,199,136,56,353,357,378,104.5,'D','D');
INSERT INTO xxxviii VALUES (88,219,125,56,354,358,379,102,'D','Y');
INSERT INTO xxxviii VALUES (89,199,136,56,355,359,380,105.5,'B','Y');
INSERT INTO xxxviii VALUES (90,200,136,56,356,360,381,102.5,'B','Y');
INSERT INTO xxxviii VALUES (91,220,152,56,357,361,382,93,'D','Y');
INSERT INTO xxxviii VALUES (92,220,152,56,358,362,383,94,'B','Y');
INSERT INTO xxxviii VALUES (93,6,5,58,359,363,384,118,'B','D');
INSERT INTO xxxviii VALUES (94,221,153,58,360,364,385,109.5,'D','Y');
INSERT INTO xxxviii VALUES (95,167,3,58,361,365,386,110.5,'D','Y');
INSERT INTO xxxviii VALUES (96,222,4,58,362,366,387,88.5,'D','Y');
INSERT INTO xxxviii VALUES (97,223,3,58,363,367,388,92.5,'D','Y');
INSERT INTO xxxviii VALUES (98,224,3,58,364,368,389,85.5,'F','Y');
INSERT INTO xxxviii VALUES (99,225,154,58,365,369,390,77.5,'F','D');
INSERT INTO xxxviii VALUES (100,226,155,58,366,370,391,110.5,'F','Y');
INSERT INTO xxxviii VALUES (101,227,156,58,367,371,392,89.5,'D','Y');
INSERT INTO xxxviii VALUES (102,228,157,58,368,372,393,96,'B','Y');
INSERT INTO xxxviii VALUES (103,3,158,58,369,373,394,119,'B','Y');
INSERT INTO xxxviii VALUES (104,11,153,58,370,374,395,113,'B','Y');
INSERT INTO xxxviii VALUES (105,229,159,58,371,375,396,102,'B','Y');
INSERT INTO xxxviii VALUES (106,230,159,58,372,376,397,91.5,'F','Y');
INSERT INTO xxxviii VALUES (107,231,153,58,373,377,398,127,'B','Y');
INSERT INTO xxxviii VALUES (108,15,159,58,374,378,399,99.5,'B','D');
INSERT INTO xxxviii VALUES (109,232,156,58,375,379,400,47.5,'F','Y');
INSERT INTO xxxviii VALUES (110,168,110,34,383,387,403,127,'B','Y');
INSERT INTO xxxviii VALUES (111,170,114,34,384,388,404,80,'D','Y');
INSERT INTO xxxviii VALUES (112,171,73,34,385,389,405,78.5,'D','Y');
INSERT INTO xxxviii VALUES (113,172,115,34,386,390,406,110,'D','D');
INSERT INTO xxxviii VALUES (114,136,160,34,387,391,407,109,'D','Y');
INSERT INTO xxxviii VALUES (115,78,110,34,388,392,408,108.5,'B','Y');
INSERT INTO xxxviii VALUES (116,117,112,34,389,393,409,125,'B','Y');
INSERT INTO xxxviii VALUES (117,173,117,34,390,394,410,91.5,'D','Y');
INSERT INTO xxxviii VALUES (118,116,114,34,391,395,411,79,'D','Y');
INSERT INTO xxxviii VALUES (119,155,77,34,392,396,412,114,'B','Y');
INSERT INTO xxxviii VALUES (120,121,118,34,393,397,413,63,'D','Y');
INSERT INTO xxxviii VALUES (121,169,113,34,394,398,414,99.5,'B','Y');
INSERT INTO xxxviii VALUES (122,162,107,34,395,399,415,109.5,'D','Y');
INSERT INTO xxxviii VALUES (123,174,77,34,396,400,416,133.5,'D','Y');
INSERT INTO xxxviii VALUES (124,183,126,39,398,402,417,111,'B','Y');
INSERT INTO xxxviii VALUES (125,184,117,39,399,403,418,84.5,'D','Y');
INSERT INTO xxxviii VALUES (126,185,127,39,400,404,419,96,'B','Y');
INSERT INTO xxxviii VALUES (127,186,128,39,401,405,420,98.5,'B','Y');
INSERT INTO xxxviii VALUES (128,187,128,39,402,406,421,91,'D','Y');
INSERT INTO xxxviii VALUES (129,188,128,39,403,407,422,90.5,'B','Y');
INSERT INTO xxxviii VALUES (130,189,126,39,404,408,423,103.5,'B','Y');
INSERT INTO xxxviii VALUES (131,190,130,39,405,409,424,58,'F','Y');
INSERT INTO xxxviii VALUES (132,92,161,45,406,410,425,107,'D','Y');
INSERT INTO xxxviii VALUES (133,6,5,35,407,411,426,115,'B','D');
INSERT INTO xxxviii VALUES (134,233,123,35,408,412,427,95.5,'F','Y');
INSERT INTO xxxviii VALUES (135,234,124,35,409,413,0,96,'F','Y');
INSERT INTO xxxviii VALUES (136,235,162,35,410,414,0,86.5,'F','Y');
INSERT INTO xxxviii VALUES (137,236,3,35,411,0,0,0,'F','Z');
INSERT INTO xxxviii VALUES (138,206,139,55,412,415,428,115,'B','D');
INSERT INTO xxxviii VALUES (139,211,139,55,413,416,429,104,'B','D');
INSERT INTO xxxviii VALUES (140,216,150,55,414,417,430,114,'B','D');
INSERT INTO xxxviii VALUES (141,208,141,55,415,418,431,78,'D','D');
INSERT INTO xxxviii VALUES (142,29,70,63,416,419,0,51,'D','Y');
INSERT INTO xxxviii VALUES (143,32,70,63,417,420,0,96,'D','Y');
INSERT INTO xxxviii VALUES (144,237,19,63,418,421,0,115.5,'F','Y');
INSERT INTO xxxviii VALUES (145,30,71,63,419,422,0,97,'B','D');
INSERT INTO xxxviii VALUES (146,238,163,63,420,423,0,77.5,'D','Y');
INSERT INTO xxxviii VALUES (147,32,164,68,421,424,0,93.5,'D','Z');
INSERT INTO xxxviii VALUES (148,239,165,68,422,425,0,118,'B','Y');
INSERT INTO xxxviii VALUES (149,240,166,68,423,426,0,115.5,'B','Y');
INSERT INTO xxxviii VALUES (150,241,167,68,424,427,0,109,'B','Y');
INSERT INTO xxxviii VALUES (151,58,40,68,425,428,0,121,'B','Y');
INSERT INTO xxxviii VALUES (152,30,19,68,426,429,0,108,'B','Y');
INSERT INTO xxxviii VALUES (153,242,19,68,427,430,0,67,'F','Y');
INSERT INTO xxxviii VALUES (154,101,59,40,428,431,0,84,'D','Y');
INSERT INTO xxxviii VALUES (155,102,168,40,429,432,0,109.5,'D','Y');
INSERT INTO xxxviii VALUES (156,93,58,40,430,433,0,121,'B','N');
INSERT INTO xxxviii VALUES (157,6,5,58,431,434,432,137,'B','Z');
INSERT INTO xxxviii VALUES (158,167,3,58,432,435,433,105.5,'D','Z');
INSERT INTO xxxviii VALUES (159,12,88,58,433,436,434,118,'B','Z');
INSERT INTO xxxviii VALUES (160,231,153,58,434,437,435,121,'B','Z');
INSERT INTO xxxviii VALUES (161,243,169,58,435,438,436,79,'D','Z');
INSERT INTO xxxviii VALUES (162,89,147,54,436,439,437,123,'B','Y');
INSERT INTO xxxviii VALUES (163,129,24,54,437,440,438,101,'D','Y');
INSERT INTO xxxviii VALUES (164,215,147,54,438,0,439,90,'B','Y');
INSERT INTO xxxviii VALUES (165,244,24,54,439,441,440,89.5,'D','Y');
INSERT INTO xxxviii VALUES (166,6,5,67,440,442,0,136,'B','Y');
INSERT INTO xxxviii VALUES (167,167,3,67,441,443,0,105.5,'B','Z');
INSERT INTO xxxviii VALUES (168,12,88,67,442,444,0,118,'B','D');
INSERT INTO xxxviii VALUES (169,231,170,67,443,445,0,121,'B','D');
INSERT INTO xxxviii VALUES (170,11,153,67,444,446,0,107,'B','D');
INSERT INTO xxxviii VALUES (171,245,171,67,445,447,0,141,'B','Y');
INSERT INTO xxxviii VALUES (172,246,169,67,446,448,0,79,'D','Y');
INSERT INTO xxxviii VALUES (173,247,172,67,447,449,0,88,'D','Y');
INSERT INTO xxxviii VALUES (174,248,155,67,448,450,0,83.5,'F','Y');
INSERT INTO xxxviii VALUES (175,15,173,67,449,451,0,110,'B','D');
INSERT INTO xxxviii VALUES (176,225,154,67,450,452,0,86.5,'F','Y');
INSERT INTO xxxviii VALUES (177,249,153,67,451,0,0,64,'D','Y');
INSERT INTO xxxviii VALUES (178,145,96,67,452,453,0,109.5,'B','Y');
INSERT INTO xxxviii VALUES (179,250,174,67,453,454,0,117,'D','Y');
INSERT INTO xxxviii VALUES (180,251,175,67,454,455,0,98,'D','Y');
INSERT INTO xxxviii VALUES (181,252,176,67,455,456,0,91.5,'D','Y');
INSERT INTO xxxviii VALUES (182,253,177,67,456,457,0,95,'D','Y');
INSERT INTO xxxviii VALUES (183,116,114,57,457,458,441,119,'B','Y');
INSERT INTO xxxviii VALUES (184,254,178,67,458,459,0,100,'D','Y');
INSERT INTO xxxviii VALUES (185,255,179,67,459,460,0,85.5,'D','Y');
INSERT INTO xxxviii VALUES (186,256,180,67,460,461,0,108,'B','Y');
INSERT INTO xxxviii VALUES (187,257,181,67,461,462,0,94,'D','Y');
INSERT INTO xxxviii VALUES (188,258,182,67,462,463,0,90,'D','Y');
INSERT INTO xxxviii VALUES (189,167,3,67,463,464,0,105.5,'D','N');
INSERT INTO xxxviii VALUES (190,259,88,62,464,0,0,55.5,'D','Z');
INSERT INTO xxxviii VALUES (191,15,173,62,465,465,0,144,'B','Y');
INSERT INTO xxxviii VALUES (192,12,88,62,466,466,0,139,'B','Y');
INSERT INTO xxxviii VALUES (193,11,88,62,467,467,0,103,'B','Z');
INSERT INTO xxxviii VALUES (194,260,88,62,468,0,0,61.5,'D','Y');
INSERT INTO xxxviii VALUES (195,261,183,62,469,0,0,63,'D','Y');
INSERT INTO xxxviii VALUES (196,262,88,62,470,468,0,94,'D','Z');
INSERT INTO xxxviii VALUES (197,263,184,69,471,469,0,16,'D','N');
INSERT INTO xxxviii VALUES (198,264,185,69,472,470,0,89,'D','N');
INSERT INTO xxxviii VALUES (199,210,144,70,473,471,0,103,'B','D');
INSERT INTO xxxviii VALUES (200,265,186,70,474,472,0,105,'D','Y');
INSERT INTO xxxviii VALUES (201,207,187,70,475,473,0,145,'B','Y');
INSERT INTO xxxviii VALUES (202,208,188,70,476,474,0,103,'D','Y');
INSERT INTO xxxviii VALUES (203,266,189,70,477,475,0,92,'B','Y');
INSERT INTO xxxviii VALUES (204,209,143,70,478,476,0,115,'B','Y');
INSERT INTO xxxviii VALUES (205,267,190,70,479,477,0,103,'B','Y');
INSERT INTO xxxviii VALUES (206,22,16,70,480,478,0,135.5,'B','N');
INSERT INTO xxxviii VALUES (207,211,139,72,481,479,0,113,'B','D');
INSERT INTO xxxviii VALUES (208,22,138,72,482,480,0,129,'B','D');
INSERT INTO xxxviii VALUES (209,205,16,72,483,481,0,108.5,'B','D');
INSERT INTO xxxviii VALUES (210,178,138,72,484,482,0,105.5,'B','D');
INSERT INTO xxxviii VALUES (211,206,174,72,485,483,0,103.5,'B','Z');
INSERT INTO xxxviii VALUES (212,208,25,72,486,484,0,85,'B','Y');
INSERT INTO xxxviii VALUES (213,210,144,72,487,485,0,103,'B','D');
INSERT INTO xxxviii VALUES (214,209,143,72,488,486,0,109,'B','D');
INSERT INTO xxxviii VALUES (215,40,25,72,489,487,0,99,'B','Y');
INSERT INTO xxxviii VALUES (216,207,187,72,490,488,0,111,'B','D');
INSERT INTO xxxviii VALUES (217,95,9,43,491,489,442,130,'B','Z');
INSERT INTO xxxviii VALUES (218,95,9,43,492,490,443,130,'B','Z');
INSERT INTO xxxviii VALUES (219,92,161,43,493,491,444,90.5,'D','D');
INSERT INTO xxxviii VALUES (220,95,9,43,494,492,445,110,'B','Y');
INSERT INTO xxxviii VALUES (221,268,10,43,495,493,446,89,'B','N');
INSERT INTO xxxviii VALUES (222,6,5,71,496,494,0,120,'B','D');
INSERT INTO xxxviii VALUES (223,167,3,71,497,495,0,106,'B','Y');
INSERT INTO xxxviii VALUES (224,226,3,71,498,496,0,86.5,'B','Z');
INSERT INTO xxxviii VALUES (225,269,5,71,499,497,0,102,'F','Y');
INSERT INTO xxxviii VALUES (226,270,3,71,500,498,0,77.5,'D','Y');
INSERT INTO xxxviii VALUES (227,225,154,71,501,499,0,75.5,'F','D');
INSERT INTO xxxviii VALUES (228,271,191,71,0,500,0,10,'F','Y');
INSERT INTO xxxviii VALUES (229,167,3,71,502,501,0,108.5,'D','D');
INSERT INTO xxxviii VALUES (230,167,3,71,503,502,0,108.5,'D','Z');
INSERT INTO xxxviii VALUES (231,272,192,71,504,503,0,86.5,'D','Y');
INSERT INTO xxxviii VALUES (232,273,193,71,505,504,0,78.5,'B','Y');
INSERT INTO xxxviii VALUES (233,12,194,71,506,505,0,115.5,'D','Z');
INSERT INTO xxxviii VALUES (234,11,153,71,507,506,0,98,'B','D');
INSERT INTO xxxviii VALUES (235,274,195,71,508,507,0,102,'B','Y');
INSERT INTO xxxviii VALUES (236,3,196,71,509,508,0,115,'B','D');
INSERT INTO xxxviii VALUES (237,6,5,71,510,509,0,127,'B','D');
INSERT INTO xxxviii VALUES (238,233,3,71,511,510,0,80.5,'D','Y');
INSERT INTO xxxviii VALUES (239,275,3,71,512,511,0,63,'D','Y');
INSERT INTO xxxviii VALUES (240,253,177,71,513,512,0,94,'B','Y');
INSERT INTO xxxviii VALUES (241,251,175,71,514,513,0,88.5,'D','D');
INSERT INTO xxxviii VALUES (242,17,197,71,515,514,0,97.5,'D','Y');
INSERT INTO xxxviii VALUES (243,226,4,71,516,515,0,86.5,'D','Y');
INSERT INTO xxxviii VALUES (244,274,195,71,517,516,0,102,'B','D');
INSERT INTO xxxviii VALUES (245,12,194,71,518,517,0,115.5,'D','N');
INSERT INTO xxxviii VALUES (246,206,198,72,519,518,0,103.5,'D','N');

