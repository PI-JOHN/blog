-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 01 2020 г., 12:24
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `desc`, `alias`, `img`, `keywords`, `meta_desc`, `updated_at`, `created_at`) VALUES
(1, 'Россиян предупредили о «сложном моменте» при поездках на отдых в Турцию', 'Российских туристов предупредили о «сложном моменте» при поездках на отдых в Турцию во время пандемии коронавируса. Соответствующее заявление сделала исполнительный директор Ассоциации туроператоров России (АТОР) Майя Ломидзе в ходе пресс-конференции, трансляция которой ведется на официальной странице ТАСС в Facebook.\r\n\r\nПо ее словам, у путешественников могут возникнуть трудности в процессе проверки на наличие признаков COVID-19 в турецких аэропортах, которая проводится сразу после высадки из самолета и до прохождения паспортного контроля.', '28 июля сообщалось, что миллионы российских туристов устремились в Турцию после объявления о возобновлении авиасообщения с Россией в августе. Предполагается, что туда в этом году полетят те, кто «не принял никакого решения и не планировал отдыхать на отечественных курортах».', 'russia', '1.jpg', 'key', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Сына известного писателя нашли мертвым в Москве', 'Сына известного русского писателя и литературоведа Юрия Лощица нашли мертвым в Москве. Об этом сообщает «Комсомольская правда» со ссылкой на источник в правоохранительных органах.\r\n\r\nПо данным газеты, в полицию поступило сообщение от врача скорой помощи о том, что в одной из квартир по улице Рудневка находится тело 58-летнего мужчины. Прибывшие на место силовики установили личность умершего — им оказался Максим Юрьевич Лощиц.\r\n\r\nПо предварительному заключению медиков, смерть мужчины наступила в результате острой сердечно-сосудистой недостаточности. Полиция начала проверку.', 'Отец умершего, Юрий Лощиц, родился 21 декабря 1938 года в Одесской области. Является редактором серии художественно-биографических книг «Жизнь замечательных людей» и автором нескольких романов и повестей. Бывал с журналистскими командировками в Афганистане в 1988 году и Югославии во время военных конфликтов 1990-х годов. Лауреат ряда литературных премий.', 'son', '2.jpg', 'son', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Гарик Харламов переключился с Ларисы Гузеевой на ведущего «России 1»', 'Резидент Comedy Club Гарик Харламов высмеял ведущего «России 1» Бориса Корчевникова. Комик, ранее регулярно публиковавший юмористические скетчи про актрису Ларису Гузееву, опубликовал в Instagram видео с нарезкой из фрагментов передачи Корчевникова «Судьба человека».\r\n\r\nСкетч он назвал «гаданием на Корчевникове». В начале ролика Харламов поприветствовал зрителей. «Давай узнаем, какой ты сегодня?» — добавил комик. Затем в ролике было продемонстрировано несколько фрагментов из «Судьбы человека»: в первые секунды программы Корчевников обычно озвучивает цитаты гостей, у которых будет брать интервью. При этом выбранные фразы часто звучат грубо и оскорбительно.', 'В этих нарезках ведущий обычно цитирует гостей передачи. Чаще всего это оскорбления, которые получали они в свой адрес в прошлом, или их собственные слова о личных проблемах. «Ты бездарная и страшная», «прости, но у нас с тобой никогда не будет романа», «перевернешься на бок — умрешь» и «даже моя мама говорила мне: \"Ты такая некрасивая\"», — такие фразы и им подобные произносил Корчевников в видео.', 'Harlamov', '3.jpg', 'garic', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Четвертая новость', 'Как я и говорил вот такая вот новость', 'Вот такая новость', 'Новость', NULL, NULL, NULL, '2020-08-01 04:51:00', '2020-08-01 04:51:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
