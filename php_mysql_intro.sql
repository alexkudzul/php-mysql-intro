-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para php_mysql_intro
CREATE DATABASE IF NOT EXISTS `php_mysql_intro` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `php_mysql_intro`;

-- Volcando estructura para tabla php_mysql_intro.notas
CREATE TABLE IF NOT EXISTS `notas` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` mediumtext,
  `color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla php_mysql_intro.notas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `color`) VALUES
	(1, 'Nota 1', 'Ejercicios de php', 'red'),
	(2, 'Nota 2', 'Ejercicios de sql', 'blue'),
	(3, 'Nota 3', 'Notas desde php', 'green'),
	(4, 'Nota 3', 'Notas desde php', 'green'),
	(5, 'Nota 3', 'Notas desde php', 'green');
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
