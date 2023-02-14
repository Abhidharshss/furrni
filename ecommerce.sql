-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add address',7,'add_address'),(26,'Can change address',7,'change_address'),(27,'Can delete address',7,'delete_address'),(28,'Can view address',7,'view_address'),(29,'Can add cart',8,'add_cart'),(30,'Can change cart',8,'change_cart'),(31,'Can delete cart',8,'delete_cart'),(32,'Can view cart',8,'view_cart'),(33,'Can add category',9,'add_category'),(34,'Can change category',9,'change_category'),(35,'Can delete category',9,'delete_category'),(36,'Can view category',9,'view_category'),(37,'Can add coupon',10,'add_coupon'),(38,'Can change coupon',10,'change_coupon'),(39,'Can delete coupon',10,'delete_coupon'),(40,'Can view coupon',10,'view_coupon'),(41,'Can add order',11,'add_order'),(42,'Can change order',11,'change_order'),(43,'Can delete order',11,'delete_order'),(44,'Can view order',11,'view_order'),(45,'Can add product',12,'add_product'),(46,'Can change product',12,'change_product'),(47,'Can delete product',12,'delete_product'),(48,'Can view product',12,'view_product'),(49,'Can add user',13,'add_user'),(50,'Can change user',13,'change_user'),(51,'Can delete user',13,'delete_user'),(52,'Can view user',13,'view_user'),(53,'Can add wishlist',14,'add_wishlist'),(54,'Can change wishlist',14,'change_wishlist'),(55,'Can delete wishlist',14,'delete_wishlist'),(56,'Can view wishlist',14,'view_wishlist'),(57,'Can add wishlistitems',15,'add_wishlistitems'),(58,'Can change wishlistitems',15,'change_wishlistitems'),(59,'Can delete wishlistitems',15,'delete_wishlistitems'),(60,'Can view wishlistitems',15,'view_wishlistitems'),(61,'Can add orderitems',16,'add_orderitems'),(62,'Can change orderitems',16,'change_orderitems'),(63,'Can delete orderitems',16,'delete_orderitems'),(64,'Can view orderitems',16,'view_orderitems'),(65,'Can add cartitem',17,'add_cartitem'),(66,'Can change cartitem',17,'change_cartitem'),(67,'Can delete cartitem',17,'delete_cartitem'),(68,'Can view cartitem',17,'view_cartitem'),(69,'Can add banner',18,'add_banner'),(70,'Can change banner',18,'change_banner'),(71,'Can delete banner',18,'delete_banner'),(72,'Can view banner',18,'view_banner');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'project','address'),(18,'project','banner'),(8,'project','cart'),(17,'project','cartitem'),(9,'project','category'),(10,'project','coupon'),(11,'project','order'),(16,'project','orderitems'),(12,'project','product'),(13,'project','user'),(14,'project','wishlist'),(15,'project','wishlistitems'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-02-06 13:08:11.186445'),(2,'auth','0001_initial','2023-02-06 13:08:11.710061'),(3,'admin','0001_initial','2023-02-06 13:08:11.832218'),(4,'admin','0002_logentry_remove_auto_add','2023-02-06 13:08:11.841291'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-06 13:08:11.851126'),(6,'contenttypes','0002_remove_content_type_name','2023-02-06 13:08:11.997304'),(7,'auth','0002_alter_permission_name_max_length','2023-02-06 13:08:12.038484'),(8,'auth','0003_alter_user_email_max_length','2023-02-06 13:08:12.064766'),(9,'auth','0004_alter_user_username_opts','2023-02-06 13:08:12.072350'),(10,'auth','0005_alter_user_last_login_null','2023-02-06 13:08:12.119405'),(11,'auth','0006_require_contenttypes_0002','2023-02-06 13:08:12.123450'),(12,'auth','0007_alter_validators_add_error_messages','2023-02-06 13:08:12.131139'),(13,'auth','0008_alter_user_username_max_length','2023-02-06 13:08:12.181867'),(14,'auth','0009_alter_user_last_name_max_length','2023-02-06 13:08:12.225229'),(15,'auth','0010_alter_group_name_max_length','2023-02-06 13:08:12.250311'),(16,'auth','0011_update_proxy_permissions','2023-02-06 13:08:12.260199'),(17,'auth','0012_alter_user_first_name_max_length','2023-02-06 13:08:12.310040'),(18,'project','0001_initial','2023-02-06 13:08:12.983409'),(19,'sessions','0001_initial','2023-02-06 13:08:13.012569'),(20,'project','0002_auto_20230207_2241','2023-02-07 17:11:38.738518'),(21,'project','0003_banner','2023-02-10 09:51:01.624963'),(22,'project','0004_alter_product_discountprice','2023-02-11 15:28:55.191072'),(23,'project','0005_alter_product_discountprice','2023-02-11 15:28:55.197587');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0yhp4vbt5xwr47spgh22inlk5q2dqrbd','.eJyrViotTi3KS8xNVbJSSkzJzcxT0lEqys9B5mamKFkZ1wIAMNINdw:1pR5KX:AlrRxrWor0aFnGAxZag20VNoRvpGIIVFlMl9avoM-Os','2023-02-26 05:55:17.286767'),('2u74m2z8pj0r9f8cnikcdukv7r149cuu','e30:1pP5fO:IGvgt4sgx5E28yaG2oqRusDaRrGsWjfpbcucvG1yv-k','2023-02-20 17:52:34.360204'),('4zh16glzmd6be0w9wfa96a3o1jmolya6','.eJyrViotTi3KS8xNVbJSSkzJzcxT0lEqys9B5mamKFkZ1wIAMNINdw:1pQNzg:U9xefrjXxaMvg_13r6kSDUUeemAnWZB3EcjHysH-aEY','2023-02-24 07:38:52.046688'),('88fwx9gxmqv3r3uob5h1mjc64spo6tjb','.eJyrViotTi3KS8xNVbJSSkzJzcxT0lEqys9B5mamKFkZ1wIAMNINdw:1pPW48:aD98mJSaTM7JoaAYHOk6dn9UlYGtSljMcS2E_qhTMNU','2023-02-21 22:03:52.984659'),('88zdce7zlr0vvnglvg0msrftbnquvtlu','e30:1pPcvT:Z4iOKV567NqPdq4IimSZZsCSJsu4osQjPfZepv07TfU','2023-02-22 05:23:23.325895'),('9pggdismwh2n5uu6mqrfrwot2s5a6827','eyJ1c2VybmFtZSI6ImZpYmluIiwicm9sZSI6InVzZXIiLCJpZCI6Nn0:1pPzvb:mXj2iUWuin-5jUOhQ-kV0Dt6vcOSLvB-yuhPCzJBaMs','2023-02-23 05:57:03.223925'),('ddyu7gdhe5zo668vgo8f4ohqnlp9aw6y','.eJyrViotTi3KS8xNVbJSSkzJzcxT0lEqys9B5mamKFkZ1wIAMNINdw:1pPUzD:E04YPNuM-pZ4H8wVQQjgk0vkqKEkXmS4BOHF8Nhx8NY','2023-02-21 20:54:43.906783'),('fc5ukvekndmoqjs71hj606p168nl47o3','.eJyrViotTi3KS8xNVbJSSkzJzcxT0lEqys9B5mamKFkZ1wIAMNINdw:1pP5dz:gwIFhUh7UMnYTpjoCM-2YIJ7Co4sjT4N-ZLSZv_ud4g','2023-02-20 17:51:07.957022'),('gahqqjky8j6k4pgjgsj51zsq7etddwbr','eyJ1c2VybmFtZSI6ImZpYmluIiwicm9sZSI6InVzZXIiLCJpZCI6Nn0:1pQ1Wp:sj1PwlOff5K03k8E4LMaP0rnOxeT1mBkAXoCi7tDHHM','2023-02-23 07:39:35.431085'),('gwki9c1uzqkgqrkiwfhhudbnv9hlzw0m','eyJ1c2VybmFtZSI6ImZpYmluIiwicm9sZSI6InVzZXIiLCJpZCI6Nn0:1pQ39T:nQRP8pgCcgP6BHzhYgH7IevdOajlivRqkQcVJYAXyAE','2023-02-23 09:23:35.457947'),('hxx2bb049gn9poxf10ydmgckzgkdv81c','eyJ1c2VybmFtZSI6ImZpYmluIiwicm9sZSI6InVzZXIiLCJpZCI6Nn0:1pQUHd:ClsCvEma6A7bHMnMTDK8my3pr5KeP6epCKdlOT5dCQc','2023-02-24 14:21:49.884016'),('n11meemsgjvnaf3n64aidgnwa8pn5rwz','e30:1pQuNR:NWRhkdp7g6hW-PGfkXOfWr3394Z7VdHcdOo4lkfdE_Q','2023-02-25 18:13:33.643401'),('w7m0eius0qdqeke6lkf4ygfdzfr2kwfz','.eJyrViotTi3KS8xNVbJSSkzJzcxT0lEqys9B5mamKFkZ1wIAMNINdw:1pPW7J:b9snwtddGhKqTKCf6cg9oDqDt7P08HUiwjqp-s-v89E','2023-02-21 22:07:09.576741');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_address`
--

DROP TABLE IF EXISTS `project_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_address` (
  `addressid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `street` varchar(100) NOT NULL,
  `state` varchar(30) NOT NULL,
  `postalcode` varchar(10) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`addressid`),
  KEY `project_address_user_id_287eefad_fk_project_user_userid` (`user_id`),
  CONSTRAINT `project_address_user_id_287eefad_fk_project_user_userid` FOREIGN KEY (`user_id`) REFERENCES `project_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_address`
