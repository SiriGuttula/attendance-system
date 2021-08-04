/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - ams
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`ams` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ams`;

/*Table structure for table `att` */

DROP TABLE IF EXISTS `att`;

CREATE TABLE `att` (
  `day` varchar(3) default NULL,
  `month` varchar(3) default NULL,
  `y` varchar(4) default NULL,
  `rollno` varchar(50) default NULL,
  `branch` varchar(50) default NULL,
  `year` varchar(50) default NULL,
  `subject` varchar(50) default NULL,
  `faculty` varchar(50) default NULL,
  `time` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `att` */

insert  into `att`(`day`,`month`,`y`,`rollno`,`branch`,`year`,`subject`,`faculty`,`time`) values ('1','10','2014','081201','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','10','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','10','2014','081203','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','10','2014','081204','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('2','10','2014','081201','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('2','10','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('2','10','2014','081203','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('2','10','2014','081204','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('3','10','2014','081201','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('3','10','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('3','10','2014','081203','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('3','10','2014','081204','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('4','10','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','10','2014','081201','CSE','IIYEAR-IISEM','C','Rajesh',NULL),('1','10','2014','081202','CSE','IIYEAR-IISEM','C','Rajesh',NULL),('1','10','2014','081203','CSE','IIYEAR-IISEM','C','Rajesh',NULL),('1','10','2014','081204','CSE','IIYEAR-IISEM','C','Rajesh',NULL),('1','1','2014','081201','CSE','IIYEAR-IISEM','C','Rajesh',NULL),('1','1','2014','081202','CSE','IIYEAR-IISEM','C','Rajesh',NULL),('1','1','2014','081203','CSE','IIYEAR-IISEM','C','Rajesh',NULL),('1','1','2014','081204','CSE','IIYEAR-IISEM','C','Rajesh',NULL),('1','1','2014','081201','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081203','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081204','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081201','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081203','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081204','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081201','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081203','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081201','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081203','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081204','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081204','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081203','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081201','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081202','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('1','1','2014','081203','CSE','IIYEAR-IISEM','Java','Keerthi',NULL),('15','10','2014','081201','CSE','IIYEAR-IISEM','C','Rajesh','12:00am'),('15','10','2014','081202','CSE','IIYEAR-IISEM','C','Rajesh','12:00am'),('15','10','2014','081203','CSE','IIYEAR-IISEM','C','Rajesh','12:00am'),('15','10','2014','081204','CSE','IIYEAR-IISEM','C','Rajesh','12:00am');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `name` varchar(50) default NULL,
  `pass` varchar(50) default NULL,
  `role` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`name`,`pass`,`role`) values ('admin','admin','admin'),('Keerthi','Keerthi','staff'),('Rajesh','Rajesh','staff'),('Anand','081201','student'),('Supraja','081202','student'),('Raju','081203','student'),('sandeep','081204','student'),('Anand','Anand','staff'),('Brahmam','Brahmam','parent'),('usha','080549','student');

/*Table structure for table `parent` */

DROP TABLE IF EXISTS `parent`;

CREATE TABLE `parent` (
  `rollno` varchar(256) default NULL,
  `name` varchar(256) default NULL,
  `pass` varchar(256) default NULL,
  `email` varchar(256) default NULL,
  `mobile` varchar(256) default NULL,
  `add` varchar(256) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `parent` */

insert  into `parent`(`rollno`,`name`,`pass`,`email`,`mobile`,`add`) values ('081201','Brahmam','Brahmam','Brahmam@gmail.com','9642185016','kodad');

/*Table structure for table `periods` */

DROP TABLE IF EXISTS `periods`;

CREATE TABLE `periods` (
  `month` varchar(5) default NULL,
  `year` varchar(5) default NULL,
  `branch` varchar(20) default NULL,
  `yearsem` varchar(50) default NULL,
  `periods` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `periods` */

insert  into `periods`(`month`,`year`,`branch`,`yearsem`,`periods`) values ('10','2014','CSE','IIYEAR-IISEM','50');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `name` varchar(50) default NULL,
  `pass` varchar(50) default NULL,
  `desi` varchar(50) default NULL,
  `subject` varchar(50) default NULL,
  `age` varchar(5) default NULL,
  `year` varchar(20) default NULL,
  `branch` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`name`,`pass`,`desi`,`subject`,`age`,`year`,`branch`) values ('Keerthi','Keerthi','Professor','Java','43','IIYEAR-IISEM','CSE'),('Rajesh','Rajesh','Professor','C','56','IIYEAR-IISEM','CSE'),('Anand','Anand','Professor','Java','24','IYEAR','CSE');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `rollno` varchar(50) default NULL,
  `sname` varchar(50) default NULL,
  `dob` varchar(50) default NULL,
  `pname` varchar(50) default NULL,
  `age` varchar(50) default NULL,
  `year` varchar(50) default NULL,
  `branch` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`rollno`,`sname`,`dob`,`pname`,`age`,`year`,`branch`) values ('081201','Anand','1990-01-06','Brahmam','24','IIYEAR-IISEM','CSE'),('081202','Supraja','1993-01-06','Brahmam','54','IIYEAR-IISEM','CSE'),('081203','Raju','1993-01-06','Brahmam','22','IIYEAR-IISEM','CSE'),('081204','sandeep','1993-01-06','Brahmam','22','IIYEAR-IISEM','CSE'),('080549','usha','1991-03-06','ganesh','23','IYEAR','CSE');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
