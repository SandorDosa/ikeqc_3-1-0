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
  `SBID` int(5) NOT NULL AUTO_INCREMENT,
  `PID` int(5) NOT NULL DEFAULT '0',
  `HID` int(5) NOT NULL DEFAULT '0',
  `KID` int(2) NOT NULL DEFAULT '0',
  `EID` int(5) NOT NULL DEFAULT '0',
  `DVN` char(1) NOT NULL DEFAULT '',
  `SBpass1` int(2) NOT NULL DEFAULT '0',
  `SBpass2` int(2) NOT NULL DEFAULT '0',
  `SBpass3` int(2) NOT NULL DEFAULT '0',
  `SBscore` float NOT NULL DEFAULT '0',
  `SBDQ` char(1) NOT NULL DEFAULT 'N',
  `SBseen` char(1) DEFAULT 'N',
  `SByear` int(2) NOT NULL DEFAULT '99',
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
  `EditID` int(5) NOT NULL AUTO_INCREMENT,
  `PID` int(5) NOT NULL DEFAULT '0',
  `PName` varchar(80) NOT NULL DEFAULT '',
  `modPname` varchar(80) DEFAULT NULL,
  `Pcka` varchar(80) DEFAULT NULL,
  `modPcka` varchar(80) DEFAULT NULL,
  `Paka` varchar(80) DEFAULT NULL,
  `modPaka` varchar(80) DEFAULT NULL,
  `Pmka` varchar(80) NOT NULL DEFAULT '',
  `modPmka` varchar(80) DEFAULT NULL,
  `PHonors` varchar(80) DEFAULT NULL,
  `modPHonors` varchar(80) DEFAULT NULL,
  `PPhone` varchar(16) DEFAULT NULL,
  `modPPhone` varchar(16) DEFAULT NULL,
  `PEmail` varchar(120) NOT NULL DEFAULT 'NOT@ON.FILE',
  `modPEmail` varchar(120) DEFAULT NULL,
  `PBio` varchar(255) DEFAULT 'http://www.yourhomepage.com',
  `modPBio` varchar(255) DEFAULT NULL,
  `Pking` int(2) NOT NULL DEFAULT '0',
  `modPking` int(2) DEFAULT NULL,
  `PGtype` int(1) NOT NULL DEFAULT '1',
  `modPGtype` int(1) DEFAULT NULL,
  `PHG` varchar(255) DEFAULT NULL,
  `modPHG` varchar(255) DEFAULT NULL,
  `Pret` char(1) DEFAULT NULL,
  `modPret` char(1) DEFAULT NULL,
  `PSdx` varchar(4) NOT NULL DEFAULT '',
  `modPSdx` varchar(4) DEFAULT NULL,
  `mergePID` int(5) DEFAULT NULL,
  `modStatus` char(1) NOT NULL DEFAULT 'N',
  `modAuth` int(5) NOT NULL DEFAULT '99999',
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
  `EID` int(5) NOT NULL AUTO_INCREMENT,
  `Edate` date NOT NULL DEFAULT '0000-00-00',
  `Ename` varchar(80) NOT NULL DEFAULT '',
  `Epass` varchar(16) NOT NULL DEFAULT '',
  `EMID` int(5) NOT NULL DEFAULT '-1',
  `EAphone` varchar(16) DEFAULT NULL,
  `EAemail` varchar(120) DEFAULT NULL,
  `EAID` int(5) NOT NULL DEFAULT '-1',
  `EDID` int(5) NOT NULL DEFAULT '-1',
  `EW1ID` int(5) NOT NULL DEFAULT '-1',
  `EW2ID` int(5) NOT NULL DEFAULT '-1',
  `EHS` char(1) NOT NULL DEFAULT 'Y',
  `EHL` char(1) NOT NULL DEFAULT 'Y',
  `ER` char(1) NOT NULL DEFAULT 'Y',
  `ED` char(1) NOT NULL DEFAULT 'Y',
  `EMS` char(1) NOT NULL DEFAULT 'Y',
  `EMT` char(1) NOT NULL DEFAULT 'Y',
  `EB` char(1) NOT NULL DEFAULT 'Y',
  `EHash` varchar(120) NOT NULL DEFAULT 'IKEqC',
  `Esite` varchar(255) NOT NULL DEFAULT 'http://www.your-event-site.com',
  `Estatus` char(1) NOT NULL DEFAULT 'O',
  `Eyear` int(2) NOT NULL DEFAULT '99',
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
  `ETemp` int(6) NOT NULL AUTO_INCREMENT,
  `EID` int(5) NOT NULL DEFAULT '99999',
  `PID` int(5) NOT NULL DEFAULT '99999',
  `HID` int(5) NOT NULL DEFAULT '99999',
  `DVN` char(1) NOT NULL DEFAULT '3',
  `EHS` char(1) NOT NULL DEFAULT 'N',
  `EHL` char(1) NOT NULL DEFAULT 'N',
  `ER` char(1) NOT NULL DEFAULT 'N',
  `ED` char(1) NOT NULL DEFAULT 'N',
  `EMS` char(1) NOT NULL DEFAULT 'N',
  `EMT` char(1) NOT NULL DEFAULT 'N',
  `EB` char(1) NOT NULL DEFAULT 'N',
  `Erun` char(1) NOT NULL DEFAULT 'N',
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
  `SHLID` int(5) NOT NULL AUTO_INCREMENT,
  `PID` int(5) NOT NULL DEFAULT '-1',
  `HID` int(5) NOT NULL DEFAULT '-1',
  `KID` int(2) NOT NULL DEFAULT '-1',
  `EID` int(5) NOT NULL DEFAULT '-1',
  `DVN` char(1) NOT NULL DEFAULT '',
  `SHLtime` int(8) NOT NULL DEFAULT '-1',
  `SHLpenalty` int(3) NOT NULL DEFAULT '-1',
  `SHLscore` float NOT NULL DEFAULT '-1',
  `SHLDQ` char(1) NOT NULL DEFAULT 'N',
  `SHLseen` char(1) DEFAULT 'N',
  `SHLyear` int(2) NOT NULL DEFAULT '-1',
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
  `SHSID` int(5) NOT NULL AUTO_INCREMENT,
  `PID` int(5) NOT NULL DEFAULT '-1',
  `HID` int(5) NOT NULL DEFAULT '-1',
  `KID` int(2) NOT NULL DEFAULT '-1',
  `EID` int(5) NOT NULL DEFAULT '-1',
  `DVN` char(1) NOT NULL DEFAULT '',
  `SHStime` int(8) NOT NULL DEFAULT '-1',
  `SHSpenalty` int(3) NOT NULL DEFAULT '-1',
  `SHSscore` float NOT NULL DEFAULT '-1',
  `SHSDQ` char(1) NOT NULL DEFAULT 'N',
  `SHSseen` char(1) DEFAULT 'N',
  `SHSyear` int(2) NOT NULL DEFAULT '-1',
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
  `HID` int(5) NOT NULL AUTO_INCREMENT,
  `HName` varchar(80) NOT NULL DEFAULT '',
  `Hrent` char(1) DEFAULT NULL,
  `HOwner` varchar(80) DEFAULT NULL,
  `HOwnRID` int(5) DEFAULT NULL,
  `HHome` varchar(255) DEFAULT NULL,
  `HBio` varchar(255) DEFAULT 'http://www.yourhomepage.com',
  `Hret` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`HID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ma_single`
