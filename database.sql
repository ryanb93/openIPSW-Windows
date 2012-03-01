# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: readonlyipsw.db.6730814.hostedresource.com (MySQL 5.0.92-log)
# Database: readonlyipsw
# Generation Time: 2012-03-01 16:15:14 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table 0_devices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `0_devices`;

CREATE TABLE `0_devices` (
  `device_name` varchar(50) NOT NULL,
  `device_table` varchar(50) NOT NULL,
  PRIMARY KEY  (`device_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `0_devices` WRITE;
/*!40000 ALTER TABLE `0_devices` DISABLE KEYS */;

INSERT INTO `0_devices` (`device_name`, `device_table`)
VALUES
	('Apple TV','appletv'),
	('iPad','ipad1'),
	('iPad 2 (CDMA)','ipad2_cdma'),
	('iPad 2 (GSM)','ipad2_gsm'),
	('iPad 2 (WiFi)','ipad2_wifi'),
	('iPhone 2G','iphone2g'),
	('iPhone 3G','iphone3g'),
	('iPhone 3GS','iphone3gs'),
	('iPhone 4 (CDMA)','iphone4_cdma'),
	('iPhone 4 (GSM)','iphone4_gsm'),
	('iPhone 4S','iphone4s'),
	('iPod Touch 1G','ipod1g'),
	('iPod Touch 2G','ipod2g'),
	('iPod Touch 3G','ipod3g'),
	('iPod Touch 4G','ipod4g');

/*!40000 ALTER TABLE `0_devices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table appletv
# ------------------------------------------------------------

DROP TABLE IF EXISTS `appletv`;

CREATE TABLE `appletv` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

LOCK TABLES `appletv` WRITE;
/*!40000 ALTER TABLE `appletv` DISABLE KEYS */;

INSERT INTO `appletv` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'4.1 (4.0)','8M89','http://appldnld.apple.com/AppleTV/061-8940.20100926.Tvtnz/AppleTV2,1_4.1_8M89_Restore.ipsw','AppleTV2,1_4.1_8M89_Restore.ipsw','Yes','No','','253,759,976','PwnageTool 4.3.1','http://blog.iphone-dev.org/','','','No','No'),
	(2,'4.2 (4.1)','8C150','http://appldnld.apple.com/AppleTV/061-8747.20101122.Vgtr5/AppleTV2,1_4.2_8C150_Restore.ipsw','AppleTV2,1_4.2_8C150_Restore.ipsw','No','No','','279,991,056','','','','','No','No'),
	(3,'4.2.1 (4.1.1)','8C154','http://appldnld.apple.com/AppleTV/061-9978.20101214.gmabr/AppleTV2,1_4.2.1_8C154_Restore.ipsw','AppleTV2,1_4.2.1_8C154_Restore.ipsw','Yes','No','','280,052,510','Greenpois0n RC6.1','http://greenpois0n.com/downloads/','','','No','No'),
	(4,'4.3 (4.2)','8F191m','http://appldnld.apple.com/AppleTV/061-9584.20110308.Cxdew/AppleTV2,1_4.3_8F191m_Restore.ipsw','AppleTV2,1_4.3_8F191m_Restore.ipsw','No','No','','332,470,394','','','','','No','No'),
	(5,'4.3 (4.2.1)','8F202','http://appldnld.apple.com/AppleTV/041-0574.20110322.Dcfr5/AppleTV2,1_4.3_8F202_Restore.ipsw','AppleTV2,1_4.3_8F202_Restore.ipsw','Yes','No','','334,284,882','redsn0w 0.9.6 rc16','http://blog.iphone-dev.org/','','','No','No'),
	(6,'4.3 (4.2.2)','8F305','http://appldnld.apple.com/AppleTV/041-0596.20110511.Zz7mC/AppleTV2,1_4.3_8F305_Restore.ipsw','AppleTV2,1_4.3_8F305_Restore.ipsw','Yes','No','','334,235,633','Sn0wbreeze 2.7.2','http://ih8sn0w.com','','','No','No'),
	(7,'5.0 (4.4)','9A334v','http://appldnld.apple.com/AppleTV/061-9621.20111012.Vgijx/AppleTV2,1_4.4_9A334v_Restore.ipsw','AppleTV2,1_4.4_9A334v_Restore.ipsw','Yes','No','','395,310,614','','','','','No','No'),
	(8,'5.0 (4.4.2)','9A336a','http://appldnld.apple.com/AppleTV/041-2995.20111024.Tfscw/AppleTV2,1_4.4.2_9A336a_Restore.ipsw','AppleTV2,1_4.4.2_9A336a_Restore.ipsw','No','No','','395,330,948','Sn0wbreeze','http://ih8sn0w.com','','','Yes','Yes');

/*!40000 ALTER TABLE `appletv` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ipad1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ipad1`;

CREATE TABLE `ipad1` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `ipad1` WRITE;
/*!40000 ALTER TABLE `ipad1` DISABLE KEYS */;

INSERT INTO `ipad1` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'3.2','7B367','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPad/061-7987.20100403.mjiTr/iPad1,1_3.2_7B367_Restore.ipsw','iPad1,1_3.2_7B367_Restore.ipsw','Yes','Yes','06.15.00','478,959,325','Spirit','http://www.spiritjb.com/','Pre-unlocked','','No','No'),
	(2,'3.2.1','7B405','http://appldnld.apple.com/iPad/061-8282.20100713.vgtgh/iPad1,1_3.2.1_7B405_Restore.ipsw','iPad1,1_3.2.1_7B405_Restore.ipsw','Yes','Yes','06.15.00','479,012,625','Star (JailbreakMe)','http://jailbreakme.com','Pre-unlocked','','No','No'),
	(3,'3.2.2','7B500','http://appldnld.apple.com/iPad/061-8801.20100811.CvfR5/iPad1,1_3.2.2_7B500_Restore.ipsw','iPad1,1_3.2.2_7B500_Restore.ipsw','Yes','Yes','06.15.00','479,001,595','limera1n','http://limera1n.com/','Pre-unlocked','','No','No'),
	(4,'4.2.1','8C148','http://appldnld.apple.com/iPad/061-9857.20101122.VGthy/iPad1,1_4.2.1_8C148_Restore.ipsw','iPad1,1_4.2.1_8C148_Restore.ipsw','Yes','Yes','07.10.00','578,084,840','greenpois0n RC6.1','http://greenpois0n.com/downloads/','Pre-unlocked','','No','No'),
	(5,'4.3','8F190','http://appldnld.apple.com/iPhone4/041-0329.20110311.Cvfre/iPad1,1_4.3_8F190_Restore.ipsw','iPad1,1_4.3_8F190_Restore.ipsw','Yes','Yes','07.11.00','625,814,678','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','Pre-unlocked','','Yes','No'),
	(6,'4.3.1','8G4','http://appldnld.apple.com/iPhone4/041-0550.20110325.Zsw6y/iPad1,1_4.3.1_8G4_Restore.ipsw','iPad1,1_4.3.1_8G4_Restore.ipsw','Yes','Yes','07.11.01','621,768,387','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','Pre-unlocked','','No','No'),
	(7,'4.3.2','8H7','http://appldnld.apple.com/iPhone4/041-0661.20110414.W9Q8r/iPad1,1_4.3.2_8H7_Restore.ipsw','iPad1,1_4.3.2_8H7_Restore.ipsw','Yes','Yes','07.11.01','622,148,907','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','Pre-unlocked','','No','No'),
	(8,'4.3.3','8J3','http://appldnld.apple.com/iPhone4/041-1010.20110503.ScEp3/iPad1,1_4.3.3_8J3_Restore.ipsw','iPad1,1_4.3.3_8J3_Restore.ipsw','Yes','Yes','07.11.01','622,048,364','JailbreakMe 3.0','http://jailbreakme.com','Pre-unlocked','','No','No'),
	(9,'4.3.4','8K2','http://appldnld.apple.com/iPhone4/041-1913.20110715.cvTyu/iPad1,1_4.3.4_8K2_Restore.ipsw','iPad1,1_4.3.4_8K2_Restore.ipsw','Yes','Yes','07.11.01','622,279,895 ','redsn0w','http://blog.iphone-dev.org','Pre-unlocked','','No','No'),
	(10,'5.0','9A334','http://appldnld.apple.com/iPhone4/041-8357.20111012.DTOrM/iPad1,1_5.0_9A334_Restore.ipsw','iPad1,1_5.0_9A334_Restore.ipsw','Yes','Yes','07.11.01','734,262,118','redsn0w','http://blog.iphone-dev.org','Pre-unlocked','','Yes','No'),
	(11,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3308.20111109.Fvgtr/iPad1,1_5.0.1_9A405_Restore.ipsw','iPad1,1_5.0.1_9A405_Restore.ipsw','Yes','Yes','07.11.01','751,358,387','redsn0w','http://blog.iphone-dev.org','Pre-unlocked','','Yes','Yes');

/*!40000 ALTER TABLE `ipad1` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ipad2_cdma
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ipad2_cdma`;

CREATE TABLE `ipad2_cdma` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `ipad2_cdma` WRITE;
/*!40000 ALTER TABLE `ipad2_cdma` DISABLE KEYS */;

INSERT INTO `ipad2_cdma` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'4.3','8F191','http://appldnld.apple.com/iPhone4/041-0334.20110311Plgt5/iPad2,3_4.3_8F191_Restore.ipsw','iPad2,3_4.3_8F191_Restore.ipsw','No','No','2.0.4','656,018,665','','','','','','No'),
	(2,'4.3.1','8G4','http://appldnld.apple.com/iPhone4/041-0544.20110325.Dew3r/iPad2,3_4.3.1_8G4_Restore.ipsw','iPad2,3_4.3.1_8G4_Restore.ipsw','No','No','2.0.4','650,897,625','','','','','','No'),
	(3,'4.3.2','8H7','http://appldnld.apple.com/iPhone4/041-0665.20110414.MbwVr/iPad2,3_4.3.2_8H8_Restore.ipsw','iPad2,3_4.3.2_8H8_Restore.ipsw','No','No','2.0.4','651,222,830','','','','','','No'),
	(4,'4.3.3','8J2','http://appldnld.apple.com/iPhone4/041-1014.20110503.52dap/iPad2,3_4.3.3_8J2_Restore.ipsw','iPad2,3_4.3.3_8J2_Restore.ipsw','Yes','No','2.0.4','651,189,996','JailbreakMe 3.0','http://jailbreakme.com','','','','No'),
	(5,'5.0','9A334','http://appldnld.apple.com/iPhone4/041-9620.20111012.pnB4r/iPad2,3_5.0_9A334_Restore.ipsw','iPad2,3_5.0_9A334_Restore.ipsw','No','No','3.0.03','756,356,953','','','','','','No'),
	(6,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3312.20111109.zp3ws/iPad2,3_5.0.1_9A405_Restore.ipsw','iPad2,3_5.0.1_9A405_Restore.ipsw','Yes','No','3.0.03','773,224,632','Absinthe 0.4','http://greenpois0n.com','','','','Yes');

/*!40000 ALTER TABLE `ipad2_cdma` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ipad2_gsm
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ipad2_gsm`;

CREATE TABLE `ipad2_gsm` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL default '',
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `ipad2_gsm` WRITE;
/*!40000 ALTER TABLE `ipad2_gsm` DISABLE KEYS */;

INSERT INTO `ipad2_gsm` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'4.3','8F191','http://appldnld.apple.com/iPhone4/041-0369.20110311.Xzsew/iPad2,2_4.3_8F191_Restore.ipsw','iPad2,2_4.3_8F191_Restore.ipsw','No','No','4.10.01','649,374,499','','','','','','No'),
	(2,'4.3.1','8G4','http://appldnld.apple.com/iPhone4/041-0557.20110325.Jy76y/iPad2,2_4.3.1_8G4_Restore.ipsw','iPad2,2_4.3.1_8G4_Restore.ipsw','No','No','4.10.01','644,359,977','','','','','','No'),
	(3,'4.3.2','8H7','http://appldnld.apple.com/iPhone4/041-0664.20110414.39vUS/iPad2,2_4.3.2_8H7_Restore.ipsw','iPad2,2_4.3.2_8H7_Restore.ipsw','No','No','4.10.01','644,615,497','','','','','','No'),
	(4,'4.3.3','8J2','http://appldnld.apple.com/iPhone4/041-1013.20110503.1m73D/iPad2,2_4.3.3_8J2_Restore.ipsw','iPad2,2_4.3.3_8J2_Restore.ipsw','Yes','No','4.10.01','644,652,310','JailbreakMe 3.0','http://jailbreakme.com','','','','No'),
	(5,'5.0','9A334','http://appldnld.apple.com/iPhone4/041-9619.20111012.y34Nx/iPad2,2_5.0_9A334_Restore.ipsw','iPad2,2_5.0_9A334_Restore.ipsw','No','No','4.11.08','750,839,256','','','','','','No'),
	(6,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3311.20111109.Vpr43/iPad2,2_5.0.1_9A405_Restore.ipsw','iPad2,2_5.0.1_9A405_Restore.ipsw','Yes','No','4.11.08','767,568,362','Absinthe 0.4','http://greenpois0n.com','','','No','Yes');

/*!40000 ALTER TABLE `ipad2_gsm` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ipad2_wifi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ipad2_wifi`;

CREATE TABLE `ipad2_wifi` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

LOCK TABLES `ipad2_wifi` WRITE;
/*!40000 ALTER TABLE `ipad2_wifi` DISABLE KEYS */;

INSERT INTO `ipad2_wifi` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'4.3','8F191','http://appldnld.apple.com/iPhone4/041-0368.20110311.SwtHr/iPad2,1_4.3_8F191_Restore.ipsw','iPad2,1_4.3_8F191_Restore.ipsw','No','','','641,816,040','','','','','','No'),
	(2,'4.3.1','8G4','http://appldnld.apple.com/iPhone4/041-0556.20110325.64rfg/iPad2,1_4.3.1_8G4_Restore.ipsw','iPad2,1_4.3.1_8G4_Restore.ipsw','No','','','636,932,640','','','','','','No'),
	(3,'4.3.2','8H7','http://appldnld.apple.com/iPhone4/041-0663.20110414.U7bTI/iPad2,1_4.3.2_8H7_Restore.ipsw','iPad2,1_4.3.2_8H7_Restore.ipsw','No','','','637,204,510','','','','','','No'),
	(4,'4.3.3','8J2','http://appldnld.apple.com/iPhone4/041-1012.20110503.tmmBc/iPad2,1_4.3.3_8J2_Restore.ipsw','iPad2,1_4.3.3_8J2_Restore.ipsw','Yes','','','637,183,974','JailbreakMe 3.0','http://jailbreakme.com','','','','No'),
	(5,'5.0','9A334','http://appldnld.apple.com/iPhone4/041-9618.20111012.Zxb22/iPad2,1_5.0_9A334_Restore.ipsw','iPad2,1_5.0_9A334_Restore.ipsw','No','','','741,493,281','','','','','','No'),
	(6,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3310.20111109.Cfp76/iPad2,1_5.0.1_9A405_Restore.ipsw','iPad2,1_5.0.1_9A405_Restore.ipsw','Yes','','','758,693,514','Absinthe 0.4','http://greenpois0n.com','','','','Yes');

/*!40000 ALTER TABLE `ipad2_wifi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table iphone2g
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iphone2g`;

CREATE TABLE `iphone2g` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

LOCK TABLES `iphone2g` WRITE;
/*!40000 ALTER TABLE `iphone2g` DISABLE KEYS */;

INSERT INTO `iphone2g` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'1.0','1A543a','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-3538.20070629.B7vXa/iPhone1,1_1.0_1A543a_Restore.ipsw','iPhone1,1_1.0_1A543a_Restore.ipsw','Yes','Yes','03.11.02_G','95,604,348','Manual Jailbreak','','Manual Unlock','http://www.hackint0sh.org/f136/14384.htm','No',''),
	(2,'1.0.1','1C25','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-3614.20070731.Nt6Y7/iPhone1,1_1.0.1_1C25_Restore.ipsw','iPhone1,1_1.0.1_1C25_Restore.ipsw','Yes','Yes','03.12.06_G','95,627,958','Manual Jailbreak','','Manual Unlock','http://www.hackint0sh.org/f136/14384.htm','No',''),
	(3,'1.0.2','1C28','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-3823.20070821.vormd/iPhone1,1_1.0.2_1C28_Restore.ipsw','iPhone1,1_1.0.2_1C28_Restore.ipsw','Yes','Yes','03.14.08_G','95,627,324','iLiberty','http://george.insideiphone.com/index.php/iliberty/','iLiberty','http://george.insideiphone.com/index.php/iliberty/','No',''),
	(4,'1.1.1','3A109a','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-3883.20070927.In76t/iPhone1,1_1.1.1_3A109a_Restore.ipsw','iPhone1,1_1.1.1_3A109a_Restore.ipsw','Yes','Yes','04.01.13_G','159,668,150','AppSnapp','http://theiphonewiki.com/wiki/index.php?title=LibT','iLiberty','http://george.insideiphone.com/index.php/iliberty/','No',''),
	(5,'1.1.2','3B48b','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-4037.20071107.5Bghn/iPhone1,1_1.1.2_3B48b_Restore.ipsw','iPhone1,1_1.1.2_3B48b_Restore.ipsw','Yes','Yes','04.02.13_G','167,927,501','OktoPrep','http://theiphonewiki.com/wiki/index.php?title=Mkno','iLiberty','http://george.insideiphone.com/index.php/iliberty/','No',''),
	(6,'1.1.3','4A93','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-4061.20080115.4Fvn7/iPhone1,1_1.1.3_4A93_Restore.ipsw','iPhone1,1_1.1.3_4A93_Restore.ipsw','Yes','Yes','04.03.13_G','169,950,551','iLiberty','http://george.insideiphone.com/index.php/iliberty/','iLiberty','http://george.insideiphone.com/index.php/iliberty/','No',''),
	(7,'1.1.4','4A102','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-4313.20080226.Sw39i/iPhone1,1_1.1.4_4A102_Restore.ipsw','iPhone1,1_1.1.4_4A102_Restore.ipsw','Yes','Yes','04.04.05_G','169,946,442','iLiberty','http://george.insideiphone.com/index.php/iliberty/','iLiberty','http://george.insideiphone.com/index.php/iliberty/','No',''),
	(8,'2.0','5A347','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-4956.20080710.V50OI/iPhone1,1_2.0_5A347_Restore.ipsw','iPhone1,1_2.0_5A347_Restore.ipsw','Yes','Yes','04.05.04_G','228,768,637','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=BootNeuter','No',''),
	(9,'2.0.1','5B108','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5135.20080729.Vfgtr/iPhone1,1_2.0.1_5B108_Restore.ipsw','iPhone1,1_2.0.1_5B108_Restore.ipsw','Yes','Yes','04.05.04_G','254,048,068','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=BootNeuter','No',''),
	(10,'2.0.2','5C1','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5246.20080818.2V0hO/iPhone1,1_2.0.2_5C1_Restore.ipsw','iPhone1,1_2.0.2_5C1_Restore.ipsw','Yes','Yes','04.05.04_G','253,589,000','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=BootNeuter','No',''),
	(11,'2.1','5F136','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5202.20080909.gkbEj/iPhone1,1_2.1_5F136_Restore.ipsw','iPhone1,1_2.1_5F136_Restore.ipsw','Yes','Yes','04.05.04_G','242,171,241','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=BootNeuter','No',''),
	(12,'2.2','5G77','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5779.20081120.Pt5yH/iPhone1,1_2.2_5G77_Restore.ipsw','iPhone1,1_2.2_5G77_Restore.ipsw','Yes','Yes','04.05.04_G','257,576,980','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=BootNeuter','No',''),
	(13,'2.2.1','5H11','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5830.20090127.Mmni6/iPhone1,1_2.2.1_5H11_Restore.ipsw','iPhone1,1_2.2.1_5H11_Restore.ipsw','Yes','Yes','04.05.04_G','257,593,705','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=BootNeuter','No',''),
	(14,'3.0','7A341','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-6580.20090617.XsP76/iPhone1,1_3.0_7A341_Restore.ipsw','iPhone1,1_3.0_7A341_Restore.ipsw','Yes','Yes','04.05.04_G','240,394,111','redsn0w','http://blog.iphone-dev.org','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=Boot','No',''),
	(15,'3.0.1','7A400','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-6974.20090731.Cf4Tg/iPhone1,1_3.0.1_7A400_Restore.ipsw','iPhone1,1_3.0.1_7A400_Restore.ipsw','Yes','Yes','04.05.04_G','240,439,502','redsn0w','http://blog.iphone-dev.org','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=Boot','No',''),
	(16,'3.1','7C144','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-6605.20090909.PQ3ws/iPhone1,1_3.1_7C144_Restore.ipsw','iPhone1,1_3.1_7C144_Restore.ipsw','Yes','Yes','04.05.04_G','252,536,460','redsn0w','http://blog.iphone-dev.org','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=Boot','No',''),
	(17,'3.1.2','7D11','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-7268.20091008.32pNe/iPhone1,1_3.1.2_7D11_Restore.ipsw','iPhone1,1_3.1.2_7D11_Restore.ipsw','Yes','Yes','04.05.04_G','252,515,888','Spirit','http://spiritjb.com/','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=Boot','No',''),
	(18,'3.1.3','7E18','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-7481.20100202.4orot/iPhone1,1_3.1.3_7E18_Restore.ipsw','iPhone1,1_3.1.3_7E18_Restore.ipsw','Yes','Yes','04.05.04_G','238,319,275','Spirit','http://spiritjb.com/','BootNeuter','http://theiphonewiki.com/wiki/index.php?title=Boot','No','');

