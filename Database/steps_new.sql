-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: STEPS
-- ------------------------------------------------------
-- Server version	5.7.15

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'Thomas','6785913045'),(2,'Victor','1234567899');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'Bob','9875642310',NULL),(2,'John','7894561230',NULL),(3,'Jason','1472583690',NULL),(4,'Justin','7418529630',NULL);
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `is_indoor` varchar(45) DEFAULT NULL,
  `team_max` int(11) DEFAULT NULL,
  `player_max` int(11) DEFAULT NULL,
  `winning_team` varchar(45) DEFAULT NULL,
  `season_end_date` varchar(45) DEFAULT NULL,
  `sport_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_division_sport1_idx` (`sport_id`),
  CONSTRAINT `fk_division_sport1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'East','no',512,5632,'There is no winning team right now','May 8th, 2017',1),(2,'West','no',512,5632,'There is no winning team right now','May 8th, 2017',1),(3,'East','no',512,5632,'There is no winning team right now','May 8th, 2017',2),(4,'West','no',512,5632,'There is no winning team right now','May 8th, 2017',2);
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) DEFAULT NULL,
  `team_1` varchar(45) DEFAULT NULL,
  `team_2` varchar(45) DEFAULT NULL,
  `venue` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `coach_1_score` int(11) DEFAULT NULL,
  `coach_2_score` int(11) DEFAULT NULL,
  `winner` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_game_team1_idx` (`team_id`),
  CONSTRAINT `fk_game_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'guest@guest.com'),(2,'guest@guest.com');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_player_team1_idx` (`team_id`),
  CONSTRAINT `fk_player_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Carl Richardson','555-605-1632',1),(2,'Michael Wilson','555-205-1732',1),(3,'Scott Russell','555-111-1782',2),(4,'Billy Henderson','555-221-1782',2),(5,'Arthur	Peterson','555-321-5792',3),(6,'Bruce Gray','555-654-6692',3),(7,'Roy Sanchez','555-434-1672',4),(8,'Philip	Wood','555-124-1852',4),(9,'Player 2','555-5552',2),(10,'Player 1','555-5551',1),(11,'Player 2','555-5552',1),(12,'Player 1','555-5551',2),(13,'Player 2','555-5552',2),(14,'Player 2','555-5552',1),(15,'Player 1','555-5551',2),(16,'Player 2','555-5552',2),(17,'Player 1','555-5551',1),(18,'Player 2','555-5552',1),(19,'Player 1','555-5551',2),(20,'Player 2','555-5552',2),(21,'Player 1','555-5551',1),(22,'Player 2','555-5552',1),(23,'Player 1','555-5551',2),(24,'Player 2','555-5552',2),(25,'Player 1','555-5551',1),(26,'Player 2','555-5552',1),(27,'Player 1','555-5551',2);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sport`
--

DROP TABLE IF EXISTS `sport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `min_teams` int(11) DEFAULT NULL,
  `max_teams` int(11) DEFAULT NULL,
  `division_team` varchar(45) DEFAULT NULL,
  `min_team_size` int(11) DEFAULT NULL,
  `max_team_size` int(11) DEFAULT NULL,
  `game_rules` varchar(45) DEFAULT NULL,
  `is_indoor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sport`
--

LOCK TABLES `sport` WRITE;
/*!40000 ALTER TABLE `sport` DISABLE KEYS */;
INSERT INTO `sport` VALUES (1,'Football',2,1024,'I don\'t know',11,11,'There are a lot of rules',0),(2,'Soccer',2,1024,'I don\'t know',11,11,'There are a lot of rules',0);
/*!40000 ALTER TABLE `sport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `player_count` varchar(45) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_team_division1_idx` (`division_id`),
  CONSTRAINT `fk_team_division1` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'TSM','11',1,1,0,0,1),(2,'Cloud 9','11',1,2,0,0,1),(3,'Echo Fox','11',1,3,0,0,2),(4,'CLG','11',1,4,0,0,2);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament`
--