--

DROP TABLE IF EXISTS `ma_single`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ma_single` (
  `SMSID` int(5) NOT NULL AUTO_INCREMENT,
  `PID` int(5) NOT NULL DEFAULT '0',
  `HID` int(5) NOT NULL DEFAULT '0',
  `KID` int(2) NOT NULL DEFAULT '0',
  `EID` int(5) NOT NULL DEFAULT '0',
  `DVN` char(1) NOT NULL DEFAULT '',
  `SMSpass1` int(2) NOT NULL DEFAULT '0',
  `SMSpass2` int(2) NOT NULL DEFAULT '0',
  `SMSpass3` int(2) NOT NULL DEFAULT '0',
  `SMSscore` float NOT NULL DEFAULT '0',
  `SMSDQ` char(1) NOT NULL DEFAULT 'N',
  `SMSseen` char(1) DEFAULT 'N',
  `SMSyear` int(2) NOT NULL DEFAULT '99',
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
  `SMTID` int(5) NOT NULL AUTO_INCREMENT,
  `PID` int(5) NOT NULL DEFAULT '0',
  `HID` int(5) NOT NULL DEFAULT '0',
  `KID` int(2) NOT NULL DEFAULT '0',
  `EID` int(5) NOT NULL DEFAULT '0',
  `DVN` char(1) NOT NULL DEFAULT '',
  `SMTpass1` int(2) NOT NULL DEFAULT '0',
  `SMTpass2` int(2) NOT NULL DEFAULT '0',
  `SMTpass3` int(2) NOT NULL DEFAULT '0',
  `SMTscore` float NOT NULL DEFAULT '0',
  `SMTDQ` char(1) NOT NULL DEFAULT 'N',
  `SMTseen` char(1) DEFAULT 'N',
  `SMTyear` int(2) NOT NULL DEFAULT '99',
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
  `EMcdoe` varchar(8) DEFAULT NULL,
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
  `SDID` int(5) NOT NULL AUTO_INCREMENT,
  `PID` int(5) NOT NULL DEFAULT '0',
  `HID` int(5) NOT NULL DEFAULT '0',
  `EID` int(5) NOT NULL DEFAULT '0',
  `KID` int(2) NOT NULL DEFAULT '0',
  `DVN` char(1) NOT NULL DEFAULT '',
  `L2` int(2) DEFAULT '0',
  `L4` int(2) DEFAULT '0',
  `L6` int(2) DEFAULT '0',
  `L8` int(2) DEFAULT '0',
  `L10` int(2) DEFAULT '0',
  `R2` int(2) DEFAULT '0',
  `R4` int(2) DEFAULT '0',
  `R6` int(2) DEFAULT '0',
  `R8` int(2) DEFAULT '0',
  `R10` int(2) DEFAULT '0',
  `SDcount` int(2) NOT NULL DEFAULT '0',
  `SDscore` float NOT NULL DEFAULT '0',
  `SDDQ` char(1) NOT NULL DEFAULT 'N',
  `SDseen` char(1) DEFAULT NULL,
  `SDyear` int(2) NOT NULL DEFAULT '99',
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
  `PID` int(5) NOT NULL AUTO_INCREMENT,
  `PName` varchar(80) NOT NULL DEFAULT '',
  `Pcka` varchar(80) DEFAULT NULL,
  `Paka` varchar(80) DEFAULT NULL,
  `Pmka` varchar(80) DEFAULT NULL,
  `PHonors` varchar(80) DEFAULT NULL,
  `PPhone` varchar(16) DEFAULT NULL,
  `PEmail` varchar(120) NOT NULL DEFAULT 'NOT@ON.FILE',
  `PBio` varchar(255) DEFAULT 'http://www.yourhomepage.com',
  `Pking` int(2) NOT NULL DEFAULT '0',
  `PGtype` int(1) NOT NULL DEFAULT '1',
  `PHG` varchar(255) DEFAULT NULL,
  `Pret` char(1) DEFAULT NULL,
  `PSdx` varchar(4) NOT NULL DEFAULT '',
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
  `SRID` int(4) NOT NULL AUTO_INCREMENT,
  `PID` int(5) NOT NULL DEFAULT '0',
  `HID` int(5) NOT NULL DEFAULT '0',
  `EID` int(5) NOT NULL DEFAULT '0',
  `KID` int(2) NOT NULL DEFAULT '0',
  `DVN` char(1) NOT NULL DEFAULT '',
  `L1` int(2) DEFAULT NULL,
  `L2` int(2) DEFAULT NULL,
  `L3` int(2) DEFAULT NULL,
  `L4` int(2) DEFAULT NULL,
  `L5` int(2) DEFAULT NULL,
  `L6` int(2) DEFAULT NULL,
  `R1` int(2) DEFAULT NULL,
  `R2` int(2) DEFAULT NULL,
  `R3` int(2) DEFAULT NULL,
  `R4` int(2) DEFAULT NULL,
  `R5` int(2) DEFAULT NULL,
  `R6` int(2) DEFAULT NULL,
  `SRcount` int(2) NOT NULL DEFAULT '0',
  `SRscore` float NOT NULL DEFAULT '0',
  `SRDQ` char(1) NOT NULL DEFAULT 'N',
  `SRseen` char(1) DEFAULT NULL,
  `SRyear` int(2) NOT NULL DEFAULT '99',
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
  `YID` int(5) NOT NULL AUTO_INCREMENT,
  `PID` int(5) NOT NULL DEFAULT '-1',
  `HID` int(5) NOT NULL DEFAULT '-1',
  `EID` int(5) NOT NULL DEFAULT '-1',
  `EMID` int(5) NOT NULL DEFAULT '-1',
  `SHSID` int(5) DEFAULT NULL,
  `SHLID` int(5) DEFAULT NULL,
  `SRID` int(5) DEFAULT NULL,
  `SDID` int(5) DEFAULT NULL,
  `SMSID` int(5) DEFAULT NULL,
  `SMTID` int(5) DEFAULT NULL,
  `SBID` int(5) DEFAULT NULL,
  `cscore` float NOT NULL DEFAULT '-1',
  `score` float NOT NULL DEFAULT '-1',
  `DVN` char(1) NOT NULL DEFAULT '1',
  `seen` char(1) DEFAULT 'N',
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
