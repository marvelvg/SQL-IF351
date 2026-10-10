-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: restoran
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
INSERT INTO `customer` VALUES ('C0001','Santa','Monica','232 Database Annex','santa@live.com','083-221-8762'),('C0002','Sil','Eighty','80 Downhill Building','sil@gmail.com','082-123-0938'),('C0003','Chandra','Nalaar','191 Magic Land','chandra@yahoo.com','089-382-8371'),('C0004','Gideon','Zura','202 Indes Annex','gideon@live.com','084-829-3882'),('C0005','Strygwyr',NULL,'147 Bloody Annex','strygwyr@gmail.com','081-826-2372'),('C0006','Mogul','Kahn','182 ex Building','mogul@yahoo.com','085-562-7782'),('C0007','John','Cena','92 Smack Land','john@live.com','086-829-9283'),('C0008','Budi',NULL,'141 Wonder Land','budi@gmail.com','087-927-8263'),('C0009','Immelman',NULL,'220 Plane Building','immelman@yahoo.com','088-283-9372'),('C0010','Datboi',NULL,'31 Frog Annex','datboi@gmail.com','081-028-0373');
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
INSERT INTO `employee` VALUES ('E0001','SAX','Fucelli','Manager','04 Numero Quatro','sax@yahoo.com','084-4444-4444',10000000),('E0002','Smitty','Werbenmajensen','Chef','01 Under Sea','smitty@gmail.com','081-111-1111',5000000),('E0003','Maximillion','Pegasus','Cashier','18 Duelist Kingdom','maximillion@live.com','083-171-1377',2000000),('E0004','Oktavia','Seckendorff','Chef','70 Under World','oktavia@yahoo.com','085-120-8753',3000000),('E0005','Frejya','Wion','Customer Service','05 Walkure Space','frejya@gmail.com','088-237-6718',3500000),('E0006','Won',NULL,'Cashier','23 Harvest Moon','won@live.com','089-671-0283',3750000),('E0007','Barney',NULL,'Cashier','45 Dino Street','barney@yahoo.com','087-332-9716',2500000);
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
INSERT INTO `menu` VALUES ('M0001','NASI KECAP','MAKANAN','P0001'),('M0002','SODA MENTOS','MINUMAN','P0002'),('M0003','ES KRIM PANAS','DESSERT','P0003'),('M0004','AYAM OM','MAKANAN','P0001'),('M0005','TEH PEDAS','MINUMAN','P0001'),('M0006','GIGA PUDDING','DESSERT','P0003'),('M0007','NASI UMN','MAKANAN','P0002'),('M0008','KOPI SETARBAK','MINUMAN','P0002'),('M0009','KUE REBUS','DESSERT','P0002'),('M0010','GUDETAMA','DESSERT','P0003');
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

-- Dump completed on 2026-10-10 15:44:48
