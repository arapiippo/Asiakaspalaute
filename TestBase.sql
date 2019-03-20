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

-- Dumping structure for table test.asiakastiedot
CREATE TABLE IF NOT EXISTS `asiakastiedot` (
  `AsiakasID` int(20) NOT NULL,
  `HuoneistoID` int(2) NOT NULL,
  `Etunimi` varchar(50) DEFAULT NULL,
  `Sukunimi` varchar(50) DEFAULT NULL,
  `Puh. Nro.` varchar(50) DEFAULT NULL,
  `S.posti` varchar(50) DEFAULT NULL,
  `Pvm` date NOT NULL,
  PRIMARY KEY (`AsiakasID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.asiakastiedot: ~0 rows (approximately)
/*!40000 ALTER TABLE `asiakastiedot` DISABLE KEYS */;
/*!40000 ALTER TABLE `asiakastiedot` ENABLE KEYS */;

-- Dumping structure for table test.palaute
CREATE TABLE IF NOT EXISTS `palaute` (
  `AsiakasID` int(20) NOT NULL,
  `HuoneistoID` int(2) NOT NULL,
  `Palautetyyppi` varchar(20),
  `Suosittelu` varchar(5),
  `Avoin` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`AsiakasID`),
  CONSTRAINT `FK1asiakastiedot` FOREIGN KEY (`AsiakasID`) REFERENCES `asiakastiedot` (`AsiakasID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.palaute: ~0 rows (approximately)
/*!40000 ALTER TABLE `palaute` DISABLE KEYS */;
/*!40000 ALTER TABLE `palaute` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
