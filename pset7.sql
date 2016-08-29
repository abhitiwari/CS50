-- MySQL dump 10.14  Distrib 5.5.32-MariaDB, for Linux (i686)
--
-- Host: localhost    Database: pset7
-- ------------------------------------------------------
-- Server version	5.5.32-MariaDB

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
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(10) NOT NULL,
  `transaction` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `symbol` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `share` int(10) NOT NULL,
  `price` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (19,'BUY','2014-07-29 04:00:00.000000','IBM',2,195.4000),(19,'BUY','2014-07-29 04:00:00.000000','GOV',1,23.5965),(19,'BUY','0000-00-00 00:00:00.000000','T',2,36.6100),(19,'BUY','0000-00-00 00:00:00.000000','IBM',4,195.5600),(19,'BUY','0000-00-00 00:00:00.000000','IBM',5,195.5900),(19,'BUY','2014-07-29 04:00:00.000000','GOOG',4,587.5350),(19,'BUY','2014-07-29 04:00:00.000000','T',7,36.6500),(19,'BUY','2014-07-29 04:00:00.000000','SIRI',5,3.4100),(19,'BUY','2014-07-29 04:00:00.000000','IBM',3,195.6200),(19,'BUY','2014-07-29 17:44:00.000000','GOV',2,23.6000),(19,'BUY','2014-07-29 17:57:00.000000','SIRI',2,3.4050),(19,'BUY','2014-07-29 18:01:00.000000','T',2,36.6000),(19,'BUY','2014-07-29 18:02:00.000000','T',2,36.5900),(19,'BUY','2014-07-29 18:45:00.000000','T',2,36.6600),(19,'BUY','2014-07-29 18:46:00.000000','T',2,36.6700),(19,'BUY','2014-07-29 18:55:00.000000','GOV',3,23.5601),(19,'BUY','2014-07-29 18:56:00.000000','GOV',3,23.5600),(19,'BUY','2014-07-29 18:59:00.000000','GOV',3,23.5500),(19,'BUY','2014-07-29 19:07:00.000000','GOV',3,23.5500),(20,'BUY','2014-07-29 19:31:00.000000','APP',5,0.9302),(20,'BUY','2014-07-29 19:32:00.000000','APP',5,0.9305),(20,'BUY','2014-07-29 19:35:00.000000','GOV',23,23.5700),(20,'BUY','2014-07-29 19:42:00.000000','IBM',5,195.1200),(20,'SELL','2014-07-29 19:48:00.000000','GOV',23,23.5600),(21,'BUY','2014-07-29 19:50:00.000000','T',18,36.5900),(21,'SELL','2014-07-29 19:50:00.000000','T',18,36.6000),(21,'BUY','2014-07-29 19:54:00.000000','T',14,36.6100),(21,'SELL','2014-07-29 19:54:00.000000','T',14,36.6100),(21,'BUY','2014-07-29 20:00:00.000000','IBM',4,194.9700),(21,'SELL','2014-07-29 20:00:00.000000','IBM',4,194.9600),(21,'BUY','2014-07-31 12:49:00.000000','IBM',10,194.0000),(21,'SELL','2014-07-31 12:49:00.000000','IBM',10,194.0000),(22,'BUY','2014-07-31 14:07:00.000000','IBM',5,193.7200),(22,'SELL','2014-07-31 14:07:00.000000','IBM',5,193.7200),(22,'BUY','2014-07-31 17:58:00.000000','APP',4,0.9255),(23,'BUY','2014-08-20 14:02:00.000000','FB',5,75.0000),(23,'SELL','2014-08-20 14:03:00.000000','FB',5,75.0000),(23,'BUY','2014-08-20 14:21:00.000000','GOOG',3,584.0900),(23,'BUY','2014-08-20 14:22:00.000000','IBM',2,189.4200),(23,'BUY','2014-08-20 14:24:00.000000','GOV',1,23.8400);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolio`
--

DROP TABLE IF EXISTS `portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portfolio` (
  `id` int(10) NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `share` int(10) NOT NULL,
  PRIMARY KEY (`id`,`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolio`
--

LOCK TABLES `portfolio` WRITE;
/*!40000 ALTER TABLE `portfolio` DISABLE KEYS */;
INSERT INTO `portfolio` VALUES (4,'GOOG',7),(6,'GOV',10),(10,'AAPL',98),(10,'AIG',54),(10,'ATWT',7),(10,'GOOG',16),(10,'GOV',2),(10,'T',36),(12,'AIG',13),(12,'ATWT',4),(12,'GOOG',100),(12,'GOV',8),(12,'IBM',5),(12,'SIRI',9),(12,'T',10),(13,'T',7),(14,'GOOG',279),(14,'GOV',15),(14,'T',14),(15,'GOOG',16),(15,'GOV',15),(15,'IBM',1),(16,'GOV',10),(16,'IBM',8),(17,'GOOG',2),(17,'GOV',3),(17,'IBM',1),(17,'T',3),(18,'GOV',4),(18,'IBM',3),(18,'T',3),(20,'IBM',5),(22,'APP',4),(23,'GOOG',3),(23,'GOV',1),(23,'IBM',2);
/*!40000 ALTER TABLE `portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cash` decimal(65,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'caesar','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0.0000),(2,'hirschhorn','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0.0000),(3,'jharvard','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0.0000),(4,'malan','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0.0000),(5,'milo','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0.0000),(6,'skroob','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0.0000),(7,'zamyla','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0.0000),(8,'abhi','$1$50$RX3wnAMNrGIbgzbRYrxM1/',1000.0000),(9,'a','$1$50$RX3wnAMNrGIbgzbRYrxM1/',1000.0000),(10,'manoj','$1$50$RX3wnAMNrGIbgzbRYrxM1/',1000.0000),(11,'abh','$1$50$RX3wnAMNrGIbgzbRYrxM1/',1000.0000),(12,'aw','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0.0000),(13,'s','$1$50$RX3wnAMNrGIbgzbRYrxM1/',10000.0000),(14,'z','$1$50$RX3wnAMNrGIbgzbRYrxM1/',0.0000),(15,'h','$1$50$RX3wnAMNrGIbgzbRYrxM1/',3.9850),(17,'l','$1$50$RX3wnAMNrGIbgzbRYrxM1/',8449.8815),(18,'w','$1$50$RX3wnAMNrGIbgzbRYrxM1/',9209.0450),(19,'p','$1$50$RX3wnAMNrGIbgzbRYrxM1/',3911.8832),(20,'m','$1$50$RX3wnAMNrGIbgzbRYrxM1/',9014.8665),(21,'jj','$1$50$RX3wnAMNrGIbgzbRYrxM1/',10000.1400),(22,'nihal','$1$pqenA6Hg$1UR5f94duH76nIm5mmoAp1',9996.2980),(23,'harsh','$1$No/LmYRV$FfE04ySw3.5TTa4Eh03Iq.',7845.0500);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-11 14:45:58
