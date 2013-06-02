/*
Navicat MySQL Data Transfer

Source Server         : devel
Source Server Version : 50516
Source Host           : localhost:3306
Source Database       : dayz_origins

Target Server Type    : MYSQL
Target Server Version : 50516
File Encoding         : 65001

Date: 2013-05-01 12:48:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `character_data`
-- ----------------------------
DROP TABLE IF EXISTS `character_data`;
CREATE TABLE `character_data` (
  `CharacterID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL DEFAULT '',
  `Alive` tinyint(1) NOT NULL DEFAULT '1',
  `InstanceID` tinyint(2) NOT NULL,
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Inventory` longtext NOT NULL,
  `Backpack` longtext NOT NULL,
  `Medical` varchar(300) NOT NULL DEFAULT '[]',
  `Generation` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Datestamp` timestamp NULL DEFAULT NULL,
  `LastLogin` timestamp NULL DEFAULT NULL,
  `LastAte` timestamp NULL DEFAULT NULL,
  `LastDrank` timestamp NULL DEFAULT NULL,
  `Humanity` int(10) DEFAULT NULL,
  `KillsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `HeadshotsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `distanceFoot` bigint(15) unsigned NOT NULL DEFAULT '0',
  `duration` int(10) NOT NULL DEFAULT '0',
  `currentState` varchar(128) NOT NULL DEFAULT '[]',
  `KillsH` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `KillsB` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor1_DZ"',
  `Datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`,`PlayerUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of character_data
-- ----------------------------

-- ----------------------------
-- Table structure for `dbver`
-- ----------------------------
DROP TABLE IF EXISTS `dbver`;
CREATE TABLE `dbver` (
  `version` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dbver
-- ----------------------------
INSERT INTO `dbver` VALUES ('123');

-- ----------------------------
-- Table structure for `deployable`
-- ----------------------------
DROP TABLE IF EXISTS `deployable`;
CREATE TABLE `deployable` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq1_deployable` (`class_name`)
) ENGINE=MyISAM AUTO_INCREMENT=1749 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of deployable
-- ----------------------------
INSERT INTO `deployable` VALUES ('1748', 'TentStorage');
INSERT INTO `deployable` VALUES ('2', 'TrapBear');
INSERT INTO `deployable` VALUES ('3', 'Wire_cat1');
INSERT INTO `deployable` VALUES ('4', 'Hedgehog_DZ');
INSERT INTO `deployable` VALUES ('5', 'Sandbag1_DZ');

-- ----------------------------
-- Table structure for `object_classes`
-- ----------------------------
DROP TABLE IF EXISTS `object_classes`;
CREATE TABLE `object_classes` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of object_classes
-- ----------------------------
INSERT INTO `object_classes` VALUES ('ATV_US_EP1', '0.70', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('car_hatchback', '0.73', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_3_open', '0.75', '8', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Fishing_Boat_DZ', '0.9', '7', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('Ikarus', '0.66', '10', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Old_bike_TK_CIV_EP1', '0.64', '39', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('S1203_TK_CIV_EP1', '0.69', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Skoda', '0.68', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('tractor', '0.7', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_TK_CIV_EP1', '0.72', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_RU', '0.7', '10', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UH1H_DZ', '0.59', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil2', '0.67', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('V3S_Civ', '0.66', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Volha_2_TK_CIV_EP1', '0.71', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('PBX_DZ', '0.4', '5', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('AN2_DZ', '0.05', '3', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('ATV_CZ_EP1', '0.70', '19', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('car_sedan', '0.7', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('datsun1_civil_2_covered', '0.7', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_1_open', '0.70', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_2_covered', '0.70', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('hilux1_civil_3_open_EP1', '0.70', '7', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Ikarus_TK_CIV_EP1', '0.7', '3', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Lada1', '0.70', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Lada1_TK_CIV_EP1', '0.70', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Lada2_TK_CIV_EP1', '0.70', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('LadaLM', '0.70', '5', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_CZ_EP1', '0.70', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('LandRover_TK_CIV_EP1', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Mi17_Civilian_DZ', '0.70', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('MMT_Civ', '0.70', '18', '0.05000', '[]');
INSERT INTO `object_classes` VALUES ('Old_moto_TK_Civ_EP1', '0.70', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SUV_Special', '0.7', '10', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaBlue', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaGreen', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('SkodaRed', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Smallboat_1_DZ', '0.70', '0', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('Smallboat_2_DZ', '0.70', '0', '0.05000', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('TowingTractor', '0.70', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_Gue', '0.7', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('TT650_Ins', '0.7', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.7', '1', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_Unarmed_TK_EP1', '0.7', '3', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('VWGolf', '0.7', '4', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('VolhaLimo_TK_CIV_EP1', '0.5', '6', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UralCivil', '0.7', '2', '0.05000', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Mi17_DZ', '0.7', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('AH6X_DZ', '0.7', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Pickup_PK_DZ', '0.7', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('UAZ_MG_DZ', '0.7', '7', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Zodiac_DZ', '0.5', '2', '0.05', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('TT650_Civ', '0.7', '3', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Ural_TK_CIV_EP1', '0.7', '2', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('Ural_UN_EP1', '0.7', '2', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('rth_ScrapBuggy', '0.5', '13', '0.05', '[[\"motor\",0.8],[\"karoserie\",0.6],[\"palivo\",0.5],[\"wheel_1_1_steering\",1],[\"wheel_2_2_steering\",1],[\"front_plow\",1]]');
INSERT INTO `object_classes` VALUES ('rth_scrapbus', '0.5', '14', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('rth_ScrapApc', '0.5', '31', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass2\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('rth_copter_green', '0.5', '5', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('rth_copter_yellow', '0.5', '6', '0.05', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"elektronika\",0.8],[\"mala vrtule\",0.8],[\"velka vrtule\",0.8],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"glass1\",1],[\"glass3\",1]]');
INSERT INTO `object_classes` VALUES ('rth_raft', '0.5', '15', '0.05', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('rth_raft_small', '0.5', '14', '0.05', '[[\"motor\",0.8]]');
INSERT INTO `object_classes` VALUES ('DC3', '0.9', '1', '0.05', '[]');
INSERT INTO `object_classes` VALUES ('p85_cucv_pickup', '0.7', '5', '0.05', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_l1\",1],[\"sklo_z\",0.4],[\"levy predni tlumic\",1],[\"levy zadni tlumic\",0.1],[\"pravy predni tlumic\",1],[\"karoserie\",0.7],[\"palivo\",0.8],[\"motor\",0.6],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_p85_cucv', '0.7', '4', '0.05', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_p2\",0.6],[\"sklo_l1\",1],[\"sklo_l2\",0.5],[\"sklo_z\",1],[\"levy zadni tlumic\",1],[\"pravy predni tlumic\",1],[\"karoserie\",0.7],[\"palivo\",0.4],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_volvo_fl290', '0.7', '6', '0.05', '[[\"sklo_p\",0.7],[\"sklo_p1\",1],[\"sklo_p2\",0.9],[\"sklo_p3\",0.3],[\"sklo_l1\",0.1],[\"sklo_l2\",0.1],[\"sklo_l3\",1],[\"levy predni tlumic\",0.5],[\"levy zadni tlumic\",0.1],[\"pravy predni tlumic\",0.2],[\"karoserie\",0.1],[\"palivo\",0.6],[\"motor\",1],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_truck_civ2', '0.7', '4', '0', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_l1\",0.7],[\"levy predni tlumic\",0.1],[\"levy zadni tlumic\",0.1],[\"pravy predni tlumic\",0.3],[\"pravy zadni tlumic\",1],[\"karoserie\",0.7],[\"palivo\",0.6],[\"motor\",0.5],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_truck_civ1', '0.7', '4', '0', '[[\"sklo_p\",1],[\"sklo_p1\",0.8],[\"sklo_l1\",0.3],[\"levy predni tlumic\",1],[\"levy zadni tlumic\",1],[\"pravy predni tlumic\",1],[\"pravy zadni tlumic\",1],[\"karoserie\",0.4],[\"palivo\",1],[\"motor\",0.7],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_truck_civ', '0.7', '4', '0', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_l1\",1],[\"levy predni tlumic\",1],[\"levy zadni tlumic\",1],[\"pravy zadni tlumic\",1],[\"karoserie\",0.9],[\"palivo\",0.6],[\"motor\",0.2],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('ori_vil_lublin_truck', '0.7', '4', '0', '[[\"sklo_p\",1],[\"sklo_p1\",1],[\"sklo_l1\",1],[\"levy predni tlumic\",1],[\"levy zadni tlumic\",0.2],[\"pravy predni tlumic\",1],[\"pravy zadni tlumic\",1],[\"karoserie\",0.7],[\"palivo\",0.2],[\"sklo predni P\",1],[\"motor\",0.7],[\"front_plow\",1],[\"wheel_guards\",1],[\"window_guards\",1],[\"windshield_guard\",1]]');
INSERT INTO `object_classes` VALUES ('rth_amphicar', '0.7', '15', '0.05', '[[\"LF_hit\",1],[\"LM_hit\",1],[\"LB_hit\",0.4],[\"RF_hit\",1],[\"RM_hit\",1],[\"RB_hit\",1],[\"motor\",0.8]]');

-- ----------------------------
-- Table structure for `object_data`
-- ----------------------------
DROP TABLE IF EXISTS `object_data`;
CREATE TABLE `object_data` (
  `ObjectID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ObjectUID` varchar(20) DEFAULT NULL,
  `Instance` int(3) DEFAULT NULL,
  `Classname` varchar(32) DEFAULT NULL,
  `Damage` double(13,5) DEFAULT NULL,
  `CharacterID` int(10) unsigned DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Inventory` longtext,
  `Hitpoints` varchar(999) DEFAULT NULL,
  `Fuel` double(13,5) DEFAULT NULL,
  `Datestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_data
-- ----------------------------

-- ----------------------------
-- Table structure for `object_spawns`
-- ----------------------------
DROP TABLE IF EXISTS `object_spawns`;
CREATE TABLE `object_spawns` (
  `ObjectUID` varchar(20) NOT NULL DEFAULT '',
  `Classname` varchar(32) DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ObjectUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of object_spawns
-- ----------------------------
INSERT INTO `object_spawns` VALUES ('0000000000018', 'Old_bike_TK_CIV_EP1', '[210,[3910,7357,0]]', 'Motrovice Statue');
INSERT INTO `object_spawns` VALUES ('0000000000019', 'V3S_Civ', '[270,[3903,7069,0]]', 'Motrovice Fulestation');
INSERT INTO `object_spawns` VALUES ('0000000000020', 'tractor', '[80,[4580,6319,0]]', 'Barn in 045|192');
INSERT INTO `object_spawns` VALUES ('0000000000021', 'Old_bike_TK_CIV_EP1', '[290,[5394,5885,0]]', 'Silos in 053|197');
INSERT INTO `object_spawns` VALUES ('0000000000022', 'TT650_TK_CIV_EP1', '[90,[6174,5335,0]]', 'Lighthouse in 061|202');
INSERT INTO `object_spawns` VALUES ('0000000000023', 'ATV_CZ_EP1', '[135,[7950,5379,0]]', 'Castle Grad Bled');
INSERT INTO `object_spawns` VALUES ('0000000000025', 'Lada1_TK_CIV_EP1', '[145,[8780,2383,0]]', '087|232');
INSERT INTO `object_spawns` VALUES ('0000000000026', 'Ikarus', '[135,[8805,2318,0]]', 'Busstop near Hotel 087|232');
INSERT INTO `object_spawns` VALUES ('0000000000028', 'VWGolf', '[215,[8895,2265,0]]', 'Garage at 086|233');
INSERT INTO `object_spawns` VALUES ('0000000000029', 'MMT_Civ', '[1,[8987,2235,0]]', 'Close to Hospital 089|233');
INSERT INTO `object_spawns` VALUES ('0000000000030', 'S1203_TK_CIV_EP1', '[120,[8978,2254,0]]', 'Hospital 089|233');
INSERT INTO `object_spawns` VALUES ('0000000000031', 'LadaLM', '[300,[8995,2292,0]]', 'Firestation 089|233');
INSERT INTO `object_spawns` VALUES ('0000000000032', 'car_hatchback', '[210,[8957,2343,0]]', '089|232');
INSERT INTO `object_spawns` VALUES ('0000000000033', 'rth_scrapbus', '[320,[9922,1412,0]]', 'Busstop near Hotel 099|241');
INSERT INTO `object_spawns` VALUES ('0000000000034', 'rth_scrapbus', '[140,[9935,1391,0]]', 'Busstop near Hotel 099|241');
INSERT INTO `object_spawns` VALUES ('0000000000035', 'datsun1_civil_2_covered', '[245,[10051,1375,0]]', '100|242');
INSERT INTO `object_spawns` VALUES ('0000000000037', 'tractor', '[310,[10495,1086,0]]', 'Barn 104|245');
INSERT INTO `object_spawns` VALUES ('0000000000038', 'Old_bike_TK_CIV_EP1', '[220,[10889,850,0]]', '108|247');
INSERT INTO `object_spawns` VALUES ('0000000000039', 'datsun1_civil_3_open', '[220,[10920,819,0]]', '109|248');
INSERT INTO `object_spawns` VALUES ('0000000000040', 'Ikarus', '[100,[10946,798,0]]', '109|247');
INSERT INTO `object_spawns` VALUES ('0000000000041', 'rth_scrapbus', '[280,[10968,800,0]]', '109|247');
INSERT INTO `object_spawns` VALUES ('0000000000042', 'rth_ScrapApc', '[130,[10939,868,0]]', '109|247');
INSERT INTO `object_spawns` VALUES ('0000000000043', 'SkodaRed', '[250,[11175,715,0]]', '111|248');
INSERT INTO `object_spawns` VALUES ('0000000000044', 'SUV_Special', '[80,[11258,875,0]]', '112|247');
INSERT INTO `object_spawns` VALUES ('0000000000045', 'rth_ScrapApc', '[270,[11649,773,0]]', 'Fulestation 116|248');
INSERT INTO `object_spawns` VALUES ('0000000000046', 'SkodaGreen', '[120,[11701,749,0]]', '117|258');
INSERT INTO `object_spawns` VALUES ('0000000000047', 'Old_bike_TK_CIV_EP1', '[120,[11760,886,0]]', 'Hotel 117|247');
INSERT INTO `object_spawns` VALUES ('0000000000048', 'UralCivil2', '[320,[11414,1153,0]]', 'Hotel 114|244');
INSERT INTO `object_spawns` VALUES ('0000000000049', 'ATV_CZ_EP1', '[145,[11798,1452,0]]', 'Hotel 117|241');
INSERT INTO `object_spawns` VALUES ('0000000000050', 'Old_bike_TK_CIV_EP1', '[220,[10151,2906,0]]', 'Farm at 101|226');
INSERT INTO `object_spawns` VALUES ('0000000000051', 'rth_ScrapBuggy', '[130,[9903,3177,0]]', 'Cowshed at 099|224');
INSERT INTO `object_spawns` VALUES ('0000000000052', 'ATV_CZ_EP1', '[270,[9791,3913,0]]', 'Farm at 097|216 ');
INSERT INTO `object_spawns` VALUES ('0000000000053', 'rth_scrapbus', '[180,[9705,4389,0]]', 'Busstop in front of NPP');
INSERT INTO `object_spawns` VALUES ('0000000000054', 'Ikarus', '[1,[9711,4404,0]]', 'Busstop in front of NPP');
INSERT INTO `object_spawns` VALUES ('0000000000056', 'car_sedan', '[270,[9675,4346,0]]', 'NPP');
INSERT INTO `object_spawns` VALUES ('0000000000057', 'UralCivil', '[90,[9281,4389,0]]', 'NPP');
INSERT INTO `object_spawns` VALUES ('0000000000060', 'UAZ_RU', '[120,[9309,5289,0]]', 'FOB at Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000061', 'SkodaBlue', '[270,[9172,5416,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000062', 'Old_bike_TK_CIV_EP1', '[1,[9055,5393,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000063', 'rth_scrapbus', '[270,[8997,5424,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000064', 'rth_scrapbus', '[110,[9037,5416,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000065', 'rth_ScrapBuggy', '[1,[8958,5399,0]]', 'Kryvoem');
INSERT INTO `object_spawns` VALUES ('0000000000066', 'tractor', '[100,[8344,5538,0]]', '083|200');
INSERT INTO `object_spawns` VALUES ('0000000000067', 'Skoda', '[60,[8486,5592,0]]', 'Poljanka');
INSERT INTO `object_spawns` VALUES ('0000000000068', 'rth_ScrapApc', '[340,[8235,6094,0]]', 'Stari Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000069', 'Ikarus', '[160,[8228,6097,0]]', 'Stari Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000070', 'MMT_Civ', '[340,[8248,6115,0]]', 'Stari Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000071', 'SUV_Special', '[60,[7838,6529,0]]', 'Novi Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000072', 'Old_bike_TK_CIV_EP1', '[320,[7914,6697,0]]', 'Novi Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000073', 'V3S_Civ', '[160,[7942,6909,0]]', 'Novi Dvor Factory');
INSERT INTO `object_spawns` VALUES ('0000000000074', 'ATV_CZ_EP1', '[180,[7566,7381,0]]', 'Barn South of Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000075', 'rth_scrapbus', '[200,[7873,7799,0]]', 'Busstop at Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000076', 'rth_scrapbus', '[20,[7880,7808,0]]', 'Busstop at Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000077', 'Mi17_Civilian_DZ', '[180,[6927,8343,0]]', 'Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000078', 'LadaLM', '[210,[7453,8090,0]]', 'Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000079', 'AN2_DZ', '[220,[7550,8009,0]]', 'Krasnoznamensk Airport');
INSERT INTO `object_spawns` VALUES ('0000000000080', 'rth_ScrapBuggy', '[1,[5180,8089,0]]', 'Barn near Primmorsk');
INSERT INTO `object_spawns` VALUES ('0000000000081', 'MMT_Civ', '[340,[5375,8484,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000086', 'Skoda', '[160,[5523,8957,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000087', 'Volha_2_TK_CIV_EP1', '[165,[5568,8952,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000001', 'TT650_Gue', '[140,[2114,7055,0]]', 'Racetrack');
INSERT INTO `object_spawns` VALUES ('0000000000002', 'TT650_Gue', '[180,[2116,7062,0]]', 'Racetrack');
INSERT INTO `object_spawns` VALUES ('0000000000003', 'MMT_Civ', '[240,[1361,7954,0]]', 'Lighthouse 013|176');
INSERT INTO `object_spawns` VALUES ('0000000000004', 'ATV_CZ_EP1', '[300,[3286,6879,0]]', 'Radiotower 032|187');
INSERT INTO `object_spawns` VALUES ('0000000000005', 'hilux1_civil_3_open_EP1', '[359,[3311,7870,0]]', 'Stangrad Port, between containers');
INSERT INTO `object_spawns` VALUES ('0000000000006', 'UralCivil', '[180,[3413,7869,0]]', 'Stangrad Port');
INSERT INTO `object_spawns` VALUES ('0000000000007', 'Ural_TK_CIV_EP1', '[180,[3427,7869,0]]', 'Stangrad Port');
INSERT INTO `object_spawns` VALUES ('0000000000009', 'rth_ScrapBuggy', '[130,[1634,7604,0]]', 'Stangrad in front of a garage');
INSERT INTO `object_spawns` VALUES ('0000000000010', 'Old_bike_TK_CIV_EP1', '[330,[3290,7529,0]]', 'Stangrad on plaza by church');
INSERT INTO `object_spawns` VALUES ('0000000000011', 'rth_ScrapApc', '[330,[3342,7396,0]]', 'Stangrad firestation');
INSERT INTO `object_spawns` VALUES ('0000000000012', 'Old_moto_TK_Civ_EP1', '[70,[2979,7437,0]]', 'Barn, west of Stangrad');
INSERT INTO `object_spawns` VALUES ('0000000000013', 'LadaLM', '[1,[3796,6887,0]]', 'Motrovice Fire Station');
INSERT INTO `object_spawns` VALUES ('0000000000014', 'rth_ScrapApc', '[180,[3785,6933,0]]', 'Motrovice Bus Stop');
INSERT INTO `object_spawns` VALUES ('0000000000015', 'Ikarus', '[1,[3793,7072,0]]', 'Motrovice Bus Stop');
INSERT INTO `object_spawns` VALUES ('0000000000016', 'VolhaLimo_TK_CIV_EP1', '[1,[3821,7129,0]]', 'Motrovice Hotel');
INSERT INTO `object_spawns` VALUES ('0000000000017', 'SkodaBlue', '[90,[3789,7278,0]]', 'Motrovice Supermarket');
INSERT INTO `object_spawns` VALUES ('0000000000089', 'Old_bike_TK_CIV_EP1', '[260,[5666,8826,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000090', 'rth_ScrapBuggy', '[250,[5504,8802,0]]', 'Bilfrad na moru');
INSERT INTO `object_spawns` VALUES ('0000000000091', 'tractor', '[320,[5987,9604,0]]', 'Barn near Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000092', 'rth_ScrapBuggy', '[270,[5980,9939,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000093', 'S1203_TK_CIV_EP1', '[140,[5895,9946,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000094', 'Old_bike_TK_CIV_EP1', '[270,[5850,9901,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000095', 'rth_ScrapApc', '[200,[5788,9981,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000096', 'Skoda', '[270,[5715,9903,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000097', 'Ikarus', '[180,[5689,9856,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000098', 'rth_scrapbus', '[1,[5693,9880,0]]', 'Cernovar');
INSERT INTO `object_spawns` VALUES ('0000000000099', 'UralCivil2', '[1,[5532,9750,0]]', 'Cernovar Port');
INSERT INTO `object_spawns` VALUES ('0000000000100', 'datsun1_civil_3_open', '[90,[6691,9909,0]]', 'Vedic');
INSERT INTO `object_spawns` VALUES ('0000000000101', 'Mi17_Civilian_DZ', '[180,[7799,9079,0]]', 'FOB near Berstuk');
INSERT INTO `object_spawns` VALUES ('0000000000102', 'UAZ_RU', '[40,[7746,9082,0]]', 'FOB near Berstuk');
INSERT INTO `object_spawns` VALUES ('0000000000103', 'ATV_CZ_EP1', '[320,[11010,6726,0]]', 'Grad Krkov');
INSERT INTO `object_spawns` VALUES ('0000000000104', 'UAZ_RU', '[60,[10395,6751,0]]', 'FOB near Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000105', 'Lada1', '[350,[10636,6518,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000106', 'LandRover_TK_CIV_EP1', '[300,[10644,6569,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000107', 'TowingTractor', '[270,[16529,10209,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000108', 'LadaLM', '[320,[16704,10623,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000109', 'AN2_DZ', '[270,[16730,10484,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000110', 'Mi17_Civilian_DZ', '[90,[16649,11577,0]]', 'Airport Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000111', 'AN2_DZ', '[240,[10285,18406,0]]', 'Jaroslavski Airport');
INSERT INTO `object_spawns` VALUES ('0000000000112', 'TowingTractor', '[160,[10233,18252,0]]', 'Jaroslavski Airport');
INSERT INTO `object_spawns` VALUES ('0000000000113', 'Mi17_Civilian_DZ', '[90,[10208,18667,0]]', 'Jaroslavski Airport');
INSERT INTO `object_spawns` VALUES ('0000000000114', 'ATV_CZ_EP1', '[20,[8126,21347,0]]', 'Helfenburg');
INSERT INTO `object_spawns` VALUES ('0000000000115', 'ATV_CZ_EP1', '[20,[8130,21345,0]]', 'Helfenburg');
INSERT INTO `object_spawns` VALUES ('0000000000116', 'rth_ScrapBuggy', '[150,[8878,19712,0]]', 'Barn North of Kameni');
INSERT INTO `object_spawns` VALUES ('0000000000117', 'rth_ScrapApc', '[330,[8839,19446,0]]', 'Kameni');
INSERT INTO `object_spawns` VALUES ('0000000000118', 'rth_ScrapApc', '[40,[8836,19438,0]]', 'Kameni');
INSERT INTO `object_spawns` VALUES ('0000000000119', 'Old_moto_TK_Civ_EP1', '[160,[10379,19486,0]]', 'Barn North of Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000120', 'tractor', '[300,[10408,19291,0]]', 'Barn Nort of Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000121', 'Mi17_Civilian_DZ', '[290,[9983,18892,0]]', 'FOB near Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000122', 'UAZ_RU', '[160,[9951,18910,0]]', 'FOB near Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000123', 'V3S_Civ', '[30,[9937,19091,0]]', 'Lumbermill west of Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000124', 'S1203_TK_CIV_EP1', '[20,[10163,18965,0]]', 'Yaroslav Firestation');
INSERT INTO `object_spawns` VALUES ('0000000000125', 'Ikarus', '[80,[10254,19037,0]]', 'Yaroslav Busstop');
INSERT INTO `object_spawns` VALUES ('0000000000126', 'rth_scrapbus', '[260,[10238,19038,0]]', 'Yaroslav Busstop');
INSERT INTO `object_spawns` VALUES ('0000000000127', 'hilux1_civil_1_open', '[260,[10314,19140,0]]', 'Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000128', 'V3S_Civ', '[250,[10177,19193,0]]', 'Yaroslav');
INSERT INTO `object_spawns` VALUES ('0000000000129', 'rth_scrapbus', '[150,[10929,18768,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000130', 'Ikarus', '[325,[10934,18768,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000131', 'rth_ScrapBuggy', '[150,[10970,18710,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000132', 'Lada1', '[300,[11056,18699,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000133', 'Old_bike_TK_CIV_EP1', '[60,[11022,18770,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000134', 'Ural_TK_CIV_EP1', '[100,[10976,19033,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000135', 'rth_ScrapBuggy', '[100,[11110,17900,0]]', 'Duge Selo');
INSERT INTO `object_spawns` VALUES ('0000000000136', 'Old_moto_TK_Civ_EP1', '[60,[12917,19178,0]]', 'Barn West of Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000137', 'MMT_Civ', '[90,[13248,19383,0]]', 'Barn West of Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000138', 'rth_scrapbus', '[110,[13443,19388,0]]', 'Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000139', 'tractor', '[100,[13502,19393,0]]', 'Khotanovsk');
INSERT INTO `object_spawns` VALUES ('0000000000140', 'UAZ_RU', '[140,[14619,18538,0]]', 'FOB near Dalnogorsk');
INSERT INTO `object_spawns` VALUES ('0000000000142', 'TT650_TK_CIV_EP1', '[230,[15135,18238,0]]', 'Dalnogorsk');
INSERT INTO `object_spawns` VALUES ('0000000000143', 'hilux1_civil_1_open', '[280,[14849,18489,0]]', 'Dalnogorsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000144', 'hilux1_civil_2_covered', '[320,[14881,18583,0]]', 'Dalnogorsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000145', 'ATV_CZ_EP1', '[260,[15715,17082,0]]', 'Antenna at Zeleny Vrh');
INSERT INTO `object_spawns` VALUES ('0000000000146', 'UAZ_RU', '[220,[15077,15937,0]]', 'FOB near Sevastopol');
INSERT INTO `object_spawns` VALUES ('0000000000147', 'PBX_DZ', '[330,[3735,2339,0]]', 'Ostrov Knin');
INSERT INTO `object_spawns` VALUES ('0000000000148', 'rth_raft_small', '[60,[3743,2331,0]]', 'Ostrov Knin');
INSERT INTO `object_spawns` VALUES ('0000000000149', 'rth_raft', '[270,[6085,1125,0]]', 'Ostrov Ash');
INSERT INTO `object_spawns` VALUES ('0000000000150', 'rth_raft', '[60,[957,14105,0]]', 'Isle Kres');
INSERT INTO `object_spawns` VALUES ('0000000000151', 'rth_raft', '[180,[11920,20885,0]]', 'Isle Shibenik');
INSERT INTO `object_spawns` VALUES ('0000000000152', 'PBX_DZ', '[90,[11930,20888,0]]', 'Isle Shibenik');
INSERT INTO `object_spawns` VALUES ('0000000000153', 'Fishing_Boat_DZ', '[280,[11695,18963,0]]', 'Ekatinburg Port');
INSERT INTO `object_spawns` VALUES ('0000000000154', 'Fishing_boat_DZ', '[90,[14753,18757,0]]', 'Balnogorsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000155', 'rth_raft_small', '[90,[17420,12576,0]]', 'Molotovsk Port');
INSERT INTO `object_spawns` VALUES ('0000000000156', 'rth_ScrapApc', '[0,[14574.9,10474.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000158', 'Old_bike_TK_CIV_EP1', '[2,[15160.3,9868.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000159', 'rth_ScrapBuggy', '[181,[15445.5,9736.16,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000160', 'rth_ScrapApc', '[274,[15547.1,9505.82,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000161', 'VolhaLimo_TK_CIV_EP1', '[4,[15474.3,9375.65,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000162', 'MMT_Civ', '[185,[15391.3,9277.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000165', 'rth_ScrapApc', '[108,[15408.7,8961.51,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000167', 'UAZ_Unarmed_TK_CIV_EP1', '[93,[15655.4,9620.11,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000168', 'UAZ_Unarmed_TK_EP1', '[15,[14510.7,9801.27,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000169', 'Volha_2_TK_CIV_EP1', '[2,[14993.4,9260.11,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000170', 'Lada2_TK_CIV_EP1', '[208,[15186.7,9188.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000171', 'Mi17_Civilian_DZ', '[0,[17442,5212,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000172', 'UAZ_MG_DZ', '[171,[17473.5,5221.19,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000173', 'Old_bike_TK_CIV_EP1', '[5,[17464.2,4106.35,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000174', 'PBX_DZ', '[321,[17442,4035.92,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000175', 'Old_bike_TK_CIV_EP1', '[2,[18421.7,5059.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000178', 'hilux1_civil_2_covered', '[0,[17683.4,6186.37,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000179', 'Old_bike_TK_CIV_EP1', '[275,[17694.9,6214.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000182', 'datsun1_civil_3_open', '[130,[17837.9,6490.08,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000183', 'rth_ScrapApc', '[272,[17508.4,7194.23,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000184', 'Old_bike_TK_CIV_EP1', '[84,[17167.6,7385.58,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000185', 'UAZ_RU', '[181,[17216.7,7662.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000187', 'Old_bike_TK_CIV_EP1', '[357,[16243.7,11497,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000188', 'Old_moto_TK_Civ_EP1', '[1,[16149.9,11571.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000189', 'rth_ScrapBuggy', '[3,[16279.2,11705.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000190', 'rth_ScrapApc', '[11,[16832.1,12608.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000191', 'Old_bike_TK_CIV_EP1', '[271,[16972.3,12761.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000192', 'UAZ_Unarmed_TK_EP1', '[181,[14473.2,11397.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000193', 'Lada1', '[178,[17244.4,7422.91,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000194', 'rth_ScrapApc', '[302,[16788,8455.63,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000195', 'Old_bike_TK_CIV_EP1', '[87,[16564.4,8259.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000196', 'V3S_Civ', '[87,[16515.1,8085.05,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000197', 'Old_bike_TK_CIV_EP1', '[272,[16520,8380.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000198', 'TT650_Gue', '[261,[16877.2,8197.77,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000199', 'rth_ScrapApc', '[167,[17301.6,8240.52,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000201', 'UAZ_RU', '[130,[13405.5,8632.01,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000202', 'Old_bike_TK_CIV_EP1', '[88,[15526.4,8412.45,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000203', 'hilux1_civil_1_open', '[267,[15628.2,8506.59,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000204', 'datsun1_civil_3_open', '[267,[15627.7,8512.13,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000205', 'TT650_TK_CIV_EP1', '[108,[16432.5,6287.62,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000206', 'UAZ_MG_DZ', '[268,[16802.4,6322.28,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000207', 'Ural_UN_EP1', '[9,[16773.2,6268.66,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000208', 'TT650_Gue', '[6,[16517.8,9661.72,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000210', 'Ural_UN_EP1', '[181,[16312.4,10029.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000211', 'rth_ScrapApc', '[140,[17479.9,9193.12,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000212', 'rth_ScrapApc', '[335,[3102.28,2469.19,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000213', 'UAZ_RU', '[267,[15457.4,10033.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000214', 'Ikarus_TK_CIV_EP1', '[272,[15840.5,9551.82,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000215', 'LadaLM', '[183,[15458.4,10112.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000216', 'rth_ScrapApc', '[107,[15799.4,9042.73,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000217', 'hilux1_civil_3_open_EP1', '[270,[14742,9858.23,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000218', 'rth_scrapbus', '[290,[15089.2,9334.68,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000219', 'rth_ScrapBuggy', '[183,[15442.3,9734.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000220', 'rth_ScrapApc', '[183,[14533.3,10395.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000221', 'VolhaLimo_TK_CIV_EP1', '[180,[14860.6,9331.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000222', 'UAZ_RU', '[274,[14646.1,9984.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000223', 'VWGolf', '[269,[15480.1,9470.94,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000224', 'datsun1_civil_3_open', '[4,[15226.7,9457.74,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000225', 'hilux1_civil_3_open_EP1', '[92,[14968.4,10162.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000226', 'MMT_Civ', '[268,[15840.2,9385.28,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000227', 'MMT_Civ', '[94,[15234.6,10249.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000228', 'Old_bike_TK_CIV_EP1', '[3,[14736.3,9524.02,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000229', 'SUV_Special', '[0,[15161.2,10052.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000230', 'TT650_TK_CIV_EP1', '[0,[14719.8,10259,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000231', 'SkodaGreen', '[91,[14611.5,10154.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000232', 'SkodaRed', '[111,[15348.2,9014.43,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000233', 'car_sedan', '[269,[14730.8,9807.05,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000234', 'hilux1_civil_1_open', '[3,[15476.7,9622.34,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000235', 'SUV_Special', '[4,[15169.5,9692,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000236', 'SUV_Special', '[358,[15086.7,9690.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000237', 'rth_ScrapApc', '[207,[15179.4,9174.63,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000238', 'rth_ScrapApc', '[184,[15334.8,10203.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000239', 'Volha_2_TK_CIV_EP1', '[95,[15589.6,9575.94,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000240', 'hilux1_civil_3_open_EP1', '[90,[15624.2,9573.14,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000242', 'Lada2_TK_CIV_EP1', '[92,[14937.8,9863.08,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000243', 'MMT_Civ', '[184,[15415.4,9269.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000245', 'rth_ScrapBuggy', '[43,[12719.9,15140.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000246', 'VolhaLimo_TK_CIV_EP1', '[233,[12494.5,15017.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000247', 'MMT_Civ', '[224,[12617.1,15157.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000248', 'Old_bike_TK_CIV_EP1', '[184,[13583,13523.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000249', 'rth_ScrapBuggy', '[272,[13591.4,13550.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000250', 'SUV_Special', '[84,[13715.5,13634.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000252', 'rth_ScrapBuggy', '[272,[11225.3,15895.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000253', 'Skoda', '[272,[11225.3,15905.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000254', 'car_sedan', '[269,[11225.3,15922,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000255', 'VolhaLimo_TK_CIV_EP1', '[269,[11225,15951.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000256', 'Old_bike_TK_CIV_EP1', '[101,[11515.3,15963.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000257', 'Ikarus', '[180,[11634.9,15762.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000258', 'VWGolf', '[155,[11894.7,15692.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000259', 'rth_ScrapApc', '[326,[11922.9,15458,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000260', 'TT650_Ins', '[22,[11965.7,15478.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000261', 'UAZ_Unarmed_TK_EP1', '[126,[11720.4,14881.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000262', 'rth_ScrapApc', '[125,[11704.6,14860.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000263', 'Old_bike_TK_CIV_EP1', '[182,[11338.4,15214.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000264', 'ATV_US_EP1', '[301,[12340.2,15732.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000265', 'rth_ScrapBuggy', '[157,[12459.7,13732.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000266', 'LandRover_CZ_EP1', '[8,[12521.9,13577.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000267', 'rth_ScrapApc', '[80,[12627.7,13612.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000268', 'Old_bike_TK_CIV_EP1', '[271,[12445.2,13531.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000269', 'datsun1_civil_3_open', '[152,[12645.3,11818.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000270', 'Ikarus_TK_CIV_EP1', '[360,[12628.4,11741,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000271', 'Old_bike_TK_CIV_EP1', '[74,[12825.9,11892.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000272', 'hilux1_civil_2_covered', '[306,[16137.5,13478.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000273', 'Ikarus', '[360,[16282.4,13657.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000274', 'TT650_TK_CIV_EP1', '[8,[15724.4,13410.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000275', 'rth_ScrapApc', '[170,[14844.5,18574.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000276', 'rth_ScrapBuggy', '[4,[15065.4,18458.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000278', 'LandRover_TK_CIV_EP1', '[296,[16716.2,10631.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000279', 'Old_bike_TK_CIV_EP1', '[359,[14462.5,11394.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000280', 'SUV_Special', '[33,[14265.1,11259.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000281', 'VolhaLimo_TK_CIV_EP1', '[255,[14494.9,11287.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000282', 'hilux1_civil_3_open_EP1', '[64,[14114.1,12135.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000283', 'Old_bike_TK_CIV_EP1', '[343,[14165,11955.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000284', 'rth_scrapbus', '[338,[14131.7,12000.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000285', 'tractor', '[222,[14076,12119.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000286', 'Lada1_TK_CIV_EP1', '[241,[13994.2,12219.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000288', 'Old_bike_TK_CIV_EP1', '[177,[13943.9,12323.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000289', 'rth_ScrapApc', '[135,[13755.5,12224.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000000000290', 'hilux1_civil_2_covered', '[1,[9650,6007,0]]', 'Barn north of Repkov');
INSERT INTO `object_spawns` VALUES ('0000000000291', 'Old_bike_TK_CIV_EP1', '[113,[3278.82,7485.31,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000292', 'MMT_Civ', '[339,[3281.25,7548.81,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000293', 'TT650_TK_CIV_EP1', '[58,[3301.71,7599.37,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000294', 'TT650_Gue', '[216,[3340.57,7630.28,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000295', 'Old_bike_TK_CIV_EP1', '[178,[3424.7,7552.19,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000296', 'MMT_Civ', '[4,[3804.54,7187.21,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000297', 'TT650_TK_CIV_EP1', '[138,[3799.18,7098.58,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000298', 'TT650_Gue', '[180,[3710.04,7017.32,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000299', 'Old_bike_TK_CIV_EP1', '[230,[3821.48,6877.06,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000300', 'MMT_Civ', '[335,[3934.06,6942.25,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000301', 'Old_bike_TK_CIV_EP1', '[20,[3905.72,7077.5,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000302', 'MMT_Civ', '[96,[3963.42,7156.45,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000303', 'Old_bike_TK_CIV_EP1', '[21,[3985.11,7341.37,0]]', 'Spawn city');
INSERT INTO `object_spawns` VALUES ('0000000000304', 'Mi17_DZ', '[136,[7754.04,4266.49,0]]', 'Branibor Tv-tower');
INSERT INTO `object_spawns` VALUES ('0000000000305', 'UH1H_DZ', '[180,[9349.95,4662.88,0]]', 'NPP');
INSERT INTO `object_spawns` VALUES ('0000000000306', 'AH6X_DZ', '[117,[11574.3,648.71,0]]', 'Shore at Blato');
INSERT INTO `object_spawns` VALUES ('0000000000307', 'rth_copter_green', '[38,[9320.15,7765.53,0]]', 'Krasnoznamen\'sk');
INSERT INTO `object_spawns` VALUES ('0000000000308', 'UH1H_DZ', '[252,[5317.76,8620.61,0]]', 'Bilgrad Na Moru');
INSERT INTO `object_spawns` VALUES ('0000000000309', 'AH6X_DZ', '[325,[5987.66,9657.02,0]]', 'Chernovar next to the broken barn');
INSERT INTO `object_spawns` VALUES ('0000000000310', 'Mi17_DZ', '[1,[15379.4,9707.99,0]]', 'Sabina Hospital');
INSERT INTO `object_spawns` VALUES ('0000000000311', 'UH1H_DZ', '[89,[11521.1,15306,0]]', 'Lypestok football stadium');
INSERT INTO `object_spawns` VALUES ('0000000000312', 'AH6X_DZ', '[269,[14520.7,11411.9,0]]', 'Novi Bor Construction Site');
INSERT INTO `object_spawns` VALUES ('0000000000313', 'rth_copter_green', '[88,[16754.3,6317.61,0]]', 'Stare Pol military base');
INSERT INTO `object_spawns` VALUES ('0000000000314', 'UH1H_DZ', '[3,[16966.1,12568.3,0]]', 'Molotovsk hotel');
INSERT INTO `object_spawns` VALUES ('0000000000315', 'AH6X_DZ', '[338,[8109.2,21168,0]]', 'Helfenburg');
INSERT INTO `object_spawns` VALUES ('0000000000316', 'Mi17_DZ', '[90,[15439.5,16282.2,0]]', 'Sevastopol firestation');
INSERT INTO `object_spawns` VALUES ('0000000000317', 'UH1H_DZ', '[341,[12560.9,13713.4,0]]', 'Doriyanov military base');
INSERT INTO `object_spawns` VALUES ('0000000000318', 'AH6X_DZ', '[94,[17465.6,7161.06,0]]', 'Byelov inner yard');
INSERT INTO `object_spawns` VALUES ('0000000000319', 'Pickup_PK_DZ', '[229,[11035.2,6675.03,0]]', 'Krkav');
INSERT INTO `object_spawns` VALUES ('0000000000320', 'UAZ_MG_DZ', '[32,[9336.4,5230.6,0]]', 'military base east of Kryvoe');
INSERT INTO `object_spawns` VALUES ('0000000000321', 'Pickup_PK_DZ', '[217,[7749.32,7894.98,0]]', 'Krasnoznamensk Airfield');
INSERT INTO `object_spawns` VALUES ('0000000000322', 'UAZ_MG_DZ', '[5,[5837.59,9956.13,0]]', 'Chernova Police Station');
INSERT INTO `object_spawns` VALUES ('0000000000323', 'Pickup_PK_DZ', '[9,[13368,8591.33,0]]', 'Chertova Styena');
INSERT INTO `object_spawns` VALUES ('0000000000324', 'UAZ_MG_DZ', '[163,[17207.3,5650.31,0]]', 'military base south of Stare Pole');
INSERT INTO `object_spawns` VALUES ('0000000000325', 'Pickup_PK_DZ', '[89,[16428.8,14267.4,0]]', 'Martin military base ( barracks)');
INSERT INTO `object_spawns` VALUES ('0000000000326', 'UAZ_MG_DZ', '[68,[12604.4,14406.3,0]]', 'Chrveni Gradok firestation');
INSERT INTO `object_spawns` VALUES ('0000000000327', 'Pickup_PK_DZ', '[59,[11098.3,18706.2,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000328', 'UAZ_MG_DZ', '[238,[14011.1,12408.4,0]]', 'Solibor military base');
INSERT INTO `object_spawns` VALUES ('0000500000329', 'PBX_DZ', '[210,[5305.11,9213.32,0]]', 'Shore near Bilgrad Na Moru');
INSERT INTO `object_spawns` VALUES ('0000500000330', 'Fishing_Boat_DZ', '[39,[4893.85,8662.77,0]]', 'Shore of Primorsk');
INSERT INTO `object_spawns` VALUES ('0000500000331', 'rth_amphicar', '[72,[5725.44,10986,0]]', 'Borovska Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000332', 'rth_raft_small', '[131,[7179.07,10223,0]]', 'Shore near Vucor');
INSERT INTO `object_spawns` VALUES ('0000500000333', 'Fishing_Boat_DZ', '[131,[9016.48,8918.07,0]]', 'Shore near Nekmir');
INSERT INTO `object_spawns` VALUES ('0000500000334', 'Zodiac_DZ', '[345,[11426,6967.47,0]]', 'Krkav Shore');
INSERT INTO `object_spawns` VALUES ('0000500000335', 'Fishing_Boat_DZ', '[148,[10850.9,6061.89,0]]', 'Komarovo Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000336', 'rth_raft_small', '[327,[11902.8,1556.55,0]]', 'Vodice');
INSERT INTO `object_spawns` VALUES ('0000500000337', 'Zodiac_DZ', '[90,[10120.1,5358.97,0]]', 'Bashka Luka shore');
INSERT INTO `object_spawns` VALUES ('0000500000338', 'Fishing_Boat_DZ', '[334,[16789.4,4734.12,0]]', 'Chertovo Oko Southwest shore');
INSERT INTO `object_spawns` VALUES ('0000500000339', 'rth_raft', '[188,[10521.4,16779.3,0]]', 'Lyubol harbor');
INSERT INTO `object_spawns` VALUES ('0000500000340', 'rth_raft_small', '[169,[10360.8,16778.9,0]]', 'Lyubol harbor');
INSERT INTO `object_spawns` VALUES ('0000500000341', 'Fishing_Boat_DZ', '[163,[9750.54,14107.1,0]]', 'Cherveny Les Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000342', 'PBX_DZ', '[219,[7449.91,22134,0]]', 'Helfenburg northern Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000500000343', 'rth_raft_small', '[332,[15919.9,6182.26,0]]', 'Stare pole Lighthouse');
INSERT INTO `object_spawns` VALUES ('0000000000346', 'ATV_CZ_EP1', '[182,[5987.73,9882.42,0]]', 'Chernovar');
INSERT INTO `object_spawns` VALUES ('0000000000347', 'car_sedan', '[271,[6681.98,9811.98,0]]', 'Vedich');
INSERT INTO `object_spawns` VALUES ('0000000000348', 'MMT_Civ', '[186,[6735.83,9889.73,0]]', 'Vedich');
INSERT INTO `object_spawns` VALUES ('0000000000349', 'datsun1_civil_3_open', '[130,[9057.69,8128.55,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000350', 'Lada2_TK_CIV_EP1', '[220,[9535.59,7952.92,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000351', 'TT650_Civ', '[228,[9080.3,7858.84,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000352', 'ATV_CZ_EP1', '[128,[8958.34,8343.56,0]]', 'Krasnoznamensk');
INSERT INTO `object_spawns` VALUES ('0000000000353', 'rth_ScrapBuggy', '[326,[8066.62,6557.08,0]]', 'Novi Dvor');
INSERT INTO `object_spawns` VALUES ('0000000000354', 'MMT_Civ', '[60,[8483.98,5597.04,0]]', 'Polyanka');
INSERT INTO `object_spawns` VALUES ('0000000000355', 'Old_bike_TK_CIV_EP1', '[151,[9148.38,5465.5,0]]', 'Kryvoe');
INSERT INTO `object_spawns` VALUES ('0000000000356', 'ATV_CZ_EP1', '[334,[11019.4,6679.71,0]]', 'Krkav');
INSERT INTO `object_spawns` VALUES ('0000000000357', 'datsun1_civil_2_covered', '[86,[10524.2,6581.97,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000358', 'ATV_CZ_EP1', '[263,[10655.4,6465.89,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000359', 'Old_bike_TK_CIV_EP1', '[48,[10862.9,6126.65,0]]', 'Komarovo');
INSERT INTO `object_spawns` VALUES ('0000000000360', 'car_hatchback', '[228,[10017.9,1323.86,0]]', 'Marina');
INSERT INTO `object_spawns` VALUES ('0000000000361', 'rth_ScrapBuggy', '[136,[9638.87,1751.53,0]]', 'Kosovo');
INSERT INTO `object_spawns` VALUES ('0000000000362', 'Ikarus_TK_CIV_EP1', '[221,[7582.17,4367.27,0]]', 'Branibor');
INSERT INTO `object_spawns` VALUES ('0000000000363', 'TT650_Civ', '[226,[7913.65,4156.75,0]]', 'Branibor');
INSERT INTO `object_spawns` VALUES ('0000000000364', 'Old_moto_TK_Civ_EP1', '[305,[7935.54,5362.72,0]]', 'Bled');
INSERT INTO `object_spawns` VALUES ('0000000000366', 'ATV_CZ_EP1', '[326,[10919.7,18760.9,0]]', 'Ekaterinburg');
INSERT INTO `object_spawns` VALUES ('0000000000367', 'Skoda', '[282,[11295.9,17805.4,0]]', 'Duge Selo');
INSERT INTO `object_spawns` VALUES ('0000000000368', 'rth_ScrapBuggy', '[28,[15335.2,16080.1,0]]', 'Sevastopol');
INSERT INTO `object_spawns` VALUES ('0000000000369', 'Old_moto_TK_Civ_EP1', '[359,[15455.9,16387.5,0]]', 'Sevastopol');
INSERT INTO `object_spawns` VALUES ('0000000000370', 'SUV_Special', '[195,[12441.5,13807.4,0]]', 'Doriyanov');
INSERT INTO `object_spawns` VALUES ('0000000000371', 'Old_bike_TK_CIV_EP1', '[274,[12480.9,13607.9,0]]', 'Doriyanov');
INSERT INTO `object_spawns` VALUES ('0000000000372', 'VWGolf', '[0,[11690.2,15167.7,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000373', 'Lada1_TK_CIV_EP1', '[228,[11063.1,15440.8,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000374', 'hilux1_civil_3_open_EP1', '[186,[11485.4,15949.6,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000375', 'SUV_Special', '[232,[12223.3,15500.4,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000376', 'TT650_Civ', '[315,[11776.9,15325.2,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000377', 'ATV_CZ_EP1', '[231,[12347.5,15379.8,0]]', 'Lypestok');
INSERT INTO `object_spawns` VALUES ('0000000000343', 'ATV_CZ_EP1', '[132,[3334.44,7605.02,0]]', 'Stangrad');
INSERT INTO `object_spawns` VALUES ('0000000000344', 'MMT_Civ', '[353,[5335.44,8844.42,0]]', 'Bilgrad Na Moru');
INSERT INTO `object_spawns` VALUES ('0000000000345', 'datsun1_civil_3_open', '[270,[5737.02,9900.18,0]]', 'Chernovar');
INSERT INTO `object_spawns` VALUES ('0000000000379', 'ATV_CZ_EP1', '[92,[13551,13550.6,0]]', 'Vinograd');
INSERT INTO `object_spawns` VALUES ('0000000000380', 'Old_bike_TK_CIV_EP1', '[275,[16325.9,13604.8,0]]', 'Martin');
INSERT INTO `object_spawns` VALUES ('0000000000381', 'MMT_Civ', '[271,[16326.1,13608.2,0]]', 'Martin');
INSERT INTO `object_spawns` VALUES ('0000000000382', 'SUV_Special', '[184,[16247.6,11578.6,0]]', 'Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000383', 'hilux1_civil_3_open_EP1', '[90,[16163,11495.5,0]]', 'Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000384', 'ATV_CZ_EP1', '[270,[16195.2,11601.9,0]]', 'Dubovo');
INSERT INTO `object_spawns` VALUES ('0000000000386', 'rth_ScrapApc', '[120,[15197.7,7772.87,0]]', 'Boye');
INSERT INTO `object_spawns` VALUES ('0000000000387', 'ATV_CZ_EP1', '[2,[16310.1,7380.83,0]]', 'Krushevich');
INSERT INTO `object_spawns` VALUES ('0000000000388', 'rth_ScrapApc', '[78,[16464.1,9770.87,0]]', '');
INSERT INTO `object_spawns` VALUES ('0000500000389', 'UH1H_DZ', '[182,[22689,19845,0]]', 'Sektor B');
INSERT INTO `object_spawns` VALUES ('0000500000390', 'Mi17_DZ', '[232,[22707.3,19614.5,0]]', 'Sektor B');
INSERT INTO `object_spawns` VALUES ('0000500000391', 'Mi17_DZ', '[2,[22689.2,19196,0]]', 'Sektor B Start AirF');
INSERT INTO `object_spawns` VALUES ('0000500000392', 'UH1H_DZ', '[219,[22552.3,19667.4,0]]', 'Sektor B');
INSERT INTO `object_spawns` VALUES ('0000500000393', 'rth_ScrapApc', '[95,[22558.3,19687.5,0]]', 'Sektor B Bonus');
INSERT INTO `object_spawns` VALUES ('0000500000394', 'rth_ScrapApc', '[309,[22741,19305.5,0]]', 'Sektor B Bonus');
INSERT INTO `object_spawns` VALUES ('0000500000395', 'rth_ScrapApc', '[221,[22750.3,19468.2,0]]', 'Sektor B Bonus');
INSERT INTO `object_spawns` VALUES ('0000500000396', 'rth_raft', '[7,[21902.6,19331.9,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000397', 'rth_raft_small', '[38,[21774.4,19523.4,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000398', 'rth_raft', '[29,[21770.2,19821.1,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000399', 'rth_amphicar', '[78,[21979.7,20095.1,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000400', 'rth_raft', '[42,[22818.6,20391.5,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000401', 'rth_raft_small', '[233,[23116.7,20111,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000402', 'rth_raft', '[35,[23262.6,19802.5,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000403', 'rth_amphicar', '[121,[23300.9,19463.1,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000404', 'rth_raft', '[9,[23283.1,19244.2,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000405', 'rth_raft_small', '[0,[22964.3,18910.3,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000406', 'rth_amphicar', '[0,[22516.5,18786.4,0]]', 'Sektor B Bereg');
INSERT INTO `object_spawns` VALUES ('0000500000407', 'rth_raft', '[134,[10265.7,16715.5,0]]', 'Lubol');
INSERT INTO `object_spawns` VALUES ('0000500000408', 'rth_raft_small', '[0,[10656.3,16642.5,0]]', 'Lubol');
INSERT INTO `object_spawns` VALUES ('0000500000409', 'rth_raft', '[0,[9465.59,14576.5,0]]', 'Proliv Lubol');
INSERT INTO `object_spawns` VALUES ('0000500000410', 'rth_raft_small', '[192,[9886.85,14238.4,0]]', 'Proliv Lubol');
INSERT INTO `object_spawns` VALUES ('0000500000411', 'rth_raft', '[0,[7833.28,19173.6,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000412', 'rth_raft_small', '[0,[7549.65,20378.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000413', 'rth_raft', '[80,[7302.73,21060.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000414', 'rth_raft_small', '[0,[17136.3,14103.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000415', 'rth_raft', '[243,[16220.8,16089.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000416', 'rth_raft_small', '[357,[15392.6,18204.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000417', 'rth_raft', '[0,[2451.93,8157.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000418', 'rth_copter_yellow', '[0,[4632.15,6349.35,0]]', '');
INSERT INTO `object_spawns` VALUES ('0000500000419', 'rth_copter_yellow', '[0,[4349.91,8068.19,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000420', 'rth_copter_yellow', '[210,[5471.15,8590.72,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000421', 'rth_copter_yellow', '[94,[8352.01,20842.8,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000422', 'rth_copter_yellow', '[0,[9946.07,18675.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000423', 'rth_copter_yellow', '[339,[10449.6,17614.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000424', 'rth_copter_green', '[234,[13036.3,14384,0]]', 'g');
INSERT INTO `object_spawns` VALUES ('0000500000425', 'rth_copter_green', '[358,[15142.1,15854.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000426', 'rth_copter_green', '[312,[16438.4,10382.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000427', 'rth_ScrapBuggy', '[66,[17097.7,7822.61,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000428', 'rth_ScrapBuggy', '[126,[17475.1,6208.98,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000429', 'rth_ScrapBuggy', '[85,[16808.1,12630,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000430', 'rth_ScrapBuggy', '[57,[15213.1,17015.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000431', 'DC3', '[20,[22852.6,19182.4,0]]', 'Sector B');
INSERT INTO `object_spawns` VALUES ('0000500000432', 'ori_vil_truck_civ2', '[233,[5102.6,6293.02,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000433', 'ori_vil_lublin_truck', '[148,[4715.7,8207.52,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000434', 'ori_vil_truck_civ1', '[267,[3426.43,7807.62,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000435', 'ori_vil_volvo_fl290', '[172,[7452.45,4101.49,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000436', 'ori_vil_truck_civ', '[252,[7834.52,4532.11,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000437', 'p85_cucv_pickup', '[236,[8150.87,4992.57,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000438', 'ori_p85_cucv', '[145,[8238.77,5015.45,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000439', 'p85_cucv_pickup', '[232,[8157.2,5024.86,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000440', 'ori_p85_cucv', '[169,[11435.5,671.487,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000441', 'ori_vil_truck_civ1', '[231,[11840.4,1420.83,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000442', 'ori_vil_volvo_fl290', '[313,[10940.7,2128.72,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000443', 'ori_p85_cucv', '[134,[9547.76,5737.86,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000444', 'ori_vil_truck_civ', '[49,[8806.59,8242.25,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000445', 'ori_vil_lublin_truck', '[144,[12459.6,11796.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000446', 'ori_vil_truck_civ1', '[142,[12605.4,12006.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000447', 'ori_p85_cucv', '[72,[12791.6,11999.2,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000448', 'p85_cucv_pickup', '[4,[12786.1,11704.3,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000449', 'ori_vil_lublin_truck', '[289,[17224.3,6902.72,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000450', 'ori_vil_truck_civ2', '[0,[17424.9,7501.15,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000451', 'ori_vil_volvo_fl290', '[93,[17407.3,7677.6,0]]', 'p');
INSERT INTO `object_spawns` VALUES ('0000500000452', 'ori_vil_truck_civ', '[94,[16302.2,8816.24,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000453', 'ori_vil_truck_civ1', '[73,[15118.6,14785.2,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000454', 'p85_cucv_pickup', '[83,[15087.1,14873.6,0]]', 'small car');
INSERT INTO `object_spawns` VALUES ('0000500000455', 'ori_vil_volvo_fl290', '[289,[15137,14910.4,0]]', 'p');
INSERT INTO `object_spawns` VALUES ('0000500000456', 'ori_vil_truck_civ2', '[90,[15359.8,16423.4,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000457', 'ori_vil_lublin_truck', '[24,[15569.1,16019.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000458', 'ori_vil_truck_civ', '[262,[11876.8,18618.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000459', 'p85_cucv_pickup', '[268,[9009.84,19351.9,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000460', 'ori_vil_truck_civ2', '[156,[10109.1,18055.1,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000461', 'ori_vil_volvo_fl290', '[319,[10622.9,17315.7,0]]', 'p');
INSERT INTO `object_spawns` VALUES ('0000500000462', 'ori_vil_volvo_fl290', '[102,[10145.1,18735.2,0]]', 'p');
INSERT INTO `object_spawns` VALUES ('0000500000463', 'rth_amphicar', '[0,[11519.7,329.167,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000464', 'rth_amphicar', '[345,[10089.3,3713.94,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000465', 'rth_amphicar', '[0,[5207,5616.89,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000466', 'rth_amphicar', '[358,[8715.87,9137.31,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000467', 'rth_amphicar', '[46,[10235.4,7841.43,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000468', 'rth_amphicar', '[110,[15899.5,10823.5,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000469', 'rth_amphicar', '[160,[17420.1,13182,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000470', 'rth_amphicar', '[96,[15174.1,17240.7,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000471', 'rth_amphicar', '[277,[11496.3,18552.3,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000472', 'rth_amphicar', '[14,[10834.3,14053,0]]', null);
INSERT INTO `object_spawns` VALUES ('0000500000473', 'rth_amphicar', '[238,[9198.25,21524.6,0]]', null);

-- ----------------------------
-- Table structure for `player_data`
-- ----------------------------
DROP TABLE IF EXISTS `player_data`;
CREATE TABLE `player_data` (
  `PlayerUID` varchar(20) NOT NULL DEFAULT '',
  `PlayerName` varchar(128) NOT NULL DEFAULT '',
  `PlayerMorality` int(11) DEFAULT NULL,
  `PlayerSex` tinyint(3) DEFAULT NULL,
  `Datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PlayerUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_data
-- ----------------------------

-- ----------------------------
-- Table structure for `player_login`
-- ----------------------------
DROP TABLE IF EXISTS `player_login`;
CREATE TABLE `player_login` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) DEFAULT '',
  `CharacterID` int(11) DEFAULT NULL,
  `Action` tinyint(3) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_login
-- ----------------------------

-- ----------------------------
-- Table structure for `character_data_dead`
-- ----------------------------
DROP TABLE IF EXISTS `character_data_dead`;
CREATE TABLE `character_data_dead` (
  `CharacterID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(20) NOT NULL DEFAULT '',
  `Alive` tinyint(1) NOT NULL DEFAULT '1',
  `InstanceID` tinyint(2) NOT NULL,
  `Worldspace` varchar(128) NOT NULL DEFAULT '[]',
  `Inventory` longtext NOT NULL,
  `Backpack` longtext NOT NULL,
  `Medical` varchar(300) NOT NULL DEFAULT '[]',
  `Generation` smallint(4) unsigned NOT NULL DEFAULT '0',
  `Datestamp` timestamp NULL DEFAULT NULL,
  `LastLogin` timestamp NULL DEFAULT NULL,
  `LastAte` timestamp NULL DEFAULT NULL,
  `LastDrank` timestamp NULL DEFAULT NULL,
  `Humanity` int(10) DEFAULT NULL,
  `KillsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `HeadshotsZ` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `distanceFoot` bigint(15) unsigned NOT NULL DEFAULT '0',
  `duration` int(10) NOT NULL DEFAULT '0',
  `currentState` varchar(128) NOT NULL DEFAULT '[]',
  `KillsH` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `KillsB` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor1_DZ"',
  `Datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`,`PlayerUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Procedure structure for `BugFix`
-- ----------------------------
DROP PROCEDURE IF EXISTS `BugFix`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BugFix`()
BEGIN

	UPDATE `character_data` SET `Alive` = '0' WHERE `Inventory` = '[[],[]]' AND `Backpack` LIKE '%["",[[],[]],[[],[]]]%' AND `Alive` = '1';

	

  UPDATE `object_data` SET `Damage`='1' WHERE `Worldspace` NOT LIKE '[%,[%,%,%]]';

	UPDATE `object_data` SET `Damage`='1' WHERE `Hitpoints` NOT LIKE '%[["%' AND `Hitpoints` NOT LIKE '%[]%';

 

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pCleanup`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanup`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pCleanup`()
BEGIN

	DELETE
	FROM object_data
	WHERE Damage = '1';

	DELETE
			FROM `object_data` 
			WHERE `ObjectUID` 
			NOT LIKE '0000%' 
			AND (	`Classname` NOT LIKE 'Tentstorage' AND 
					`Classname` NOT LIKE 'TentstorageR' AND 
					`Classname` NOT LIKE 'wooden_shed_lvl_1' AND 
					`Classname` NOT LIKE 'log_house_lvl_2' AND 
					`Classname` NOT LIKE 'wooden_house_lvl_3' AND 
					`Classname` NOT LIKE 'large_shed_lvl_1' AND 
					`Classname` NOT LIKE 'small_house_lvl_2' AND 
					`Classname` NOT LIKE 'big_house_lvl_3' AND 
					`Classname` NOT LIKE 'small_garage' AND 
					`Classname` NOT LIKE 'big_garage' AND 
					`Classname` NOT LIKE 'object_x');

	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500000393';
	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500000394';
	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500000395';

	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500001393';
	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500001394';
	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500001395';
	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500001396';
	DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500001397';

	INSERT INTO `object_data` 
			VALUES (NULL, '0000500001393', '1', 'UralCivil2', '0.05000', '0', '[180,[22462.2,19495.5,0]]', '[[[],[]],[[\"ItemAntibiotic\",\"ItemBandage\",\"ItemBloodbag\",\"ItemEpinephrine\",\"ItemMorphine\",\"ItemPainkiller\",\"FoodCanBakedBeans\",\"FoodCanFrankBeans\",\"FoodCanPasta\",\"FoodCanSardines\",\"ItemSodaCoke\",\"ItemSodaPepsi\",\"ItemHeatPack\"],[15,15,15,15,15,15,15,15,15,15,15,15,15]],[["O_TravelerPack_1","O_MegaPack_1"],[1,1]]]', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]', '0.01000', NOW());
	INSERT INTO `object_data` 
			VALUES (NULL, '0000500001394', '1', 'UralCivil2', '0.05000', '0', '[269,[22180.7,19833.1,0]]', '[[[\"ItemPickaxe\"],[2]],[[\"ItemBpt_b1\",\"ItemBpt_b2\",\"ItemBpt_h1\",\"ItemBpt_h2\",\"ItemBpt_g_s\",\"ItemBpt_g_b\",\"ItemBattery\",\"ItemPin\",\"ItemRocks\",\"ItemCementBag\",\"PartScrap\",\"PartWoodPile\",\"ItemCeMix\"],[3,3,3,3,3,1,7,7,15,5,10,15,3]],[["O_TravelerPack_1","O_MegaPack_1"],[1,1]]]', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]', '0.01000', NOW());
	INSERT INTO `object_data` 
			VALUES (NULL, '0000500001395', '1', 'UralCivil2', '0.05000', '0', '[90,[22452.8,20074.8,0]]', '[[[\"AKS_74_kobra\",\"M16A2GL\",\"AKS_74_U\",\"FN_FAL\",\"M9SD\",\"PK_DZ\",\"Pecheneg_DZ\",\"bizon_silenced\",\"M4A3_RCO_GL_EP1\",\"NVGoggles\",\"ItemGPS\",\"G36K\"],[3,3,3,3,3,3,3,3,3,2,2,1]],[[\"ItemBloodbag\",\"100Rnd_762x54_PK\",\"30Rnd_556x45_Stanag\",\"100Rnd_762x51_M240\",\"30Rnd_556x45_G36SD\",\"10Rnd_9x39_SP5_VSS\",\"ItemAntibiotic\",\"30Rnd_545x39_AK\",\"20Rnd_762x51_FNFAL\",\"15Rnd_9x19_M9SD\",\"64Rnd_9x19_SD_Bizon\",\"1Rnd_HE_GP25\",\"PartGeneric\",\"PartEngine\",\"PartGlass\",\"PartVRotor\",\"ItemJerrycan\",\"ItemTent\"],[10,10,10,10,10,10,10,10,10,10,10,10,4,2,6,2,10,2]],[["O_TravelerPack_1","O_MegaPack_1"],[1,1]]]', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]', '0.01000', NOW());
	INSERT INTO `object_data` 
			VALUES (NULL, '0000500001396', '1', 'UralCivil2', '0.05000', '0', '[178,[22533,20073,0]]', '[[[\"AKS_74_kobra\",\"M16A2GL\",\"AKS_74_U\",\"FN_FAL\",\"M9SD\",\"PK_DZ\",\"Pecheneg_DZ\",\"bizon_silenced\",\"M4A3_RCO_GL_EP1\",\"NVGoggles\",\"ItemGPS\",\"G36K\"],[3,3,3,3,3,3,3,3,3,2,2,1]],[[\"ItemBloodbag\",\"100Rnd_762x54_PK\",\"30Rnd_556x45_Stanag\",\"100Rnd_762x51_M240\",\"30Rnd_556x45_G36SD\",\"10Rnd_9x39_SP5_VSS\",\"ItemAntibiotic\",\"30Rnd_545x39_AK\",\"20Rnd_762x51_FNFAL\",\"15Rnd_9x19_M9SD\",\"64Rnd_9x19_SD_Bizon\",\"1Rnd_HE_GP25\",\"PartGeneric\",\"PartEngine\",\"PartGlass\",\"PartVRotor\",\"ItemJerrycan\",\"ItemTent\"],[10,10,10,10,10,10,10,10,10,10,10,10,4,2,6,2,10,2]],[["O_TravelerPack_1","O_MegaPack_1"],[1,1]]]', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]', '0.01000', NOW());
	INSERT INTO `object_data` 
			VALUES (NULL, '0000500001397', '1', 'UralCivil2', '0.05000', '0', '[178,[22549.2,20071.9,0]]', '[[[\"AKS_74_kobra\",\"M16A2GL\",\"AKS_74_U\",\"FN_FAL\",\"M9SD\",\"PK_DZ\",\"Pecheneg_DZ\",\"bizon_silenced\",\"M4A3_RCO_GL_EP1\",\"NVGoggles\",\"ItemGPS\",\"G36K\"],[3,3,3,3,3,3,3,3,3,2,2,1]],[[\"ItemBloodbag\",\"100Rnd_762x54_PK\",\"30Rnd_556x45_Stanag\",\"100Rnd_762x51_M240\",\"30Rnd_556x45_G36SD\",\"10Rnd_9x39_SP5_VSS\",\"ItemAntibiotic\",\"30Rnd_545x39_AK\",\"20Rnd_762x51_FNFAL\",\"15Rnd_9x19_M9SD\",\"64Rnd_9x19_SD_Bizon\",\"1Rnd_HE_GP25\",\"PartGeneric\",\"PartEngine\",\"PartGlass\",\"PartVRotor\",\"ItemJerrycan\",\"ItemTent\"],[10,10,10,10,10,10,10,10,10,10,10,10,4,2,6,2,10,2]],[["O_TravelerPack_1","O_MegaPack_1"],[1,1]]]', '[[\"motor\",0.8],[\"karoserie\",1],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_2_steering\",1]]', '0.01000', NOW());

	
DELETE
			FROM `object_data`
			WHERE `ObjectUID` = '0000500000431';
	
	INSERT INTO `object_data` 
			VALUES (NULL, '0000500000431', '1', 'DC3', '0.05000', '0', '[1,[22687.3,19239.3,0]]', '[]', '[]', '1', NOW());

	
	DELETE
	FROM object_data
	WHERE DATE(Datestamp) < CURDATE() - INTERVAL 5 DAY
	AND Classname != 'Hedgehog_DZ'
	AND Classname != 'Wire_cat1'
	AND Classname != 'Sandbag1_DZ'
	AND Classname != 'TrapBear'
	AND Classname != 'TentStorage'
	AND Classname != 'TentStorageR' AND
	Classname != 'wooden_shed_lvl_1' AND 
	Classname != 'log_house_lvl_2' AND 
	Classname != 'wooden_house_lvl_3' AND 
	Classname != 'large_shed_lvl_1' AND 
	Classname != 'small_house_lvl_2' AND 
	Classname != 'big_house_lvl_3' AND 
	Classname != 'small_garage' AND 
	Classname != 'big_garage' AND 
	Classname != 'object_x';

	
	DELETE
		FROM `object_data`
		WHERE `Classname` = 'TentStorage'
			AND  DATE(Datestamp) < CURDATE() - INTERVAL 6 DAY;

	
	DELETE
	FROM object_data
	WHERE Classname = 'TentStorage'
	AND DATE(Datestamp) < CURDATE() - INTERVAL 7 DAY
	AND Inventory = '[[[],[]],[[],[]],[[],[]]]';

	DELETE
	FROM object_data
	WHERE Classname = 'TentStorage'
	AND DATE(Datestamp) < CURDATE() - INTERVAL 7 DAY
	AND Inventory = '[]';	

	DELETE
	FROM object_data
	WHERE Classname = 'TentStorageR'
	AND DATE(Datestamp) < CURDATE() - INTERVAL 7 DAY
	AND Inventory = '[[[],[]],[[],[]],[[],[]]]';

	DELETE
	FROM object_data
	WHERE Classname = 'TentStorageR'
	AND DATE(Datestamp) < CURDATE() - INTERVAL 7 DAY
	AND Inventory = '[]';

	
	DELETE
	FROM object_data
	WHERE Classname = 'Wire_cat1'
	AND DATE(Datestamp) <= CURDATE();

	
	DELETE
	FROM object_data
	WHERE Classname = 'Hedgehog_DZ'
	AND DATE(Datestamp) <= CURDATE();

	
	DELETE
	FROM object_data
	WHERE Classname = 'Sandbag1_DZ'
	AND DATE(Datestamp) <= CURDATE();

	
	DELETE
	FROM object_data
	WHERE Classname = 'TrapBear'
	AND DATE(Datestamp) <= CURDATE();

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pCleanupOOB`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanupOOB`;
DELIMITER ;;
CREATE DEFINER=`root`@`` PROCEDURE `pCleanupOOB`()
BEGIN



	DECLARE intLineCount	INT DEFAULT 0;

	DECLARE intDummyCount	INT DEFAULT 0;

	DECLARE intDoLine			INT DEFAULT 0;

	DECLARE intWest				INT DEFAULT 0;

	DECLARE intNorth			INT DEFAULT 0;



	SELECT COUNT(*)

		INTO intLineCount

		FROM object_data;



	SELECT COUNT(*)

		INTO intDummyCount

		FROM object_data

		WHERE Classname = 'dummy';



	WHILE (intLineCount > intDummyCount) DO

	

		SET intDoLine = intLineCount - 1;



		SELECT ObjectUID, Worldspace

			INTO @rsObjectUID, @rsWorldspace

			FROM object_data

			LIMIT intDoLine, 1;



		SELECT REPLACE(@rsWorldspace, '[', '') INTO @rsWorldspace;

		SELECT REPLACE(@rsWorldspace, ']', '') INTO @rsWorldspace;

		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 2), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 2 -1)) + 1), ',', '') INTO @West;

		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 3), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 3 -1)) + 1), ',', '') INTO @North;



		SELECT INSTR(@West, '-') INTO intWest;

		SELECT INSTR(@North, '-') INTO intNorth;



		IF (intNorth = 0) THEN

			SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;

		END IF;

			

		SET intLineCount = intLineCount - 1;



	END WHILE;



END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pFixMaxNum`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pFixMaxNum`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pFixMaxNum`()
BEGIN

	DECLARE iCounter INT DEFAULT 0;

	SELECT COUNT(`Classname`) INTO @iClassesCount FROM `object_classes` WHERE Classname<>'';
	WHILE (iCounter < @iClassesCount) DO
		SELECT `Classname`, `MaxNum` INTO @Classname, @MaxNum FROM `object_classes` LIMIT iCounter,1;
		SELECT COUNT(`Classname`) INTO @iMaxClassSpawn FROM object_spawns WHERE `Classname` LIKE @Classname;
		IF (@MaxNum > @iMaxClassSpawn) THEN
			UPDATE `object_classes` SET MaxNum = @iMaxClassSpawn WHERE Classname = @Classname;
		END IF;
		SET iCounter = iCounter + 1;
	END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pMain`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMain`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pMain`()
    MODIFIES SQL DATA
BEGIN

DECLARE sInstance VARCHAR(8) DEFAULT '1';

DECLARE iVehSpawnMax INT DEFAULT 387;

DECLARE iTimeoutMax INT DEFAULT 450; 
DECLARE iTimeout INT DEFAULT 0; 
DECLARE iNumVehExisting INT DEFAULT 0; 
DECLARE iNumClassExisting INT DEFAULT 0; 
DECLARE i INT DEFAULT 1; 


CALL pCleanup();
CALL pMoveDead();

SELECT COUNT(*) 
	INTO iNumVehExisting
FROM object_data
	WHERE Instance = sInstance
		AND Classname != 'Hedgehog_DZ' 
		AND Classname != 'Wire_cat1' 
		AND Classname != 'Sandbag1_DZ' 
		AND Classname != 'TrapBear' 
		AND Classname != 'TentStorage' 
		AND Classname != 'TentStorageR' AND 
		Classname != 'wooden_shed_lvl_1' AND 
		Classname != 'log_house_lvl_2' AND 
		Classname != 'wooden_house_lvl_3' AND 
		Classname != 'large_shed_lvl_1' AND 
		Classname != 'small_house_lvl_2' AND 
		Classname != 'big_house_lvl_3' AND 
		Classname != 'small_garage' AND 
		Classname != 'big_garage' AND 
		Classname != 'object_x';

WHILE (iNumVehExisting < iVehSpawnMax) DO 

	
	SELECT Classname, Chance, MaxNum, Damage
	INTO @rsClassname, @rsChance, @rsMaxNum, @rsDamage
	FROM object_classes ORDER BY RAND() LIMIT 1;

	
	SELECT COUNT(*)
	INTO iNumClassExisting
	FROM object_data
	WHERE Instance = sInstance
	AND Classname = @rsClassname;

	IF (iNumClassExisting < @rsMaxNum) THEN
		IF (rndspawn(@rschance) = 1) THEN
			INSERT INTO object_data (ObjectUID, Instance, Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
				SELECT OS.ObjectUID, '1', OC.Classname, RAND(@rsOC.Damage), NULL AS `CharacterID`, OS.Worldspace, '[]' AS `Inventory`, OC.Hitpoints, RAND(1), SYSDATE()
					FROM object_spawns OS
					INNER JOIN object_classes OC
					ON OS.Classname = OC.Classname
				WHERE OC.Classname = @rsClassname
				AND NOT OS.ObjectUID IN (SELECT ObjectUID FROM object_data WHERE instance = sInstance)
			ORDER BY RAND()
			LIMIT 0, 1;

			SELECT COUNT(*)
			INTO iNumVehExisting
			FROM object_data
			WHERE Instance = sInstance
			AND Classname != 'Hedgehog_DZ' 
			AND Classname != 'Wire_cat1' 
			AND Classname != 'Sandbag1_DZ' 
			AND Classname != 'TrapBear' 
			AND Classname != 'TentStorage' 
			AND Classname != 'TentStorageR' AND 
			Classname != 'wooden_shed_lvl_1' AND 
			Classname != 'log_house_lvl_2' AND 
			Classname != 'wooden_house_lvl_3' AND 
			Classname != 'large_shed_lvl_1' AND 
			Classname != 'small_house_lvl_2' AND 
			Classname != 'big_house_lvl_3' AND 
			Classname != 'small_garage' AND 
			Classname != 'big_garage' AND 
			Classname != 'object_x';	

			
			SELECT COUNT(*)
			INTO iNumClassExisting
			FROM object_data
			WHERE Instance = sInstance
			AND Classname = @rsClassname;

		END IF;
	END IF;	

	SET iTimeout = iTimeout + 1; 
	IF (iTimeout >= iTimeoutMax) THEN
		SET iNumVehExisting = iVehSpawnMax;
	END IF;
END WHILE;
SET i = i + 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pMoveDead`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMoveDead`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pMoveDead`()
BEGIN
	
	DECLARE iNumVehExisting INT DEFAULT 0; 
	DECLARE iPlayerUID INT DEFAULT 1; 
	
	SELECT count(DISTINCT `PlayerUID`) 
		INTO @rsMaxNum
		FROM `character_data` 
		WHERE `Alive` = '0';
	
	WHILE (iPlayerUID < @rsMaxNum) DO
	
		SELECT DISTINCT `PlayerUID`
			INTO @nPlayerUID
			FROM `character_data` 
			WHERE `Alive` = '0' 
			ORDER BY `PlayerUID` LIMIT iPlayerUID,1;

		SELECT count(`PlayerUID`) 
			INTO @numPlayerUID
			FROM `character_data` 
			WHERE `Alive` = '0' 
			AND `PlayerUID`=@nPlayerUID;
		
		IF (@numPlayerUID>1) THEN 
			SELECT `CharacterID`
				INTO @nCharacterID
				FROM `character_data` 
				WHERE `Alive` = '0' 
				AND `PlayerUID`=@nPlayerUID  
				ORDER BY `Datetime` DESC LIMIT 1,1;
	
			INSERT INTO `character_data_dead` (CharacterID,PlayerUID,Alive,InstanceID,Worldspace,Inventory,Backpack,Medical,Generation,Datestamp,LastLogin,LastAte,LastDrank,Humanity,KillsZ,HeadshotsZ,distanceFoot,duration,currentState,KillsH,KillsB,Model,Datetime) 
				SELECT CharacterID,PlayerUID,Alive,InstanceID,Worldspace,Inventory,Backpack,Medical,Generation,Datestamp,LastLogin,LastAte,LastDrank,Humanity,KillsZ,HeadshotsZ,distanceFoot,duration,currentState,KillsH,KillsB,Model,Datetime 
				FROM `character_data` WHERE `Alive` = '0' AND `PlayerUID`=@nPlayerUID AND `CharacterID` <> @nCharacterID;
			
			DELETE FROM `character_data` WHERE `Alive` = '0' AND `PlayerUID`=@nPlayerUID AND `CharacterID` <> @nCharacterID; 
		END IF;
	SET iPlayerUID = iPlayerUID + 1;

	END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pSpawn`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pSpawn`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pSpawn`()
BEGIN

    DECLARE bSpawned        TINYINT(1) DEFAULT 0;

    DECLARE iLID            INT DEFAULT 0;

    WHILE (bSpawned = 0) DO
        SET iLID = LAST_INSERT_ID();
        INSERT INTO `object_data` (ObjectUID, Instance,Classname, Damage, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Datestamp)
        SELECT ot.ObjectUID, '1', ot.Classname, ot.Damage, '0', ot.Worldspace, '[]', ot.Hitpoints, '0.01', SYSDATE()
            FROM (SELECT oc.Classname, oc.Chance, oc.MaxNum, oc.Damage, oc.Hitpoints, os.ObjectUID, os.Worldspace
                FROM object_classes AS oc
                INNER JOIN `object_spawns` AS os
                ON oc.Classname = os.Classname
                ORDER BY RAND()) AS ot
            WHERE NOT EXISTS (SELECT od.ObjectUID
                            FROM `object_data` AS od
                            WHERE ot.ObjectUID = od.ObjectUID)
            AND fGetClassCount(ot.Classname) < ot.MaxNum
            AND fGetSpawnFromChance(ot.Chance) = 1
            LIMIT 1;
          

            IF (LAST_INSERT_ID() <> iLID) THEN
                SET bSpawned = 1;
            END IF;
    END WHILE;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `fGetClassCount`
-- ----------------------------
DROP FUNCTION IF EXISTS `fGetClassCount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fGetClassCount`(`clname` varchar(32)) RETURNS smallint(3)
    READS SQL DATA
BEGIN
	DECLARE iClassCount SMALLINT(3) DEFAULT 0;
	
	SELECT COUNT(`Classname`) 
		INTO iClassCount 
		FROM `object_data` 
		WHERE `Classname` = clname;
	RETURN iClassCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `fGetSpawnFromChance`
-- ----------------------------
DROP FUNCTION IF EXISTS `fGetSpawnFromChance`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fGetSpawnFromChance`(`chance` double) RETURNS tinyint(1)
    NO SQL
BEGIN
	DECLARE bspawn TINYINT(1) DEFAULT 0;
	IF (RAND() <= chance) THEN
		SET bspawn = 1;
	END IF;
	RETURN bspawn;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `fGetVehCount`
-- ----------------------------
DROP FUNCTION IF EXISTS `fGetVehCount`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fGetVehCount`() RETURNS int(3)
    READS SQL DATA
BEGIN
	DECLARE iVehCount	INT(3) DEFAULT 0;
	SELECT COUNT(`Classname`) 
		INTO iVehCount
		FROM `object_data` 
		WHERE `Classname` != 'dummy'
			AND `Classname` != 'TentStorage'  
			AND `Classname` != 'Hedgehog_DZ'	
			AND `Classname` != 'Wire_cat1'		
			AND `Classname` != 'Sandbag1_DZ'	
			AND `Classname` != 'TrapBear';		
	RETURN iVehCount;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `rndspawn`
-- ----------------------------
DROP FUNCTION IF EXISTS `rndspawn`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `rndspawn`(`chance` double) RETURNS tinyint(1)
BEGIN

DECLARE bspawn tinyint(1) DEFAULT 0;

IF (RAND() <= chance) THEN
SET bspawn = 1;
END IF;

RETURN bspawn;

END
;;
DELIMITER ;
