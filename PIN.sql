-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 02 2024 г., 18:18
-- Версия сервера: 10.7.5-MariaDB
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `PIN`
--

-- --------------------------------------------------------

--
-- Структура таблицы `CorrectAnswersGala`
--

CREATE TABLE `CorrectAnswersGala` (
  `id` int(11) NOT NULL,
  `answer` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `CorrectAnswersGala`
--

INSERT INTO `CorrectAnswersGala` (`id`, `answer`) VALUES
(1, '2'),
(2, '3'),
(3, '2'),
(4, '2'),
(5, '4'),
(6, '2'),
(7, '2'),
(8, '1'),
(9, '1'),
(10, '3');

-- --------------------------------------------------------

--
-- Структура таблицы `CorrectAnswersPlanets`
--

CREATE TABLE `CorrectAnswersPlanets` (
  `id` int(11) NOT NULL,
  `answer` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `CorrectAnswersPlanets`
--

INSERT INTO `CorrectAnswersPlanets` (`id`, `answer`) VALUES
(1, '3'),
(2, '1'),
(3, '2'),
(4, '4'),
(5, '1'),
(6, '1'),
(7, '3'),
(8, '2'),
(9, '3'),
(10, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `StudentsMarks`
--

CREATE TABLE `StudentsMarks` (
  `id` int(11) NOT NULL,
  `login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark` int(11) NOT NULL,
  `id_test` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `StudentsMarks`
--

INSERT INTO `StudentsMarks` (`id`, `login`, `mark`, `id_test`) VALUES
(1, 'ee', 3, 0),
(2, 'pin', 4, 0),
(3, '12', 2, 1),
(4, 'ddkg', 2, 1),
(5, 'ee', 2, 2),
(6, 'ee', 2, 2),
(7, 'ee', 2, 2),
(8, 'ee', 2, 1),
(9, 'ee', 2, 2),
(10, 'ee', 2, 1),
(11, 'tt', 2, 1),
(12, 'tt', 3, 2),
(13, 'tt', 2, 1),
(14, 'ee', 2, 1),
(15, 'ddkg', 2, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `CorrectAnswersGala`
--
ALTER TABLE `CorrectAnswersGala`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `CorrectAnswersPlanets`
--
ALTER TABLE `CorrectAnswersPlanets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `StudentsMarks`
--
ALTER TABLE `StudentsMarks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `CorrectAnswersGala`
--
ALTER TABLE `CorrectAnswersGala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `CorrectAnswersPlanets`
--
ALTER TABLE `CorrectAnswersPlanets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `StudentsMarks`
--
ALTER TABLE `StudentsMarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
