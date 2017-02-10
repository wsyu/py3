/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.6.24 : Database - car_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`car_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `car_db`;

/*Table structure for table `car_brand` */

DROP TABLE IF EXISTS `car_brand`;

CREATE TABLE `car_brand` (
  `brand_id` int(10) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `brand_url` varchar(255) DEFAULT NULL,
  `down_status` int(1) NOT NULL DEFAULT '0',
  `ent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`brand_id`),
  KEY `ent_id` (`ent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `car_enterprise` */

DROP TABLE IF EXISTS `car_enterprise`;

CREATE TABLE `car_enterprise` (
  `ent_id` int(10) NOT NULL,
  `ent_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `car_line` */

DROP TABLE IF EXISTS `car_line`;

CREATE TABLE `car_line` (
  `line_id` int(10) NOT NULL,
  `line_name` varchar(255) DEFAULT NULL,
  `line_url` varchar(255) DEFAULT NULL,
  `brand_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`line_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
