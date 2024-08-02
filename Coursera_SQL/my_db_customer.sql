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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` char(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` int DEFAULT NULL,
  `OPENING_AMT` float NOT NULL,
  `RECEIVE_AMT` float NOT NULL,
  `PAYMENT_AMT` float NOT NULL,
  `OUTSTANDING_AMT` float NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` char(6) NOT NULL,
  PRIMARY KEY (`CUST_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C00001','Micheal','New York','New York','USA',2,3000,5000,2000,6000,'CCCCCCC','A008'),('C00002','Bolt','New York','New York','USA',3,5000,7000,9000,3000,'DDNRDRH','A008'),('C00003','Martin','Torento','Torento','Canada',2,8000,7000,7000,8000,'MJYURFD','A004'),('C00004','Winston','Brisban','Brisban','Australia',1,5000,8000,7000,6000,'AAAAAAA','A005'),('C00005','Sasikant','Mumbai','Mumbai','India',1,7000,11000,7000,11000,'147-25896312','A002'),('C00006','Shilton','Torento','Torento','Canada',1,10000,7000,6000,11000,'DDDDDDD','A004'),('C00007','Ramanathan','Chennai','Chennai','India',1,7000,11000,9000,9000,'GHRDWSD','A010'),('C00008','Karolina','Torento','Torento','Canada',1,7000,7000,9000,5000,'HJKORED','A004'),('C00009','Ramesh','Mumbai','Mumbai','India',3,8000,7000,3000,12000,'Phone No','A002'),('C00010','Charles','Hampshair','Hampshair','UK',3,6000,4000,5000,5000,'MMMMMMM','A009'),('C00011','Sundariya','Chennai','Chennai','India',3,7000,11000,7000,11000,'PPHGRTS','A010'),('C00012','Steven','San Jose','San Jose','USA',1,5000,7000,9000,3000,'KRFYGJK','A012'),('C00013','Holmes','London','London','UK',2,6000,5000,7000,4000,'BBBBBBB','A003'),('C00014','Rangarappa','Bangalore','Bangalore','India',2,8000,11000,7000,12000,'AAAATGF','A001'),('C00015','Stuart','London','London','UK',1,6000,8000,3000,11000,'GFSGERS','A003'),('C00016','Venkatpati','Bangalore','Bangalore','India',2,8000,11000,7000,12000,'JRTVFDD','A007'),('C00017','Srinivas','Bangalore','Bangalore','India',2,8000,4000,3000,9000,'AAAAAAB','A007'),('C00018','Fleming','Brisban','Brisban','Australia',2,7000,7000,9000,5000,'NHBGVFC','A005'),('C00019','Yearannaidu','Chennai','Chennai','India',1,8000,7000,7000,8000,'ZZZZBFV','A010'),('C00020','Albert','New York','New York','USA',3,5000,7000,6000,6000,'BBBBSBB','A008'),('C00021','Jacks','Brisban','Brisban','Australia',1,7000,7000,7000,7000,'WERTGDF','A005'),('C00022','Avinash','Mumbai','Mumbai','India',2,7000,11000,9000,9000,'113-12345678','A002'),('C00023','Karl','London','London','UK',0,4000,6000,7000,3000,'AAAABAA','A006'),('C00024','Cook','London','London','UK',2,4000,9000,7000,6000,'FSDDSDF','A006'),('C00025','Ravindran','Bangalore','Bangalore','India',2,5000,7000,4000,8000,'AVAVAVA','A011');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