/*!40000 ALTER TABLE `iphone2g` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table iphone3g
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iphone3g`;

CREATE TABLE `iphone3g` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

LOCK TABLES `iphone3g` WRITE;
/*!40000 ALTER TABLE `iphone3g` DISABLE KEYS */;

INSERT INTO `iphone3g` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'2.0','5A347','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-4955.20080710.bgt53/iPhone1,2_2.0_5A347_Restore.ipsw','iPhone1,2_2.0_5A347_Restore.ipsw','Yes','Yes','01.45.00','235,957,125','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','Upgrade to 2.2','','No',''),
	(2,'2.0.1','5B108','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5134.20080729.Q2W3E/iPhone1,2_2.0.1_5B108_Restore.ipsw','iPhone1,2_2.0.1_5B108_Restore.ipsw','Yes','Yes','01.48.02','261,224,227','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','Upgrade to 2.2','','No',''),
	(3,'2.0.2','5C1','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5241.20080818.t5Fv3/iPhone1,2_2.0.2_5C1_Restore.ipsw','iPhone1,2_2.0.2_5C1_Restore.ipsw','Yes','Yes','02.08.01','260,761,030','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','Upgrade to 2.2','','No',''),
	(4,'2.1','5F136','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5198.20080909.K3294/iPhone1,2_2.1_5F136_Restore.ipsw','iPhone1,2_2.1_5F136_Restore.ipsw','Yes','Yes','02.11.07','249,341,655','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','Upgrade to 2.2','','No',''),
	(5,'2.2','5G77','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5778.20081120.Aqw4R/iPhone1,2_2.2_5G77_Restore.ipsw','iPhone1,2_2.2_5G77_Restore.ipsw','Yes','Yes','02.28.00','258,342,348','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','yellowsn0w','http://blog.iphone-dev.org/','No',''),
	(6,'2.2.1','5H11','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5828.20090127.aQLi8/iPhone1,2_2.2.1_5H11_Restore.ipsw','iPhone1,2_2.2.1_5H11_Restore.ipsw','Yes','Yes','02.30.03','258,359,073','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','Upgrade to 3.0','','No',''),
	(7,'3.0','7A341','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-6578.20090617.VfgtU/iPhone1,2_3.0_7A341_Restore.ipsw','iPhone1,2_3.0_7A341_Restore.ipsw','Yes','Yes','04.26.08','241,229,233','purplera1n','http://purplera1n.com/','ultrasn0w','http://blog.iphone-dev.org/','No',''),
	(8,'3.0.1','7A400','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-6972.20090731.Zx3Rr/iPhone1,2_3.0.1_7A400_Restore.ipsw','iPhone1,2_3.0.1_7A400_Restore.ipsw','Yes','Yes','04.26.08','241,274,617','redsn0w 0.8','http://blog.iphone-dev.org','ultrasn0w','http://blog.iphone-dev.org/','No',''),
	(9,'3.1','7C144','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-6600.20090909.AwndZ/iPhone1,2_3.1_7C144_Restore.ipsw','iPhone1,2_3.1_7C144_Restore.ipsw','Yes','Yes','05.11.07','253,361,339','blackra1n','http://www.blackra1n.com/','ultrasn0w','http://blog.iphone-dev.org/','No',''),
	(10,'3.1.2','7D11','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-7265.20091008.Xsd32/iPhone1,2_3.1.2_7D11_Restore.ipsw','iPhone1,2_3.1.2_7D11_Restore.ipsw','Yes','Yes','05.11.07','253,340,786','Star (JailbreakMe)','http://jailbreakme.com','ultrasn0w','http://blog.iphone-dev.org/','No',''),
	(11,'3.1.3','7E18','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-7468.20100202.pbnrt/iPhone1,2_3.1.3_7E18_Restore.ipsw','iPhone1,2_3.1.3_7E18_Restore.ipsw','Yes','Yes','05.12.01','239,139,281','Star (JailbreakMe)','http://jailbreakme.com','ultrasn0w','http://blog.iphone-dev.org/','No',''),
	(12,'4.0','8A293','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone4/061-7436.20100621.58Yt4/iPhone1,2_4.0_8A293_Restore.ipsw','iPhone1,2_4.0_8A293_Restore.ipsw','Yes','Yes','05.13.04','306,274,631','Star (JailbreakMe)','http://jailbreakme.com','ultrasn0w','http://blog.iphone-dev.org/','No',''),
	(13,'4.0.1','8A306','http://appldnld.apple.com/iPhone4/061-8616.20100715.phnt4/iPhone1,2_4.0.1_8A306_Restore.ipsw','iPhone1,2_4.0.1_8A306_Restore.ipsw','Yes','Yes','05.13.04','320,237,975','Star (JailbreakMe)','http://jailbreakme.com','ultrasn0w','http://blog.iphone-dev.org/','No',''),
	(14,'4.1','8B117','http://appldnld.apple.com/iPhone4/061-7932.20100908.3fgt5/iPhone1,2_4.1_8B117_Restore.ipsw','iPhone1,2_4.1_8B117_Restore.ipsw','Yes','Yes','05.14.02','323,137,556','redsn0w','http://blog.iphone-dev.org','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','No',''),
	(15,'4.2.1','8C148','http://appldnld.apple.com/iPhone4/061-9853.20101122.Vfgt5/iPhone1,2_4.2.1_8C148_Restore.ipsw','iPhone1,2_4.2.1_8C148_Restore.ipsw','Yes','Yes','05.15.04','338,579,762','redsn0w','http://blog.iphone-dev.org','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','No','');