DROP TABLE IF EXISTS `tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `begin_date` varchar(45) DEFAULT NULL,
  `end_date` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `administrator_id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tournament_administrator1_idx` (`administrator_id`),
  KEY `fk_tournament_sport1_idx` (`sport_id`),
  CONSTRAINT `fk_tournament_administrator1` FOREIGN KEY (`administrator_id`) REFERENCES `administrator` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tournament_sport1` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament`
--

LOCK TABLES `tournament` WRITE;
/*!40000 ALTER TABLE `tournament` DISABLE KEYS */;
INSERT INTO `tournament` VALUES (1,'Tournament of Power','May 9th, 2017','May 31st, 2017','Sanford Stadium',1,1),(2,'Genesis 5','May 9th, 2017','May 31st, 2017','Soccer Field',2,2);
/*!40000 ALTER TABLE `tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournament_bracket`
--

DROP TABLE IF EXISTS `tournament_bracket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tournament_bracket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `round_id` varchar(45) NOT NULL,
  `game_id` varchar(45) NOT NULL,
  `venue` varchar(45) DEFAULT NULL,
  `game_date` varchar(45) DEFAULT NULL,
  `playoff_game_winner` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `winning_team_1` varchar(45) DEFAULT NULL,
  `winning_team_2` varchar(45) DEFAULT NULL,
  `tournament_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`round_id`,`game_id`),
  KEY `fk_tournament_bracket_tournament1_idx` (`tournament_id`),
  CONSTRAINT `fk_tournament_bracket_tournament1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournament_bracket`
--

LOCK TABLES `tournament_bracket` WRITE;
/*!40000 ALTER TABLE `tournament_bracket` DISABLE KEYS */;
INSERT INTO `tournament_bracket` VALUES (1,'1','1','Sanford Stadium','May 9th, 2017','Team 1','Address ?','Team 1','Team 1',1),(2,'1','2','Soccer Field','May 9th, 2017','Team 1','Address ?','Team 1','Team 1',2);
/*!40000 ALTER TABLE `tournament_bracket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `privileges` varchar(45) DEFAULT NULL,
  `administrator_id` int(11) DEFAULT NULL,
  `coach_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Carl Richardson','password111','crichardson@hotmail.com','1093 Archwood Avenue','player',NULL,NULL,NULL,1),(2,'Michael Wilson','password211','mwilson@hotmail.com','1707 Kennedy Court','player',NULL,NULL,NULL,2),(3,'Scott Russell','password121','scottruss@hotmail.com','1189 Atha Drive','player',NULL,NULL,NULL,3),(4,'Billy Henderson','password221','billyhender@hotmail.com','4514 Berry Street','player',NULL,NULL,NULL,4),(5,'Arthur	Peterson','password112','arthurpete@hotmail.com','1965 Sugar Camp Road','player',NULL,NULL,NULL,5),(6,'Bruce Gray','password212','brucegray@hotmail.com','1485 Ritter Avenue','player',NULL,NULL,NULL,6),(7,'Roy Sanchez','password122','roysanchez@hotmail.com','2459 Confederate Drive','player',NULL,NULL,NULL,7),(8,'Philip	Wood','password222','philwood@hotmail.com','24712 Hillcrest Drive','player',NULL,NULL,NULL,8),(9,'Steve Powell','password333','stevepowell@hotmail.com','1686 Spring Haven Trail','player',NULL,NULL,NULL,8),(10,'Steve Powell','password333','stevepowell@hotmail.com','1686 Spring Haven Trail','player',NULL,NULL,NULL,9),(11,'Carl Peterson','password343','carlpeterson@hotmail.com','1646 Sunrise Road','player',NULL,NULL,NULL,10),(12,'name','password','email','address','admin',NULL,NULL,NULL,NULL),(13,'namer','password','email','address','admin',NULL,NULL,NULL,NULL),(14,'namerss','password','email','address','admin',NULL,NULL,NULL,NULL),(15,'namersszzz','password','email','address','admin',NULL,NULL,NULL,NULL),(16,'nameer','password','name@uga.edu',NULL,'admin',NULL,NULL,NULL,NULL),(17,'Jim','password','jim@uga.edu',NULL,'coach',NULL,NULL,NULL,NULL),(18,'Tim','password','tim@uga.edu',NULL,'player',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-20 17:28:12
