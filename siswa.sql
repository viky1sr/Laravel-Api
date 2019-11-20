-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Current Database: `tokokonline`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tokokonline` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tokokonline`;

--
-- Table structure for table `guru`
--

DROP TABLE IF EXISTS `guru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(150) NOT NULL,
  `jenis_kelamin` varchar(191) NOT NULL,
  `agama` varchar(191) NOT NULL,
  `tlpn` varchar(150) NOT NULL,
  `alamat` text NOT NULL,
  `avatar` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guru`
--

LOCK TABLES `guru` WRITE;
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` VALUES (1,'Eko Sutiono','L','Islam','082192383232','Bekasi','','2019-08-02 17:48:37','0000-00-00 00:00:00'),(2,'Bambang','L','Kriste','0858636232423','Bandung','','2019-08-02 17:50:31','0000-00-00 00:00:00'),(3,'Surheni','P','Islam','082189273232','Bogor','','2019-08-02 18:05:14','0000-00-00 00:00:00'),(4,'Jokowi','L','Hindu','02198382373','Bogor','','2019-10-28 05:25:55','0000-00-00 00:00:00'),(5,'Jarwo','L','Budha','0857238232423','Jakarta','','2019-10-28 05:25:55','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makul`
--

DROP TABLE IF EXISTS `makul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `makul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makul`
--

LOCK TABLES `makul` WRITE;
/*!40000 ALTER TABLE `makul` DISABLE KEYS */;
INSERT INTO `makul` VALUES (1,'M-001','Matimatik','ganjil',1,'2019-10-28 05:22:18','0000-00-00 00:00:00'),(2,'B-001','Bahasa Inggris','ganjil',3,'2019-10-28 05:22:18','0000-00-00 00:00:00'),(3,'A-001','Algoritma','ganjil',2,'2019-10-28 05:22:18','0000-00-00 00:00:00'),(4,'M-002','MySQL','Ganjil',4,'2019-10-28 05:22:18','0000-00-00 00:00:00'),(5,'S-001','Statistik','Ganjil',5,'2019-10-28 05:22:18','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `makul` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `makul_sisswa`
--

DROP TABLE IF EXISTS `makul_sisswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `makul_sisswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sisswa_id` int(11) NOT NULL,
  `makul_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makul_sisswa`
--

