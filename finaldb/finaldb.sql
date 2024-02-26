/*
SQLyog Ultimate v9.20 
MySQL - 5.0.22-community-nt : Database - events
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`events` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `events`;

/*Table structure for table `adlog` */

DROP TABLE IF EXISTS `adlog`;

CREATE TABLE `adlog` (
  `adname` varchar(100) default NULL,
  `adpass` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adlog` */

insert  into `adlog`(`adname`,`adpass`) values ('admin','admin');

/*Table structure for table `certificate` */

DROP TABLE IF EXISTS `certificate`;

CREATE TABLE `certificate` (
  `sno` int(10) NOT NULL auto_increment,
  `deptnm` varchar(100) default NULL,
  `filename` varchar(500) default NULL,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `certificate` */

insert  into `certificate`(`sno`,`deptnm`,`filename`) values (1,'ECE','cer22.docx');

/*Table structure for table `certupd` */

DROP TABLE IF EXISTS `certupd`;

CREATE TABLE `certupd` (
  `sno` int(10) NOT NULL auto_increment,
  `deptnm` varchar(100) default NULL,
  `filename` varchar(100) default NULL,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `certupd` */

/*Table structure for table `evntco` */

DROP TABLE IF EXISTS `evntco`;

CREATE TABLE `evntco` (
  `evname` varchar(100) default NULL,
  `evpass` varchar(100) default NULL,
  `evphno` decimal(10,0) default NULL,
  `evmail` varchar(100) default NULL,
  `evaddr` varchar(100) default NULL,
  `evdept` varchar(100) default NULL,
  `evnm` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `evntco` */

insert  into `evntco`(`evname`,`evpass`,`evphno`,`evmail`,`evaddr`,`evdept`,`evnm`) values ('anbu','asdf','9876543212','axcvg2@gmail.com','chennai','ECE','Symposium');

/*Table structure for table `hodreg` */

DROP TABLE IF EXISTS `hodreg`;

CREATE TABLE `hodreg` (
  `hdname` varchar(100) default NULL,
  `hdpass` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hodreg` */

insert  into `hodreg`(`hdname`,`hdpass`) values ('hod1','asdf');

/*Table structure for table `intrapar` */

DROP TABLE IF EXISTS `intrapar`;

CREATE TABLE `intrapar` (
  `sno` int(11) NOT NULL auto_increment,
  `stdnm` varchar(100) NOT NULL,
  `stdreg` varchar(100) default NULL,
  `stddept` varchar(100) default NULL,
  `stdem` varchar(100) default NULL,
  `stdyr` varchar(100) default NULL,
  `stdclg` varchar(100) default NULL,
  `inraer` varchar(100) default NULL,
  `stdso` varchar(100) default NULL,
  `stdevnt` varchar(100) default NULL,
  `status` varchar(100) default 'absent',
  PRIMARY KEY  (`sno`,`stdnm`),
  UNIQUE KEY `sno` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `intrapar` */

insert  into `intrapar`(`sno`,`stdnm`,`stdreg`,`stddept`,`stdem`,`stdyr`,`stdclg`,`inraer`,`stdso`,`stdevnt`,`status`) values (1,'anbuu','std001','ECE','chennai.java@pantechmail.com','3','Akt','intra','Symposium','PPT','Present'),(2,'priya','std002','CSE','chennai.java@pantechmail.com','4','XYZ','intra','Symposium','PPT','absent'),(3,'james','std003','EEE','chennai.java@pantechmail.com','2','ABC','intra','Symposium','PPT','Present'),(4,'rajesh','clg001','CSE','Chennai.java@pantechmail.com','4','XYZ','inter','Conference','IEEE Collogium on 3D image','Present'),(5,'dinesh','clg002','ECE','Chennai.java@pantechmail.com','2','ABC','inter','Workshop','IOT','Present'),(6,'anbuu','std001','ECE','chennai.java@pantechmail.com','3','Akt','intra','Symposium','Mock Interview','Present'),(7,'deepak','213','mech','deepaK11@gmail.com','4','gtr','inter','Conference','IEEE Collogium on 3D image','absent'),(8,'user12','std6001','CSE','ranjanisri598@gmail.com','4','ASDF','inter','Workshop','IOT','absent'),(9,'james','std003','EEE','chennai.java@pantechmail.com','2','ABC','intra','Conference','5G for ubiquitous computing','absent'),(10,'rajesh','c3RkNjAwMQ==','CSE','YXJhc2kuYjIyQGdtYWlsLmNvbQ==','4','XYZ','inter','Conference','5G for ubiquitous computing','absent');

/*Table structure for table `intrastd` */

DROP TABLE IF EXISTS `intrastd`;

CREATE TABLE `intrastd` (
  `sno` int(10) NOT NULL auto_increment,
  `stdnm` varchar(100) NOT NULL,
  `stdrg` varchar(100) default NULL,
  `stddept` varchar(100) default NULL,
  `stdem` varchar(100) default NULL,
  `stdyr` varchar(100) default NULL,
  `stdclg` varchar(100) default NULL,
  PRIMARY KEY  (`sno`,`stdnm`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `intrastd` */

insert  into `intrastd`(`sno`,`stdnm`,`stdrg`,`stddept`,`stdem`,`stdyr`,`stdclg`) values (1,'anbuu','std001','ECE','chennai.java@pantechmail.com','3','Akt'),(2,'priya','std002','CSE','chennai.java@pantechmail.com','4','XYZ'),(3,'james','std003','EEE','chennai.java@pantechmail.com','2','ABC'),(4,'prabu','std004','IT','chennai.java@pantechmail.com','4','ABC');

/*Table structure for table `prinlog` */

DROP TABLE IF EXISTS `prinlog`;

CREATE TABLE `prinlog` (
  `depname` varchar(100) default NULL,
  `deppass` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `prinlog` */

insert  into `prinlog`(`depname`,`deppass`) values ('principal','1234');

/*Table structure for table `windecl` */

DROP TABLE IF EXISTS `windecl`;

CREATE TABLE `windecl` (
  `sno` int(10) NOT NULL auto_increment,
  `stdnm` varchar(100) default NULL,
  `stdem` varchar(100) default NULL,
  `winrun` varchar(100) default NULL,
  `evnt` varchar(100) default NULL,
  `typen` varchar(100) default NULL,
  `hstatus` varchar(100) default 'pending',
  `pstatus` varchar(100) default 'pending',
  `filename` varchar(500) default NULL,
  `time1` varchar(100) default NULL,
  `otp1` varchar(100) default NULL,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `windecl` */

insert  into `windecl`(`sno`,`stdnm`,`stdem`,`winrun`,`evnt`,`typen`,`hstatus`,`pstatus`,`filename`,`time1`,`otp1`) values (1,'std001','chennai.java@pantechmail.com','Winner','Symposium','PPT','Approved','Approved','eventdb.sql','23:23','forvuh'),(2,'std002',NULL,'Runner','Symposium','PPT','Approved','Approved','cer22.docx',NULL,NULL),(3,'std003','','Winner','Symposium','PPT','Approved','Approved','evedb.sql',NULL,NULL),(4,'std001','chennai.java@pantechmail.com','Runner','Symposium','PPT','Approved','Approved','eventdb.sql','23:23','forvuh'),(5,'std001','chennai.java@pantechmail.com','Winner','Symposium','Mock Interview','Approved','Approved','eventdb.sql','23:23','forvuh'),(6,'',NULL,'Runner','Symposium','Mock Interview','pending','pending',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