/*!40000 ALTER TABLE `iphone3g` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table iphone3gs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iphone3gs`;

CREATE TABLE `iphone3gs` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

LOCK TABLES `iphone3gs` WRITE;
/*!40000 ALTER TABLE `iphone3gs` DISABLE KEYS */;

INSERT INTO `iphone3gs` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'3.0','7A341','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-6582.20090617.LlI87/iPhone2,1_3.0_7A341_Restore.ipsw','iPhone2,1_3.0_7A341_Restore.ipsw','Yes','Yes','04.26.08','312,292,933','redsn0w 0.8','http://blog.iphone-dev.org/','Ultrasn0w','http://blog.iphone-dev.org/','No','No'),
	(2,'3.0.1','7A400','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-6976.20090731.Vgbt5/iPhone2,1_3.0.1_7A400_Restore.ipsw','iPhone2,1_3.0.1_7A400_Restore.ipsw','Yes','Yes','04.26.08','312,330,244','redsn0w 0.8','http://blog.iphone-dev.org/','Ultrasn0w','http://blog.iphone-dev.org/','No','No'),
	(3,'3.1','7C144','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-6609.20090909.mwws4/iPhone2,1_3.1_7C144_Restore.ipsw','iPhone2,1_3.1_7C144_Restore.ipsw','Yes','Yes','05.11.07','321,011,474','blackra1n','http://blackra1n.com/','Ultrasn0w','http://blog.iphone-dev.org/','Yes','No'),
	(4,'3.1.2','7D11','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-7270.20091008.phn32/iPhone2,1_3.1.2_7D11_Restore.ipsw','iPhone2,1_3.1.2_7D11_Restore.ipsw','Yes','Yes','05.11.07','321,015,700','Star (JailbreakMe)','http://jailbreakme.com','Ultrasn0w','http://blog.iphone-dev.org/','No','No'),
	(5,'3.1.3','7E18','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-7472.20100202.8tugj/iPhone2,1_3.1.3_7E18_Restore.ipsw','iPhone2,1_3.1.3_7E18_Restore.ipsw','Yes','Yes','05.12.01','305,122,343','Star (JailbreakMe)','http://jailbreakme.com','Ultrasn0w','http://blog.iphone-dev.org/','No','No'),
	(6,'4.0','8A293','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone4/061-7437.20100621.5urG8/iPhone2,1_4.0_8A293_Restore.ipsw','iPhone2,1_4.0_8A293_Restore.ipsw','Yes','Yes','05.13.04','396,281,280','Star (JailbreakMe)','http://jailbreakme.com','Ultrasn0w','http://blog.iphone-dev.org/','No','No'),
	(7,'4.0.1','8A306','http://appldnld.apple.com/iPhone4/061-8618.20100715.Zapn4/iPhone2,1_4.0.1_8A306_Restore.ipsw','iPhone2,1_4.0.1_8A306_Restore.ipsw','Yes','Yes','05.13.04','396,322,891','Star (JailbreakMe)','http://jailbreakme.com','Ultrasn0w','http://blog.iphone-dev.org/','No','No'),
	(8,'4.1','8B117','http://appldnld.apple.com/iPhone4/061-7938.20100908.F3rCk/iPhone2,1_4.1_8B117_Restore.ipsw','iPhone2,1_4.1_8B117_Restore.ipsw','Yes','Yes','05.14.02','400,572,133','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','No','No'),
	(9,'4.2.1','8C148a','http://appldnld.apple.com/iPhone4/061-9895.20101122.Cdew2/iPhone2,1_4.2.1_8C148a_Restore.ipsw','iPhone2,1_4.2.1_8C148a_Restore.ipsw','Yes','Yes','05.15.04','420,813,164','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','No','No'),
	(10,'4.3','8F190','http://appldnld.apple.com/iPhone4/041-0328.20110311.Lkhy6/iPhone2,1_4.3_8F190_Restore.ipsw','iPhone2,1_4.3_8F190_Restore.ipsw','Yes','Yes','05.16.01','443,762,287','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','Yes','No'),
	(11,'4.3.1','8G4','http://appldnld.apple.com/iPhone4/041-0549.20110325.ZxP8u/iPhone2,1_4.3.1_8G4_Restore.ipsw','iPhone2,1_4.3.1_8G4_Restore.ipsw','Yes','Yes','5.16.00','440,276,917','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','No','No'),
	(12,'4.3.2','8H7','http://appldnld.apple.com/iPhone4/041-0660.20110414.Gwed5/iPhone2,1_4.3.2_8H7_Restore.ipsw','iPhone2,1_4.3.2_8H7_Restore.ipsw','Yes','Yes','05.16.02','440,519,356','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','No','No'),
	(13,'4.3.3','8J2','http://appldnld.apple.com/iPhone4/041-1009.20110503.M73Yr/iPhone2,1_4.3.3_8J2_Restore.ipsw','iPhone2,1_4.3.3_8J2_Restore.ipsw','Yes','Yes','05.16.02','440,519,759','JailbreakMe 3.0','http://jailbreakme.com','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','No','No'),
	(14,'5.0','9A334','http://appldnld.apple.com/iPhone4/041-8356.20111012.SQRDT/iPhone2,1_5.0_9A334_Restore.ipsw','iPhone2,1_5.0_9A334_Restore.ipsw','Yes','Yes','05.16.05','701,195,503','redsn0w','http://blog.iphone-dev.org/','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','Yes','No'),
	(15,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3307.20111109.5tGhu/iPhone2,1_5.0.1_9A405_Restore.ipsw','iPhone2,1_5.0.1_9A405_Restore.ipsw','Yes','Yes','05.16.05','718,181,968','redsn0w','http://blog.iphone-dev.org/','Upgrade to 6.15.00','http://theiphonewiki.com/wiki/index.php?title=6.15.00','No','Yes');

/*!40000 ALTER TABLE `iphone3gs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table iphone4_cdma
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iphone4_cdma`;

CREATE TABLE `iphone4_cdma` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `iphone4_cdma` WRITE;
/*!40000 ALTER TABLE `iphone4_cdma` DISABLE KEYS */;

INSERT INTO `iphone4_cdma` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'4.2.6','8E200','http://appldnld.apple.com/iPhone4/041-0177.20110131.Pyvrz/iPhone3,3_4.2.6_8E200_Restore.ipsw','iPhone3,3_4.2.6_8E200_Restore.ipsw','Yes','No','1.0.05','683,594,406','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','No','No'),
	(2,'4.2.7','8E303','http://appldnld.apple.com/iPhone4/041-0614.20110414.B47xa/iPhone3,3_4.2.7_8E303_Restore.ipsw','iPhone3,3_4.2.7_8E303_Restore.ipsw','Yes','No','1.0.06','684,508,142','sn0wbreeze 2.6.1','http://ih8sn0w.com','','','No','No'),
	(3,'4.2.8','8E401','http://appldnld.apple.com/iPhone4/041-1022.20110503.5g8k7/iPhone3,3_4.2.8_8E401_Restore.ipsw','iPhone3,3_4.2.8_8E401_Restore.ipsw','Yes','No','1.0.06','684,508,142','redsn0w 0.9.6 rc16','http://blog.iphone-dev.org/','','','No','No'),
	(4,'5.0','9A334','http://appldnld.apple.com/iPhone4/041-9743.20111012.vjhfp/iPhone3,3_5.0_9A334_Restore.ipsw','iPhone3,3_5.0_9A334_Restore.ipsw','Yes','No','3.0.03','819,821,067','redsn0w','http://blog.iphone-dev.org/','','','Yes','No'),
	(5,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3304.20111109.Vgtyh/iPhone3,3_5.0.1_9A405_Restore.ipsw','iPhone3,3_5.0.1_9A405_Restore.ipsw','Yes','No','3.0.03','836,999,205','redsn0w','http://blog.iphone-dev.org/','','','No','Yes');

/*!40000 ALTER TABLE `iphone4_cdma` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table iphone4_gsm
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iphone4_gsm`;

CREATE TABLE `iphone4_gsm` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

LOCK TABLES `iphone4_gsm` WRITE;
/*!40000 ALTER TABLE `iphone4_gsm` DISABLE KEYS */;

INSERT INTO `iphone4_gsm` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'4.0','8A293','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone4/061-7380.20100621,Vfgb5/iPhone3,1_4.0_8A293_Restore.ipsw','iPhone3,1_4.0_8A293_Restore.ipsw','Yes','Yes','01.59.00','607,363,121','Star (JailbreakMe)','http://jailbreakme.com','ultrasn0w','http://blog.iphone-dev.org/','No','No'),
	(2,'4.0.1','8A306','http://appldnld.apple.com/iPhone4/061-8619.20100715.4Pnsx/iPhone3,1_4.0.1_8A306_Restore.ipsw','iPhone3,1_4.0.1_8A306_Restore.ipsw','Yes','Yes','01.59.00','607,380,127','Star (JailbreakMe)','http://jailbreakme.com','ultrasn0w','http://blog.iphone-dev.org/','No','No'),
	(3,'4.0.2','8A400','http://appldnld.apple.com/iPhone4/061-8807.20100811.3Edre/iPhone3,1_4.0.2_8A400_Restore.ipsw','iPhone3,1_4.0.2_8A400_Restore.ipsw','Yes','Yes','01.59.00','607,375,880','limera1n','http://limera1n.com/','ultrasn0w','http://blog.iphone-dev.org/','No','No'),
	(4,'4.1','8B117','http://appldnld.apple.com/iPhone4/061-7939.20100908.Lcyg3/iPhone3,1_4.1_8B117_Restore.ipsw','iPhone3,1_4.1_8B117_Restore.ipsw','Yes','No','02.10.04','618,501,195','limera1n','http://limera1n.com/','','','No','No'),
	(5,'4.2.1','8C148','http://appldnld.apple.com/iPhone4/061-9858.20101122.Er456/iPhone3,1_4.2.1_8C148_Restore.ipsw','iPhone3,1_4.2.1_8C148_Restore.ipsw','Yes','No','03.10.01','654,550,096','greenpois0n RC5.1','http://greenpois0n.com/downloads/','','','No','No'),
	(6,'4.3','8F190','http://appldnld.apple.com/iPhone4/041-0330.20110311.Cswe3/iPhone3,1_4.3_8F190_Restore.ipsw','iPhone3,1_4.3_8F190_Restore.ipsw','Yes','No','04.10.01','702,264,955','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','Yes','No'),
	(7,'4.3.1','8G4','http://appldnld.apple.com/iPhone4/041-0551.20110325.Aw2Dr/iPhone3,1_4.3.1_8G4_Restore.ipsw','iPhone3,1_4.3.1_8G4_Restore.ipsw','Yes','No','4.10.01','698,304,690','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','No','No'),
	(8,'4.3.2','8H7','http://appldnld.apple.com/iPhone4/041-0662.20110414.byQ84/iPhone3,1_4.3.2_8H7_Restore.ipsw','iPhone3,1_4.3.2_8H7_Restore.ipsw','Yes','No','04.10.01','698,304,690','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','No','No'),
	(9,'4.3.3','8J2','http://appldnld.apple.com/iPhone4/041-1011.20110503.q7fGc/iPhone3,1_4.3.3_8J2_Restore.ipsw','iPhone3,1_4.3.3_8J2_Restore.ipsw','Yes','No','04.10.01','698,558,606','JailbreakMe 3.0','http://jailbreakme.com','','','No','No'),
	(10,'5.0','9A334','http://appldnld.apple.com/iPhone4/041-8358.20111012.FFc34/iPhone3,1_5.0_9A334_Restore.ipsw','iPhone3,1_5.0_9A334_Restore.ipsw','Yes','No','04.11.08','811,948,143','redsn0w','http://blog.iphone-dev.org/','','','Yes','No'),
	(11,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3309.20111109.64rtg/iPhone3,1_5.0.1_9A405_Restore.ipsw','iPhone3,1_5.0.1_9A405_Restore.ipsw','Yes','No','04.11.08','829,060,929','redsn0w','http://blog.iphone-dev.org/','','','No','Yes');

/*!40000 ALTER TABLE `iphone4_gsm` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table iphone4s
# ------------------------------------------------------------

DROP TABLE IF EXISTS `iphone4s`;

CREATE TABLE `iphone4s` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) character set utf8 NOT NULL default '',
  `build` varchar(50) character set utf8 NOT NULL default '',
  `url` varchar(500) character set utf8 NOT NULL default '',
  `name` varchar(100) character set utf8 NOT NULL default '',
  `can_jailbreak` varchar(50) character set utf8 NOT NULL default '',
  `can_unlock` varchar(50) character set utf8 NOT NULL default '',
  `baseband` varchar(50) character set utf8 NOT NULL default '',
  `size` varchar(50) character set utf8 NOT NULL default '',
  `tool` varchar(50) character set utf8 NOT NULL default '',
  `tool_url` varchar(500) character set utf8 NOT NULL default '',
  `unlock_tool` varchar(50) character set utf8 NOT NULL default '',
  `unlock_url` varchar(500) character set utf8 NOT NULL default '',
  `tethered` varchar(50) character set utf8 NOT NULL default '',
  `shsh` varchar(50) character set utf8 NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

LOCK TABLES `iphone4s` WRITE;
/*!40000 ALTER TABLE `iphone4s` DISABLE KEYS */;

INSERT INTO `iphone4s` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'5.0','9A334','http://appldnld.apple.com/iPhone4/041-1317.20111012.UVTgr/iPhone4,1_5.0_9A334_Restore.ipsw','iPhone4,1_5.0_9A334_Restore.ipsw','No','No','1.0.11','835,490,060','','','','','','No'),
	(2,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3305.20111109.Bghy6/iPhone4,1_5.0.1_9A405_Restore.ipsw','iPhone4,1_5.0.1_9A405_Restore.ipsw','Yes','No','1.0.13','852,471,592','Absinthe','http://greenpois0n.com','','','No','Yes');

/*!40000 ALTER TABLE `iphone4s` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ipod1g
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ipod1g`;

CREATE TABLE `ipod1g` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

LOCK TABLES `ipod1g` WRITE;
/*!40000 ALTER TABLE `ipod1g` DISABLE KEYS */;

INSERT INTO `ipod1g` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'1.1','3A101a','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPod/SBML/osx/bundles/061-3882.20070910.N8uyT/iPod1,1_1.1_3A101a_Restore.ipsw','iPod1,1_1.1_3A101a_Restore.ipsw','Yes','','','157,890,186','iLiberty','http://george.insideiphone.com/index.php/iliberty/','','','No',''),
	(2,'1.1.1','3A110a','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPod/SBML/osx/bundles/061-3932.20070927.p23dD/iPod1,1_1.1.1_3A110a_Restore.ipsw','iPod1,1_1.1.1_3A110a_Restore.ipsw','Yes','','','157,906,686','AppSnapp','http://theiphonewiki.com/wiki/index.php?title=JailbreakMe','','','No',''),
	(3,'1.1.2','3B48b','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPod/SBML/osx/bundles/061-4036.20071107.9g3DF/iPod1,1_1.1.2_3B48b_Restore.ipsw','iPod1,1_1.1.2_3B48b_Restore.ipsw','Yes','','','165,567,897','OktoPrep','http://theiphonewiki.com/wiki/index.php?title=Mknod','','','No',''),
	(4,'1.1.3','4A93','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPod/SBML/osx/061-4060.20080115.9Iuh5/iPod1,1_1.1.3_4A93_Restore.ipsw','iPod1,1_1.1.3_4A93_Restore.ipsw','Yes','','','173,511,411','iLiberty','http://george.insideiphone.com/index.php/iliberty/','','','No',''),
	(5,'1.1.4','4A102','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPod/SBML/osx/bundles/061-4312.20080226.Btu45/iPod1,1_1.1.4_4A102_Restore.ipsw','iPod1,1_1.1.4_4A102_Restore.ipsw','Yes','','','173,519,589','iLiberty','http://george.insideiphone.com/index.php/iliberty/','','','No',''),
	(6,'1.1.5','4B1','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPod/SBML/osx/bundles/061-4841.20080714.bgy8O/iPod1,1_1.1.5_4B1_Restore.ipsw','iPod1,1_1.1.5_4B1_Restore.ipsw','Yes','','','173,519,637','iLiberty','http://george.insideiphone.com/index.php/iliberty/','','','No',''),
	(7,'2.0','5A347','','','Yes','','','','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','','','No',''),
	(8,'2.0.1','5B108','','','Yes','','','','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','','','No',''),
	(9,'2.0.2','5C1','','','Yes','','','','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','','','No',''),
	(10,'2.1','5F137','','','Yes','','','','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','','','No',''),
	(11,'2.2','5G77','','','Yes','','','','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','','','No',''),
	(12,'2.2.1','5H11','','','Yes','','','','QuickPwn','http://theiphonewiki.com/wiki/index.php?title=QuickPwn','','','No',''),
	(13,'3.0','7A341','','','Yes','','','','redsn0w','http://blog.iphone-dev.org','','','No',''),
	(14,'3.1.2','7D11','','','Yes','','','','Spirit','http://spiritjb.com/','','','No',''),
	(15,'3.1.3','7E18','','','Yes','','','','Spirit','http://spiritjb.com/','','','No','');

