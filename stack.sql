/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.27 : Database - stack
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stack` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `stack`;

/*Table structure for table `addfeedbackdata` */

DROP TABLE IF EXISTS `addfeedbackdata`;

CREATE TABLE `addfeedbackdata` (
  `no` int NOT NULL AUTO_INCREMENT,
  `email` varchar(999) DEFAULT NULL,
  `id` int DEFAULT NULL,
  `message` varchar(999) DEFAULT NULL,
  `rate` int DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `addfeedbackdata` */

insert  into `addfeedbackdata`(`no`,`email`,`id`,`message`,`rate`) values 
(1,'venkat@gmail.com',1,'veryyyy bad\r\nokay',NULL),
(10,'s@gmail.com',18,'okay',3),
(11,'pa@gmail.com',18,'not good',3),
(12,'k@gmail.com',26,'okay',3),
(13,'ma@gmail.com',26,'ll',3);

/*Table structure for table `addproduct` */

DROP TABLE IF EXISTS `addproduct`;

CREATE TABLE `addproduct` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Category` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `description` varchar(999) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `quantity` varchar(999) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `active` varchar(999) DEFAULT NULL,
  `totalcost` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `addproduct` */

insert  into `addproduct`(`id`,`Category`,`title`,`description`,`cost`,`quantity`,`stock`,`active`,`totalcost`) values 
(1,'orange','lll','mmm',3,'4',4,'available',12),
(2,'orange','fff','lll',4,'5',4,'Unavailable',20),
(3,'orange','glammor','super',1000,'20',4,'Unavailable',20000),
(4,'cycle','race','ok',100,'10',0,'Unavailable',1000),
(5,'tv','kkk','lll',4,'2',0,'Unavailable',8),
(6,'orange','4ff','rfff',45,'5',6,NULL,225);

/*Table structure for table `purchege` */

DROP TABLE IF EXISTS `purchege`;

CREATE TABLE `purchege` (
  `no` int NOT NULL AUTO_INCREMENT,
  `email` varchar(222) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id` int DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `totalcost` double DEFAULT NULL,
  `cancel` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `remaingstock` int DEFAULT NULL,
  `address` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `purchege` */

insert  into `purchege`(`no`,`email`,`id`,`cost`,`quantity`,`totalcost`,`cancel`,`status`,`remaingstock`,`address`) values 
(34,'k@gmail.com',26,6,2,12,'Accepted','Accepted',9,NULL),
(35,'ma@gmail.com',26,6,3,18,'cancelled','Rejected',8,NULL),
(36,'ma@gmail.com',26,6,5,30,'cancelled','Rejected',6,NULL),
(37,'ma@gmail.com',26,6,4,24,'Accepted','Accepted',7,NULL),
(38,'ma@gmail.com',27,50,2,100,'Accepted','Accepted',0,NULL),
(39,'ma@gmail.com',26,6,2,12,'Accepted','Accepted',9,'ongole'),
(40,'amma@gmail.com',22,3,1,3,'cancelled','Rejected',1,'nellore'),
(41,'ma@gmail.com',1,3,1,3,'cancelled','Rejected',1,'kkk'),
(42,'ma@gmail.com',1,3,1,3,'Accepted','Accepted',1,'lll'),
(43,'ma@gmail.com',1,3,3,9,'new','buyed',-1,'333'),
(44,'ma@gmail.com',4,100,1,100,'new','buyed',4,'ongole'),
(45,'ma@gmail.com',4,100,1,100,'new','buyed',3,'ll'),
(46,'ma@gmail.com',4,100,2,200,'new','buyed',0,'lll'),
(47,'ma@gmail.com',4,100,2,200,'new','buyed',-2,'kk'),
(48,'ma@gmail.com',5,4,2,8,'Accepted','Accepted',-2,'jkk');

/*Table structure for table `registeradmin` */

DROP TABLE IF EXISTS `registeradmin`;

CREATE TABLE `registeradmin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `registeradmin` */

insert  into `registeradmin`(`id`,`name`,`email`,`password`) values 
(1,'sateesh','s@gmail.com','s'),
(14,'amala','ammu@gmail.com','amala');

/*Table structure for table `registeremp` */

DROP TABLE IF EXISTS `registeremp`;

CREATE TABLE `registeremp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `address` varchar(999) DEFAULT NULL,
  `mobile` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `registeremp` */

insert  into `registeremp`(`id`,`name`,`email`,`password`,`address`,`mobile`) values 
(15,'pavan','p@gmail.com','pp','ongole','1234567895'),
(16,'hdyt','si@gmail.com','si','hbdj','khduh'),
(17,'pavan','k@gmail.com',NULL,'kkk','12346789'),
(18,'mahi','ma@gmail.com','ma','kkk','1111'),
(19,'pavan','amma@gmail.com','nana','nello','1234799');

/*Table structure for table `titledata` */

DROP TABLE IF EXISTS `titledata`;

CREATE TABLE `titledata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `titledata` */

insert  into `titledata`(`id`,`title`) values 
(17,'orange'),
(18,'orange'),
(19,'tv'),
(20,'bike'),
(21,'cycle'),
(22,'f7676');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
