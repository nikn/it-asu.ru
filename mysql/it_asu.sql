-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 09 2016 г., 00:24
-- Версия сервера: 5.6.22-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `it_asu`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Article`
--

CREATE TABLE IF NOT EXISTS `Article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id статьи',
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статьи',
  `Text` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст статьи',
  `Author` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Автор статьи',
  `type` tinyint(3) unsigned NOT NULL COMMENT 'тип статьи(новость или статья)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статьи' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `Event`
--

CREATE TABLE IF NOT EXISTS `Event` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id мероприятия',
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'название',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'описание мароприятия',
  `date` date NOT NULL COMMENT 'дата проведения',
  `place` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'место проведения',
  `foto` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'фото',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Мероприятия' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `Team`
--

CREATE TABLE IF NOT EXISTS `Team` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id человека в команде',
  `FIO` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ФИО человека',
  `foto` varchar(200) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL COMMENT 'url на фото',
  `job` varchar(500) COLLATE utf8_unicode_ci NOT NULL COMMENT 'чем занимается',
  `KursUniversity` varchar(300) COLLATE utf8_unicode_ci NOT NULL COMMENT 'где учится(курс, факультет, универ)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Команда' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'email',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'имя',
  `password_hash` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `auth_key` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `yes_no` tinyint(1) NOT NULL COMMENT 'согласен/несогласен на рассылку',
  `number_tel` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'номер телефона',
  `id_on_VK` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ссылка на ВК',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи' AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password_hash`, `status`, `auth_key`, `created_at`, `updated_at`, `password`, `yes_no`, `number_tel`, `id_on_VK`) VALUES
(1, 'a@mail.ru', 'qwe', '$2y$13$KsuspHCXaZur.KyaE3sEAeL5UEy6lGQzW5eqAhi6oIxc56gQinsTq', 10, '6mwo5DZcjmnOgkzJDUAzGY6M-XdUxgyE', 1460149563, 1460149563, '123456', 0, '', ''),
(2, 'q@mail.ru', 'qwe1', '$2y$13$v.JNfUjvjtZQDLl4zXxJW.MqwC.RXCn42gpcuRFVQJFKAoJoGNaCi', 10, 'rl7u4rFPi3eRok3iN_gHjO4i0FA6cJJ7', 1460150566, 1460150566, '', 0, '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
