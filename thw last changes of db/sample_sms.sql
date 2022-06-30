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
-- Table structure for table `sms`
--

DROP TABLE IF EXISTS `sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms` (
  `id_sms` bigint NOT NULL,
  `textSms` varchar(250) DEFAULT NULL,
  `idDevices_Fk` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `smscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_sms`),
  KEY `idDevices_Fk_a_idx` (`idDevices_Fk`),
  CONSTRAINT `idDevices_Fk_a` FOREIGN KEY (`idDevices_Fk`) REFERENCES `devices` (`idDevices`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms`
--

LOCK TABLES `sms` WRITE;
/*!40000 ALTER TABLE `sms` DISABLE KEYS */;
INSERT INTO `sms` VALUES (162496906800530,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',0,'2021-06-29 16:47:48',NULL),(162496909081916,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',0,'2021-06-29 16:48:11',NULL),(162496909939600,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',0,'2021-06-29 16:48:19',NULL),(162530394749768,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.1 00.1 220 CN ',0,'2021-07-03 13:49:07',NULL),(162531238402435,'R +00.0 +00.0 00.1 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN ',0,'2021-07-03 16:09:44',NULL),(162531298407992,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.1 00.0 220 CN R +00.0 +00.0 00.0 00.1 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN ',0,'2021-07-03 16:19:44',NULL),(162531627376982,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.1 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN ',0,'2021-07-03 17:14:34',NULL),(162531687394595,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.1 220 CN R +00.0 +00.0 00.0 00.0 220 CN ',0,'2021-07-03 17:24:34',NULL),(162531855364665,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.1 00.0 220 CN R +00.0 +00.0 00.1 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN ',0,'2021-07-03 17:52:34',NULL),(162531915392164,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.1 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN ',0,'2021-07-03 18:02:34',NULL),(162538615157917,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.1 00.1 220 CN R +00.0 +00.0 00.0 00.1 220 CN R +00.0 +00.0 00.0 00.0 220 CN ',0,'2021-07-04 12:39:12',NULL),(162539863766572,'R +00.0 +00.0 00.0 00.1 220 CN R +00.0 +00.0 00.0 00.1 220 CN R +00.0 +00.0 00.0 00.1 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN ',0,'2021-07-04 16:07:18',NULL),(162539946468129,'R +00.0 +00.0 00.1 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.1 220 CN ',0,'2021-07-04 16:21:05',NULL),(162575270055499,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',0,'2021-07-08 18:28:21',NULL),(162575272673868,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',0,'2021-07-08 18:28:47',NULL),(162575275130303,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',0,'2021-07-08 18:29:11',NULL),(162618131491652,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',1,'2021-07-13 17:31:55',NULL),(162618132021628,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN',3,NULL,NULL),(162618132021629,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',2,'2021-07-13 17:32:00',NULL),(162618134137596,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN',3,NULL,NULL),(162618134137597,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN',3,NULL,NULL),(162618134137598,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN',3,NULL,NULL),(162618134137599,'R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN R +00.0 +00.0 00.0 00.0 220 CN',3,NULL,NULL),(162626036424019,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',2,'2021-07-14 15:29:24',NULL),(162722330481850,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',0,'2021-07-25 18:58:25',NULL),(162722330849689,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',1,'2021-07-25 18:58:28',NULL),(162722331313855,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',2,'2021-07-25 18:58:33',NULL),(162722331674279,'R +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN\nR +00.0 +00.0 00.0 00.0 220 CN',3,'2021-07-25 18:58:37',NULL);
/*!40000 ALTER TABLE `sms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-28 11:28:47
