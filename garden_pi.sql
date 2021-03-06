-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.26 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for garden_pi
CREATE DATABASE IF NOT EXISTS `garden_pi` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `garden_pi`;

-- Dumping structure for table garden_pi.devices
CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT 'sensor type = 1 moisture, 2 tempature, 3 light, 4 sound, 5 relay',
  `gpio_address` int(11) DEFAULT NULL COMMENT 'gpio address on pi ',
  `name` text COMMENT 'user nameable',
  `location` text COMMENT 'user nameable location',
  `create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'device create date ',
  `modification` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'last update',
  KEY `Index 1` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table garden_pi.locations
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `plants` text,
  `moisture_goal` text,
  `tempature_goal` text,
  `light_goal` text,
  `sound_goal` text,
  `create` datetime DEFAULT CURRENT_TIMESTAMP,
  `modification` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `Index 1` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table garden_pi.log
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` int(11) DEFAULT NULL,
  `data` text,
  `create` datetime DEFAULT CURRENT_TIMESTAMP,
  KEY `Index 1` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

-- Dumping structure for table garden_pi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `create` datetime DEFAULT CURRENT_TIMESTAMP,
  `modification` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `Index 1` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
