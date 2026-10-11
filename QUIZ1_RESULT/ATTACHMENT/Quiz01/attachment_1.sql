/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `preorders`
--
CREATE DATABASE attachment1;
USE attachment1;

DROP TABLE IF EXISTS `preorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
