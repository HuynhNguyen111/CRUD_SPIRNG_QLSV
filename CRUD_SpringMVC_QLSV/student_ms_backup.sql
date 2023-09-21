-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.28-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table student_ms.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` varchar(50) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `active` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table student_ms.accounts: ~2 rows (approximately)
INSERT INTO `accounts` (`id`, `pw`, `active`) VALUES
	('huynh', '{bcrypt}$2a$12$dwdX4Qv1RPTvxGRX1qhGjuAuQasiplL8qsAeEOdAhqugWBRlAImRu', 1),
	('huynh1', '{bcrypt}$12$3S2ct.nbeN9PV94ksShF.OczFTqC.ggO1DADA4U/TAGMlFMwqPGDK', 1),
	('huynh2', '{bcrypt}$2a$12$HBlxGpLYpOieq6YbnlxM4uuuiADF98nCjMNMFWinFufhkDw0DT84y', 1);

-- Dumping structure for table student_ms.role
CREATE TABLE IF NOT EXISTS `role` (
  `id` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  UNIQUE KEY `id` (`id`,`role`),
  CONSTRAINT `fk_id` FOREIGN KEY (`id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table student_ms.role: ~3 rows (approximately)
INSERT INTO `role` (`id`, `role`) VALUES
	('huynh', 'ROLE_TEACHER'),
	('huynh1', 'ROLE_MANAGER'),
	('huynh2', 'ROLE_ADMIN');

-- Dumping structure for table student_ms.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table student_ms.students: ~7 rows (approximately)
INSERT INTO `students` (`id`, `email`, `first_name`, `last_name`) VALUES
	(1, 'email1@example.com', 'Thế Phương Huynh', 'Nguyễn'),
	(2, 'email2@example.com', 'Tuy Hòa', 'Trần'),
	(3, 'email3@example.com', 'Đức Lâm', 'Bùi'),
	(4, 'email4@example.com', 'Huỳnh Minh Huy', 'Nguyễn'),
	(5, 'email5@example.com', 'Hoàng Ân', 'Nguyễn'),
	(6, 'email6@example.com', 'Đỗ Trung Nam', 'Nguyễn'),
	(7, 'huynhnguyen2032001@gmail.com', 'Huynh', 'Nguyen');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
