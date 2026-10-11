-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: attachment1
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `datacustomer`
--

DROP TABLE IF EXISTS `datacustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacustomer` (
  `CustomerID` varchar(40) NOT NULL,
  `CustomerName` varchar(40) DEFAULT NULL,
  `CustomerPhone` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacustomer`
--

LOCK TABLES `datacustomer` WRITE;
/*!40000 ALTER TABLE `datacustomer` DISABLE KEYS */;
INSERT INTO `datacustomer` VALUES ('401','Mas Narji','081310001111'),('402','Bagas Pratama','082120002222'),('403','Pak Kangkung','083830003333');
/*!40000 ALTER TABLE `datacustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `MenuID` varchar(40) NOT NULL,
  `Menu` varchar(40) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  PRIMARY KEY (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('301','Nasi Ayam Cemani Khas Ngawi',22000),('302','Soto Blakatak Blakutuk',25000),('303','Jus Kecubung',15000),('304','Puding Coklat Pak Hambali',8000),('305','Kebab Mas Rusdi',20000),('306','MBG Ambarawa Express',12000),('307','Roti O Stasiun Lempuyangan',6000);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preorders`
--

DROP TABLE IF EXISTS `preorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preorders` (
  `OrderID` int(11) NOT NULL,
  `CustomerName` varchar(100) DEFAULT NULL,
  `CustomerPhone` varchar(20) DEFAULT NULL,
  `Menu1` varchar(100) DEFAULT NULL,
  `Menu2` varchar(100) DEFAULT NULL,
  `Menu3` varchar(100) DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preorders`
--

LOCK TABLES `preorders` WRITE;
/*!40000 ALTER TABLE `preorders` DISABLE KEYS */;
INSERT INTO `preorders` VALUES (101,'Mas Narji','081310001111','Nasi Ayam Cemani Khas Ngawi','RotiO Stasiun Lempuyangan','Puding Coklat Pak Hambali',36000.00),(102,'Bagas Pratama','082120002222','Soto Blakatak Blakutuk',NULL,NULL,25000.00),(103,'Pak Kangkung','083830003333','Kebab Mas Rusdi','Jus Kecubung',NULL,35000.00),(104,'Mas Narji','081310001111','MBG Ambarawa Express','Jus Kecubung','RotiO Stasiun Lempuyangan',33000.00);
/*!40000 ALTER TABLE `preorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `OrderID` varchar(40) NOT NULL,
  `CustomerID` varchar(40) DEFAULT NULL,
  `MenuID` varchar(40) NOT NULL,
  PRIMARY KEY (`OrderID`,`MenuID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `MenuID` (`MenuID`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `datacustomer` (`CustomerID`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`MenuID`) REFERENCES `menu` (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('101','401','301'),('101','401','304'),('101','401','307'),('104','401','303'),('104','401','306'),('104','401','307'),('102','402','302'),('103','403','303'),('103','403','305');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-11  9:36:16