/*!40000 ALTER TABLE `ipod1g` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ipod2g
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ipod2g`;

CREATE TABLE `ipod2g` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

LOCK TABLES `ipod2g` WRITE;
/*!40000 ALTER TABLE `ipod2g` DISABLE KEYS */;

INSERT INTO `ipod2g` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'2.1.1','5F138','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPod/SBML/osx/bundles/061-5494.20080909.8i9o0/iPod2,1_2.1.1_5F138_Restore.ipsw','iPod2,1_2.1.1_5F138_Restore.ipsw','Yes','','','282,083,944','redsn0w','http://blog.iphone-dev.org/','','','Yes',''),
	(2,'2.2','5G77a','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPod/SBML/osx/061-5358.20081120.Gtghy/iPod2,1_2.2_5G77a_Restore.ipsw','iPod2,1_2.2_5G77a_Restore.ipsw','Yes','','','291,123,491','redsn0w','http://blog.iphone-dev.org/','','','No',''),
	(3,'2.2.1','5H11a','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-5863.20090127.rt56K/iPod2,1_2.2.1_5H11a_Restore.ipsw','iPod2,1_2.2.1_5H11a_Restore.ipsw','Yes','','','291,140,244','redsn0w','http://blog.iphone-dev.org/','','','No',''),
	(4,'3.0','7A341','','','Yes','','','','redsn0w','http://blog.iphone-dev.org/','','','No',''),
	(5,'3.1.2','7D11','','','Yes','','','','blackra1n','http://www.blackra1n.com/','','','No',''),
	(6,'3.1.3','7E18','','','Yes','','','','Star (JailbreakMe)','http://jailbreakme.com','','','No',''),
	(7,'4.0','8A293','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone4/061-7435.20100621.tr49t/iPod2,1_4.0_8A293_Restore.ipsw','iPod2,1_4.0_8A293_Restore.ipsw','Yes','','','330,278,777','redsn0w','http://blog.iphone-dev.org/','','','No',''),
	(8,'4.1','8B117','http://appldnld.apple.com/iPhone4/061-7937.20100908.ghj4f/iPod2,1_4.1_8B117_Restore.ipsw','iPod2,1_4.1_8B117_Restore.ipsw','Yes','','','348,027,174','redsn0w','http://blog.iphone-dev.org/','','','No',''),
	(9,'4.2.1','8C148','http://appldnld.apple.com/iPhone4/061-9855.20101122.Lrft6/iPod2,1_4.2.1_8C148_Restore.ipsw','iPod2,1_4.2.1_8C148_Restore.ipsw','Yes','','','363,553,480','redsn0w','http://blog.iphone-dev.org/','','','No','');

