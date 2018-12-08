-- MySQL dump 10.17  Distrib 10.3.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bpmspace_DemoTarget
-- ------------------------------------------------------
-- Server version	10.3.11-MariaDB-1:10.3.11+maria~jessie-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DemoTarget_country`
--

DROP TABLE IF EXISTS `DemoTarget_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemoTarget_country` (
  `DemoTarget_country_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_country_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_country_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DemoTarget_investment_type`
--

DROP TABLE IF EXISTS `DemoTarget_investment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemoTarget_investment_type` (
  `DemoTarget_investment_type_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_investment_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_investment_type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DemoTarget_legal`
--

DROP TABLE IF EXISTS `DemoTarget_legal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemoTarget_legal` (
  `DemoTarget_legal_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_legal_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_legal_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DemoTarget_lmp_type`
--

DROP TABLE IF EXISTS `DemoTarget_lmp_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemoTarget_lmp_type` (
  `DemoTarget_lmp_type_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_lmp_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_lmp_type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DemoTarget_match`
--

DROP TABLE IF EXISTS `DemoTarget_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemoTarget_match` (
  `DemoTarget_match_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_match_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_match_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DemoTarget_person`
--

DROP TABLE IF EXISTS `DemoTarget_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemoTarget_person` (
  `DemoTarget_person_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_person_name` varchar(45) DEFAULT NULL,
  `DemoTarget_person_e_mail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_person_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DemoTarget_segment`
--

DROP TABLE IF EXISTS `DemoTarget_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemoTarget_segment` (
  `DemoTarget_segment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_segment_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_segment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DemoTarget_target`
--

DROP TABLE IF EXISTS `DemoTarget_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemoTarget_target` (
  `DemoTarget_target_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_target_name` varchar(45) DEFAULT NULL,
  `DemoTarget_target_city` varchar(45) DEFAULT NULL,
  `DemoTarget_target_keyfacts` varchar(45) DEFAULT NULL,
  `DemoTarget_target_revenue` int(11) DEFAULT NULL,
  `DemoTarget_target_ebitda` int(11) DEFAULT NULL,
  `DemoTarget_target_initial_request_valuation` int(11) DEFAULT NULL,
  `DemoTarget_target_effort` int(11) DEFAULT NULL,
  `DemoTarget_target_contact_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `DemoTarget_target_comment` varchar(5000) DEFAULT NULL,
  `DemoTarget_target_contact_person_ID` varchar(45) DEFAULT NULL,
  `DemoTarget_target_country` bigint(20) unsigned DEFAULT NULL,
  `DemoTarget_target_legal` bigint(20) unsigned DEFAULT NULL,
  `DemoTarget_target_match` bigint(20) unsigned DEFAULT NULL,
  `DemoTarget_target_investment_type_ID` bigint(20) unsigned DEFAULT NULL,
  `DemoTarget_target_lmp_type_ID` bigint(20) unsigned DEFAULT NULL,
  `DemoTarget_target_segment_ID` bigint(20) unsigned DEFAULT NULL,
  `DemoTarget_target_owner_person_ID` bigint(20) unsigned DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DemoTarget_target_ID`),
  KEY `investment_type_ID_fk_5345_idx` (`DemoTarget_target_investment_type_ID`),
  KEY `lmp_type_ID_idx` (`DemoTarget_target_lmp_type_ID`),
  KEY `segment_ID_fk_4293_idx` (`DemoTarget_target_segment_ID`),
  KEY `owner_person_ID_fk_0538_idx` (`DemoTarget_target_owner_person_ID`),
  KEY `contact_person_ID_fk_7534_idx` (`DemoTarget_target_contact_person_ID`),
  KEY `match_ID_fk_56765_idx` (`DemoTarget_target_match`),
  KEY `legal_ID_fk_567876_idx` (`DemoTarget_target_legal`),
  KEY `country_ID_fk_45654_idx` (`DemoTarget_target_country`),
  KEY `state_id_7e282b4d` (`state_id`),
  CONSTRAINT `country_ID_fk_45654` FOREIGN KEY (`DemoTarget_target_country`) REFERENCES `DemoTarget_country` (`DemoTarget_country_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `investment_type_ID_fk_5345` FOREIGN KEY (`DemoTarget_target_investment_type_ID`) REFERENCES `DemoTarget_investment_type` (`DemoTarget_investment_type_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `legal_ID_fk_567876` FOREIGN KEY (`DemoTarget_target_legal`) REFERENCES `DemoTarget_legal` (`DemoTarget_legal_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lmp_type_ID_fk_4208` FOREIGN KEY (`DemoTarget_target_lmp_type_ID`) REFERENCES `DemoTarget_lmp_type` (`DemoTarget_lmp_type_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `match_ID_fk_56765` FOREIGN KEY (`DemoTarget_target_match`) REFERENCES `DemoTarget_match` (`DemoTarget_match_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `owner_person_ID_fk_0538` FOREIGN KEY (`DemoTarget_target_owner_person_ID`) REFERENCES `DemoTarget_person` (`DemoTarget_person_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `segment_ID_fk_4293` FOREIGN KEY (`DemoTarget_target_segment_ID`) REFERENCES `DemoTarget_segment` (`DemoTarget_segment_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `state_id_7e282b4d` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DemoTarget_task`
--

DROP TABLE IF EXISTS `DemoTarget_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DemoTarget_task` (
  `DemoTarget_task_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `DemoTarget_task_name` varchar(45) DEFAULT NULL,
  `DemoTarget_person_ID` bigint(20) unsigned DEFAULT NULL,
  `DemoTarget_target_ID` bigint(20) unsigned DEFAULT NULL,
  `state_id` bigint(20) DEFAULT 5,
  PRIMARY KEY (`DemoTarget_task_ID`),
  KEY `responsible_person_ID_fk_6032_idx` (`DemoTarget_person_ID`),
  KEY `target_ID_fk_8276_idx` (`DemoTarget_target_ID`),
  KEY `state_id_80128736` (`state_id`),
  CONSTRAINT `responsible_person_ID_fk_6032` FOREIGN KEY (`DemoTarget_person_ID`) REFERENCES `DemoTarget_person` (`DemoTarget_person_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `state_id_80128736` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `target_ID_fk_8276` FOREIGN KEY (`DemoTarget_target_ID`) REFERENCES `DemoTarget_target` (`DemoTarget_target_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `state_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `form_data` longtext DEFAULT NULL,
  `entrypoint` tinyint(1) NOT NULL DEFAULT 0,
  `statemachine_id` bigint(20) NOT NULL DEFAULT 1,
  `script_IN` longtext DEFAULT NULL,
  `script_OUT` longtext DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  KEY `state_machine_id_fk` (`statemachine_id`),
  CONSTRAINT `state_machine_id_fk` FOREIGN KEY (`statemachine_id`) REFERENCES `state_machines` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `state_machines`
--

DROP TABLE IF EXISTS `state_machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_machines` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(45) DEFAULT NULL,
  `transition_script` longtext DEFAULT NULL,
  `form_data_default` longtext DEFAULT NULL,
  `form_data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `state_rules`
--

DROP TABLE IF EXISTS `state_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state_rules` (
  `state_rules_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state_id_FROM` bigint(20) NOT NULL,
  `state_id_TO` bigint(20) NOT NULL,
  `transition_script` longtext DEFAULT NULL,
  PRIMARY KEY (`state_rules_id`),
  KEY `state_id_fk1_idx` (`state_id_FROM`),
  KEY `state_id_fk_to_idx` (`state_id_TO`),
  CONSTRAINT `state_id_fk_from` FOREIGN KEY (`state_id_FROM`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `state_id_fk_to` FOREIGN KEY (`state_id_TO`) REFERENCES `state` (`state_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'bpmspace_DemoTarget'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_DemoTarget_country` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DemoTarget_country`(IN token_uid INT)
BEGIN
  SELECT * FROM DemoTarget_country;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DemoTarget_investment_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DemoTarget_investment_type`(IN token_uid INT)
BEGIN
  SELECT * FROM DemoTarget_investment_type;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DemoTarget_legal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DemoTarget_legal`(IN token_uid INT)
BEGIN
  SELECT * FROM DemoTarget_legal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DemoTarget_lmp_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DemoTarget_lmp_type`(IN token_uid INT)
BEGIN
  SELECT * FROM DemoTarget_lmp_type;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DemoTarget_match` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DemoTarget_match`(IN token_uid INT)
BEGIN
  SELECT * FROM DemoTarget_match;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DemoTarget_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DemoTarget_person`(IN token_uid INT)
BEGIN
  SELECT * FROM DemoTarget_person;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DemoTarget_segment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DemoTarget_segment`(IN token_uid INT)
BEGIN
  SELECT * FROM DemoTarget_segment;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DemoTarget_target` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DemoTarget_target`(IN token_uid INT)
BEGIN
  SELECT * FROM DemoTarget_target;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DemoTarget_task` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_DemoTarget_task`(IN token_uid INT)
BEGIN
  SELECT * FROM DemoTarget_task;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_state` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_state`(IN token_uid INT)
BEGIN
  SELECT * FROM state;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_state_machines` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_state_machines`(IN token_uid INT)
BEGIN
  SELECT * FROM state_machines;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_state_rules` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_state_rules`(IN token_uid INT)
BEGIN
  SELECT * FROM state_rules;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-08  9:13:10
