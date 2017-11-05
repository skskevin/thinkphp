/*
SQLyog v10.2 
MySQL - 5.7.11 : Database - test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`test` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `test`;

/*Table structure for table `php_user` */

DROP TABLE IF EXISTS `php_user`;

CREATE TABLE `php_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user` varchar(20) DEFAULT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `php_user` */

insert  into `php_user`(`id`,`user`,`ctime`) values (1,'闫永磊',1504333161),(2,'石晓乐',1504333270),(4,'石晓乐',1504355637),(5,'石晓乐',1504354718),(6,'石晓乐',1504354718),(7,'石晓乐',1504354718),(8,'石晓乐',1504355052),(9,'石晓乐',1504355052),(10,'石晓乐',1504355052),(11,'石晓乐',1504355519),(12,'石晓乐',1504355519),(13,'石晓乐',1504355519),(14,'石晓乐',1504355580),(15,'石晓乐',1504355580),(16,'石晓乐',1504355580),(17,'石晓乐',1504355637),(18,'石晓乐',1504355637),(19,'石晓乐',1504355637);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
