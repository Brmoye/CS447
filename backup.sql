-- MariaDB dump 10.19  Distrib 10.6.7-MariaDB, for OpenBSD (i386)
--
-- Host: localhost    Database: brmoye
-- ------------------------------------------------------
-- Server version	10.6.7-MariaDB

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
-- Table structure for table `Cars`
--

DROP TABLE IF EXISTS `Cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cars` (
  `model` varchar(32) NOT NULL,
  `make` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cars`
--

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;
INSERT INTO `Cars` VALUES ('Mustang','Ford'),('Cutlass','Oldsmobile'),('Camry','Toyota'),('XJS','Jaguar');
/*!40000 ALTER TABLE `Cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LastVoted`
--

DROP TABLE IF EXISTS `LastVoted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LastVoted` (
  `name` varchar(32) NOT NULL,
  `lastvoted` date NOT NULL,
  `zip` varchar(5) NOT NULL,
  `precinct` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LastVoted`
--

LOCK TABLES `LastVoted` WRITE;
/*!40000 ALTER TABLE `LastVoted` DISABLE KEYS */;
INSERT INTO `LastVoted` VALUES ('Fred Flintstone','2016-11-08','12345','2'),('Wilma Flintstone','2016-11-08','12345','2'),('Barney Rubble','2016-11-08','12345','2'),('Betty Rubble','2014-11-04','12345','2'),('Peter Griffin','2016-11-08','45678','4'),('Lois Griffin','2016-11-08','45678','4'),('Brian Griffin','2014-11-08','45678','4'),('Bender Bending Rodriguez','2016-11-08','ZZ9','408'),('Turanga Leela','2016-11-08','408','ZZ9');
/*!40000 ALTER TABLE `LastVoted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prices`
--

DROP TABLE IF EXISTS `Prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prices` (
  `model` varchar(32) NOT NULL,
  `year` smallint(4) NOT NULL,
  `cost` int(7) NOT NULL,
  PRIMARY KEY (`model`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prices`
--

LOCK TABLES `Prices` WRITE;
/*!40000 ALTER TABLE `Prices` DISABLE KEYS */;
INSERT INTO `Prices` VALUES ('Camry',1998,11000),('Cutlass',1999,12250),('Mustang',1996,16500),('XJS',1998,23750);
/*!40000 ALTER TABLE `Prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VoterLocation`
--

DROP TABLE IF EXISTS `VoterLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VoterLocation` (
  `street` varchar(32) NOT NULL,
  `city` varchar(32) NOT NULL,
  `state` varchar(5) NOT NULL,
  `zip` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VoterLocation`
--

LOCK TABLES `VoterLocation` WRITE;
/*!40000 ALTER TABLE `VoterLocation` DISABLE KEYS */;
INSERT INTO `VoterLocation` VALUES ('1238 Rocky Road','Bedrock','AR','12345'),('1238 Rocky Road','Bedrock','AR','12345'),('1236 Rocky Road','Bedrock','AR','12345'),('1236 Rocky Road','Bedrock','AR','12345'),('621 Cranston Lane','Quahog','RI','45678'),('621 Cranston Lane','Quahog','RI','45678'),('621 Cranston Lane','Quahog','RI','45678'),('Xr7 Expressway','New New York','Earth','ZZ9'),('Xr7 Expressway','New New York','Earth','408');
/*!40000 ALTER TABLE `VoterLocation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-27 23:09:32
