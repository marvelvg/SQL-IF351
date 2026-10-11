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
-- Table structure for table `designers`
--
CREATE DATABASE attachment2;
USE attachment2;

DROP TABLE IF EXISTS `designers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designers` (
  `DesignerID` int(11) NOT NULL,
  `DesignerName` varchar(100) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DesignerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designers`
--

LOCK TABLES `designers` WRITE;
/*!40000 ALTER TABLE `designers` DISABLE KEYS */;
INSERT INTO `designers` VALUES (201,'Rara Anindita','Indonesia'),(202,'Kenji Watanabe','Japan'),(203,'Marco Bellini','Italy'),(204,'Dimas Aryasatya','Indonesia'),(205,'Lena Hoffmann','Germany');
/*!40000 ALTER TABLE `designers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `GameID` int(11) NOT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `PublishedYear` int(11) DEFAULT NULL,
  PRIMARY KEY (`GameID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (101,'Saudagar Batik Rongawi','Strategy',2019),(102,'Rebutan Soto Blakatak','Party',2021),(103,'Benteng Bisikan Rongawi','Adventure',2018),(104,'Juragan Rempah Jalur Ngawi','Strategy',2022),(105,'Maling Genteng Ngawi','Party',2020),(106,'Kopi Tempo Doeloe','Family',2023),(107,'Pelabuhan Lampion','Family',2021),(108,'Bajak Laut Piksel','Cooperative',2022),(109,'Misteri Stasiun Lempuyangan','Cooperative',2023),(110,'Duel Sakura','Card',2017);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `MemberID` int(11) NOT NULL,
  `MemberName` varchar(100) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  PRIMARY KEY (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Nadia Kusnadi','2025-02-10'),(2,'Rizky Ramadhan','2025-04-18'),(3,'Tiara Handoko','2025-06-25'),(4,'Yoga Prakoso','2025-08-03'),(5,'Melati Sasongko','2025-09-14'),(6,'Fajar Nugraha','2026-01-20');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamedesigners`
--

DROP TABLE IF EXISTS `gamedesigners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamedesigners` (
  `GameID` int(11) NOT NULL,
  `DesignerID` int(11) NOT NULL,
  PRIMARY KEY (`GameID`,`DesignerID`),
  KEY `DesignerID` (`DesignerID`),
  CONSTRAINT `gamedesigners_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `games` (`GameID`),
  CONSTRAINT `gamedesigners_ibfk_2` FOREIGN KEY (`DesignerID`) REFERENCES `designers` (`DesignerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamedesigners`
--

LOCK TABLES `gamedesigners` WRITE;
/*!40000 ALTER TABLE `gamedesigners` DISABLE KEYS */;
INSERT INTO `gamedesigners` VALUES (101,201),(102,202),(103,203),(104,201),(104,202),(105,204),(106,201),(106,205),(107,203),(108,204),(109,205),(110,202);
/*!40000 ALTER TABLE `gamedesigners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentals`
--

DROP TABLE IF EXISTS `rentals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentals` (
  `RentalID` int(11) NOT NULL,
  `MemberID` int(11) DEFAULT NULL,
  `GameID` int(11) DEFAULT NULL,
  `RentalDate` date DEFAULT NULL,
  `ReturnDate` date DEFAULT NULL,
  PRIMARY KEY (`RentalID`),
  KEY `MemberID` (`MemberID`),
  KEY `GameID` (`GameID`),
  CONSTRAINT `rentals_ibfk_1` FOREIGN KEY (`MemberID`) REFERENCES `members` (`MemberID`),
  CONSTRAINT `rentals_ibfk_2` FOREIGN KEY (`GameID`) REFERENCES `games` (`GameID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentals`
--

LOCK TABLES `rentals` WRITE;
/*!40000 ALTER TABLE `rentals` DISABLE KEYS */;
INSERT INTO `rentals` VALUES (301,1,101,'2026-08-03','2026-08-10'),(302,2,102,'2026-08-04','2026-08-11'),(303,3,106,'2026-08-05','2026-08-12'),(304,4,105,'2026-08-06','2026-08-13'),(305,5,103,'2026-08-07','2026-08-14'),(306,1,104,'2026-08-10','2026-08-17'),(307,2,106,'2026-08-12','2026-08-19'),(308,3,101,'2026-08-13','2026-08-20'),(309,4,108,'2026-08-14','2026-08-21'),(310,5,106,'2026-08-17','2026-08-24'),(311,1,102,'2026-08-19',NULL),(312,2,104,'2026-08-20','2026-08-27'),(313,3,105,'2026-08-22','2026-08-29'),(314,4,101,'2026-08-24',NULL),(315,5,107,'2026-08-25',NULL),(316,1,106,'2026-08-27','2026-09-03'),(317,2,108,'2026-08-31',NULL),(318,3,104,'2026-09-01',NULL),(319,4,106,'2026-09-02',NULL),(320,5,109,'2026-09-03','2026-09-10');
/*!40000 ALTER TABLE `rentals` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
