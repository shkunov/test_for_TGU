CREATE DATABASE  IF NOT EXISTS `test_tgu` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `test_tgu`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test_tgu
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `datacity`
--

DROP TABLE IF EXISTS `datacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `datacity` (
  `rownum` int(11) NOT NULL AUTO_INCREMENT,
  `CityName` varchar(45) DEFAULT NULL,
  `longtitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`rownum`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='CREATE TABLE `datacity` (\n  `rownum` int(11) NOT NULL,\n  `NameCity` varchar(45) DEFAULT NULL,\n  `longitude` float DEFAULT NULL,\n  `latitude` float DEFAULT NULL,\n  `date` date DEFAULT NULL,\n  `time` time DEFAULT NULL,\n  PRIMARY KEY (`rownum`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT=''данные о координатах городов''';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacity`
--

LOCK TABLES `datacity` WRITE;
/*!40000 ALTER TABLE `datacity` DISABLE KEYS */;
INSERT INTO `datacity` VALUES (1,'Тольятти',49.4192,53.5088,'2019-06-11','14:05:23'),(2,'Волгоград',44.5169,48.7071,'2019-06-11','14:25:38'),(3,'Вологда',39.8915,59.2205,'2019-06-11','14:45:24'),(4,'Рязань',39.7364,54.6292,'2019-06-11','14:45:36'),(5,'Самара',50.1018,53.1955,'2019-06-11','19:03:38'),(6,'Саранск',45.1839,54.1874,'2019-06-12','13:13:17'),(7,'Киров',49.668,58.6036,'2019-06-12','13:34:20'),(8,'Москва',37.6225,55.7532,'2019-06-12','13:35:55'),(9,'Липец',36.5193,50.273,'2019-06-12','13:39:29'),(10,'Норильск',88.2104,69.344,'2019-06-12','13:48:05'),(11,'Сызрань',48.4745,53.1558,'2019-06-12','14:13:49'),(12,'Саранск',45.1839,54.1874,'2019-06-12','14:20:40');
/*!40000 ALTER TABLE `datacity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-12 16:29:45
