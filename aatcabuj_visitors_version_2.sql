/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.8-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: aatcabuj_visitors_version_2
-- ------------------------------------------------------
-- Server version	11.4.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Current Database: `aatcabuj_visitors_version_2`
--


--
-- Table structure for table `cso`
--

DROP TABLE IF EXISTS `cso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cso`
--

LOCK TABLES `cso` WRITE;
/*!40000 ALTER TABLE `cso` DISABLE KEYS */;
INSERT INTO `cso` (`id`, `email`, `password_hash`) VALUES (9,'doc@gmail.com','$2y$10$2ZDnzzFfIMM6oWQynHkqi.j3/r8skJmkXEZa2ceprncR8//xGSCV6'),
(10,'mcdonald.emomotini@pentagonsecurities.net','$2y$10$mXvBdLEqa4IWy07.hHVNxewHGc4IE8dUVlL2XbCPkC8M1vzpgo2F.');
/*!40000 ALTER TABLE `cso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_premises_entries`
--

DROP TABLE IF EXISTS `daily_premises_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_premises_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_date` date NOT NULL,
  `total_entries` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_date` (`entry_date`),
  KEY `idx_entry_date` (`entry_date`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_premises_entries`
--

LOCK TABLES `daily_premises_entries` WRITE;
/*!40000 ALTER TABLE `daily_premises_entries` DISABLE KEYS */;
INSERT INTO `daily_premises_entries` (`id`, `entry_date`, `total_entries`, `created_at`, `updated_at`) VALUES (1,'2025-07-29',192,'2025-07-29 09:19:17','2025-07-29 16:22:38'),
(26,'2025-07-30',192,'2025-07-30 06:11:13','2025-07-30 16:57:27'),
(107,'2025-07-31',180,'2025-07-31 04:52:48','2025-08-01 07:55:22'),
(159,'2025-08-01',130,'2025-08-01 04:20:44','2025-08-01 16:28:20'),
(173,'2025-08-02',34,'2025-08-02 03:28:51','2025-08-02 03:28:51'),
(174,'2025-08-03',6,'2025-08-03 05:29:04','2025-08-03 05:29:04'),
(175,'2025-08-05',3,'2025-08-05 06:54:04','2025-08-05 06:54:04'),
(178,'2025-08-11',1,'2025-08-11 14:42:54','2025-08-11 14:42:54'),
(179,'2025-08-17',1,'2025-08-17 18:13:04','2025-08-17 18:13:04');
/*!40000 ALTER TABLE `daily_premises_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_statistics`
--

DROP TABLE IF EXISTS `daily_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stat_date` date NOT NULL,
  `total_premises_entries` int(11) DEFAULT 0,
  `office_visitors` int(11) DEFAULT 0,
  `hotel_other_traffic` int(11) DEFAULT 0,
  `office_visitor_percentage` decimal(5,2) DEFAULT 0.00,
  `peak_hour` int(11) DEFAULT NULL,
  `total_qr_checkins` int(11) DEFAULT 0,
  `total_walkins` int(11) DEFAULT 0,
  `last_updated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `stat_date` (`stat_date`),
  KEY `idx_stat_date` (`stat_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_statistics`
--

LOCK TABLES `daily_statistics` WRITE;
/*!40000 ALTER TABLE `daily_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `designation` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `profile_completed` tinyint(1) NOT NULL DEFAULT 0,
  `organization` varchar(255) NOT NULL,
  `country_code` varchar(5) DEFAULT '+234',
  `role` enum('staff','super_user') NOT NULL DEFAULT 'staff',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `name`, `email`, `password`, `created_at`, `designation`, `phone`, `profile_completed`, `organization`, `country_code`, `role`) VALUES (40,'Oluwaseun Yinka Alabi ','oalabi@afreximbank.com','$2y$10$dQ/Gxq4K9e9TiucOCuFBDeP8AggbffNwk7Kcm4TWLS.y.Hmo0KLXC','2025-05-02 16:11:25','Manager, Real Estate and Administration ','09088928236',1,'','+234','super_user'),
(41,'Dorcas Oluwatoye','doluwatoye@afreximbank.com','$2y$10$.TN1tdI2eomPTtlPw31oAe5UuVtAJvF2V1YdmY.CjqcxdzQxqk2eS','2025-05-02 17:42:03','Assistant Manager READ','07034754990',1,'','+234','staff'),
(42,'Amr Badawi','abadawi@afreximbank.com','$2y$10$h.V8vsP3VaCR3ssimpo4TOArxWUQEFr4D6iHTpHIT0bnEcQE4jTUy','2025-05-05 21:46:46','AFREXIMBANK','1006015025',1,'AFREXIMBANK','+20','staff'),
(52,'Pentagon Tech Team','pentagontechteam@gmail.com','$2y$10$Gr37S36FLw0mRO5uUVbT8.Zt2XyVW0tUDT6YSTkX3yvLg7eKPRTTG','2025-06-20 06:41:01','IT','7067367057',1,'Pentagon Securities','+234','super_user'),
(56,'Faithfulness Oyinloye','foyinloye@afreximbank.com','$2y$10$XkaRFGfLVbiRPFL5XPMl8unzBSRmiayKoCIG1qLLEomM1fIVDvJdO','2025-07-24 12:55:56','AATC Abuja Concierge Supervisor','8032960723',1,'Afreximbank','+234','staff'),
(61,'Stanley Anigbo','sanigbo@afreximbank.com','$2y$10$m420tTWgJeq880MpZTam8eKRPHg0moUgjc6gtFi39khSHi4wgTSXG','2025-08-08 15:49:15','IT Support','7036002702',1,'Afreximbank','+234','staff');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enhanced_entry_log`
--

DROP TABLE IF EXISTS `enhanced_entry_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `enhanced_entry_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_date` date NOT NULL,
  `entry_time` timestamp NULL DEFAULT current_timestamp(),
  `entry_count` int(11) DEFAULT 1,
  `entry_type` enum('individual','group','bulk') DEFAULT 'individual',
  `category_id` int(11) DEFAULT NULL,
  `estimated_purpose` enum('office','hotel','restaurant','other') DEFAULT 'other',
  `notes` text DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT 'security',
  `device_info` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `idx_entry_date` (`entry_date`),
  KEY `idx_entry_time` (`entry_time`),
  KEY `idx_entry_type` (`entry_type`),
  KEY `idx_purpose` (`estimated_purpose`),
  CONSTRAINT `enhanced_entry_log_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `visitor_categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enhanced_entry_log`
--

LOCK TABLES `enhanced_entry_log` WRITE;
/*!40000 ALTER TABLE `enhanced_entry_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `enhanced_entry_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitor_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `method` varchar(10) NOT NULL COMMENT 'email/sms',
  `status` varchar(10) NOT NULL COMMENT 'sent/failed',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `visitor_id` (`visitor_id`),
  KEY `employee_id` (`employee_id`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `email` (`email`),
  CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`email`) REFERENCES `employees` (`email`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premises_entry_log`
--

DROP TABLE IF EXISTS `premises_entry_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `premises_entry_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_date` date NOT NULL,
  `entry_time` timestamp NULL DEFAULT current_timestamp(),
  `entry_count` int(11) DEFAULT 1,
  `entry_type` enum('individual','group') DEFAULT 'individual',
  `notes` varchar(255) DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT 'security',
  PRIMARY KEY (`id`),
  KEY `idx_entry_date` (`entry_date`),
  KEY `idx_entry_time` (`entry_time`),
  KEY `idx_entry_type` (`entry_type`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premises_entry_log`
--

LOCK TABLES `premises_entry_log` WRITE;
/*!40000 ALTER TABLE `premises_entry_log` DISABLE KEYS */;
INSERT INTO `premises_entry_log` (`id`, `entry_date`, `entry_time`, `entry_count`, `entry_type`, `notes`, `recorded_by`) VALUES (1,'2025-07-29','2025-07-29 10:01:47',50,'group','Group entry','security'),
(2,'2025-07-29','2025-07-29 10:02:10',42,'group','Group entry','security'),
(3,'2025-07-29','2025-07-29 10:02:12',1,'individual',NULL,'security'),
(4,'2025-07-29','2025-07-29 10:02:12',1,'individual',NULL,'security'),
(5,'2025-07-29','2025-07-29 10:22:06',1,'individual',NULL,'security'),
(6,'2025-07-29','2025-07-29 10:22:06',1,'individual',NULL,'security'),
(7,'2025-07-29','2025-07-29 10:22:07',50,'group','Group entry','security'),
(8,'2025-07-29','2025-07-29 10:22:07',42,'group','Group entry','security'),
(9,'2025-07-29','2025-07-29 10:22:14',9,'group','Group entry','security'),
(10,'2025-07-29','2025-07-29 10:30:19',1,'individual',NULL,'security'),
(11,'2025-07-29','2025-07-29 11:15:18',9,'group','Group entry','security'),
(12,'2025-07-29','2025-07-29 12:11:51',1,'individual',NULL,'security'),
(13,'2025-07-29','2025-07-29 12:11:53',1,'individual',NULL,'security'),
(14,'2025-07-29','2025-07-29 12:11:55',1,'individual',NULL,'security'),
(15,'2025-07-29','2025-07-29 12:11:57',1,'individual',NULL,'security'),
(16,'2025-07-29','2025-07-29 14:01:35',50,'group','Group entry','security'),
(17,'2025-07-29','2025-07-29 14:01:40',8,'group','Group entry','security'),
(18,'2025-07-29','2025-07-29 14:29:14',1,'individual',NULL,'security'),
(19,'2025-07-29','2025-07-29 14:29:16',1,'individual',NULL,'security'),
(20,'2025-07-29','2025-07-29 14:29:18',1,'individual',NULL,'security'),
(21,'2025-07-29','2025-07-29 15:36:14',2,'group','Group entry','security'),
(22,'2025-07-29','2025-07-29 15:36:22',10,'group','Group entry','security'),
(23,'2025-07-29','2025-07-29 16:22:32',1,'individual',NULL,'security'),
(24,'2025-07-29','2025-07-29 16:22:38',1,'individual',NULL,'security'),
(25,'2025-07-30','2025-07-30 06:11:13',1,'individual',NULL,'security'),
(26,'2025-07-30','2025-07-30 06:11:20',1,'individual',NULL,'security'),
(27,'2025-07-30','2025-07-30 06:11:25',1,'individual',NULL,'security'),
(28,'2025-07-30','2025-07-30 06:11:28',1,'individual',NULL,'security'),
(29,'2025-07-30','2025-07-30 06:11:33',1,'individual',NULL,'security'),
(30,'2025-07-30','2025-07-30 06:11:34',1,'individual',NULL,'security'),
(31,'2025-07-30','2025-07-30 06:11:36',1,'individual',NULL,'security'),
(32,'2025-07-30','2025-07-30 06:11:38',1,'individual',NULL,'security'),
(33,'2025-07-30','2025-07-30 06:12:29',1,'individual',NULL,'security'),
(34,'2025-07-30','2025-07-30 06:12:32',1,'individual',NULL,'security'),
(35,'2025-07-30','2025-07-30 06:12:35',1,'individual',NULL,'security'),
(36,'2025-07-30','2025-07-30 06:12:38',1,'individual',NULL,'security'),
(37,'2025-07-30','2025-07-30 06:12:41',1,'individual',NULL,'security'),
(38,'2025-07-30','2025-07-30 06:20:27',1,'individual',NULL,'security'),
(39,'2025-07-30','2025-07-30 06:20:29',1,'individual',NULL,'security'),
(40,'2025-07-30','2025-07-30 06:27:37',1,'individual',NULL,'security'),
(41,'2025-07-30','2025-07-30 06:27:39',1,'individual',NULL,'security'),
(42,'2025-07-30','2025-07-30 06:27:41',1,'individual',NULL,'security'),
(43,'2025-07-30','2025-07-30 06:27:43',1,'individual',NULL,'security'),
(44,'2025-07-30','2025-07-30 06:27:47',1,'individual',NULL,'security'),
(45,'2025-07-30','2025-07-30 06:27:48',1,'individual',NULL,'security'),
(46,'2025-07-30','2025-07-30 06:31:37',1,'individual',NULL,'security'),
(47,'2025-07-30','2025-07-30 06:31:39',1,'individual',NULL,'security'),
(48,'2025-07-30','2025-07-30 06:34:18',1,'individual',NULL,'security'),
(49,'2025-07-30','2025-07-30 06:36:11',1,'individual',NULL,'security'),
(50,'2025-07-30','2025-07-30 06:36:13',1,'individual',NULL,'security'),
(51,'2025-07-30','2025-07-30 06:36:51',1,'individual',NULL,'security'),
(52,'2025-07-30','2025-07-30 06:36:54',1,'individual',NULL,'security'),
(53,'2025-07-30','2025-07-30 06:41:45',1,'individual',NULL,'security'),
(54,'2025-07-30','2025-07-30 06:48:19',1,'individual',NULL,'security'),
(55,'2025-07-30','2025-07-30 06:48:24',1,'individual',NULL,'security'),
(56,'2025-07-30','2025-07-30 06:48:27',1,'individual',NULL,'security'),
(57,'2025-07-30','2025-07-30 06:48:29',1,'individual',NULL,'security'),
(58,'2025-07-30','2025-07-30 06:59:24',1,'individual',NULL,'security'),
(59,'2025-07-30','2025-07-30 06:59:26',1,'individual',NULL,'security'),
(60,'2025-07-30','2025-07-30 07:05:07',1,'individual',NULL,'security'),
(61,'2025-07-30','2025-07-30 07:05:15',1,'individual',NULL,'security'),
(62,'2025-07-30','2025-07-30 07:09:50',1,'individual',NULL,'security'),
(63,'2025-07-30','2025-07-30 07:09:53',1,'individual',NULL,'security'),
(64,'2025-07-30','2025-07-30 07:16:47',1,'individual',NULL,'security'),
(65,'2025-07-30','2025-07-30 07:16:49',1,'individual',NULL,'security'),
(66,'2025-07-30','2025-07-30 07:16:51',1,'individual',NULL,'security'),
(67,'2025-07-30','2025-07-30 07:16:54',1,'individual',NULL,'security'),
(68,'2025-07-30','2025-07-30 07:16:56',1,'individual',NULL,'security'),
(69,'2025-07-30','2025-07-30 07:17:23',1,'individual',NULL,'security'),
(70,'2025-07-30','2025-07-30 07:17:25',1,'individual',NULL,'security'),
(71,'2025-07-30','2025-07-30 07:23:05',1,'individual',NULL,'security'),
(72,'2025-07-30','2025-07-30 07:23:07',1,'individual',NULL,'security'),
(73,'2025-07-30','2025-07-30 07:37:36',1,'individual',NULL,'security'),
(74,'2025-07-30','2025-07-30 07:37:40',1,'individual',NULL,'security'),
(75,'2025-07-30','2025-07-30 07:50:42',1,'individual',NULL,'security'),
(76,'2025-07-30','2025-07-30 07:50:45',1,'individual',NULL,'security'),
(77,'2025-07-30','2025-07-30 07:54:10',9,'group','Group entry','security'),
(78,'2025-07-30','2025-07-30 07:54:30',2,'group','Group entry','security'),
(79,'2025-07-30','2025-07-30 07:56:36',1,'individual',NULL,'security'),
(80,'2025-07-30','2025-07-30 07:58:12',3,'group','Group entry','security'),
(81,'2025-07-30','2025-07-30 07:58:45',2,'group','Group entry','security'),
(82,'2025-07-30','2025-07-30 07:59:04',2,'group','Group entry','security'),
(83,'2025-07-30','2025-07-30 07:59:08',1,'individual',NULL,'security'),
(84,'2025-07-30','2025-07-30 08:04:00',1,'individual',NULL,'security'),
(85,'2025-07-30','2025-07-30 08:06:26',1,'individual',NULL,'security'),
(86,'2025-07-30','2025-07-30 08:08:00',1,'individual',NULL,'security'),
(87,'2025-07-30','2025-07-30 08:11:53',2,'group','Group entry','security'),
(88,'2025-07-30','2025-07-30 08:13:15',1,'individual',NULL,'security'),
(89,'2025-07-30','2025-07-30 08:15:15',1,'individual',NULL,'security'),
(90,'2025-07-30','2025-07-30 08:17:47',2,'group','Group entry','security'),
(91,'2025-07-30','2025-07-30 08:28:15',2,'group','Group entry','security'),
(92,'2025-07-30','2025-07-30 08:38:10',7,'group','Group entry','security'),
(93,'2025-07-30','2025-07-30 08:50:55',1,'individual',NULL,'security'),
(94,'2025-07-30','2025-07-30 08:53:35',1,'individual',NULL,'security'),
(95,'2025-07-30','2025-07-30 08:57:42',2,'group','Group entry','security'),
(96,'2025-07-30','2025-07-30 08:58:06',1,'individual',NULL,'security'),
(97,'2025-07-30','2025-07-30 08:58:58',2,'group','Group entry','security'),
(98,'2025-07-30','2025-07-30 13:31:54',50,'group','Group entry','security'),
(99,'2025-07-30','2025-07-30 13:32:07',27,'group','Group entry','security'),
(100,'2025-07-30','2025-07-30 13:38:14',1,'individual',NULL,'security'),
(101,'2025-07-30','2025-07-30 13:38:17',1,'individual',NULL,'security'),
(102,'2025-07-30','2025-07-30 13:50:37',1,'individual',NULL,'security'),
(103,'2025-07-30','2025-07-30 13:57:06',2,'group','Group entry','security'),
(104,'2025-07-30','2025-07-30 16:52:25',13,'group','Group entry','security'),
(105,'2025-07-30','2025-07-30 16:57:22',1,'individual',NULL,'security'),
(106,'2025-07-31','2025-07-31 04:52:48',7,'group','Group entry','security'),
(107,'2025-07-31','2025-07-31 06:41:40',12,'group','Group entry','security'),
(108,'2025-07-31','2025-07-31 06:43:11',1,'individual',NULL,'security'),
(109,'2025-07-31','2025-07-31 07:02:25',1,'individual',NULL,'security'),
(110,'2025-07-31','2025-07-31 07:06:35',1,'individual',NULL,'security'),
(111,'2025-07-31','2025-07-31 07:09:01',1,'individual',NULL,'security'),
(112,'2025-07-31','2025-07-31 07:09:44',1,'individual',NULL,'security'),
(113,'2025-07-31','2025-07-31 07:14:09',1,'individual',NULL,'security'),
(114,'2025-07-31','2025-07-31 07:15:34',9,'group','Group entry','security'),
(115,'2025-07-31','2025-07-31 07:17:31',1,'individual',NULL,'security'),
(116,'2025-07-31','2025-07-31 07:26:32',1,'individual',NULL,'security'),
(117,'2025-07-31','2025-07-31 07:38:45',1,'individual',NULL,'security'),
(118,'2025-07-31','2025-07-31 07:38:47',1,'individual',NULL,'security'),
(119,'2025-07-31','2025-07-31 07:38:59',1,'individual',NULL,'security'),
(120,'2025-07-31','2025-07-31 07:39:01',1,'individual',NULL,'security'),
(121,'2025-07-31','2025-07-31 07:39:21',1,'individual',NULL,'security'),
(122,'2025-07-31','2025-07-31 07:39:28',1,'individual',NULL,'security'),
(123,'2025-07-31','2025-07-31 07:39:42',1,'individual',NULL,'security'),
(124,'2025-07-31','2025-07-31 07:40:38',1,'individual',NULL,'security'),
(125,'2025-07-31','2025-07-31 07:48:17',1,'individual',NULL,'security'),
(126,'2025-07-31','2025-07-31 07:50:03',1,'individual',NULL,'security'),
(127,'2025-07-31','2025-07-31 07:56:27',1,'individual',NULL,'security'),
(128,'2025-07-31','2025-07-31 07:56:29',1,'individual',NULL,'security'),
(129,'2025-07-31','2025-07-31 07:56:31',1,'individual',NULL,'security'),
(130,'2025-07-31','2025-07-31 07:57:37',1,'individual',NULL,'security'),
(131,'2025-07-31','2025-07-31 07:58:41',1,'individual',NULL,'security'),
(132,'2025-07-31','2025-07-31 07:58:43',1,'individual',NULL,'security'),
(133,'2025-07-31','2025-07-31 07:58:45',1,'individual',NULL,'security'),
(134,'2025-07-31','2025-07-31 08:00:29',1,'individual',NULL,'security'),
(135,'2025-07-31','2025-07-31 09:04:37',7,'group','Group entry','security'),
(136,'2025-07-31','2025-07-31 10:16:23',8,'group','Group entry','security'),
(137,'2025-07-31','2025-07-31 10:59:04',20,'group','Group entry','security'),
(138,'2025-07-31','2025-07-31 10:59:10',2,'group','Group entry','security'),
(139,'2025-07-31','2025-07-31 11:02:48',1,'individual',NULL,'security'),
(140,'2025-07-31','2025-07-31 11:13:02',1,'individual',NULL,'security'),
(141,'2025-07-31','2025-07-31 11:13:06',1,'individual',NULL,'security'),
(142,'2025-07-31','2025-07-31 11:13:08',1,'individual',NULL,'security'),
(143,'2025-07-31','2025-07-31 11:13:42',1,'individual',NULL,'security'),
(144,'2025-07-31','2025-07-31 11:13:45',1,'individual',NULL,'security'),
(145,'2025-07-31','2025-07-31 11:25:05',1,'individual',NULL,'security'),
(146,'2025-07-31','2025-07-31 11:25:11',1,'individual',NULL,'security'),
(147,'2025-07-31','2025-07-31 11:25:14',1,'individual',NULL,'security'),
(148,'2025-07-31','2025-07-31 11:43:03',1,'individual',NULL,'security'),
(149,'2025-07-31','2025-07-31 11:43:05',1,'individual',NULL,'security'),
(150,'2025-07-31','2025-07-31 11:45:33',3,'group','Group entry','security'),
(151,'2025-07-31','2025-07-31 11:50:28',6,'group','Group entry','security'),
(152,'2025-07-31','2025-07-31 11:55:25',5,'group','Group entry','security'),
(153,'2025-07-31','2025-07-31 11:57:20',1,'individual',NULL,'security'),
(154,'2025-07-31','2025-07-31 11:57:22',1,'individual',NULL,'security'),
(155,'2025-07-31','2025-07-31 11:59:26',1,'individual',NULL,'security'),
(156,'2025-07-31','2025-07-31 11:59:28',1,'individual',NULL,'security'),
(157,'2025-07-31','2025-07-31 15:08:42',10,'group','Group entry','security'),
(158,'2025-08-01','2025-08-01 04:20:44',50,'group','Group entry','security'),
(159,'2025-08-01','2025-08-01 10:02:55',1,'individual',NULL,'security'),
(160,'2025-08-01','2025-08-01 10:03:27',1,'individual',NULL,'security'),
(161,'2025-08-01','2025-08-01 10:07:44',1,'individual',NULL,'security'),
(162,'2025-08-01','2025-08-01 12:42:25',50,'group','Group entry','security'),
(163,'2025-08-01','2025-08-01 12:42:34',48,'group','Group entry','security'),
(164,'2025-08-01','2025-08-01 12:56:09',1,'individual',NULL,'security'),
(165,'2025-08-01','2025-08-01 12:56:20',1,'individual',NULL,'security'),
(166,'2025-08-01','2025-08-01 12:57:35',1,'individual',NULL,'security'),
(167,'2025-08-01','2025-08-01 13:06:34',1,'individual',NULL,'security'),
(168,'2025-08-01','2025-08-01 13:09:41',1,'individual',NULL,'security'),
(169,'2025-08-01','2025-08-01 13:09:44',1,'individual',NULL,'security'),
(170,'2025-08-01','2025-08-01 16:17:12',1,'individual',NULL,'security'),
(171,'2025-08-01','2025-08-01 16:28:20',25,'group','Group entry','security'),
(172,'2025-08-02','2025-08-02 03:28:51',34,'group','Group entry','security'),
(173,'2025-08-03','2025-08-03 05:29:04',6,'group','Group entry','security'),
(174,'2025-08-05','2025-08-05 06:54:04',1,'individual',NULL,'security'),
(175,'2025-08-05','2025-08-05 06:54:04',1,'individual',NULL,'security'),
(176,'2025-08-05','2025-08-05 06:54:04',1,'individual',NULL,'security'),
(177,'2025-08-11','2025-08-11 14:42:54',1,'individual',NULL,'security'),
(178,'2025-08-17','2025-08-17 18:13:04',1,'individual',NULL,'security');
/*!40000 ALTER TABLE `premises_entry_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `premises_summary`
--

DROP TABLE IF EXISTS `premises_summary`;
/*!50001 DROP VIEW IF EXISTS `premises_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `premises_summary` AS SELECT
 1 AS `entry_date`,
  1 AS `premises_entries`,
  1 AS `office_visitors`,
  1 AS `hotel_other_traffic`,
  1 AS `office_visitor_percentage` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reception_notifications`
--

DROP TABLE IF EXISTS `reception_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reception_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visitor_id` int(11) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `status` enum('pending','checked_in','completed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `visitor_id` (`visitor_id`),
  CONSTRAINT `reception_notifications_ibfk_1` FOREIGN KEY (`visitor_id`) REFERENCES `visitors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reception_notifications`
--

LOCK TABLES `reception_notifications` WRITE;
/*!40000 ALTER TABLE `reception_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `reception_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receptionists`
--

DROP TABLE IF EXISTS `receptionists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `receptionists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_completed` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=needs password update, 1=profile completed',
  `role` enum('receptionist','super_user') NOT NULL DEFAULT 'receptionist',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptionists`
--

LOCK TABLES `receptionists` WRITE;
/*!40000 ALTER TABLE `receptionists` DISABLE KEYS */;
INSERT INTO `receptionists` (`id`, `name`, `username`, `password`, `profile_completed`, `role`) VALUES (2,'Pentagon IT','reception_1','$2y$10$mpi20Cb1CKxG4UuRSH3X3.6F7nsSxKIr1HN8.QRy.hhMHmjwQiDf6',1,'super_user'),
(5,'Amonu Onyinyechukwu','AmonuOnyinyechukwu','$2y$10$6TcJ1Hf./Yppg9Jzu8CX0OXbK4wgr5fTJnEqG.ZZ0btEiIo0W475u',1,'receptionist'),
(6,'Anayoanyiam Colette','AnayoanyiamColette','$2y$10$6Ug8lQyv1i/6m21hNvKPxuJou18dfU2LRAk0bKqqEu555nLrJ7kda',1,'receptionist'),
(7,'Ajieh Sarah','AjiehSarah','$2y$10$VUib30vLWM4QvLPTk95hKOTqZXoFpS1OjZMW.wWwsNrQkqbcRkGGi',1,'receptionist');
/*!40000 ALTER TABLE `receptionists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor_categories`
--

DROP TABLE IF EXISTS `visitor_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitor_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_name` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor_categories`
--

LOCK TABLES `visitor_categories` WRITE;
/*!40000 ALTER TABLE `visitor_categories` DISABLE KEYS */;
INSERT INTO `visitor_categories` (`id`, `category_name`, `description`, `created_at`) VALUES (1,'Business Meeting','Scheduled business meetings and appointments','2025-07-29 09:19:17'),
(2,'Delivery','Delivery personnel and courier services','2025-07-29 09:19:17'),
(3,'Service','Maintenance, repair, and service providers','2025-07-29 09:19:17'),
(4,'Tour','Facility tours and group visits','2025-07-29 09:19:17'),
(5,'Interview','Job interviews and recruitment','2025-07-29 09:19:17'),
(6,'Training','Training sessions and workshops','2025-07-29 09:19:17'),
(7,'Event','Events and conferences','2025-07-29 09:19:17'),
(8,'Other','Miscellaneous visits','2025-07-29 09:19:17');
/*!40000 ALTER TABLE `visitor_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country_code` varchar(5) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','checked_in','checked_out','rejected') DEFAULT 'pending',
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `qr_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `employee_id` int(11) DEFAULT NULL,
  `host_id` int(11) NOT NULL,
  `arrival_date` date DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `organization` varchar(255) NOT NULL,
  `visit_date` date DEFAULT NULL,
  `reason` text NOT NULL,
  `check_in_time` datetime DEFAULT NULL,
  `check_out_time` datetime DEFAULT NULL,
  `group_id` varchar(50) DEFAULT NULL,
  `is_group_leader` tinyint(1) DEFAULT 0,
  `departure_time` datetime DEFAULT NULL,
  `visit_duration` int(11) DEFAULT NULL,
  `time_of_visit` time NOT NULL,
  `floor_of_visit` varchar(20) NOT NULL,
  `is_checked_in` tinyint(1) DEFAULT 0,
  `acknowledged` tinyint(1) DEFAULT 0,
  `notification_sent` tinyint(1) DEFAULT 0,
  `notification_time` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `unique_code` varchar(10) DEFAULT NULL,
  `requested_by_receptionist` tinyint(1) DEFAULT 0,
  `receptionist_id` int(11) DEFAULT NULL,
  `source` varchar(20) DEFAULT 'reception',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_code` (`unique_code`),
  KEY `idx_group_id` (`group_id`),
  KEY `idx_group_leader` (`is_group_leader`),
  KEY `idx_check_in_date` (`check_in_time`),
  KEY `idx_status` (`status`),
  KEY `idx_source` (`source`)
) ENGINE=InnoDB AUTO_INCREMENT=861 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitors`
--

LOCK TABLES `visitors` WRITE;
/*!40000 ALTER TABLE `visitors` DISABLE KEYS */;
INSERT INTO `visitors` (`id`, `name`, `host_name`, `phone`, `country_code`, `email`, `photo_path`, `status`, `approved`, `qr_code`, `created_at`, `employee_id`, `host_id`, `arrival_date`, `arrival_time`, `organization`, `visit_date`, `reason`, `check_in_time`, `check_out_time`, `group_id`, `is_group_leader`, `departure_time`, `visit_duration`, `time_of_visit`, `floor_of_visit`, `is_checked_in`, `acknowledged`, `notification_sent`, `notification_time`, `updated_at`, `unique_code`, `requested_by_receptionist`, `receptionist_id`, `source`) VALUES (473,'UMECHE MARGARET','Oluwaseun Yinka Alabi ','+2348161587787',NULL,'umechemargaret@gmail.com',NULL,'checked_out',1,'QR-686b806c8a416','2025-07-07 07:58:24',40,0,NULL,NULL,'','2025-07-07','OFFICIAL','2025-07-07 09:54:04','2025-07-07 13:01:03',NULL,0,NULL,NULL,'09:45:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-07-07 12:01:03','C576C725',1,6,'reception'),
(475,'JOSEPH AUDAM','Walk-In','09060639263',NULL,'',NULL,'checked_out',0,NULL,'2025-07-07 09:01:40',NULL,0,NULL,NULL,'','2025-07-07','Ms Margaret Umeche\'s +guest(official)','2025-07-07 10:01:40','2025-07-07 13:11:31',NULL,0,NULL,NULL,'09:45:00','',0,0,0,NULL,'2025-07-07 12:11:31','28CEC9F3',1,6,'reception'),
(476,'Thomas Moock','Oluwaseun Yinka Alabi ','+352 691 780 277',NULL,'thomas@five-keys.com',NULL,'checked_out',1,'QR-686b8f9d302bc','2025-07-07 09:10:35',40,0,NULL,NULL,'Five keys','2025-07-07','Official (office product check - smell issue)','2025-07-07 13:09:21','2025-07-07 15:03:41',NULL,0,NULL,NULL,'13:00:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-07-07 14:03:41','A5934E74',1,5,'reception'),
(477,'Annie Tao','Oluwaseun Yinka Alabi ','+86 178 5895 6840',NULL,'annie.txy@isunon.com',NULL,'checked_out',1,'QR-686b8fbb5f59a','2025-07-07 09:10:35',40,0,NULL,NULL,'Isunon','2025-07-07','Official (office product check - smell issue)','2025-08-04 11:01:01','2025-08-04 11:12:46',NULL,0,NULL,NULL,'13:00:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-08-04 10:12:46','E895E890',1,5,'reception'),
(478,'CHRISTOPHER MERCY','Walk-In','08148043636',NULL,'',NULL,'checked_out',0,NULL,'2025-07-07 10:15:48',NULL,0,NULL,NULL,'AMCE','2025-07-07','Submission of sensitive document to Dr Alabi','2025-07-07 11:15:48','2025-07-07 13:12:10',NULL,0,NULL,NULL,'10:56:00','',0,0,0,NULL,'2025-07-07 12:12:10','5A3275B5',1,6,'reception'),
(479,'FUNMILAYO SALAWU','Walk-In','09154205871',NULL,'',NULL,'checked_out',0,NULL,'2025-07-07 10:42:04',NULL,0,NULL,NULL,'SHEPERDHILL SECURITY LTD','2025-07-07','Official (dropping left over items AAM)','2025-07-07 11:42:04','2025-07-07 13:25:40',NULL,0,NULL,NULL,'11:08:00','',0,0,0,NULL,'2025-07-07 12:25:40','07E9D3A1',1,5,'reception'),
(480,'MUSA DANLADI +3 guests','Walk-In','07030541634',NULL,'',NULL,'checked_out',0,NULL,'2025-07-07 10:59:51',NULL,0,NULL,NULL,'FEDERAL FIRE SERVICE','2025-07-07','Fire risk assessment inspection','2025-07-07 11:59:51','2025-07-07 14:48:07',NULL,0,NULL,NULL,'11:58:00','',0,0,0,NULL,'2025-07-07 13:48:07','3873F62D',1,6,'reception'),
(481,'YINKA AGBALA +1 GUEST','Walk-In','08139732244',NULL,'',NULL,'checked_out',0,NULL,'2025-07-07 11:17:48',NULL,0,NULL,NULL,'ZENITH BANK','2025-07-07','OFFICIAL','2025-07-07 12:17:48','2025-07-07 13:47:04',NULL,0,NULL,NULL,'12:17:00','',0,0,0,NULL,'2025-07-07 12:47:04','076CCA13',1,6,'reception'),
(483,'MUSA BADAMASI','Walk-In','8083652278',NULL,'',NULL,'checked_out',0,NULL,'2025-07-07 12:20:10',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-07','OFFICIAL\\r\\nINVITED BY MR MAYOWA\\r\\n8TH FLOOR','2025-07-07 13:20:10','2025-07-07 13:26:46',NULL,0,NULL,NULL,'13:19:00','',0,0,0,NULL,'2025-07-07 12:26:46','C9DBA7C2',1,6,'reception'),
(487,'MIKE BAYO AKINOLA','Oluwaseun Yinka Alabi ','08033183566',NULL,'marvelousmikepress@yahoo.com',NULL,'checked_out',1,'QR-686cd9cbc33ad','2025-07-08 08:41:27',40,0,NULL,NULL,'NIL','2025-07-09','OFFICIAL','2025-07-09 14:54:05','2025-07-09 15:31:50',NULL,0,NULL,NULL,'15:00:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-07-09 14:31:50','770ADEA1',1,6,'reception'),
(488,'MUSA BADAMASI','Walk-In','8083652278',NULL,'',NULL,'checked_out',0,NULL,'2025-07-08 11:31:56',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-08','OFFICIAL','2025-07-08 12:31:56','2025-07-08 15:18:02',NULL,0,NULL,NULL,'12:30:00','',0,0,0,NULL,'2025-07-08 14:18:02','4BACF4ED',1,NULL,'reception'),
(489,'UJU PAULCY','Oluwaseun Yinka Alabi ','+2348099991217  ',NULL,'ujupaulcy@invetagroup.com',NULL,'checked_out',1,'QR-686d168609a20','2025-07-08 12:50:55',40,0,NULL,NULL,'INVETA GROUP','2025-07-08','OFFICIAL','2025-08-04 11:01:07','2025-08-04 11:12:40',NULL,0,NULL,NULL,'13:54:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-04 10:12:40','E71B6830',1,6,'reception'),
(490,'GIFT NATHANIEL ','Walk-In','08092262782',NULL,'',NULL,'checked_out',0,NULL,'2025-07-08 13:47:26',NULL,0,NULL,NULL,'AUGUSTINE (TRANSCORP)','2025-07-08','PERSONAL','2025-07-08 14:47:26','2025-07-08 15:17:45',NULL,0,NULL,NULL,'15:00:00','',0,0,0,NULL,'2025-07-08 14:17:45','79B996FD',1,NULL,'reception'),
(491,'Oladapo Adeniranye  ','Oluwaseun Yinka Alabi ','+12405936339  ',NULL,'dapo@dnlglobalng.com',NULL,'checked_out',1,'QR-686d22fdb3b04','2025-07-08 13:53:40',40,0,NULL,NULL,'DNL Fire Service','2025-07-08','Official','2025-08-04 11:12:10','2025-08-04 11:12:22',NULL,0,NULL,NULL,'15:51:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-04 10:12:22','F3E19EA5',1,6,'reception'),
(496,'JOSEPH ADESINA','Walk-In','08148895195',NULL,'',NULL,'checked_out',0,NULL,'2025-07-09 07:22:08',NULL,0,NULL,NULL,'NIL','2025-07-09','official','2025-07-09 08:22:08','2025-07-10 09:45:25',NULL,0,NULL,NULL,'08:19:00','',0,0,0,NULL,'2025-07-10 08:45:25','42752C2E',1,6,'reception'),
(497,'LUKMAN BOLAJI','Pentagon Tech Team','08033451941',NULL,'Oilgasconsult2002@yahoo.co.uk',NULL,'checked_out',1,'QR-686e72c2264b3','2025-07-09 09:45:53',52,0,NULL,NULL,'','2025-07-09','OFFICIAL','2025-08-04 11:01:12','2025-08-04 11:12:35',NULL,0,NULL,NULL,'11:00:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-04 10:12:35','C9035B95',1,6,'reception'),
(498,'LUKMAN BOLAJI','Walk-In','08033451941',NULL,'',NULL,'checked_out',0,NULL,'2025-07-09 10:35:41',NULL,0,NULL,NULL,'NIL','2025-07-09','OFFICIAL','2025-07-09 11:35:41','2025-07-09 15:42:18',NULL,0,NULL,NULL,'11:35:00','',0,0,0,NULL,'2025-07-09 14:42:18','B09154C7',1,6,'reception'),
(499,'CHIEF BILLY FAMOUS OSAWARU +9 GUESTS','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-09 10:38:05',NULL,0,NULL,NULL,'HOUSE OF REP','2025-07-09','OFFICIAL','2025-07-09 11:38:05','2025-07-09 13:56:16',NULL,0,NULL,NULL,'11:37:00','',0,0,0,NULL,'2025-07-09 12:56:16','55F53F79',1,6,'reception'),
(502,'bobseen','Gideon','+23490292856',NULL,'ugorjigideon@outlook.com',NULL,'rejected',0,NULL,'2025-07-10 07:26:27',54,0,NULL,NULL,'nnpc','2025-07-11','business',NULL,NULL,NULL,0,NULL,NULL,'13:24:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-07-10 07:27:01','0646136F',1,2,'reception'),
(503,'HYDE ANATUNE','Walk-In','08033443545',NULL,'',NULL,'checked_out',0,NULL,'2025-07-10 08:44:49',NULL,0,NULL,NULL,'HILTON','2025-07-10','OFFICIAL','2025-07-10 09:44:49','2025-07-10 15:24:59',NULL,0,NULL,NULL,'09:42:00','',0,0,0,NULL,'2025-07-10 14:24:59','A3692529',1,5,'reception'),
(504,'NUHU OGAH','Walk-In','07031911184',NULL,'',NULL,'checked_out',0,NULL,'2025-07-10 11:05:30',NULL,0,NULL,NULL,'LENOVO','2025-07-10','OFFICIAL','2025-07-10 12:05:30','2025-07-10 14:36:59',NULL,0,NULL,NULL,'12:05:00','',0,0,0,NULL,'2025-07-10 13:36:59','27E8415B',1,6,'reception'),
(505,'MUSA BADAMASI','Walk-In','8083652278',NULL,'',NULL,'checked_out',0,NULL,'2025-07-10 12:34:30',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-10','OFFICIAL','2025-07-10 13:34:30','2025-07-10 14:36:55',NULL,0,NULL,NULL,'13:33:00','',0,0,0,NULL,'2025-07-10 13:36:55','4DE48641',1,NULL,'reception'),
(506,'HAJIAH ZAINAB SALEH','Walk-In','08033038277',NULL,'',NULL,'checked_out',0,NULL,'2025-07-10 12:49:32',NULL,0,NULL,NULL,'NIL ','2025-07-10','OFFICIAL','2025-07-10 13:49:32','2025-07-10 14:36:55',NULL,0,NULL,NULL,'13:49:00','',0,0,0,NULL,'2025-07-10 13:36:55','A2F424D9',1,6,'reception'),
(507,'INUMIDUN ANTHONY','Walk-In','08116065975',NULL,'',NULL,'checked_out',0,NULL,'2025-07-10 14:21:52',NULL,0,NULL,NULL,'NIL','2025-07-10','OFFICIAL','2025-07-10 15:21:52','2025-07-10 15:24:57',NULL,0,NULL,NULL,'15:21:00','',0,0,0,NULL,'2025-07-10 14:24:57','8C0E27AD',1,6,'reception'),
(508,'COLLINS PETERS','Walk-In','09132012536',NULL,'',NULL,'checked_out',0,NULL,'2025-07-10 15:33:29',NULL,0,NULL,NULL,'ARISE','2025-07-10','TO DELIVER A DOCUMENT TO MR PETER','2025-07-10 16:33:29','2025-07-10 17:00:03',NULL,0,NULL,NULL,'16:33:00','',0,0,0,NULL,'2025-07-10 16:00:03','9122B7ED',1,6,'reception'),
(511,'UDUAK','Walk-In','08080268383',NULL,'',NULL,'checked_out',0,NULL,'2025-07-11 12:41:46',NULL,0,NULL,NULL,'NIL','2025-07-11','OFFICIAL','2025-07-11 13:41:46','2025-07-11 17:08:42',NULL,0,NULL,NULL,'13:41:00','',0,0,0,NULL,'2025-07-11 16:08:42','B676F271',1,NULL,'reception'),
(512,'ADESUWA','Walk-In','08027501595',NULL,'',NULL,'checked_out',0,NULL,'2025-07-11 14:01:22',NULL,0,NULL,NULL,'NIL','2025-07-11','AN OFFICIAL APPOINTMENT WITH MR PETER OLOWONONI','2025-07-11 15:01:22','2025-07-11 16:00:50',NULL,0,NULL,NULL,'15:00:00','',0,0,0,NULL,'2025-07-11 15:00:50','F1B5D619',1,NULL,'reception'),
(513,'UMAR','Walk-In','O7O694444155',NULL,'',NULL,'checked_out',0,NULL,'2025-07-11 14:22:03',NULL,0,NULL,NULL,'NIL','2025-07-11','OFFICIAL MEETING WITH MR PETER OLOWONONI','2025-07-11 15:22:03','2025-07-11 17:08:28',NULL,0,NULL,NULL,'15:21:00','',0,0,0,NULL,'2025-07-11 16:08:28','F69AC7B0',1,NULL,'reception'),
(514,'MUSA BADAMASI','Walk-In','8083652278',NULL,'',NULL,'checked_out',0,NULL,'2025-07-11 14:44:09',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-11','OFFICIAL VISIT WITH MR BENOIT MESSI\\r\\n','2025-07-11 15:44:09','2025-07-11 17:08:33',NULL,0,NULL,NULL,'15:40:00','',0,0,0,NULL,'2025-07-11 16:08:33','D51301E3',1,6,'reception'),
(515,'MUSA BADAMASI','Walk-In','8083652278',NULL,'',NULL,'checked_out',0,NULL,'2025-07-11 14:44:09',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-11','OFFICIAL VISIT WITH MR BENOIT MESSI\\r\\n','2025-07-11 15:44:09','2025-07-11 17:08:35',NULL,0,NULL,NULL,'15:40:00','',0,0,0,NULL,'2025-07-11 16:08:35','3C1EEC3E',1,6,'reception'),
(516,'OBAJE OBOAH','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-11 14:45:01',NULL,0,NULL,NULL,'NIL','2025-07-11','APPOINTMENT WITH MR BENOIT MESSI','2025-07-11 15:45:01','2025-07-11 16:06:08',NULL,0,NULL,NULL,'15:44:00','',0,0,0,NULL,'2025-07-11 15:06:08','BBF97B92',1,6,'reception'),
(517,'OBAJE OBOAH','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-11 14:45:01',NULL,0,NULL,NULL,'NIL','2025-07-11','APPOINTMENT WITH MR BENOIT MESSI','2025-07-11 15:45:01','2025-07-11 16:06:14',NULL,0,NULL,NULL,'15:44:00','',0,0,0,NULL,'2025-07-11 15:06:14','132EA000',1,6,'reception'),
(518,'CHARLES ADJASI','Walk-In','+27728027074',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 11:20:14',NULL,0,NULL,NULL,'STELLENBOSCH','2025-07-14','OFFICIAL\\r\\n','2025-07-14 12:20:14','2025-07-14 12:57:42',NULL,0,NULL,NULL,'12:20:00','',0,0,0,NULL,'2025-07-14 11:57:42','A72AD414',1,6,'reception'),
(519,'LIZELLE AKNNEEMEYER','Walk-In','+270837414580',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 11:21:35',NULL,0,NULL,NULL,'STELLENBOSCH','2025-07-14','OFFICIAL MEETING WITH MRS FAITHFULNESS','2025-07-14 12:21:35','2025-07-14 12:57:35',NULL,0,NULL,NULL,'12:21:00','',0,0,0,NULL,'2025-07-14 11:57:35','F1298BDD',1,6,'reception'),
(520,'OKEY OGWUEGBU +2 GUESTS','Walk-In','08033867760',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 12:45:50',NULL,0,NULL,NULL,'NIL','2025-07-14','OFFICIAL MEETING WITH THE RCOO ','2025-07-14 13:45:50','2025-07-14 14:53:48',NULL,0,NULL,NULL,'13:44:00','',0,0,0,NULL,'2025-07-14 13:53:48','80F56629',1,NULL,'reception'),
(521,'CHIEF AHMADI CHIKWE','Walk-In','08036331051',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 12:53:29',NULL,0,NULL,NULL,'SKYBLUE SERVICES LTD','2025-07-14','OFFICIAL MEETING WITH RCOO','2025-07-14 13:53:29','2025-07-14 14:53:38',NULL,0,NULL,NULL,'13:53:00','',0,0,0,NULL,'2025-07-14 13:53:38','41EFA566',1,6,'reception'),
(522,'GODSON UKWUTE','Walk-In','08033008675',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 12:54:51',NULL,0,NULL,NULL,'SKYBLUE LTD','2025-07-14','OFFICIAL MEETING WITH THE RCOO','2025-07-14 13:54:51','2025-07-14 14:53:32',NULL,0,NULL,NULL,'13:54:00','',0,0,0,NULL,'2025-07-14 13:53:32','CCDB5D7E',1,6,'reception'),
(523,'SODIQ OPALEYE','Walk-In','07060601386',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 13:28:55',NULL,0,NULL,NULL,'DAHUA TECHNOLOGY','2025-07-14','OFFICIAL ','2025-07-14 14:28:55','2025-07-16 12:45:50',NULL,0,NULL,NULL,'14:28:00','',0,0,0,NULL,'2025-07-16 11:45:50','ECF5080A',1,6,'reception'),
(524,'VERA UTTAH ','Walk-In','08126441941',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 15:33:22',NULL,0,NULL,NULL,'ACCESS BANK','2025-07-14','OFFICIAL','2025-07-14 16:33:22','2025-07-14 16:41:57',NULL,0,NULL,NULL,'15:16:00','',0,0,0,NULL,'2025-07-14 15:41:57','69F8513E',1,NULL,'reception'),
(525,'FARUQ UMAR','Walk-In','080655517747',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 15:35:19',NULL,0,NULL,NULL,'APPL HYDROGEN','2025-07-14','OFFICIAL MEETING WITH ME PETER OLOWONONI','2025-07-14 16:35:19','2025-07-14 16:41:51',NULL,0,NULL,NULL,'15:33:00','',0,0,0,NULL,'2025-07-14 15:41:51','2BB0ABDA',1,NULL,'reception'),
(526,'IDARESIK EKPO','Walk-In','07041000443',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 15:36:22',NULL,0,NULL,NULL,'APPL HYDROGEN','2025-07-14','OFFICIAL MEETING WITH MR PETER OLOWONONI','2025-07-14 16:36:22','2025-07-14 16:41:43',NULL,0,NULL,NULL,'15:33:00','',0,0,0,NULL,'2025-07-14 15:41:43','0B267E09',1,NULL,'reception'),
(527,'AAKA STEPHEN','Walk-In','08039590185',NULL,'',NULL,'checked_out',0,NULL,'2025-07-14 15:43:27',NULL,0,NULL,NULL,'MNEPS','2025-07-14','OFFICIAL MEETING WITH MRS MERCY NWANJA','2025-07-14 16:43:27','2025-07-16 16:22:38',NULL,0,NULL,NULL,'16:12:00','',0,0,0,NULL,'2025-07-16 15:22:38','057A1D1B',1,6,'reception'),
(535,'Temi','Walk-In','08038282132',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 09:07:19',NULL,0,NULL,NULL,'Federal Min of Industry, Trade and Investment','2025-07-16','Official','2025-07-16 10:07:19','2025-07-16 14:36:40',NULL,0,NULL,NULL,'10:06:00','',0,0,0,NULL,'2025-07-16 13:36:40','AEDE3EA6',1,5,'reception'),
(536,'MUSA BADAMASI','Walk-In','8083652278',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 10:28:14',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-16','OFFICIAL MEETING WITH ZAINAB BELLO','2025-07-16 11:28:14','2025-07-16 11:52:44',NULL,0,NULL,NULL,'11:26:00','',0,0,0,NULL,'2025-07-16 10:52:44','A6A8E917',1,NULL,'reception'),
(537,'ZITA AKAGHIGBE','Walk-In','08140259818',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 12:18:45',NULL,0,NULL,NULL,'NIL','2025-07-16','OFFICIAL MEETING WITH MRS ZAINAB BELLO','2025-07-16 13:18:45','2025-07-16 16:22:00',NULL,0,NULL,NULL,'13:18:00','',0,0,0,NULL,'2025-07-16 15:22:00','F8F08EDD',1,6,'reception'),
(538,'VANESSA OGBONNA','Walk-In','08100718323',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 12:59:16',NULL,0,NULL,NULL,'NIL','2025-07-16','OFFICIAL MEETING WITH MR BENOIT MESSI','2025-07-16 13:59:16','2025-07-16 15:21:19',NULL,0,NULL,NULL,'13:59:00','',0,0,0,NULL,'2025-07-16 14:21:19','3919B243',1,NULL,'reception'),
(539,'JULIET EZENWA','Walk-In','07031677543',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 13:11:05',NULL,0,NULL,NULL,'SIGNAL ALLIANCE TECHNOLOGY','2025-07-16','OFFICIAL MEETING WITH MR OLUSESAN OLUSEYE','2025-07-16 14:11:05','2025-07-16 14:36:25',NULL,0,NULL,NULL,'14:10:00','',0,0,0,NULL,'2025-07-16 13:36:25','E1B32C77',1,6,'reception'),
(540,'Gosetseone Florence Leketi','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:05:29',NULL,0,NULL,NULL,'APPO','2025-07-16','OFFICIAL MEETING WITH RCOO','2025-07-16 17:05:29','2025-07-17 13:40:30',NULL,0,NULL,NULL,'15:13:00','',0,0,0,NULL,'2025-07-17 12:40:30','5952CD9E',1,6,'reception'),
(541,'Zakaria Dosso','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:07:01',NULL,0,NULL,NULL,'APPO','2025-07-16','OFFICIAL MEETING WITH RCOO','2025-07-16 17:07:01','2025-07-17 13:40:35',NULL,0,NULL,NULL,'15:11:00','',0,0,0,NULL,'2025-07-17 12:40:35','C6ADF119',1,6,'reception'),
(542,'	Dr. Estevao Pedro ','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:07:53',NULL,0,NULL,NULL,'APPO','2025-07-16','OFFICIAL MEETING WITH THE RCOO','2025-07-16 17:07:53','2025-07-17 13:40:19',NULL,0,NULL,NULL,'15:11:00','',0,0,0,NULL,'2025-07-17 12:40:19','96E05529',1,6,'reception'),
(543,'	Mr. Richard Gyan-Mensah ','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:08:39',NULL,0,NULL,NULL,'APPO','2025-07-16','OFFICIAL MEETING WITH THE RCOO','2025-07-16 17:08:39','2025-07-17 13:40:19',NULL,0,NULL,NULL,'15:11:00','',0,0,0,NULL,'2025-07-17 12:40:19','7C768B10',1,6,'reception'),
(544,'	Mr. Abdulmalik Halilu','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:09:56',NULL,0,NULL,NULL,'APPO','2025-07-16','OFFICIAL MEETING WITH RCOO','2025-07-16 17:09:56','2025-07-17 13:40:39',NULL,0,NULL,NULL,'15:11:00','',0,0,0,NULL,'2025-07-17 12:40:39','445B5090',1,6,'reception'),
(545,'	Mr. Mike Omeutha','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:11:07',NULL,0,NULL,NULL,'APPO','2025-07-16','OFFICIAL MEETING WITH THE RCOO','2025-07-16 17:11:07','2025-07-18 10:27:48',NULL,0,NULL,NULL,'15:11:00','',0,0,0,NULL,'2025-07-18 09:27:48','B7240368',1,6,'reception'),
(546,'	Ms. Abena Okoampah ','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:12:04',NULL,0,NULL,NULL,'APPO','2025-07-16','OFFICIAL MEETING WITH RCOO','2025-07-16 17:12:04','2025-07-18 10:27:44',NULL,0,NULL,NULL,'15:11:00','',0,0,0,NULL,'2025-07-18 09:27:44','A704C4BC',1,6,'reception'),
(547,'	Mr. Emeka Ngene ','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:12:53',NULL,0,NULL,NULL,'APPO','2025-07-16','OFFICIAL MEETING WITH RCOO','2025-07-16 17:12:53','2025-07-18 10:27:37',NULL,0,NULL,NULL,'15:11:00','',0,0,0,NULL,'2025-07-18 09:27:37','7423E327',1,6,'reception'),
(548,'LINDA AGBAKWU','Walk-In','08136942263',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:22:49',NULL,0,NULL,NULL,'HILTON','2025-07-16','OFFICIAL MEETING WITH MR BENOIT MESSI','2025-07-16 17:22:49','2025-07-17 14:38:39',NULL,0,NULL,NULL,'17:15:00','',0,0,0,NULL,'2025-07-17 13:38:39','B0596715',1,6,'reception'),
(549,'GBOLAHAM AYODELE','Walk-In','08135999265',NULL,'',NULL,'checked_out',0,NULL,'2025-07-16 16:27:14',NULL,0,NULL,NULL,'ALPHA MORGAN','2025-07-16','OFFICIAL','2025-07-16 17:27:14','2025-07-18 10:27:32',NULL,0,NULL,NULL,'17:25:00','',0,0,0,NULL,'2025-07-18 09:27:32','B00F8639',1,5,'reception'),
(550,'USMAN BABA AHMED ','Walk-In','08033890021',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 09:16:41',NULL,0,NULL,NULL,'USBAB MULTICHOICE LIMITED','2025-07-17','OFFICIAL','2025-07-17 10:16:41','2025-07-17 16:04:57',NULL,0,NULL,NULL,'10:16:00','',0,0,0,NULL,'2025-07-17 15:04:57','E4813172',1,NULL,'reception'),
(551,'UMAR FARUK','Walk-In','080065517747',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 09:27:27',NULL,0,NULL,NULL,'NIL','2025-07-17','OFFICIAL MEETING WITH MR PETER OLOWONONI','2025-07-17 10:27:27','2025-07-17 11:38:03',NULL,0,NULL,NULL,'10:26:00','',0,0,0,NULL,'2025-07-17 10:38:03','2515E0B1',1,NULL,'reception'),
(552,'SEC GEN','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 12:39:12',NULL,0,NULL,NULL,'APPO','2025-07-17','OFFICIAL','2025-07-17 13:39:12','2025-07-17 17:13:12',NULL,0,NULL,NULL,'14:00:00','',0,0,0,NULL,'2025-07-17 16:13:12','7895C388',1,NULL,'reception'),
(553,'TOLU OLAGOKE','Walk-In','08037388865',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 12:43:34',NULL,0,NULL,NULL,'JERRY TRAVELS','2025-07-17','OFFICIAL MEETING WITH MRS UJU OKAFOR','2025-07-17 13:43:34','2025-07-17 16:04:38',NULL,0,NULL,NULL,'13:43:00','',0,0,0,NULL,'2025-07-17 15:04:38','468E2C94',1,NULL,'reception'),
(554,'IKECHUKWU BASHA ','Walk-In','08166602481',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 12:56:40',NULL,0,NULL,NULL,'APPO','2025-07-17','OFFICIAL MEETING ','2025-07-17 13:56:40','2025-07-17 16:10:59',NULL,0,NULL,NULL,'14:00:00','',0,0,0,NULL,'2025-07-17 15:10:59','9BCC2FF2',1,5,'reception'),
(555,'STEVEN AAKA','Walk-In','08039590185',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 13:26:01',NULL,0,NULL,NULL,'MNEBS','2025-07-17','OFFICIAL','2025-07-17 14:26:01','2025-07-17 16:05:24',NULL,0,NULL,NULL,'14:25:00','',0,0,0,NULL,'2025-07-17 15:05:24','DB5B251B',1,5,'reception'),
(556,'LOLA ONWUBALILI','Walk-In','08037231661',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 13:27:30',NULL,0,NULL,NULL,'JAMES CUBITT ARCHICTEC','2025-07-17','OFFICIAL MEETING','2025-07-17 14:27:30','2025-07-17 15:05:25',NULL,0,NULL,NULL,'14:25:00','',0,0,0,NULL,'2025-07-17 14:05:25','87C0969E',1,NULL,'reception'),
(557,'PAUL IYALEKHUE','Walk-In','08078683277',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 13:37:59',NULL,0,NULL,NULL,'APPLE SHOP','2025-07-17','MEETING WITH MR OLUSESAN OLUSEYE','2025-07-17 14:37:59','2025-07-17 14:38:08',NULL,0,NULL,NULL,'14:32:00','',0,0,0,NULL,'2025-07-17 13:38:08','487E60CF',1,6,'reception'),
(558,'AISHA AAUGIE','Walk-In','08022228912',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 14:33:16',NULL,0,NULL,NULL,'CENTER FOR BLACK AND AFRICAN ARTS & CIVILIZATION','2025-07-17','OFFICIAL MEETING WITH RCOO','2025-07-17 15:33:16','2025-07-17 16:04:20',NULL,0,NULL,NULL,'15:33:00','',0,0,0,NULL,'2025-07-17 15:04:20','AFBCF0F7',1,6,'reception'),
(559,'ABUBAKAR','Walk-In','08169489677',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 14:47:53',NULL,0,NULL,NULL,'WUSE','2025-07-17','OFFICIAL','2025-07-17 15:47:53','2025-07-18 09:36:33',NULL,0,NULL,NULL,'15:47:00','',0,0,0,NULL,'2025-07-18 08:36:33','804797C0',1,NULL,'reception'),
(560,'OLUSEGUN OLUTAYO','Walk-In','09085496566',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 15:03:02',NULL,0,NULL,NULL,'CHERITH-CODE','2025-07-17','OFFICIAL MEETING WITH MR BENOIT MESSI','2025-07-17 16:03:02','2025-07-18 09:33:01',NULL,0,NULL,NULL,'15:38:00','',0,0,0,NULL,'2025-07-18 08:33:01','7FCE7C2B',1,NULL,'reception'),
(561,'FELIX OSHAJI','Walk-In','08147377577',NULL,'',NULL,'checked_out',0,NULL,'2025-07-17 16:22:59',NULL,0,NULL,NULL,'ONOMO HOTEL','2025-07-17','TO SEE MR PETER','2025-07-17 17:22:59','2025-07-17 17:24:13',NULL,0,NULL,NULL,'17:20:00','',0,0,0,NULL,'2025-07-17 16:24:13','6A77C2FC',1,6,'reception'),
(562,'DANLADI ACHOR','Walk-In','07064171327',NULL,'',NULL,'checked_out',0,NULL,'2025-07-18 08:14:28',NULL,0,NULL,NULL,'HPE','2025-07-18','OFFICIAL MEETING WITH MR OLUSEYE OLUSESAN','2025-07-18 09:14:28','2025-07-18 11:17:26',NULL,0,NULL,NULL,'09:14:00','',0,0,0,NULL,'2025-07-18 10:17:26','85CDC2BF',1,6,'reception'),
(563,'PEACE RITA ONDOMA','Walk-In','08106325403',NULL,'',NULL,'checked_out',0,NULL,'2025-07-18 09:18:18',NULL,0,NULL,NULL,'NIL','2025-07-18','MEETING WITH RCOO','2025-07-18 10:18:18','2025-07-18 10:56:57',NULL,0,NULL,NULL,'10:06:00','Floor 9',0,0,0,NULL,'2025-07-18 09:56:57','DB57A6A6',1,6,'reception'),
(564,'AYO AKANO','Walk-In','08035866439',NULL,'',NULL,'checked_out',0,NULL,'2025-07-18 11:12:07',NULL,0,NULL,NULL,'NIL','2025-07-18','MEETING WITH MR EMEKA AND MR CYPRIAN','2025-07-18 12:12:07','2025-07-22 11:55:46',NULL,0,NULL,NULL,'12:10:00','Mezzanine',0,0,0,NULL,'2025-07-22 10:55:46','0936BE7A',1,6,'reception'),
(565,'KHALIFA ABDULAZIM','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-18 13:13:22',NULL,0,NULL,NULL,'KK KINGDOM GROUP','2025-07-18','MEETING WITH RCOO','2025-07-18 14:13:22','2025-07-22 11:55:41',NULL,0,NULL,NULL,'14:12:00','Floor 9',0,0,0,NULL,'2025-07-22 10:55:41','D63AD73E',1,NULL,'reception'),
(566,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-07-18 14:50:09',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-18','MEETING WITH ATALIA WURUMBA','2025-07-18 15:50:09','2025-07-22 11:55:36',NULL,0,NULL,NULL,'15:49:00','Floor 6',0,0,0,NULL,'2025-07-22 10:55:36','28D8276B',1,NULL,'reception'),
(567,'TEMPLE AFOLABI','Walk-In','09053284718',NULL,'',NULL,'checked_out',0,NULL,'2025-07-18 14:51:14',NULL,0,NULL,NULL,'AMCE','2025-07-18','MEETING WITH MERCY NWANJA','2025-07-18 15:51:14','2025-07-22 11:55:27',NULL,0,NULL,NULL,'15:50:00','Floor 6',0,0,0,NULL,'2025-07-22 10:55:27','01665980',1,NULL,'reception'),
(568,'OSUAJI FELIX','Walk-In','08147377577',NULL,'',NULL,'checked_out',0,NULL,'2025-07-18 14:52:06',NULL,0,NULL,NULL,'ONOMO','2025-07-18','MEETING WITH MR PETER OLOWONONI','2025-07-18 15:52:06','2025-07-22 11:55:21',NULL,0,NULL,NULL,'15:51:00','Floor 8',0,0,0,NULL,'2025-07-22 10:55:21','19B2F3B4',1,NULL,'reception'),
(569,'VERA ATTAH','Walk-In','08126441941',NULL,'',NULL,'checked_out',0,NULL,'2025-07-21 13:27:23',NULL,0,NULL,NULL,'ACCESS ','2025-07-21','OFFICIAL','2025-07-21 14:27:23','2025-07-22 11:55:15',NULL,0,NULL,NULL,'14:27:00','Floor 8',0,0,0,NULL,'2025-07-22 10:55:15','644D025B',1,5,'reception'),
(570,'GBOLAHAN','Walk-In','08126441941',NULL,'',NULL,'checked_out',0,NULL,'2025-07-21 13:30:58',NULL,0,NULL,NULL,'ACCESS','2025-07-21','OFFICIAL','2025-07-21 14:30:58','2025-07-22 11:55:09',NULL,0,NULL,NULL,'14:30:00','Floor 8',0,0,0,NULL,'2025-07-22 10:55:09','395A6D56',1,5,'reception'),
(571,'ZINO WARRI','Walk-In','08187277161',NULL,'',NULL,'checked_out',0,NULL,'2025-07-21 14:15:52',NULL,0,NULL,NULL,'JERRY TRAVELS','2025-07-21','OFFICIAL MEETING WITH MRS ADAEZE ADIGO','2025-07-21 15:15:52','2025-07-22 11:54:59',NULL,0,NULL,NULL,'15:14:00','Floor 8',0,0,0,NULL,'2025-07-22 10:54:59','3ECA8029',1,6,'reception'),
(572,'FELIX ATSOR','Walk-In','08101358581',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 10:51:44',NULL,0,NULL,NULL,'NIL','2025-07-22','PERSONAL MEETING','2025-07-22 11:51:44','2025-07-22 14:40:27',NULL,0,NULL,NULL,'11:29:00','Ground Floor',0,0,0,NULL,'2025-07-22 13:40:27','CDF2F983',1,NULL,'reception'),
(573,'ZINO WARRI','Walk-In','08187277161',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 12:19:01',NULL,0,NULL,NULL,'JERRY TRAVELS','2025-07-22','OFFICIAL MEETING WITH MR AYO MUBARAK','2025-07-22 13:19:01','2025-07-22 14:40:22',NULL,0,NULL,NULL,'13:18:00','Floor 8',0,0,0,NULL,'2025-07-22 13:40:22','D58112AA',1,6,'reception'),
(574,'EPHRAIM MALEH','Walk-In','08136388977',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 12:59:17',NULL,0,NULL,NULL,'ROYAL LAND COMMUNICATIONS','2025-07-22','OFFICIAL MEETING WITH MR BENOIT MESSI','2025-07-22 13:59:17','2025-07-22 14:41:07',NULL,0,NULL,NULL,'13:57:00','Floor 8',0,0,0,NULL,'2025-07-22 13:41:07','5D68CD46',1,NULL,'reception'),
(575,'BRIDGET KADIRI','Walk-In','08033079106',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 13:10:19',NULL,0,NULL,NULL,'FIDELITY BANK','2025-07-22','OFFICIAL MEETING WITH MRS OBIOMA IWEKA','2025-07-22 14:10:19','2025-07-22 14:37:10',NULL,0,NULL,NULL,'14:08:00','Floor 8',0,0,0,NULL,'2025-07-22 13:37:10','F57DAE7D',1,NULL,'reception'),
(576,'ANGELA CHUKWUMA','Walk-In','08033221626',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 15:28:23',NULL,0,NULL,NULL,'NIL','2025-07-22','OFFICIAL MEETING WITH THE RCOO','2025-07-22 16:28:23','2025-07-23 08:24:32',NULL,0,NULL,NULL,'16:27:00','Floor 6',0,0,0,NULL,'2025-07-23 07:24:32','D8BB4566',1,NULL,'reception'),
(577,'FRANK NWAOTULE','Walk-In','08103231341',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 15:33:52',NULL,0,NULL,NULL,'DELIGHT MARITIME LTD','2025-07-22','OFFICIAL MEETING WITH MR REMIGIUS NWACHUKWU','2025-07-22 16:33:52','2025-07-23 08:24:38',NULL,0,NULL,NULL,'16:32:00','Floor 6',0,0,0,NULL,'2025-07-23 07:24:38','F2D80BFE',1,6,'reception'),
(578,'DOSU ODEKUNLE','Walk-In','0808663404',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 15:35:27',NULL,0,NULL,NULL,'LEVINE ENERGY','2025-07-22','OFFICIAL - MR PETER','2025-07-22 16:35:27','2025-07-23 08:24:43',NULL,0,NULL,NULL,'16:34:00','Floor 8',0,0,0,NULL,'2025-07-23 07:24:43','4500C7BE',1,NULL,'reception'),
(579,'MUSA AHMAD','Walk-In','07065883005	',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 15:41:46',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-22','OFFICIAL MEETING WITH MR MAYOWA','2025-07-22 16:41:46','2025-07-22 17:08:24',NULL,0,NULL,NULL,'16:41:00','Floor 8',0,0,0,NULL,'2025-07-22 16:08:24','F2F51613',1,6,'reception'),
(580,'JULIET','Walk-In','08161970873',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 15:51:27',NULL,0,NULL,NULL,'FIRS','2025-07-22','OFFICIAL MEETING WITH OBIOMA IWEKA','2025-07-22 16:51:27','2025-07-23 08:24:48',NULL,0,NULL,NULL,'16:51:00','Floor 8',0,0,0,NULL,'2025-07-23 07:24:48','04532394',1,6,'reception'),
(581,'SEGUN ','Walk-In','08061093882',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 16:07:55',NULL,0,NULL,NULL,'SETEM','2025-07-22','OFFICIAL MEETING WITH MR MULAI KANAGIE','2025-07-22 17:07:55','2025-07-22 17:20:50',NULL,0,NULL,NULL,'17:03:00','Floor 8',0,0,0,NULL,'2025-07-22 16:20:50','8D4FDA0B',1,6,'reception'),
(582,'PEACE AUDU','Walk-In','070073171100',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 16:43:00',NULL,0,NULL,NULL,'NIL','2025-07-22','OFFICIAL MEETING WITH MR BENOIT MESSI','2025-07-22 17:43:00','2025-07-23 08:24:53',NULL,0,NULL,NULL,'17:41:00','Floor 8',0,0,0,NULL,'2025-07-23 07:24:53','8E204367',1,6,'reception'),
(583,'OBAJE ABOH','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-22 16:43:00',NULL,0,NULL,NULL,'NIL','2025-07-22','OFFICIAL MEETING WITH MR BENOIT MESSI','2025-07-22 17:43:00','2025-07-23 08:24:59',NULL,0,NULL,NULL,'17:42:00','',0,0,0,NULL,'2025-07-23 07:24:59','FCE5D21B',1,6,'reception'),
(588,'JULIET','Walk-In','08161970873',NULL,'',NULL,'checked_out',0,NULL,'2025-07-23 12:11:17',NULL,0,NULL,NULL,'FIRS','2025-07-23','OFFICIAL MEETING WITH OBIOMA IWEKA','2025-07-23 13:11:17','2025-07-23 13:49:19',NULL,0,NULL,NULL,'12:38:00','Floor 8',0,0,0,NULL,'2025-07-23 12:49:19','37D12F47',1,6,'reception'),
(589,'OLUFEMI OLONU','Walk-In','08022674233',NULL,'',NULL,'checked_out',0,NULL,'2025-07-23 12:11:17',NULL,0,NULL,NULL,'ARM','2025-07-23','OFFICIAL MEETING WITH OBIOMA IWEKA','2025-07-23 13:11:17','2025-07-23 13:49:14',NULL,0,NULL,NULL,'12:38:00','',0,0,0,NULL,'2025-07-23 12:49:14','FD0DC910',1,6,'reception'),
(590,'VERA UTTAH','Walk-In','08126441941',NULL,'',NULL,'checked_out',0,NULL,'2025-07-23 12:12:31',NULL,0,NULL,NULL,'ACCESS BANK','2025-07-23','OFFICIAL MEETING WITH THE RCOO','2025-07-23 13:12:31','2025-07-23 13:52:53',NULL,0,NULL,NULL,'13:12:00','Floor 9',0,0,0,NULL,'2025-07-23 12:52:53','5625AD12',1,6,'reception'),
(591,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-07-23 13:00:00',NULL,0,NULL,NULL,'BDC','2025-07-23','OFFICIAL MEETING WITH ZAINAB BELLO','2025-07-23 14:00:00','2025-07-23 16:09:23',NULL,0,NULL,NULL,'13:59:00','Floor 8',0,0,0,NULL,'2025-07-23 15:09:23','A49C1224',1,6,'reception'),
(592,'Mr. Gbolahan Ayodele','Walk-In','08135999265',NULL,'',NULL,'checked_out',0,NULL,'2025-07-23 14:48:41',NULL,0,NULL,NULL,'Alpha Morgan','2025-07-23','Official meeting with Benoit Messi','2025-07-23 15:48:41','2025-07-23 16:09:28',NULL,0,NULL,NULL,'15:48:00','Floor 8',0,0,0,NULL,'2025-07-23 15:09:28','B2D28F22',1,NULL,'reception'),
(593,'Sarah Ajeh','Faithfulness Oyinloye','+2348130405874',NULL,'ajsarahluv@gmail.com',NULL,'checked_out',1,'QR-6882399030680','2025-07-24 13:47:30',56,56,NULL,NULL,'Afrexim','2025-07-24','Official',NULL,'2025-07-29 12:52:11',NULL,0,NULL,NULL,'15:00:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-07-29 11:52:11','CF9468E6',0,NULL,'reception'),
(594,'Colette','Faithfulness Oyinloye','+2348032960723',NULL,'vickycolette@gmail.com',NULL,'rejected',0,NULL,'2025-07-24 13:51:14',56,56,NULL,NULL,'afrexim','2025-07-24','Official',NULL,NULL,NULL,0,NULL,NULL,'15:00:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-07-29 09:26:59','B4242CF8',0,NULL,'reception'),
(595,'VERA ATTAH','Walk-In','08126441941	',NULL,'',NULL,'checked_out',0,NULL,'2025-07-24 15:34:57',NULL,0,NULL,NULL,'ACCESS BANK','2025-07-24','OFFICIAL MEETING WITH MR BENOIT AND MRS ADA','2025-07-24 16:34:57','2025-07-25 09:57:16',NULL,0,NULL,NULL,'16:34:00','Floor 8',0,0,0,NULL,'2025-07-25 08:57:16','FF458FAC',1,6,'reception'),
(596,'FRANCIS','Walk-In','08030832045',NULL,'',NULL,'checked_out',0,NULL,'2025-07-24 15:46:10',NULL,0,NULL,NULL,'PENTFIELD TECHNOLOGIES','2025-07-24','OFFICIAL MEETING WITH MR EMEKA','2025-07-24 16:46:10','2025-07-25 09:57:12',NULL,0,NULL,NULL,'16:45:00','Mezzanine',0,0,0,NULL,'2025-07-25 08:57:12','2DA39074',1,6,'reception'),
(597,'MUSA AHAMD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-07-24 15:47:21',NULL,0,NULL,NULL,'BDC','2025-07-24','TO SEE MR BAKARE','2025-07-24 16:47:21','2025-07-25 09:57:09',NULL,0,NULL,NULL,'16:46:00','Floor 6',0,0,0,NULL,'2025-07-25 08:57:09','9A654E33',1,6,'reception'),
(598,'KELVIN ILERAMAH','Walk-In','07069343321',NULL,'',NULL,'checked_out',0,NULL,'2025-07-25 10:07:11',NULL,0,NULL,NULL,'KELVINIE ENTERPRISE','2025-07-25','OFFICIAL - ADAEZE ADIGO','2025-07-25 11:07:11','2025-07-25 11:38:33',NULL,0,NULL,NULL,'11:05:00','Floor 8',0,0,0,NULL,'2025-07-25 10:38:33','12A466CD',1,NULL,'reception'),
(599,'MUSA','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-07-25 10:38:00',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-25','OFFICIAL- MERCY NWANJA','2025-07-25 11:38:00','2025-07-25 11:47:29',NULL,0,NULL,NULL,'11:37:00','Floor 6',0,0,0,NULL,'2025-07-25 10:47:29','CA64FC61',1,NULL,'reception'),
(605,'Theresa edozie','Walk-In','08132883419',NULL,'',NULL,'checked_out',0,NULL,'2025-07-25 13:05:55',NULL,0,NULL,NULL,'NIL','2025-07-25','PERSONAL MEETING WITH OBIOMA IWEKA','2025-07-25 14:05:55','2025-07-25 15:41:27',NULL,0,NULL,NULL,'14:03:00','Floor 8',0,0,0,NULL,'2025-07-25 14:41:27','26C9A755',1,6,'reception'),
(606,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-07-25 13:57:01',NULL,0,NULL,NULL,'BDC','2025-07-25','OFFICIAL MEETING WITH MR MULAI KANAGIE','2025-07-25 14:57:01','2025-07-25 15:03:20',NULL,0,NULL,NULL,'14:45:00','Floor 8',0,0,0,NULL,'2025-07-25 14:03:20','7606E67D',1,6,'reception'),
(607,'BABAY LAMIDO','Walk-In','08171544122',NULL,'',NULL,'checked_out',0,NULL,'2025-07-25 15:05:08',NULL,0,NULL,NULL,'BAYIAM INVESTMENT PROPERTIES','2025-07-25','REQUEST VISIT FOR ADMIN HEAD','2025-07-25 16:05:08','2025-07-28 09:29:49',NULL,0,NULL,NULL,'16:04:00','Ground Floor',0,0,0,NULL,'2025-07-28 08:29:49','FF4E6810',1,6,'reception'),
(608,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-07-28 13:22:46',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-28','TO SEE MERCY NWAJA\\r\\n','2025-07-28 14:22:46','2025-07-28 14:45:27',NULL,0,NULL,NULL,'14:22:00','Floor 6',0,0,0,NULL,'2025-07-28 13:45:27','329A3532',1,6,'reception'),
(619,'ADELEKE ADEOTI + 3 GUESTS','Oluwaseun Yinka Alabi ','07039506599 ',NULL,'lekea@phillipsoutsourcing.net',NULL,'checked_out',1,'QR-688895fcd3354','2025-07-29 09:23:33',40,0,NULL,NULL,'PHILIPS OUTSOURCING LTD','2025-07-29','BRIEF VISIT TO THE AATC','2025-07-29 15:36:26','2025-07-29 16:45:09',NULL,0,NULL,NULL,'15:00:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-07-29 15:45:09','66529E74',1,6,'reception'),
(620,'BABATUNDE FADAHUNSI','Oluwaseun Yinka Alabi ','NIL',NULL,'babatundef@phillipsoutsourcing.net',NULL,'checked_out',1,'QR-688895e95b97c','2025-07-29 09:30:58',40,0,NULL,NULL,'PHILIPS OUTSOURCING LTD','2025-07-29','BRIEF VISIT TO THE AATC','2025-07-29 15:38:52','2025-07-29 16:45:01',NULL,0,NULL,NULL,'15:00:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-07-29 15:45:01','5598E831',1,6,'reception'),
(621,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-07-29 09:47:36',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-29','TO SEE MR MULAI KANAGIE','2025-07-29 10:47:36','2025-07-29 13:06:36',NULL,0,NULL,NULL,'10:47:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-07-29 12:06:36','A489EFB9',1,6,'reception'),
(622,'TEMPLE AFOLABI','Walk-In','08081000143',NULL,'',NULL,'checked_out',0,NULL,'2025-07-29 11:34:00',NULL,0,NULL,NULL,'AMCE','2025-07-29','TO SEE MRS MERCY NWANJA','2025-07-29 12:34:00','2025-07-29 16:45:15',NULL,0,NULL,NULL,'12:33:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-07-29 15:45:15','40B4327A',1,NULL,'reception'),
(635,'SIMON TULEH ','Walk-In','08029640726',NULL,'',NULL,'checked_out',0,NULL,'2025-07-29 13:47:38',NULL,0,NULL,NULL,'CLEARFIELD','2025-07-29','TO SEE MR MAYOWA BABATUNDE','2025-07-29 14:47:38','2025-07-29 14:51:45',NULL,0,NULL,NULL,'14:43:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-07-29 13:51:45','A5F75CF9',1,NULL,'reception'),
(636,'CHIBUZOR','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-07-29 13:47:38',NULL,0,NULL,NULL,'CLEARFIELD','2025-07-29','TO SEE MAYOWA BABTUNDE','2025-07-29 14:47:38','2025-07-29 14:50:59',NULL,0,NULL,NULL,'14:47:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-07-29 13:50:59','3A27260D',1,NULL,'reception'),
(638,'JOSEPH ADESHINA','Walk-In','08148895195',NULL,'',NULL,'checked_out',0,NULL,'2025-07-29 15:57:40',NULL,0,NULL,NULL,'NIL','2025-07-29','TO DROP A PACKAGE FOR MERCY NWANJA','2025-07-29 16:57:40','2025-07-29 17:43:53',NULL,0,NULL,NULL,'16:54:00','Ground Floor',0,0,0,NULL,'2025-07-29 16:43:53','CB47C86C',1,6,'reception'),
(639,'SIMON','Walk-In','08029640726',NULL,'',NULL,'checked_out',0,NULL,'2025-07-29 16:56:51',NULL,0,NULL,NULL,'CLEAR FIELD','2025-07-29','OFFICIAL - REMI NWACHUKWU','2025-07-29 17:56:51','2025-07-30 10:21:53',NULL,0,NULL,NULL,'17:54:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-07-30 09:21:53','6BC11B01',1,5,'reception'),
(643,'SAMUEL','Walk-In','nil',NULL,'',NULL,'checked_out',0,NULL,'2025-07-30 10:07:42',NULL,0,NULL,NULL,'PRIVET SIGNAGE LTD','2025-07-30','TO INSTALL SIGNAGE IN THE FACILITY','2025-07-30 11:07:42','2025-07-30 14:49:12',NULL,0,NULL,NULL,'10:52:00','Ground Floor',0,0,0,NULL,'2025-07-30 13:49:12','6E9BBD90',1,6,'reception'),
(645,'REGINALD IHEBUZO','Walk-In','08033389345',NULL,'',NULL,'checked_out',0,NULL,'2025-07-30 10:10:54',NULL,0,NULL,NULL,'NIGER DELTA DEVELOPMENT BANK','2025-07-30','OFFICIAL MEETING WITH MR REMIGIUS NWACHUKWU','2025-07-30 11:10:54','2025-07-30 14:49:00',NULL,0,NULL,NULL,'11:10:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-07-30 13:49:00','46C12CF0',1,6,'reception'),
(646,'JAMES EKAHEM','Walk-In','08055161368',NULL,'',NULL,'checked_out',0,NULL,'2025-07-30 10:52:57',NULL,0,NULL,NULL,'NIL','2025-07-30','TO SEE MR JIMOH BAKARE','2025-07-30 11:52:57','2025-07-30 14:48:50',NULL,0,NULL,NULL,'11:52:00','Ground Floor',0,0,0,NULL,'2025-07-30 13:48:50','084DEE20',1,6,'reception'),
(647,'CHIOMA OSAKWE','Walk-In','08124385432',NULL,'',NULL,'checked_out',0,NULL,'2025-07-30 13:38:38',NULL,0,NULL,NULL,'UBA BANK','2025-07-30','TO SEE MR WISDOM TAIWAH','2025-07-30 14:38:38','2025-07-30 14:48:41',NULL,0,NULL,NULL,'12:02:00','Ground Floor',0,0,0,NULL,'2025-07-30 13:48:41','5DC847CB',1,NULL,'reception'),
(648,'BENOIT AMANI','Walk-In','07033868501',NULL,'',NULL,'checked_out',0,NULL,'2025-07-30 13:40:57',NULL,0,NULL,NULL,'ONOMO ALLURE','2025-07-30','TO SEE MS ATALIA','2025-07-30 14:40:57','2025-07-30 14:48:33',NULL,0,NULL,NULL,'13:29:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-07-30 13:48:33','073CAB4D',1,NULL,'reception'),
(649,'MUSA AHMAD ','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-07-30 13:43:21',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-07-30','TO SEE MS ZAINAB AND ATALIA','2025-07-30 14:43:21','2025-07-31 09:04:58',NULL,0,NULL,NULL,'14:42:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-07-31 08:04:58','3538521C',1,NULL,'reception'),
(650,'MOJI WUSU','Walk-In','08008721266',NULL,'',NULL,'checked_out',0,NULL,'2025-07-30 13:45:03',NULL,0,NULL,NULL,'WOODHALL CAPITAL','2025-07-30','TO SEE MRS UJU OKAFOR','2025-07-30 14:45:03','2025-07-31 09:04:53',NULL,0,NULL,NULL,'13:46:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-07-31 08:04:53','B78DBB2D',1,NULL,'reception'),
(651,'AFAM PROMISE','Walk-In','08171707531',NULL,'',NULL,'checked_out',0,NULL,'2025-07-30 13:47:06',NULL,0,NULL,NULL,'FEMKS INVESTMENT LTD','2025-07-30','TO SEE MERCY NWANJA','2025-07-30 14:47:06','2025-07-30 14:47:45',NULL,0,NULL,NULL,'13:54:00','Ground Floor',0,0,0,NULL,'2025-07-30 13:47:45','DBB129D5',1,NULL,'reception'),
(652,'OKOLO NKECHI + 1','Walk-In','08035747589',NULL,'',NULL,'checked_out',0,NULL,'2025-07-31 09:27:18',NULL,0,NULL,NULL,'SAUCE FACTORY','2025-07-31','TO SEE MRS MAUREEN AGEBA','2025-07-31 10:27:18','2025-07-31 14:00:11',NULL,0,NULL,NULL,'10:26:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-07-31 13:00:11','30C159FE',1,NULL,'reception'),
(653,'ASAF CARMIEL','Oluwaseun Yinka Alabi ','NIL',NULL,'acarmiel@nairda.com',NULL,'checked_out',1,'QR-688b3cb6ec47a','2025-07-31 09:46:30',40,0,NULL,NULL,'NAIRDA','2025-07-31','OFFICIAL','2025-07-31 16:26:44','2025-08-01 13:17:38',NULL,0,NULL,NULL,'14:00:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-08-01 12:17:38','3CFD47DE',1,5,'reception'),
(654,'Mr. Julian Goren ','Oluwaseun Yinka Alabi ','NIL',NULL,'j.goren@nairda.com',NULL,'checked_out',1,'QR-688b523a6a26a','2025-07-31 11:19:52',40,0,NULL,NULL,'NAIRDA','2025-07-31','OFFICIAL','2025-07-31 16:26:39','2025-08-01 13:17:47',NULL,0,NULL,NULL,'14:00:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-08-01 12:17:47','88CC859D',1,NULL,'reception'),
(655,'Emmanuel Ughanze','Walk-In','08139099235',NULL,'',NULL,'checked_out',0,NULL,'2025-07-31 12:07:18',NULL,0,NULL,NULL,'stren and blan ','2025-07-31','OFFICIAL MEETING WITH MAUREEN AGEBA','2025-07-31 13:07:18','2025-07-31 17:06:05',NULL,0,NULL,NULL,'13:06:00','Ground Floor',0,0,0,NULL,'2025-07-31 16:06:05','7B3A22FA',1,NULL,'reception'),
(656,'STEPHANIE ODIA','Walk-In','07067945150',NULL,'',NULL,'checked_out',0,NULL,'2025-07-31 12:48:25',NULL,0,NULL,NULL,'SKYWISE GROUP','2025-07-31','INQUIRY','2025-07-31 13:48:25','2025-07-31 15:58:16',NULL,0,NULL,NULL,'13:48:00','Ground Floor',0,0,0,NULL,'2025-07-31 14:58:16','2EA9737E',1,6,'reception'),
(657,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-07-31 13:40:15',NULL,0,NULL,NULL,'BDC','2025-07-31','TO SEE MR FEYI','2025-07-31 14:40:15','2025-07-31 15:58:07',NULL,0,NULL,NULL,'14:38:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-07-31 14:58:07','33044CBB',1,6,'reception'),
(658,'MARIAM HASSAN','Walk-In','07064053444',NULL,'',NULL,'checked_out',0,NULL,'2025-08-01 11:03:27',NULL,0,NULL,NULL,'NIL','2025-08-01','TO SEE ZAINAB BELLO','2025-08-01 12:03:27','2025-08-01 13:17:31',NULL,0,NULL,NULL,'12:03:00','Ground Floor',0,0,0,NULL,'2025-08-01 12:17:31','970E20EA',1,6,'reception'),
(659,'MUSA ABDULRAZAQ','Walk-In','09090007549',NULL,'',NULL,'checked_out',0,NULL,'2025-08-01 11:08:33',NULL,0,NULL,NULL,'NIL','2025-08-01','TO SEE ZAINAB BELLO','2025-08-01 12:08:33','2025-08-01 13:17:23',NULL,0,NULL,NULL,'12:08:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-01 12:17:23','965AFCC1',1,6,'reception'),
(660,'MURITALA MOHAMMED ','Walk-In','08038302265',NULL,'',NULL,'checked_out',0,NULL,'2025-08-01 11:38:15',NULL,0,NULL,NULL,'NIGERIAN FIRE SERVICE','2025-08-01','TO SEE MR GODWIN ','2025-08-01 12:38:15','2025-08-01 14:00:30',NULL,0,NULL,NULL,'12:37:00','Mezzanine',0,0,0,NULL,'2025-08-01 13:00:30','11EEE805',1,6,'reception'),
(661,'JOHN AKPAN ','Walk-In','08023126745',NULL,'',NULL,'checked_out',0,NULL,'2025-08-01 11:56:54',NULL,0,NULL,NULL,'DIGITAL LEARNING NETWORK','2025-08-01','INQUIRY','2025-08-01 12:56:54','2025-08-01 13:16:49',NULL,0,NULL,NULL,'12:56:00','Ground Floor',0,0,0,NULL,'2025-08-01 12:16:49','E88E8B69',1,6,'reception'),
(662,'JOSEPH ADESHINA','Walk-In','08148895195',NULL,'',NULL,'checked_out',0,NULL,'2025-08-01 12:59:00',NULL,0,NULL,NULL,'NIL','2025-08-01','TO SEE GRACE OLUWASEUN','2025-08-01 13:59:00','2025-08-01 15:55:23',NULL,0,NULL,NULL,'13:58:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-01 14:55:23','0312D1CB',1,6,'reception'),
(663,'JAMES EKAHEM','Walk-In','08055161368',NULL,'',NULL,'checked_out',0,NULL,'2025-08-01 13:01:57',NULL,0,NULL,NULL,'NNPC MEGA STATION','2025-08-01','TO SEE MR JIMOH BAKARE','2025-08-01 14:01:57','2025-08-01 15:54:32',NULL,0,NULL,NULL,'14:01:00','Ground Floor',0,0,0,NULL,'2025-08-01 14:54:32','A874E240',1,6,'reception'),
(664,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-08-01 14:53:42',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-08-01','TO SEE MR MULAI KANAGIE','2025-08-01 15:53:42','2025-08-01 17:05:18',NULL,0,NULL,NULL,'15:53:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-01 16:05:18','7A904448',1,6,'reception'),
(665,'DR ERADIRI ','Walk-In','08133590988',NULL,'',NULL,'checked_out',0,NULL,'2025-08-01 15:42:20',NULL,0,NULL,NULL,'AAA SME','2025-08-01','TO DROP AN ITEM FOR MERCY NWANJA','2025-08-01 16:42:20','2025-08-01 17:08:00',NULL,0,NULL,NULL,'16:40:00','Ground Floor',0,0,0,NULL,'2025-08-01 16:08:00','790E8B4C',1,NULL,'reception'),
(666,'SHUAIB','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-01 15:49:57',NULL,0,NULL,NULL,'NIL','2025-08-01','TO SEE MR REMIGIUS NWACHUKWU\\r\\n','2025-08-01 16:49:57','2025-08-01 17:05:03',NULL,0,NULL,NULL,'16:49:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-01 16:05:03','526E3282',1,6,'reception'),
(667,'TONIA ARCHIE + 2 GUESTS','Walk-In','08058298980',NULL,'',NULL,'checked_out',0,NULL,'2025-08-04 10:38:33',NULL,0,NULL,NULL,'ECOWAS FEBWE','2025-08-04','FOR EVENT HALL INSPECTION','2025-08-04 11:38:33','2025-08-04 16:53:19',NULL,0,NULL,NULL,'11:37:00','Ground Floor',0,0,0,NULL,'2025-08-04 15:53:19','A5400585',1,6,'reception'),
(668,'NNAMDI VICTORIA','Walk-In','09062444307',NULL,'',NULL,'checked_out',0,NULL,'2025-08-05 10:13:28',NULL,0,NULL,NULL,'SUREHEALTH LAB','2025-08-05','To see obioma iweka','2025-08-05 11:13:28','2025-08-05 11:28:09',NULL,0,NULL,NULL,'11:12:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-05 10:28:09','B326B140',1,6,'reception'),
(669,'NOSA ','Walk-In','08181164590',NULL,'',NULL,'checked_out',0,NULL,'2025-08-05 11:14:05',NULL,0,NULL,NULL,'ZENITH BANK','2025-08-05','OFFICIAL MEETING WITH MRS ADA','2025-08-05 12:14:05','2025-08-05 12:36:35',NULL,0,NULL,NULL,'12:07:00','Ground Floor',0,0,0,NULL,'2025-08-05 11:36:35','F3945BD3',1,NULL,'reception'),
(670,'IJEOMA','Walk-In','098037896287',NULL,'',NULL,'checked_out',0,NULL,'2025-08-05 11:14:05',NULL,0,NULL,NULL,'ZENITH BANK','2025-08-05','OFFICIAL MEETING WITH MRS ADA','2025-08-05 12:14:05','2025-08-05 12:36:26',NULL,0,NULL,NULL,'12:14:00','Ground Floor',0,0,0,NULL,'2025-08-05 11:36:26','CB0FBA36',1,NULL,'reception'),
(671,'Mr. Bello Mahmood','Walk-In','0813 252 4985',NULL,'',NULL,'checked_out',0,NULL,'2025-08-05 11:19:23',NULL,0,NULL,NULL,'Ajaokuta Steel Company','2025-08-05','OFFICIAL MEETING WITH THE BUSINESS TEAM','2025-08-05 12:19:23','2025-08-05 15:50:01',NULL,0,NULL,NULL,'12:17:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-05 14:50:01','F02728BA',1,NULL,'reception'),
(672,'Ms. Bukola Joy Reuben','Walk-In',' 0816 903 7181',NULL,'',NULL,'checked_out',0,NULL,'2025-08-05 11:55:58',NULL,0,NULL,NULL,'Ajaokuta Steel Company','2025-08-05','Official meeting with the business team','2025-08-05 12:55:58','2025-08-05 15:49:52',NULL,0,NULL,NULL,'12:55:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-05 14:49:52','18BB1997',1,6,'reception'),
(673,'Prof. Nasir Naeem Abdulsalam','Walk-In','Nil',NULL,'',NULL,'checked_out',0,NULL,'2025-08-05 11:57:03',NULL,0,NULL,NULL,'Ajaokuta Steel Company','2025-08-05','Official meeting with business team','2025-08-05 12:57:03','2025-08-05 15:49:42',NULL,0,NULL,NULL,'12:56:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-05 14:49:42','1D8825BF',1,6,'reception'),
(674,'Ms Tolu','Walk-In','08037388865',NULL,'',NULL,'checked_out',0,NULL,'2025-08-05 12:27:44',NULL,0,NULL,NULL,'Jerry Travels ','2025-08-05','OFFICIAL - PETER OLOWONONI','2025-08-05 13:27:44','2025-08-05 14:12:03',NULL,0,NULL,NULL,'13:27:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-05 13:12:03','02FC866E',1,NULL,'reception'),
(675,'MR ELISHA','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-05 15:23:13',NULL,0,NULL,NULL,'CBD','2025-08-05','MEETING WITH MAUREEN AGEBA','2025-08-05 16:23:13','2025-08-05 16:34:20',NULL,0,NULL,NULL,'16:22:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-08-05 15:34:20','73CA1B06',1,5,'reception'),
(677,'CHIDI ILEKA','Walk-In','08060787935',NULL,'',NULL,'checked_out',0,NULL,'2025-08-06 09:27:04',NULL,0,NULL,NULL,'AFREXIMBANK','2025-08-06','TO SEE MRS MRS MAUREEN AND MRS UJU IKAFOR','2025-08-06 10:27:04','2025-08-07 12:16:09',NULL,0,NULL,NULL,'10:10:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-07 11:16:09','81F523F1',1,6,'reception'),
(678,'STEVEN AAKA','Walk-In','08039590185',NULL,'',NULL,'checked_out',0,NULL,'2025-08-06 11:36:49',NULL,0,NULL,NULL,'NIL','2025-08-06','TO SEE MERCY NWANJA\\r\\n','2025-08-06 12:36:49','2025-08-06 16:40:48',NULL,0,NULL,NULL,'12:36:00','Ground Floor',0,0,0,NULL,'2025-08-06 15:40:48','709D6403',1,6,'reception'),
(679,'Adora Amaefula','Walk-In','08169278610',NULL,'',NULL,'checked_out',0,NULL,'2025-08-06 15:09:04',NULL,0,NULL,NULL,'skin clear','2025-08-06','MEETING WITH MR PETER','2025-08-06 16:09:04','2025-08-06 16:55:03',NULL,0,NULL,NULL,'16:08:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-06 15:55:03','BC50DAA8',1,5,'reception'),
(680,'SIMON TULEH','Walk-In','08029640726',NULL,'',NULL,'checked_out',0,NULL,'2025-08-06 15:40:35',NULL,0,NULL,NULL,'NIL','2025-08-06','OFFICIAL- REMIGIUS NWACHUKWU','2025-08-06 16:40:35','2025-08-07 12:15:57',NULL,0,NULL,NULL,'16:40:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-07 11:15:57','636D85DA',1,6,'reception'),
(681,'ADEOYA IBUKUN','Walk-In','08027401013',NULL,'',NULL,'checked_out',0,NULL,'2025-08-07 08:36:32',NULL,0,NULL,NULL,'YOURCAFE','2025-08-07','TO SEE ATALIA WARUMBA\\r\\n','2025-08-07 09:36:32','2025-08-07 12:16:45',NULL,0,NULL,NULL,'09:28:00','Ground Floor',0,0,0,NULL,'2025-08-07 11:16:45','0B2375A3',1,6,'reception'),
(682,'AGADA OGBU','Walk-In','08058353521',NULL,'',NULL,'checked_out',0,NULL,'2025-08-07 08:46:49',NULL,0,NULL,NULL,'TRUSTFUND PENSIONS','2025-08-07','TO SEE MR EZE (TFML)','2025-08-07 09:46:49','2025-08-07 12:16:39',NULL,0,NULL,NULL,'09:43:00','Ground Floor',0,0,0,NULL,'2025-08-07 11:16:39','D05358CC',1,6,'reception'),
(683,'SUSAN EGWOBA','Walk-In','08061164265',NULL,'',NULL,'checked_out',0,NULL,'2025-08-07 08:46:49',NULL,0,NULL,NULL,'TRUSTFUND PENSION','2025-08-07','TO SEE MR EZE (TFML)','2025-08-07 09:46:49','2025-08-07 12:16:28',NULL,0,NULL,NULL,'09:43:00','Ground Floor',0,0,0,NULL,'2025-08-07 11:16:28','721637EC',1,6,'reception'),
(684,'CHINEDU ANAEDOBE','Walk-In','08902673573',NULL,'',NULL,'checked_out',0,NULL,'2025-08-07 09:04:40',NULL,0,NULL,NULL,'TENECE','2025-08-07','TO DROP OFF A P0ACKAGE FOR MR STANLEY','2025-08-07 10:04:40','2025-08-07 12:16:21',NULL,0,NULL,NULL,'09:51:00','Ground Floor',0,0,0,NULL,'2025-08-07 11:16:21','5BFD7CBF',1,6,'reception'),
(685,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-08-07 11:18:02',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-08-07','OFFICIAL- MR FEYISAYO ADETIBA','2025-08-07 12:18:02','2025-08-07 12:33:14',NULL,0,NULL,NULL,'12:17:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-07 11:33:14','18FB6D89',1,6,'reception'),
(686,'ARCHITECT AYOADE','Walk-In','08035866439',NULL,'',NULL,'checked_out',0,NULL,'2025-08-08 09:40:18',NULL,0,NULL,NULL,'AFRICAN ENERGY BANK','2025-08-08','SET UP FOR THE AFRICAN ENERGY BANK SPACE','2025-08-08 10:40:18','2025-08-08 17:00:40',NULL,0,NULL,NULL,'10:39:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-08 16:00:40','2AEAF8C8',1,5,'reception'),
(687,'ARCHITECT AYOADE & 6 OTHERS ','Walk-In','',NULL,'',NULL,'checked_out',0,NULL,'2025-08-08 09:41:04',NULL,0,NULL,NULL,'AEB','2025-08-08','SET UP FOR AEB','2025-08-08 10:41:04','2025-08-08 17:00:17',NULL,0,NULL,NULL,'10:40:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-08 16:00:17','1EB01CEB',1,5,'reception'),
(688,'PRECIOUS MAYOWA BABALOLA','Walk-In','09076054674',NULL,'',NULL,'checked_out',0,NULL,'2025-08-08 12:11:21',NULL,0,NULL,NULL,'NIL','2025-08-08','TO SEE MR PETER OLOWONONI\\r\\n','2025-08-08 13:11:21','2025-08-08 13:23:21',NULL,0,NULL,NULL,'12:33:00','Ground Floor',0,0,0,NULL,'2025-08-08 12:23:21','9C58C4AB',1,NULL,'reception'),
(689,'EDWARD ROWSON','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-08 12:56:29',NULL,0,NULL,NULL,'LUNDY INVESTORS','2025-08-08','OFFICIAL- CLIENT RELATIONS TEAM','2025-08-08 13:56:29','2025-08-08 17:01:45',NULL,0,NULL,NULL,'13:56:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-08 16:01:45','2BE2D151',1,6,'reception'),
(693,'MR STEPHEN','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-08 15:23:41',NULL,0,NULL,NULL,'NIL','2025-08-08','MEETING WITH MERCY NWANJA','2025-08-08 16:23:41','2025-08-08 17:00:00',NULL,0,NULL,NULL,'16:23:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-08-08 16:00:00','4ECA6212',1,NULL,'reception'),
(694,'TUNDE MAJOLAGBE + 1 GUEST','Walk-In','08033468400',NULL,'',NULL,'checked_out',0,NULL,'2025-08-08 15:47:42',NULL,0,NULL,NULL,'AEB','2025-08-08','TO SEE MR TAOFIK','2025-08-08 16:47:42','2025-08-08 16:59:35',NULL,0,NULL,NULL,'16:47:00','Mezzanine',0,0,0,NULL,'2025-08-08 15:59:35','670911CE',1,NULL,'reception'),
(695,'MUSA AHMAD','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-08 15:51:08',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-08-08','OFFICIAL_ FEYISAYO ADETIBA','2025-08-08 16:51:08','2025-08-08 17:16:04',NULL,0,NULL,NULL,'16:50:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-08 16:16:04','49384059',1,NULL,'reception'),
(697,'PRISCILLA AKPA + 1 GUEST','Walk-In','08036257013',NULL,'',NULL,'checked_out',0,NULL,'2025-08-08 16:08:11',NULL,0,NULL,NULL,'URBAN SHELTER','2025-08-08','OFFICIAL- REMIGIUS NWACHUKWU','2025-08-08 17:08:11','2025-08-11 09:47:50',NULL,0,NULL,NULL,'17:06:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-11 08:47:50','7B7D0945',1,6,'reception'),
(698,'TEMPLE','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 12:07:36',NULL,0,NULL,NULL,'AMCE','2025-08-12','MEETING WITH MERCY','2025-08-12 13:07:36','2025-08-13 08:44:51',NULL,0,NULL,NULL,'13:07:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-08-13 07:44:51','6402CC64',1,NULL,'reception'),
(699,'MICHEAL OLORUNFEMI','Walk-In','08163982745',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 12:36:15',NULL,0,NULL,NULL,'AREA 10','2025-08-12','MEETING WITH MR GODWIN','2025-08-12 13:36:15','2025-08-13 08:44:58',NULL,0,NULL,NULL,'13:35:00','Mezzanine',0,0,0,NULL,'2025-08-13 07:44:58','1E3828A1',1,NULL,'reception'),
(700,'LAWAL','Walk-In','08165886258',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 13:39:14',NULL,0,NULL,NULL,'NIL','2025-08-12','OFFICIAL- ATALIA WARUMBA\\r\\n','2025-08-12 14:39:14','2025-08-13 08:45:08',NULL,0,NULL,NULL,'14:37:00','Ground Floor',0,0,0,NULL,'2025-08-13 07:45:08','7A5D5CD7',1,NULL,'reception'),
(701,'DUROJAIYE GEORGIA','Walk-In','08031352636',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 13:45:16',NULL,0,NULL,NULL,'BALMEK','2025-08-12','OFFICIAL- HARRISON','2025-08-12 14:45:16','2025-08-13 08:45:16',NULL,0,NULL,NULL,'14:39:00','Mezzanine',0,0,0,NULL,'2025-08-13 07:45:16','304A1528',1,NULL,'reception'),
(702,'FEMI ADEBOYE','Walk-In','08023231727',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 14:06:42',NULL,0,NULL,NULL,'AEB','2025-08-12','WORKING AT AEB','2025-08-12 15:06:42','2025-08-13 08:45:23',NULL,0,NULL,NULL,'15:06:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-13 07:45:23','57DB648F',1,NULL,'reception'),
(703,'BOSEDE EJIRO O.','Walk-In','08023231727',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 14:08:30',NULL,0,NULL,NULL,'AEB','2025-08-12','INSPECTION AT AEB FLOOR','2025-08-12 15:08:30','2025-08-13 08:45:29',NULL,0,NULL,NULL,'15:07:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-13 07:45:29','C8BB60CE',1,NULL,'reception'),
(704,'STEVEN','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 14:08:40',NULL,0,NULL,NULL,'NIL','2025-08-12','TO SEE MERCY NWANJA','2025-08-12 15:08:40','2025-08-13 08:45:35',NULL,0,NULL,NULL,'15:06:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-08-13 07:45:35','4329D6EB',1,6,'reception'),
(705,'DOOYUM ADZER','Walk-In','07070748408',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 14:09:22',NULL,0,NULL,NULL,'AEB','2025-08-12','INSPECTION AT THE AEB FLOOR','2025-08-12 15:09:22','2025-08-13 08:45:41',NULL,0,NULL,NULL,'15:08:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-13 07:45:41','52824225',1,NULL,'reception'),
(706,'WALI ONYEKACHI','Walk-In','08137928800',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 14:55:54',NULL,0,NULL,NULL,'NIL','2025-08-12','MEETING WITH MY TAFIK (FACILITY MANAGEMENT)','2025-08-12 15:55:54','2025-08-13 08:45:47',NULL,0,NULL,NULL,'15:54:00','Mezzanine',0,0,0,NULL,'2025-08-13 07:45:47','94A8B30E',1,5,'reception'),
(707,'HARUNA SULEIMAN','Walk-In','08035959749',NULL,'',NULL,'checked_out',0,NULL,'2025-08-12 16:12:06',NULL,0,NULL,NULL,'FCTA','2025-08-12','OFFICIAL - DORCAS OLUWATOYE','2025-08-12 17:12:06','2025-08-13 08:45:55',NULL,0,NULL,NULL,'17:04:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-13 07:45:55','5170BDDD',1,NULL,'reception'),
(708,'MUSA AHMAD','Walk-In','',NULL,'',NULL,'checked_out',0,NULL,'2025-08-13 11:24:02',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-08-13','OFFICIAL - REMIGIUS NWACHUKWU','2025-08-13 12:24:02','2025-08-14 11:12:48',NULL,0,NULL,NULL,'12:22:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-14 10:12:48','D3C3B014',1,6,'reception'),
(709,'WILLIAMS ODILI +1','Walk-In','08033112991',NULL,'',NULL,'checked_out',0,NULL,'2025-08-13 12:47:19',NULL,0,NULL,NULL,'WILSOFT INTEGRATED','2025-08-13','INQUIRY','2025-08-13 13:47:19','2025-08-14 11:12:54',NULL,0,NULL,NULL,'13:46:00','Ground Floor',0,0,0,NULL,'2025-08-14 10:12:54','0186CA7B',1,NULL,'reception'),
(710,'EPHRAIM MALEH','Walk-In','08136388977',NULL,'',NULL,'checked_out',0,NULL,'2025-08-13 14:11:50',NULL,0,NULL,NULL,'ROYAL LAND COMMUNICATIONS','2025-08-13','OFFICIAL- BENOIT MESSI','2025-08-13 15:11:50','2025-08-14 11:13:14',NULL,0,NULL,NULL,'15:00:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-14 10:13:14','F5E6A0FF',1,NULL,'reception'),
(711,'KASIM SULAIMAN','Walk-In','08036528232',NULL,'',NULL,'checked_out',0,NULL,'2025-08-14 11:54:34',NULL,0,NULL,NULL,'NNPC','2025-08-14','PICK UP SHARES CERTIFICATE','2025-08-14 12:54:34','2025-08-14 15:52:11',NULL,0,NULL,NULL,'12:53:00','Ground Floor',0,0,0,NULL,'2025-08-14 14:52:11','D5A762E2',1,NULL,'reception'),
(712,'MRS SULE','Dorcas Oluwatoye','08056455832',NULL,'',NULL,'checked_out',0,NULL,'2025-08-14 12:07:03',41,0,NULL,NULL,'NIL','2025-08-14','OFFICIAL- DORCAS OLUWATOYE','2025-08-14 13:07:03','2025-08-14 13:38:09',NULL,0,NULL,NULL,'13:06:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-14 12:38:09','F07B0AA6',1,NULL,'reception'),
(713,'FRANK ','Walk-In','08103231341',NULL,'',NULL,'checked_out',0,NULL,'2025-08-14 13:31:43',NULL,0,NULL,NULL,'LIGHT MARITIME','2025-08-14','MEETING WITH MR REMI','2025-08-14 14:31:43','2025-08-14 15:52:30',NULL,0,NULL,NULL,'14:29:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-08-14 14:52:30','42789FD7',1,NULL,'reception'),
(714,'TITI RICHARD','Walk-In','08138709442',NULL,'',NULL,'checked_out',0,NULL,'2025-08-14 13:42:36',NULL,0,NULL,NULL,'AZIKEL GROUP','2025-08-14','OFFICIAL-MAYOWA BABTUNDE','2025-08-14 14:42:36','2025-08-15 09:32:13',NULL,0,NULL,NULL,'14:42:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-15 08:32:13','AF5A463B',1,6,'reception'),
(715,'DADA OLUWAKAYOYE','Walk-In','08036231908',NULL,'',NULL,'checked_out',0,NULL,'2025-08-15 08:33:24',NULL,0,NULL,NULL,'IITA','2025-08-15','OFFICIAL- ATALIA WARUMBA','2025-08-15 09:33:24','2025-08-15 09:33:33',NULL,0,NULL,NULL,'09:32:00','Ground Floor',0,0,0,NULL,'2025-08-15 08:33:33','5894649F',1,6,'reception'),
(717,'EBIERE AWUDU','Walk-In','09070807032',NULL,'',NULL,'checked_out',0,NULL,'2025-08-15 10:02:23',NULL,0,NULL,NULL,'AWUDU\\\'s FOOD CO.','2025-08-15','INQUIRY - 14/08/2025 2:50PM','2025-08-15 11:02:23','2025-08-15 11:02:54',NULL,0,NULL,NULL,'11:01:00','Ground Floor',0,0,0,NULL,'2025-08-15 10:02:54','5E2866B1',1,5,'reception'),
(718,'A.C.T BALOGUN','Walk-In','07034816481',NULL,'',NULL,'checked_out',0,NULL,'2025-08-18 13:44:15',NULL,0,NULL,NULL,'S.W.A.T','2025-08-18','OFFICIAL=- DR MCDONALD','2025-08-18 14:44:15','2025-08-18 15:16:39',NULL,0,NULL,NULL,'14:43:00','Ground Floor',0,0,0,NULL,'2025-08-18 14:16:39','9A0CDDF5',1,6,'reception'),
(719,'MUSA AHMAD','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-18 13:50:37',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-08-18','OFFICIAL- MULAI KANAGIE','2025-08-18 14:50:37','2025-08-18 15:24:28',NULL,0,NULL,NULL,'14:49:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-18 14:24:28','14136B4D',1,6,'reception'),
(722,'ANAYOANYIAM COLETTE','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-18 14:34:09',NULL,0,NULL,NULL,'AFREXIMBANK','2025-08-18','OFFICIAL- SARAH AJIEH','2025-08-18 15:34:09','2025-08-18 15:34:17',NULL,0,NULL,NULL,'15:33:00','Ground Floor',0,0,0,NULL,'2025-08-18 14:34:17','EB47EEC2',1,6,'reception'),
(723,'UCHE OLEKANMA','Walk-In','08033313593',NULL,'',NULL,'checked_out',0,NULL,'2025-08-19 11:00:43',NULL,0,NULL,NULL,'AA RESCUE LTD','2025-08-19','OFFICIAL - MR BAKARE','2025-08-19 12:00:43','2025-08-19 16:12:37',NULL,0,NULL,NULL,'12:00:00','Ground Floor',0,0,0,NULL,'2025-08-19 15:12:37','35B40337',1,6,'reception'),
(724,'ELIJAH GOGOVI','Walk-In','08028292438',NULL,'',NULL,'checked_out',0,NULL,'2025-08-19 11:00:43',NULL,0,NULL,NULL,'AA RESCUE','2025-08-19','MR BAKARE','2025-08-19 12:00:43','2025-08-19 16:12:10',NULL,0,NULL,NULL,'12:00:00','Ground Floor',0,0,0,NULL,'2025-08-19 15:12:10','66FB7E0E',1,6,'reception'),
(725,'WALI ONYEKACHI + 10 CONTRACTORS','Walk-In','08137928800',NULL,'',NULL,'checked_out',0,NULL,'2025-08-19 11:30:41',NULL,0,NULL,NULL,'OANDO','2025-08-19','OFFICIAL- TAOFIK YUSUF (FACILITIES MANAGER)','2025-08-19 12:30:41','2025-08-20 09:16:15',NULL,0,NULL,NULL,'12:29:00','Mezzanine',0,0,0,NULL,'2025-08-20 08:16:15','5CD07B91',1,6,'reception'),
(727,'NOSA ','Walk-In','07040001601',NULL,'',NULL,'checked_out',0,NULL,'2025-08-19 14:59:32',NULL,0,NULL,NULL,'NIL','2025-08-19','OFFICIAL- PETER OLOWONONI','2025-08-19 15:59:32','2025-08-20 09:16:11',NULL,0,NULL,NULL,'15:57:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-20 08:16:11','D619493B',1,6,'reception'),
(728,'IDOWU OSESAN','Walk-In','08154202450',NULL,'',NULL,'checked_out',0,NULL,'2025-08-19 15:07:25',NULL,0,NULL,NULL,'NIL','2025-08-19','MEETING WITH MR JIMOH BAKARE','2025-08-19 16:07:25','2025-08-20 09:16:07',NULL,0,NULL,NULL,'16:06:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-08-20 08:16:07','908E803C',1,5,'reception'),
(729,'SIMON TULEH','Walk-In','08029640726',NULL,'',NULL,'checked_out',0,NULL,'2025-08-19 15:18:00',NULL,0,NULL,NULL,'DAPINES GLOBAL INVESTORS','2025-08-19','OFFICIAL- REMIGIUS NWACHUKWU','2025-08-19 16:18:00','2025-08-19 16:49:02',NULL,0,NULL,NULL,'16:17:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-19 15:49:02','59AC9DFD',1,6,'reception'),
(730,'TASIE BOB +2','Walk-In','08160593994',NULL,'',NULL,'checked_out',0,NULL,'2025-08-19 15:48:50',NULL,0,NULL,NULL,'PUNUKA','2025-08-19','OFFICIAL- TAOFIK YUSUF','2025-08-19 16:48:50','2025-08-20 09:15:57',NULL,0,NULL,NULL,'16:48:00','Floor 2 - Right Wing',0,0,0,NULL,'2025-08-20 08:15:57','283964CA',1,6,'reception'),
(731,'OLUWAFEMI ADEGBOYEGA +6','Walk-In','08032377682',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 08:20:16',NULL,0,NULL,NULL,'B&S XQUIZITE INTERIORZ LTD','2025-08-20','TENANTS OF THE 3RD FLOOR (CAME TO INSPECT ON 19TH AUGUST 2025)','2025-08-20 09:20:16','2025-08-20 09:20:29',NULL,0,NULL,NULL,'17:30:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-20 08:20:29','5382488A',1,6,'reception'),
(733,'OLUWAFEMI ADEGBOYEGA','Walk-In','08032377682',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 09:54:36',NULL,0,NULL,NULL,'B&S XQUIZITE INTERIOR LTD','2025-08-20','TENANTS OF 3RD FLOOR','2025-08-20 10:54:36','2025-08-21 10:15:32',NULL,0,NULL,NULL,'10:51:00','Floor 3 - Left Wing',0,0,0,NULL,'2025-08-21 09:15:32','01EE9DCD',1,6,'reception'),
(734,'GBRIKA AKPEVWE','Walk-In','08088897643',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 11:42:03',NULL,0,NULL,NULL,'NIL','2025-08-20','PART OF THE CONTRACTORS FOR THE AFRICAN ENERGY BANK','2025-08-20 12:42:03','2025-08-21 10:15:28',NULL,0,NULL,NULL,'12:40:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-21 09:15:28','7D3EFDCC',1,NULL,'reception'),
(735,'JOSEPH FESTUS','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 11:42:03',NULL,0,NULL,NULL,'NIL','2025-08-20','PART OF THE CONTRACTORS FOR AFRICAN ENERGY BANK','2025-08-20 12:42:03','2025-08-21 10:15:24',NULL,0,NULL,NULL,'12:41:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-21 09:15:24','929087CA',1,NULL,'reception'),
(736,'OLIVER ARABA','Walk-In','08132211600',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 11:56:06',NULL,0,NULL,NULL,'NIL','2025-08-20','TO SEE MADAM UJU FOR CTERING SERVICES\\r\\n\\r\\nCARD NO- 001','2025-08-20 12:56:06','2025-08-20 16:23:00',NULL,0,NULL,NULL,'12:56:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-20 15:23:00','8A0C4F06',1,6,'reception'),
(737,'MUSA AHMAD','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 11:58:22',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-08-20','OFFICIAL- FEYISAYO ADETIBA\\r\\n\\r\\nCARD NO- 001','2025-08-20 12:58:22','2025-08-20 13:16:01',NULL,0,NULL,NULL,'12:57:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-20 12:16:01','8A43C284',1,6,'reception'),
(738,'VERA UTTAH','Walk-In','08126441941',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 12:12:21',NULL,0,NULL,NULL,'ACCESS BANK','2025-08-20','OFFICIAL- RCOO\\r\\n\\r\\nCARD NO- 003','2025-08-20 13:12:21','2025-08-20 13:12:45',NULL,0,NULL,NULL,'13:12:00','Floor 9 - Right Wing',0,0,0,NULL,'2025-08-20 12:12:45','7B2A7A33',1,6,'reception'),
(739,'VERA UTTAH','Walk-In','08126441941',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 12:14:07',NULL,0,NULL,NULL,'ACCESS BANK','2025-08-20','OFFICIAL - RCOO\\r\\n\\r\\nCARD NO- 003','2025-08-20 13:14:07','2025-08-20 13:18:53',NULL,0,NULL,NULL,'13:13:00','Floor 9 - Right Wing',0,0,0,NULL,'2025-08-20 12:18:53','C45F1D20',1,6,'reception'),
(740,'DANIEL','Walk-In','08071457554',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 14:35:34',NULL,0,NULL,NULL,'PETALS AND MORE','2025-08-20','MADAM UJU','2025-08-20 15:35:34','2025-08-20 15:57:11',NULL,0,NULL,NULL,'15:35:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-20 14:57:11','936BBE1A',1,NULL,'reception'),
(741,'ENGR JANI IBRAHIM +11','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 15:52:08',NULL,0,NULL,NULL,'NACCIMA','2025-08-20','OFFICIAL- RCOO','2025-08-20 16:52:08','2025-08-20 17:45:30',NULL,0,NULL,NULL,'16:00:00','Floor 9 - Right Wing',0,0,0,NULL,'2025-08-20 16:45:30','D8A83275',1,6,'reception'),
(742,'NOSA','Walk-In','07040001601',NULL,'',NULL,'checked_out',0,NULL,'2025-08-20 16:30:29',NULL,0,NULL,NULL,'NIL','2025-08-20','OFFICIAL- PETER OLOWONONI\\r\\n\\r\\nCARD NO0 001','2025-08-20 17:30:29','2025-08-20 17:44:09',NULL,0,NULL,NULL,'17:30:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-20 16:44:09','2C8045ED',1,6,'reception'),
(743,'ZINO WARRI','Walk-In','08187277161',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 09:16:58',NULL,0,NULL,NULL,'JERRY TRAVELS','2025-08-21','OFFICIAL- PETER OLOWONONI\\r\\n\\r\\nCARD NO- 001','2025-08-21 10:16:58','2025-08-21 10:26:15',NULL,0,NULL,NULL,'10:16:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-21 09:26:15','E927820F',1,6,'reception'),
(744,'Akinyemi Sowunmi','Walk-In','08180112792',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 09:38:43',NULL,0,NULL,NULL,'NIL','2025-08-21','INTERVIEW\\r\\n\\r\\nCARD NO-','2025-08-21 10:38:43','2025-08-21 13:27:57',NULL,0,NULL,NULL,'10:38:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-21 12:27:57','BEB55BE2',1,6,'reception'),
(745,'OWOLABI OLUSEGUN','Walk-In','08062093882',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 10:19:18',NULL,0,NULL,NULL,'STEMem','2025-08-21','PERSONAL- DORCAS OLUWATOYE\\r\\n\\r\\nCARD NO- 020','2025-08-21 11:19:18','2025-08-21 12:05:58',NULL,0,NULL,NULL,'11:18:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-21 11:05:58','E2ACF409',1,6,'reception'),
(746,'IBRAHIM ISA ADAMU','Walk-In','08038466812',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 10:22:47',NULL,0,NULL,NULL,'NANN','2025-08-21','TO DROP OFF A PACKAGE FOR MR PETER','2025-08-21 11:22:47','2025-08-21 12:28:48',NULL,0,NULL,NULL,'11:22:00','Ground Floor',0,0,0,NULL,'2025-08-21 11:28:48','433FFA8E',1,6,'reception'),
(747,'JOE','Walk-In','08033356703',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 10:57:40',NULL,0,NULL,NULL,'TATIUM BANK','2025-08-21','OFFICIAL- PETER OLOWONONI\\r\\n\\r\\nCARD NO- 001','2025-08-21 11:57:40','2025-08-21 12:30:29',NULL,0,NULL,NULL,'11:57:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-21 11:30:29','C0FA81F1',1,6,'reception'),
(748,'ODOGWU ODISIKA','Walk-In','08081232033',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 10:57:40',NULL,0,NULL,NULL,'TATIUM BANK','2025-08-21','OFFICIAL- PETER OLOWONONI','2025-08-21 11:57:40','2025-08-21 12:30:23',NULL,0,NULL,NULL,'11:57:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-21 11:30:23','B54BCEF7',1,6,'reception'),
(749,'KETURAH','Walk-In','08164001262',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 11:11:11',NULL,0,NULL,NULL,'SHELTAFRIQUE','2025-08-21','TO SEE MR TAOFIK- OFFICE SPACE INSPECTION ','2025-08-21 12:11:11','2025-08-21 12:35:26',NULL,0,NULL,NULL,'12:07:00','Floor 2 - Right Wing',0,0,0,NULL,'2025-08-21 11:35:26','40C4E232',1,6,'reception'),
(750,'MICHAEL EKAWU','Walk-In','08139120209',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 11:19:55',NULL,0,NULL,NULL,'MTN','2025-08-21','TO FIX FIBER TROUBLESHOOTING','2025-08-21 12:19:55','2025-08-21 12:46:42',NULL,0,NULL,NULL,'12:18:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-21 11:46:42','8AC86F29',1,6,'reception'),
(751,'	Ammishaddai Onuaguluchi','Walk-In','08037193893',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 12:44:01',NULL,0,NULL,NULL,'Nil','2025-08-21','Interview\\r\\n\\r\\nCard No- 013','2025-08-21 13:44:01','2025-08-21 15:07:16',NULL,0,NULL,NULL,'13:43:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-21 14:07:16','BD8D72FE',1,6,'reception'),
(752,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 12:59:06',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-08-21','TO SEE- PETER OLOWONONI, ZAINAB BELLO, DORCAS OLUWATOYE, MERCY NWANJA AND MULAI KANAGIE\\r\\n\\r\\nCARD NO- 012','2025-08-21 13:59:06','2025-08-21 14:21:26',NULL,0,NULL,NULL,'13:53:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-21 13:21:26','58FD0ECF',1,6,'reception'),
(753,'NOSA OGBONMWAN','Walk-In','08181164590',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 13:44:57',NULL,0,NULL,NULL,'ZENITH BANK','2025-08-21','OFFICIAL- PETER OLOWONONI\\r\\n\\r\\nCARD NO- 001','2025-08-21 14:44:57','2025-08-21 14:59:42',NULL,0,NULL,NULL,'14:39:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-21 13:59:42','802C28DB',1,6,'reception'),
(754,'KENE ELEH','Walk-In','08038472001',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 14:56:08',NULL,0,NULL,NULL,'MTN ','2025-08-21','OFFICIAL- MR NWABUEZE\\r\\nTO WORK ON EXTENSION LINE','2025-08-21 15:56:08','2025-08-22 10:53:06',NULL,0,NULL,NULL,'15:54:00','Floor 7 - Right Wing',0,0,0,NULL,'2025-08-22 09:53:06','5CF59E75',1,6,'reception'),
(755,'TEMPLE AFOLABI','Walk-In','',NULL,'',NULL,'checked_out',0,NULL,'2025-08-21 15:01:32',NULL,0,NULL,NULL,'AMCE','2025-08-21','OFFICIAL- MERCY NWANJA \\r\\n\\r\\nCARD NO - 013\\r\\n','2025-08-21 16:01:32','2025-08-21 16:50:24',NULL,0,NULL,NULL,'16:00:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-21 15:50:24','0DE440EB',1,6,'reception'),
(757,'DANLADI ACHOR','Walk-In','07064171327',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 09:54:29',NULL,0,NULL,NULL,'HPE','2025-08-22','OFFICIAL- OLUSEYE OLUSESAN','2025-08-22 10:54:29','2025-08-22 17:30:17',NULL,0,NULL,NULL,'10:36:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-22 16:30:17','701EF135',1,6,'reception'),
(758,'Ruth Awodi','Walk-In','08055735380',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 11:42:43',NULL,0,NULL,NULL,'Essentials by Oge','2025-08-22','Personal- Obioma Iweka','2025-08-22 12:42:43','2025-08-22 12:43:05',NULL,0,NULL,NULL,'12:30:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-22 11:43:05','14F8EC1D',1,6,'reception'),
(759,'NNNENNA','Walk-In','08033496310',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 11:47:36',NULL,0,NULL,NULL,'NIL','2025-08-22','Personal- Obioma Iweka\\r\\n\\r\\nCard No- 001','2025-08-22 12:47:36','2025-08-22 15:02:14',NULL,0,NULL,NULL,'12:46:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-22 14:02:14','E349390F',1,6,'reception'),
(760,'NNNENNA','Walk-In','08033496310',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 12:13:40',NULL,0,NULL,NULL,'NIL','2025-08-22','Personal- Obioma Iweka\\r\\n\\r\\nCard No- 001','2025-08-22 13:13:40','2025-08-22 15:02:10',NULL,0,NULL,NULL,'12:46:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-22 14:02:10','4A0A6DE4',1,NULL,'reception'),
(761,'VERA UTTA','Walk-In','',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 12:20:56',NULL,0,NULL,NULL,'ACCESS BANK','2025-08-22','OFFICIAL-   MERCY NWANJA AND WISDOM TAIWAH','2025-08-22 13:20:56','2025-08-22 13:31:00',NULL,0,NULL,NULL,'13:19:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-22 12:31:00','4F6476E4',1,NULL,'reception'),
(762,'Mubarak Taminu','Walk-In','08145587641',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 13:18:47',NULL,0,NULL,NULL,'NIL','2025-08-22','OFFICIAL- WISDOM TAIWAH\\r\\n\\r\\nCARD- 014','2025-08-22 14:18:47','2025-08-22 15:02:05',NULL,0,NULL,NULL,'14:14:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-22 14:02:05','DD884FDB',1,6,'reception'),
(763,'JULIET','Walk-In','08161970873',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 13:26:57',NULL,0,NULL,NULL,'NIL','2025-08-22','OFFICIAL- OBIOMA IWEKA\\r\\n\\r\\nCARD NO- 013','2025-08-22 14:26:57','2025-08-22 17:00:57',NULL,0,NULL,NULL,'14:22:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-22 16:00:57','25095C76',1,6,'reception'),
(764,'PEGGY','Walk-In','09116008602',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 14:50:16',NULL,0,NULL,NULL,'INVETA GROUP','2025-08-22','PERSONAL- TO SEE LIZZY','2025-08-22 15:50:16','2025-08-22 16:31:55',NULL,0,NULL,NULL,'15:50:00','Ground Floor',0,0,0,NULL,'2025-08-22 15:31:55','0004D8BA',1,6,'reception'),
(765,'WALI ONYEKACHI','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 14:52:30',NULL,0,NULL,NULL,'AEB','2025-08-22','OFFICIAL- MR TAOFIK (TENANTS OF THIRD FLOOR)','2025-08-22 15:52:30','2025-08-22 15:52:52',NULL,0,NULL,NULL,'15:51:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-22 14:52:52','5423E5B2',1,6,'reception'),
(766,'CYPRIAN AYO','Walk-In','07036899691',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 15:31:20',NULL,0,NULL,NULL,'THINK GLOB','2025-08-22','TO PICK UP AN ITEM FROM MR YEMI','2025-08-22 16:31:20','2025-08-22 16:31:51',NULL,0,NULL,NULL,'16:30:00','Ground Floor',0,0,0,NULL,'2025-08-22 15:31:51','71025D51',1,6,'reception'),
(767,'AMMISHIDAI ONUAGULUCHI','Walk-In','08037193893',NULL,'',NULL,'checked_out',0,NULL,'2025-08-22 15:50:20',NULL,0,NULL,NULL,'NIL','2025-08-22','OFFICIAL- UJU OKAFOR\\r\\n\\r\\nCARD NO- 001','2025-08-22 16:50:20','2025-08-22 17:39:36',NULL,0,NULL,NULL,'16:48:00','Floor 8 - Left Wing',0,0,0,NULL,'2025-08-22 16:39:36','1E03EE3C',1,6,'reception'),
(768,'JULIET','Walk-In','08161970873',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 06:18:35',NULL,0,NULL,NULL,'NIL','2025-08-25','OFFICIAL- OBIOMA IWEKA\\r\\n\\r\\nCARD NO- 013','2025-08-25 07:18:35','2025-08-25 13:06:44',NULL,0,NULL,NULL,'14:22:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-25 12:06:44','7F37F27A',1,NULL,'reception'),
(769,'ENGR TUNDE','Walk-In','08033468400',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 07:59:20',NULL,0,NULL,NULL,'AFRICAN ENERGY BANK','2025-08-25','INSPECTION WITH MR TAOFIK ','2025-08-25 08:59:20','2025-08-25 14:14:58',NULL,0,NULL,NULL,'08:58:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-25 13:14:58','275DC456',1,6,'reception'),
(770,'ARCHITECT AYOADE','Walk-In','08035866439',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 08:20:47',NULL,0,NULL,NULL,'AFRICAN ENERGY BANK','2025-08-25','TENANTS OF THIRD FLOOR (AFRICAN ENERGY BANK)','2025-08-25 09:20:47','2025-08-25 11:06:42',NULL,0,NULL,NULL,'09:20:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-25 10:06:42','FDB6D776',1,6,'reception'),
(771,'ABDURASHID SHITTU +1','Walk-In','08035873882',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 10:08:42',NULL,0,NULL,NULL,'OANDO','2025-08-25','INSPECTION WITH MR TAOFIK - TENANTS OF 4TH & 5TH FLOOR (OANDO) ','2025-08-25 11:08:42','2025-08-25 13:06:33',NULL,0,NULL,NULL,'11:07:00','Floor 4 - Right Wing',0,0,0,NULL,'2025-08-25 12:06:33','26669036',1,6,'reception'),
(772,'PASCAL SPLENDOUR ITI','Walk-In','07031399809',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 11:04:48',NULL,0,NULL,NULL,'SEPAT PHARMACEUTICALS','2025-08-25','TO DROP AN ITEM FOR MAUREEN AGEBA','2025-08-25 12:04:48','2025-08-25 13:06:29',NULL,0,NULL,NULL,'11:59:00','Ground Floor',0,0,0,NULL,'2025-08-25 12:06:29','E9D27731',1,NULL,'reception'),
(773,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 11:42:10',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-08-25','OFFICIAL- GRACE OLUWASEUN, BAKARE JIMOH AND ATALIA\\r\\n\\r\\nCARD NO- 016','2025-08-25 12:42:10','2025-08-25 13:24:23',NULL,0,NULL,NULL,'12:29:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-25 12:24:23','00E6867B',1,6,'reception'),
(774,'ANTHONY UKUEKU +1','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 12:20:40',NULL,0,NULL,NULL,'ANTHONY UKUEKEU & ASSOCIATES','2025-08-25','INQUIRY REGARDING A FOLLOW-UP MAIL\\r\\n\\r\\nCARD NO-006','2025-08-25 13:20:40','2025-08-25 13:42:31',NULL,0,NULL,NULL,'13:18:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-25 12:42:31','7A8E2429',1,6,'reception'),
(775,'ABDULLAHI SAMEERA','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 13:13:08',NULL,0,NULL,NULL,'NACCIMA','2025-08-25','OFFICIAL- ONYINYE AMONU\\r\\n\\r\\nCARD NO- 007\\r\\n','2025-08-25 14:13:07','2025-08-25 16:19:22',NULL,0,NULL,NULL,'14:12:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-25 15:19:22','B0FFAC86',1,6,'reception'),
(776,'MUSA AHMAD','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 15:04:07',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-08-25','TO SEE MULAI KAANGIE, ZAINAB BELLO, ADA ADIGO, OLUSEYE OLUSESAN\\r\\n\\r\\nCARD NO- 006','2025-08-25 16:04:07','2025-08-25 16:24:43',NULL,0,NULL,NULL,'16:03:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-25 15:24:43','191E2151',1,NULL,'reception'),
(777,'ABDULAHI MUHAMMED','Walk-In','08092223472',NULL,'',NULL,'checked_out',0,NULL,'2025-08-25 15:18:35',NULL,0,NULL,NULL,'WUSE ZONE 4','2025-08-25','OFFICIAL- AYO MUBARAK\\r\\n\\r\\nCARD NO- 001','2025-08-25 16:18:35','2025-08-25 16:29:20',NULL,0,NULL,NULL,'16:18:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-25 15:29:20','BD65E934',1,NULL,'reception'),
(778,'ENGR TUNDE','Walk-In','08033468400',NULL,'',NULL,'checked_out',0,NULL,'2025-08-26 08:52:14',NULL,0,NULL,NULL,'AFRICAN ENERGY BANK','2025-08-26','TO SEE MR TAOFIK','2025-08-26 09:52:14','2025-08-26 12:16:18',NULL,0,NULL,NULL,'09:51:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-26 11:16:18','A881AA60',1,6,'reception'),
(779,'JEREMY KRISTEN','Walk-In','08037881173',NULL,'',NULL,'checked_out',0,NULL,'2025-08-26 09:14:31',NULL,0,NULL,NULL,'NIL','2025-08-26','TO SEE MR TAOFIK','2025-08-26 10:14:31','2025-08-26 13:05:02',NULL,0,NULL,NULL,'10:14:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-26 12:05:02','39B0F8C0',1,6,'reception'),
(780,'ARCHITECT AYOADE','Walk-In','08035866439',NULL,'',NULL,'checked_out',0,NULL,'2025-08-26 09:15:30',NULL,0,NULL,NULL,'AFRICAN ENERGY BANK','2025-08-26','TO SEE MR TAOFIK','2025-08-26 10:15:30','2025-08-26 12:16:12',NULL,0,NULL,NULL,'10:15:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-26 11:16:12','C19D6CD8',1,6,'reception'),
(781,'HENRY ADAKA','Walk-In','09161202637',NULL,'',NULL,'checked_out',0,NULL,'2025-08-26 09:20:31',NULL,0,NULL,NULL,'JERAZ INTL','2025-08-26','OFICIAL-MAUREEN AGEBA\\r\\n\\r\\nCARD NO- 006','2025-08-26 10:20:31','2025-08-26 10:43:31',NULL,0,NULL,NULL,'10:19:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-26 09:43:31','8D8082E3',1,6,'reception'),
(782,'CHIEDU TOKUMBO +1','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-26 10:30:33',NULL,0,NULL,NULL,'COMPASS GLOBAL','2025-08-26','TO SEE MAUREEN AGEBA','2025-08-26 11:30:33','2025-08-26 12:16:06',NULL,0,NULL,NULL,'11:24:00','Ground Floor',0,0,0,NULL,'2025-08-26 11:16:06','7875EC91',1,6,'reception'),
(783,'ABDULRASHEED SHITTU +1','Walk-In','08035873882',NULL,'',NULL,'checked_out',0,NULL,'2025-08-26 10:34:58',NULL,0,NULL,NULL,'AFRICAN ENERGY BANK','2025-08-26','TO SEE MR TAOFIK','2025-08-26 11:34:58','2025-08-26 12:33:33',NULL,0,NULL,NULL,'11:32:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-08-26 11:33:33','677EC6A3',1,6,'reception'),
(784,'CSF Y.Y ISIAKA +3','Walk-In','09072289381',NULL,'',NULL,'checked_out',0,NULL,'2025-08-26 11:08:03',NULL,0,NULL,NULL,'FEDERAL FIRE SERVICE','2025-08-26','TO SEE MR GODWIN AGABA','2025-08-26 12:08:03','2025-08-26 12:20:33',NULL,0,NULL,NULL,'12:01:00','Ground Floor',0,0,0,NULL,'2025-08-26 11:20:33','78072770',1,NULL,'reception'),
(785,'KABIRU UMAR','Walk-In','089068206101',NULL,'',NULL,'checked_out',0,NULL,'2025-08-26 12:04:07',NULL,0,NULL,NULL,'313','2025-08-26','OFFICIAL- ZAINAB BELLO\\r\\n\\r\\nCARD NO- 019','2025-08-26 13:04:07','2025-08-26 13:30:02',NULL,0,NULL,NULL,'13:03:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-26 12:30:02','0811E378',1,NULL,'reception'),
(786,'HENRY ADAKA','Walk-In','09161202637',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 09:19:47',NULL,0,NULL,NULL,'NIL','2025-08-27','TO SEE MAUREEN AGEBA','2025-08-27 10:19:47','2025-08-27 10:54:49',NULL,0,NULL,NULL,'09:57:00','Ground Floor',0,0,0,NULL,'2025-08-27 09:54:49','EAA8E6AA',1,6,'reception'),
(787,'CHIDIEBERE UGO-NWACHUKWU','Walk-In','08065494243',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 09:24:35',NULL,0,NULL,NULL,'CREATIVE HANDS','2025-08-27','TO DELIVER A PACKAGE FOR MR MAYOWA','2025-08-27 10:24:35','2025-08-27 10:25:26',NULL,0,NULL,NULL,'10:20:00','Ground Floor',0,0,0,NULL,'2025-08-27 09:25:26','92603C4F',1,6,'reception'),
(788,'HENRY ADAKA','Walk-In','09161202637',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 09:38:23',NULL,0,NULL,NULL,'NIL','2025-08-27','OFFICIAL- MAUREEN AGEBA\\r\\n\\r\\nCARD NO- 019\\r\\n','2025-08-27 10:38:23','2025-08-27 10:54:45',NULL,0,NULL,NULL,'10:38:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-27 09:54:45','DFB09AF0',1,6,'reception'),
(789,'OLUSEGUN OLUTAYO','Walk-In','09085496566',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 10:19:23',NULL,0,NULL,NULL,'NIL','2025-08-27','OFFICIAL- RCOO\\r\\n\\r\\nCARD NO- 018','2025-08-27 11:19:23','2025-08-27 12:15:09',NULL,0,NULL,NULL,'11:16:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-27 11:15:09','537339EB',1,6,'reception'),
(790,'AYO BAMI','Walk-In','08083841535',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 11:09:01',NULL,0,NULL,NULL,'COURTYARD FARMS','2025-08-27','OFFICIAL- MAUREEN AGEBA\\r\\n\\r\\nCARD NO- 014','2025-08-27 12:09:01','2025-08-27 12:27:06',NULL,0,NULL,NULL,'12:08:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-27 11:27:06','D9204E85',1,NULL,'reception'),
(791,'PASCAL HEMAR +2','Walk-In','+2250787043129',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 11:26:16',NULL,0,NULL,NULL,'AFRICAN QUALITY ASSURANCE CENTER','2025-08-27','OFFICIAL- RCOO\\r\\n\\r\\nCARD NO- 018','2025-08-27 12:26:16','2025-08-27 13:19:55',NULL,0,NULL,NULL,'12:26:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-27 12:19:55','C25D0406',1,6,'reception'),
(792,'USMAN IBRAHIM','Walk-In','08028333327',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 11:49:44',NULL,0,NULL,NULL,'SHELTERAFRIQUE','2025-08-27','OFFICIAL- TAOFIK YUSUF','2025-08-27 12:49:44','2025-08-27 13:20:38',NULL,0,NULL,NULL,'12:40:00','Floor 2 - Left Wing',0,0,0,NULL,'2025-08-27 12:20:38','9BC4238F',1,6,'reception'),
(793,'ELIZATBETH OGONEGBU','Walk-In','07034325758',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 11:49:44',NULL,0,NULL,NULL,'SHELTERAFRIQUE','2025-08-27','OFFICIAL- TAOFIK YUSUF','2025-08-27 12:49:44','2025-08-27 13:20:43',NULL,0,NULL,NULL,'12:41:00','Floor 2 - Left Wing',0,0,0,NULL,'2025-08-27 12:20:43','DD3C6501',1,6,'reception'),
(794,'KABIRU UMAR','Walk-In','089068206101',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 12:19:39',NULL,0,NULL,NULL,'NIL','2025-08-27','OFFICIAL- ZAINAB BELLO','2025-08-27 13:19:39','2025-08-27 13:21:47',NULL,0,NULL,NULL,'13:19:00','Ground Floor',0,0,0,NULL,'2025-08-27 12:21:47','3C442123',1,6,'reception'),
(795,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 12:54:24',NULL,0,NULL,NULL,'BDC','2025-08-27','OFFICIAL- TO SEE MR STANLEY ANIGBO\\r\\n\\r\\nCARD NO-018','2025-08-27 13:54:24','2025-08-27 14:34:56',NULL,0,NULL,NULL,'13:53:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-27 13:34:56','851F5BAE',1,6,'reception'),
(796,'EJEH THOMAS','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 13:16:34',NULL,0,NULL,NULL,'NIL','2025-08-27','OFFICIAL- RCOO','2025-08-27 14:16:34','2025-08-27 17:00:33',NULL,0,NULL,NULL,'14:08:00','Floor 9 - Right Wing',0,0,0,NULL,'2025-08-27 16:00:33','74F25FDB',1,6,'reception'),
(797,'CHIVEGUNUM OKPARAOLU','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 13:16:34',NULL,0,NULL,NULL,'AQUARIAN CONSULT','2025-08-27','OFFICIAL- RCOO','2025-08-27 14:16:34','2025-08-27 17:00:30',NULL,0,NULL,NULL,'14:10:00','Floor 9 - Right Wing',0,0,0,NULL,'2025-08-27 16:00:30','898A3EF5',1,6,'reception'),
(798,'OLUSOLA AMADI','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 13:16:34',NULL,0,NULL,NULL,'CBN','2025-08-27','OFFICIAL- RCOO','2025-08-27 14:16:34','2025-08-27 17:00:26',NULL,0,NULL,NULL,'14:11:00','Floor 9 - Right Wing',0,0,0,NULL,'2025-08-27 16:00:26','646ACF5A',1,6,'reception'),
(799,'SERUMUN UBWA +2','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 13:16:34',NULL,0,NULL,NULL,'MIYETTI LAW','2025-08-27','OFFICIAL - RCOO','2025-08-27 14:16:34','2025-08-27 17:00:22',NULL,0,NULL,NULL,'14:12:00','Floor 9 - Right Wing',0,0,0,NULL,'2025-08-27 16:00:22','36A86ABD',1,6,'reception'),
(800,'QUEEN MALEEQ','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 13:16:34',NULL,0,NULL,NULL,'NIL','2025-08-27','OFFICIAL- RCOO','2025-08-27 14:16:34','2025-08-27 17:00:18',NULL,0,NULL,NULL,'14:13:00','Floor 9 - Right Wing',0,0,0,NULL,'2025-08-27 16:00:18','C3819636',1,6,'reception'),
(801,'JOSEPH ADESHINA','Walk-In','08148895195',NULL,'',NULL,'checked_out',0,NULL,'2025-08-27 13:36:13',NULL,0,NULL,NULL,'HERMON','2025-08-27','TO DROP AN ITEM','2025-08-27 14:36:13','2025-08-27 15:19:27',NULL,0,NULL,NULL,'14:35:00','Ground Floor',0,0,0,NULL,'2025-08-27 14:19:27','9A05B07F',1,6,'reception'),
(802,'BANKS ADIGWE','Walk-In','08121837891',NULL,'',NULL,'checked_out',0,NULL,'2025-08-28 08:35:26',NULL,0,NULL,NULL,'IRIS EXPOSURES LTD','2025-08-28','TO SEE ADEBISI ASHIMI','2025-08-28 09:35:26','2025-08-28 10:59:55',NULL,0,NULL,NULL,'09:33:00','Ground Floor',0,0,0,NULL,'2025-08-28 09:59:55','CEB99FB7',1,6,'reception'),
(803,'ENGR ACHIMI ABUBAKAR','Walk-In','07060963380',NULL,'',NULL,'checked_out',0,NULL,'2025-08-28 08:35:26',NULL,0,NULL,NULL,'IRIS EXPOSURES LTD','2025-08-28','TO SEE ASHIMI','2025-08-28 09:35:26','2025-08-28 10:59:51',NULL,0,NULL,NULL,'09:34:00','Ground Floor',0,0,0,NULL,'2025-08-28 09:59:51','AC38E05A',1,6,'reception'),
(804,'BEN ANANI','Walk-In','07033868307',NULL,'',NULL,'checked_out',0,NULL,'2025-08-28 08:41:36',NULL,0,NULL,NULL,'SOURCE FACTORIES','2025-08-28','TO DROP AN ITEM FOR ATALIA WARUMBA','2025-08-28 09:41:36','2025-08-28 10:58:26',NULL,0,NULL,NULL,'09:39:00','Ground Floor',0,0,0,NULL,'2025-08-28 09:58:26','A7439014',1,6,'reception'),
(805,'SA AKINNOLA','Walk-In','08036500580',NULL,'',NULL,'checked_out',0,NULL,'2025-08-28 09:42:40',NULL,0,NULL,NULL,'FCT FIRE SERVICE','2025-08-28','OFFICIAL- MR GODWIN ','2025-08-28 10:42:40','2025-08-28 11:00:00',NULL,0,NULL,NULL,'10:42:00','Ground Floor',0,0,0,NULL,'2025-08-28 10:00:00','33E695DD',1,6,'reception'),
(806,'HABINUCHI OWHONDAH','Walk-In','08137925577',NULL,'',NULL,'checked_out',0,NULL,'2025-08-28 12:28:07',NULL,0,NULL,NULL,'EXCELLERATE','2025-08-28','OFFICE INSPECTION- TAOFIK YUSUF','2025-08-28 13:28:07','2025-08-28 17:03:02',NULL,0,NULL,NULL,'13:27:00','Floor 2 - Right Wing',0,0,0,NULL,'2025-08-28 16:03:02','950DA501',1,NULL,'reception'),
(807,'ABDULLAHI MOHAMMED','Walk-In','08092223472',NULL,'',NULL,'checked_out',0,NULL,'2025-08-28 16:07:07',NULL,0,NULL,NULL,'WUSE ZONE 4','2025-08-28','OFFICIAL- AYO MUBARAK','2025-08-28 17:07:07','2025-08-28 17:07:13',NULL,0,NULL,NULL,'17:05:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-28 16:07:13','9D1A6801',1,6,'reception'),
(808,'AYMERIC PENTHYER','Walk-In','+85292015448',NULL,'',NULL,'checked_out',0,NULL,'2025-08-29 08:05:47',NULL,0,NULL,NULL,'FIVE KEYS','2025-08-29','TO SEE MADAM DORCAS','2025-08-29 09:05:46','2025-08-29 11:06:33',NULL,0,NULL,NULL,'09:05:00','Ground Floor',0,0,0,NULL,'2025-08-29 10:06:33','3C12F392',1,6,'reception'),
(809,'ELIZABETH CLIFFORD','Walk-In','09060005147',NULL,'',NULL,'checked_out',0,NULL,'2025-08-29 08:06:45',NULL,0,NULL,NULL,'SKYSTONE','2025-08-29','TO SEE MAUREEN AGEBA','2025-08-29 09:06:45','2025-08-29 14:37:58',NULL,0,NULL,NULL,'09:06:00','Ground Floor',0,0,0,NULL,'2025-08-29 13:37:58','F1141BF1',1,6,'reception'),
(810,'ANAS ABUBAKAR','Walk-In','08169489677',NULL,'',NULL,'checked_out',0,NULL,'2025-08-29 10:59:28',NULL,0,NULL,NULL,'BONKUNU TRDAE WEBS','2025-08-29','OFFICIAL- MAUREEN AGEBA\\r\\n\\r\\nCARD NO 019','2025-08-29 11:59:28','2025-08-29 12:09:59',NULL,0,NULL,NULL,'11:58:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-29 11:09:59','2F335E4F',1,6,'reception'),
(811,'Mr Zino','Walk-In','08187277161',NULL,'',NULL,'checked_out',0,NULL,'2025-08-29 11:12:08',NULL,0,NULL,NULL,'Jerry Travels','2025-08-29','MEETING WITH MR AYO MUBARAK - CARD 001','2025-08-29 12:12:08','2025-08-29 12:21:01',NULL,0,NULL,NULL,'12:11:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-29 11:21:01','D87ED159',1,5,'reception'),
(812,'MOHAMMED HARUNA','Walk-In','09048338063',NULL,'',NULL,'checked_out',0,NULL,'2025-08-29 11:26:15',NULL,0,NULL,NULL,'BUA GROUP','2025-08-29','OFFICIAL- MAUREEN AGEBA\\r\\n','2025-08-29 12:26:15','2025-08-29 14:23:37',NULL,0,NULL,NULL,'12:25:00','Ground Floor',0,0,0,NULL,'2025-08-29 13:23:37','B5BA1C67',1,6,'reception'),
(813,'MR TOBI','Walk-In','08108023673',NULL,'',NULL,'checked_out',0,NULL,'2025-08-29 13:25:23',NULL,0,NULL,NULL,'XEROX','2025-08-29','MEETING WITH MR OLUSEYE - CARD NO.  019','2025-08-29 14:25:23','2025-09-01 09:15:14',NULL,0,NULL,NULL,'14:10:00','Floor 6 - Left Wing',0,0,0,NULL,'2025-09-01 08:15:14','DAB7A02E',1,NULL,'reception'),
(814,'MR HENRY ADAKA','Walk-In','09161202637',NULL,'',NULL,'checked_out',0,NULL,'2025-08-29 13:53:21',NULL,0,NULL,NULL,'GERALDs INTERNATIONAL COMPANY','2025-08-29','MEETING WITH MRS MAUREEN AGEBA - CARD NO. 020','2025-08-29 14:53:21','2025-08-29 15:04:18',NULL,0,NULL,NULL,'14:52:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-08-29 14:04:18','A6FEFB2B',1,5,'reception'),
(815,'ABDULLAHI MOHAMMED','Walk-In','08092223472',NULL,'',NULL,'checked_out',0,NULL,'2025-08-29 16:19:48',NULL,0,NULL,NULL,'WUSE ZONE 4','2025-08-29','OFFICIAL- OBIOMA IWEKA','2025-08-29 17:19:48','2025-08-29 17:24:15',NULL,0,NULL,NULL,'17:19:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-08-29 16:24:15','07C7AEDB',1,NULL,'reception'),
(816,'CHUBUIKE NWACHUKWU','Walk-In','08065738555',NULL,'',NULL,'checked_out',0,NULL,'2025-09-01 08:19:38',NULL,0,NULL,NULL,'HDD THAILAND','2025-09-01','OFFICIAL- MAUREEN AGEBA','2025-09-01 09:19:38','2025-09-01 09:47:01',NULL,0,NULL,NULL,'09:19:00','Ground Floor',0,0,0,NULL,'2025-09-01 08:47:01','824B0C82',1,6,'reception'),
(817,'VERA UTTAH','Walk-In','08126441941',NULL,'',NULL,'checked_out',0,NULL,'2025-09-01 09:22:48',NULL,0,NULL,NULL,'ACCESS BANK','2025-09-01','OFFICIAL- PETER ADESHOLA\\r\\n\\r\\nCARD NO- 003','2025-09-01 10:22:48','2025-09-01 10:36:27',NULL,0,NULL,NULL,'10:22:00','Floor 9 - Right Wing',0,0,0,NULL,'2025-09-01 09:36:27','A6F30FCA',1,6,'reception'),
(818,'OGBONNA OTI','Walk-In','08023293603',NULL,'',NULL,'checked_out',0,NULL,'2025-09-01 09:36:19',NULL,0,NULL,NULL,'CITIBANK','2025-09-01','TO SEE MR TAOFIK YUSUF','2025-09-01 10:36:19','2025-09-01 12:22:14',NULL,0,NULL,NULL,'10:23:00','Mezzanine',0,0,0,NULL,'2025-09-01 11:22:14','91166AB9',1,6,'reception'),
(819,'ENGR TUNDE','Walk-In','08033468400',NULL,'',NULL,'checked_out',0,NULL,'2025-09-01 11:28:10',NULL,0,NULL,NULL,'NIL','2025-09-01','TO SEE MR TAOFIK','2025-09-01 12:28:10','2025-09-02 08:51:56',NULL,0,NULL,NULL,'12:27:00','Mezzanine',0,0,0,NULL,'2025-09-02 07:51:56','35E97D16',1,6,'reception'),
(820,'TAYO ','Walk-In','08096557231',NULL,'',NULL,'checked_out',0,NULL,'2025-09-01 11:39:38',NULL,0,NULL,NULL,'CAPPA','2025-09-01','OFFICIAL- DORCAS OLUWATOYE\\r\\n\\r\\nCARD NO\\r\\n- 019','2025-09-01 12:39:38','2025-09-01 14:27:08',NULL,0,NULL,NULL,'12:38:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-01 13:27:08','F0B2371F',1,6,'reception'),
(821,'VICTORIA NNAMDI','Walk-In','07050347577',NULL,'',NULL,'checked_out',0,NULL,'2025-09-01 12:34:29',NULL,0,NULL,NULL,'SURELAB','2025-09-01','OFFICIAL- OBIOMA IWEKA\\r\\n\\r\\nCARD NO- 020','2025-09-01 13:34:29','2025-09-01 13:50:56',NULL,0,NULL,NULL,'13:33:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-01 12:50:56','20AF71C7',1,NULL,'reception'),
(822,'TAMINU MUBARAK','Walk-In','08145587641',NULL,'',NULL,'checked_out',0,NULL,'2025-09-01 13:07:19',NULL,0,NULL,NULL,'NIL','2025-09-01','OFFICIAL- WISDOM TAIWAH\\r\\n\\r\\nCARD NO - 014','2025-09-01 14:07:19','2025-09-02 08:51:26',NULL,0,NULL,NULL,'14:04:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-02 07:51:26','72DB9FCB',1,6,'reception'),
(823,'IJEOMA WORLU','Walk-In','08037896287',NULL,'',NULL,'checked_out',0,NULL,'2025-09-01 13:39:33',NULL,0,NULL,NULL,'ZENITH BANK','2025-09-01','OFFICIAL- PETER ADESHOLA OLOWONONI\\r\\n\\r\\nCARD NO- 001','2025-09-01 14:39:33','2025-09-01 14:48:22',NULL,0,NULL,NULL,'14:36:00','Floor 8 - Right Wing',0,0,0,NULL,'2025-09-01 13:48:22','858D80ED',1,6,'reception'),
(824,'CHUBUIKE NWACHUKWU','Walk-In','08065738555',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 09:47:43',NULL,0,NULL,NULL,'HDD THAILAND','2025-09-02','OFFICIAL- MAUREEN AGEBA','2025-09-02 10:47:43','2025-09-02 10:49:01',NULL,0,NULL,NULL,'10:47:00','Ground Floor',0,0,0,NULL,'2025-09-02 09:49:01','024BA789',1,6,'reception'),
(825,'BARR CLARA NDIVE','Walk-In','08035198803',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 10:22:10',NULL,0,NULL,NULL,'CLARA NDIVE & CO LAW FIRM','2025-09-02','OFFICIAL- ADAEZE ADIGO\\r\\n\\r\\nCARD NO- 011','2025-09-02 11:22:10','2025-09-02 12:57:29',NULL,0,NULL,NULL,'11:16:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-02 11:57:29','8D8BC859',1,6,'reception'),
(826,'ENGR TUNDE','Walk-In','08033468400',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 12:23:56',NULL,0,NULL,NULL,'NIL','2025-09-02','TO SEE MR TAOFIK YUSUF','2025-09-02 13:23:56','2025-09-03 08:58:20',NULL,0,NULL,NULL,'13:23:00','Floor 3 - Right Wing',0,0,0,NULL,'2025-09-03 07:58:20','686E3AC2',1,6,'reception'),
(827,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 13:24:31',NULL,0,NULL,NULL,'BDC','2025-09-02','TO SEE MERCY NWANJA AND MULAI KANAGIE','2025-09-02 14:24:31','2025-09-02 14:36:57',NULL,0,NULL,NULL,'14:24:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-02 13:36:57','748B1591',1,6,'reception'),
(828,'MUSA AHMAD','Walk-In','07065883005',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 13:24:31',NULL,0,NULL,NULL,'BDC','2025-09-02','TO SEE MERCY NWANJA AND MULAI KANAGIE','2025-09-02 14:24:31','2025-09-02 14:37:27',NULL,0,NULL,NULL,'14:24:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-02 13:37:27','BBC1EF0D',1,6,'reception'),
(829,'MARC PATRICK','Walk-In','08030482923',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 13:35:25',NULL,0,NULL,NULL,'MTN','2025-09-02','OFFICIAL- NWABUEZE NWACHUKWU','2025-09-02 14:35:25','2025-09-03 08:57:42',NULL,0,NULL,NULL,'14:30:00','Ground Floor',0,0,0,NULL,'2025-09-03 07:57:42','DEA9DB32',1,6,'reception'),
(830,'MARC PATRICK','Walk-In','08030482923',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 13:35:25',NULL,0,NULL,NULL,'MTN','2025-09-02','OFFICIAL- NWABUEZE NWACHUKWU','2025-09-02 14:35:25','2025-09-03 08:54:34',NULL,0,NULL,NULL,'14:30:00','Ground Floor',0,0,0,NULL,'2025-09-03 07:54:34','883D8266',1,6,'reception'),
(831,'MARC PATRICK','Walk-In','08030482923',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 13:35:25',NULL,0,NULL,NULL,'MTN','2025-09-02','OFFICIAL- NWABUEZE NWACHUKWU','2025-09-02 14:35:25','2025-09-03 08:54:29',NULL,0,NULL,NULL,'14:30:00','Ground Floor',0,0,0,NULL,'2025-09-03 07:54:29','0BF87513',1,6,'reception'),
(832,'MARC PATRICK','Walk-In','08030482923',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 13:35:26',NULL,0,NULL,NULL,'MTN','2025-09-02','OFFICIAL- NWABUEZE NWACHUKWU','2025-09-02 14:35:26','2025-09-03 08:54:25',NULL,0,NULL,NULL,'14:30:00','Ground Floor',0,0,0,NULL,'2025-09-03 07:54:25','19AABC98',1,6,'reception'),
(833,'DAMI FAGBEMI','Walk-In','08060895595',NULL,'',NULL,'checked_out',0,NULL,'2025-09-02 15:12:43',NULL,0,NULL,NULL,'JERRY TRAVELS','2025-09-02','OFFICIAL- DORCAS OLUWATOYE\\r\\n\\r\\nCARD NO- 013','2025-09-02 16:12:43','2025-09-02 16:42:26',NULL,0,NULL,NULL,'16:08:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-02 15:42:26','8426F584',1,NULL,'reception'),
(834,'ANODI WISIKI','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-09-03 08:31:21',NULL,0,NULL,NULL,'AFREXIMBANK','2025-09-03','TO WORK HERE AT ABUJA AATC','2025-09-03 09:31:21','2025-09-04 10:16:05',NULL,0,NULL,NULL,'09:30:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-04 09:16:05','84820249',1,6,'reception'),
(835,'DEBORAH AWOJUOLA','Walk-In','0802096100',NULL,'',NULL,'checked_out',0,NULL,'2025-09-03 11:57:16',NULL,0,NULL,NULL,'NIL','2025-09-03','TO DROP A PACKAGE FOR DORCAS OLUWATOYE','2025-09-03 12:57:16','2025-09-03 13:23:19',NULL,0,NULL,NULL,'12:53:00','Ground Floor',0,0,0,NULL,'2025-09-03 12:23:19','8B33A19E',1,6,'reception'),
(836,'ENGR HARUNA ABUBAKAR','Walk-In','07036622575',NULL,'',NULL,'checked_out',0,NULL,'2025-09-03 12:27:25',NULL,0,NULL,NULL,'G.T.S','2025-09-03','INQUIRY','2025-09-03 13:27:25','2025-09-03 13:28:18',NULL,0,NULL,NULL,'13:23:00','Ground Floor',0,0,0,NULL,'2025-09-03 12:28:18','DE86B2DC',1,6,'reception'),
(837,'M.A MURTALA','Walk-In','08038302265',NULL,'',NULL,'checked_out',0,NULL,'2025-09-04 09:27:59',NULL,0,NULL,NULL,'FEDERAL FIRE SERVICE','2025-09-04','OFFICIAL- MR GODWIN\\r\\n\\r\\n','2025-09-04 10:27:59','2025-09-04 11:38:22',NULL,0,NULL,NULL,'10:23:00','Mezzanine',0,0,0,NULL,'2025-09-04 10:38:22','5EF835B6',1,6,'reception'),
(838,'IBIM DIRI','Walk-In','08033786222',NULL,'',NULL,'checked_out',0,NULL,'2025-09-04 09:59:36',NULL,0,NULL,NULL,'DIBIJ ENERGY','2025-09-04','OFFICIAL - WISDOM TAIWAH\\r\\nCARD NO-014','2025-09-04 10:59:36','2025-09-04 11:38:18',NULL,0,NULL,NULL,'10:56:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-04 10:38:18','3508E3AC',1,6,'reception'),
(839,'SAMUEL','Walk-In','09063560503',NULL,'',NULL,'checked_out',0,NULL,'2025-09-04 13:43:57',NULL,0,NULL,NULL,'NIL','2025-09-04','TO SEE GRACE OLUWASOJI\\r\\n\\r\\nCARD NO- 013','2025-09-04 14:43:57','2025-09-08 08:24:59',NULL,0,NULL,NULL,'14:42:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-08 07:24:59','1D54B773',1,NULL,'reception'),
(840,'KENE ELEH','Walk-In','08138472001',NULL,'',NULL,'checked_out',0,NULL,'2025-09-08 09:57:25',NULL,0,NULL,NULL,'MTN','2025-09-08','TO WORK ON THE SERVER ROOM','2025-09-08 10:57:25','2025-09-08 14:58:44',NULL,0,NULL,NULL,'10:52:00','Floor 7 - Right Wing',0,0,0,NULL,'2025-09-08 13:58:44','43B93B17',1,6,'reception'),
(841,'SOLOMON ADAH','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-09-08 09:57:25',NULL,0,NULL,NULL,'MTN','2025-09-08','TO WORK ON THE SERVER ROOM ON THE 7TH FLOOR','2025-09-08 10:57:25','2025-09-08 14:58:51',NULL,0,NULL,NULL,'10:57:00','Floor 7 - Right Wing',0,0,0,NULL,'2025-09-08 13:58:51','2B815233',1,6,'reception'),
(842,'OPEYEMI OJO','Walk-In','08055255742',NULL,'',NULL,'checked_out',0,NULL,'2025-09-08 10:10:37',NULL,0,NULL,NULL,'ZENITH BANK','2025-09-08','TO BOOK APPOINTMENT WITH DR ALABI','2025-09-08 11:10:37','2025-09-08 14:58:55',NULL,0,NULL,NULL,'10:58:00','Ground Floor',0,0,0,NULL,'2025-09-08 13:58:55','778FF3B8',1,6,'reception'),
(843,'JOHN AGADAGBA','Walk-In','07040002868',NULL,'',NULL,'checked_out',0,NULL,'2025-09-08 10:10:37',NULL,0,NULL,NULL,'ZENITH BANK','2025-09-08','TO BOOK APPOINTMENT WITH DR ALABI','2025-09-08 11:10:37','2025-09-08 14:58:58',NULL,0,NULL,NULL,'11:10:00','Ground Floor',0,0,0,NULL,'2025-09-08 13:58:58','C6D1283D',1,6,'reception'),
(844,'BOSE EJIRO','Walk-In','08023231727',NULL,'',NULL,'checked_out',0,NULL,'2025-09-08 11:30:32',NULL,0,NULL,NULL,'AEB','2025-09-08','TENANTS OF THE AEB','2025-09-08 12:30:32','2025-09-08 14:59:01',NULL,0,NULL,NULL,'12:27:00','Floor 3 - Left Wing',0,0,0,NULL,'2025-09-08 13:59:01','67C59C3E',1,NULL,'reception'),
(845,'MUSA BADAMASI','Walk-In','8083652278',NULL,'',NULL,'checked_out',0,NULL,'2025-09-08 13:21:45',NULL,0,NULL,NULL,'BDC','2025-09-08','OFFFICIAL- MERCY NWANJA\\r\\n','2025-09-08 14:21:45','2025-09-08 14:59:06',NULL,0,NULL,NULL,'14:20:00','Ground Floor',0,0,0,NULL,'2025-09-08 13:59:06','F2DEAB9D',1,6,'reception'),
(846,'TEMPLE AFOLABI','Walk-In','08081000143',NULL,'',NULL,'checked_out',0,NULL,'2025-09-09 08:08:37',NULL,0,NULL,NULL,'AMCE','2025-09-09','TO SEE MAUREEN\\r\\n\\r\\nCARD NO- 013','2025-09-09 09:08:37','2025-09-09 16:12:14',NULL,0,NULL,NULL,'09:06:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-09 15:12:14','49913B51',1,6,'reception'),
(847,'CHINAZOR ABASIMALO +1','Walk-In','08033947555',NULL,'',NULL,'checked_out',0,NULL,'2025-09-09 15:19:28',NULL,0,NULL,NULL,'AMCE','2025-09-09','OFFICIAL- MAUREEN AGEBA','2025-09-09 16:19:28','2025-09-09 16:34:49',NULL,0,NULL,NULL,'16:19:00','Ground Floor',0,0,0,NULL,'2025-09-09 15:34:49','DEEE51B7',1,6,'reception'),
(848,'BARR CLARA NDIVE','Walk-In','08035198803',NULL,'',NULL,'checked_out',0,NULL,'2025-09-09 15:22:37',NULL,0,NULL,NULL,'CLARANDIVE & CO LAW FIRM','2025-09-09','OFFICIAL- ADA ADIGO\\r\\n\\r\\nCARD NO- 019','2025-09-09 16:22:37','2025-09-09 16:35:15',NULL,0,NULL,NULL,'16:20:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-09 15:35:15','F2B7F859',1,6,'reception'),
(849,'DR LAWSON NGOA','Walk-In','08038762840',NULL,'',NULL,'checked_out',0,NULL,'2025-09-09 15:22:37',NULL,0,NULL,NULL,'FALLOMEXT','2025-09-09','OFFICIAL - ADAEZE ADIGO\\r\\n','2025-09-09 16:22:37','2025-09-09 16:35:11',NULL,0,NULL,NULL,'16:21:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-09 15:35:11','DBB0E59C',1,6,'reception'),
(850,'MUSA ABADAMASI','Walk-In','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-09-09 15:23:37',NULL,0,NULL,NULL,'BDC','2025-09-09','OFFICIAL- DORCAS OLUWATOYE AND MULAI KANAGIE\\r\\n\\r\\nCARD NO- 017','2025-09-09 16:23:37','2025-09-09 16:35:08',NULL,0,NULL,NULL,'16:23:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-09 15:35:08','71BBB2F7',1,6,'reception'),
(851,'AYODEJI NELSON DAODU ','Walk-In','09065057344',NULL,'',NULL,'checked_out',0,NULL,'2025-09-09 15:27:32',NULL,0,NULL,NULL,'AFRICA GLOBAL ','2025-09-09','OFFICE SPACE ENQUIRY','2025-09-09 16:27:32','2025-09-09 16:35:05',NULL,0,NULL,NULL,'15:10:00','Ground Floor',0,0,0,NULL,'2025-09-09 15:35:05','B9BC7D40',1,6,'reception'),
(852,'JOHN AGADAGBA','Walk-In','07040002868',NULL,'',NULL,'checked_out',0,NULL,'2025-09-09 15:30:59',NULL,0,NULL,NULL,'ZENITH BANK','2025-09-09','SUBMIT LETTER FOR A MEETING APPOINTMENT WITH DR ALABI','2025-09-09 16:30:59','2025-09-09 16:35:02',NULL,0,NULL,NULL,'10:21:00','Ground Floor',0,0,0,NULL,'2025-09-09 15:35:02','9A2D92F6',1,6,'reception'),
(853,'IGWEAGU CHRISTIAN OKWU','Walk-In','07058612714',NULL,'',NULL,'checked_out',0,NULL,'2025-09-09 15:33:15',NULL,0,NULL,NULL,'SOMSOLUTECH GLOBAL LIMITED','2025-09-09','TO SUBMIT A LETTER','2025-09-09 16:33:15','2025-09-09 16:34:58',NULL,0,NULL,NULL,'13:20:00','Ground Floor',0,0,0,NULL,'2025-09-09 15:34:58','9A3BEBCC',1,6,'reception'),
(854,'ADEBAYO YOMI','Walk-In','07069404038',NULL,'',NULL,'checked_out',0,NULL,'2025-09-09 15:34:30',NULL,0,NULL,NULL,'TUCCIMED LIMITED','2025-09-09','TO SEE MRS MERCY','2025-09-09 16:34:30','2025-09-09 16:34:55',NULL,0,NULL,NULL,'12:23:00','Ground Floor',0,0,0,NULL,'2025-09-09 15:34:55','17F1B3D8',1,6,'reception'),
(855,'MAGARET OLADIPO','Walk-In','09021675478',NULL,'',NULL,'checked_out',0,NULL,'2025-09-10 12:01:08',NULL,0,NULL,NULL,'DA WAVES APPAREL','2025-09-10','TO DROP AN ITEM','2025-09-10 13:01:08','2025-09-10 14:27:54',NULL,0,NULL,NULL,'13:00:00','Ground Floor',0,0,0,NULL,'2025-09-10 13:27:54','5DAB4F3A',1,NULL,'reception'),
(856,'MUSA BADAMASI','Walk-In','8083652278',NULL,'',NULL,'checked_out',0,NULL,'2025-09-10 13:29:35',NULL,0,NULL,NULL,'BUREAU DE CHANGE','2025-09-10','OFFICIAL- MULAI KANAGIE\\r\\n\\r\\nCARD NO - 020','2025-09-10 14:29:35','2025-09-10 14:44:58',NULL,0,NULL,NULL,'14:29:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-10 13:44:58','7A9E6D6D',1,6,'reception'),
(857,'KATE PETERS','Oluwaseun Yinka Alabi ','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-09-10 15:27:28',40,0,NULL,NULL,'NIL','2025-09-10','OFFICIAL\\r\\n\\r\\nCARD NO- 017','2025-09-10 16:27:28','2025-09-10 16:28:10',NULL,0,NULL,NULL,'16:25:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-10 15:28:10','47B20B35',1,NULL,'reception'),
(858,'EMEKA ASAKA','Oluwaseun Yinka Alabi ','NIL',NULL,'',NULL,'checked_out',0,NULL,'2025-09-10 15:27:29',40,0,NULL,NULL,'NIL','2025-09-10','OFFICIAL\\r\\n','2025-09-10 16:27:29','2025-09-10 16:28:07',NULL,0,NULL,NULL,'16:26:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-10 15:28:07','956B3801',1,NULL,'reception'),
(859,'SAMUEL ADOBUNU','Oluwaseun Yinka Alabi ','08090441100',NULL,'Samuel.adobunu@dhl.com',NULL,'pending',0,NULL,'2025-09-10 15:46:20',40,0,NULL,NULL,'DHL','2025-09-11','OFFICIAL',NULL,NULL,NULL,0,NULL,NULL,'14:00:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-10 15:46:20','396594F8',1,6,'reception'),
(860,'OLANIRAN FAFOWORA','Oluwaseun Yinka Alabi ','08090441066',NULL,'Olaniran.fafowora@dhl.com',NULL,'pending',0,NULL,'2025-09-10 15:46:21',40,0,NULL,NULL,'DHL','2025-09-11','OFFICIAL',NULL,NULL,NULL,0,NULL,NULL,'14:00:00','Floor 6 - Right Wing',0,0,0,NULL,'2025-09-10 15:46:21','54556F63',1,6,'reception');
/*!40000 ALTER TABLE `visitors` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_visitors` BEFORE INSERT ON `visitors` FOR EACH ROW BEGIN
    DECLARE temp_code VARCHAR(10);
    DECLARE exists_code INT;

    REPEAT
        SET temp_code = UPPER(SUBSTRING(MD5(RAND()), 1, 8)); -- random 8-char code
        SELECT COUNT(*) INTO exists_code FROM visitors WHERE unique_code = temp_code;
    UNTIL exists_code = 0
    END REPEAT;

    SET NEW.unique_code = temp_code;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'aatcabuj_visitors_version_2'
--

--
-- Dumping routines for database 'aatcabuj_visitors_version_2'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateDailyStatistics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateDailyStatistics`(IN target_date DATE)
BEGIN
    DECLARE premises_count INT DEFAULT 0;
    DECLARE office_count INT DEFAULT 0;
    DECLARE hotel_other INT DEFAULT 0;
    DECLARE office_percentage DECIMAL(5,2) DEFAULT 0;
    DECLARE qr_count INT DEFAULT 0;
    DECLARE walkin_count INT DEFAULT 0;
    
    -- Get premises entries
    SELECT COALESCE(total_entries, 0) INTO premises_count
    FROM daily_premises_entries 
    WHERE entry_date = target_date;
    
    -- Get office visitors
    SELECT COUNT(*) INTO office_count
    FROM visitors 
    WHERE DATE(check_in_time) = target_date 
    AND status IN ('checked_in', 'checked_out');
    
    -- Calculate hotel/other
    SET hotel_other = GREATEST(0, premises_count - office_count);
    
    -- Calculate percentage
    IF premises_count > 0 THEN
        SET office_percentage = ROUND((office_count / premises_count) * 100, 2);
    END IF;
    
    -- Get QR vs walk-in breakdown
    SELECT 
        SUM(CASE WHEN source = 'qr_code' THEN 1 ELSE 0 END),
        SUM(CASE WHEN source IN ('reception', 'walkin') THEN 1 ELSE 0 END)
    INTO qr_count, walkin_count
    FROM visitors 
    WHERE DATE(check_in_time) = target_date 
    AND status IN ('checked_in', 'checked_out');
    
    -- Insert or update statistics
    INSERT INTO daily_statistics 
    (stat_date, total_premises_entries, office_visitors, hotel_other_traffic, 
     office_visitor_percentage, total_qr_checkins, total_walkins)
    VALUES 
    (target_date, premises_count, office_count, hotel_other, 
     office_percentage, COALESCE(qr_count, 0), COALESCE(walkin_count, 0))
    ON DUPLICATE KEY UPDATE
        total_premises_entries = premises_count,
        office_visitors = office_count,
        hotel_other_traffic = hotel_other,
        office_visitor_percentage = office_percentage,
        total_qr_checkins = COALESCE(qr_count, 0),
        total_walkins = COALESCE(walkin_count, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `aatcabuj_visitors_version_2`
--


--
-- Final view structure for view `premises_summary`
--

/*!50001 DROP VIEW IF EXISTS `premises_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `premises_summary` AS select `daily_premises_entries`.`entry_date` AS `entry_date`,`daily_premises_entries`.`total_entries` AS `premises_entries`,(select count(0) from `visitors` where cast(`visitors`.`check_in_time` as date) = `daily_premises_entries`.`entry_date` and `visitors`.`status` in ('checked_in','checked_out')) AS `office_visitors`,`daily_premises_entries`.`total_entries` - coalesce((select count(0) from `visitors` where cast(`visitors`.`check_in_time` as date) = `daily_premises_entries`.`entry_date` and `visitors`.`status` in ('checked_in','checked_out')),0) AS `hotel_other_traffic`,case when `daily_premises_entries`.`total_entries` > 0 then round((select count(0) from `visitors` where cast(`visitors`.`check_in_time` as date) = `daily_premises_entries`.`entry_date` and `visitors`.`status` in ('checked_in','checked_out')) / `daily_premises_entries`.`total_entries` * 100,1) else 0 end AS `office_visitor_percentage` from `daily_premises_entries` order by `daily_premises_entries`.`entry_date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-09-11  9:19:38
