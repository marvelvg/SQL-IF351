-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: RESTORAN
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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `ID_CUSTOMER` varchar(5) NOT NULL,
  `NAMA_DEPAN` varchar(30) DEFAULT NULL,
  `NAMA_BELAKANG` varchar(30) DEFAULT NULL,
  `ALAMAT` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `NOMOR_TELEPON` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_CUSTOMER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('C0001','Michael','Oswin','125 Laugh Land','oswin@yahoo.com','745-387-2874'),('C0002','Anna','Jeane','163 Lolita Land','anna@gmail.com','982-397-4862'),('C0003','Raymond',NULL,'287 Chucky Suburb','raymond@gmail.com','917-376-4672'),('C0004','Theodore','Mulia','287 Idea Annex','mulia@gmail.com','122-187-1111'),('C0005','Niki','Emersan','297 Cult Annex','niki@yahoo.com','198-292-2223'),('C0006','Christine','Liviani','275 Love Annex','liviani@live.com','000-198-2836'),('C0007','Hermawan',NULL,'212 Tall Building','hermawan@yahoo.com','192-168-1001'),('C0008','Agung',NULL,'293 Short Building','agung@yahoo.com','192-168-1993'),('C0009','Samuel','Sandro','206 Oppa Annex','sam@live.com','192-168-2973'),('C0010','Kennard','Alcander','202 Brother Annex','ken@live.com','198-782-3864');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `ID_EMPLOYEE` varchar(5) NOT NULL,
  `NAMA_DEPAN` varchar(30) DEFAULT NULL,
  `NAMA_BELAKANG` varchar(30) DEFAULT NULL,
  `JABATAN` varchar(30) DEFAULT NULL,
  `ALAMAT` varchar(30) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `NOMOR_TELEPON` varchar(15) DEFAULT NULL,
  `GAJI` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_EMPLOYEE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E0001','Anthony',NULL,'Manager','70 Cool Guy','anthony@umn.ac.id','123-456-4565',5000000),('E0002','Akino','Archilles','Chef','21 Kino Kino','akino@student.com','354-124-5786',3500000),('E0003','Kevin','Alexander','Cashier','34 Nishinoya','alex@yahoo.com','098-123-7832',3000000),('E0004','Ivy','Marcia','Chef','06 Wall Street','ivy@yahoo.com','846-732-8427',3500000),('E0005','Martha','Saphia','Customer Service','78 Ruby Fort','martha@umn.ac.id','718-298-2873',3200000),('E0006','Nofiandy',NULL,'Cashier','03 Smooth Hair','nofiandy@gmail.com','516-927-9268',3250000),('E0007','Octavany',NULL,'Cashier','23 Relaxing Cafe','octa@iseng.com','654-876-1928',3150000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `ID_MENU` varchar(5) NOT NULL,
  `NAMA_MENU` varchar(30) DEFAULT NULL,
  `JENIS_MENU` varchar(20) DEFAULT NULL,
  `ID_PAKET` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID_MENU`),
  KEY `ID_PAKET` (`ID_PAKET`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`ID_PAKET`) REFERENCES `paket` (`ID_PAKET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('M0001','Nasi Goreng Cinta','Makanan','P0001'),('M0002','Ayam Bumbu PHP','Makanan','P0002'),('M0003','Soto Daging CPP','Makanan','P0003'),('M0004','Siomay Pak BoBi','Makanan','P0001'),('M0005','Blue Integer','Minuman','P0001'),('M0006','Mocha Float','Dessert','P0003'),('M0007','Choco Banana Split','Dessert','P0002'),('M0008','Es Teh Panas','Minuman','P0002'),('M0009','Nasi Micin','Makanan','P0002'),('M0010','Sapi Chabe','Makanan','P0003');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paket`
--

DROP TABLE IF EXISTS `paket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paket` (
  `ID_PAKET` varchar(5) NOT NULL,
  `HARGA_PAKET` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PAKET`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paket`
--

LOCK TABLES `paket` WRITE;
/*!40000 ALTER TABLE `paket` DISABLE KEYS */;
INSERT INTO `paket` VALUES ('P0001',3000000),('P0002',2500000),('P0003',2000000);
/*!40000 ALTER TABLE `paket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `ID_CUSTOMER` varchar(5) DEFAULT NULL,
  `ID_PAKET` varchar(5) DEFAULT NULL,
  `ID_EMPLOYEE` varchar(5) DEFAULT NULL,
  `Transaction_date` date DEFAULT NULL,
  KEY `ID_CUSTOMER` (`ID_CUSTOMER`),
  KEY `ID_PAKET` (`ID_PAKET`),
  KEY `ID_EMPLOYEE` (`ID_EMPLOYEE`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`ID_CUSTOMER`) REFERENCES `customer` (`ID_CUSTOMER`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`ID_PAKET`) REFERENCES `paket` (`ID_PAKET`),
  CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`ID_EMPLOYEE`) REFERENCES `employee` (`ID_EMPLOYEE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES ('C0001','P0003','E0002','2016-02-25'),('C0002','P0002','E0001','2016-03-12'),('C0003','P0002','E0002','2016-04-10'),('C0004','P0001','E0004','2016-06-28'),('C0005','P0002','E0001','2016-03-30'),('C0006','P0003','E0003','2016-03-10'),('C0007','P0001','E0005','2016-03-01'),('C0008','P0002','E0002','2016-08-30'),('C0009','P0003','E0002','2016-11-02'),('C0010','P0001','E0005','2016-08-18');
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

-- Dump completed on 2026-09-30 12:33:15
