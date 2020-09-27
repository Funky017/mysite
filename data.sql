-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add blog',7,'add_blog'),(26,'Can change blog',7,'change_blog'),(27,'Can delete blog',7,'delete_blog'),(28,'Can view blog',7,'view_blog'),(29,'Can add blog type',8,'add_blogtype'),(30,'Can change blog type',8,'change_blogtype'),(31,'Can delete blog type',8,'delete_blogtype'),(32,'Can view blog type',8,'view_blogtype'),(33,'Can add read num',9,'add_readnum'),(34,'Can change read num',9,'change_readnum'),(35,'Can delete read num',9,'delete_readnum'),(36,'Can view read num',9,'view_readnum'),(37,'Can add read num',10,'add_readnum'),(38,'Can change read num',10,'change_readnum'),(39,'Can delete read num',10,'delete_readnum'),(40,'Can view read num',10,'view_readnum'),(41,'Can add read detail',11,'add_readdetail'),(42,'Can change read detail',11,'change_readdetail'),(43,'Can delete read detail',11,'delete_readdetail'),(44,'Can view read detail',11,'view_readdetail'),(45,'Can add comment',12,'add_comment'),(46,'Can change comment',12,'change_comment'),(47,'Can delete comment',12,'delete_comment'),(48,'Can view comment',12,'view_comment'),(49,'Can add like record',13,'add_likerecord'),(50,'Can change like record',13,'change_likerecord'),(51,'Can delete like record',13,'delete_likerecord'),(52,'Can view like record',13,'view_likerecord'),(53,'Can add like count',14,'add_likecount'),(54,'Can change like count',14,'change_likecount'),(55,'Can delete like count',14,'delete_likecount'),(56,'Can view like count',14,'view_likecount'),(57,'Can add profile',15,'add_profile'),(58,'Can change profile',15,'change_profile'),(59,'Can delete profile',15,'delete_profile'),(60,'Can view profile',15,'view_profile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$ijtEijcbI2QI$VpXCazSBMZS+m35ITlvAF1tidYCfcKnlEROfhycQpxc=','2020-09-27 11:05:21.963424',1,'admin','','','',1,1,'2020-05-30 17:09:08.346000'),(2,'pbkdf2_sha256$150000$LKeMpqKKKzbO$x2h8SkUKbRj47ciDracHs72dHX8cniLdFOWnfZ1lXfQ=','2020-09-22 00:28:43.284000',0,'cj1','','','1@qq.com',0,1,'2020-09-12 00:33:40.878000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `last_update_time` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (1,'第一篇博客','123','2020-05-30 17:18:03.585000','2020-09-01 15:30:26.947000',1,1),(2,'第二篇博客','1231','2020-05-31 10:34:10.317000','2020-09-01 15:31:54.988000',1,1),(3,'长篇博客','啊啊发大水发生啊啊发大水发生<b>啊啊发大水</b>发生啊啊发大水发生啊啊<br>发大水发生啊啊发大水发生啊啊发大','2020-05-31 11:04:58.510000','2020-07-29 07:56:29.133000',1,1),(4,'shell下的博客','xxxxxxx','2020-06-14 09:40:55.862000','2020-06-14 09:40:55.862000',1,1),(5,'for 1','xxx:1','2020-06-14 15:45:39.768000','2020-06-14 15:45:39.768000',1,1),(6,'for 2','xxx:2','2020-06-14 15:45:39.772000','2020-06-14 15:45:39.772000',1,1),(7,'for 3','xxx:3','2020-06-14 15:45:39.775000','2020-06-14 15:45:39.775000',1,1),(8,'for 4','xxx:4','2020-06-14 15:45:39.777000','2020-06-14 15:45:39.777000',1,1),(9,'for 5','xxx:5','2020-06-14 15:45:39.780000','2020-06-14 15:45:39.780000',1,1),(10,'for 6','xxx:6','2020-06-14 15:45:39.782000','2020-06-14 15:45:39.782000',1,1),(11,'for 7','xxx:7','2020-06-14 15:45:39.786000','2020-06-14 15:45:39.786000',1,1),(12,'for 8','xxx:8','2020-06-14 15:45:39.788000','2020-06-14 15:45:39.788000',1,1),(13,'for 9','xxx:9','2020-06-14 15:45:39.791000','2020-06-14 15:45:39.791000',1,1),(14,'for 10','xxx:10','2020-06-14 15:45:39.793000','2020-06-14 15:45:39.793000',1,1),(15,'for 11','xxx:11','2020-06-14 15:45:39.795000','2020-06-14 15:45:39.795000',1,1),(16,'for 12','xxx:12','2020-06-14 15:45:39.798000','2020-06-14 15:45:39.798000',1,1),(17,'for 13','xxx:13','2020-06-14 15:45:39.800000','2020-06-14 15:45:39.800000',1,1),(18,'for 14','xxx:14','2020-06-14 15:45:39.806000','2020-06-14 15:45:39.806000',1,1),(19,'for 15','xxx:15','2020-06-14 15:45:39.808000','2020-06-14 15:45:39.808000',1,1),(20,'for 16','xxx:16','2020-06-14 15:45:39.811000','2020-06-14 15:45:39.811000',1,1),(21,'for 17','xxx:17','2020-06-14 15:45:39.814000','2020-06-14 15:45:39.814000',1,1),(22,'for 18','xxx:18','2020-06-14 15:45:39.816000','2020-06-14 15:45:39.816000',1,1),(23,'for 19','xxx:19','2020-06-14 15:45:39.820000','2020-06-14 15:45:39.820000',1,1),(24,'for 20','xxx:20','2020-06-14 15:45:39.822000','2020-06-14 15:45:39.822000',1,1),(25,'for 21','xxx:21','2020-06-14 15:45:39.825000','2020-06-14 15:45:39.825000',1,1),(26,'for 22','xxx:22','2020-06-14 15:45:39.827000','2020-06-14 15:45:39.827000',1,1),(27,'for 23','xxx:23','2020-06-14 15:45:39.829000','2020-06-14 15:45:39.829000',1,1),(28,'for 24','xxx:24','2020-06-14 15:45:39.832000','2020-06-14 15:45:39.832000',1,1),(29,'for 25','xxx:25','2020-06-14 15:45:39.835000','2020-06-14 15:45:39.835000',1,1),(30,'for 26','xxx:26','2020-06-14 15:45:39.838000','2020-06-14 15:45:39.838000',1,1),(31,'for 27','xxx:27','2020-06-14 15:45:39.840000','2020-06-14 15:45:39.840000',1,1),(32,'for 28','<p><img alt=\"\" src=\"/media/2020/07/30/2008524.jpg\" style=\"height:240px\" />xxx:28</p>','2020-06-14 15:45:39.843000','2020-07-30 05:42:53.681000',1,1),(33,'for 29','xxx:29','2020-06-14 15:45:39.845000','2020-09-01 15:41:49.076000',1,1),(34,'for 30','<p><strong>xxx:30</strong></p>','2020-06-14 15:45:39.848000','2020-09-01 15:43:42.173000',1,1);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blogtype`
--

DROP TABLE IF EXISTS `blog_blogtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blogtype`
--

LOCK TABLES `blog_blogtype` WRITE;
/*!40000 ALTER TABLE `blog_blogtype` DISABLE KEYS */;
INSERT INTO `blog_blogtype` VALUES (1,'Django'),(2,'感悟'),(3,'随笔');
/*!40000 ALTER TABLE `blog_blogtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_comment`
--

DROP TABLE IF EXISTS `comment_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `reply_to_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  KEY `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` (`reply_to_id`),
  KEY `comment_comment_parent_id_b612524c_fk_comment_comment_id` (`parent_id`),
  KEY `comment_comment_root_id_28721811_fk_comment_comment_id` (`root_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_parent_id_b612524c_fk_comment_comment_id` FOREIGN KEY (`parent_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_reply_to_id_e0adcef8_fk_auth_user_id` FOREIGN KEY (`reply_to_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `comment_comment_root_id_28721811_fk_comment_comment_id` FOREIGN KEY (`root_id`) REFERENCES `comment_comment` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_comment`
--

LOCK TABLES `comment_comment` WRITE;
/*!40000 ALTER TABLE `comment_comment` DISABLE KEYS */;
INSERT INTO `comment_comment` VALUES (2,34,'1111','2020-09-10 18:57:12.323000',7,1,NULL,NULL,NULL),(3,34,'123','2020-09-13 20:18:31.888000',7,2,NULL,NULL,NULL),(4,34,'4444','2020-09-13 23:54:20.592000',7,2,NULL,NULL,NULL),(6,34,'<p>68</p>','2020-09-14 21:52:17.119000',7,2,NULL,NULL,NULL),(7,34,'<p>68</p>','2020-09-14 21:52:26.531000',7,2,NULL,NULL,NULL),(8,34,'<p>68141</p>','2020-09-14 21:52:30.095000',7,2,NULL,NULL,NULL),(9,34,'<p>68141</p>','2020-09-14 21:52:30.581000',7,2,NULL,NULL,NULL),(10,34,'<p>68141</p>','2020-09-14 21:52:30.742000',7,2,NULL,NULL,NULL),(11,34,'<p>68141</p>','2020-09-14 21:52:30.893000',7,2,NULL,NULL,NULL),(12,34,'<p>tyu</p>','2020-09-14 21:53:42.322000',7,2,NULL,NULL,NULL),(13,34,'<p>14414</p>','2020-09-14 22:06:49.829000',7,2,NULL,NULL,NULL),(14,34,'<p>3636</p>','2020-09-14 22:07:35.751000',7,2,NULL,NULL,NULL),(15,34,'<p>37</p>','2020-09-14 22:07:47.250000',7,2,NULL,NULL,NULL),(16,34,'<p>37154</p>','2020-09-14 22:08:45.472000',7,2,NULL,NULL,NULL),(17,34,'<p>14</p>','2020-09-14 22:08:48.642000',7,2,NULL,NULL,NULL),(18,34,'<p>14</p>','2020-09-14 22:08:57.032000',7,2,NULL,NULL,NULL),(19,34,'<p>14</p>','2020-09-14 22:08:58.241000',7,2,NULL,NULL,NULL),(20,34,'<p>14</p>','2020-09-14 22:08:58.539000',7,2,NULL,NULL,NULL),(21,34,'<p>14</p>','2020-09-14 22:09:23.663000',7,2,NULL,NULL,NULL),(22,34,'<p>123</p>','2020-09-14 22:10:26.989000',7,2,NULL,NULL,NULL),(23,34,'<p>14</p>','2020-09-14 22:34:00.836000',7,2,NULL,NULL,NULL),(24,34,'<p>141</p>','2020-09-14 22:34:18.200000',7,2,NULL,NULL,NULL),(25,34,'<p>4</p>','2020-09-14 22:37:59.699000',7,2,NULL,NULL,NULL),(26,34,'123','2020-09-15 23:54:29.391000',7,1,25,2,25),(27,34,'<p>555</p>','2020-09-16 16:45:13.425000',7,1,NULL,NULL,NULL),(28,34,'<p>454</p>','2020-09-16 17:19:04.179000',7,1,NULL,NULL,NULL),(31,29,'<p>123</p>','2020-09-16 22:18:17.128000',7,1,NULL,NULL,NULL),(32,32,'<p>123</p>','2020-09-17 12:41:48.128000',7,1,NULL,NULL,NULL),(33,32,'<p>456</p>','2020-09-17 12:41:56.071000',7,1,32,1,32),(35,34,'<p>13</p>','2020-09-18 21:27:20.450000',7,1,28,1,28);
/*!40000 ALTER TABLE `comment_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-05-30 17:14:35.109000','1','BlogType object (1)',1,'[{\"added\": {}}]',8,1),(2,'2020-05-30 17:14:50.881000','2','BlogType object (2)',1,'[{\"added\": {}}]',8,1),(3,'2020-05-30 17:14:54.863000','3','BlogType object (3)',1,'[{\"added\": {}}]',8,1),(4,'2020-05-30 17:18:03.586000','1','<Blog 第一篇博客>',1,'[{\"added\": {}}]',7,1),(5,'2020-05-31 10:34:10.318000','2','<Blog 第二篇博客>',1,'[{\"added\": {}}]',7,1),(6,'2020-05-31 11:04:58.511000','3','<Blog 长篇博客>',1,'[{\"added\": {}}]',7,1),(7,'2020-07-29 07:50:05.924000','3','<Blog 长篇博客>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(8,'2020-07-29 07:56:29.134000','3','<Blog 长篇博客>',2,'[]',7,1),(9,'2020-07-29 08:16:59.980000','34','<Blog for 30>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(10,'2020-07-30 05:34:17.417000','32','<Blog for 28>',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(11,'2020-07-30 13:18:16.727000','1','ReadNum object (1)',1,'[{\"added\": {}}]',9,1),(12,'2020-09-03 10:42:41.781000','1','ReadNum object (1)',1,'[{\"added\": {}}]',10,1),(13,'2020-09-03 14:07:21.034000','1','ReadNum object (1)',2,'[{\"changed\": {\"fields\": [\"object_id\"]}}]',10,1),(14,'2020-09-05 07:38:02.769000','1','ReadDetail object (1)',1,'[{\"added\": {}}]',11,1),(15,'2020-09-15 23:54:29.392000','26','Comment object (26)',1,'[{\"added\": {}}]',12,1),(16,'2020-09-16 00:00:33.362000','26','123',2,'[{\"changed\": {\"fields\": [\"parent\"]}}]',12,1),(17,'2020-09-16 03:13:04.657000','26','123',2,'[{\"changed\": {\"fields\": [\"root\", \"reply_to\"]}}]',12,1),(18,'2020-09-16 03:16:47.379000','26','123',2,'[{\"changed\": {\"fields\": [\"user\"]}}]',12,1),(19,'2020-09-16 03:17:06.049000','26','123',2,'[{\"changed\": {\"fields\": [\"user\", \"reply_to\"]}}]',12,1),(20,'2020-09-17 21:27:52.348000','1','22',3,'',12,1),(21,'2020-09-17 21:28:02.917000','5','<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>',3,'',12,1),(22,'2020-09-17 21:31:01.347000','29','<p>13</p>',3,'',12,1),(23,'2020-09-17 21:33:58.311000','29','<p>13</p>',3,'',12,1),(24,'2020-09-17 21:34:23.404000','34','<p>124123</p>',3,'',12,1),(25,'2020-09-22 00:08:20.415000','1','<Profile: cj for admin>',1,'[{\"added\": {}}]',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','blog'),(8,'blog','blogtype'),(9,'blog','readnum'),(12,'comment','comment'),(5,'contenttypes','contenttype'),(14,'likes','likecount'),(13,'likes','likerecord'),(11,'read_statistics','readdetail'),(10,'read_statistics','readnum'),(6,'sessions','session'),(15,'user','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-09-27 10:53:07.954135'),(2,'auth','0001_initial','2020-09-27 10:53:08.117282'),(3,'admin','0001_initial','2020-09-27 10:53:08.621741'),(4,'admin','0002_logentry_remove_auto_add','2020-09-27 10:53:08.736846'),(5,'admin','0003_logentry_add_action_flag_choices','2020-09-27 10:53:08.744854'),(6,'contenttypes','0002_remove_content_type_name','2020-09-27 10:53:08.858957'),(7,'auth','0002_alter_permission_name_max_length','2020-09-27 10:53:08.923016'),(8,'auth','0003_alter_user_email_max_length','2020-09-27 10:53:08.943034'),(9,'auth','0004_alter_user_username_opts','2020-09-27 10:53:08.951041'),(10,'auth','0005_alter_user_last_login_null','2020-09-27 10:53:09.015099'),(11,'auth','0006_require_contenttypes_0002','2020-09-27 10:53:09.018102'),(12,'auth','0007_alter_validators_add_error_messages','2020-09-27 10:53:09.026110'),(13,'auth','0008_alter_user_username_max_length','2020-09-27 10:53:09.084162'),(14,'auth','0009_alter_user_last_name_max_length','2020-09-27 10:53:09.162233'),(15,'auth','0010_alter_group_name_max_length','2020-09-27 10:53:09.181250'),(16,'auth','0011_update_proxy_permissions','2020-09-27 10:53:09.189258'),(17,'blog','0001_initial','2020-09-27 10:53:09.260322'),(18,'blog','0002_auto_20200616_2242','2020-09-27 10:53:09.393443'),(19,'blog','0003_auto_20200729_1614','2020-09-27 10:53:09.401451'),(20,'blog','0004_auto_20200730_1332','2020-09-27 10:53:09.408457'),(21,'blog','0005_blog_readed_num','2020-09-27 10:53:09.433480'),(22,'blog','0006_auto_20200730_2115','2020-09-27 10:53:09.522561'),(23,'blog','0007_delete_readnum','2020-09-27 10:53:09.601633'),(24,'comment','0001_initial','2020-09-27 10:53:09.635664'),(25,'comment','0002_auto_20200915_2349','2020-09-27 10:53:09.794809'),(26,'comment','0003_auto_20200915_2359','2020-09-27 10:53:09.892898'),(27,'comment','0004_auto_20200916_0015','2020-09-27 10:53:10.073062'),(28,'comment','0005_auto_20200916_0304','2020-09-27 10:53:10.257230'),(29,'comment','0006_auto_20200917_2215','2020-09-27 10:53:10.320287'),(30,'likes','0001_initial','2020-09-27 10:53:10.383344'),(31,'read_statistics','0001_initial','2020-09-27 10:53:10.576520'),(32,'read_statistics','0002_readdetail','2020-09-27 10:53:10.668604'),(33,'sessions','0001_initial','2020-09-27 10:53:10.757685'),(34,'user','0001_initial','2020-09-27 10:53:10.802726');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0cxom8kyv7el7xxt45p5fmnuyz22v01h','NGJkZGE1Y2VjZjFhZjVmYTczNTNiZDY4N2NkNDYxYzg1YTVjNGE1Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjcwNDdkZThhY2JhN2MwNWNlZGUyODg0ZGQwOGY5NTViMjBiMWY3In0=','2020-08-12 07:46:40.012000'),('3jsck1u55bbm3564isjo9fpegybyscgy','NGJkZGE1Y2VjZjFhZjVmYTczNTNiZDY4N2NkNDYxYzg1YTVjNGE1Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjcwNDdkZThhY2JhN2MwNWNlZGUyODg0ZGQwOGY5NTViMjBiMWY3In0=','2020-10-08 20:09:15.839000'),('fqyjw6b08lr55al2rk6vzaa6rpfxrkdx','NmFiNTA1ZTZlODNkODkyNjZmOWZhZGEwNzQ2NmUwNDg4YjAxNGU0NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjcwNDdkZThhY2JhN2MwNWNlZGUyODg0ZGQwOGY5NTViMjBiMWY3IiwiYmluZ19lbWFpbF9jb2RlIjoiNENkdiJ9','2020-10-08 17:07:13.017000'),('ha99zi1nspl1y9snhwvrtir82k1kp0v0','NGJkZGE1Y2VjZjFhZjVmYTczNTNiZDY4N2NkNDYxYzg1YTVjNGE1Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjcwNDdkZThhY2JhN2MwNWNlZGUyODg0ZGQwOGY5NTViMjBiMWY3In0=','2020-06-13 17:13:59.214000'),('qz4laarnzoij3hw2p0dvvy6kkz1xrnv8','NGJkZGE1Y2VjZjFhZjVmYTczNTNiZDY4N2NkNDYxYzg1YTVjNGE1Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjcwNDdkZThhY2JhN2MwNWNlZGUyODg0ZGQwOGY5NTViMjBiMWY3In0=','2020-10-11 11:05:21.966427'),('yfbjugpmefiuj96vlodotg9l2y2kl96a','NGJkZGE1Y2VjZjFhZjVmYTczNTNiZDY4N2NkNDYxYzg1YTVjNGE1Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjcwNDdkZThhY2JhN2MwNWNlZGUyODg0ZGQwOGY5NTViMjBiMWY3In0=','2020-10-08 18:05:51.568000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likecount`
--

DROP TABLE IF EXISTS `likes_likecount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likecount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_num` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likecount_content_type_id_a33eb91e_fk_django_co` (`content_type_id`),
  CONSTRAINT `likes_likecount_content_type_id_a33eb91e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likecount`
--

LOCK TABLES `likes_likecount` WRITE;
/*!40000 ALTER TABLE `likes_likecount` DISABLE KEYS */;
INSERT INTO `likes_likecount` VALUES (1,33,1,7),(2,34,0,7),(3,32,0,7),(4,31,0,7),(5,30,0,7),(6,29,0,7),(7,28,0,7),(8,28,0,12),(9,27,0,12),(10,25,0,12),(11,26,0,12),(12,24,0,12),(13,23,0,12),(14,22,0,12),(15,21,0,12),(16,20,0,12),(17,19,0,12),(18,18,0,12),(19,17,0,12),(20,16,0,12),(21,15,0,12),(22,14,0,12),(23,13,0,12),(24,12,0,12),(25,11,0,12),(26,10,0,12),(27,9,0,12),(28,8,0,12),(29,7,0,12),(30,6,0,12),(31,4,0,12),(32,3,0,12),(33,2,0,12),(34,35,0,12);
/*!40000 ALTER TABLE `likes_likecount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes_likerecord`
--

DROP TABLE IF EXISTS `likes_likerecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes_likerecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `liked_time` datetime(6) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_likerecord_content_type_id_4e35de35_fk_django_co` (`content_type_id`),
  KEY `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` (`user_id`),
  CONSTRAINT `likes_likerecord_content_type_id_4e35de35_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `likes_likerecord_user_id_c85b88bd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes_likerecord`
--

LOCK TABLES `likes_likerecord` WRITE;
/*!40000 ALTER TABLE `likes_likerecord` DISABLE KEYS */;
INSERT INTO `likes_likerecord` VALUES (1,33,'2020-09-18 14:19:20.250000',7,1);
/*!40000 ALTER TABLE `likes_likerecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_cache_table`
--

DROP TABLE IF EXISTS `my_cache_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_cache_table`
--

LOCK TABLES `my_cache_table` WRITE;
/*!40000 ALTER TABLE `my_cache_table` DISABLE KEYS */;
INSERT INTO `my_cache_table` VALUES (':1:hot_blogs_for_7_days','gASVeAoAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjAtibG9nLm1vZGVsc5SMBEJsb2eUk5SMA19kYpROjAZfaGludHOUfZSMBXF1ZXJ5lIwaZGphbmdvLmRiLm1vZGVscy5zcWwucXVlcnmUjAVRdWVyeZSTlCmBlH2UKGgFaAiMDmFsaWFzX3JlZmNvdW50lH2UKIwJYmxvZ19ibG9nlEsEjBpyZWFkX3N0YXRpc3RpY3NfcmVhZGRldGFpbJRLA3WMCWFsaWFzX21hcJSMC2NvbGxlY3Rpb25zlIwLT3JkZXJlZERpY3SUk5QpUpQoaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHViaBVoG4wESm9pbpSTlCmBlH2UKGggaBWMDHBhcmVudF9hbGlhc5RoFGghaBWMCWpvaW5fdHlwZZSMCklOTkVSIEpPSU6UjAlqb2luX2NvbHOUjAJpZJSMCW9iamVjdF9pZJSGlIWUjApqb2luX2ZpZWxklIwiZGphbmdvLmNvbnRyaWIuY29udGVudHR5cGVzLmZpZWxkc5SMCkdlbmVyaWNSZWyUk5QpgZR9lCiMBWZpZWxklIwXZGphbmdvLmRiLm1vZGVscy5maWVsZHOUjAtfbG9hZF9maWVsZJSTlIwEYmxvZ5RoB4wMcmVhZF9kZXRhaWxzlIeUUpRoBYwWcmVhZF9zdGF0aXN0aWNzLm1vZGVsc5SMClJlYWREZXRhaWyUk5SMDHJlbGF0ZWRfbmFtZZSMASuUjBJyZWxhdGVkX3F1ZXJ5X25hbWWUTowQbGltaXRfY2hvaWNlc190b5R9lIwLcGFyZW50X2xpbmuUiYwJb25fZGVsZXRllIwZZGphbmdvLmRiLm1vZGVscy5kZWxldGlvbpSMCkRPX05PVEhJTkeUk5SMC3N5bW1ldHJpY2FslImMCG11bHRpcGxllIh1YowIbnVsbGFibGWUiIwRZmlsdGVyZWRfcmVsYXRpb26UTnVidYwQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UKGgUXZRoFGFoFV2UaBVhdYwMZGVmYXVsdF9jb2xzlImMEGRlZmF1bHRfb3JkZXJpbmeUiIwRc3RhbmRhcmRfb3JkZXJpbmeUiIwMdXNlZF9hbGlhc2VzlI+UjBBmaWx0ZXJfaXNfc3RpY2t5lImMCHN1YnF1ZXJ5lImMBnNlbGVjdJSMHGRqYW5nby5kYi5tb2RlbHMuZXhwcmVzc2lvbnOUjANDb2yUk5QpgZR9lCiMEV9jb25zdHJ1Y3Rvcl9hcmdzlGgUaDdoOGgHaCqHlFKUhpR9lIaUjAxvdXRwdXRfZmllbGSUaGKMBWFsaWFzlGgUjAZ0YXJnZXSUaGJ1YmhdKYGUfZQoaGBoFGg3aDhoB4wFdGl0bGWUh5RSlIaUfZSGlGhmaG1oZ2gUaGhobXVihpSMBXdoZXJllIwaZGphbmdvLmRiLm1vZGVscy5zcWwud2hlcmWUjAlXaGVyZU5vZGWUk5QpgZR9lCiMCGNoaWxkcmVulF2UKIwYZGphbmdvLmRiLm1vZGVscy5sb29rdXBzlIwSR3JlYXRlclRoYW5PckVxdWFslJOUKYGUfZQojANsaHOUaF0pgZR9lChoYGgVaDeMD3JlYWRfc3RhdGlzdGljc5RoPYwEZGF0ZZSHlFKUhpR9lIaUaGZohWhnaBVoaGiFjBJjb250YWluc19hZ2dyZWdhdGWUiXVijANyaHOUjAhkYXRldGltZZSMCGRhdGV0aW1llJOUQwoH5AkUAAAAAAAAlIWUUpSMFGJpbGF0ZXJhbF90cmFuc2Zvcm1zlF2UaImJdWJoeowITGVzc1RoYW6Uk5QpgZR9lChof2iAaIpojUMKB+QJGwAAAAAAAJSFlFKUaJFdlGiJiXViZYwJY29ubmVjdG9ylIwDQU5ElIwHbmVnYXRlZJSJaImJdWKMC3doZXJlX2NsYXNzlGh1jAhncm91cF9ieZRoXmhphpSMCG9yZGVyX2J5lIwNLXJlYWRfbnVtX3N1bZSFlIwIbG93X21hcmuUSwCMCWhpZ2hfbWFya5RLB4wIZGlzdGluY3SUiYwPZGlzdGluY3RfZmllbGRzlCmMEXNlbGVjdF9mb3JfdXBkYXRllImMGHNlbGVjdF9mb3JfdXBkYXRlX25vd2FpdJSJjB1zZWxlY3RfZm9yX3VwZGF0ZV9za2lwX2xvY2tlZJSJjBRzZWxlY3RfZm9yX3VwZGF0ZV9vZpQpjA5zZWxlY3RfcmVsYXRlZJSJjAltYXhfZGVwdGiUSwWMDXZhbHVlc19zZWxlY3SUaCpoa4aUjAxfYW5ub3RhdGlvbnOUaBkpUpSMDHJlYWRfbnVtX3N1bZSMG2RqYW5nby5kYi5tb2RlbHMuYWdncmVnYXRlc5SMA1N1bZSTlCmBlH2UKGhgjBZyZWFkX2RldGFpbHNfX3JlYWRfbnVtlIWUfZSGlGimiYwGZmlsdGVylE6MEnNvdXJjZV9leHByZXNzaW9uc5RdlGhdKYGUfZQoaGBoFWg3aIJoPYwIcmVhZF9udW2Uh5RSlIaUfZSGlGhmaMNoZ2gVaGhow4wVX291dHB1dF9maWVsZF9vcl9ub25llGjDaImJdWJhjAVleHRyYZR9lIwKaXNfc3VtbWFyeZSJaGZow3Vic4wWYW5ub3RhdGlvbl9zZWxlY3RfbWFza5SPlChospCMGF9hbm5vdGF0aW9uX3NlbGVjdF9jYWNoZZRoGSlSlGiyaLZzjApjb21iaW5hdG9ylE6MDmNvbWJpbmF0b3JfYWxslImMEGNvbWJpbmVkX3F1ZXJpZXOUKYwGX2V4dHJhlE6MEWV4dHJhX3NlbGVjdF9tYXNrlI+UjBNfZXh0cmFfc2VsZWN0X2NhY2hllE6MDGV4dHJhX3RhYmxlc5QpjA5leHRyYV9vcmRlcl9ieZQpjBBkZWZlcnJlZF9sb2FkaW5nlCiRlIiGlIwTX2ZpbHRlcmVkX3JlbGF0aW9uc5R9lIwNZXhwbGFpbl9xdWVyeZSJjA5leHBsYWluX2Zvcm1hdJROjA9leHBsYWluX29wdGlvbnOUfZSMDV9sb29rdXBfam9pbnOUXZQoaBRoFWWMCmJhc2VfdGFibGWUaBR1YowNX3Jlc3VsdF9jYWNoZZRdlIwOX3N0aWNreV9maWx0ZXKUiYwKX2Zvcl93cml0ZZSJjBlfcHJlZmV0Y2hfcmVsYXRlZF9sb29rdXBzlCmMDl9wcmVmZXRjaF9kb25llImMFl9rbm93bl9yZWxhdGVkX29iamVjdHOUfZSMD19pdGVyYWJsZV9jbGFzc5RoAIwOVmFsdWVzSXRlcmFibGWUk5SMB19maWVsZHOUaCpoa4aUjA9fZGphbmdvX3ZlcnNpb26UjAYyLjIuMTKUdWIu','2020-09-27 11:54:17.000000');
/*!40000 ALTER TABLE `my_cache_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readdetail`
--

DROP TABLE IF EXISTS `read_statistics_readdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(6) NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_589c7d92_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_589c7d92_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readdetail`
--

LOCK TABLES `read_statistics_readdetail` WRITE;
/*!40000 ALTER TABLE `read_statistics_readdetail` DISABLE KEYS */;
INSERT INTO `read_statistics_readdetail` VALUES (1,'2020-09-05 07:37:00.000000',4,33,7),(2,'2020-09-05 00:00:00.000000',1,32,7),(3,'2020-09-05 00:00:00.000000',1,31,7),(4,'2020-09-05 00:00:00.000000',1,30,7),(5,'2020-09-05 00:00:00.000000',1,28,7),(6,'2020-09-05 00:00:00.000000',1,29,7),(7,'2020-09-05 00:00:00.000000',1,33,7),(8,'2020-09-06 00:00:00.000000',1,34,7),(9,'2020-09-06 00:00:00.000000',1,33,7),(10,'2020-09-07 00:00:00.000000',1,32,7),(11,'2020-09-08 00:00:00.000000',1,34,7),(12,'2020-09-09 00:00:00.000000',1,34,7),(13,'2020-09-10 00:00:00.000000',1,34,7),(14,'2020-09-10 00:00:00.000000',1,33,7),(15,'2020-09-13 00:00:00.000000',2,34,7),(16,'2020-09-14 00:00:00.000000',2,34,7),(17,'2020-09-16 00:00:00.000000',1,34,7),(18,'2020-09-16 00:00:00.000000',1,29,7),(19,'2020-09-17 00:00:00.000000',1,32,7),(20,'2020-09-17 00:00:00.000000',1,34,7),(21,'2020-09-17 00:00:00.000000',1,29,7),(22,'2020-09-17 00:00:00.000000',1,33,7),(23,'2020-09-20 00:00:00.000000',3,34,7),(24,'2020-09-21 00:00:00.000000',1,34,7),(25,'2020-09-24 00:00:00.000000',1,34,7);
/*!40000 ALTER TABLE `read_statistics_readdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_statistics_readnum`
--

DROP TABLE IF EXISTS `read_statistics_readnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `read_statistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `read_statistics_read_content_type_id_560f0f39_fk_django_co` (`content_type_id`),
  CONSTRAINT `read_statistics_read_content_type_id_560f0f39_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_statistics_readnum`
--

LOCK TABLES `read_statistics_readnum` WRITE;
/*!40000 ALTER TABLE `read_statistics_readnum` DISABLE KEYS */;
INSERT INTO `read_statistics_readnum` VALUES (1,31,34,7),(2,11,33,7),(3,3,32,7),(4,1,31,7),(5,1,30,7),(6,1,28,7),(7,3,29,7);
/*!40000 ALTER TABLE `read_statistics_readnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_profile_user_id_8fdce8e2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'程健',1);
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-27 18:11:58