--

LOCK TABLES `project_address` WRITE;
/*!40000 ALTER TABLE `project_address` DISABLE KEYS */;
INSERT INTO `project_address` VALUES (1,'abhidharsh','subhash','elampalloor veedu temple nagar 405','kerala','691581','abhidharsh6@gmial.com','9645610883',2),(2,'qerwe','rdfsdasd','svasfbvgafvd','asdvasasd','34455643','abhi@gmail.com','345466745',1),(3,'sdvasdv','asdvasdvas','sdfasfgvasfdvasva','asvasdva','asdsdva','fibin@gmail.com','5467455667',6),(4,'dsvadfba','cvadfbadf','afbaefbaefb','dfbvsdf','45134','abhilash@gmail.com','3465872334',7),(5,'fibin','kummil','fibin nivas','kerala','691581','fibin@gmail.com','8765431223',4),(6,'althaf','mohammad','althaf manzil eravipuram','kerala','691582','althaf@gmail.com','8765344565',5);
/*!40000 ALTER TABLE `project_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_banner`
--

DROP TABLE IF EXISTS `project_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_banner` (
  `bannerid` int NOT NULL AUTO_INCREMENT,
  `banner` varchar(100) NOT NULL,
  PRIMARY KEY (`bannerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_banner`
--

LOCK TABLES `project_banner` WRITE;
/*!40000 ALTER TABLE `project_banner` DISABLE KEYS */;
INSERT INTO `project_banner` VALUES (1,'banners/couch.png');
/*!40000 ALTER TABLE `project_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cart`
--

DROP TABLE IF EXISTS `project_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_cart` (
  `cartid` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`cartid`),
  KEY `project_cart_user_id_a7912b68_fk_project_user_userid` (`user_id`),
  CONSTRAINT `project_cart_user_id_a7912b68_fk_project_user_userid` FOREIGN KEY (`user_id`) REFERENCES `project_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cart`
--

LOCK TABLES `project_cart` WRITE;
/*!40000 ALTER TABLE `project_cart` DISABLE KEYS */;
INSERT INTO `project_cart` VALUES (3,2),(8,5),(9,6);
/*!40000 ALTER TABLE `project_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cartitem`
--

DROP TABLE IF EXISTS `project_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_cartitem` (
  `cartitemid` int NOT NULL AUTO_INCREMENT,
  `quantity` bigint unsigned NOT NULL,
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`cartitemid`),
  KEY `project_cartitem_cart_id_83c55e21_fk_project_cart_cartid` (`cart_id`),
  KEY `project_cartitem_product_id_153a8cd3_fk_project_p` (`product_id`),
  CONSTRAINT `project_cartitem_cart_id_83c55e21_fk_project_cart_cartid` FOREIGN KEY (`cart_id`) REFERENCES `project_cart` (`cartid`),
  CONSTRAINT `project_cartitem_product_id_153a8cd3_fk_project_p` FOREIGN KEY (`product_id`) REFERENCES `project_product` (`productid`),
  CONSTRAINT `project_cartitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cartitem`
--

LOCK TABLES `project_cartitem` WRITE;
/*!40000 ALTER TABLE `project_cartitem` DISABLE KEYS */;
INSERT INTO `project_cartitem` VALUES (4,1,3,5),(9,1,8,6),(13,1,9,4),(16,2,9,5),(17,1,9,6);
/*!40000 ALTER TABLE `project_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_category`
--

DROP TABLE IF EXISTS `project_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_category` (
  `categoryid` int NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(20) NOT NULL,
  `offerpercentage` int DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_category`
--

LOCK TABLES `project_category` WRITE;
/*!40000 ALTER TABLE `project_category` DISABLE KEYS */;
INSERT INTO `project_category` VALUES (1,'chair',10),(2,'table',0),(3,'others',0);
/*!40000 ALTER TABLE `project_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_coupon`
--

DROP TABLE IF EXISTS `project_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_coupon` (
  `couponid` int NOT NULL AUTO_INCREMENT,
  `couponname` varchar(30) NOT NULL,
  `couponcode` varchar(20) NOT NULL,
  `expirytdate` date NOT NULL,
  `percentage` int NOT NULL,
  PRIMARY KEY (`couponid`),
  UNIQUE KEY `couponcode` (`couponcode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_coupon`
--

LOCK TABLES `project_coupon` WRITE;
/*!40000 ALTER TABLE `project_coupon` DISABLE KEYS */;
INSERT INTO `project_coupon` VALUES (1,'anniversary sale','anniversary20','2023-02-17',20),(2,'clearance offer','clear2022','2023-02-17',25),(3,'festival sale','festive35','2023-02-16',35);
/*!40000 ALTER TABLE `project_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_order`
--

DROP TABLE IF EXISTS `project_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_order` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `orderdate` datetime(6) NOT NULL,
  `ordernotes` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `totalamount` varchar(20) NOT NULL,
  `paymentmode` varchar(30) NOT NULL,
  `address_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `project_order_user_id_8d67b1ba_fk_project_user_userid` (`user_id`),
  KEY `project_order_address_id_7661b2d7_fk_project_address_addressid` (`address_id`),
  CONSTRAINT `project_order_address_id_7661b2d7_fk_project_address_addressid` FOREIGN KEY (`address_id`) REFERENCES `project_address` (`addressid`),
  CONSTRAINT `project_order_user_id_8d67b1ba_fk_project_user_userid` FOREIGN KEY (`user_id`) REFERENCES `project_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_order`
--

LOCK TABLES `project_order` WRITE;
/*!40000 ALTER TABLE `project_order` DISABLE KEYS */;
INSERT INTO `project_order` VALUES (1,'2023-02-06 17:41:12.707167','handel carefully while delivering','completed','11000','Paypal',1,2),(2,'2023-02-07 17:12:09.453112','','cancelled by admin','2520','paypal',1,2),(3,'2023-02-07 19:31:31.249967','','cancelled by admin','540','paypal',2,1),(4,'2023-02-07 19:41:08.161134','','refunded','1350','paypal',3,6),(5,'2023-02-07 20:28:33.351468','','cancelled by user','1008','paypal',4,7),(6,'2023-02-08 05:03:16.495550','','shipped','78750','paypal',5,4);
/*!40000 ALTER TABLE `project_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_orderitems`
--

DROP TABLE IF EXISTS `project_orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_orderitems` (
  `orderitemid` int NOT NULL AUTO_INCREMENT,
  `quantity` varchar(20) NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`orderitemid`),
  KEY `project_orderitems_order_id_47b4c650_fk_project_order_orderid` (`order_id`),
  KEY `project_orderitems_product_id_cb4a6dfb_fk_project_p` (`product_id`),
  CONSTRAINT `project_orderitems_order_id_47b4c650_fk_project_order_orderid` FOREIGN KEY (`order_id`) REFERENCES `project_order` (`orderid`),
  CONSTRAINT `project_orderitems_product_id_cb4a6dfb_fk_project_p` FOREIGN KEY (`product_id`) REFERENCES `project_product` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_orderitems`
--

LOCK TABLES `project_orderitems` WRITE;
/*!40000 ALTER TABLE `project_orderitems` DISABLE KEYS */;
INSERT INTO `project_orderitems` VALUES (1,'2',1,4),(2,'1',1,5),(3,'2',2,4),(4,'1',3,7),(5,'1',4,4),(6,'2',5,7),(7,'15',6,5);
/*!40000 ALTER TABLE `project_orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_product`
--

DROP TABLE IF EXISTS `project_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_product` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `productname` varchar(30) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `discountprice` int NOT NULL,
  `offerpercentage` int DEFAULT NULL,
  `provider` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `project_product_category_id_73009c98_fk_project_c` (`category_id`),
  CONSTRAINT `project_product_category_id_73009c98_fk_project_c` FOREIGN KEY (`category_id`) REFERENCES `project_category` (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_product`
--

LOCK TABLES `project_product` WRITE;
/*!40000 ALTER TABLE `project_product` DISABLE KEYS */;
INSERT INTO `project_product` VALUES (4,'cushened chair','15','2000',1800,10,'mozart','products/daniil-silantev-1P6AnKDw6S8-unsplash.jpg','My Art Design - Faux Leather 1 (One) White Chair for Cafe, Office, Hotel, Home, Living Room, Dining Room, Bed Room, Side Chair, Accent Chair Modern & Designer Chair',1),(5,'wooden table','6','7000',7000,0,'hirawood','products/pexels-engin-akyurt-2092058.jpg','PAZANO Multipurpose Engineered Wood Finish Office Table Computer Desk (90x60x75cm) Modern Sturdy Office Desk PC Laptop Study Writing Table for Home Office',2),(6,'chair,table combo','33','13000',13000,0,'popular woods','products/michael-warf-f8egRYt5RGk-unsplash.jpg','Corazzin Garden Patio Seating Chair and Table Set Balcony Outdoor Furniture ',3),(7,'heighted tool','25','800',720,10,'mozart','products/ruslan-bardash-4kTbAMRAHtQ-unsplash.jpg','Whizzo 20 Inches Super Strong Folding Step Stool for Adults and Kids, Kitchen Stepping Stools, Garden Step Stool Kitchen Stool',1);
/*!40000 ALTER TABLE `project_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_user`
--

DROP TABLE IF EXISTS `project_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `email` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `role` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_user`
--

LOCK TABLES `project_user` WRITE;
/*!40000 ALTER TABLE `project_user` DISABLE KEYS */;
INSERT INTO `project_user` VALUES (1,'amalpanilkumar2016@gmail.com','amalanilkumar','Amal@123','8756344565','user','True'),(2,'abhidharsh6@gmail.com','Abhidharsh','Abhi@123','9645610883','user','True'),(3,'admin@gmail.com','admin','admin','8756344567','admin','True'),(4,'sheejasubhash8714@gmail.com','fibin','Sheeja@123','8714356849','user','True'),(5,'althaf@gmail.com','althaf','althaf','5634567564','user','True'),(6,'fibin@gmail.com','fibin','fibin','5634567563','user','True'),(7,'abhilash@gmail.com','abhilash','abhilash','5634567561','user','True');
/*!40000 ALTER TABLE `project_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_wishlist`
--

DROP TABLE IF EXISTS `project_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_wishlist` (
  `wishlistid` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`wishlistid`),
  KEY `project_wishlist_user_id_58357926_fk_project_user_userid` (`user_id`),
  CONSTRAINT `project_wishlist_user_id_58357926_fk_project_user_userid` FOREIGN KEY (`user_id`) REFERENCES `project_user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_wishlist`
--

LOCK TABLES `project_wishlist` WRITE;
/*!40000 ALTER TABLE `project_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_wishlistitems`
--

DROP TABLE IF EXISTS `project_wishlistitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_wishlistitems` (
  `wishlistitemsid` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `wishlist_id` int NOT NULL,
  PRIMARY KEY (`wishlistitemsid`),
  KEY `project_wishlistitem_product_id_42ac5348_fk_project_p` (`product_id`),
  KEY `project_wishlistitem_wishlist_id_9cc182ec_fk_project_w` (`wishlist_id`),
  CONSTRAINT `project_wishlistitem_product_id_42ac5348_fk_project_p` FOREIGN KEY (`product_id`) REFERENCES `project_product` (`productid`),
  CONSTRAINT `project_wishlistitem_wishlist_id_9cc182ec_fk_project_w` FOREIGN KEY (`wishlist_id`) REFERENCES `project_wishlist` (`wishlistid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_wishlistitems`
--

LOCK TABLES `project_wishlistitems` WRITE;
/*!40000 ALTER TABLE `project_wishlistitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_wishlistitems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-14 15:56:11
