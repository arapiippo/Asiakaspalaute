-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.12-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- Dumping structure for table test.clientinfo
CREATE TABLE IF NOT EXISTS `clientinfo` (
  `ClientID` int(20) NOT NULL,
  `RoomID` int(2) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`ClientID`),
  KEY `RoomID` (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.clientinfo: ~0 rows (approximately)
/*!40000 ALTER TABLE `clientinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientinfo` ENABLE KEYS */;

-- Dumping structure for table test.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `ClientID` int(20) NOT NULL,
  `RoomID` int(2) NOT NULL,
  `FeedbackType` varchar(20) DEFAULT NULL,
  `Recommend` varchar(5) DEFAULT NULL,
  `OpenFeedback` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`ClientID`),
  KEY `RoomID` (`RoomID`),
  CONSTRAINT `FK_palaute_asiakastiedot` FOREIGN KEY (`ClientID`) REFERENCES `clientinfo` (`ClientID`),
  CONSTRAINT `FK_palaute_asiakastiedot_2` FOREIGN KEY (`RoomID`) REFERENCES `clientinfo` (`RoomID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.feedback: ~0 rows (approximately)
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
