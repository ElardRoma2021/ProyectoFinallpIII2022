-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para ores
CREATE DATABASE IF NOT EXISTS `ores` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `ores`;

-- Volcando estructura para tabla ores.faq
CREATE TABLE IF NOT EXISTS `faq` (
  `faqid` int(10) NOT NULL AUTO_INCREMENT,
  `faqtitle` varchar(200) NOT NULL,
  `faqsolution` varchar(300) NOT NULL,
  PRIMARY KEY (`faqid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla ores.faq: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` (`faqid`, `faqtitle`, `faqsolution`) VALUES
	(1, 'How to upload your property details?', 'Go to Post property > Add property details > click on Upload buttton'),
	(2, 'How to change Profile details?', 'Go to Profile > click on Change details button > add your new profile or details > click on Update button'),
	(3, 'How to contact complain', 'Go to contact us and complain with details');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;

-- Volcando estructura para tabla ores.feedback
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `intention` varchar(10) NOT NULL,
  `comment` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_cntr` (`email`),
  CONSTRAINT `email_cntr` FOREIGN KEY (`email`) REFERENCES `signup` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla ores.feedback: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`id`, `name`, `contact`, `email`, `intention`, `comment`) VALUES
	(7, 'Demo name', '9988776644', 'demo@gmail.com', 'Feedback', 'good website ');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;

-- Volcando estructura para tabla ores.property
CREATE TABLE IF NOT EXISTS `property` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `pdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `ptype` varchar(50) NOT NULL,
  `srproperty` varchar(10) NOT NULL,
  `psubtype` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `price` double NOT NULL,
  `contact` varchar(10) NOT NULL,
  `cityname` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `address` varchar(250) NOT NULL,
  `location` text NOT NULL,
  `bedroom` varchar(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `area` varchar(100) NOT NULL,
  `areasq` varchar(50) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`pid`),
  KEY `id` (`id`),
  KEY `name` (`name`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`id`) REFERENCES `signup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla ores.property: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` (`pid`, `pdate`, `id`, `name`, `pname`, `ptype`, `srproperty`, `psubtype`, `details`, `price`, `contact`, `cityname`, `pincode`, `address`, `location`, `bedroom`, `bathroom`, `area`, `areasq`, `filename`, `path`, `status`) VALUES
	(94, '2021-12-15 06:30:28', 57, 'Demo name', 'demo name', 'Apartment', 'Sale', '1RK', '<p>best house for sale</p>\r\n', 89898, '9988776644', 'Mumbai', '400022', 'Sion, Mumbai, Maharashtra', 'no location', '1', '1', '120', 'Square Feet', 'bg-photo-1.jpg', 'C:\\Users\\HP\\OneDrive\\Documents\\NetBeansProjects\\Project\\web\\img\\Properties\\bg-photo-1.jpg', 1);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;

-- Volcando estructura para tabla ores.signup
CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `contact` (`contact`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla ores.signup: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` (`id`, `name`, `contact`, `email`, `password`, `filename`, `path`, `role`) VALUES
	(41, 'admin', '9090', 'admin@gmail.com', '1234', 'Sharingan.jpeg', 'C:\\Users\\HP\\OneDrive\\Documents\\NetBeansProjects\\Project\\web\\img\\User Profile\\Sharingan.jpeg', 'admin'),
	(57, 'Demo name', '9988776644', 'demo@gmail.com', '1234', 'default in.jfif', 'C:\\Users\\HP\\OneDrive\\Documents\\NetBeansProjects\\Project\\web\\img\\User Profile\\default in.jfif', 'user');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
