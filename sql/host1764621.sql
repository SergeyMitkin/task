-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.23 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных host1764621
CREATE DATABASE IF NOT EXISTS `host1764621` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `host1764621`;

-- Дамп структуры для таблица host1764621.status
CREATE TABLE IF NOT EXISTS `status` (
  `id` tinyint(4) NOT NULL,
  `status_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы host1764621.status: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` (`id`, `status_name`) VALUES
	(1, 'выполнена'),
	(2, 'невыполнена'),
	(3, 'тестовая');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;

-- Дамп структуры для таблица host1764621.tasks
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `id_user` int(11) DEFAULT NULL,
  `id_status` tinyint(4) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы host1764621.tasks: ~23 rows (приблизительно)
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` (`id`, `description`, `id_user`, `id_status`, `email`) VALUES
	(1, 'тестовая задача 1+', 1, 1, 'admin@gmail.com'),
	(2, 'тестовая задача 2', 2, 3, NULL),
	(3, 'выполненная задача +', 1, 1, NULL),
	(4, 'Выполненная задача', 1, 1, NULL),
	(5, 'тестовая задача 3', 2, 3, NULL),
	(6, 'тестовая задача 4', 2, 3, NULL),
	(7, 'тестовая задача 5', 2, 3, NULL),
	(8, 'тестовая задача 6', 2, 3, NULL),
	(9, 'тестовая задача 7', 2, 1, NULL),
	(10, 'тестовая задача 8', 2, 3, NULL),
	(14, 'Созданная задача 1', 2, 2, NULL),
	(15, 'Созданная задача 2', 1, 2, NULL),
	(27, 'Созданная задача для user', 2, 2, NULL),
	(28, 'Задача, созданная пользователем без авторизации', 1, 2, NULL),
	(29, 'Задача, созданная пользователем без регистрации 2', 1, 2, NULL),
	(30, 'Созданная задача 3', 1, 2, NULL),
	(31, 'Созданная задача 4', 1, 2, NULL),
	(32, 'Созданная задача 5', 1, 2, NULL),
	(33, 'Созданная задача 6', 1, 2, NULL),
	(34, 'Созданная задача 7', 1, 2, NULL),
	(35, 'Созданная задача 8', 1, 2, NULL),
	(36, 'Созданная задача 9', 1, 2, NULL),
	(37, 'Текст задачи', 1, 2, 'email@gmail.com');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;

-- Дамп структуры для таблица host1764621.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы host1764621.users: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `login`, `password`, `name`) VALUES
	(1, 'admin', '123', 'admin'),
	(2, 'user', '123', 'user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
