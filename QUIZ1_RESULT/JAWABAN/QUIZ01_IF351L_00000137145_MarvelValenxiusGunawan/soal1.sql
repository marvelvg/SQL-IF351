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
-- Table structure for table `customer_bayar1`
--

DROP TABLE IF EXISTS `customer_bayar1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_bayar1` (
  `ORDERID` int(10) NOT NULL,
  `MENU1` varchar(50) DEFAULT NULL,
  `MENU2` varchar(50) DEFAULT NULL,
  `MENU3` varchar(50) DEFAULT NULL,
  `TOTAL_AMOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ORDERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_bayar1`
--

LOCK TABLES `customer_bayar1` WRITE;
/*!40000 ALTER TABLE `customer_bayar1` DISABLE KEYS */;
INSERT INTO `customer_bayar1` VALUES (101,' Nasi Ayam Cemani Khas Ngawi',' RotiO Stasiun Lempuyangan','Puding Coklat Pak Hambali',36000),(102,' Soto Blakatak Blakutuk ',NULL,NULL,25000),(103,'Kebab Mas Rusdi',' Jus Kecubung',NULL,35000),(104,'MBG Ambarawa Express',' Jus Kecubung','RotiO Stasiun Lempuyangan',33000);
/*!40000 ALTER TABLE `customer_bayar1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datacustomer1`
--

DROP TABLE IF EXISTS `datacustomer1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datacustomer1` (
  `CustomerName` varchar(100) DEFAULT NULL,
  `CustomerPhone` varchar(14) DEFAULT NULL,
  KEY `CustomerName` (`CustomerName`),
  CONSTRAINT `datacustomer1_ibfk_1` FOREIGN KEY (`CustomerName`) REFERENCES `queue1` (`CUSTOMERNAME`),
  CONSTRAINT `datacustomer1_ibfk_2` FOREIGN KEY (`CustomerName`) REFERENCES `queue1` (`CUSTOMERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datacustomer1`
--

LOCK TABLES `datacustomer1` WRITE;
/*!40000 ALTER TABLE `datacustomer1` DISABLE KEYS */;
INSERT INTO `datacustomer1` VALUES (NULL,'081310001111'),(NULL,'082120002222'),(NULL,'083830003333'),(NULL,'081310001111');
/*!40000 ALTER TABLE `datacustomer1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `harga_resmi`
--

DROP TABLE IF EXISTS `harga_resmi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `harga_resmi` (
  `ORDERID` varchar(10) DEFAULT NULL,
  `NAMA_PELANGGAN` varchar(50) DEFAULT NULL,
  `HARGA` int(11) DEFAULT NULL,
  KEY `NAMA_PELANGGAN` (`NAMA_PELANGGAN`),
  CONSTRAINT `harga_resmi_ibfk_1` FOREIGN KEY (`NAMA_PELANGGAN`) REFERENCES `queue1` (`CUSTOMERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `harga_resmi`
--

LOCK TABLES `harga_resmi` WRITE;
/*!40000 ALTER TABLE `harga_resmi` DISABLE KEYS */;
/*!40000 ALTER TABLE `harga_resmi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue1`
--

DROP TABLE IF EXISTS `queue1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue1` (
  `ORDERID` int(11) DEFAULT NULL,
  `CUSTOMERNAME` varchar(100) NOT NULL,
  PRIMARY KEY (`CUSTOMERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue1`
--

LOCK TABLES `queue1` WRITE;
/*!40000 ALTER TABLE `queue1` DISABLE KEYS */;
INSERT INTO `queue1` VALUES (102,'BAGAS PRATAMA'),(101,'MAS NARJI'),(104,'MAS_NARJI'),(103,'PAK KANGKUNG');
/*!40000 ALTER TABLE `queue1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-07 12:24:12