LOCK TABLES `makul_sisswa` WRITE;
/*!40000 ALTER TABLE `makul_sisswa` DISABLE KEYS */;
INSERT INTO `makul_sisswa` VALUES (1,9522,2,100,'2019-11-08 08:50:18','2019-11-08 15:50:18'),(2,9522,3,90,'2019-11-08 08:50:35','2019-11-08 15:50:35'),(3,9522,5,90,'2019-11-08 08:50:48','2019-11-08 15:50:48'),(4,9521,3,80,'2019-11-08 08:51:06','2019-11-10 07:15:28'),(5,9521,5,95,'2019-11-08 08:51:21','2019-11-08 15:51:21'),(6,9521,2,90,'2019-11-08 09:06:43','2019-11-08 16:06:43'),(7,9521,4,90,'2019-11-10 00:15:10','2019-11-10 07:15:10'),(8,1,1,95,'2019-11-11 20:04:33','2019-11-12 03:04:33');
/*!40000 ALTER TABLE `makul_sisswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_07_30_093034_create_sisswa_table',1),(4,'2019_11_10_093409_create_sisswa_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(191) NOT NULL,
  `thumbnail` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (3,1,'Kabar Berita hari Jumat','Lulusan Academi Teknoklogi Internasional Siap untuk bekerja','kabar-berita-hari-jumat','/photos/1/gabut1.png','2019-10-24 21:31:22','2019-10-30 12:44:37'),(5,1,'GoodLuck!','<p><i><strong>Jagalah semua hal dan memori dalam hidupmu. Bagikan hanya pada mereka yang memberikanmu harapan dan mampu membuat bangun dari masa lalu dan membangun sebuah jembatan untuk masa depan</strong></i></p>','goodluck','/photos/1/images.jpg','2019-11-03 09:28:17','2019-11-03 16:28:17'),(6,1,'I believe','<p>Hey you , i\'ll be your friend my love never end till death do us part , i\'ll be there all through your life and i know that u\'ll be there waiting for me</p><figure class=\"media\"><oembed url=\"https://www.youtube.com/watch?v=1infBTUy_9M\"></oembed></figure>','i-believe','/photos/1/images (1).jpg','2019-11-03 09:56:09','2019-11-03 16:56:09');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisswa`
--

DROP TABLE IF EXISTS `sisswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisswa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `nama_depan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `falkutas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisswa`
--

LOCK TABLES `sisswa` WRITE;
/*!40000 ALTER TABLE `sisswa` DISABLE KEYS */;
INSERT INTO `sisswa` VALUES (2,2,'Fatur Rohman',' ','Teknik Informatika','L','Islam','Jl.Sekar Agung Bogor Raya',NULL,'1998-11-21 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(3,NULL,'Ahmadc Farizal',' ','Sistem Informatika','L','Islam','Jl.Babmbu Runcing Block 22',NULL,'1998-11-22 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(4,NULL,'Paramita Tia',' ','Akuntansi','P','Budha','Jl. Kota Jakarta Kendari Kota',NULL,'1998-11-23 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(5,NULL,'Tyson Sulaiman',' ','Teknik Fisika','L','Kristen','Jl.Swadaya ll Blok 77',NULL,'1998-11-24 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(6,NULL,'Daniel El Gustion',' ','Hukum','L','Kristen','Jl.Narogong Baru Blok 15',NULL,'1998-11-25 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(7,NULL,'Rizda Rahayu',' ','Akuntansi','P','Islam','Jl. Menteng Agung Kencana Puri ',NULL,'1998-11-26 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(8,NULL,'Naila',' ','Hukum','P','Islam','Jl.Kenari Putri Blok F78',NULL,'1998-11-27 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(9,NULL,'Aditya Subroto',' ','Teknik Industry','L','Hindu','Jl.Sulaiman Raya Blok A01',NULL,'1998-11-28 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(10,NULL,'Dimas eL Pro',' ','Teknik Fisika','L','Kristen','Jl.Sekar Agung Bogor Raya',NULL,'1998-11-29 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(11,NULL,'Kristianto',' ','Hukum','L','Kristen','Jl.Buntu Kotak Kenari Blok E19',NULL,'1998-11-30 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(12,NULL,'Surur Faturohman',' ','Sistem Informatika','L','Islam','Jl.Babmbu Runcing Block 22',NULL,'1998-12-01 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(13,NULL,'Medi Dika Purnama',' ','Manajemen','L','Islam','Jl.Keramat Jati Blok G56',NULL,'1998-12-02 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(14,NULL,'Boys Wilian',' ','Hukum','L','Hindu','Jl.Kalimalang No 22',NULL,'1998-12-03 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(15,NULL,'Sekar Mekar',' ','Ekonomi','P','Budha','Jl.Rawalumbu Blok F25',NULL,'1998-12-04 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(16,NULL,'Salsa Bila Bila',' ','Ekonomi','P','Islam','Jl.Sulawesi Bekasi Kota',NULL,'1998-12-05 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(17,NULL,'Abdul Rohman',' ','Teknik Industry','L','Islam','Jl.Kemang Pratama Blok G21',NULL,'1998-12-06 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(18,NULL,'Arya Gendut',' ','Sistem Informatika','L','Islam','Jl. Menteng Agung Kencana Puri ',NULL,'1998-12-07 00:00:00','2019-11-11 21:35:02','2019-11-11 21:35:02'),(19,2,'Selja Sampe','Rante','Teknik Fisikia','L','Kristen','Bekasi',NULL,'1992-02-22 00:00:00','2019-11-12 04:48:09','2019-11-12 04:48:09');
/*!40000 ALTER TABLE `sisswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','Viky','vikymuhamad@gmail.com','cc.jpg',NULL,'$2y$10$CpU3FclxitL5adX/AtBKAeMgv6WwvauiLqMNQOlI89I5IeaBkvQoe','KxbcYe0ow2FrInVyrFgL2ZRudhl5yZbx5QhwPxuL7dyvg3oC1LzdsZWMWM37','2019-07-31 21:36:45','2019-07-31 21:36:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;