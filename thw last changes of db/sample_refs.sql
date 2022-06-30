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
-- Table structure for table `refs`
--

DROP TABLE IF EXISTS `refs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refs` (
  `idRefs` int NOT NULL,
  `Owner_name` varchar(45) DEFAULT NULL,
  `Owner_family` varchar(45) DEFAULT NULL,
  `Ref_name` varchar(45) DEFAULT NULL,
  `Owner_number` varchar(45) DEFAULT NULL,
  `Institute_name` varchar(45) DEFAULT NULL,
  `Deparmant_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRefs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refs`
--

LOCK TABLES `refs` WRITE;
/*!40000 ALTER TABLE `refs` DISABLE KEYS */;
INSERT INTO `refs` VALUES (0,'حمید','شریفی','سرخانه مرکز رشد','09103403891','دانشگاه علم و صنعت','دانشکده برق'),(1,'حیتا','بارسم','سردخانه خونشون','09204318716','بخش تحقیق و توسعه','برج شبنم');
/*!40000 ALTER TABLE `refs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-28 11:28:48