/*!40000 ALTER TABLE `ipod2g` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ipod3g
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ipod3g`;

CREATE TABLE `ipod3g` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

LOCK TABLES `ipod3g` WRITE;
/*!40000 ALTER TABLE `ipod3g` DISABLE KEYS */;

INSERT INTO `ipod3g` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'3.1.1','7C145','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPod/SBML/osx/bundles/061-7163.20090909.NtstR/iPod3,1_3.1.1_7C145_Restore.ipsw','iPod3,1_3.1.1_7C145_Restore.ipsw','Yes','','','311,702,789','redsn0w 0.9.3','http://blog.iphone-dev.org/','','','Yes','No'),
	(2,'3.1.2','7D11','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-7271.20091008.Tch23/iPod3,1_3.1.2_7D11_Restore.ipsw','iPod3,1_3.1.2_7D11_Restore.ipsw','Yes','','','311,740,034','Star (JailbreakMe)','http://jailbreakme.com','','','No','No'),
	(3,'3.1.3','7E18','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone/061-7473.20100202.4i44t/iPod3,1_3.1.3_7E18_Restore.ipsw','iPod3,1_3.1.3_7E18_Restore.ipsw','Yes','','','295,870,806','Star (JailbreakMe)','http://jailbreakme.com','','','No','No'),
	(4,'4.0','8A293','http://appldnld.apple.com.edgesuite.net/content.info.apple.com/iPhone4/061-7381.20100621.AzSP9/iPod3,1_4.0_8A293_Restore.ipsw','iPod3,1_4.0_8A293_Restore.ipsw','Yes','','','384,178,784','Star (JailbreakMe)','http://jailbreakme.com','','','No','No'),
	(5,'4.1','8B117','http://appldnld.apple.com/iPhone4/061-7941.20100908.sV9KE/iPod3,1_4.1_8B117_Restore.ipsw','iPod3,1_4.1_8B117_Restore.ipsw','Yes','','','388,255,189','limera1n','http://limera1n.com/','','','No','No'),
	(6,'4.2.1','8C148','http://appldnld.apple.com/iPhone4/061-9860.20101122.Xsde3/iPod3,1_4.2.1_8C148_Restore.ipsw','iPod3,1_4.2.1_8C148_Restore.ipsw','Yes','','','408,118,620','greenpois0n RC6.1','http://greenpois0n.com/downloads/','','','No','No'),
	(7,'4.3','8F190','http://appldnld.apple.com/iPhone4/061-8366.20110311.Fr45t/iPod3,1_4.3_8F190_Restore.ipsw','iPod3,1_4.3_8F190_Restore.ipsw','Yes','','','433,166,165','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','Yes','No'),
	(8,'4.3.1','8G4','http://appldnld.apple.com/iPhone4/041-0552.20110325.Yt67u/iPod3,1_4.3.1_8G4_Restore.ipsw','iPod3,1_4.3.1_8G4_Restore.ipsw','Yes','','','429,132,326','redsn0w 0.9.6 rc9','http://blog.iphone-dev.org/','','','No','No'),
	(9,'4.3.2','8H7','http://appldnld.apple.com/iPhone4/041-0667.20110414.95hVL/iPod3,1_4.3.2_8H7_Restore.ipsw','iPod3,1_4.3.2_8H7_Restore.ipsw','Yes','','','429,339,223','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','No','No'),
	(10,'4.3.3','8J2','http://appldnld.apple.com/iPhone4/041-1021.20110503.8Lfs1/iPod3,1_4.3.3_8J2_Restore.ipsw','iPod3,1_4.3.3_8J2_Restore.ipsw','Yes','','','429,343,499','JailbreakMe 3.0','http://jailbreakme.com','','','No','No'),
	(11,'5.0','9A334','http://appldnld.apple.com/iPhone4/061-8360.20111012.New3w/iPod3,1_5.0_9A334_Restore.ipsw','iPod3,1_5.0_9A334_Restore.ipsw','Yes','','','668,193,167','redsn0w','http://blog.iphone-dev.org/','','','Yes','No'),
	(12,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3314.20111109.Mbgh6/iPod3,1_5.0.1_9A405_Restore.ipsw','iPod3,1_5.0.1_9A405_Restore.ipsw','Yes','','','685,093,259','redsn0w','http://blog.iphone-dev.org/','','','No','Yes');

/*!40000 ALTER TABLE `ipod3g` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ipod4g
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ipod4g`;

CREATE TABLE `ipod4g` (
  `id` int(255) NOT NULL auto_increment,
  `version` varchar(50) NOT NULL,
  `build` varchar(50) NOT NULL,
  `url` varchar(500) NOT NULL default '',
  `name` varchar(500) NOT NULL,
  `can_jailbreak` varchar(10) NOT NULL,
  `can_unlock` varchar(10) NOT NULL,
  `baseband` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `tool` varchar(50) NOT NULL,
  `tool_url` varchar(500) NOT NULL default '',
  `unlock_tool` varchar(50) NOT NULL,
  `unlock_url` varchar(500) NOT NULL default '',
  `tethered` varchar(50) NOT NULL,
  `shsh` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

LOCK TABLES `ipod4g` WRITE;
/*!40000 ALTER TABLE `ipod4g` DISABLE KEYS */;

INSERT INTO `ipod4g` (`id`, `version`, `build`, `url`, `name`, `can_jailbreak`, `can_unlock`, `baseband`, `size`, `tool`, `tool_url`, `unlock_tool`, `unlock_url`, `tethered`, `shsh`)
VALUES
	(1,'4.1','8B118','http://appldnld.apple.com/iPhone4/061-9344.20100922.Urgt43/iPod4,1_4.1_8B118_Restore.ipsw','iPod4,1_4.1_8B118_Restore.ipsw','Yes','','','608,360,672','limera1n','http://limera1n.com/','','','No','No'),
	(2,'4.2.1','8C148','http://appldnld.apple.com/iPhone4/061-9859.20101122.$erft/iPod4,1_4.2.1_8C148_Restore.ipsw','iPod4,1_4.2.1_8C148_Restore.ipsw','Yes','','','638,177,119','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','No','No'),
	(3,'4.3','8F190','http://appldnld.apple.com/iPhone4/061-9588.20110311.GtP7y/iPod4,1_4.3_8F190_Restore.ipsw','iPod4,1_4.3_8F190_Restore.ipsw','Yes','','','684,595,902','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','Yes','No'),
	(4,'4.3.1','8G4','http://appldnld.apple.com/iPhone4/041-0545.20110325.We3Rt/iPod4,1_4.3.1_8G4_Restore.ipsw','iPod4,1_4.3.1_8G4_Restore.ipsw','Yes','','','681,680,434','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','No','No'),
	(5,'4.3.2','8H7','http://appldnld.apple.com/iPhone4/041-0666.20110414.3QvM1/iPod4,1_4.3.2_8H7_Restore.ipsw','iPod4,1_4.3.2_8H7_Restore.ipsw','Yes','','','681,851,983','redsn0w 0.9.6 rc14','http://blog.iphone-dev.org/','','','No','No'),
	(6,'4.3.3','8J2','http://appldnld.apple.com/iPhone4/041-1015.20110503.d7i57/iPod4,1_4.3.3_8J2_Restore.ipsw','iPod4,1_4.3.3_8J2_Restore.ipsw','Yes','','','681,860,586','JailbreakMe 3.0','http://jailbreakme.com','','','No','No'),
	(7,'5.0','9A334','http://appldnld.apple.com/iPhone4/061-9622.20111012.Evry3/iPod4,1_5.0_9A334_Restore.ipsw','iPod4,1_5.0_9A334_Restore.ipsw','Yes','','','798,571,862','redsn0w','http://blog.iphone-dev.org/','','','Yes','No'),
	(8,'5.0.1','9A405','http://appldnld.apple.com/iPhone4/041-3313.20111109.Azxe3/iPod4,1_5.0.1_9A405_Restore.ipsw','iPod4,1_5.0.1_9A405_Restore.ipsw','Yes','','','815,525,980','redsn0w','http://blog.iphone-dev.org/','','','No','Yes');

/*!40000 ALTER TABLE `ipod4g` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
