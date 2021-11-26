/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - poms
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `poms`;

USE `poms`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cn_no` int(11) NOT NULL auto_increment,
  `custName` varchar(20) default NULL,
  `address` varchar(50) default NULL,
  `location` varchar(20) default NULL,
  `username` varchar(20) default NULL,
  `pwd` varchar(20) default NULL,
  PRIMARY KEY  (`cn_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`cn_no`,`custName`,`address`,`location`,`username`,`pwd`) values (1,'Ravi Kumar','D.No.1-121-A, \r\nDilsukh Nagar','Hyderabad','ravi','ravi@123'),(2,'Laval Kumar','D.No.1-121-A, \r\nDilsukh Nagar','Hyderabad','lava','lava@123');

/*Table structure for table `manufact` */

DROP TABLE IF EXISTS `manufact`;

CREATE TABLE `manufact` (
  `mno` int(11) NOT NULL auto_increment,
  `manu_name` varchar(30) default NULL,
  `Address` varchar(50) default NULL,
  `city` varchar(20) default NULL,
  `phone` varchar(10) default NULL,
  `email` varchar(50) default NULL,
  `username` varchar(20) default NULL,
  `pwd` varchar(20) default NULL,
  PRIMARY KEY  (`mno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `manufact` */

insert  into `manufact`(`mno`,`manu_name`,`Address`,`city`,`phone`,`email`,`username`,`pwd`) values (1,'SriRama Fruit Market','Shop No 10, DSNR','Hyderabad','9988123456','srirama@gmail.com','rama','rama@1234'),(2,'Lord Venki Mobiles','Shop No 11, DSNR','Hyderabad','9988123457','lordvenki@gmail.com','venki','venki@1234');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `pno` int(11) NOT NULL auto_increment,
  `prdname` varchar(20) default NULL,
  `price` float default NULL,
  `stock` int(11) default NULL,
  `ManId` int(11) default NULL,
  PRIMARY KEY  (`pno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`pno`,`prdname`,`price`,`stock`,`ManId`) values (1,'Bananas',100,20,1),(2,'Jack Fruit',100,30,1),(3,'Samsung',10000,10,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
