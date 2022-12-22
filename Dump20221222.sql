CREATE DATABASE  IF NOT EXISTS `buyme` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `buyme`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: buyme
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bid`
--

DROP TABLE IF EXISTS `bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bid` (
  `bid_id` int NOT NULL AUTO_INCREMENT,
  `bid` int DEFAULT '0',
  `upper_limit` int DEFAULT '0',
  `increment` int DEFAULT '0',
  `bid_date` date DEFAULT NULL,
  `device_id` varchar(50) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid`
--

LOCK TABLES `bid` WRITE;
/*!40000 ALTER TABLE `bid` DISABLE KEYS */;
INSERT INTO `bid` VALUES (1,120,0,0,'2022-12-20','75','yovanny'),(2,150,0,0,'2022-12-20','75','yovanny'),(3,250,0,0,'2022-12-20','75','yovanny'),(4,280,0,0,'2022-12-20','','yovanny'),(5,280,0,0,'2022-12-20','','yovanny'),(6,220,0,0,'2022-12-20','6578','yovanny'),(7,260,0,0,'2022-12-20','75','hyeon'),(8,260,0,0,'2022-12-20','75','hyeon'),(9,260,0,0,'2022-12-20','75','hyeon'),(10,100,0,0,'2022-12-20','670','hyeon'),(11,110,0,0,'2022-12-20','670','yovanny'),(12,270,0,0,'2022-12-21','75','adrian'),(13,270,0,0,'2022-12-21','75','adrian'),(14,270,0,0,'2022-12-21','75','adrian'),(15,270,0,0,'2022-12-21','75','adrian'),(16,270,0,0,'2022-12-21','75','adrian'),(17,270,0,0,'2022-12-21','75','adrian'),(18,270,0,0,'2022-12-21','75','adrian'),(19,270,0,0,'2022-12-21','75','adrian'),(20,270,0,0,'2022-12-21','75','adrian'),(21,270,0,0,'2022-12-21','75','adrian'),(22,270,0,0,'2022-12-21','75','adrian'),(23,270,0,0,'2022-12-21','75','adrian'),(24,270,0,0,'2022-12-21','75','adrian'),(25,290,0,0,'2022-12-21','75','adrian'),(26,400,0,0,'2022-12-21','75','adrian'),(27,50,0,0,'2022-12-21','75','adrian');
/*!40000 ALTER TABLE `bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemalert`
--

DROP TABLE IF EXISTS `itemalert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemalert` (
  `itemName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemalert`
--

LOCK TABLES `itemalert` WRITE;
/*!40000 ALTER TABLE `itemalert` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemalert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laptop`
--

DROP TABLE IF EXISTS `laptop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laptop` (
  `username` varchar(50) NOT NULL,
  `laptopname` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `display` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `graphicscard` varchar(50) NOT NULL,
  `harddrive` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `deviceid` varchar(50) NOT NULL,
  `productid` varchar(50) NOT NULL,
  `secretminprice` int NOT NULL,
  `initialprice` int NOT NULL,
  `bidincrement` int NOT NULL,
  `endingdate` datetime NOT NULL,
  `currentbid` int DEFAULT '0',
  `history` mediumtext NOT NULL,
  PRIMARY KEY (`deviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laptop`
--

LOCK TABLES `laptop` WRITE;
/*!40000 ALTER TABLE `laptop` DISABLE KEYS */;
INSERT INTO `laptop` VALUES ('bryan','dell','windows','i7','9x11','idk','idk','idk','1790 joules','357','89',200,200,10,'2022-12-22 00:00:00',0,''),('wa','dell','windows','i7','9x11','idk','idk','idk','idk','670','89',500,90,20,'2022-12-22 00:00:00',0,''),('bryan','dell','windows','i7','9x11','idk','idk','idk','idk','789','234',900,200,20,'2022-12-14 00:00:00',0,'');
/*!40000 ALTER TABLE `laptop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone` (
  `username` varchar(50) NOT NULL,
  `phonename` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `display` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `phonestorage` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `deviceid` varchar(50) NOT NULL,
  `imei` varchar(50) NOT NULL,
  `secretminprice` int NOT NULL,
  `initialprice` int NOT NULL,
  `bidincrement` int NOT NULL,
  `endingdate` datetime NOT NULL,
  `currentbid` int DEFAULT '0',
  `history` mediumtext NOT NULL,
  PRIMARY KEY (`deviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES ('bryan','lg optimus exceed 2','android','a9','9x11','idk','64 gb','1790 joules','6578','453433',900,200,10,'2022-12-22 00:00:00',0,''),('hyeon','iphone 6s','ios','a9','9x11','idk','64 gb','80','6759','9853',900,300,20,'2022-12-22 00:00:00',0,''),('hyeon','iphone 11','ios','a12','9x11','idk','64 gb','1790 joules','875','7688',900,200,10,'2022-12-22 00:00:00',0,''),('hyeon','nexus','windows','i7','9x11','idk','idk','1790 joules','890','899',900,300,20,'2022-12-22 00:00:00',0,''),('bryan','iphone 5','ios','a9','9x11','idk','64 gb','idk','8943','48593',200,50,20,'2022-12-22 00:00:00',0,''),('hyeon','iphone 6s','ios','i7','9x11','idk','64 gb','1790 joules','89732','83472',600,200,10,'2022-12-14 00:00:00',0,'');
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `question` varchar(50) NOT NULL,
  `answers` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('test','test');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablet`
--

DROP TABLE IF EXISTS `tablet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tablet` (
  `username` varchar(50) NOT NULL,
  `tabletname` varchar(50) NOT NULL,
  `os` varchar(50) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `display` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `tabletstorage` varchar(50) NOT NULL,
  `battery` varchar(50) NOT NULL,
  `deviceid` varchar(50) NOT NULL,
  `secretminprice` int NOT NULL,
  `initialprice` int NOT NULL,
  `bidincrement` int NOT NULL,
  `endingdate` datetime NOT NULL,
  `currentbid` int DEFAULT '0',
  `history` mediumtext NOT NULL,
  PRIMARY KEY (`deviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablet`
--

LOCK TABLES `tablet` WRITE;
/*!40000 ALTER TABLE `tablet` DISABLE KEYS */;
INSERT INTO `tablet` VALUES ('hyeon','nexus 7','windows','i7','9x11','idk','128 gb','1790 joules','75',200,100,5,'2022-12-22 00:00:00',0,'$80$85$90$95'),('hyeon','nexus 7','android','i7','9x11','idk','128 gb','idk','879',900,300,20,'2022-12-14 00:00:00',0,'');
/*!40000 ALTER TABLE `tablet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('adrian','adrian'),('hyeon','pass'),('yovanny','password');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-22 12:09:24
