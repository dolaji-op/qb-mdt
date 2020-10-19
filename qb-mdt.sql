-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table qbus.apartments

-- Dumping data for table qbus.lapraces: ~0 rows (approximately)
/*!40000 ALTER TABLE `lapraces` DISABLE KEYS */;
/*!40000 ALTER TABLE `lapraces` ENABLE KEYS */;

-- Dumping structure for table qbus.laws
CREATE TABLE IF NOT EXISTS `laws` (
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(240) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `months` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbus.laws: ~2 rows (approximately)
/*!40000 ALTER TABLE `laws` DISABLE KEYS */;
INSERT INTO `laws` (`name`, `description`, `fine`, `months`, `id`) VALUES
	('Theft', 'Stealing', 1000, 12, 1),
	('TWOC', 'Taking Without Owner\'s Consent - Theft of a motor vehicle.', 800, 6, 2);
/*!40000 ALTER TABLE `laws` ENABLE KEYS */;


-- Dumping structure for table qbus.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `citizenid` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `avatar` varchar(50) DEFAULT NULL,
  `fingerprint` varchar(50) DEFAULT NULL,
  `dnacode` varchar(50) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `lastsearch` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbus.profiles: ~2 rows (approximately)
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`citizenid`, `id`, `fullname`, `avatar`, `fingerprint`, `dnacode`, `note`, `lastsearch`) VALUES
	('HFA71690', 1, 'Liam Stevens', 'https://i.imgur.com/zznEHAX.png', 'test', 'test', 'Black CUNT', '1600616664'),
	('IPF74325', 2, 'Ellie Jenkins', '', 'UNWKN', 'UNKWN', '', '1599387868');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;


-- Dumping data for table qbus.queue: ~0 rows (approximately)
/*!40000 ALTER TABLE `queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue` ENABLE KEYS */;

-- Dumping structure for table qbus.reports
CREATE TABLE IF NOT EXISTS `reports` (
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `profileid` varchar(50) DEFAULT NULL,
  `report` varchar(50) DEFAULT NULL,
  `laws` varchar(50) DEFAULT NULL,
  `created` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbus.reports: ~1 rows (approximately)
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` (`title`, `author`, `profileid`, `report`, `laws`, `created`, `id`) VALUES
	('Stealing Food', 'liam', '1', '<p fr-original-style="" style="margin-top: 0px; ma', '[1]', '1598911589', 1),
	('Grand Theft Auto', 'Liam Stevens', '1', 'Stole a car', '[2]', '1599387933', 2);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;

-- Dumping structure for table qbus.stashitems

-- Dumping structure for table qbus.users
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `rank` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loggedin` int(11) DEFAULT NULL,
  `personid` int(11) DEFAULT NULL,
  `reportid` int(11) DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbus.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`username`, `password`, `role`, `name`, `rank`, `id`, `loggedin`, `personid`, `reportid`, `last_login`) VALUES
	('test', '$2y$10$KBm/Aa/bso3KW7JLLtQk/uabNoiK1tScGBWZLgrISu74/fPvJVC7q', 'admin', 'Liam Johnson', 'CC', 8, NULL, NULL, NULL, '2020-09-20'),
	('Todddyy', '$2y$10$3MHSbcWsNsuJcJRf8NTXIOAnJ3/e18rH8rdX8WKoXsR2A8c2aL4Ri', 'user', 'Todd Morris', 'SPC', 9, NULL, NULL, NULL, '2020-09-20'),
	('cunt', '$2y$10$G6jilnJV4qNGT9uJKx7ylekUp0Q.GTdIUHssEO4Ao/Gaqyqx7nlyO', 'user', 'cunt', 'PCSO', 13, NULL, NULL, NULL, '2020-09-20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table qbus.warrants
CREATE TABLE IF NOT EXISTS `warrants` (
  `citizenid` varchar(50) DEFAULT NULL,
  `description` varchar(240) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table qbus.warrants: ~0 rows (approximately)
/*!40000 ALTER TABLE `warrants` DISABLE KEYS */;
INSERT INTO `warrants` (`citizenid`, `description`, `title`, `author`, `id`, `created`) VALUES
	('IPF74325', 'Stole pennies for a fountain in Legion Square', 'Jew', 'Liam Stevens', 2, NULL);
/*!40000 ALTER TABLE `warrants` ENABLE KEYS */;
