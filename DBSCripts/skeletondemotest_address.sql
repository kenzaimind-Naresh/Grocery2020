CREATE DATABASE  IF NOT EXISTS `skeletondemotest` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `skeletondemotest`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: skeletondemotest
-- ------------------------------------------------------
-- Server version	5.5.60-log

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  `address_id` int(11) NOT NULL,
  `area` varchar(25) NOT NULL,
  `city` varchar(50) NOT NULL,
  `created_date` varchar(255) NOT NULL,
  `deliverhere` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `house_number` varchar(10) NOT NULL,
  `landmark` varchar(25) NOT NULL,
  `mobile_number` varchar(50) NOT NULL,
  `modified_date` varchar(255) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `state` varchar(50) NOT NULL,
  `user_name_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1021,1,1021,'sindhi colony','Hyderabad','Thu Jan 02 14:13:21 IST 2020','deliverhere','User1','12/8','Dominos pizza','9162645162','Thu Jan 02 14:13:21 IST 2020','500012','Telangana','1002'),(1026,1,1026,'test','Hyderabad','Thu Jan 02 17:41:37 IST 2020','deliverhere','Test','15/9','test','6859685748','Thu Jan 02 17:41:37 IST 2020','521133','Telangana','1022'),(1027,1,1027,'ameerpet','Hyderabad','Thu Jan 02 17:43:50 IST 2020','deliverhere','User1','15/9','rs brothers','7894561231','Thu Jan 02 17:43:50 IST 2020','500012','Telangana','1022'),(1030,1,1030,'Autonagar','Vijayawada','Thu Jan 02 18:06:44 IST 2020','deliverhere','Manjari','12/8','test','9493050493','Thu Jan 02 18:06:44 IST 2020','512939','Andhra Pradesh','1002'),(1032,1,1032,'Gandhi nagar','Hyderabad','Fri Jan 03 10:59:34 IST 2020','deliverhere','Sam','21/2','Liberty','9573356332','Fri Jan 03 10:59:34 IST 2020','521133','Telangana','1012');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-04 17:08:25
