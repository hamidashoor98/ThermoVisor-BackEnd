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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-05-31 12:01:06.484692'),(2,'auth','0001_initial','2021-05-31 12:01:07.563226'),(3,'account','0001_initial','2021-05-31 12:01:07.859676'),(4,'account','0002_email_max_length','2021-05-31 12:01:07.890913'),(5,'admin','0001_initial','2021-05-31 12:01:08.406784'),(6,'admin','0002_logentry_remove_auto_add','2021-05-31 12:01:08.422446'),(7,'admin','0003_logentry_add_action_flag_choices','2021-05-31 12:01:08.438034'),(8,'contenttypes','0002_remove_content_type_name','2021-05-31 12:01:08.672160'),(9,'auth','0002_alter_permission_name_max_length','2021-05-31 12:01:08.812722'),(10,'auth','0003_alter_user_email_max_length','2021-05-31 12:01:08.859948'),(11,'auth','0004_alter_user_username_opts','2021-05-31 12:01:08.875456'),(12,'auth','0005_alter_user_last_login_null','2021-05-31 12:01:08.969056'),(13,'auth','0006_require_contenttypes_0002','2021-05-31 12:01:08.984677'),(14,'auth','0007_alter_validators_add_error_messages','2021-05-31 12:01:09.000314'),(15,'auth','0008_alter_user_username_max_length','2021-05-31 12:01:09.531516'),(16,'auth','0009_alter_user_last_name_max_length','2021-05-31 12:01:09.719047'),(17,'auth','0010_alter_group_name_max_length','2021-05-31 12:01:09.765942'),(18,'auth','0011_update_proxy_permissions','2021-05-31 12:01:09.781840'),(19,'auth','0012_alter_user_first_name_max_length','2021-05-31 12:01:09.875291'),(20,'authtoken','0001_initial','2021-05-31 12:01:10.266050'),(21,'authtoken','0002_auto_20160226_1747','2021-05-31 12:01:10.328458'),(22,'authtoken','0003_tokenproxy','2021-05-31 12:01:10.328458'),(23,'posts','0001_initial','2021-05-31 12:01:10.344089'),(24,'sessions','0001_initial','2021-05-31 12:01:10.406762'),(25,'sites','0001_initial','2021-05-31 12:01:10.437908'),(26,'sites','0002_alter_domain_unique','2021-05-31 12:01:10.469081'),(27,'socialaccount','0001_initial','2021-05-31 12:01:11.656578'),(28,'socialaccount','0002_token_max_lengths','2021-05-31 12:01:11.781749'),(29,'socialaccount','0003_extra_data_default_dict','2021-05-31 12:01:11.797401'),(30,'account','0003_auto_20210531_1634','2021-05-31 12:08:57.453773'),(31,'socialaccount','0004_auto_20210531_1634','2021-05-31 12:08:58.484652');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
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
