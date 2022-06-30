-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sample
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `lastupdate`
--

DROP TABLE IF EXISTS `lastupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lastupdate` (
  `LastTime` bigint DEFAULT NULL,
  `T_one` varchar(45) DEFAULT NULL,
  `T_two` varchar(45) DEFAULT NULL,
  `C_one` varchar(45) DEFAULT NULL,
  `C_two` varchar(45) DEFAULT NULL,
  `voltage` varchar(45) DEFAULT NULL,
  `idDevices_Fk` int NOT NULL,
  `Door_left_open` varchar(45) DEFAULT NULL,
  `Emergency` varchar(45) DEFAULT NULL,
  `Black_out` tinyint(1) DEFAULT NULL,
  `Send_time` varchar(45) DEFAULT NULL,
  `Door_left_open_time` varchar(45) DEFAULT NULL,
  `Black_out_time` varchar(45) DEFAULT NULL,
  `min_temprature1` int DEFAULT '0',
  `max_temprature1` int DEFAULT '30',
  `min_temprature2` int DEFAULT '0',
  `max_temprature2` int DEFAULT '30',
  `max_current1` int DEFAULT '10',
  `max_current2` int DEFAULT '10',
  `time_repeat_sms` int DEFAULT '10',
  `curren1_name` varchar(255) DEFAULT 'جریان1',
  `curren1_ratio` int DEFAULT '1',
  `curren2_name` varchar(255) DEFAULT 'جریان2',
  `curren2_ratio` int DEFAULT '1',
  `moretemp2` tinyint DEFAULT '0',
  `morecurrent2` tinyint DEFAULT '0',
  `dangertemp1` varchar(45) DEFAULT NULL,
  `dangertemp2` varchar(45) DEFAULT NULL,
  `dangercurr1` varchar(45) DEFAULT NULL,
  `dangercurr2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDevices_Fk`),
  CONSTRAINT `idDevices_Fk` FOREIGN KEY (`idDevices_Fk`) REFERENCES `devices` (`idDevices`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lastupdate`
--

LOCK TABLES `lastupdate` WRITE;
/*!40000 ALTER TABLE `lastupdate` DISABLE KEYS */;
INSERT INTO `lastupdate` VALUES (162722330481850,'+00.0 ','+00.0 ','00.0 ','00.0 ','220',0,'C','N',NULL,'0010','0010','0010',0,30,0,30,10,10,10,'جریان1',1,'جریان2',1,0,0,NULL,NULL,NULL,NULL),(162722330849689,'+00.0 ','+00.0 ','00.0 ','00.0 ','220',1,'C','N',NULL,NULL,NULL,NULL,0,30,0,30,10,10,10,'جریان1',1,'جریان2',1,0,0,NULL,NULL,NULL,NULL),(162722331313855,'+00.0 ','+00.0 ','00.0 ','00.0 ','220',2,'C','N',NULL,NULL,NULL,NULL,0,30,0,30,10,10,10,'جریان1',1,'جریان2',1,0,0,NULL,NULL,NULL,NULL),(162722331674279,'+00.0 ','+00.0 ','00.0 ','00.0 ','220',3,'C','N',NULL,NULL,NULL,NULL,0,30,0,30,10,10,10,'جریان1',1,'جریان2',1,0,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `lastupdate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-28 11:28:44
