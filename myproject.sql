/*
SQLyog Ultimate v12.14 (64 bit)
MySQL - 8.0.27 : Database - myproject
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `myproject`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2021_10_21_063039_create_tblstudents_table',1),
(4,'2021_10_21_065748_create_tblclasses_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `tblclasses` */

DROP TABLE IF EXISTS `tblclasses`;

CREATE TABLE `tblclasses` (
  `class_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `cls_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cls_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cls_status` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cls_description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`class_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tblclasses` */

insert  into `tblclasses`(`class_ID`,`cls_code`,`cls_name`,`cls_status`,`cls_description`,`created_at`,`updated_at`) values 
(1,'class1','First Standard','A','First Standard Class A Batch b','2021-10-21 10:59:56','2021-10-22 21:56:20'),
(2,'classs2','Second Standard','A','Second Standard Class B Batch','2021-10-21 19:59:36','2021-10-21 19:59:38'),
(8,'class4','4 th Standard','D','4 th Standard Batch P','2021-10-21 20:46:29','2021-10-22 06:51:28'),
(9,'a','a','D','a','2021-10-21 20:51:30','2021-10-22 06:02:31'),
(10,'class5','five th standard','D','five Standard L batch','2021-10-22 05:13:40','2021-10-22 06:02:44'),
(11,'class3','Third Standard','A','Third Standard L Batch','2021-10-22 06:45:44','2021-10-22 06:45:44'),
(12,'class5','five th standard','A','Fivth Standard Batch P','2021-10-22 06:48:11','2021-10-22 06:48:11'),
(13,'class6','Sixth Standard','A','Sixth Standard Batch L','2021-10-22 06:48:56','2021-10-22 06:49:24'),
(14,'class7','Seven Standard','A','Seven standard U Batch','2021-10-22 07:14:40','2021-10-22 07:14:40'),
(15,'class8','class 8','A','class 8','2021-10-22 17:36:11','2021-10-22 17:36:11'),
(16,'class1','First Standard','A','First Standard Class A Batch b','2021-10-22 21:56:30','2021-10-22 21:56:30'),
(17,'class1','First Standard','A','First Standard Class A Batch b','2021-10-22 21:57:42','2021-10-22 21:57:42'),
(18,'class1','First Standard','A','First Standard Class A Batch b','2021-10-22 21:59:19','2021-10-22 21:59:19'),
(19,'class9','Nine Standard Student','A',NULL,'2021-10-23 07:49:50','2021-10-23 07:49:50');

/*Table structure for table `tblstudents` */

DROP TABLE IF EXISTS `tblstudents`;

CREATE TABLE `tblstudents` (
  `std_ID` int unsigned NOT NULL AUTO_INCREMENT,
  `std_firstname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_lastname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `std_clasID` int unsigned NOT NULL,
  `std_dateofbirth` date DEFAULT NULL,
  `std_status` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`std_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tblstudents` */

insert  into `tblstudents`(`std_ID`,`std_firstname`,`std_lastname`,`std_clasID`,`std_dateofbirth`,`std_status`,`created_at`,`updated_at`) values 
(1,'Mohammed','Shafi',2,'2021-10-22','D','2021-10-22 12:34:24','2021-10-22 14:44:18'),
(2,'Mohammed','Shafi',1,'2020-02-02','D','2021-10-22 11:33:56','2021-10-22 16:13:15'),
(3,'Mohammed','Sidheeque',11,'2021-10-22','D','2021-10-22 11:39:20','2021-10-22 11:45:07'),
(4,'Mohammed','Shafi',1,'2021-10-22','D','2021-10-22 13:44:23','2021-10-22 14:40:36'),
(5,'Mohammed','Shafi',1,'2021-10-31','D','2021-10-22 13:45:01','2021-10-22 21:33:26'),
(6,'Mohammed','Sidheeque',1,'2021-10-02','D','2021-10-22 13:46:34','2021-10-22 21:33:29'),
(7,'Mohammed','Shafi',1,'2021-10-23','D','2021-10-22 14:09:18','2021-10-22 21:33:35'),
(8,'Mohammed','Shafi',1,'2021-10-31','D','2021-10-22 15:11:48','2021-10-22 21:33:39'),
(9,'Sidheeque','mada',1,'2021-10-22','D','2021-10-22 16:13:05','2021-10-22 21:33:43'),
(10,'Mohammed','Sidheeque',1,'2021-10-22','D','2021-10-22 16:13:54','2021-10-22 21:34:05'),
(11,'Mohammed','Pattambi',1,'2021-10-03','D','2021-10-22 16:14:36','2021-10-22 21:33:47'),
(12,'Mohammed','Shafi',1,'2021-10-01','D','2021-10-22 17:44:47','2021-10-22 21:33:55'),
(13,'Mohammed','Sidheeque',1,'2021-10-10','D','2021-10-22 17:45:17','2021-10-22 21:33:51'),
(14,'Mohammed','Shafi',1,'2021-10-10','D','2021-10-22 17:45:35','2021-10-22 21:34:09'),
(15,'Mohammed','Shafi',2,'2021-10-03','D','2021-10-22 17:48:07','2021-10-22 21:50:31'),
(16,'Mohammed','Sidheeque',2,'2021-10-08','D','2021-10-22 18:04:02','2021-10-23 07:13:20'),
(17,'Mohammed','Shafi',2,'2021-10-08','A','2021-10-22 18:04:29','2021-10-22 21:49:41'),
(18,'Mohammed','Shafi',1,'2021-10-31','A','2021-10-22 18:12:59','2021-10-22 18:12:59'),
(19,'Mohammed','Shafi',1,'2021-10-31','A','2021-10-22 18:15:49','2021-10-22 18:15:49'),
(20,'Mohammed','Shafi',1,'2021-10-23','A','2021-10-22 18:17:15','2021-10-22 18:17:15'),
(21,'Mohammed','Shafi',1,'2021-10-23','A','2021-10-22 18:17:49','2021-10-22 18:17:49'),
(22,'Mohammed','Shafi',1,'2021-10-31','A','2021-10-22 18:18:05','2021-10-22 18:18:05'),
(23,'Mohammed','Shafi',1,'2021-10-31','A','2021-10-22 18:18:35','2021-10-22 18:18:35'),
(24,'Mohammed','Sidheeque',1,'2021-10-01','A','2021-10-22 21:19:12','2021-10-22 21:19:40'),
(25,'Mohammed','Shafi',1,'2021-10-23','A','2021-10-22 21:21:34','2021-10-22 21:21:34'),
(26,'Mohammed','Shafi',1,'2021-10-28','A','2021-10-22 21:25:16','2021-10-22 21:30:41'),
(27,'Mohammed','Shafi',1,'2021-10-23','A','2021-10-22 21:30:22','2021-10-22 21:30:22'),
(28,'Mohammed','Pattambi',1,'2021-10-28','D','2021-10-22 21:31:20','2021-10-22 21:50:53');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
