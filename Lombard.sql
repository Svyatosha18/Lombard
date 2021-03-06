-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.1.32-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5278
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных lombard
CREATE DATABASE IF NOT EXISTS `lombard` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `lombard`;

-- Дамп структуры для таблица lombard.base_sheet
CREATE TABLE IF NOT EXISTS `base_sheet` (
  `ID` int(3) NOT NULL AUTO_INCREMENT,
  `Name` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `Product` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `Value` int(11) NOT NULL,
  `Collateral amount` int(11) NOT NULL,
  `Date of delivery` date NOT NULL,
  `Shelf life` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Дамп данных таблицы lombard.base_sheet: ~9 rows (приблизительно)
/*!40000 ALTER TABLE `base_sheet` DISABLE KEYS */;
INSERT INTO `base_sheet` (`ID`, `Name`, `Product`, `Value`, `Collateral amount`, `Date of delivery`, `Shelf life`) VALUES
	(1, 'Янаева Диана Карповна', 'Кольцо', 5000, 500, '2011-11-11', '2012-11-11'),
	(2, 'Абрамович Кир Макарович', 'Велосипед', 15000, 4000, '2013-07-21', '2015-05-21'),
	(3, 'Иванов Иван Иванович', 'Золотые наручные часы', 10000, 2000, '2015-05-27', '2016-07-14'),
	(4, 'Витюгова Мария Алексеевна', 'Хрусталь', 13000, 1500, '2015-06-21', '2017-05-21'),
	(5, 'Мурзакова Варвара Игоревна', 'Цепочка', 7500, 1000, '2016-11-21', '2018-05-21'),
	(6, 'Шелагин Константин Владиславович', 'Компьютер', 50000, 15000, '2017-07-11', '2018-05-21'),
	(7, 'Эпингер Агап Тимурович', 'Телефон', 8000, 800, '2018-01-21', '2018-03-10'),
	(8, 'Шкляева Анастасия Александровна', 'Смартфон', 5000, 1000, '2018-01-23', '2018-10-21'),
	(9, 'Казанцев Владислав Андреевич', 'Роллики', 1500, 300, '2018-02-18', '2018-11-15'),
	(10, 'Ананян Артём Араратович', 'Велосипед', 8000, 2000, '2018-03-21', '2018-05-21');
/*!40000 ALTER TABLE `base_sheet` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
