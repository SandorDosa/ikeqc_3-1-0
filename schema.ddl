-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: scaikeqc_sandbox
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `birjas`
--

DROP TABLE IF EXISTS `birjas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `birjas` (
  `SBID` int(5) NOT NULL auto_increment,
  `PID` int(5) NOT NULL default '0',
  `HID` int(5) NOT NULL default '0',
  `KID` int(2) NOT NULL default '0',
  `EID` int(5) NOT NULL default '0',
  `DVN` char(1) NOT NULL default '',
  `SBpass1` int(2) NOT NULL default '0',
  `SBpass2` int(2) NOT NULL default '0',
  `SBpass3` int(2) NOT NULL default '0',
  `SBscore` float NOT NULL default '0',
  `SBDQ` char(1) NOT NULL default 'N',
  `SBseen` char(1) default 'N',
  `SByear` int(2) NOT NULL default '99',
  PRIMARY KEY (`SBID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `edit_riders`
--

DROP TABLE IF EXISTS `edit_riders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edit_riders` (
  `EditID` int(5) NOT NULL auto_increment,
  `PID` int(5) NOT NULL default '0',
  `PName` varchar(80) NOT NULL default '',
  `modPname` varchar(80) default NULL,
  `Pcka` varchar(80) default NULL,
  `modPcka` varchar(80) default NULL,
  `Paka` varchar(80) default NULL,
  `modPaka` varchar(80) default NULL,
  `Pmka` varchar(80) NOT NULL default '',
  `modPmka` varchar(80) default NULL,
  `PHonors` varchar(80) default NULL,
  `modPHonors` varchar(80) default NULL,
  `PPhone` varchar(16) default NULL,
  `modPPhone` varchar(16) default NULL,
  `PEmail` varchar(120) NOT NULL default 'NOT@ON.FILE',
  `modPEmail` varchar(120) default NULL,
  `PBio` varchar(255) default 'http://www.yourhomepage.com',
  `modPBio` varchar(255) default NULL,
  `Pking` int(2) NOT NULL default '0',
  `modPking` int(2) default NULL,
  `PGtype` int(1) NOT NULL default '1',
  `modPGtype` int(1) default NULL,
  `PHG` varchar(255) default NULL,
  `modPHG` varchar(255) default NULL,
  `Pret` char(1) default NULL,
  `modPret` char(1) default NULL,
  `PSdx` varchar(4) NOT NULL default '',
  `modPSdx` varchar(4) default NULL,
  `mergePID` int(5) default NULL,
  `modStatus` char(1) NOT NULL default 'N',
  `modAuth` int(5) NOT NULL default '99999',
  PRIMARY KEY (`EditID`),
  KEY `PID` (`PID`),
  KEY `PSdx` (`PSdx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `EID` int(5) NOT NULL auto_increment,
  `Edate` date NOT NULL default '0000-00-00',
  `Ename` varchar(80) NOT NULL default '',
  `Epass` varchar(16) NOT NULL default '',
  `EMID` int(5) NOT NULL default '-1',
  `EAphone` varchar(16) default NULL,
  `EAemail` varchar(120) default NULL,
  `EAID` int(5) NOT NULL default '-1',
  `EDID` int(5) NOT NULL default '-1',
  `EW1ID` int(5) NOT NULL default '-1',
  `EW2ID` int(5) NOT NULL default '-1',
  `EHS` char(1) NOT NULL default 'Y',
  `EHL` char(1) NOT NULL default 'Y',
  `ER` char(1) NOT NULL default 'Y',
  `ED` char(1) NOT NULL default 'Y',
  `EMS` char(1) NOT NULL default 'Y',
  `EMT` char(1) NOT NULL default 'Y',
  `EB` char(1) NOT NULL default 'Y',
  `EHash` varchar(120) NOT NULL default 'IKEqC',
  `Esite` varchar(255) NOT NULL default 'http://www.your-event-site.com',
  `Estatus` char(1) NOT NULL default 'O',
  `Eyear` int(2) NOT NULL default '99',
  PRIMARY KEY (`EID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `events_temp`
--

DROP TABLE IF EXISTS `events_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_temp` (
  `ETemp` int(6) NOT NULL auto_increment,
  `EID` int(5) NOT NULL default '99999',
  `PID` int(5) NOT NULL default '99999',
  `HID` int(5) NOT NULL default '99999',
  `DVN` char(1) NOT NULL default '3',
  `EHS` char(1) NOT NULL default 'N',
  `SHSID` int(5) default '0',
  `SHSscore` double default NULL,
  `EHL` char(1) NOT NULL default 'N',
  `SHLID` int(5) default '0',
  `SHLscore` double default NULL,
  `ER` char(1) NOT NULL default 'N',
  `SRID` int(5) default '0',
  `SRscore` double default NULL,
  `ED` char(1) NOT NULL default 'N',
  `SDID` int(5) default NULL,
  `SDscore` double default NULL,
  `EMS` char(1) NOT NULL default 'N',
  `SMSID` int(5) default NULL,
  `SMSscore` double default NULL,
  `EMT` char(1) NOT NULL default 'N',
  `SMTID` int(5) default NULL,
  `SMTscore` double default NULL,
  `EB` char(1) NOT NULL default 'N',
  `SBID` int(5) default NULL,
  `SBscore` double default NULL,
  `Erun` char(1) NOT NULL default 'N',
  PRIMARY KEY (`ETemp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `heads_long`
--

DROP TABLE IF EXISTS `heads_long`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heads_long` (
  `SHLID` int(5) NOT NULL auto_increment,
  `PID` int(5) NOT NULL default '-1',
  `HID` int(5) NOT NULL default '-1',
  `KID` int(2) NOT NULL default '-1',
  `EID` int(5) NOT NULL default '-1',
  `DVN` char(1) NOT NULL default '',
  `SHLtime` int(8) NOT NULL default '-1',
  `SHLpenalty` int(3) NOT NULL default '-1',
  `SHLscore` float NOT NULL default '-1',
  `SHLDQ` char(1) NOT NULL default 'N',
  `SHLseen` char(1) default 'N',
  `SHLyear` int(2) NOT NULL default '-1',
  PRIMARY KEY (`SHLID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `heads_short`
--

DROP TABLE IF EXISTS `heads_short`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heads_short` (
  `SHSID` int(5) NOT NULL auto_increment,
  `PID` int(5) NOT NULL default '-1',
  `HID` int(5) NOT NULL default '-1',
  `KID` int(2) NOT NULL default '-1',
  `EID` int(5) NOT NULL default '-1',
  `DVN` char(1) NOT NULL default '',
  `SHStime` int(8) NOT NULL default '-1',
  `SHSpenalty` int(3) NOT NULL default '-1',
  `SHSscore` float NOT NULL default '-1',
  `SHSDQ` char(1) NOT NULL default 'N',
  `SHSseen` char(1) default 'N',
  `SHSyear` int(2) NOT NULL default '-1',
  PRIMARY KEY (`SHSID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `horses`
--

DROP TABLE IF EXISTS `horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horses` (
  `HID` int(5) NOT NULL auto_increment,
  `HName` varchar(80) NOT NULL default '',
  `Hrent` char(1) default NULL,
  `HOwner` varchar(80) default NULL,
  `HOwnRID` int(5) default NULL,
  `HHome` varchar(255) default NULL,
  `HBio` varchar(255) default 'http://www.yourhomepage.com',
  `Hret` char(1) NOT NULL default 'N',
  PRIMARY KEY (`HID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
) ENGINE=MyISAM;

-- --------------------------------------------------------

--
-- Table structure for table `ma_single`
--

DROP TABLE IF EXISTS `ma_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ma_single` (
  `SMSID` int(5) NOT NULL auto_increment,
  `PID` int(5) NOT NULL default '0',
  `HID` int(5) NOT NULL default '0',
  `KID` int(2) NOT NULL default '0',
  `EID` int(5) NOT NULL default '0',
  `DVN` char(1) NOT NULL default '',
  `SMSpass1` int(2) NOT NULL default '0',
  `SMSpass2` int(2) NOT NULL default '0',
  `SMSpass3` int(2) NOT NULL default '0',
  `SMSscore` float NOT NULL default '0',
  `SMSDQ` char(1) NOT NULL default 'N',
  `SMSseen` char(1) default 'N',
  `SMSyear` int(2) NOT NULL default '99',
  PRIMARY KEY (`SMSID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ma_triple`
--

DROP TABLE IF EXISTS `ma_triple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ma_triple` (
  `SMTID` int(5) NOT NULL auto_increment,
  `PID` int(5) NOT NULL default '0',
  `HID` int(5) NOT NULL default '0',
  `KID` int(2) NOT NULL default '0',
  `EID` int(5) NOT NULL default '0',
  `DVN` char(1) NOT NULL default '',
  `SMTpass1` int(2) NOT NULL default '0',
  `SMTpass2` int(2) NOT NULL default '0',
  `SMTpass3` int(2) NOT NULL default '0',
  `SMTscore` float NOT NULL default '0',
  `SMTDQ` char(1) NOT NULL default 'N',
  `SMTseen` char(1) default 'N',
  `SMTyear` int(2) NOT NULL default '99',
  PRIMARY KEY (`SMTID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marshals`
--

DROP TABLE IF EXISTS `marshals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marshals` (
  `EMID` int(5) NOT NULL DEFAULT '-1',
  `EMP` int(1) NOT NULL DEFAULT '1',
  `EMexp` date DEFAULT NULL,
  `EMking` int(2) NOT NULL DEFAULT '-1',
  `EMcode` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`EMID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reeds`
--

DROP TABLE IF EXISTS `reeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reeds` (
  `SDID` int(5) NOT NULL auto_increment,
  `PID` int(5) NOT NULL default '0',
  `HID` int(5) NOT NULL default '0',
  `EID` int(5) NOT NULL default '0',
  `KID` int(2) NOT NULL default '0',
  `DVN` char(1) NOT NULL default '',
  `L2` int(2) default '0',
  `L4` int(2) default '0',
  `L6` int(2) default '0',
  `L8` int(2) default '0',
  `L10` int(2) default '0',
  `R2` int(2) default '0',
  `R4` int(2) default '0',
  `R6` int(2) default '0',
  `R8` int(2) default '0',
  `R10` int(2) default '0',
  `SDcount` int(2) NOT NULL default '0',
  `SDscore` float NOT NULL default '0',
  `SDDQ` char(1) NOT NULL default 'N',
  `SDseen` char(1) default NULL,
  `SDyear` int(2) NOT NULL default '99',
  PRIMARY KEY (`SDID`),
  UNIQUE KEY `SRID` (`SDID`),
  KEY `SRID_2` (`SDID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `riders`
--

DROP TABLE IF EXISTS `riders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riders` (
  `PID` int(5) NOT NULL auto_increment,
  `PName` varchar(80) NOT NULL default '',
  `Pcka` varchar(80) default NULL,
  `Paka` varchar(80) default NULL,
  `Pmka` varchar(80) default NULL,
  `PHonors` varchar(80) default NULL,
  `PPhone` varchar(16) default NULL,
  `PEmail` varchar(120) NOT NULL default 'NOT@ON.FILE',
  `PBio` varchar(255) default 'http://www.yourhomepage.com',
  `Pking` int(2) NOT NULL default '0',
  `PGtype` int(1) NOT NULL default '1',
  `PHG` varchar(255) default NULL,
  `Pret` char(1) default NULL,
  `PSdx` varchar(4) NOT NULL default '',
  PRIMARY KEY (`PID`),
  KEY `PSdx` (`PSdx`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Table of Riders of the IKEqC';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rings`
--

DROP TABLE IF EXISTS `rings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rings` (
  `SRID` int(4) NOT NULL auto_increment,
  `PID` int(5) NOT NULL default '0',
  `HID` int(5) NOT NULL default '0',
  `EID` int(5) NOT NULL default '0',
  `KID` int(2) NOT NULL default '0',
  `DVN` char(1) NOT NULL default '',
  `L1` int(2) default NULL,
  `L2` int(2) default NULL,
  `L3` int(2) default NULL,
  `L4` int(2) default NULL,
  `L5` int(2) default NULL,
  `L6` int(2) default NULL,
  `R1` int(2) default NULL,
  `R2` int(2) default NULL,
  `R3` int(2) default NULL,
  `R4` int(2) default NULL,
  `R5` int(2) default NULL,
  `R6` int(2) default NULL,
  `SRcount` int(2) NOT NULL default '0',
  `SRscore` float NOT NULL default '0',
  `SRDQ` char(1) NOT NULL default 'N',
  `SRseen` char(1) default NULL,
  `SRyear` int(2) NOT NULL default '99',
  PRIMARY KEY (`SRID`),
  UNIQUE KEY `SRID` (`SRID`),
  KEY `SRID_2` (`SRID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `yr_lii`
--

DROP TABLE IF EXISTS `yr_lii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yr_lii` (
  `YID` int(5) NOT NULL auto_increment,
  `PID` int(5) NOT NULL default '-1',
  `HID` int(5) NOT NULL default '-1',
  `EID` int(5) NOT NULL default '-1',
  `EMID` int(5) NOT NULL default '-1',
  `SHSID` int(5) default NULL,
  `SHLID` int(5) default NULL,
  `SRID` int(5) default NULL,
  `SDID` int(5) default NULL,
  `SMSID` int(5) default NULL,
  `SMTID` int(5) default NULL,
  `SBID` int(5) default NULL,
  `cscore` float NOT NULL default '-1',
  `score` float NOT NULL default '-1',
  `DVN` char(1) NOT NULL default '1',
  `seen` char(1) default 'N',
  PRIMARY KEY (`YID`),
  KEY `YID` (`YID`),
  KEY `score` (`score`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-14  3:43:41
