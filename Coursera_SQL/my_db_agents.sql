-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: my_db
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `AGENT_CODE` char(10) NOT NULL,
  `AGENT_NAME` char(50) DEFAULT NULL,
  `WORKING_AREA` char(35) DEFAULT NULL,
  `COMMISSION` float DEFAULT NULL,
  `PHONE_NO` char(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`AGENT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES ('A001','Subbarao','Bangalore',0.14,'077-12346674',''),('A002','Mukesh','Mumbai',0.11,'029-12358964',''),('A003','Alex','London',0.13,'075-12458969',''),('A004','Ivan','Torento',0.15,'008-22544166',''),('A005','Anderson','Brisban',0.13,'045-21447739',''),('A006','McDen','London',0.15,'078-22255588',''),('A007','Ramasundar','Bangalore',0.15,'077-25814763',''),('A008','Alford','New York',0.12,'044-25874365',''),('A009','Benjamin','Hampshair',0.11,'008-22536178',''),('A010','Santakumar','Chennai',0.14,'007-22388644',''),('A011','Ravi Kumar','Bangalore',0.15,'077-45625874',''),('A012','Lucida','San Jose',0.12,'044-52981425','');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-08 15:47:58
