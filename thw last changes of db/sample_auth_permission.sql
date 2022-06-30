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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add site',7,'add_site'),(26,'Can change site',7,'change_site'),(27,'Can delete site',7,'delete_site'),(28,'Can view site',7,'view_site'),(29,'Can add Token',8,'add_token'),(30,'Can change Token',8,'change_token'),(31,'Can delete Token',8,'delete_token'),(32,'Can view Token',8,'view_token'),(33,'Can add token',9,'add_tokenproxy'),(34,'Can change token',9,'change_tokenproxy'),(35,'Can delete token',9,'delete_tokenproxy'),(36,'Can view token',9,'view_tokenproxy'),(37,'Can add email address',10,'add_emailaddress'),(38,'Can change email address',10,'change_emailaddress'),(39,'Can delete email address',10,'delete_emailaddress'),(40,'Can view email address',10,'view_emailaddress'),(41,'Can add email confirmation',11,'add_emailconfirmation'),(42,'Can change email confirmation',11,'change_emailconfirmation'),(43,'Can delete email confirmation',11,'delete_emailconfirmation'),(44,'Can view email confirmation',11,'view_emailconfirmation'),(45,'Can add social account',12,'add_socialaccount'),(46,'Can change social account',12,'change_socialaccount'),(47,'Can delete social account',12,'delete_socialaccount'),(48,'Can view social account',12,'view_socialaccount'),(49,'Can add social application',13,'add_socialapp'),(50,'Can change social application',13,'change_socialapp'),(51,'Can delete social application',13,'delete_socialapp'),(52,'Can view social application',13,'view_socialapp'),(53,'Can add social application token',14,'add_socialtoken'),(54,'Can change social application token',14,'change_socialtoken'),(55,'Can delete social application token',14,'delete_socialtoken'),(56,'Can view social application token',14,'view_socialtoken'),(57,'Can add ref dev',15,'add_refdev'),(58,'Can change ref dev',15,'change_refdev'),(59,'Can delete ref dev',15,'delete_refdev'),(60,'Can view ref dev',15,'view_refdev'),(61,'Can add refs',16,'add_refs'),(62,'Can change refs',16,'change_refs'),(63,'Can delete refs',16,'delete_refs'),(64,'Can view refs',16,'view_refs'),(65,'Can add sms',17,'add_sms'),(66,'Can change sms',17,'change_sms'),(67,'Can delete sms',17,'delete_sms'),(68,'Can view sms',17,'view_sms'),(69,'Can add users',18,'add_users'),(70,'Can change users',18,'change_users'),(71,'Can delete users',18,'delete_users'),(72,'Can view users',18,'view_users'),(73,'Can add users ref',19,'add_usersref'),(74,'Can change users ref',19,'change_usersref'),(75,'Can delete users ref',19,'delete_usersref'),(76,'Can view users ref',19,'view_usersref'),(77,'Can add devices',20,'add_devices'),(78,'Can change devices',20,'change_devices'),(79,'Can delete devices',20,'delete_devices'),(80,'Can view devices',20,'view_devices'),(81,'Can add lastupdate',21,'add_lastupdate'),(82,'Can change lastupdate',21,'change_lastupdate'),(83,'Can delete lastupdate',21,'delete_lastupdate'),(84,'Can view lastupdate',21,'view_lastupdate');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-28 11:28:45
