-- MySQL dump 10.13  Distrib 5.1.45, for Win32 (ia32)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.1.45-community

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

--
-- Table structure for table `councilor`
--

DROP TABLE IF EXISTS `councilor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `councilor` (
  `councilorid` int(11) NOT NULL AUTO_INCREMENT,
  `councilorname` varchar(25) NOT NULL,
  `counciloraddress` varchar(30) DEFAULT NULL,
  `councilornumber` varchar(10) DEFAULT NULL,
  `counciloremail` varchar(25) NOT NULL,
  `councilorpass` varchar(15) NOT NULL,
  `studentcount` int(11) DEFAULT '0',
  PRIMARY KEY (`councilorid`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `councilor`
--

LOCK TABLES `councilor` WRITE;
/*!40000 ALTER TABLE `councilor` DISABLE KEYS */;
INSERT INTO `councilor` VALUES (1000,'Soumodip','Howrah','5656451215','soumodip@gmail.com','soumodip',2),(1001,'Subham','Durgapur','9002917555','subham@gmail.com','subham',0),(1002,'Vishma Pratap','Kolkata','7777777777','vishma@gmail.com','vishma',0),(1003,'Pranav Kumar','Patna','6666666666','pranav@gmail.com','pranav',0),(1004,'Sanjana Sinha','Kolkata','9999999999','sanjana@gmail.com','sanjana',1),(1005,'Abhishek kumar','Kolkata','9002917555','abhishek@gmail.com','abhishek',0),(1006,'Swarn','kol','123456789','swar@email.com','123456',0),(1007,'Ram','Bhagalpur','123456789','ram@gmail.com','ram',1),(1008,'KRITI SAH','Bhagalpur','1234567989','kriti@gmail.com','kriti',1),(1009,'Soumo','howrah','9830283009','email.id@email','9830283009',0),(1010,'','','','','',0);
/*!40000 ALTER TABLE `councilor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `coursename` varchar(10) NOT NULL,
  `courseduration` varchar(4) DEFAULT NULL,
  `coursestart` varchar(10) DEFAULT NULL,
  `courseend` varchar(10) DEFAULT NULL,
  `courseintake` varchar(4) DEFAULT NULL,
  `coursefee` varchar(5) DEFAULT NULL,
  `seatavailable` int(11) DEFAULT NULL,
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (500,'Java','90','2015-07-08','2015-07-09','200','2000',198),(501,'Php','90','2015-07-15','2015-08-12','300','3000',298),(502,'jee7','90','2015-07-28','2015-08-28','300','5000',299),(503,'.net','90','2015-07-08','2015-08-06','200','2000',150);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrar`
--

DROP TABLE IF EXISTS `registrar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrar` (
  `registrarname` varchar(20) DEFAULT NULL,
  `registrarusername` varchar(20) DEFAULT NULL,
  `registrarpassword` varchar(20) DEFAULT NULL,
  `registrarnumber` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrar`
--

LOCK TABLES `registrar` WRITE;
/*!40000 ALTER TABLE `registrar` DISABLE KEYS */;
INSERT INTO `registrar` VALUES ('Registrar','registrar','registrar','8981335155');
/*!40000 ALTER TABLE `registrar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `studentid` int(11) NOT NULL AUTO_INCREMENT,
  `studentname` varchar(25) NOT NULL,
  `studentgender` varchar(6) NOT NULL,
  `studentdob` varchar(10) DEFAULT NULL,
  `studentaddress` varchar(25) DEFAULT NULL,
  `studentnumber` varchar(10) DEFAULT NULL,
  `studentemail` varchar(20) NOT NULL,
  `studentcourse` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`studentid`)
) ENGINE=InnoDB AUTO_INCREMENT=2005 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (2000,'Ram','male','1994-02-02','kolkata','9999999999','ram@gmail.com','jee7'),(2001,'Mohan','male','2015-07-02','kolkata','9999999999','mohan@gmail.com','Php'),(2002,'shyama','male','2015-07-08','kolkata','9002917555','shyama@gmail.com','Java'),(2003,'Pritam Kumar','male','2015-07-10','bhagalpur','1234567995','pritam@gmail.com','Java'),(2004,'Shilpi','female','2015-07-15','bhagalpur','7894566123','shilpi@gmail.com','Php');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-31 20:18:03
