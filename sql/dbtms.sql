/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.14-MariaDB : Database - dbtms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbtms` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dbtms`;

/*Table structure for table `dummyncs` */

DROP TABLE IF EXISTS `dummyncs`;

CREATE TABLE `dummyncs` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `Tcode` varchar(128) DEFAULT NULL,
  `toolId` varchar(128) DEFAULT NULL,
  `idNo` int(128) DEFAULT NULL,
  `toolType` varchar(128) DEFAULT NULL,
  `diameter` float DEFAULT NULL,
  `offsetLength` float DEFAULT NULL,
  `edgeLength` float DEFAULT NULL,
  `underChuckLength` int(128) DEFAULT NULL,
  `setProfile` char(1) DEFAULT NULL,
  `edgeProfile` char(1) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `expLife` int(255) DEFAULT NULL,
  `timeUse` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ncID` int(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `dummyncs` */

insert  into `dummyncs`(`id`,`Tcode`,`toolId`,`idNo`,`toolType`,`diameter`,`offsetLength`,`edgeLength`,`underChuckLength`,`setProfile`,`edgeProfile`,`location`,`expLife`,`timeUse`,`created_at`,`updated_at`,`ncID`) values 
(1,'T001','74016000',1,'CENTER DRILL',16,345,7.206,100,'1','1','PCH',3600,100,'2021-01-04 15:17:38','2021-01-04 15:14:12',1),
(2,'T002','72010000',1,'LEAD DRILL',32,NULL,15.672,0,'1','1','PCH',2800,100,'2021-01-04 15:17:39','2021-01-04 15:14:14',2),
(3,'T003','20007103',1,'TAP',5.9,288.976,20,100,'1','1','PCH',3600,100,'2021-01-04 15:17:39','2021-01-04 15:14:21',3);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`,`position`,`department`) values 
(1,'arif','arif@gmail.com',NULL,'$2y$10$.ZnIsLZtH09CUc9il5ZV4etCJ7E9JT.VRedOSAKrpCraEQWsc7kmq','5tgeJt4NCkxp05T6cmTBMlIzT9FsXHBquCE5MVeIgLkYCgr0JCAymkwOIV0N','2020-10-24 06:35:11','2020-10-24 06:35:11','admin','IT'),
(3,'rizkia','rizkia@gmail.com',NULL,'$2y$10$.ZnIsLZtH09CUc9il5ZV4etCJ7E9JT.VRedOSAKrpCraEQWsc7kmq','5tgeJt4NCkxp05T6cmTBMlIzT9FsXHBquCE5MVeIgLkYCgr0JCAymkwOIV0N',NULL,NULL,'Operator','Manufacture');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
