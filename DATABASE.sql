-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 28 2017 г., 17:35
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mtaserver`
--

-- --------------------------------------------------------

--
-- Структура таблицы `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` mediumtext,
  `password` varchar(32) NOT NULL,
  `salt` varchar(30) NOT NULL DEFAULT '1234567890',
  `email` varchar(100) NOT NULL,
  `registerdate` mediumtext,
  `lastlogin` datetime DEFAULT NULL,
  `ip` mediumtext,
  `admin` float NOT NULL DEFAULT '0',
  `supporter` float NOT NULL DEFAULT '0',
  `vct` float NOT NULL DEFAULT '0',
  `mapper` float NOT NULL DEFAULT '0',
  `scripter` float NOT NULL DEFAULT '0',
  `warn_style` int(1) NOT NULL DEFAULT '1',
  `hiddenadmin` tinyint(3) UNSIGNED DEFAULT '0',
  `adminjail` tinyint(3) UNSIGNED DEFAULT '0',
  `adminjail_time` int(11) DEFAULT NULL,
  `adminjail_by` mediumtext,
  `adminjail_reason` mediumtext,
  `muted` tinyint(3) UNSIGNED DEFAULT '0',
  `globalooc` tinyint(3) UNSIGNED DEFAULT '1',
  `friendsmessage` varchar(255) NOT NULL DEFAULT 'Hi!',
  `adminjail_permanent` tinyint(3) UNSIGNED DEFAULT '0',
  `adminreports` int(11) DEFAULT '0',
  `warns` tinyint(3) UNSIGNED DEFAULT '0',
  `chatbubbles` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `adminnote` mediumtext,
  `appstate` tinyint(1) DEFAULT '3',
  `appdatetime` datetime DEFAULT NULL,
  `appreason` longtext,
  `help` int(1) NOT NULL DEFAULT '1',
  `adblocked` int(1) NOT NULL DEFAULT '0',
  `newsblocked` int(1) DEFAULT '0',
  `mtaserial` mediumtext,
  `d_addiction` mediumtext,
  `loginhash` varchar(64) DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT '0',
  `transfers` int(11) DEFAULT '0',
  `monitored` varchar(255) NOT NULL DEFAULT '',
  `autopark` int(1) NOT NULL DEFAULT '1',
  `forceUpdate` smallint(1) NOT NULL DEFAULT '0',
  `anotes` mediumtext,
  `oldAdminRank` int(11) DEFAULT '0',
  `suspensionTime` bigint(20) DEFAULT NULL,
  `car_license` int(1) NOT NULL DEFAULT '0',
  `adminreports_saved` int(3) DEFAULT '0',
  `cpa_earned` double DEFAULT '0',
  `electionsvoted` int(11) NOT NULL DEFAULT '0',
  `referrer` int(11) DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '1',
  `serial_whitelist_cap` int(2) NOT NULL DEFAULT '2',
  `tc_backend` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `salt`, `email`, `registerdate`, `lastlogin`, `ip`, `admin`, `supporter`, `vct`, `mapper`, `scripter`, `warn_style`, `hiddenadmin`, `adminjail`, `adminjail_time`, `adminjail_by`, `adminjail_reason`, `muted`, `globalooc`, `friendsmessage`, `adminjail_permanent`, `adminreports`, `warns`, `chatbubbles`, `adminnote`, `appstate`, `appdatetime`, `appreason`, `help`, `adblocked`, `newsblocked`, `mtaserial`, `d_addiction`, `loginhash`, `credits`, `transfers`, `monitored`, `autopark`, `forceUpdate`, `anotes`, `oldAdminRank`, `suspensionTime`, `car_license`, `adminreports_saved`, `cpa_earned`, `electionsvoted`, `referrer`, `activated`, `serial_whitelist_cap`, `tc_backend`) VALUES
(1, 'MishaKonsta', '30ab1ca45901f261e2a56205f9dbc36a', '8513764843', 'huy3@ya.ru', '2016-10-20 00:59:58', '2016-11-05 23:47:54', '127.0.0.1', 3, 3, 3, 3, 3, 1, 0, 0, 0, 'Misha Konsta', '1\\', 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '2614ED3D6ACF96B4D662E8ED2977BE53', NULL, NULL, 983, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(2, 'Travis', '65765b629de32366ce41bc5de238bc83', '0237113687', 'huy5@ya.ru', '2016-10-20 12:33:59', '2016-10-22 16:07:29', '31.207.221.195', 4, 2, 2, 2, 3, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, 'E3BA1E15AB583F6B4FB4EF007083CA54', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(3, 'AllanBro', '7de27ecf94e838c0383961bdd6e63d15', '8544027193', 'huy76@ya.ru', '2016-10-20 21:00:27', '2016-10-24 21:41:08', '109.195.84.165', 4, 2, 2, 2, 3, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '2C1BF4776A391620FEF9305FCD98D094', NULL, NULL, 100, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 1, 2, 0),
(4, 'MishaKonsta2', '7f9be3e4fa58f3314112205620ba219c', '7819629083', 'huy@ya.ru', '2016-10-21 09:44:34', NULL, '46.32.69.95', 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '2614ED3D6ACF96B4D662E8ED2977BE53', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 2, 0),
(5, 'BlackTawer', '217f7ce088b4235eec0a41a1356a0f06', '8346092265', 'huy@ya.ru', '2016-10-22 13:19:55', '2016-10-22 14:08:57', '37.145.162.176', 4, 2, 2, 2, 3, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '04736387A07232A7588DE6E2198FA4F4', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 2, 0),
(6, 'Govnar', 'da3a3b3ea3c8c70a9023c5e530e4ff0f', '3330152191', 'huy@ya.ru', '2016-10-22 14:17:37', '2016-10-22 14:20:16', '46.32.69.95', 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '2614ED3D6ACF96B4D662E8ED2977BE53', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 2, 0),
(8, 'Mishapon', '30ab1ca45901f261e2a56205f9dbc36a', '8513764843', 'fff@rr.t', '2016-11-04 21:57:54', NULL, '46.32.69.95', 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '2614ED3D6ACF96B4D662E8ED2977BE53', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 2, 0),
(9, 'Konstass', '13080545fcd74427e2fed20ddd8ee105', '1259194071', 'konsta@seegame.ru', '2017-03-28 17:36:59', NULL, '127.0.0.1', 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, 'Hi!', 0, 0, 0, 1, NULL, 3, NULL, NULL, 1, 0, 0, '2614ED3D6ACF96B4D662E8ED2977BE53', NULL, NULL, 0, 0, '', 1, 0, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `account_settings`
--

CREATE TABLE `account_settings` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `account_settings`
--

INSERT INTO `account_settings` (`id`, `name`, `value`) VALUES
(2, 'duty_admin', '0'),
(1, 'hide_hud', '1'),
(1, 'duty_supporter', '1'),
(1, 'duty_admin', '1'),
(1, 'report_panel_mod', '0'),
(3, 'graphic_skyclouds', '0'),
(3, 'enableOverlayDescription', '1'),
(3, 'graphic_shaderveh', '0'),
(3, 'hide_hud', '1'),
(3, 'speedo', '1'),
(3, 'autopark', '0'),
(1, 'talk_anim', '1'),
(1, 'autopark', '1'),
(1, 'antifalling', '1'),
(1, 'graphic_logs', '1'),
(1, 'graphic_chatbub', '1'),
(1, 'graphic_typingicon', '1'),
(1, 'graphic_nametags', '1'),
(1, 'graphic_shaderveh', '1'),
(1, 'graphic_shaderwater', '1'),
(1, 'vehicle_rims', '1'),
(1, 'vehicle_hotkey', '1'),
(1, 'graphic_skyclouds', '1'),
(1, 'streams', '1'),
(1, 'graphic_motionblur', '1'),
(7, 'hide_hud', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `adminhistory`
--

CREATE TABLE `adminhistory` (
  `id` int(10) NOT NULL,
  `user` int(10) NOT NULL,
  `user_char` int(11) NOT NULL DEFAULT '0',
  `admin` int(10) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` tinyint(3) NOT NULL DEFAULT '6',
  `duration` int(10) NOT NULL DEFAULT '0',
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `adminhistory`
--

INSERT INTO `adminhistory` (`id`, `user`, `user_char`, `admin`, `date`, `action`, `duration`, `reason`) VALUES
(1, 1, 63, 1, '2016-10-18 20:32:32', 0, 1, '1'),
(2, 2, 64, 1, '2016-10-18 23:40:29', 0, 0, '???????°?€'),
(3, 1, 63, 1, '2016-10-18 23:40:39', 0, 444, '4'),
(4, 1, 63, 2, '2016-10-18 23:41:18', 0, 0, '1'),
(5, 1, 63, 2, '2016-10-18 23:44:47', 4, 0, '1'),
(6, 1, 63, 2, '2016-10-18 23:44:53', 4, 0, '1'),
(7, 1, 63, 2, '2016-10-18 23:44:58', 4, 0, '1'),
(8, 1, 63, 2, '2016-10-18 23:44:58', 5, 0, '3 Admin Warnings'),
(9, 1, 1, 1, '2016-11-05 15:39:28', 0, 111, '1\\');

-- --------------------------------------------------------

--
-- Структура таблицы `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `advertisement` text NOT NULL,
  `start` int(11) NOT NULL,
  `expiry` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `apb`
--

CREATE TABLE `apb` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `atms`
--

CREATE TABLE `atms` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotation` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `deposit` tinyint(3) UNSIGNED DEFAULT '0',
  `limit` int(10) UNSIGNED DEFAULT '5000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `atms`
--

INSERT INTO `atms` (`id`, `x`, `y`, `z`, `rotation`, `dimension`, `interior`, `deposit`, `limit`) VALUES
(2, '1347.832031', '-1759.237305', '13.215581', '1.134369', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `atm_cards`
--

CREATE TABLE `atm_cards` (
  `card_id` int(11) NOT NULL,
  `card_owner` int(11) DEFAULT NULL,
  `card_number` text,
  `card_pin` varchar(4) NOT NULL DEFAULT '0000',
  `card_locked` tinyint(1) NOT NULL DEFAULT '0',
  `card_type` tinyint(1) NOT NULL DEFAULT '1',
  `limit_type` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `serial` varchar(32) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `reason` text NOT NULL,
  `date` text,
  `threadid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Handle serial bans instead of using MTA built-in / Maxime';

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` text,
  `author` text,
  `book` longtext,
  `readOnly` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This is used for the book system. // Chaos';

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `book`, `readOnly`) VALUES
(1, 'New Book', 'Unknown', 'The begining of something great...', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `businesses`
--

CREATE TABLE `businesses` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `bank_card` varchar(100) NOT NULL DEFAULT '0000 0000 0000 0000',
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `businesses`
--

INSERT INTO `businesses` (`id`, `title`, `bank_card`, `created_by`) VALUES
(3, 'San Andreas Fuel Company', '3733 4203 3260 9334', 5256);

-- --------------------------------------------------------

--
-- Структура таблицы `business_accounts`
--

CREATE TABLE `business_accounts` (
  `id` int(11) NOT NULL,
  `recipient` varchar(250) NOT NULL,
  `recipient_type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `business` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `business_members`
--

CREATE TABLE `business_members` (
  `id` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `wage` int(11) NOT NULL,
  `leader` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '0',
  `address` varchar(200) NOT NULL DEFAULT 'None',
  `date_hired` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `business_rentals`
--

CREATE TABLE `business_rentals` (
  `id` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  `rental_id` int(11) NOT NULL,
  `rental_type` int(11) NOT NULL,
  `rental_price` int(11) NOT NULL,
  `rented_to` int(11) NOT NULL,
  `rented_time` int(11) NOT NULL,
  `rented_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `charactername` text,
  `account` int(11) DEFAULT '0',
  `x` float DEFAULT '1770.02',
  `y` float DEFAULT '-1860.91',
  `z` float DEFAULT '13.5782',
  `rotation` float DEFAULT '359.388',
  `interior_id` int(5) DEFAULT '0',
  `dimension_id` int(5) DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0',
  `skin` int(3) DEFAULT '264',
  `money` bigint(20) DEFAULT '500',
  `gender` int(1) DEFAULT '0',
  `cuffed` int(11) DEFAULT '0',
  `duty` int(3) DEFAULT '0',
  `fightstyle` int(2) DEFAULT '4',
  `pdjail` int(1) DEFAULT '0',
  `pdjail_time` int(11) DEFAULT '0',
  `cked` int(1) DEFAULT '0',
  `lastarea` text,
  `age` int(3) DEFAULT '18',
  `faction_id` int(11) DEFAULT '-1',
  `faction_rank` int(2) DEFAULT '1',
  `faction_perks` text,
  `faction_phone` int(3) UNSIGNED DEFAULT NULL,
  `skincolor` int(1) DEFAULT '0',
  `weight` int(3) DEFAULT '180',
  `height` int(3) DEFAULT '180',
  `description` text,
  `deaths` int(11) DEFAULT '0',
  `faction_leader` int(1) DEFAULT '0',
  `fingerprint` text,
  `casualskin` int(3) DEFAULT '0',
  `bankmoney` bigint(20) DEFAULT '1000',
  `car_license` int(1) DEFAULT '0',
  `bike_license` int(1) DEFAULT '0',
  `pilot_license` int(1) DEFAULT '0',
  `fish_license` int(1) DEFAULT '0',
  `boat_license` int(1) DEFAULT '0',
  `gun_license` int(1) DEFAULT '0',
  `gun2_license` int(1) DEFAULT '0',
  `tag` int(3) DEFAULT '1',
  `hoursplayed` int(11) DEFAULT '0',
  `pdjail_station` int(1) DEFAULT '0',
  `timeinserver` int(2) DEFAULT '0',
  `restrainedobj` int(11) DEFAULT '0',
  `restrainedby` int(11) DEFAULT '0',
  `dutyskin` int(3) DEFAULT '-1',
  `fish` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `blindfold` tinyint(4) NOT NULL DEFAULT '0',
  `lang1` tinyint(2) DEFAULT '1',
  `lang1skill` tinyint(3) DEFAULT '100',
  `lang2` tinyint(2) DEFAULT '0',
  `lang2skill` tinyint(3) DEFAULT '0',
  `lang3` tinyint(2) DEFAULT '0',
  `lang3skill` tinyint(3) DEFAULT '0',
  `currlang` tinyint(1) DEFAULT '1',
  `lastlogin` datetime DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `election_candidate` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `election_canvote` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `election_votedfor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `marriedto` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `photos` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxvehicles` int(4) UNSIGNED NOT NULL DEFAULT '5',
  `ck_info` text,
  `alcohollevel` float NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `recovery` int(1) DEFAULT '0',
  `recoverytime` bigint(20) DEFAULT NULL,
  `walkingstyle` int(3) NOT NULL DEFAULT '0',
  `job` int(3) NOT NULL DEFAULT '0',
  `day` tinyint(2) NOT NULL DEFAULT '1',
  `month` tinyint(2) NOT NULL DEFAULT '1',
  `maxinteriors` int(4) NOT NULL DEFAULT '10',
  `clothingid` int(10) UNSIGNED DEFAULT NULL,
  `death_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `characters`
--

INSERT INTO `characters` (`id`, `charactername`, `account`, `x`, `y`, `z`, `rotation`, `interior_id`, `dimension_id`, `health`, `armor`, `skin`, `money`, `gender`, `cuffed`, `duty`, `fightstyle`, `pdjail`, `pdjail_time`, `cked`, `lastarea`, `age`, `faction_id`, `faction_rank`, `faction_perks`, `faction_phone`, `skincolor`, `weight`, `height`, `description`, `deaths`, `faction_leader`, `fingerprint`, `casualskin`, `bankmoney`, `car_license`, `bike_license`, `pilot_license`, `fish_license`, `boat_license`, `gun_license`, `gun2_license`, `tag`, `hoursplayed`, `pdjail_station`, `timeinserver`, `restrainedobj`, `restrainedby`, `dutyskin`, `fish`, `blindfold`, `lang1`, `lang1skill`, `lang2`, `lang2skill`, `lang3`, `lang3skill`, `currlang`, `lastlogin`, `creationdate`, `election_candidate`, `election_canvote`, `election_votedfor`, `marriedto`, `photos`, `maxvehicles`, `ck_info`, `alcohollevel`, `active`, `recovery`, `recoverytime`, `walkingstyle`, `job`, `day`, `month`, `maxinteriors`, `clothingid`, `death_date`) VALUES
(1, 'Misha_Konsta', 1, 1523.01, -1699.62, 13.5469, 160.422, 0, 0, 58, 0, 268, 463, 0, 0, 0, 4, 0, 0, 0, 'Pershing Square, Los Santos', 16, 1, 1, '[ [ \"24\", \"33\", \"66\", \"27\", \"28\", \"29\" ] ]', NULL, 0, 50, 150, '', 111, 1, '2465CE0197F151D4384718482702414F', 0, 29894, 1, 1, 0, 1, 1, 0, 0, 1, 46, 0, 185, 0, 0, -1, 0, 0, 2, 100, 0, 0, 0, 0, 1, '2017-03-28 18:13:42', '2016-10-19 22:17:06', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 64, 3, 1, 1, 10, NULL, NULL),
(2, 'Travis_Banger', 2, -97.0742, -3404.69, -4.99456, 177.577, 0, 0, 100, 0, 21, 500500, 0, 0, 0, 4, 0, 0, 0, 'Unknown, Unknown', 25, -1, 1, NULL, NULL, 0, 96, 200, '', 2, 0, 'C2890D0791D741469A214F61E6E41387', 0, 1000, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 36, 0, 0, -1, 0, 0, 2, 100, 0, 0, 0, 0, 1, '2016-10-22 16:07:29', '2016-10-20 09:40:33', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 129, 0, 5, 7, 10, NULL, NULL),
(3, 'Allan_Bro', 3, 2419.42, -2135.7, 34.279, 105.407, 0, 0, 100, 0, 38, 1254345, 0, 0, 0, 4, 0, 0, 0, 'Ocean Docks, Los Santos', 20, 80, 1, NULL, NULL, 1, 64, 175, '', 19, 0, 'AC4893A02297ED4D56FC2F9BF863CA1A', 0, 3958, 1, 0, 0, 0, 0, 1, 1, 1, 10, 0, 49, 0, 0, -1, 0, 0, 2, 100, 0, 0, 0, 0, 1, '2016-10-24 21:41:07', '2016-10-20 18:10:13', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 2, 9, 11, 10, NULL, NULL),
(4, 'Richard_Danhill', 5, 1533.33, 1474.73, 16.9535, 268.458, 21, 2695, 70, 34.5, 21, 500, 0, 0, 0, 4, 0, 0, 0, 'Los Santose Linnahall, Commerce, Los Santos', 25, -1, 1, NULL, NULL, 0, 85, 185, '', 0, 0, 'EF0D6F2E641FAFC32BB4658E65B11CD3', 0, 1000, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 36, 0, 0, -1, 0, 0, 2, 100, 0, 0, 0, 0, 1, '2016-10-22 14:08:57', '2016-10-22 10:22:25', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 20, 11, 10, NULL, NULL),
(5, 'Govno_Ebanoe', 6, 1930.14, -1752.72, 13.3828, 56.4623, 0, 0, 100, 0, 23, 500, 0, 0, 0, 4, 0, 0, 0, 'Idlewood, Los Santos', 16, -1, 1, NULL, NULL, 1, 50, 150, '', 0, 0, 'F4BC1ACC362C803CCD67592FF8B55F34', 0, 1000, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2016-10-22 14:20:16', '2016-10-22 11:17:53', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 1, 1, 10, NULL, NULL),
(6, 'Govno_Tester', 7, 1963.42, -1821.89, 13.3828, 153.517, 0, 0, 100, 0, 23, 500, 0, 0, 0, 4, 0, 0, 0, 'Idlewood, Los Santos', 16, -1, 1, NULL, NULL, 1, 50, 150, '', 0, 0, 'A81D2875A2B515132368D69DB5E97F66', 0, 1000, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2016-11-04 21:54:35', '2016-11-04 18:52:25', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 134, 0, 1, 1, 10, NULL, NULL),
(7, 'SANYA_PEPAS', 1, 1837.62, -1755.66, 13.3828, 70.4976, 0, 0, 100, 0, 27, 500, 0, 0, 0, 4, 0, 0, 0, 'Idlewood, Los Santos', 44, -1, 1, NULL, NULL, 1, 103, 173, '', 0, 0, '9818BC6C94FBDA0D7F2450AC81B9DEE2', 0, 1000, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, -1, 0, 0, 2, 100, 0, 0, 0, 0, 1, '2016-11-04 22:34:57', '2016-11-04 19:34:31', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 14, 8, 10, NULL, NULL),
(8, 'Konsta_Tester', 9, 1922.91, -1760.7, 13.5469, 0, 0, 0, 100, 0, 7, 500, 0, 0, 0, 4, 0, 0, 0, 'Автобусная остановка', 16, -1, 1, NULL, NULL, 0, 50, 150, '', 0, 0, '43A4E4A6EB172FB3FC01CDC9AA5AF38B', 0, 1000, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, -1, 0, 0, 1, 100, 0, 0, 0, 0, 1, '2017-03-28 17:38:46', '2017-03-28 14:38:45', 0, 0, 0, 0, 0, 5, NULL, 0, 1, 0, NULL, 128, 0, 1, 1, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `character_settings`
--

CREATE TABLE `character_settings` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `character_settings`
--

INSERT INTO `character_settings` (`id`, `name`, `value`) VALUES
(1, 'phone_anim', '1'),
(1, 'head_turning', '2');

-- --------------------------------------------------------

--
-- Структура таблицы `clothing`
--

CREATE TABLE `clothing` (
  `id` int(11) UNSIGNED NOT NULL,
  `skin` int(11) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `commands`
--

CREATE TABLE `commands` (
  `id` int(11) NOT NULL,
  `command` text,
  `hotkey` text,
  `explanation` text,
  `permission` int(3) NOT NULL DEFAULT '0',
  `category` int(2) NOT NULL DEFAULT '1',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves all info about all kinds of supported commands and con';

--
-- Дамп данных таблицы `commands`
--

INSERT INTO `commands` (`id`, `command`, `hotkey`, `explanation`, `permission`, `category`, `last_update`) VALUES
(2, 'getkey', 'N/A', 'Spawns yourself a key of interior or vehicle that you\'re currently in.', 1, 3, '2014-06-19 13:42:52'),
(3, 'cr', 'N/A', 'without specified ID will close all your own accepted reports.', 21, 7, '2014-11-23 12:51:19'),
(4, 'createemitter [Emitter Type]', 'N/A', 'Spawns Synced Fire/Water Emitters', 1, 5, '2014-06-15 00:29:28'),
(5, 'nearbyemitters', 'N/A', 'Shows all nearby Fire/Water emitters.', 1, 5, '2014-06-26 08:42:01'),
(6, 'delemitters', 'N/A', 'Deletes all nearby Fire/Water emitters.', 1, 7, '2014-06-15 16:14:33'),
(7, 'delemitter [Emitter ID]', 'N/A', 'Deletes a Fire/Water emitters.', 1, 7, '2014-06-15 16:14:19'),
(8, 'delnearbyshops', 'N/A', 'Deletes nearby shops.', 1, 7, '2014-06-15 16:21:37'),
(9, 'reloadshop', 'N/A', 'Reloads a bugged shop.', 1, 4, '2014-06-26 09:02:29'),
(10, 'restoreshop', 'N/A', 'Restores a deleted NPC from SQL.', 1, 4, '2014-06-26 09:02:24'),
(11, 'delshop', 'N/A', 'Deletes a NPC from game, still exist in SQL.', 1, 4, '2014-06-15 16:23:02'),
(12, 'showallcustomshops', 'N/A', 'Shows all custom shops parameters and settings.', 1, 6, '2014-06-17 18:32:04'),
(13, 'fixnearbye', 'N/A', 'Fixes near by elevators. Players can use too.', 0, 7, '2014-06-26 08:58:47'),
(15, 'findvehid', 'N/A', 'Gets car\'s Model ID from Name.', 0, 3, '2014-06-26 08:57:13'),
(17, 'respawnint', 'N/A', 'Respawns all vehicle within current interior/dimension.', 0, 3, '2014-06-26 08:48:41'),
(18, 'restock', 'N/A', 'Restocks businesses, you must be inside an interior to restock. Or use SYNTAX: /restock [Interior ID] [Amount 1~300]', 1, 4, '2014-06-26 08:49:21'),
(19, 'ojail [Exact Username] [Minutes(>=1) 999=Perm] [Reason]', 'N/A', 'Jails an offline player.', 1, 7, '2014-06-26 08:43:48'),
(20, 'sojail', 'N/A', 'Silently jail an offline player, only informs other administrators', 1, 7, '2014-06-17 18:25:36'),
(21, 'oban [Exact Username] [Time in Hours, 0 = Infinite] [Reason]', 'N/A', 'Bans an offline player.', 1, 7, '2014-06-26 08:43:38'),
(22, 'delefromint [Interior ID, 0 = world map]', 'N/A', 'Deletes all elevators that connect to a specified interior.', 3, 7, '2014-06-15 16:12:33'),
(23, 'delnearbye', 'N/A', 'Deletes all nearby elevators.', 11, 7, '2015-01-21 21:08:27'),
(24, 'srd', 'N/A', 'stops all radios in the district you\'re in.', 1, 3, '2014-06-17 18:22:41'),
(25, 'adde', 'N/A', 'creates an elevator', 1, 7, '2014-06-19 13:30:30'),
(26, 'adde2', 'N/A', 'Create an elevator between you and another player', 1, 7, '2014-06-19 13:30:39'),
(27, 'dele', 'N/A', 'deletes an elevator', 0, 7, '2015-01-21 21:09:08'),
(28, 'nearbye', 'N/A', 'shows nearby elevators', 1, 4, '2014-06-26 08:41:51'),
(29, 'togglee', 'N/A', 'enables/disables an elevator', 1, 7, '2014-06-17 18:14:38'),
(30, 'togautocheck', 'N/A', 'Toogles auto opening player /check on /ar reports.', 11, 1, '2014-06-17 18:15:56'),
(31, 'changewarnstyle', 'N/A', 'changes warning message displaying style.', 1, 7, '2014-07-17 23:42:56'),
(32, 'ur', 'N/A', 'Просмотреть неотвеченные репорты', 11, 1, '2016-10-23 01:52:13'),
(34, 'adminlounge', 'N/A', 'Chill out in the lounge', 1, 7, '2014-06-15 00:08:12'),
(35, 'check', 'N/A', 'retrieves specified player\'s information', 11, 7, '2014-06-15 16:07:21'),
(36, 'stats', 'N/A', 'shows players vehicle id\'s, languages etc', 1, 7, '2014-06-15 00:21:44'),
(37, 'history', 'N/A', 'Checks your own admin history', 0, 7, '2014-06-26 08:59:30'),
(38, 'auncuff', 'N/A', 'Развязать игрока', 1, 5, '2016-10-23 01:58:28'),
(39, 'revive', 'N/A', 'revives a player that has been PKd.', 1, 7, '2014-06-26 08:49:53'),
(40, 'pmute', 'N/A', 'Мут', 21, 1, '2016-10-23 01:52:44'),
(41, 'togooc', 'N/A', 'Toggles global OOC chat.', 1, 1, '2014-06-17 18:11:56'),
(42, 'stogooc', 'N/A', 'Silently toggles global OOC and only informs other administrators', 1, 1, '2014-06-17 18:24:31'),
(43, 'disarm', 'N/A', 'takes all weapon from the player', 1, 5, '2014-06-19 13:35:32'),
(44, 'freconnect', 'N/A', 'reconnects the player', 1, 7, '2014-06-15 13:06:40'),
(45, 'giveitem', 'N/A', 'gives the player the specified item, see /items for ids', 1, 5, '2014-06-21 11:41:56'),
(46, 'sethp', 'N/A', 'sets the health of the player', 1, 7, '2014-06-26 08:52:51'),
(47, 'setarmor', 'N/A', 'sets the armor of the player', 1, 5, '2014-11-02 15:16:47'),
(48, 'setskin', 'N/A', 'sets the skin of a player', 1, 7, '2014-06-26 08:54:47'),
(49, 'changename', 'N/A', 'Renames a player if they have less than (or) 5 hours player on it.', 11, 7, '2014-07-17 23:43:13'),
(50, 'slap', 'N/A', 'drops the player from a height of 15', 1, 7, '2014-06-17 18:26:58'),
(51, 'recon', 'N/A', 'spectate a player', 1, 7, '2014-06-26 08:44:58'),
(52, 'fuckrecon', 'N/A', 'forces recon to stop', 1, 7, '2014-06-19 13:40:43'),
(53, 'pkick', 'N/A', 'kicks the player from the server', 1, 7, '2014-06-26 08:44:24'),
(54, 'pban', 'N/A', 'bans the player for the given time, specify 0 as hours for permanent ban', 1, 7, '2014-06-26 08:44:16'),
(55, 'unban', 'N/A', 'unbans the player with the given character name', 1, 7, '2014-06-17 18:05:55'),
(58, 'gotoplace', 'N/A', 'Teleports you to a preset places', 11, 7, '2014-06-26 08:36:58'),
(59, 'jail', 'N/A', 'jails the player, if minutes >= 999 it\'s permanent', 1, 7, '2014-06-26 08:39:13'),
(60, 'unjail', 'N/A', 'unjails the player', 1, 7, '2014-06-15 00:04:53'),
(61, 'jailed', 'N/A', 'shows a list of players that are in adminjail, including time left and reason', 1, 7, '2014-06-26 08:39:21'),
(62, 'goto', 'N/A', 'Teleports you to another player [id/name]', 11, 7, '2014-06-26 08:35:42'),
(64, 'sendto', 'N/A', 'teleports a player to another one', 11, 7, '2014-06-26 08:50:35'),
(69, 'adminduty', 'N/A', 'Админдюти', 1, 1, '2016-10-23 01:46:54'),
(70, 'setmotd', 'N/A', 'Изменить сообщение при входе', 21, 1, '2016-10-23 01:52:24'),
(72, 'amotd', 'N/A', 'ААмотд', 1, 1, '2016-10-23 01:47:13'),
(73, 'warn', 'N/A', 'issues a warning, player is banned when having 3 warnings', 1, 7, '2014-06-15 12:44:51'),
(74, 'showinv', 'N/A', 'views the inventory of the player', 1, 5, '2014-06-17 18:29:22'),
(75, 'togmytag', 'N/A', 'toggles your nametag on and off', 41, 7, '2014-06-17 18:12:38'),
(76, 'dropme', 'N/A', 'drops you off at the current freecam position', 1, 7, '2014-07-07 15:38:13'),
(77, 'disappear', 'N/A', 'disappear', 1, 7, '2014-06-19 13:35:23'),
(79, 'findalts', 'N/A', 'shows all characters the player has', 1, 7, '2014-06-19 13:36:55'),
(80, 'findip', 'N/A', 'shows all accounts the player has', 1, 7, '2014-06-19 13:37:03'),
(81, 'findserial', 'N/A', 'shows all accounts the player has', 1, 7, '2014-06-19 13:37:13'),
(82, 'setlanguage or /setlang', 'N/A', 'adjusts the skill of a player\'s language, or learns it to him', 1, 1, '2014-06-26 08:54:05'),
(83, 'dellanguage', 'N/A', 'deletes a language from the player\'s knowledge', 1, 7, '2014-06-15 16:16:50'),
(84, 'aunblindfold', 'N/A', 'unblindfold the player', 1, 5, '2014-06-15 16:05:37'),
(85, 'agivelicense', 'N/A', 'Дать лицензии игроку', 1, 5, '2016-10-23 01:58:10'),
(86, 'resetcontract', 'N/A', 'resets the job time limit for a person.', 1, 6, '2014-06-26 08:47:40'),
(88, 'freezead', 'N/A', 'Заморозить рекламу', 1, 1, '2016-10-23 01:50:25'),
(89, 'unfreeze', 'N/A', 'Unfreeze a frozen advertisement', 11, 7, '2014-06-16 21:55:54'),
(90, 'deletead', 'N/A', 'Удалить рекламу', 1, 1, '2016-10-23 01:47:59'),
(92, 'itemprotect', 'P', 'Sets the value you set the items to. -100 (locked) or faction id', 11, 5, '2014-06-26 08:58:02'),
(94, 'delii', 'N/A', 'Deletes an information marker', 2, 7, '2014-06-19 13:33:41'),
(95, 'nearbyii', 'N/A', 'Shows all nearby information markers', 2, 7, '2014-06-26 08:42:18'),
(96, 'makeshop ', 'N/A', 'Creates a NPC.', 1, 4, '2014-06-26 08:40:38'),
(97, 'nearbyshops ', 'N/A', 'Shows all near by NPCs.', 1, 4, '2014-06-26 08:43:06'),
(98, 'gunlist or /gunchart', 'N/A', 'Showing a details weapon\'s properties table with IDs.', 2, 5, '2014-06-26 08:37:14'),
(99, 'setage ', 'N/A', 'Change player\'s age', 1, 7, '2014-06-26 08:50:55'),
(100, 'setrace ', 'N/A', 'Change player\'s race', 1, 7, '2014-06-26 08:54:42'),
(101, 'setheight  ', 'N/A', 'Change player\'s height', 1, 7, '2014-06-26 08:52:44'),
(102, 'setgender  ', 'N/A', 'Change player\'s gender', 1, 7, '2014-06-26 08:52:37'),
(109, 'skick', 'N/A', 'Silently kick a player, only informs lead administrators', 1, 7, '2014-06-17 18:27:53'),
(110, 'sjail  ', 'N/A', 'Silently jail a player, only informs other administrators', 1, 7, '2014-06-17 18:28:31'),
(113, 'setjob  ', 'N/A', 'Sets player job.', 1, 6, '2014-06-26 08:53:54'),
(114, 'deljob  ', 'N/A', 'Deletes player job.', 1, 6, '2014-06-15 16:21:23'),
(116, 'issuepc  ', 'N/A', 'Issues player a pilot license', 1, 3, '2014-06-26 08:38:31'),
(117, 'items or /itemlist ', 'N/A', 'Opens Item Creator.', 1, 5, '2014-06-26 08:39:02'),
(118, 'settrainrailed ', 'N/A', 'Sets a train off/on the rail.', 2, 3, '2014-06-26 08:55:27'),
(119, 'settraindirection', 'N/A', 'Sets a train direction to (counter)clockwise.', 2, 3, '2014-06-26 08:55:19'),
(121, 'unflip', 'N/A', 'unflips the vehicle you\'re in.', 11, 3, '2014-06-17 18:03:24'),
(122, 'unlockcivcars', 'N/A', 'unlocks all civilian vehicles', 1, 3, '2014-06-15 12:49:23'),
(123, 'oldcar', 'N/A', 'retrieves the id of the last car you drove', 0, 3, '2014-06-26 08:43:52'),
(124, 'thiscar', 'N/A', 'retrieves the id of the car you\'re in', 0, 3, '2014-06-17 18:16:20'),
(125, 'gotocar', 'N/A', 'teleports you to the car with that id', 11, 3, '2014-06-26 08:35:48'),
(126, 'getcar', 'N/A', 'teleports the car to you', 1, 3, '2014-06-19 13:41:45'),
(127, 'nearbyvehicles', 'N/A', 'shows all vehicles within a radius of 20', 1, 3, '2014-06-26 08:43:24'),
(128, 'respawnveh', 'N/A', 'respawns the vehicle with that id', 11, 3, '2014-10-01 19:15:26'),
(129, 'respawnall', 'N/A', 'respawns all vehicles', 1, 3, '2014-06-26 08:48:17'),
(130, 'respawndistrict', 'N/A', 'respawns all vehicles in the district you are in', 1, 3, '2014-06-26 08:48:31'),
(131, 'respawnciv', 'N/A', 'respawns all civilian (job) vehicles', 1, 3, '2014-06-26 08:48:22'),
(132, 'findveh', 'N/A', 'retrieves the model for that vehicle name', 0, 3, '2014-06-19 13:37:30'),
(134, 'fixvehs', 'N/A', 'repairs all vehicles', 1, 3, '2014-06-19 13:38:16'),
(135, 'fixvehis', 'N/A', 'fixes the vehicles look, engine may remain broken', 1, 3, '2014-06-19 13:38:10'),
(136, 'blowveh', 'N/A', 'blows up a players car', 1, 3, '2014-06-15 00:11:12'),
(137, 'setcarhp', 'N/A', 'sets the health of a car, full health is 1000.', 1, 3, '2014-06-26 08:51:32'),
(139, 'fuelvehs', 'N/A', 'refills all vehicles', 1, 3, '2014-06-19 13:41:02'),
(140, 'setcolor', 'N/A', 'changes the players vehicle colors', 1, 3, '2014-06-26 08:51:36'),
(141, 'getcolor', 'N/A', 'returns the colors of a vehicle', 1, 3, '2014-06-19 13:41:56'),
(142, 'entercar', 'N/A', 'puts the player into the given vehicle at either the specified seat, or if none then the first free seat', 11, 3, '2014-10-03 03:04:06'),
(143, 'getpos', 'N/A', 'outputs your current position, interior and dimension', 1, 7, '2014-06-19 13:42:58'),
(144, 'x', 'N/A', 'increases your x-coordinate by the given value', 1, 7, '2014-06-15 12:44:04'),
(145, 'y', 'N/A', 'increases your y-coordinate by the given value', 1, 7, '2014-06-15 12:43:53'),
(146, 'z', 'N/A', 'increases your z-coordinate by the given value', 1, 7, '2014-06-15 12:43:22'),
(147, 'set*', 'N/A', 'sets your coordinates - available combinations: x, y, z, xyz, xy, xz, yz', 1, 7, '2014-06-26 08:50:46'),
(148, 'reloadint', 'N/A', 'reloads an interior from the database', 1, 4, '2014-06-26 08:45:09'),
(149, 'nearbyints', 'N/A', 'shows nearby interiors', 1, 4, '2014-06-26 08:42:26'),
(150, 'setintname', 'N/A', 'changes an interior name', 1, 4, '2014-06-26 08:53:44'),
(151, 'setfee', 'N/A', 'sets an fee on entering the interior', 1, 4, '2014-06-26 08:52:28'),
(152, 'getintid', 'N/A', 'Gets the interior id', 1, 4, '2014-06-19 13:42:25'),
(153, 'setdim or /setdimension', 'N/A', 'Sets the players dimension id', 1, 7, '2014-06-26 08:51:51'),
(154, 'setint or /setinterior', 'N/A', 'Sets the players interior id', 1, 4, '2014-06-26 08:53:05'),
(158, 'showfactions', 'N/A', 'shows a list with factions', 11, 2, '2014-06-17 18:29:41'),
(159, 'respawnfaction', 'N/A', 'respawns faction vehicles', 1, 2, '2014-06-19 13:43:35'),
(160, 'resetbackup', 'N/A', 'Resets PD\'s backup unit', 1, 2, '2014-06-26 08:47:20'),
(161, 'resetassist', 'N/A', 'Resets ES\'s assist system', 1, 6, '2014-06-26 08:47:12'),
(162, 'resettowbackup', 'N/A', 'Resets towing backup system', 1, 2, '2014-06-26 08:48:03'),
(163, 'aremovespikes', 'N/A', 'Removes all the PD spikes', 1, 2, '2014-06-15 16:08:21'),
(164, 'clearnearbytag', 'N/A', 'Clears nearby tags', 1, 5, '2014-06-15 00:26:49'),
(165, 'nearbytags', 'N/A', 'Shows nearby tag and its creators', 1, 6, '2014-06-26 08:43:15'),
(166, 'changelock', 'N/A', 'changes the lock from the vehicle/interior', 1, 3, '2014-06-15 00:23:00'),
(167, 'restartgatekeepers', 'N/A', 'restarts the gatekeepers resource', 1, 7, '2014-06-26 08:49:08'),
(168, 'bury', 'N/A', 'buries the player; removes the ck corpse', 1, 7, '2014-06-15 00:22:53'),
(173, 'resetpos', 'N/A', 'Reset player\'s position, works when player\'s offline.', 1, 7, '2014-06-26 08:47:50'),
(174, 'delsupercar', 'N/A', 'deletes the supercar you\'re in, given that it meets the criteria for deletion.', 1, 3, '2014-06-19 13:34:26'),
(175, 'setbiznote', 'N/A', 'Добавить описание бизнеса при входе', 0, 4, '2016-10-23 01:57:43'),
(177, 'ints or /interiors', 'N/A', 'Opens Interior Manager.', 2, 4, '2014-07-03 01:32:49'),
(178, 'delint', 'N/A', 'Deletes the interior from game and disables it from loading in next server/resource restarts.', 2, 4, '2014-06-19 13:33:51'),
(179, 'delthisint or /delthisinterior', 'N/A', 'Deletes the interior you\'re currently in it from game and disables it from loading in next server/resource restarts.', 2, 4, '2014-06-19 13:34:48'),
(180, 'restoreint ', 'N/A', 'Restores a deleted interior included safe, items and NPCs inside it.', 2, 4, '2014-06-26 08:49:28'),
(181, 'gotohouse', 'N/A', 'teleports to the house', 1, 4, '2014-06-26 08:36:12'),
(182, 'gotoint', 'N/A', 'teleports to the interior', 1, 4, '2014-06-26 08:36:19'),
(183, 'gotointi', 'N/A', 'teleports inside of an interior', 1, 4, '2014-06-26 08:36:25'),
(184, 'veh', 'N/A', 'spawns a temporary vehicle', 1, 3, '2014-06-15 12:47:50'),
(185, 'resetshopwage', 'N/A', 'Resets all shops wages to $0.', 1, 4, '2014-06-26 08:47:56'),
(186, 'forceupdateshopwage', 'N/A', 'Forces update all shop wages.', 2, 4, '2014-06-19 13:39:37'),
(187, 'delnearbyvehs', 'N/A', 'Deletes all the nearby (temporary) vehicles.', 2, 3, '2014-06-15 16:21:58'),
(188, 'delveh', 'N/A', 'Deletes the (temporary) vehicle with that id', 1, 3, '2014-06-19 13:35:15'),
(189, 'delthisveh', 'N/A', 'Deletes the (temporary) vehicle', 2, 3, '2014-06-19 13:34:53'),
(190, 'restoreveh', 'N/A', 'Restores a deleted vehicle.', 1, 3, '2014-09-07 18:25:46'),
(191, 'makeveh', 'N/A', 'creates a new permanent vehicle', 2, 3, '2014-06-26 08:40:51'),
(192, 'makecivveh', 'N/A', 'creates a new permanent civilian vehicle', 1, 3, '2014-06-26 08:40:11'),
(193, 'addupgrade', 'N/A', 'upgrades a players car', 1, 3, '2014-06-15 00:08:48'),
(194, 'setpaintjob', 'N/A', 'set another paintjob on a vehicle', 1, 3, '2014-06-26 08:54:30'),
(195, 'setvariant', 'N/A', 'set another variant on a vehicle', 1, 3, '2014-06-21 11:46:34'),
(196, 'delupgrade', 'N/A', 'removes a specific upgrade from the player\'s car', 1, 3, '2014-06-19 13:35:08'),
(197, 'resetupgrades', 'N/A', 'removes all upgrades on the player\'s car', 1, 3, '2014-06-26 08:48:09'),
(198, 'aunimpound', 'N/A', 'unimpounds the vehicle from the RT lot', 1, 3, '2014-12-31 17:58:12'),
(199, 'setvehtint', 'N/A', 'adds or removes vehicle tint', 1, 3, '2014-06-17 18:41:42'),
(200, 'atakelicense', 'N/A', 'revokes the player a license (use full name for offline players', 1, 5, '2014-06-15 16:08:03'),
(201, 'setvehplate', 'N/A', 'changes the plate of a vehicle', 1, 3, '2014-06-17 18:42:25'),
(202, 'setvehfaction', 'N/A', 'add a vehicle to faction, use -1 to remove (sets to you)', 1, 3, '2014-06-21 11:46:13'),
(203, 'gates', 'N/A', 'Opens Gate Manager', 2, 7, '2014-12-29 16:35:15'),
(204, 'gotogate', 'N/A', 'Teleports to a gate.', 2, 4, '2014-06-26 08:36:03'),
(205, 'delgate', 'N/A', 'Deletes to a gate.', 2, 7, '2014-06-19 13:33:32'),
(206, 'loginto [Exact Character Name] ', 'N/A', 'Logs into an other account\'s character.', 3, 7, '2014-06-15 00:05:11'),
(207, 'forcepayday [Player ID/Name] ', 'N/A', 'Forces a player to get payday.', 2, 7, '2014-06-19 13:39:06'),
(208, 'forcepaydayall ', 'N/A', 'Forces all players to get paydays.', 2, 7, '2014-06-19 13:39:17'),
(209, 'rwarn [warn #]', 'N/A', 'sends a predefined admin warnings or custom admin warning.', 1, 1, '2014-06-26 08:50:03'),
(210, 'soban', 'N/A', 'Silently ban an offline player, only notifies other administrators', 1, 7, '2014-06-17 18:26:19'),
(211, 'givesuperman', 'N/A', 'Allows a player the temp. ability to use superman. Use command again to remove, reconnects player.', 1, 7, '2014-09-23 17:30:27'),
(212, 'sw', 'N/A', 'changes the weather', 1, 1, '2014-12-08 23:46:17'),
(213, 'addatm', 'N/A', 'adds an ATM at this spot', 1, 7, '2014-12-08 23:43:21'),
(214, 'delatm [id]', 'N/A', 'deletes an ATM with the id', 1, 7, '2014-12-08 23:43:43'),
(215, 'nearbyatms', 'N/A', 'shows the nearby ATMs', 2, 5, '2014-06-26 08:41:42'),
(216, 'bigears', 'N/A', 'hook yourself between someone\'s chats', 2, 1, '2014-06-15 00:10:49'),
(217, 'bigearsf', 'N/A', 'hook yourself between faction chats', 2, 1, '2014-06-15 00:10:58'),
(219, 'gunmaker', 'N/A', 'Opens Weapon Creator', 2, 5, '2014-06-26 08:37:22'),
(220, 'makepaynspray', 'N/A', 'creates an pay n spray', 2, 3, '2014-06-26 08:40:28'),
(221, 'nearbypaynsprays', 'N/A', 'shows nearby pay n sprays', 1, 3, '2014-06-26 08:42:33'),
(222, 'delpaynspray', 'N/A', 'deletes an pay n spray', 2, 3, '2014-06-15 16:22:24'),
(223, 'addphone', 'N/A', 'Добавить телефон', 1, 5, '2016-10-23 01:57:56'),
(224, 'nearbyphones', 'N/A', 'shows nearby public phone', 1, 7, '2014-06-26 08:42:41'),
(225, 'delphone', 'N/A', 'deletes a public phone', 1, 7, '2014-06-15 16:22:32'),
(226, 'enableallelevators', 'N/A', 'enables all elevators', 1, 7, '2014-06-19 13:36:24'),
(227, 'addint', 'N/A', 'adds an interior', 2, 4, '2014-06-15 00:13:38'),
(228, 'sellproperty', 'N/A', 'Продать дом/бизнес игроку', 0, 4, '2016-10-23 01:57:00'),
(230, 'getintid', 'N/A', 'shows the current interior', 1, 4, '2014-06-15 18:04:32'),
(231, 'setintid', 'N/A', 'changes the interior', 2, 4, '2014-06-26 08:53:27'),
(232, 'getintprice', 'N/A', 'shows the interiors price', 1, 4, '2014-06-19 13:42:34'),
(233, 'setintprice', 'N/A', 'changes the interiors price', 2, 4, '2014-06-21 11:46:57'),
(234, 'getinttype', 'N/A', 'shows the interiors type', 1, 4, '2014-06-19 13:42:40'),
(235, 'setinttype', 'N/A', 'changes the interiors type', 2, 4, '2014-06-21 11:47:19'),
(236, 'togint', 'N/A', 'sets the interior enabled or disabled', 2, 4, '2014-06-17 18:12:54'),
(237, 'enableallinteriors', 'N/A', 'enables all the interiors', 2, 4, '2014-06-19 13:36:31'),
(238, 'setintexit', 'N/A', 'changes an interior exit marker', 2, 4, '2014-06-26 08:53:20'),
(239, 'setintentrance', 'N/A', 'changes an interior entrance marker', 2, 4, '2014-06-26 08:53:14'),
(240, 'fsell', 'N/A', 'force-sells an interior', 2, 4, '2014-06-19 13:40:34'),
(241, 'setfactionleader', 'N/A', 'puts a player into a faction and makes the player leader', 2, 2, '2016-10-24 17:39:09'),
(242, 'setfactionrank', 'N/A', 'sets a player to a specific faction rank', 2, 2, '2014-06-26 22:43:02'),
(243, 'makefaction', 'N/A', 'creates a faction', 2, 2, '2014-06-19 13:44:28'),
(244, 'renamefaction', 'N/A', 'renames a faction', 2, 2, '2014-06-19 13:45:26'),
(245, 'sf', 'N/A', 'puts an player into a faction', 1, 2, '2016-10-18 23:36:40'),
(246, 'delfaction', 'N/A', 'deletes a faction', 2, 2, '2014-06-19 13:33:04'),
(247, 'makefuel [skin, default = 50, -1 = random] [Firstname Lastname, -1 = random]', 'N/A', 'creates a new fuel NPC.', 1, 7, '2014-09-23 17:31:36'),
(248, 'nearbyfuelpoints', 'N/A', 'shows nearby fuelpoints', 2, 3, '2014-06-26 08:42:09'),
(249, 'delfuelpoint', 'N/A', 'deletes a fuelpoint', 2, 3, '2014-06-26 08:59:39'),
(250, 'ck', 'N/A', 'permanently kills the character; spawns a corpse at the location the player is at', 2, 7, '2014-06-19 13:32:27'),
(251, 'unck', 'N/A', 'reverts a character kill', 1, 7, '2014-06-17 18:03:45'),
(254, 'setmoney', 'N/A', 'sets the players money to that value', 2, 5, '2014-06-26 08:54:12'),
(255, 'givemoney', 'N/A', 'gives the player money in addition to his current cash', 2, 5, '2014-07-15 08:36:27'),
(256, 'resetcharacter', 'N/A', 'fully resets the character', 2, 7, '2014-06-26 08:47:33'),
(257, 'setvehlimit', 'N/A', 'Set the player\'s max vehicle slots limit.', 3, 3, '2014-06-17 18:42:00'),
(258, 'adminstats', 'N/A', 'shows admin stats', 3, 7, '2014-06-15 00:07:54'),
(259, 'removeshop', 'N/A', 'Deletes a NPC from SQL.', 3, 4, '2014-06-26 08:46:06'),
(260, 'forcesellinactiveints', 'N/A', 'Force-sells All inactive interiors.', 2, 4, '2014-06-19 13:39:26'),
(261, 'removeinactiveints', 'N/A', 'Removes All inactive interiors completedly and permanently from SQL.', 3, 4, '2014-06-26 08:45:51'),
(262, 'removedeletedints', 'N/A', 'Removes All deleted interiors completedly and permanently from SQL.', 3, 4, '2014-06-26 08:45:36'),
(263, 'removeforsaleints', 'N/A', 'Removes All for-sale interiors completedly and permanently from SQL.', 3, 4, '2014-06-26 08:45:42'),
(264, 'delallitems [Item ID] [Item Value]', 'N/A', 'Deletes all the item instances from everywhere in game.', 3, 5, '2014-06-15 00:32:11'),
(265, 'removeint [ID]', 'N/A', 'Deletes the interior from game and erases all the data from database completely and permanently include NPCs, items, safe and items inside the safe. If the deleted interior is a custom interior, the custom map will be gone forever.', 3, 4, '2014-06-26 08:45:58'),
(266, 'removeveh [ID]', 'N/A', 'Removes the vehicle from game and erases all the data from database completely and permanently include items inside. ', 3, 3, '2014-06-26 08:46:15'),
(269, 'hideadmin', 'N/A', 'toggles hidden/visible the admin status', 3, 7, '2014-06-26 08:37:35'),
(270, 'ho', 'N/A', 'надо проверть', 3, 1, '2016-10-23 01:51:15'),
(271, 'hw', 'N/A', 'надо провериь', 3, 1, '2016-10-23 01:51:23'),
(274, 'toga', 'N/A', 'Toggles admin chat.', 3, 1, '2014-06-15 23:02:53'),
(275, 'togg', 'N/A', 'Toggles gamemaster chat.', 3, 1, '2014-06-17 18:14:57'),
(276, 'startres', 'N/A', 'starts a resource', 41, 7, '2014-06-17 18:25:04'),
(277, 'stopres', 'N/A', 'stops the resource', 41, 7, '2014-06-17 18:21:19'),
(278, 'restartres', 'N/A', 'restarts the resource', 1, 7, '2014-06-26 08:49:15'),
(279, 'rescheck', 'N/A', 'checks for certain down resources and starts them', 1, 7, '2014-06-26 08:46:57'),
(280, 'rcs', 'N/A', 'check if the resource \"Resource-Keeper\" is running', 41, 7, '2014-06-26 08:44:47'),
(281, 'generatecode', 'N/A', 'generates a donation code', 3, 7, '2014-06-19 13:41:37'),
(282, 'setdamageproof', 'N/A', 'makes a vehicle damageproof', 2, 3, '2014-06-26 08:51:44'),
(283, 'delitemsfromint', 'N/A', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', 1, 5, '2014-06-19 13:34:08'),
(285, 'aordersupplies', 'N/A', 'Orders supplies from RS Haul for the current interior without yourself being charged.', 1, 4, '2014-06-15 00:07:06'),
(286, 'setjoblevel', 'N/A', 'Sets player\'s city hall job\'s level and progress', 1, 6, '2014-06-26 08:53:59'),
(287, 'respawntrucks', 'N/A', 'Respawns all unoccupied Delivery Trucks', 1, 3, '2014-06-26 08:48:49'),
(288, 'checkactiveroutes', 'N/A', 'Shows all Delivery Job\'s routes that players are on', 41, 6, '2015-01-24 18:28:17'),
(289, 'fetchactualorders', 'N/A', 'Fetches player\'s Supplies Orders from SQL to game manually (Normally it\'s auto-fetched every 10 minutes)', 41, 6, '2015-01-24 18:28:26'),
(290, 'addactualorder', 'N/A', 'Creates a marker for Delivery Job, it looks exactly the same as actual order from other player.', 41, 6, '2015-01-24 18:28:04'),
(291, 'addtruckerjobmarker', 'N/A', 'Creates a generic drop-off marker for Delivery Driver job.', 41, 6, '2015-01-24 18:28:10'),
(292, 'showactualorders', 'N/A', 'Shows Delivery Job\'s actual supply orders from players.', 41, 6, '2015-01-24 18:28:40'),
(293, 'showalltruckmarkers', 'N/A', 'Shows all Delivery Job drop-off markers (both generic markers and actual order markers)', 41, 6, '2015-01-24 18:28:46'),
(294, 'skiproute', 'N/A', 'Skips Delivery Job\'s current route, jump instantly to next spot (useful when creating job markers)', 1, 6, '2014-06-17 18:27:18'),
(295, 'resetaccount', 'N/A', 'Reset one character or all characters within an account.', 2, 7, '2014-06-26 08:47:03'),
(296, 'deltruckmarker', 'N/A', 'Deletes a Delivery Job\'s marker', 41, 6, '2015-01-24 18:28:21'),
(297, 'aheal', 'N/A', 'Gives yourself full HP, or /aheal [ID] to give it someone else', 11, 7, '2014-06-15 00:05:38'),
(298, 'showadminreports', 'N/A', 'Subscribes to administrator reports, showing them as well.', 1, 1, '2014-06-26 08:55:33'),
(304, 'gmlounge', 'N/A', 'Teleports you to the staff lounge.', 11, 7, '2014-06-21 11:50:28'),
(305, 'g [Text]', 'N/A', 'g чате', 11, 1, '2016-10-23 01:50:48'),
(306, 'ar', 'N/A', 'Accept a report.', 21, 7, '2014-11-23 12:51:14'),
(308, 'dr', 'N/A', 'Drop a report, leaving it unanswered.', 11, 7, '2014-06-19 13:35:43'),
(309, 'fr', 'N/A', 'Mark a report false', 11, 7, '2014-06-19 13:39:46'),
(311, 'sduty, gduty', 'N/A', 'Toggles Supporter duty (On/off)', 11, 7, '2014-06-26 08:50:23'),
(314, 'mark', 'N/A', 'Create a mark for you to teleport to using /gotomark (doing /mark without a specified name will create a temporary one)', 11, 7, '2014-06-26 08:41:01'),
(316, 'gotomark', 'N/A', 'Teleport to a pre-made /mark (/gotomark without a mark name teleports to a temporary one)', 11, 7, '2014-06-26 08:36:33'),
(335, 'forceapp', 'N/A', 'Force player that doesn\'t meet server standards -and- not willing to improve out of game.', 11, 7, '2014-06-19 13:38:51'),
(342, 'renameshop', 'N/A', 'or /renameped or /renamenpc, it renames NPCs in format of \'First Lastname\'', 1, 4, '2014-06-26 08:46:30'),
(345, 'togoverlay', 'N/A', 'Toggles overlay menus on top or buttom of screen. If it\'s disabled, the content will be all printed to chatbox.', 0, 7, '2014-06-17 18:11:09'),
(351, 'settrackingloc', 'N/A', 'Use this command to define where the tracking device in the vehicle is installed.', 1, 3, '2014-06-26 08:55:12'),
(358, 'hashtransactionid', 'N/A', 'Hashes a transaction ID from PayPal into the proper format for donation key.', 3, 7, '2014-06-26 08:37:28'),
(360, 'togreg', 'N/A', 'Toggle the registration of a vehicle.', 1, 3, '2014-06-17 18:08:51'),
(361, 'togplate', 'N/A', 'Toggle the plate visibility of a vehicle.', 1, 3, '2014-06-17 18:09:10'),
(362, 'togvin', 'N/A', 'Toggle the VIN visibility of a vehicle.', 1, 3, '2014-06-17 18:08:26'),
(363, 'addramp', 'N/A', 'Add a vehicle lift (requires a lift remote)', 1, 3, '2014-06-15 00:14:51'),
(364, 'delramp', 'N/A', 'Delete a vehicle lift.', 1, 3, '2014-06-15 16:22:47'),
(365, 'nearbyramps', 'N/A', 'Fetch all nearby vehicle lifts.', 1, 5, '2014-06-26 08:42:56'),
(368, 'vehlib', 'N/A', 'Opens vehicle library', 11, 3, '2014-10-01 19:36:44'),
(369, 'editveh', 'N/A', 'Create/Update Unique Properties for Vehicle.', 21, 3, '2015-01-09 15:50:49'),
(370, 'setdob', 'N/A', 'Set player\'s date of birth', 1, 7, '2014-06-26 08:51:57'),
(372, 'setintlimit', 'N/A', 'Set character\'s max interior slots', 3, 7, '2014-06-26 08:53:34'),
(373, 'setamotd', 'N/A', 'Set the admin message of the day', 3, 1, '2014-06-26 08:51:05'),
(376, 'delad', 'N/A', 'Stops an Advertisement from being aired.', 1, 1, '2015-01-08 15:33:35'),
(377, 'gethere', 'N/A', 'Teleports a player to you.', 11, 7, '2014-06-19 13:42:14'),
(379, 'freeze', 'N/A', 'Freeze a player.', 1, 7, '2014-06-19 13:40:15'),
(381, 'stats', 'N/A', 'Shows a GUI with your character\'s statistics.', 0, 7, '2014-06-15 00:21:18'),
(389, 'nudge', 'N/A', 'Nudges a player, getting their attention.', 11, 7, '2014-06-26 08:43:30'),
(390, 'places', 'N/A', 'Shows you a list of valid places you can /gotoplace.', 11, 7, '2014-06-26 08:44:30'),
(391, 'marks', 'N/A', 'Views all /mark\'s', 11, 7, '2014-06-26 08:41:12'),
(392, 'delmark', 'N/A', 'Deletes a mark, usage: \"/delmark [MARKNAME]\" Not ID', 11, 7, '2014-06-15 16:15:37'),
(393, 'ann', 'N/A', 'Отправить сообщение сверху экрана ', 11, 1, '2016-10-23 01:47:30'),
(394, 'togpm', 'N/A', 'Toggles your private messages if you have the perk.', 0, 1, '2014-06-26 09:01:21'),
(395, 'monitor', 'N/A', 'Toggles monitor window.', 11, 7, '2014-10-05 10:10:22'),
(397, 'omonitor', 'N/A', 'Add an offline player to the monitor', 1, 7, '2014-06-26 08:43:58'),
(400, '\'F7\'', 'F7', 'Toggles the application panel.', 11, 7, '2014-12-16 19:26:43'),
(404, 'checkveh', 'N/A', 'Display details information of a vehicle', 11, 3, '2014-06-15 16:05:50'),
(405, 'makegeneric', 'N/A', 'or makegenericitem, creates to yourself a generic item', 11, 5, '2014-06-26 08:40:17'),
(406, 'unlock', 'K', '(Un)locks the closest vehicle to you, of which you have the key.', 0, 3, '2014-06-26 08:56:44'),
(410, 'fuelveh', 'N/A', 'Fuel a vehicle', 1, 3, '2014-06-19 13:40:56'),
(412, 'flip', 'N/A', 'Flip a vehicle', 11, 3, '2014-10-01 19:14:55'),
(413, 'park', 'N/A', 'Parks the vehicle you\'re in', 0, 3, '2014-06-26 08:44:07'),
(415, 'ed', 'N/A', 'Edit the vehicle description', 0, 3, '2014-06-19 13:35:58'),
(416, 'changename', 'N/a', 'Changes a player\'s character name.', 3, 7, '2014-06-15 00:24:26'),
(418, 'vehlib', 'N/A', 'Allows you to control aspects of custom vehicles in the library', 21, 1, '2014-06-15 12:46:39'),
(419, 'moveitem', 'N', 'Opens a panel for you to control position of an item', 1, 5, '2014-06-26 09:01:41'),
(420, 'apark', 'N/A', 'parks a vehicle without being inside', 1, 3, '2014-06-18 22:16:39'),
(421, 'cks', 'N/A', 'shows character kill requests', 1, 7, '2014-06-26 08:35:28'),
(422, 'advertisements', 'N/A', 'shows a list of post-listing advertisments', 0, 7, '2014-06-21 14:29:15'),
(423, 'showcol', 'N/A', 'show the collide objects in the world. Speed zone (yellow), Speedcam (blue), Restricted parking (Pink), Police Cars (Large Red), Normal (red)', 1, 7, '2014-06-21 21:23:51'),
(424, 'rf', 'N/A', 'restricted frequency database', 1, 2, '2014-10-05 10:12:48'),
(425, 'quitjob', 'N/A', 'Quits the job you currently have', 0, 6, '2014-06-26 09:01:33'),
(426, 'F [message]', 'N/A', 'Out of Character faction chat', 0, 2, '2014-07-06 11:41:50'),
(427, 'N/A', 'F3', 'Faction menu', 0, 2, '2014-06-26 09:03:42'),
(429, 'sendtovct', 'N/A', 'Sends a specific report to the VCT team (regarding request, questions,...)', 11, 3, '2014-07-06 11:39:51'),
(430, 'mt [message]', 'N/A', 'Mapping Team chat', 31, 7, '2014-08-23 15:40:58'),
(431, 'vct [message]', 'N/A', 'Vehicle Consultation Team chat', 21, 1, '2014-07-06 11:43:02'),
(432, 'sell [player name]', 'N/A', 'Продать автомобиль или недвижимость игроку', 0, 4, '2016-10-23 01:57:29'),
(433, 'showadminreports', 'N/A', 'Reveals reports sent out to the admin team, to supporters.', 11, 7, '2014-07-15 08:34:58'),
(434, 'supervise', 'N/A', 'Turns you half invisible, in order to supervise a roleplay.', 11, 7, '2014-07-15 08:35:16'),
(435, 'enterveh [player][car ID][seat]', 'N/A', 'Warps a player into a car.', 11, 3, '2014-07-15 08:35:48'),
(436, 'sendveh', 'N/A', 'Sends a vehicle to a player', 11, 7, '2014-07-15 08:35:08'),
(437, 'getvehweight', 'N/A', 'gives you the weight of a car and the price for the chopping', 1, 3, '2014-07-09 08:15:42'),
(438, 'texlist', 'N/A', 'shecks the textures in an interior, gives ability to edit and delete. ', 0, 4, '2014-08-12 08:08:37'),
(439, 'ads', 'N/A', 'Рекламные объявления', 11, 1, '2016-10-23 01:47:06'),
(440, 'getcar', 'N/A', 'Warps a car to the player.', 11, 3, '2014-08-03 10:45:23'),
(441, 'findalts2', 'N/A', 'More information than a /findalts', 1, 7, '2014-08-05 20:42:19'),
(442, 'ri', 'N/A', 'read a report', 21, 7, '2014-11-23 12:53:19'),
(443, 'srl', '', 'Set\'s the rain level of the current weather', 1, 7, '2014-08-09 23:41:56'),
(444, 'sms [contact_name/number] [message]', 'N/A', 'Отправить смску', 21, 1, '2016-10-23 01:52:36'),
(447, 'fixveh', 'N/A', 'Fixes the vehicle of the player who is in it.', 11, 3, '2014-08-12 08:11:07'),
(448, 'gate [password]', 'N/A', 'opens a gate near you, with or without a password.', 0, 7, '2014-08-12 08:12:00'),
(451, 'call [id игрока или номер]', 'N/A', 'Позвонить игроку', 0, 1, '2016-10-23 01:47:52'),
(452, 'anims', 'N/A', 'opens a list of anims on your chatbox.', 0, 7, '2014-08-12 08:16:08'),
(453, 'animselect', 'N/A', 'opens a full list of animations.', 0, 7, '2014-08-12 08:16:14'),
(455, 'writenote [text]', 'N/A', 'Writes a note that will spawn on your inventory.', 0, 5, '2014-08-16 07:28:40'),
(456, 'fish', 'N/A', 'Starts fishing', 0, 6, '2015-02-04 08:14:42'),
(457, 'totalcatch', 'N/A', 'Displays how much lbs of fishes you have caught so far', 0, 6, '2015-02-04 08:14:57'),
(458, 'sellFish', 'N/A', 'To sell your caught fish', 0, 6, '2015-02-04 08:14:47'),
(459, '911', 'N/A', 'Submit an NPC 911 call.', 11, 1, '2014-10-13 11:55:38'),
(460, 'tempsell', 'N/A', 'gives temporary selling ability like old /sell', 11, 3, '2014-10-01 19:36:33'),
(462, 'arrest', 'N/A', 'for administrators, you have full access to the arrest and management within arrest', 1, 2, '2014-08-25 18:55:01'),
(463, 'items', 'N/A', 'Shows a list of items - (spawning is disabled?)', 11, 5, '2015-02-04 08:15:13'),
(464, 'setjob [player] [job id]', 'N/A', 'Sets a job to a player, leave arguments blank to see ID\'s', 11, 6, '2015-02-04 08:15:01'),
(465, 'setvol [0-100]', 'N/A', 'Sets the radio volume', 0, 3, '2015-02-04 08:12:20'),
(468, 'nearbyshops', 'N/A', 'Shows any near by shop NPC\'s, along with their ID', 0, 7, '2015-02-04 08:13:19'),
(469, 'moveshop', 'N/A', 'Moves a shop NPC to your location', 11, 7, '2014-11-29 09:14:15'),
(471, 'unforceapp [Partial Username]', 'N/A', 'Unforceapp a player.', 11, 7, '2015-02-06 19:00:48'),
(473, 'nearbyfuels', 'N/A', 'Find nearby fuel NPCs.', 0, 7, '2015-02-04 08:13:10'),
(474, 'delfuel [id]', 'N/A', 'Delete a fuel NPC.', 1, 7, '2014-11-29 09:14:09'),
(477, 'nearbyitems', 'N/A', 'Shows nearby items.', 11, 5, '2015-02-04 08:15:18'),
(480, 'sw', '', 'Possibility to change the wather.', 3, 7, '2014-10-04 21:30:54'),
(481, 'srl ', '', 'Sets the amount of rain.', 3, 7, '2014-10-04 21:31:18'),
(482, 'delitem', '', 'Удалить вещь', 1, 5, '2016-10-23 01:58:36'),
(486, 'processcustominterior [interior ID]', '', 'Manually process a custom interior upload', 3, 4, '2014-10-19 08:24:14'),
(487, 'processcustominterior [interior ID]', '', 'Manually process a custom interior upload', 41, 4, '2014-10-19 08:24:41'),
(488, 'showkills', '', 'Show the latest kills', 1, 7, '2014-10-19 18:36:23'),
(489, 'setserverpassword [Пароль или оставьте пустым - удалить пароль]', '', 'Установить пароль на сервер', 1, 7, '2016-10-23 01:59:37'),
(490, 'setintfaction [Faction Name or Faction ID]', '', 'Transfer an interior\'s ownership to a faction. ', 2, 2, '2014-10-25 18:44:56'),
(491, 'setinttomyfaction ', 'N/A', 'Transfer an interior\'s ownership from a faction leader to his faction.', 0, 2, '2015-02-04 08:12:30'),
(493, 'fuelveh [ID] [Liters, 0=full]', 'N/A', 'Refills the fuel tank of the given player ID', 11, 3, '2015-02-04 08:12:14'),
(494, 'delemitters', '', 'Deletes all emitters', 1, 5, '2015-01-01 11:53:02'),
(502, 'adddancer', 'N/A', 'Adds an NPC dancer', 2, 7, '2014-12-03 14:34:46'),
(503, 'fixinventory', 'N/A', 'Fixes your inventory client-side, for when it gets bugged.', 0, 5, '2014-12-06 12:10:42'),
(504, 'setinttomyfaction', 'N/A', 'Set an interior you own to your faction ', 0, 4, '2014-12-06 16:25:25'),
(506, 'groundsnow', 'N/A', 'Toggle the snow shader', 0, 7, '2014-12-06 23:37:56'),
(507, 'whitelists', 'N/A', 'List all staff serial whitelist', 0, 7, '2015-02-04 08:13:14'),
(508, 'addserialwl [Username] [Serial]', '', 'Add new item to serial whitelist.', 3, 7, '2014-12-13 18:07:16'),
(509, 'delserialwl [Whitelist ID]', '', 'Remove a staff from serial whitelist', 3, 7, '2014-12-13 18:07:47'),
(510, 'banserial [Serial Number] [Reason]', '', 'Ban a serial number.', 1, 7, '2014-12-29 21:45:41'),
(511, 'banip [IP Address] [Reason]', '', 'Ban an IP address.', 1, 7, '2015-01-07 19:25:29'),
(512, 'showban', '', 'Show details of a ban.', 1, 7, '2014-12-29 21:47:02'),
(513, 'staffs', '', 'Opens staff manager', 3, 7, '2015-01-08 01:30:50'),
(514, 'adde', 'N/A', 'adds an elevator your current spot. Type it again to set the second spot.', 11, 7, '2015-01-08 03:02:07'),
(515, 'entercar [player] [car ID] [seat]', 'N/A', 'ТП в автомобиль', 11, 1, '2016-10-23 01:50:36'),
(516, 'dutyadmin', '', 'Manages /duty systems', 3, 2, '2015-01-09 15:23:54'),
(517, 'watch [ID]', '', 'Watches another player', 1, 7, '2015-01-09 15:24:29'),
(518, 'autowatch [Time Interval]', '', 'it\'s like /watch, but scrolls through everyone online. Interval is in seconds', 1, 7, '2015-01-13 20:21:36'),
(519, 'injure', 'N/A', 'Base command for the \"Health\" System. It allows you to add an injury to yourself or another.', 0, 7, '2015-02-04 08:13:02'),
(520, 'irespond', 'N/A', 'Allows you to respond with either (y)es or (n)o to a request from /injure', 11, 7, '2015-02-04 08:12:52'),
(521, 'diagnose', 'N/A', 'Used to open the GUI of a player to view their current injuries. RP this accordingly.', 0, 7, '2015-02-04 08:13:32'),
(522, 'treat', 'N/A', 'Allows you to treat a person of an injury. This has an associated money cost. RP it accordingly.', 0, 7, '2015-02-04 08:12:57'),
(523, '/dele', 'N/A', 'Deletes an elevator ', 11, 7, '2015-02-04 08:13:06'),
(524, 'startbus', 'N/A', 'Begins a bus route if you are inside a bus as a driver.', 0, 6, '2015-01-29 05:31:10'),
(526, 'handbrake', 'G', 'Applies the handbrake or kickstand to vehicles.', 0, 3, '2015-01-29 05:36:46'),
(527, 'movesafe', 'N/A', 'Moves a safe placed in an interior. (Key holders only)', 0, 5, '2015-01-29 05:39:00'),
(528, 'ri [ID]', 'N/A', 'Shows report information.', 11, 7, '2015-01-29 05:42:06'),
(530, 'fp', 'N/A', 'Toggles first person view, type it again to switch back.', 0, 7, '2015-01-29 05:50:04'),
(531, 'togg', 'N/A', 'Toggle supporter chat on/off.', 11, 1, '2015-01-29 05:53:56'),
(532, '=', '=', 'Toggles hazard lights/flashers.', 0, 3, '2015-02-06 06:31:02'),
(533, '[', '[', 'Turns on a vehicle\'s left directional.', 0, 3, '2015-02-04 08:14:06'),
(534, ']', ']', 'Turns on a vehicle\'s right directional.', 0, 3, '2015-02-04 08:14:02'),
(535, 'radio [Message]', 'Y', 'Sends a message via radio to everyone on that frequency.', 0, 1, '2015-01-29 05:58:09'),
(537, 'say [Text]', 'T', 'To use in character chat.', 0, 1, '2015-01-29 06:04:06'),
(538, 'I', 'I', 'Opens your inventory.', 0, 5, '2015-02-04 08:14:33'),
(539, 'p [Text]', 'N/A', 'Send an in character message during a phone call.', 0, 1, '2015-01-29 06:03:16'),
(540, 'b [текст]', 'B', 'OOC чат', 0, 4, '2016-10-23 01:56:17'),
(541, 'ooc [Text]', 'N/A', 'To use global out of character chat when enabled.', 0, 1, '2015-01-29 06:04:33'),
(542, 'seatbelt', 'Z', 'Buckles in your seatbelt.', 0, 3, '2015-01-29 06:06:24'),
(543, 'togwindow', 'X', 'Opens/Closes vehicle windows.', 0, 3, '2015-01-29 06:07:05'),
(544, 'pay [Player name/ID]', 'N/A', 'Sends money to another player. (Requires 10 hours on any character)', 0, 7, '2015-01-29 06:11:26'),
(545, 'banaccount', '', 'Ban an account permanently. (Excluding IP and serial)', 1, 7, '2015-02-03 07:18:31'),
(546, 'jailtime', 'N/A', 'Shows the time that you are jailed for.', 0, 7, '2015-02-04 06:22:44'),
(547, 'seefar [250 - 20000]', 'N/A', 'Changes the clip distance of the client to the selected value.', 0, 7, '2015-02-04 06:24:54'),
(548, 'clearchat', 'N/A', 'Clears your entire chatbox.', 0, 7, '2015-02-04 06:25:51'),
(549, 'togglehud', 'N/A', 'Toggles the in game HUD on or off.', 0, 7, '2015-02-04 06:26:42'),
(550, 'showfeedbacks', 'N/A', 'Shows your recieved feedback.', 11, 7, '2015-02-04 06:29:29'),
(551, 'staffs', 'N/A', 'A quick command to open up staff manager.', 11, 7, '2015-02-04 06:30:03'),
(552, 'findalts [Name/ID]', 'N/A', 'Shows the selected player\'s other characters as well as hours played on them.', 11, 7, '2015-02-08 15:21:25'),
(553, 'staff', 'N/A', 'Opens up a menu showing online staff members.', 0, 7, '2015-02-07 18:40:48');

-- --------------------------------------------------------

--
-- Структура таблицы `commands_library`
--

CREATE TABLE `commands_library` (
  `cmID` int(11) NOT NULL,
  `cmType` int(3) NOT NULL DEFAULT '1',
  `cmLevel` int(3) NOT NULL DEFAULT '0',
  `cmSubType` int(3) NOT NULL DEFAULT '0',
  `cmName` text,
  `cmExplanation` text,
  `cmCreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves all info about all kinds of commands in /cmds, /gh and';

--
-- Дамп данных таблицы `commands_library`
--

INSERT INTO `commands_library` (`cmID`, `cmType`, `cmLevel`, `cmSubType`, `cmName`, `cmExplanation`, `cmCreationDate`) VALUES
(1, 1, 0, 0, 'trace', 'traces a phone number and tells you who owns it. Player must be online.', '2013-06-29 14:10:19'),
(2, 1, 0, 0, 'getkey', 'Spawns yourself a key of interior or vehicle that you\'re currently in.', '2013-06-29 14:10:19'),
(3, 1, 0, 0, 'cr', 'without specified ID will closes all your own accepted reports.', '2013-06-29 14:10:19'),
(4, 1, 0, 0, 'createemitter [Emitter Type]', 'Spawns Synced Fire/Water Emitters', '2013-06-29 14:10:19'),
(5, 1, 0, 0, 'nearbyemitters', 'Shows all nearby Fire/Water emitters.', '2013-06-29 14:10:19'),
(6, 1, 0, 0, 'delemitters', 'Deletes all nearby Fire/Water emitters.', '2013-06-29 14:10:19'),
(7, 1, 0, 0, 'delemitter [Emitter ID]', 'Deletes a Fire/Water emitters.', '2013-06-29 14:10:19'),
(8, 1, 0, 0, 'delnearbyshops', 'Deletes nearby shops.', '2013-06-29 14:10:19'),
(9, 1, 0, 0, 'reloadshop [ID]', 'Reloads a bugged shop.', '2013-06-29 14:10:19'),
(10, 1, 0, 0, 'restoreshop [ID]', 'Restores a deleted NPC from SQL.', '2013-06-29 14:10:19'),
(11, 1, 0, 0, 'delshop [ID]', 'Deletes a NPC from game, still exist in SQL.', '2013-06-29 14:10:19'),
(12, 1, 0, 0, 'showallcustomshops', 'Shows all custom shops parameters and settings.', '2013-06-29 14:10:19'),
(13, 1, 0, 0, 'fixnearbyeleators', 'Fixes near by elevators. Players can use too.', '2013-06-29 14:10:19'),
(14, 1, 0, 0, 'fixvehvis [Driver\'s partial Name/ID]', 'Fixes player\'s car\'s visual, leave the engine\'s health.', '2013-06-29 14:10:19'),
(15, 1, 0, 0, 'findvehid [Veh Name]', 'Gets car\'s Model ID from Name.', '2013-06-29 14:10:19'),
(16, 1, 0, 0, 'getcolor [Veh ID]', 'Gets car\'s color.', '2013-06-29 14:10:19'),
(17, 1, 0, 0, 'respawnint', 'Respawns all vehicle within current interior/dimension.', '2013-06-29 14:10:19'),
(18, 1, 0, 0, 'restock', 'Restocks businesses, you must be inside an interior to restock. Or use SYNTAX: /restock [Interior ID] [Amount 1~300]', '2013-06-29 14:10:19'),
(19, 1, 0, 0, 'ojail [Exact Username] [Minutes(>=1) 999=Perm] [Reason]', 'Jails an offline player.', '2013-06-29 14:10:19'),
(20, 1, 0, 0, 'sojail [Exact Username] [Minutes(>=1) 999=Perm] [Reason]', 'Silently jails an offline player.', '2013-06-29 14:10:19'),
(21, 1, 0, 0, 'oban [Exact Username] [Time in Hours, 0 = Infinite] [Reason]', 'Bans an offline player.', '2013-06-29 14:10:19'),
(22, 1, 0, 0, 'delefromint [Interior ID, 0 = world map]', 'Deletes all elevators that connect to a specified interior.', '2013-06-29 14:10:19'),
(23, 1, 0, 0, 'delnearbye', 'Deletes all nearby elevators.', '2013-06-29 14:10:19'),
(24, 1, 0, 0, 'stopradiodistrict', 'Stops all car radios within current district.', '2013-06-29 14:10:19'),
(25, 1, 0, 0, 'adde', 'creates an elevator', '2013-06-29 14:10:19'),
(26, 1, 0, 0, 'adde2', 'Create an elevator between you and another player', '2013-06-29 14:10:19'),
(27, 1, 0, 0, 'dele', 'deletes an elevator', '2013-06-29 14:10:19'),
(28, 1, 0, 0, 'nearbye', 'shows nearby elevators', '2013-06-29 14:10:19'),
(29, 1, 0, 0, 'togglee', 'enables/disables an elevator', '2013-06-29 14:10:19'),
(30, 1, 0, 0, 'togautocheck', 'Toogles auto opening player /check on /ar reports.', '2013-06-29 14:10:19'),
(31, 1, 0, 0, 'changewarnstyle', 'changes admin warning message displaying style.', '2013-06-29 14:10:19'),
(32, 1, 0, 0, 'ur', 'view unanswered reports.', '2013-06-29 14:10:19'),
(34, 1, 0, 0, 'adminlounge', 'Chill out in the lounge', '2013-06-29 14:10:19'),
(35, 1, 0, 0, 'check', 'retrieves specified player\'s information', '2013-06-29 14:10:19'),
(36, 1, 0, 0, 'stats', 'shows players vehicle id\'s, languages etc', '2013-06-29 14:10:19'),
(37, 1, 0, 0, 'history', 'checks the admin history of the player, works also when offline.', '2013-06-29 14:10:19'),
(38, 1, 0, 0, 'auncuff', 'uncuffs the player', '2013-06-29 14:10:19'),
(39, 1, 0, 0, 'revive', 'revives a player that has been PKd.', '2013-06-29 14:10:19'),
(40, 1, 0, 0, 'pmute', 'mutes the player', '2013-06-29 14:10:19'),
(41, 1, 0, 0, 'togooc', 'Toggles OOC on/off', '2013-06-29 14:10:19'),
(42, 1, 0, 0, 'stogooc', 'Siently Toggles OOC on/off', '2013-06-29 14:10:19'),
(43, 1, 0, 0, 'disarm', 'takes all weapon from the player', '2013-06-29 14:10:19'),
(44, 1, 0, 0, 'freconnect', 'reconnects the player', '2013-06-29 14:10:19'),
(45, 1, 0, 0, 'giveitem', 'gives the player the specified item, see /itemlist for ids', '2013-06-29 14:10:19'),
(46, 1, 0, 0, 'sethp', 'sets the health of the player', '2013-06-29 14:10:19'),
(47, 1, 0, 0, 'setarmor', 'sets the armor of the player', '2013-06-29 14:10:19'),
(48, 1, 0, 0, 'setskin', 'sets the skin of a player', '2013-06-29 14:10:19'),
(49, 1, 0, 0, 'changename', 'changes the character name', '2013-06-29 14:10:19'),
(50, 1, 0, 0, 'slap', 'drops the player from a height of 15', '2013-06-29 14:10:19'),
(51, 1, 0, 0, 'recon', 'spectate a player', '2013-06-29 14:10:19'),
(52, 1, 0, 0, 'fuckrecon', 'forces recon to stop', '2013-06-29 14:10:19'),
(53, 1, 0, 0, 'pkick', 'kicks the player from the server', '2013-06-29 14:10:19'),
(54, 1, 0, 0, 'pban', 'bans the player for the given time, specify 0 as hours for permanent ban', '2013-06-29 14:10:19'),
(55, 1, 0, 0, 'unban', 'unbans the player with the given character name', '2013-06-29 14:10:19'),
(56, 1, 0, 0, 'unbanip', 'unbans the specified ip', '2013-06-29 14:10:19'),
(57, 1, 0, 0, 'unbanserial', 'unbans the specified serial', '2013-06-29 14:10:19'),
(58, 1, 0, 0, 'gotoplace', 'teleports you to one of those 4 places', '2013-06-29 14:10:19'),
(59, 1, 0, 0, 'jail', 'jails the player, if minutes >= 999 it\'s permanent', '2013-06-29 14:10:19'),
(60, 1, 0, 0, 'unjail', 'unjails the player', '2013-06-29 14:10:19'),
(61, 1, 0, 0, 'jailed', 'shows a list of players that are in adminjail, including time left and reason', '2013-06-29 14:10:19'),
(62, 1, 0, 0, 'goto', 'teleport to another player', '2013-06-29 14:10:19'),
(63, 1, 0, 0, 'gethere', 'teleports the player to you', '2013-06-29 14:10:19'),
(64, 1, 0, 0, 'sendto', 'teleports a player to another one', '2013-06-29 14:10:19'),
(65, 1, 0, 0, 'freeze', 'freezes the player', '2013-06-29 14:10:19'),
(66, 1, 0, 0, 'unfreeze', 'unfreezes the player', '2013-06-29 14:10:19'),
(67, 1, 0, 0, 'mark', 'saves your current position', '2013-06-29 14:10:19'),
(68, 1, 0, 0, 'gotomark', 'teleports to the position where you did /mark [label]', '2013-06-29 14:10:19'),
(69, 1, 0, 0, 'adminduty', '(un)marks you as admin on duty', '2013-06-29 14:10:19'),
(70, 1, 0, 0, 'setmotd', 'updates the message of the day', '2013-06-29 14:10:19'),
(71, 1, 0, 0, 'setamotd', 'updates the admin message of the day', '2013-06-29 14:10:19'),
(72, 1, 0, 0, 'amotd', 'shows the current admin message of the day', '2013-06-29 14:10:19'),
(73, 1, 0, 0, 'warn', 'issues a warning, player is banned when having 3 warnings', '2013-06-29 14:10:19'),
(74, 1, 0, 0, 'showinv', 'views the inventory of the player', '2013-06-29 14:10:19'),
(75, 1, 0, 0, 'togmytag', 'toggles your nametag on and off', '2013-06-29 14:10:19'),
(76, 1, 0, 0, 'dropme', 'drops you off at the current freecam position', '2013-06-29 14:10:19'),
(77, 1, 0, 0, 'disappear', 'disappear', '2013-06-29 14:10:19'),
(78, 1, 0, 0, 'listcarprices', 'shows list with carprices in dealerships', '2013-06-29 14:10:19'),
(79, 1, 0, 0, 'findalts', 'shows all characters the player has', '2013-06-29 14:10:19'),
(80, 1, 0, 0, 'findip', 'shows all accounts the player has', '2013-06-29 14:10:19'),
(81, 1, 0, 0, 'findserial', 'shows all accounts the player has', '2013-06-29 14:10:19'),
(82, 1, 0, 0, 'setlanguage or /setlang', 'adjusts the skill of a player\'s language, or learns it to him', '2013-06-29 14:10:19'),
(83, 1, 0, 0, 'dellanguage', 'deletes a language from the player\'s knowledge', '2013-06-29 14:10:19'),
(84, 1, 0, 0, 'aunblindfold', 'unblindfold the player', '2013-06-29 14:10:19'),
(85, 1, 0, 0, 'agivelicense', 'gives the player a license', '2013-06-29 14:10:19'),
(86, 1, 0, 0, 'resetcontract', 'resets the job time limit for a person.', '2013-06-29 14:10:19'),
(87, 1, 0, 0, 'ads', 'Shows all pending adverts.', '2013-06-29 14:10:19'),
(88, 1, 0, 0, 'freezead', 'Freeze an advert.', '2013-06-29 14:10:19'),
(89, 1, 0, 0, 'unfreezead', 'Unfreeze an advert', '2013-06-29 14:10:19'),
(90, 1, 0, 0, 'deletead', 'Delete an advert', '2013-06-29 14:10:19'),
(91, 1, 0, 0, '\'P\'', 'Locks a world item. Make it unpickable.', '2013-06-29 14:10:19'),
(92, 1, 0, 0, 'itemprotect', 'Sets locked world item pickable by faction members.', '2013-06-29 14:10:19'),
(93, 1, 0, 0, 'addii', 'Adds an information marker', '2013-06-29 14:10:19'),
(94, 1, 0, 0, 'delii', 'Deletes an information marker', '2013-06-29 14:10:19'),
(95, 1, 0, 0, 'nearbyii', 'Shows all nearby information markers', '2013-06-29 14:10:19'),
(96, 1, 0, 0, 'makeshop ', 'Creates a NPC.', '2013-06-29 14:10:19'),
(97, 1, 0, 0, 'nearbyshops ', 'Shows all near by NPCs.', '2013-06-29 14:10:19'),
(98, 1, 0, 0, 'gunlist or /gunchart', 'Showing a details weapon\'s properties table with IDs.', '2013-06-29 14:10:19'),
(99, 1, 0, 0, 'setage ', 'Change player\'s age', '2013-06-29 14:10:19'),
(100, 1, 0, 0, 'setrace ', 'Change player\'s race', '2013-06-29 14:10:19'),
(101, 1, 0, 0, 'setheight  ', 'Change player\'s height', '2013-06-29 14:10:19'),
(102, 1, 0, 0, 'setgender  ', 'Change player\'s gender', '2013-06-29 14:10:19'),
(103, 1, 0, 0, 'sll  ', 'Change suspension\'s height', '2013-06-29 14:10:19'),
(104, 1, 0, 0, 'getsll  ', 'Gets suspension\'s height', '2013-06-29 14:10:19'),
(105, 1, 0, 0, 'resetsll', 'Resets suspension\'s height for the current vehicle.', '2013-06-29 14:10:19'),
(106, 1, 0, 0, 'sdt  ', 'Change drivetrain type', '2013-06-29 14:10:19'),
(107, 1, 0, 0, 'getsdt  ', 'Gets drivetrain type', '2013-06-29 14:10:19'),
(108, 1, 0, 0, 'resetsdt', 'Resets drive type for the current vehicle.', '2013-06-29 14:10:19'),
(109, 1, 0, 0, 'skick', 'Silently kick a player', '2013-06-29 14:10:19'),
(110, 1, 0, 0, 'sjail  ', 'Silently jail a player', '2013-06-29 14:10:19'),
(111, 1, 0, 0, 'sjail  ', 'Silently jail a player', '2013-06-29 14:10:19'),
(112, 1, 0, 0, 'stogooc  ', 'Silently toggle global OOC chat', '2013-06-29 14:10:19'),
(113, 1, 0, 0, 'setjob  ', 'Sets player job.', '2013-06-29 14:10:19'),
(114, 1, 0, 0, 'deljob  ', 'Deletes player job.', '2013-06-29 14:10:19'),
(115, 1, 0, 0, 'issuepilotcertificate  ', 'Issues player a pilot license', '2013-06-29 14:10:19'),
(116, 1, 0, 0, 'issuepc  ', 'Issues player a pilot license', '2013-06-29 14:10:19'),
(117, 1, 0, 0, 'items or /itemlist ', 'Opens Item Creator.', '2013-06-29 14:10:19'),
(118, 1, 0, 0, 'settrainrailed ', 'Sets a train off/on the rail.', '2013-06-29 14:10:19'),
(119, 1, 0, 0, 'settraindirection', 'Sets a train direction to (counter)clockwise.', '2013-06-29 14:10:19'),
(120, 1, 0, 0, 'listcarprices', 'Shows an list of vehicles in car dealerships', '2013-06-29 14:10:19'),
(121, 1, 0, 0, 'unflip', 'unflips the car', '2013-06-29 14:10:19'),
(122, 1, 0, 0, 'unlockcivcars', 'unlocks all civilian vehicles', '2013-06-29 14:10:19'),
(123, 1, 0, 0, 'oldcar', 'retrieves the id of the last car you drove', '2013-06-29 14:10:19'),
(124, 1, 0, 0, 'thiscar', 'retrieves the id of your current car', '2013-06-29 14:10:19'),
(125, 1, 0, 0, 'gotocar', 'teleports you to the car with that id', '2013-06-29 14:10:19'),
(126, 1, 0, 0, 'getcar', 'teleports the car to you', '2013-06-29 14:10:19'),
(127, 1, 0, 0, 'nearbyvehicles', 'shows all vehicles within a radius of 20', '2013-06-29 14:10:19'),
(128, 1, 0, 0, 'respawnveh', 'respawns the vehicle with that id', '2013-06-29 14:10:19'),
(129, 1, 0, 0, 'respawnall', 'respawns all vehicles', '2013-06-29 14:10:19'),
(130, 1, 0, 0, 'respawndistrict', 'respawns all vehicles in the district you are in', '2013-06-29 14:10:19'),
(131, 1, 0, 0, 'respawnciv', 'respawns all civilian (job) vehicles', '2013-06-29 14:10:19'),
(132, 1, 0, 0, 'findveh', 'retrieves the model for that vehicle name', '2013-06-29 14:10:19'),
(133, 1, 0, 0, 'fixveh', 'repairs a player\'s vehicle', '2013-06-29 14:10:19'),
(134, 1, 0, 0, 'fixvehs', 'repairs all vehicles', '2013-06-29 14:10:19'),
(135, 1, 0, 0, 'fixvehis', 'fixes the vehicles look, engine may remain broken', '2013-06-29 14:10:19'),
(136, 1, 0, 0, 'blowveh', 'blows up a players car', '2013-06-29 14:10:19'),
(137, 1, 0, 0, 'setcarhp', 'sets the health of a car, full health is 1000.', '2013-06-29 14:10:19'),
(138, 1, 0, 0, 'fuelveh', 'refills a players vehicle', '2013-06-29 14:10:19'),
(139, 1, 0, 0, 'fuelvehs', 'refills all vehicles', '2013-06-29 14:10:19'),
(140, 1, 0, 0, 'setcolor', 'changes the players vehicle colors', '2013-06-29 14:10:19'),
(141, 1, 0, 0, 'getcolor', 'returns the colors of a vehicle', '2013-06-29 14:10:19'),
(142, 1, 0, 0, 'entercar', 'puts the player into the given vehicle at either the specified seat, or if none then the first free seat', '2013-06-29 14:10:19'),
(143, 1, 0, 0, 'getpos', 'outputs your current position, interior and dimension', '2013-06-29 14:10:19'),
(144, 1, 0, 0, 'x', 'increases your x-coordinate by the given value', '2013-06-29 14:10:19'),
(145, 1, 0, 0, 'y', 'increases your y-coordinate by the given value', '2013-06-29 14:10:19'),
(146, 1, 0, 0, 'z', 'increases your z-coordinate by the given value', '2013-06-29 14:10:19'),
(147, 1, 0, 0, 'set*', 'sets your coordinates - available combinations: x, y, z, xyz, xy, xz, yz', '2013-06-29 14:10:19'),
(148, 1, 0, 0, 'reloadint', 'reloads an interior from the database', '2013-06-29 14:10:19'),
(149, 1, 0, 0, 'nearbyints', 'shows nearby interiors', '2013-06-29 14:10:19'),
(150, 1, 0, 0, 'setintname', 'changes an interior name', '2013-06-29 14:10:19'),
(151, 1, 0, 0, 'setfee', 'sets an fee on entering the interior', '2013-06-29 14:10:19'),
(152, 1, 0, 0, 'getintid', 'Gets the interior id', '2013-06-29 14:10:19'),
(153, 1, 0, 0, 'setdim or /setdimension', 'Sets the players dimension id', '2013-06-29 14:10:19'),
(154, 1, 0, 0, 'setint or /setinterior', 'Setst he players interior id', '2013-06-29 14:10:19'),
(155, 1, 0, 0, 'addcandidate', 'add\'s player to election vote list', '2013-06-29 14:10:19'),
(156, 1, 0, 0, 'delcandidate', 'deletes a player to election vote list', '2013-06-29 14:10:19'),
(157, 1, 0, 0, 'showresults', 'shows the results of the election', '2013-06-29 14:10:19'),
(158, 1, 0, 0, 'showfactions', 'shows a list with factions', '2013-06-29 14:10:19'),
(159, 1, 0, 0, ' /respawnfaction', 'respawns faction vehicles', '2013-06-29 14:10:19'),
(160, 1, 0, 0, 'resetbackup', 'Resets PD\'s backup unit', '2013-06-29 14:10:19'),
(161, 1, 0, 0, 'resetassist', 'Resets ES\'s assist system', '2013-06-29 14:10:19'),
(162, 1, 0, 0, 'resettowbackup', 'Resets towing backup system', '2013-06-29 14:10:19'),
(163, 1, 0, 0, 'aremovespikes', 'Removes all the PD spikes', '2013-06-29 14:10:19'),
(164, 1, 0, 0, 'clearnearbytag', 'Clears nearby tag', '2013-06-29 14:10:19'),
(165, 1, 0, 0, 'nearbytags', 'Shows nearby tag and its creators', '2013-06-29 14:10:19'),
(166, 1, 0, 0, 'changelock', 'changes the lock from the vehicle/interior', '2013-06-29 14:10:19'),
(167, 1, 0, 0, 'restartgatekeepers', 'restarts the gatekeepers resource', '2013-06-29 14:10:19'),
(168, 1, 0, 0, 'bury', 'buries the player; removes the ck corpse', '2013-06-29 14:10:19'),
(169, 1, 0, 0, 'listadverts', 'gives a list with recently ran and pending adverts', '2013-06-29 14:10:19'),
(170, 1, 0, 0, 'freeze', 'prevents an ad from being aired, max is 10 minutes.', '2013-06-29 14:10:19'),
(171, 1, 0, 0, 'unfreeze', 'Unfreezes an advert', '2013-06-29 14:10:19'),
(172, 1, 0, 0, 'deletead', 'Marks an ad as aired', '2013-06-29 14:10:19'),
(173, 1, 0, 0, 'resetpos', 'Reset player\'s position, works when player\'s offline.', '2013-06-29 14:10:19'),
(174, 1, 0, 0, 'delsupercar', 'deletes the supercar you\'re in, given that it meets the criteria for deletion.', '2013-06-29 14:07:57'),
(175, 1, 0, 0, 'setbiznote', 'Sets business greeting/notification message.', '2013-06-29 14:07:57'),
(176, 1, 0, 0, 'delitemsfromint [Int ID] [Day old of Items]', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', '2013-06-29 14:07:57'),
(177, 1, 0, 0, 'ints or /interiors', 'Opens Interior Manager.', '2013-06-29 14:07:57'),
(178, 1, 0, 0, 'delint', 'Deletes the interior from game and disables it from loading in next server/resource restarts.', '2013-06-29 14:07:57'),
(179, 1, 0, 0, 'delthisint or /delthisinterior', 'Deletes the interior you\'re currently in it from game and disables it from loading in next server/resource restarts.', '2013-06-29 14:07:57'),
(180, 1, 0, 0, 'restoreint ', 'Restores a deleted interior included safe, items and NPCs inside it.', '2013-06-29 14:07:57'),
(181, 1, 0, 0, 'gotohouse', 'teleports to the house', '2013-06-29 14:07:57'),
(182, 1, 0, 0, 'gotoint', 'teleports to the interior', '2013-06-29 14:07:57'),
(183, 1, 0, 0, 'gotointi', 'teleports inside of an interior', '2013-06-29 14:07:57'),
(184, 1, 0, 0, 'veh', 'spawns a temporary vehicle', '2013-06-29 14:07:57'),
(185, 1, 0, 0, 'resetshopwage', 'Resets all shops wages to $0.', '2013-06-29 14:07:57'),
(186, 1, 0, 0, 'forceupdateshopwage', 'Forces update all shop wages.', '2013-06-29 14:07:57'),
(187, 1, 0, 0, 'delnearbyvehs', 'Deletes all the nearby (temporary) vehicles.', '2013-06-29 14:07:57'),
(188, 1, 0, 0, 'delveh', 'Deletes the (temporary) vehicle with that id', '2013-06-29 14:07:57'),
(189, 1, 0, 0, 'delthisveh', 'Deletes the (temporary) vehicle', '2013-06-29 14:07:57'),
(190, 1, 0, 0, 'restoreveh', 'Restores a deleted vehicle.', '2013-06-29 14:07:57'),
(191, 1, 0, 0, 'makeveh', 'creates a new permanent vehicle', '2013-06-29 14:07:57'),
(192, 1, 0, 0, 'makecivveh', 'creates a new permanent civilian vehicle', '2013-06-29 14:07:57'),
(193, 1, 0, 0, 'addupgrade', 'upgrades a players car', '2013-06-29 14:07:57'),
(194, 1, 0, 0, 'setpaintjob', 'set another paintjob on a vehicle', '2013-06-29 14:07:57'),
(195, 1, 0, 0, 'setvariant', 'set another variant on a vehicle', '2013-06-29 14:07:57'),
(196, 1, 0, 0, 'delupgrade', 'removes a specific upgrade from the player\'s car', '2013-06-29 14:07:57'),
(197, 1, 0, 0, 'resetupgrades', 'removes all upgrades on the player\'s car', '2013-06-29 14:07:57'),
(198, 1, 0, 0, 'aunimpound', 'unimpounds the vehicle from the BTR lot', '2013-06-29 14:07:57'),
(199, 1, 0, 0, 'setvehtint', 'adds or removes vehicle tint', '2013-06-29 14:07:57'),
(200, 1, 0, 0, 'atakelicense', 'revokes the player a license (use full name for offline players', '2013-06-29 14:07:57'),
(201, 1, 0, 0, 'setvehplate', 'changes the plate of a vehicle', '2013-06-29 14:07:57'),
(202, 1, 0, 0, 'setvehfaction', 'changes the owner of a vehicle to a faction, use factionid -1 to set it to yourself', '2013-06-29 14:07:57'),
(203, 1, 0, 0, 'gates', 'Opens Gate Manager', '2013-06-29 14:07:57'),
(204, 1, 0, 0, 'gotogate', 'Teleports to a gate.', '2013-06-29 14:07:57'),
(205, 1, 0, 0, 'delgate', 'Deletes to a gate.', '2013-06-29 14:07:57'),
(206, 1, 0, 0, 'loginto [Exact Character Name] ', 'Logs into an other account\'s character.', '2013-06-29 14:07:57'),
(207, 1, 0, 0, 'forcepayday [Player ID/Name] ', 'Forces a player to get payday.', '2013-06-29 14:04:41'),
(208, 1, 0, 0, 'forcepaydayall ', 'Forces all players to get paydays.', '2013-06-29 14:04:38'),
(209, 1, 0, 0, 'rwarn [warn #]', 'sends a predefined admin warnings or custom admin warning.', '2013-06-29 14:07:57'),
(210, 1, 0, 0, 'soban [Player Username] [Time in Hours, 0 = Infinite] [Reason]', 'Silently bans an offline player.', '2013-06-29 14:07:57'),
(211, 1, 0, 0, 'givesuperman [Player Partial Nick / ID]', 'Gives player temporary ability to fly. Execute the cmd again to revoke the ability. Ability will be automatically gone after player relogs.', '2013-06-29 14:06:01'),
(212, 1, 0, 0, 'sw', 'change the weather', '2013-06-29 14:07:57'),
(213, 1, 0, 0, 'addatm', 'adds an ATM at this spot', '2013-06-29 14:07:57'),
(214, 1, 0, 0, 'delatm', 'deletes an ATM with the id', '2013-06-29 14:07:57'),
(215, 1, 0, 0, 'nearbyatms', 'shows the nearby ATMs', '2013-06-29 14:07:57'),
(216, 1, 0, 0, 'bigears', 'hook yourself between someone\'s chats', '2013-06-29 14:07:57'),
(217, 1, 0, 0, 'bigearsf', 'hook yourself between faction chats', '2013-06-29 14:07:57'),
(218, 1, 0, 0, 'nearbyatms', 'shows the nearby ATMs', '2013-06-29 14:07:57'),
(219, 1, 0, 0, 'gunmaker', 'Opens Weapon Creator', '2013-06-29 14:04:50'),
(220, 1, 0, 0, 'makepaynspray', 'creates an pay n spray', '2013-06-29 14:07:57'),
(221, 1, 0, 0, 'nearbypaynsprays', 'shows nearby pay n sprays', '2013-06-29 14:07:57'),
(222, 1, 0, 0, 'delpaynspray', 'deletes an pay n spray', '2013-06-29 14:07:57'),
(223, 1, 0, 0, 'addphone', 'creates a public phone', '2013-06-29 14:07:57'),
(224, 1, 0, 0, 'nearbyphones', 'shows nearby public phone', '2013-06-29 14:07:57'),
(225, 1, 0, 0, 'delphone', 'deletes a public phone', '2013-06-29 14:07:57'),
(226, 1, 0, 0, 'enableallelevators', 'enables all elevators', '2013-06-29 14:07:57'),
(227, 1, 0, 0, 'addint', 'adds an interior', '2013-06-29 14:07:57'),
(228, 1, 0, 0, 'sellproperty', 'sells an interior', '2013-06-29 14:07:57'),
(229, 1, 0, 0, 'delint', 'deletes an interior', '2013-06-29 14:07:57'),
(230, 1, 0, 0, 'getintid', 'shows the current interior', '2013-06-29 14:07:57'),
(231, 1, 0, 0, 'setintid', 'changes the interior', '2013-06-29 14:07:57'),
(232, 1, 0, 0, 'getintprice', 'shows the interiors price', '2013-06-29 14:07:57'),
(233, 1, 0, 0, 'setintprice', 'changes the interiors price', '2013-06-29 14:07:57'),
(234, 1, 0, 0, 'getinttype', 'shows the interiors type', '2013-06-29 14:07:57'),
(235, 1, 0, 0, 'setinttype', 'changes the interiors type', '2013-06-29 14:07:57'),
(236, 1, 0, 0, 'togint', 'sets the interior enabled or disabled', '2013-06-29 14:07:57'),
(237, 1, 0, 0, 'enableallinteriors', 'enables all the interiors', '2013-06-29 14:07:57'),
(238, 1, 0, 0, 'setintexit', 'changes an interior exit marker', '2013-06-29 14:07:57'),
(239, 1, 0, 0, 'setintentrance', 'changes an interior entrance marker', '2013-06-29 14:07:57'),
(240, 1, 0, 0, 'fsell', 'force-sells an interior', '2013-06-29 14:07:57'),
(241, 1, 0, 0, 'setfactionleader', 'puts a player into a faction and makes the player leader', '2013-06-29 14:07:57'),
(242, 1, 0, 0, 'setfactionrank', 'sets a player to a specific faction rank', '2013-06-29 14:07:57'),
(243, 1, 0, 0, 'makefaction', 'creates a faction', '2013-06-29 14:07:57'),
(244, 1, 0, 0, 'renamefaction', 'renames a faction', '2013-06-29 14:07:57'),
(245, 1, 0, 0, 'setfaction', 'puts an player into a faction', '2013-06-29 14:07:57'),
(246, 1, 0, 0, 'delfaction', 'deletes a faction', '2013-06-29 14:07:57'),
(247, 1, 0, 0, 'addfuelpoint', 'creates a new fuelpoint', '2013-06-29 14:07:57'),
(248, 1, 0, 0, 'nearbyfuelpoints', 'shows nearby fuelpoints', '2013-06-29 14:07:57'),
(249, 1, 0, 0, 'delfuelpoint', 'deletes a fuelpoint', '2013-06-29 14:07:57'),
(250, 1, 0, 0, 'ck', 'permanently kills the character; spawns a corpse at the location the player is at', '2013-06-29 14:07:57'),
(251, 1, 0, 0, 'unck', 'reverts a character kill', '2013-06-29 14:07:57'),
(252, 1, 0, 0, 'makegun', 'gives the player the specified weapon item', '2013-06-29 14:07:57'),
(253, 1, 0, 0, 'makeammo', 'gives the player the specified ammo item', '2013-06-29 14:07:57'),
(254, 1, 0, 0, 'setmoney', 'sets the players money to that value', '2013-06-29 14:07:57'),
(255, 1, 0, 0, 'givemoney', 'gives the player money in addition to his current cash', '2013-06-29 14:07:57'),
(256, 1, 0, 0, 'resetcharacter', 'fully resets the character', '2013-06-29 14:07:57'),
(257, 1, 0, 0, 'setvehlimit', 'Set the players vehicle limit.', '2013-06-29 14:07:57'),
(258, 1, 0, 0, 'adminstats', 'shows admin stats', '2013-06-29 14:07:57'),
(259, 1, 0, 0, 'removeshop', 'Deletes a NPC from SQL.', '2013-06-29 14:07:57'),
(260, 1, 0, 0, 'forcesellinactiveints', 'Force-sells All inactive interiors.', '2013-06-29 14:07:57'),
(261, 1, 0, 0, 'removeinactiveints', 'Removes All inactive interiors completedly and permanently from SQL.', '2013-06-29 14:07:57'),
(262, 1, 0, 0, 'removedeletedints', 'Removes All deleted interiors completedly and permanently from SQL.', '2013-06-29 14:07:57'),
(263, 1, 0, 0, 'removeforsaleints', 'Removes All for-sale interiors completedly and permanently from SQL.', '2013-06-29 14:07:57'),
(264, 1, 0, 0, 'delallitems [Item ID] [Item Value]', 'Deletes all the item instances from everywhere in game.', '2013-06-29 14:07:57'),
(265, 1, 0, 0, 'removeint [ID]', 'Deletes the interior from game and erases all the data from database completely and permanently include NPCs, items, safe and items inside the safe. If the deleted interior is a custom interior, the custom map will be gone forever.', '2013-06-29 14:07:57'),
(266, 1, 0, 0, 'removeveh [ID]', 'Removes the vehicle from game and erases all the data from database completely and permanently include items inside. ', '2013-06-29 14:07:57'),
(267, 1, 0, 0, 'givedonPoints', 'awards a player donPoints', '2013-06-29 14:07:57'),
(268, 1, 0, 0, 'givestattransfer', 'awards a player stat transfers', '2013-06-29 14:07:57'),
(269, 1, 0, 0, 'hideadmin', 'toggles hidden/visible the admin status', '2013-06-29 14:07:57'),
(270, 1, 0, 0, 'ho', 'send global ooc as hidden admin', '2013-06-29 14:07:57'),
(271, 1, 0, 0, 'hw', 'send a pm as hidden admin', '2013-06-29 14:07:57'),
(272, 1, 0, 0, 'makeadmin', 'gives the player an admin rank', '2013-06-29 14:07:57'),
(273, 1, 0, 0, 'setaccountpassword', 'sets player\'s account password', '2013-06-29 14:07:57'),
(274, 1, 0, 0, 'toga', 'Toggles admin chat.', '2013-06-29 14:07:57'),
(275, 1, 0, 0, 'togg', 'Toggles gamemaster chat.', '2013-06-29 14:07:57'),
(276, 1, 0, 0, 'startres', 'starts the resource', '2013-06-29 14:07:57'),
(277, 1, 0, 0, 'stopres', 'stops the resource', '2013-06-29 14:07:57'),
(278, 1, 0, 0, 'restartres', 'restarts the resource', '2013-06-29 14:07:57'),
(279, 1, 0, 0, 'rescheck', 'checks for ceatain down resources and startes them', '2013-06-29 14:07:57'),
(280, 1, 0, 0, 'rcs', 'check if the resource \"Resource-Keeper\" is running', '2013-06-29 14:07:57'),
(281, 1, 0, 0, 'generatecode', 'generates a donation code', '2013-06-29 14:03:22'),
(282, 1, 0, 0, 'setdamageproof', 'makes a vehicle damageproof', '2013-06-29 14:07:57'),
(283, 0, 0, 0, 'delitemsfromint', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', '2013-06-29 14:07:57'),
(285, 1, 0, 0, 'aordersupplies', 'Orders supplies from RS Haul for the current interior without yourself being charged.', '2013-06-29 14:10:19'),
(286, 1, 0, 0, 'setjoblevel', 'Sets player\'s city hall job\'s level and progress', '2013-06-29 14:07:57'),
(287, 1, 0, 0, 'respawntrucks', 'Respawns all unoccupied Delivery Trucks', '2013-06-29 14:10:19'),
(288, 1, 0, 0, 'checkactiveroutes', 'Shows all Delivery Job\'s routes that has player working on', '2013-06-29 14:07:57'),
(289, 1, 0, 0, 'fetchactualorders', 'Fetches player\'s Supplies Orders from SQL to game manually (Normally it\'s auto-fetched every 10 minutes)', '2013-06-29 14:07:57'),
(290, 1, 0, 0, 'addactualorder', 'Creates a marker for Delivery Job, it looks exactly the same as actual order from other player.', '2013-06-29 14:07:57'),
(291, 1, 0, 0, 'addtruckerjobmarker', 'Creates a generic drop-off marker for Delivery Driver job.', '2013-06-29 14:07:57'),
(292, 1, 0, 0, 'showactualorders', 'Shows Delivery Job\'s actual supply orders from players.', '2013-06-29 14:07:57'),
(293, 1, 0, 0, 'showalltruckmarkers', 'Shows all Delivery Job drop-off markers (both generic markers and actual order markers)', '2013-06-29 14:07:57'),
(294, 1, 0, 0, 'skiproute', 'Skips Delivery Job\'s current route, jump instantly to next spot (Useful when creating job markers)', '2013-06-29 14:07:57'),
(295, 1, 0, 0, 'resetaccount', 'Reset one character or all characters within an account.', '2013-06-29 14:07:57'),
(296, 1, 0, 0, 'deltruckmarker', 'Deletes a Delivery Job\'s marker', '2013-06-29 14:07:57'),
(297, 1, 0, 0, 'aheal', 'Gives yourself full HP, or /aheal [ID] to give it someone else', '2013-06-29 14:10:19'),
(298, 2, 0, 0, 'showadminreports', 'Subscribes to admin reports.', '2013-06-29 14:10:19'),
(300, 2, 0, 0, 'ads', 'Shows all pending adverts.', '2013-06-29 14:10:19'),
(301, 2, 0, 0, 'freezead', 'Freeze an advert.', '2013-06-29 14:10:19'),
(302, 2, 0, 0, 'unfreezead', 'Unfreeze an advert', '2013-06-29 14:10:19'),
(303, 2, 0, 0, 'deletead', 'Delete an advert', '2013-06-29 14:10:19'),
(304, 2, 0, 0, 'gmlounge', 'Teleports you to the GM lounge.', '2013-06-29 14:10:19'),
(305, 2, 0, 0, 'g [Text]', 'Talk in GM chat for communication with admins.', '2013-06-29 14:10:19'),
(306, 2, 0, 0, 'ar', 'Accept a report.', '2013-06-29 14:10:19'),
(307, 2, 0, 0, 'cr', 'Close a report.', '2013-06-29 14:10:19'),
(308, 2, 0, 0, 'dr', 'Drop a report, leaving it unanswered.', '2013-06-29 14:10:19'),
(309, 2, 0, 0, 'fr', 'Mark a report false', '2013-06-29 14:10:19'),
(310, 2, 0, 0, 'ur', 'Shows all unanswered reports.', '2013-06-29 14:10:19'),
(311, 2, 0, 0, 'gmduty', 'Toggles GM duty (On/off)', '2013-06-29 14:10:19'),
(312, 2, 0, 0, 'goto', 'Teleport to a player\'s location.', '2013-06-29 14:10:19'),
(313, 2, 0, 0, 'gotoplace', 'Teleport to a pre-determined place.', '2013-06-29 14:10:19'),
(314, 2, 0, 0, 'mark', 'Create a mark for you to teleport to (doing /mark without a name will create a temporary one)', '2013-06-29 14:10:19'),
(315, 2, 0, 0, 'togautocheck', 'Toogles auto opening player /check on /ar reports.', '2013-06-29 14:10:19'),
(316, 2, 0, 0, 'gotomark', 'Teleport to a pre-made mark (/gotomark without a mark name teleports to a temporary one)', '2013-06-29 14:10:19'),
(317, 2, 0, 0, 'setjob', 'Sets player job.', '2013-06-29 14:10:19'),
(318, 2, 0, 0, 'deljob', 'Deletes player job', '2013-06-29 14:10:19'),
(319, 2, 0, 0, 'freeze', 'Freeze a player.', '2013-06-29 14:07:57'),
(320, 2, 0, 0, 'unfreeze', 'Unfreeze a frozen player.', '2013-06-29 14:07:57'),
(321, 2, 0, 0, 'gethere', 'Teleports a player to your location.', '2013-06-29 14:07:57'),
(322, 2, 0, 0, 'togpm', 'Disables your pm\'s.', '2013-06-29 14:07:57'),
(332, 2, 0, 0, 'makeadmin', 'gives the player an gm rank', '2013-06-29 14:07:57'),
(335, 1, 0, 0, 'forceapp', 'Force player that doesn\'t meet server standards -and- not willing to improve out of game.', '2013-06-29 14:10:19'),
(336, 2, 0, 0, 'forceapp', 'Force player that doesn\'t meet server standards -and- not willing to improve out of game.', '2013-06-29 14:07:57'),
(337, 2, 0, 0, 'check', 'Display details information of a player', '2013-06-29 14:10:19'),
(338, 1, 0, 0, 'checkinteriors', 'To check for custom int requests', '2013-06-29 14:07:57'),
(339, 1, 0, 0, 'testinterior', 'Test the custom interior', '2013-06-29 14:07:57'),
(340, 1, 0, 0, 'Savetestinterior', 'Save the tested interior', '2013-06-29 14:07:57'),
(341, 1, 0, 0, 'deltestinterior', 'Deletes the tested interior', '2013-06-29 14:07:57'),
(342, 1, 0, 0, 'renameshop', 'or /renameped or /renamenpc, it renames NPCs in format of \'First Lastname\'', '2013-06-29 14:10:19'),
(343, 2, 0, 0, 'renameshop', 'or /renameped or /renamenpc, it renames NPCs in format of \'First Lastname\'', '2013-06-29 14:10:19'),
(344, 2, 0, 0, 'nearbyshops', 'Gets near by NPC\'s info', '2013-06-29 14:10:19'),
(345, 1, 0, 0, 'togoverlay', 'Toggles overlay menus on top or buttom of screen. If it\'s disabled, the content will be all printed to chatbox.', '2013-06-29 14:10:19'),
(346, 2, 0, 0, 'togoverlay', 'Toggles overlay menus on top or buttom of screen. If it\'s disabled, the content will be all printed to chatbox.', '2013-06-29 14:10:19'),
(347, 1, 0, 0, 'iastats', 'Returns reports done and hours played for specified user. Makes inputting to IA website easier.', '2013-06-29 14:07:57'),
(348, 1, 0, 0, '\'F5\'', 'Toggles Report Panel', '2013-06-29 14:10:19'),
(349, 2, 0, 0, '\'F5\'', 'Toggles Report Panel', '2013-06-29 14:10:19'),
(350, 1, 0, 0, 'settrackingloc', 'Use this command to define where the tracking device in the vehicle is installed.', '2013-06-29 14:10:19'),
(351, 3, 0, 0, 'settrackingloc', 'Use this command to define where the tracking device in the vehicle is installed.', '2013-06-29 14:10:19'),
(352, 1, 0, 0, 'gettrackingloc', 'Use this command to check where a tracking device has been installed.', '2013-06-29 14:10:19'),
(353, 1, 0, 0, 'infract', 'Gives an infraction to an administrator.', '2013-06-29 14:07:57'),
(354, 1, 0, 0, 'iahistory', 'View an administrators IA history.', '2013-06-29 14:07:57'),
(355, 1, 0, 0, 'Double right click an IA history entry', 'Removes an IA history entry.', '2013-06-29 14:10:19'),
(356, 1, 0, 0, 'awarn', 'Gives an warning to an administrator.', '2013-06-29 14:07:57'),
(357, 1, 0, 0, 'suspend [player] [hours]', 'Use this command to suspend an administrator.', '2013-06-29 14:07:57'),
(358, 1, 0, 0, 'hashtransactionid', 'Hashes a transaction ID from PayPal into the proper format for donation key.', '2013-06-29 14:07:57'),
(359, 1, 0, 0, 'unsuspend', 'Unsuspends an administrator.', '2013-06-29 14:07:57'),
(360, 2, 0, 0, 'respawnveh', '/respawnveh [Vehicle ID] - To respawn a vehicle', '2013-06-29 14:07:57'),
(361, 1, 1, 0, '/check', 'Checks a players information', '2013-07-04 22:49:57'),
(362, 1, 1, 0, '/gethere', 'Teleports a player to you.', '2013-07-04 22:50:33'),
(363, 1, 1, 0, '/goto', 'Teleports you to a player', '2013-07-04 22:50:43'),
(364, 1, 1, 0, '/adminduty', 'Places you on/off Admin duty', '2013-07-04 22:52:24'),
(365, 1, 1, 0, '/warn', 'Warns a player (3 warns = perm ban)', '2013-07-04 22:52:39'),
(366, 1, 1, 0, '/jail', 'Jails a naughty player', '2013-07-04 22:52:58'),
(367, 1, 1, 0, '/sjail', 'Silently jails a player', '2013-07-04 22:53:53'),
(368, 1, 1, 0, '/ojail', 'Offline jails a player', '2013-07-04 22:54:11'),
(369, 1, 1, 0, '/sojail', 'Silently Offline jails a player', '2013-07-04 22:54:36'),
(370, 1, 1, 0, '/unjail', 'Unjails a player from admin jail.', '2013-07-04 22:54:53'),
(371, 1, 1, 0, '/sban [Player Partial Nick / ID] [Time in Hours, 0 = Infinite] [Reason]', 'Silently bans a player', '2013-07-04 22:59:25'),
(372, 1, 1, 0, '/soban', 'Silently offline bans a player', '2013-07-04 22:57:26'),
(373, 1, 1, 0, '/Trace', 'traces a phone number and tells you who owns it. Player must be online.', '2013-07-04 22:57:26'),
(374, 1, 1, 0, '/oban [Player Partial Nick / ID] [Time in Hours (0 = Perma)] [Reason]', 'Offline Bans a player', '2013-07-04 23:00:24'),
(375, 1, 1, 0, '/getkey', 'Spawns yourself a key of interior or vehicle that you\'re currently in.', '2013-07-04 22:57:47'),
(376, 1, 1, 0, '/cr [Report ID]', 'without specified ID will closes all your own accepted reports.', '2013-07-04 23:00:03'),
(377, 1, 1, 0, '/createemitter [Emitter Type]', 'Spawns Synced Fire/Water Emitters', '2013-07-04 22:58:32'),
(378, 1, 1, 0, '/history [Partial Player Nick / ID]', 'Checks a players admin history', '2013-07-04 22:59:53'),
(379, 1, 3, 0, '/makeveh', 'Makes a permanent vehicle.', '2013-07-04 22:59:32'),
(380, 1, 3, 0, '/makecivveh', 'Makes a civillian vehicle.', '2013-07-04 23:13:24'),
(381, 1, 1, 0, '/respawnall', 'Respawns all vehicles in the server (/respawnall', '2013-07-04 23:01:48'),
(382, 1, 1, 0, '/respawnciv', 'Respawns all civilian vehicles in the server (/respawnciv)', '2013-07-04 23:01:39'),
(383, 1, 1, 0, '/superman', 'Makes you superman! ', '2013-07-05 19:30:51'),
(384, 1, 5, 0, '/iahistory', 'Checks a administrators IA history', '2013-07-04 23:03:01'),
(385, 1, 5, 0, '/makeadmin ', 'Sets a players admin level ', '2013-07-04 23:03:27'),
(386, 1, 2, 0, '/delsupercar', 'deletes the supercar you\'re in, given that it meets the criteria for deletion.', '2013-07-04 23:03:41'),
(387, 1, 5, 0, '/generatecode', 'Generates a donation code', '2013-07-04 23:03:53'),
(388, 1, 2, 0, '/setbiznote [Message]', 'Sets business greeting/notification message.', '2013-07-04 23:03:58'),
(389, 1, 2, 0, '/delitemsfromint [Int ID] [Day old of Items]', 'Deletes all the items within a specified interior that older than an interval of item\'s day old.', '2013-07-04 23:04:14'),
(390, 1, 2, 0, '/ints or /interiors', 'Opens Interior Manager.', '2013-07-04 23:04:30'),
(391, 1, 2, 0, '/delint', 'Deletes the interior from game and disables it from loading in next server/resource restarts.', '2013-07-04 23:04:40'),
(392, 1, 2, 0, '/delthisint or /delthisinterior', 'Deletes the interior you\'re currently in it from game and disables it from loading in next server/resource restarts.', '2013-07-04 23:04:56'),
(393, 1, 2, 0, '/restoreint', 'Restores a deleted interior included safe, items and NPCs inside it.', '2013-07-04 23:05:12'),
(394, 1, 2, 0, '/gotohouse', 'teleports to the house', '2013-07-04 23:05:26'),
(395, 1, 2, 0, '/gotoint', 'teleports to the interior', '2013-07-04 23:05:38'),
(396, 1, 2, 0, '/gotointi', 'teleports inside of an interior', '2013-07-04 23:05:52'),
(397, 1, 2, 0, '/veh', 'spawns a temporary vehicle', '2013-07-04 23:06:03'),
(398, 1, 1, 0, '/nearbyvehicles', 'Gets nearbyvehicles ID - MODEL - OWNER', '2013-07-04 23:06:29'),
(399, 1, 1, 0, '/nearbyitems', 'Gets nearby items', '2013-07-04 23:07:14'),
(400, 1, 1, 0, '/entercar', 'Enters you into a vehicles seat. 0 - Driver', '2013-07-04 23:07:50'),
(401, 1, 1, 0, '/ann', 'Makes an admin announcement to the server', '2013-07-04 23:12:46'),
(402, 1, 1, 0, '/fuelveh ', 'Fuels a players vehicle', '2013-07-04 23:17:38'),
(403, 1, 1, 0, '/fuelvehs', 'Fuels all the vehicles in the server', '2013-07-04 23:18:00'),
(404, 1, 1, 0, '/fixveh', 'Fixes a players vehicle', '2013-07-04 23:18:20'),
(405, 1, 1, 0, '/fixvehs', 'Fixes all the vehicles in the server.', '2013-07-04 23:18:29'),
(407, 1, 1, 0, '/checkveh', 'Checks a vehicles note', '2013-07-04 23:29:34'),
(408, 1, 1, 0, '/checkint', 'Checks the interiors note.', '2013-07-04 23:29:42'),
(409, 1, 5, 0, '/loginto', 'Logs into a players character', '2013-07-04 23:30:19'),
(410, 1, 4, 0, '/bigears', 'Listens to a players PM\'s', '2013-07-04 23:42:16'),
(411, 1, 4, 0, '/bigearsf', 'Listens to a faction\'s OOC /f chat', '2013-07-04 23:42:32'),
(412, 1, 4, 0, '/resetaccount', 'Resets the entire account of a player', '2013-07-04 23:42:53'),
(413, 1, 4, 0, '/resetcharacter', 'Resets a players character', '2013-07-04 23:44:09'),
(414, 1, 4, 0, '/adminstats', 'Checks the admin statistics', '2013-07-04 23:45:43'),
(415, 1, 2, 0, '/addinterior', 'Creates an interior', '2013-07-04 23:57:02'),
(416, 1, 2, 0, '/setinteriorid', 'Sets the interiors ID', '2013-07-04 23:57:22'),
(417, 1, 2, 0, '/setinteriorprice', 'Sets the interiors price.', '2013-07-04 23:57:33'),
(418, 1, 5, 0, '/hideadmin', 'Appears hidden on /admin list.', '2013-07-05 00:10:02'),
(419, 1, 5, 0, '/ho', 'Sends a hidden announcement.', '2013-07-05 00:10:13'),
(420, 1, 1, 0, '/sdt', 'Sets a vehicle\'s drive terrain', '2013-07-05 11:31:47'),
(421, 1, 1, 0, '/sll', 'Sets a vehicle\'s height', '2013-07-05 11:32:09'),
(422, 1, 1, 0, '/adminlounge', 'Teleports you to the administration lounge', '2013-07-05 11:32:29'),
(423, 1, 1, 0, '/stopradiodistrict', 'Turns the radio off for all cars in a district.', '2013-07-05 11:33:13'),
(424, 1, 1, 0, '/findserial', 'Finds a players MTA Serial', '2013-07-05 11:33:27'),
(425, 1, 1, 0, '/findip ', 'Finds a players IP', '2013-07-05 11:33:36'),
(426, 1, 1, 0, '/findalts', 'Finds all charracters of a players account', '2013-07-05 11:33:54'),
(427, 1, 1, 0, '/restartcarshops', 'Resets the vehicles at the carshops', '2013-08-18 19:08:15'),
(428, 1, 1, 0, '/listcarprices', 'Lists all the vehicles spawned at the dealerships', '2013-07-05 11:37:32'),
(429, 1, 1, 0, '/makeshop', 'Creates an NPC', '2013-07-05 11:38:06'),
(430, 1, 1, 0, '/restartparachute', 'Restarts the parachute resource.', '2013-07-05 11:44:06'),
(431, 1, 3, 0, '/setpaintjob', 'Sets a vehicles paintjob', '2013-07-05 11:47:12'),
(432, 1, 3, 0, '/setvehtint', 'Sets a vehicles tint', '2013-07-05 11:47:21'),
(433, 1, 5, 0, '/hw', 'Sends a hidden admin PM', '2013-07-05 17:45:43'),
(434, 1, 1, 0, '/slap', 'Slaps a player', '2013-07-05 11:53:08'),
(435, 1, 1, 0, '/sethp', 'Sets a players HP', '2013-07-05 11:53:17'),
(436, 1, 1, 0, '/setcarhp', 'Sets a vehicle HP', '2013-07-05 11:53:30'),
(437, 1, 1, 0, '/aheal', 'Heals a player', '2013-07-05 11:53:39'),
(438, 1, 1, 0, '/togooc', 'Toggles the global OOC Chat', '2013-07-05 11:54:38'),
(439, 1, 1, 0, '/stogooc', 'Silently toggles the global OOC Chat', '2013-07-05 11:54:48'),
(440, 1, 1, 0, '/freconnect', 'Force reconnects a player', '2013-07-05 11:56:40'),
(441, 1, 1, 0, '/pkick', 'Kicks a player from the server', '2013-07-05 11:56:52'),
(442, 1, 1, 0, '/skick', 'Kicks a player from the server silently', '2013-07-05 11:57:00'),
(443, 1, 1, 0, '/delshop', 'Removes a NPC Shop', '2013-07-05 12:07:08'),
(444, 1, 4, 0, '/makepaynspray', 'Creates a pay n spray', '2013-07-05 12:07:54'),
(445, 1, 4, 0, '/delpaynspray', 'Deletes a pay n spray', '2013-07-05 12:08:08'),
(446, 1, 4, 0, '/addspeedcam', 'Creates a speedcam', '2013-07-05 12:08:26'),
(447, 1, 1, 0, '/togoverlay', 'Moves the GUI of /admins to your chatbox', '2013-07-05 12:10:59'),
(448, 1, 1, 0, '/changewarnstyle', 'Moves the warning style to your chatbox or right side of the screen', '2013-07-05 12:11:27'),
(449, 1, 1, 0, '/getpos', 'Gets your position', '2013-07-05 12:14:35'),
(452, 1, 1, 0, '/itemprotect', 'Sets locked world item pickable by..', '2013-07-05 12:15:33'),
(453, 1, 1, 0, '/ads', 'Shows all pending adverts.', '2013-07-05 12:15:57'),
(454, 1, 1, 0, '/delad', 'Deletes an advert', '2013-07-05 12:16:17'),
(455, 1, 1, 0, '/freezead', 'Freezes an advert', '2013-07-05 12:16:31'),
(456, 1, 1, 0, '/unfreezead', 'Unfreezes an advert', '2013-07-05 12:16:42'),
(457, 1, 1, 0, '/agivelicense', 'Gives a player a license', '2013-07-05 12:16:58'),
(458, 1, 1, 0, '/mark', 'Marks a position ', '2013-07-05 12:17:36'),
(459, 1, 1, 0, '/gotomark', 'TP\'s you to that mark', '2013-07-05 12:17:52'),
(460, 1, 1, 0, '/amotd', 'Displays the admin message of the day', '2013-07-05 12:18:10'),
(461, 1, 1, 0, '/setamotd', 'Sets the admin message of the day', '2013-07-05 12:18:20'),
(462, 1, 1, 0, '/setmotd', 'Sets the message of the day', '2013-07-05 12:18:37'),
(463, 1, 1, 0, '/disappear', 'Turns you invisible', '2013-07-05 12:19:28'),
(464, 1, 1, 0, '/jailed', 'Shows all players in admin & PD Jail', '2013-07-05 12:19:47'),
(465, 1, 1, 0, '/unjail', 'Releases a player from admin jail.', '2013-07-05 12:19:56'),
(466, 1, 1, 0, '/changename', 'Changes the name of a character.', '2013-07-05 12:20:18'),
(467, 1, 1, 0, '/bury', 'Removes a CK\'ed body', '2013-07-05 12:20:35'),
(468, 1, 1, 0, '/gotoplace', 'Teleports you to several marked places.', '2013-07-05 12:20:54'),
(469, 1, 1, 0, '/freeze', 'Freezes a player', '2013-07-05 12:21:09'),
(470, 1, 1, 0, '/unfreeze', 'unfreezes a player', '2013-07-05 12:21:23'),
(471, 1, 1, 0, '/stats', 'Checks a players stats.', '2013-07-05 12:22:01'),
(472, 1, 1, 0, '/auncuff', 'Uncuffs a player', '2013-07-05 12:22:28'),
(473, 1, 1, 0, '/spinout', 'Spins a players vehicle out.', '2013-07-05 12:42:06'),
(474, 1, 1, 0, '/recon', 'Recons a player', '2013-07-05 13:12:04'),
(475, 1, 1, 0, '/fuckrecon', 'Stops reconning a player', '2013-07-05 13:12:20'),
(476, 1, 2, 0, '/forcesell', 'Force sells an inactive interior', '2013-07-05 13:28:11'),
(477, 1, 3, 0, '/setvarient', 'Sets different varibles for a vehicle', '2013-07-05 13:46:14'),
(479, 1, 1, 0, '/setcolor', 'Sets the vehicles color', '2013-07-05 13:46:40'),
(480, 1, 1, 0, '/getcolor', 'Gets the vehicles color', '2013-07-05 13:46:49'),
(481, 1, 5, 0, '/restartres', 'Restarts a resource', '2013-07-05 13:58:01'),
(482, 1, 5, 0, '/rescheck', 'Runs the resource checker', '2013-07-05 13:58:17'),
(483, 1, 1, 0, '/itemlist', 'Displays all items.', '2013-07-05 14:01:44'),
(484, 1, 1, 0, '/delnearbyitems', 'Deletes all the items near you.', '2013-07-05 14:02:17'),
(485, 1, 1, 0, '/delitem', '/delitem <ID> ', '2013-07-05 14:02:34'),
(486, 1, 1, 0, '/showfactions', 'Displays a list of all factions.', '2013-07-05 14:03:26'),
(487, 1, 1, 0, '/respawnfaction', 'Respawns all vehicles for that faction.', '2013-07-05 14:03:45'),
(488, 1, 1, 0, '/blowveh', 'Blows the players vehicle up.', '2013-07-05 14:04:19'),
(489, 1, 1, 0, '/setheight', 'Sets a players character height', '2013-07-05 14:04:36'),
(490, 1, 1, 0, '/setrace', 'Sets a players character race', '2013-07-05 14:04:48'),
(491, 1, 1, 0, '/setage', 'Sets a players character age', '2013-07-05 14:04:55'),
(492, 1, 4, 0, '/gunmaker or \"F4\"', 'Displays the weapon creator', '2013-07-05 14:05:39'),
(493, 1, 1, 0, '/freecam', 'Sets you to freecam mode.', '2013-07-05 14:05:56'),
(494, 1, 1, 0, '/dropme', 'Drops you where you freecam', '2013-07-05 14:06:06'),
(495, 1, 1, 0, 'Hold P and click', 'Locks a world item. Make it unpickable', '2013-07-05 14:06:38'),
(496, 1, 1, 0, '/unban', 'Unbans a player', '2013-07-05 14:07:13'),
(497, 1, 1, 0, '/unbanserial', 'Unbans a players serial', '2013-07-05 14:07:21'),
(498, 1, 1, 0, '/unbanip', 'Unbans a players IP', '2013-07-05 14:07:28'),
(499, 1, 1, 0, '/ar', 'Accepts a report', '2013-07-05 14:07:57'),
(500, 1, 1, 0, '/cr', 'Closes a report', '2013-07-05 14:08:04'),
(501, 1, 1, 0, '/fr', 'Falses a report', '2013-07-05 14:08:12'),
(502, 1, 4, 0, '/hashtransactionid', 'Hashes a transaction IDI', '2013-07-05 14:09:18'),
(503, 1, 1, 0, '/giveitem', 'Gives a player an item.', '2013-07-05 14:09:42'),
(504, 1, 1, 0, '/takeitem', 'Takes a item from a players inventory', '2013-07-05 14:09:53'),
(505, 1, 1, 0, '/setskin ', 'Sets a players skin.', '2013-07-05 14:10:06'),
(506, 1, 1, 0, '/setarmor', 'Sets a players armor.', '2013-07-05 14:10:25'),
(507, 1, 1, 0, '/disarm', 'Disarms a player.', '2013-07-05 14:10:36'),
(508, 1, 1, 0, '/sendto', 'Sends a player to another player', '2013-07-05 14:12:51'),
(509, 1, 1, 0, '/showinv', 'Shows the inventory of a player.', '2013-07-05 14:13:24'),
(510, 1, 2, 0, '/restoreveh', 'Restores a deleted vehicle.', '2013-07-05 14:15:36'),
(511, 1, 1, 0, '/addelevator', 'Adds a elevator from A to B', '2013-07-05 14:21:18'),
(512, 1, 1, 0, '/restartgatekeepers', 'Restarts the gatekeepers resource', '2013-07-05 14:17:30'),
(513, 1, 1, 0, '/changelock', 'Deletes all old keys and gives you a new one', '2013-07-05 14:17:53'),
(514, 1, 2, 0, '/createemitter', 'Creates a fire/water emitter', '2013-07-05 14:25:41'),
(515, 1, 4, 0, '/delspeedcam', 'Deletes a speedcam', '2013-07-05 14:30:08'),
(516, 1, 1, 0, '/delallrbs', 'Deletes all roadblocks in the server', '2013-07-05 14:30:52'),
(517, 1, 1, 0, '/aremovespikes', 'Deletes all roadspikes in the server.', '2013-07-05 14:31:03'),
(518, 1, 1, 0, '/reloadint', 'Reloads a bugged interior.', '2013-07-05 14:31:34'),
(519, 1, 1, 0, '/respawndistrict', 'Respawns the vehicles in a district', '2013-07-05 14:33:02'),
(520, 1, 1, 0, '/unflip', 'Unflips a players vehicle', '2013-07-05 14:33:24'),
(521, 1, 1, 0, '/issuepc', 'Issues a pilot certificate to a player.', '2013-07-05 14:34:11'),
(522, 1, 1, 0, '/setjob', 'Sets a players job', '2013-07-05 14:34:38'),
(523, 1, 1, 0, '/deljob', 'Deletes a players job', '2013-07-05 14:34:53'),
(524, 1, 1, 0, '/setlanguage', 'Sets a players language', '2013-07-05 14:35:16'),
(525, 1, 1, 0, '/aunblindfold', 'Unblindfolds a player', '2013-07-05 14:35:51'),
(526, 1, 1, 0, '/pmute', 'Mutes a player from OOC Chat.', '2013-07-05 14:36:42'),
(527, 1, 4, 0, '/l ', 'Lead Admin Chat', '2013-07-05 14:37:16'),
(528, 1, 5, 0, '/h', 'Head Admin Chat', '2013-07-05 14:37:24'),
(529, 1, 1, 0, '/ur', 'Displays unawnsered reports.', '2013-07-05 14:37:58'),
(530, 1, 2, 0, '/togint', 'Toggles the interior to disabled', '2013-07-08 16:06:04'),
(532, 1, 1, 0, '/togautocheck', 'Toggles the /check to appear upon accepting a report.', '2013-07-05 15:06:15'),
(533, 1, 2, 0, '/restoreint', 'Restores a deleted interior', '2013-07-05 15:14:52'),
(534, 1, 1, 0, '/aordersupplies', 'Orders supplies to a shop', '2013-07-05 15:19:47'),
(535, 1, 1, 0, '/cleannearbytag', 'Cleans a nearby spray tag', '2013-07-05 16:21:19'),
(536, 1, 1, 0, '/nearbytags', 'Shows all nearby tags.', '2013-07-05 16:25:34'),
(537, 1, 1, 0, '/findveh', 'retrieves the model for that vehicle name', '2013-07-05 16:29:05'),
(538, 1, 1, 0, '/unlockcivcars', 'unlocks all civilian vehicles', '2013-07-05 16:33:50'),
(541, 1, 1, 0, '/restoreshop', '\"Restores a deleted NPC from SQL.', '2013-07-05 16:38:54'),
(542, 1, 1, 0, '/fixvehvis [Driver\'s partial Name/ID]', '\"Fixes player\'s car\'s visual, leave the engine\'s health.', '2013-07-05 16:41:18'),
(543, 1, 5, 0, '/givestattransfer', 'Gives a player a stat transfer.', '2013-07-05 16:47:23'),
(544, 1, 5, 0, '/givedontpoints', 'Gives a player donator points ', '2013-07-05 16:49:03'),
(546, 1, 1, 0, '/restock', 'Restocks businesses, you must be inside an interior to restock. Or use SYNTAX: /restock [Interior ID] [Amount 1~300]', '2013-07-05 16:58:05'),
(548, 1, 2, 0, '/nearbyemitters', 'Shows all nearby Fire/Water emitters.', '2013-07-05 17:08:38'),
(549, 1, 2, 0, '/delemitters', 'Deletes all nearby Fire/Water emitters.', '2013-07-05 17:09:10'),
(550, 1, 1, 0, '/delnearbyshops', 'Deletes nearby shops.', '2013-07-05 17:09:53'),
(551, 1, 4, 0, '/forcepayday', 'Forces a player to get payday.', '2013-07-05 17:15:57'),
(552, 1, 4, 0, '/forcepaydayall', 'Forces all players to get paydays.', '2013-07-05 17:18:05'),
(553, 1, 4, 0, '/givesuperman', 'Gives player temporary ability to fly. Execute the cmd again to revoke the ability. Ability will be automatically gone after player relogs.', '2013-07-05 17:18:55'),
(554, 1, 4, 0, '/addatm', 'adds an ATM at this spot', '2013-07-05 17:19:17'),
(555, 1, 4, 0, '/delatm', 'Deletes an ATM with that id.', '2013-07-05 17:19:29'),
(556, 1, 1, 0, '/nearbyatms', 'shows the nearby ATMs', '2013-07-05 17:19:56'),
(557, 1, 4, 0, '/setfactionleader', 'puts a player into a faction and makes the player leader', '2013-07-05 17:22:07'),
(558, 1, 4, 0, '/setfactionrank', 'Sets the players faction rank.', '2013-07-05 17:22:25'),
(559, 1, 4, 0, '/makefaction', 'Creates a faction.', '2013-07-05 17:22:53'),
(560, 1, 4, 0, '/renamefaction', 'Renames a faction.', '2013-07-05 17:23:12'),
(561, 1, 4, 0, '/delfaction', 'Deletes a faction.', '2013-07-05 17:23:33'),
(562, 1, 4, 0, '/ck', 'permanently kills the character; spawns a corpse at the location the player is a', '2013-07-05 17:24:47'),
(563, 1, 4, 0, '/unck', 'reverts a character kill', '2013-07-05 17:25:17'),
(564, 1, 4, 0, '/givemoney', 'gives the player money in addition to his current cash', '2013-07-05 17:25:46'),
(566, 1, 5, 0, '/forcesellinactiveints', 'Force-sells All inactive interiors.', '2013-07-05 17:40:22'),
(567, 1, 5, 0, '/delallitems [Item ID] [Item Value]', 'Deletes all the item instances from everywhere in game.', '2013-07-05 17:40:47'),
(568, 1, 5, 0, '/setdamageproof', 'makes a vehicle damageproof', '2013-07-05 17:41:30');
INSERT INTO `commands_library` (`cmID`, `cmType`, `cmLevel`, `cmSubType`, `cmName`, `cmExplanation`, `cmCreationDate`) VALUES
(569, 1, 5, 0, '/rcs', 'check if the resource \"Resource-Keeper\" is running', '2013-07-05 17:41:49'),
(570, 1, 5, 0, '/stopres', 'Stops the resource', '2013-07-05 17:42:34'),
(571, 1, 5, 0, '/togg', 'Toggles gamemaster chat.', '2013-07-05 17:44:02'),
(572, 1, 5, 0, '/toga', 'Toggles administrator chat.', '2013-07-05 17:44:19'),
(574, 1, 5, 0, '/setaccountpassword', 'sets player\'s account password', '2013-07-05 17:44:36'),
(575, 1, 5, 0, '/removeveh [ID]', 'Removes the vehicle from game and erases all the data from database completely and permanently include items inside.', '2013-07-05 17:46:52'),
(576, 1, 4, 0, '/setmoney', 'Sets a players on hand money', '2013-07-05 18:26:14'),
(577, 1, 5, 0, '/removeint [ID]', 'Deletes the interior from game and erases all the data from database completely and permanently include NPCs, items, safe and items inside the safe. If the deleted interior is a custom interior, the custom map will be gone forever.', '2013-07-05 19:25:00'),
(578, 1, 1, 0, '/srd', 'Turns off all vehicle radios in a district', '2013-07-05 19:48:52'),
(580, 1, 1, 0, '/ah', 'Displays the index of admin commands', '2013-07-05 21:02:50'),
(581, 1, 4, 0, '/setfactiontype', 'Sets the type of a faction', '2013-07-05 21:09:01'),
(582, 1, 1, 0, '/setfaction', 'Sets you to a faction', '2013-07-06 14:36:04'),
(583, 1, 3, 0, '/setvehiclefaction', 'Sets a specific vehicle to a faction ', '2013-07-06 14:37:06'),
(584, 1, 3, 0, '/setvehicleplate', 'Sets a vehicle\'s plate', '2013-07-06 14:55:06'),
(585, 1, 4, 0, '/renamefaction', 'Changes the name of a faction', '2013-07-06 14:55:36'),
(586, 1, 4, 0, '/nearbyatms', 'Shows all nearby ATM\'s', '2013-07-06 15:53:38'),
(587, 1, 4, 0, '/nearbypaynsprays', 'Shows all nearby pay n sprays', '2013-07-06 15:54:09'),
(588, 1, 5, 0, '/delitemsfromint', 'Deletes all the items within a specified interior or world map that older than an interval of item\'s day old.', '2013-07-06 16:19:25'),
(589, 1, 4, 0, '/sw', 'Sets the weather.', '2013-07-06 20:43:46'),
(590, 1, 1, 0, '/srl', 'Sets the rain level.', '2013-07-06 20:44:13'),
(591, 1, 4, 0, '/etanow ', 'Sets the weather', '2013-07-06 22:45:15'),
(592, 1, 3, 0, '/aunimpound', 'Unimpounds a vehicle admin wise', '2013-07-07 05:34:41'),
(593, 1, 5, 0, '/delallitems', 'Deletes all the item instances from everywhere in game.', '2013-07-07 06:00:27'),
(594, 1, 5, 0, '/removeshop', 'Removes a shop from the datebase', '2013-07-07 16:18:37'),
(595, 1, 1, 0, '/vehpost', 'Creates an automatic forum post for vehicle thefts', '2013-07-08 15:55:01'),
(596, 1, 1, 0, '/intpost', 'Creates an automatic forum post for interior thefts.', '2013-07-08 15:59:14'),
(597, 1, 1, 0, '/forceapp', 'Sends a player back to the application stage.', '2013-07-09 18:42:10'),
(598, 1, 4, 0, '/setfactionmoney', 'Sets the faction bank money', '2013-07-11 07:35:34'),
(602, 2, 1, 0, '/gethere ', 'Teleports a player to you.', '2013-07-15 23:52:36'),
(603, 2, 1, 0, '/goto', 'Teleports you to a player.', '2013-07-15 23:52:52'),
(604, 2, 1, 0, '/forceapp', 'Sends a player to the application stage.', '2013-07-15 23:53:45'),
(605, 2, 5, 0, '/makeadmin', 'Set\'s a players Gamemaster rank.', '2013-07-15 23:54:05'),
(606, 2, 1, 0, '/gotoplace', 'Teleports you to a premade mark.', '2013-07-16 16:24:18'),
(607, 2, 1, 0, '/check', 'Shows you a players /check.', '2013-07-16 16:24:29'),
(608, 1, 4, 0, '/marry', 'Marrys two players', '2013-07-16 16:25:38'),
(609, 1, 4, 0, '/divorce', 'Divorces a married couple.', '2013-07-16 16:25:49'),
(611, 2, 1, 0, '/gh', 'Gamemaster Help', '2013-07-17 16:09:37'),
(612, 2, 1, 0, '/mark', 'Marks a specific point.', '2013-07-17 16:09:46'),
(613, 2, 1, 0, '/gotomark', 'Teleports you to that mark', '2013-07-17 16:10:04'),
(614, 2, 1, 0, '/delmark', 'Deletes a mark.', '2013-07-17 16:10:14'),
(615, 2, 1, 0, '/resetcontract', 'Resets a players contract so they can /quitjob', '2013-07-22 17:23:45'),
(616, 2, 1, 0, '/setjob', 'Sets a players job manually', '2013-07-23 17:12:05'),
(617, 2, 1, 0, '/ar ', 'Accept\'s a report', '2013-07-24 17:41:28'),
(618, 2, 1, 0, '/cr', 'Closes a report', '2013-07-24 17:41:39'),
(619, 2, 1, 0, '/fr', 'False\'s a report', '2013-07-24 17:41:47'),
(620, 2, 1, 0, '/ann', 'Makes a GM Announcement', '2013-07-25 00:12:33'),
(621, 1, 5, 0, '/infract', 'Infracts an administrator', '2013-07-26 14:35:02'),
(622, 1, 5, 0, '/suspend', 'Suspends an Administrator', '2013-07-31 05:57:36'),
(623, 1, 5, 0, '/acheck', 'Brings up an admins Internal Affairs check', '2013-07-31 06:18:58'),
(624, 1, 5, 0, '/tr', 'Transfers a report to an admin', '2013-08-02 16:39:48'),
(625, 1, 1, 0, '/addii', 'Add\'s a information Icon', '2013-08-05 23:11:51'),
(626, 1, 1, 0, '/delii', 'delete\'s a information Icon', '2013-08-05 23:12:00'),
(627, 1, 1, 0, '/nearbyii', 'Show\'s nearby Information Icons.', '2013-08-05 23:12:13'),
(628, 1, 3, 0, '/licensemonitor', 'Check who owns what firearms licenses', '2013-08-26 02:16:02'),
(629, 1, 1, 0, '/vginfo', 'or /serverinfo - Displays all Server Information', '2014-05-01 19:04:15');

-- --------------------------------------------------------

--
-- Структура таблицы `computers`
--

CREATE TABLE `computers` (
  `id` int(11) NOT NULL,
  `posX` float(10,5) NOT NULL,
  `posY` float(10,5) NOT NULL,
  `posZ` float(10,5) NOT NULL,
  `rotX` float(10,5) NOT NULL,
  `rotY` float(10,5) NOT NULL,
  `rotZ` float(10,5) NOT NULL,
  `interior` int(8) NOT NULL,
  `dimension` int(8) NOT NULL,
  `model` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `cpa_postbacks`
--

CREATE TABLE `cpa_postbacks` (
  `id` int(11) NOT NULL,
  `tracking_id` int(11) NOT NULL,
  `payout` double DEFAULT '0',
  `message` text,
  `offer_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `donates`
--

CREATE TABLE `donates` (
  `order_id` int(11) NOT NULL,
  `txn_id` varchar(19) NOT NULL,
  `payer_email` varchar(75) NOT NULL,
  `mc_gross` float(9,2) NOT NULL,
  `donor` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `donated_for` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `donators`
--

CREATE TABLE `donators` (
  `id` int(11) NOT NULL,
  `accountID` int(11) NOT NULL,
  `charID` int(11) NOT NULL DEFAULT '-1',
  `perkID` int(4) NOT NULL,
  `perkValue` varchar(10) NOT NULL DEFAULT '1',
  `expirationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `donators`
--

INSERT INTO `donators` (`id`, `accountID`, `charID`, `perkID`, `perkValue`, `expirationDate`) VALUES
(3, 3, -1, 29, '7', '2015-03-10 16:38:09'),
(4, 51, -1, 29, '31', '2015-03-10 16:39:28'),
(5, 51, -1, 25, '1', NULL),
(6, 51, -1, 27, '1', '2015-03-11 14:10:48'),
(7, 61, -1, 29, '31', '2015-03-15 19:30:49'),
(8, 1, -1, 12, '0', '2016-11-05 10:45:44'),
(9, 1, -1, 2, '0', '2016-11-05 10:46:40'),
(10, 1, -1, 11, '1', '2016-11-01 14:37:46');

-- --------------------------------------------------------

--
-- Структура таблицы `don_purchases`
--

CREATE TABLE `don_purchases` (
  `id` int(11) NOT NULL,
  `name` text,
  `cost` int(11) DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `don_transactions`
--

CREATE TABLE `don_transactions` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(64) NOT NULL,
  `donator_email` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `original_request` text,
  `dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `handled` smallint(1) DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `realamount` double NOT NULL DEFAULT '0',
  `item_number` int(11) NOT NULL DEFAULT '0',
  `validated` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `don_transaction_failed`
--

CREATE TABLE `don_transaction_failed` (
  `id` int(11) NOT NULL,
  `output` text NOT NULL,
  `ip` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `duty_allowed`
--

CREATE TABLE `duty_allowed` (
  `id` int(11) NOT NULL,
  `faction` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `itemValue` varchar(45) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used for an admin allow list.';

-- --------------------------------------------------------

--
-- Структура таблицы `duty_custom`
--

CREATE TABLE `duty_custom` (
  `id` int(11) NOT NULL,
  `factionid` int(11) NOT NULL,
  `name` text NOT NULL,
  `skins` text NOT NULL,
  `locations` text NOT NULL,
  `items` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used for custom duties.';

--
-- Дамп данных таблицы `duty_custom`
--

INSERT INTO `duty_custom` (`id`, `factionid`, `name`, `skins`, `locations`, `items`) VALUES
(1, 4, 'Driver', '[ [ [ \"305\", \"839\" ], [ \"211\", \"341\" ] ] ]', '[ { \"3\": \"Driver Loadout\" } ]', '[ { \"9\": [ \"9\", 57, \"500\" ], \"8\": [ \"8\", 46, \"\" ], \"5\": [ \"5\", -41, 50000, \"50000\" ], \"75\": [ \"75\", 96, \"\" ], \"13\": [ \"13\", 118, \"\" ], \"12\": [ \"12\", 183, \"\" ], \"11\": [ \"11\", 126, \"Rapid\" ], \"6\": [ \"6\", -43, 500, \"500\" ] } ]'),
(8, 50, 'Undercover gear', '[ [ [ 286, \"N\\/A\" ], [ \"266\", \"2097\" ], [ \"280\", \"2098\" ], [ \"280\", \"2099\" ], [ \"186\", \"2100\" ], [ \"186\", \"2101\" ], [ \"186\", \"2102\" ], [ \"186\", \"2103\" ], [ \"186\", \"2104\" ] ] ]', '[ { \"87\": \"VEHICLE\", \"95\": \"VEHICLE\", \"96\": \"VEHICLE\", \"97\": \"VEHICLE\", \"93\": \"VEHICLE\", \"92\": \"VEHICLE\", \"91\": \"VEHICLE\", \"90\": \"VEHICLE\", \"88\": \"VEHICLE\", \"98\": \"VEHICLE\", \"102\": \"VEHICLE\", \"101\": \"VEHICLE\", \"89\": \"VEHICLE\", \"109\": \"VEHICLE\", \"99\": \"VEHICLE\", \"100\": \"VEHICLE\", \"104\": \"VEHICLE\", \"20\": \"VEHICLE\", \"21\": \"DLE HQ - Lockers\", \"94\": \"VEHICLE\", \"103\": \"VEHICLE\" } ]', ''),
(14, 59, 'Patrol', '[ [ [ \"71\", \"1656\" ], [ \"61\", \"1655\" ], [ \"286\", \"1657\" ], [ 211, \"N\\/A\" ], [ \"284\", \"1667\" ], [ \"284\", \"1668\" ], [ \"265\", \"1665\" ], [ \"266\", \"1664\" ], [ \"280\", \"1661\" ], [ \"288\", \"1659\" ], [ \"282\", \"1660\" ], [ \"267\", \"1672\" ], [ \"281\", \"1673\" ], [ \"283\", \"1658\" ] ] ]', '[ { \"116\": \"SADC\", \"24\": \"Training Grounds\", \"22\": \"HQ\", \"23\": \"SIU\" } ]', '[ { \"142\": [ 142, -43, 50, \"50\" ], \"152\": [ 152, -33, 40, \"40\" ], \"123\": [ 123, 47, \"1\" ], \"137\": [ 137, 113, \"5\" ], \"147\": [ 147, -3, 1, \"1\" ], \"157\": [ 157, 177, \"\" ], \"159\": [ 159, -41, 1000, \"1000\" ], \"149\": [ 149, -100, 100, \"100\" ], \"139\": [ 139, 126, \"1\" ], \"134\": [ 134, 53, \"1\" ], \"154\": [ 154, 45, \"1\" ], \"128\": [ 128, 83, \"1\" ], \"140\": [ 140, -25, 30, \"30\" ], \"150\": [ 150, -24, 49, \"49\" ], \"127\": [ 127, 13, \"1\" ], \"153\": [ 153, -29, 150, \"150\" ], \"120\": [ 120, 45, \"1\" ] } ]'),
(16, 59, 'Emergency Response Team', '[ [ [ \"285\", \"1671\" ], [ \"285\", \"1670\" ], [ \"285\", \"1669\" ], [ \"71\", \"1656\" ], [ \"61\", \"1655\" ], [ \"286\", \"1657\" ], [ 211, \"N\\/A\" ], [ \"284\", \"1667\" ], [ \"284\", \"1668\" ], [ \"265\", \"1665\" ], [ \"266\", \"1664\" ], [ \"280\", \"1661\" ], [ \"288\", \"1659\" ], [ \"282\", \"1660\" ], [ \"267\", \"1672\" ], [ \"281\", \"1673\" ], [ \"283\", \"1658\" ] ] ]', '[ { \"36\": \"VEHICLE\", \"34\": \"VEHICLE\", \"24\": \"Training Grounds\", \"27\": \"VEHICLE\", \"26\": \"VEHICLE\", \"19\": \"VEHICLE\", \"28\": \"VEHICLE\", \"22\": \"HQ\", \"23\": \"SIU\" } ]', '[ { \"142\": [ 142, 29, \"1\" ], \"123\": [ 123, 47, \"1\" ], \"137\": [ 137, 113, \"5\" ], \"147\": [ 147, 120, \"1\" ], \"157\": [ 157, -33, 40, \"40\" ], \"143\": [ 143, -44, 1, \"1\" ], \"153\": [ 153, -31, 300, \"300\" ], \"160\": [ 160, -27, 35, \"35\" ], \"149\": [ 149, 27, \"1\" ], \"140\": [ 140, 137, \"1\" ], \"154\": [ 154, -24, 49, \"49\" ], \"139\": [ 139, 126, \"1\" ], \"134\": [ 134, 53, \"1\" ], \"141\": [ 141, 26, \"1\" ], \"155\": [ 155, -29, 150, \"150\" ], \"165\": [ 165, -17, 5, \"5\" ], \"131\": [ 131, 27, \"1\" ], \"148\": [ 148, 56, \"1\" ], \"158\": [ 158, -23, 68, \"68\" ], \"159\": [ 159, -25, 30, \"30\" ], \"145\": [ 145, -46, 1, \"1\" ], \"150\": [ 150, -100, 100, \"100\" ], \"166\": [ 166, -3, 1, \"1\" ], \"144\": [ 144, -45, 1, \"1\" ], \"120\": [ 120, 45, \"1\" ] } ]'),
(18, 59, 'Detective', '[ [ [ 98, \"N\\/A\" ], [ 211, \"N\\/A\" ], [ 2, \"N\\/A\" ], [ 5, \"N\\/A\" ] ] ]', '[ { \"36\": \"VEHICLE\", \"24\": \"Training Grounds\", \"22\": \"HQ\", \"23\": \"SIU\" } ]', '[ { \"149\": [ 149, -100, 50, \"100\" ], \"127\": [ 127, 13, \"1\" ], \"134\": [ 134, 53, \"1\" ], \"123\": [ 123, 47, \"1\" ], \"142\": [ 142, -43, 50, \"50\" ], \"137\": [ 137, 113, \"5\" ], \"147\": [ 147, -3, 1, \"1\" ], \"128\": [ 128, 83, \"1\" ], \"156\": [ 156, -100, 100, \"100\" ], \"139\": [ 139, 126, \"1\" ], \"154\": [ 154, -24, 49, \"49\" ], \"157\": [ 157, 177, \"\" ], \"120\": [ 120, 45, \"1\" ] } ]'),
(23, 59, 'Civilian Staff', '[ [ [ \"71\", \"1656\" ], [ \"286\", \"1657\" ], [ \"61\", \"1655\" ], [ 211, \"N\\/A\" ] ] ]', '[ { \"22\": \"HQ\", \"24\": \"Training Grounds\" } ]', '[ { \"146\": [ 146, 1, \"1\" ], \"149\": [ 149, -100, 100, \"100\" ], \"142\": [ 142, -43, 50, \"50\" ], \"134\": [ 134, 53, \"1\" ], \"123\": [ 123, 47, \"1\" ], \"137\": [ 137, 113, \"5\" ], \"147\": [ 147, -3, 1, \"1\" ], \"157\": [ 157, 177, \"\" ], \"159\": [ 159, -41, 1000, \"1000\" ], \"139\": [ 139, 126, \"1\" ], \"154\": [ 154, 45, \"1\" ], \"120\": [ 120, 45, \"1\" ] } ]'),
(24, 1, 'Captain', '[ [ [ \"211\", \"2085\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ [ ] ]'),
(25, 59, 'Auxiliary Staff', '[ [ [ \"61\", \"1655\" ], [ \"71\", \"1656\" ], [ \"286\", \"1657\" ], [ 211, \"N\\/A\" ] ] ]', '[ { \"24\": \"Training Grounds\", \"22\": \"HQ\", \"116\": \"SADC\" } ]', '[ { \"146\": [ 146, 1, \"1\" ], \"149\": [ 149, -100, 100, \"100\" ], \"142\": [ 142, -43, 50, \"50\" ], \"134\": [ 134, 53, \"1\" ], \"123\": [ 123, 47, \"1\" ], \"137\": [ 137, 113, \"5\" ], \"147\": [ 147, -3, 1, \"1\" ], \"157\": [ 157, 177, \"\" ], \"139\": [ 139, 126, \"1\" ], \"154\": [ 154, 45, \"1\" ], \"120\": [ 120, 45, \"1\" ] } ]'),
(27, 1, 'Ass. Chief', '[ [ [ \"280\", \"2435\" ], [ \"280\", \"2436\" ], [ \"285\", \"1696\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ [ ] ]'),
(28, 1, 'CPT', '[ [ [ \"280\", \"1815\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ [ ] ]'),
(29, 1, 'Captain', '[ [ [ \"280\", \"2372\" ], [ \"280\", \"2373\" ], [ \"280\", \"2437\" ], [ \"285\", \"1696\" ], [ 240, \"N\\/A\" ], [ \"186\", \"1739\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ { \"3\": [ \"3\", 26, \"1\" ], \"19\": [ \"19\", -29, 150, \"150\" ], \"18\": [ \"18\", -24, 35, \"35\" ], \"34\": [ \"34\", 13, \"\" ], \"36\": [ \"36\", 29, \"\" ], \"33\": [ \"33\", 137, \"1\" ], \"27\": [ \"27\", -45, 1, \"1\" ], \"17\": [ \"17\", -31, 250, \"250\" ], \"37\": [ \"37\", 56, \"\" ], \"29\": [ \"29\", -17, 5, \"5\" ], \"68\": [ \"68\", 27, \"4\" ], \"69\": [ \"69\", -100, 100, \"100\" ] } ]'),
(30, 1, 'Student', '[ [ [ 71, \"N\\/A\" ], [ 211, \"N\\/A\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ { \"1\": [ \"1\", 45, \"1\" ], \"69\": [ \"69\", -100, 100, \"100\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"31\": [ \"31\", 126, \"1\" ], \"18\": [ \"18\", -24, 21, \"35\" ], \"34\": [ \"34\", 13, \"\" ], \"35\": [ \"35\", 83, \"\" ] } ]'),
(31, 1, 'LSPD Patrol', '[ [ [ 280, \"N\\/A\" ], [ 281, \"N\\/A\" ], [ 265, \"N\\/A\" ], [ 266, \"N\\/A\" ], [ 267, \"N\\/A\" ], [ 211, \"N\\/A\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ { \"25\": [ \"25\", -43, 1, \"50\" ], \"69\": [ \"69\", -100, 100, \"100\" ], \"1\": [ \"1\", 45, \"1\" ], \"18\": [ \"18\", -24, 35, \"35\" ], \"31\": [ \"31\", 126, \"1\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"19\": [ \"19\", -29, 150, \"150\" ], \"23\": [ \"23\", -25, 20, \"50\" ] } ]'),
(32, 1, 'LSPD Detectives', '[ [ [ 280, \"N\\/A\" ], [ 281, \"N\\/A\" ], [ 265, \"N\\/A\" ], [ 266, \"N\\/A\" ], [ 267, \"N\\/A\" ], [ 211, \"N\\/A\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ { \"1\": [ \"1\", 45, \"1\" ], \"19\": [ \"19\", -29, 150, \"150\" ], \"37\": [ \"37\", 56, \"\" ], \"25\": [ \"25\", -43, 1, \"50\" ], \"69\": [ \"69\", -100, 50, \"100\" ], \"38\": [ \"38\", -4, 1, \"1\" ], \"31\": [ \"31\", 126, \"1\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"18\": [ \"18\", -24, 35, \"35\" ], \"23\": [ \"23\", -25, 20, \"50\" ] } ]'),
(33, 1, 'LSPD SWAT', '[ [ [ 280, \"N\\/A\" ], [ 281, \"N\\/A\" ], [ 265, \"N\\/A\" ], [ 266, \"N\\/A\" ], [ 267, \"N\\/A\" ], [ 211, \"N\\/A\" ], [ \"285\", \"1696\" ], [ \"285\", \"1697\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ { \"74\": [ \"74\", 120, \"\" ], \"36\": [ \"36\", 29, \"\" ], \"37\": [ \"37\", 56, \"\" ], \"28\": [ \"28\", -46, 1, \"1\" ], \"29\": [ \"29\", -17, 5, \"5\" ], \"68\": [ \"68\", 27, \"4\" ], \"69\": [ \"69\", -100, 100, \"100\" ], \"1\": [ \"1\", 45, \"1\" ], \"3\": [ \"3\", 26, \"1\" ], \"38\": [ \"38\", -4, 1, \"1\" ], \"19\": [ \"19\", -29, 150, \"150\" ], \"18\": [ \"18\", -24, 35, \"35\" ], \"33\": [ \"33\", 137, \"1\" ], \"21\": [ \"21\", -33, 10, \"10\" ], \"26\": [ \"26\", -44, 1, \"1\" ], \"24\": [ \"24\", -27, 35, \"35\" ], \"27\": [ \"27\", -45, 1, \"1\" ], \"17\": [ \"17\", -31, 250, 250 ], \"20\": [ \"20\", -34, 10, \"10\" ], \"30\": [ \"30\", -3, 1, \"1\" ], \"22\": [ \"22\", -23, 68, 68 ], \"23\": [ \"23\", -25, 30, \"50\" ] } ]'),
(36, 1, 'DB: Gangs & Narcotics Division', '[ [ [ 280, \"N\\/A\" ], [ 211, \"N\\/A\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ { \"36\": [ \"36\", 29, \"\" ], \"34\": [ \"34\", 13, \"\" ], \"35\": [ \"35\", 83, \"\" ], \"38\": [ \"38\", -4, 1, \"1\" ], \"68\": [ \"68\", 27, \"4\" ], \"69\": [ \"69\", -100, 100, \"100\" ], \"1\": [ \"1\", 45, \"1\" ], \"3\": [ \"3\", 26, \"1\" ], \"19\": [ \"19\", -29, 150, \"150\" ], \"18\": [ \"18\", -24, 35, \"35\" ], \"25\": [ \"25\", -43, 1, \"50\" ], \"29\": [ \"29\", -17, 3, \"5\" ], \"17\": [ \"17\", -31, 150, \"250\" ], \"20\": [ \"20\", -34, 1, \"10\" ], \"31\": [ \"31\", 126, \"1\" ], \"22\": [ \"22\", -23, 68, \"68\" ], \"23\": [ \"23\", -25, 25, \"50\" ] } ]'),
(44, 47, 'Instructor Student', '[ [ [ 61, \"N\\/A\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 5, \"50\" ], \"123\": [ 123, 45, \"FAA\" ], \"133\": [ 133, -100, 75, \"200\" ], \"121\": [ 121, 163, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"126\": [ 126, -3, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(45, 47, 'Instructor I', '[ [ [ \"211\", \"808\" ], [ \"61\", \"107\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"132\": [ 132, -46, 1, \"1\" ] } ]'),
(46, 47, 'Instructor II', '[ [ [ \"211\", \"808\" ], [ \"61\", \"109\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"132\": [ 132, -46, 1, \"1\" ], \"125\": [ 125, 174, \"FAA\" ] } ]'),
(47, 47, 'Instructor III', '[ [ [ \"211\", \"808\" ], [ \"61\", \"110\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"132\": [ 132, -46, 1, \"1\" ], \"125\": [ 125, 174, \"FAA\" ] } ]'),
(48, 47, 'Head Instructor', '[ [ [ \"211\", \"808\" ], [ \"61\", \"111\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"127\": [ 127, -24, 20, \"50\" ], \"132\": [ 132, -46, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(49, 47, 'Security Guard', '[ [ [ \"280\", \"809\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 5, \"50\" ], \"126\": [ 126, -3, 1, \"1\" ], \"133\": [ 133, -100, 100, \"200\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(50, 47, 'Agent', '[ [ [ \"286\", \"377\" ], [ \"211\", \"808\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 50, \"50\" ], \"123\": [ 123, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"131\": [ 131, -43, 30, \"30\" ], \"126\": [ 126, -3, 1, \"1\" ], \"132\": [ 132, -46, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(51, 47, 'Special Agent', '[ [ [ \"286\", \"377\" ], [ \"211\", \"808\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"127\": [ 127, -24, 50, \"50\" ], \"126\": [ 126, -3, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(52, 47, 'Air National Guard', '[ [ [ 287, \"N\\/A\" ], [ 285, \"N\\/A\" ], [ 179, \"N\\/A\" ], [ 121, \"N\\/A\" ], [ 73, \"N\\/A\" ] ] ]', '[ { \"60\": \"VEHICLE\", \"61\": \"VEHICLE\", \"62\": \"VEHICLE\", \"68\": \"Area69\", \"59\": \"VEHICLE\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 50, \"50\" ], \"129\": [ 129, -29, 50, \"50\" ], \"123\": [ 123, 45, \"FAA\" ], \"133\": [ 133, -100, 200, \"200\" ], \"121\": [ 121, 163, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"124\": [ 124, 145, \"FAA\" ], \"126\": [ 126, -3, 1, \"1\" ], \"132\": [ 132, -46, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"130\": [ 130, -31, 100, \"100\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(53, 47, 'Air Traffic Control', '[ [ [ \"211\", \"808\" ], [ \"71\", \"106\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"132\": [ 132, -46, 1, \"1\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(58, 47, 'D. Quint', '[ [ [ 61, \"N\\/A\" ], [ 287, \"N\\/A\" ], [ \"46\", \"36\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 20, \"30\" ], \"127\": [ 127, -24, 20, \"50\" ], \"132\": [ 132, -46, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(60, 4, 'Sales', '[ [ [ 217, \"N\\/A\" ], [ 264, \"N\\/A\" ] ] ]', '[ { \"3\": \"Dressing Room\", \"69\": \"Dealership Office\" } ]', '[ { \"5\": [ \"5\", -41, 50000, \"50000\" ], \"12\": [ \"12\", 183, \"\" ], \"75\": [ \"75\", 96, \"\" ] } ]'),
(61, 50, 'Special Operations Team', '[ [ [ \"280\", \"2098\" ], [ \"285\", \"2107\" ], [ \"285\", \"2106\" ] ] ]', '[ { \"94\": \"VEHICLE\", \"95\": \"VEHICLE\", \"96\": \"VEHICLE\", \"97\": \"VEHICLE\", \"93\": \"VEHICLE\", \"92\": \"VEHICLE\", \"91\": \"VEHICLE\", \"90\": \"VEHICLE\", \"99\": \"VEHICLE\", \"98\": \"VEHICLE\", \"102\": \"VEHICLE\", \"101\": \"VEHICLE\", \"88\": \"VEHICLE\", \"109\": \"VEHICLE\", \"87\": \"VEHICLE\", \"21\": \"DLE HQ - Lockers\", \"104\": \"VEHICLE\", \"20\": \"VEHICLE\", \"100\": \"VEHICLE\", \"103\": \"VEHICLE\", \"89\": \"VEHICLE\" } ]', ''),
(66, 1, 'DUTYYYY', '[ [ [ 280, \"N\\/A\" ], [ \"186\", \"647\" ], [ \"186\", \"646\" ], [ \"186\", \"1739\" ] ] ]', '[ { \"139\": \"Начать работу LSPD\", \"129\": \"Politseijaoskond LS\" } ]', '[ [ ] ]'),
(67, 2, 'Firefighter/EMT', '[ [ [ \"274\", \"1833\" ], [ \"276\", \"1832\" ], [ 277, \"N\\/A\" ], [ 278, \"N\\/A\" ], [ 279, \"N\\/A\" ], [ \"211\", \"2681\" ], [ \"124\", \"2682\" ], [ \"61\", \"2683\" ], [ \"211\", \"2660\" ] ] ]', '[ { \"111\": \"LSFD HQ DUTY\" } ]', '[ { \"118\": [ \"118\", 145, \"Flashlight\" ], \"119\": [ \"119\", 164, \"\" ], \"161\": [ 161, 126, \"\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ], \"114\": [ \"114\", 26, \"Gas Mask\" ] } ]'),
(68, 2, 'Academy Student', '[ [ [ \"211\", \"2262\" ], [ \"124\", \"20\" ] ] ]', '[ { \"111\": \"LSFD HQ DUTY\" } ]', '[ { \"119\": [ \"119\", 164, \"\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ], \"161\": [ 161, 126, \"\" ] } ]'),
(69, 2, 'Firefighter/Paramedic', '[ [ [ \"276\", \"1832\" ], [ \"274\", \"1833\" ], [ 277, \"N\\/A\" ], [ 278, \"N\\/A\" ], [ 279, \"N\\/A\" ], [ \"211\", \"2681\" ], [ \"124\", \"2682\" ], [ \"61\", \"2683\" ], [ \"211\", \"2660\" ] ] ]', '[ { \"111\": \"LSFD HQ DUTY\" } ]', '[ { \"162\": [ 162, 46, \"\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ], \"161\": [ 161, 126, \"\" ], \"114\": [ \"114\", 26, \"Gas Mask\" ], \"119\": [ \"119\", 164, \"\" ], \"118\": [ \"118\", 145, \"Flashlight\" ] } ]'),
(70, 2, 'Fire Chief/Female', '[ [ [ \"211\", \"2259\" ], [ \"211\", \"2681\" ] ] ]', '[ { \"111\": \"LSFD HQ DUTY\" } ]', '[ { \"118\": [ \"118\", 145, \"Flashlight\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ], \"117\": [ \"117\", 120, \"Scuba Gear\" ], \"113\": [ \"113\", -9, 0, \"0\" ], \"114\": [ \"114\", 26, \"Gas Mask\" ], \"119\": [ \"119\", 164, \"\" ], \"116\": [ \"116\", 113, \"Glowsticks\" ], \"161\": [ 161, 126, \"\" ], \"112\": [ \"112\", -42, 1000, \"1000\" ], \"162\": [ 162, 46, \"\" ] } ]'),
(71, 2, 'SaR/Member', '[ [ [ \"285\", \"1901\" ] ] ]', '[ { \"111\": \"LSFD HQ DUTY\" } ]', '[ { \"118\": [ \"118\", 145, \"Flashlight\" ], \"115\": [ \"115\", 70, \"BLS Kit\" ], \"117\": [ \"117\", 120, \"Scuba Gear\" ], \"113\": [ \"113\", -9, 0, 0 ], \"114\": [ \"114\", 26, \"Gas Mask\" ], \"119\": [ \"119\", 164, \"\" ], \"116\": [ \"116\", 113, \"Glowsticks\" ], \"161\": [ 161, 126, \"\" ], \"112\": [ \"112\", -42, 1000, 1000 ], \"162\": [ 162, 46, \"\" ] } ]'),
(72, 2, 'Fire Inspector', '[ [ [ \"276\", \"1832\" ], [ 211, \"N\\/A\" ] ] ]', '[ { \"111\": \"LSFD HQ DUTY\" } ]', '[ { \"114\": [ \"114\", 26, \"Gas Mask\" ], \"118\": [ \"118\", 145, \"Flashlight\" ], \"161\": [ 161, 126, \"\" ] } ]'),
(76, 20, 'LSN Camera Equipment', '[ [ ] ]', '[ [ ] ]', ''),
(78, 59, 'Detention Officer ', '[ [ [ \"285\", \"1670\" ], [ \"282\", \"1660\" ], [ \"71\", \"1656\" ] ] ]', '[ { \"116\": \"SADC\" } ]', '[ { \"125\": [ 125, 26, \"1\" ], \"150\": [ 150, -24, 49, \"49\" ], \"131\": [ 131, 27, \"1\" ], \"155\": [ 155, 27, \"\" ], \"147\": [ 147, -3, 1, \"1\" ], \"149\": [ 149, -100, 100, \"100\" ], \"140\": [ 140, -25, 30, \"30\" ], \"130\": [ 130, 56, \"1\" ], \"146\": [ 146, -17, 5, \"5\" ] } ]'),
(79, 1, 'Chief Rhino', '[ [ [ 240, \"N\\/A\" ] ] ]', '[ { \"129\": \"Politseijaoskond LS\" } ]', '[ { \"31\": [ \"31\", 126, \"1\" ], \"33\": [ \"33\", 137, \"1\" ], \"3\": [ \"3\", 26, \"1\" ] } ]'),
(80, 64, 'M&ER Team', '[ [ [ 309, \"N\\/A\" ] ] ]', '[ { \"117\": \"Duty Room\" } ]', ''),
(81, 64, 'Bus Team', '[ [ [ \"255\", \"2073\" ] ] ]', '[ { \"117\": \"Duty Room\" } ]', ''),
(82, 64, 'Taxi Team', '[ [ [ \"255\", \"2073\" ] ] ]', '[ { \"117\": \"Duty Room\" } ]', ''),
(83, 47, 'Security Student', '[ [ [ \"280\", \"809\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 30, \"30\" ], \"126\": [ 126, -3, 1, \"1\" ], \"123\": [ 123, 45, \"FAA\" ], \"122\": [ 122, 45, \"FAA\" ], \"133\": [ 133, -100, 100, \"200\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(84, 3, 'Security Guard', '[ [ [ 163, \"N\\/A\" ], [ 164, \"N\\/A\" ], [ 165, \"N\\/A\" ], [ 166, \"N\\/A\" ] ] ]', '[ { \"120\": \"Security Guard\" } ]', '[ { \"160\": [ 160, -100, 100, \"100\" ] } ]'),
(85, 56, 'Delivery Driver', '[ [ [ 112, \"N\\/A\" ] ] ]', '[ { \"49\": \"CARGO GROUP DB\", \"51\": \"VEHICLE\", \"50\": \"VEHICLE\", \"64\": \"VEHICLE\", \"63\": \"VEHICLE\" } ]', ''),
(86, 56, 'Managers', '[ [ [ \"186\", \"646\" ] ] ]', '[ { \"49\": \"CARGO GROUP DB\", \"51\": \"VEHICLE\", \"50\": \"VEHICLE\", \"64\": \"VEHICLE\", \"63\": \"VEHICLE\" } ]', ''),
(88, 47, 'T. Williams', '[ [ [ \"286\", \"377\" ], [ \"185\", \"1711\" ] ] ]', '[ { \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"131\": [ 131, -43, 20, \"30\" ], \"127\": [ 127, -24, 20, \"50\" ], \"126\": [ 126, -3, 1, \"1\" ], \"133\": [ 133, -100, 100, \"200\" ], \"122\": [ 122, 45, \"FAA\" ], \"121\": [ 121, 163, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(90, 47, 'D.Bryant', '[ [ [ \"188\", \"1401\" ], [ \"286\", \"1403\" ] ] ]', '[ { \"126\": \"VEHICLE\", \"58\": \"Gate Cabin\" } ]', '[ { \"125\": [ 125, 174, \"FAA\" ], \"127\": [ 127, -24, 50, \"50\" ], \"133\": [ 133, -100, 100, \"200\" ], \"131\": [ 131, -43, 30, \"30\" ], \"124\": [ 124, 145, \"FAA\" ], \"126\": [ 126, -3, 1, \"1\" ], \"132\": [ 132, -46, 1, \"1\" ], \"122\": [ 122, 45, \"FAA\" ], \"120\": [ 120, 126, \"FAA\" ] } ]'),
(91, 4, 'Probationary', '[ [ [ \"305\", \"839\" ], [ \"211\", \"341\" ] ] ]', '[ { \"3\": \"Dressing Room\" } ]', '[ { \"5\": [ \"5\", -41, 1000, \"50000\" ], \"6\": [ \"6\", -43, 100, \"500\" ] } ]'),
(95, 2, 'New Skins WIP ', '[ [ [ \"124\", \"2682\" ], [ \"61\", \"2683\" ], [ \"211\", \"2681\" ] ] ]', '[ { \"111\": \"LSFD HQ DUTY\" } ]', '[ [ ] ]');

-- --------------------------------------------------------

--
-- Структура таблицы `duty_locations`
--

CREATE TABLE `duty_locations` (
  `id` int(11) NOT NULL,
  `factionid` int(11) NOT NULL,
  `name` text NOT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `z` int(11) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `dimension` int(11) DEFAULT '0',
  `interior` int(11) DEFAULT '0',
  `vehicleid` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Used for custom duty locations.';

--
-- Дамп данных таблицы `duty_locations`
--

INSERT INTO `duty_locations` (`id`, `factionid`, `name`, `x`, `y`, `z`, `radius`, `dimension`, `interior`, `vehicleid`, `model`) VALUES
(3, 4, 'Dressing Room', 2051, -1470, 142, 4, 381, 10, NULL, NULL),
(19, 59, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 6749, 427),
(21, 50, 'DLE HQ - Lockers', 1570, -1684, 64, 5, 2249, 7, NULL, NULL),
(22, 59, 'HQ', 1905, -2450, 16, 9, 18, 10, NULL, NULL),
(23, 59, 'SIU', 447, 182, 1028, 10, 2380, 5, NULL, NULL),
(24, 59, 'Training Grounds', -120, 106, 998, 10, 1614, 3, NULL, NULL),
(26, 59, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 9905, 417),
(27, 59, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 7982, 427),
(28, 59, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 8820, 601),
(34, 59, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 7047, 430),
(36, 59, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 6748, 528),
(49, 56, 'CARGO GROUP DB', 1391, 1777, 12, 6, 17, 18, NULL, NULL),
(50, 56, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 7060, 456),
(51, 56, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 7061, 456),
(55, 69, 'Ship', -1588, 50, 17, 10, 0, 0, NULL, NULL),
(56, 69, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13223, 443),
(57, 69, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12755, 443),
(58, 47, 'Gate Cabin', 1954, -2184, 14, 5, 0, 0, NULL, NULL),
(59, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12523, 433),
(60, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12525, 470),
(61, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12524, 470),
(62, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12995, 470),
(63, 56, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 5275, 482),
(64, 56, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 8488, 418),
(68, 47, 'Area69', 214, 1868, 13, 10, 0, 0, NULL, NULL),
(69, 4, 'Dealership Office', 2125, -2443, 14, 5, 1637, 56, NULL, NULL),
(71, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 11055, 525),
(72, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 6269, 552),
(73, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 4224, 525),
(74, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 4223, 525),
(75, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1319, 525),
(76, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 3838, 525),
(77, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1322, 525),
(78, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1322, 525),
(79, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1313, 525),
(80, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1311, 525),
(81, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 7613, 611),
(82, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 2033, 525),
(83, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 1316, 525),
(84, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 8377, 578),
(85, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 4265, 578),
(86, 4, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 3983, 578),
(87, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13893, 427),
(88, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13844, 582),
(89, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 12219, 609),
(90, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 11904, 470),
(105, 69, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13191, 578),
(111, 2, 'LSFD HQ DUTY', 1723, -1124, 24, 10, 0, 0, NULL, NULL),
(116, 59, 'SADC', 1497, 1544, 12, 10, 812, 3, NULL, NULL),
(117, 64, 'Duty Room', 1488, 1370, 17, 3, 1883, 24, NULL, NULL),
(118, 64, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 8007, 579),
(120, 3, 'Security Guard', 1545, 1468, 29, 5, 2695, 21, NULL, NULL),
(122, 50, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 13883, 405),
(125, 64, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 8836, 578),
(126, 47, 'VEHICLE', NULL, NULL, NULL, NULL, 0, 0, 10024, 560),
(135, 71, 'T', 1102, -340, 75, 10, 0, 0, NULL, NULL),
(136, 71, 'T?¶?¶', 1102, -340, 75, 10, 0, 0, NULL, NULL),
(138, 3, 'casa', 325, 1486, 1084, 10, 21, 15, NULL, NULL),
(139, 1, 'Начать работу LSPD', 246, 114, 1003, 10, 7, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `elections`
--

CREATE TABLE `elections` (
  `idelections` varchar(45) NOT NULL,
  `Votes` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `elevators`
--

CREATE TABLE `elevators` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `tpx` decimal(10,6) DEFAULT '0.000000',
  `tpy` decimal(10,6) DEFAULT '0.000000',
  `tpz` decimal(10,6) DEFAULT '0.000000',
  `dimensionwithin` int(5) DEFAULT '0',
  `interiorwithin` int(5) DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `car` tinyint(3) UNSIGNED DEFAULT '0',
  `disabled` tinyint(3) UNSIGNED DEFAULT '0',
  `rot` decimal(10,6) DEFAULT '0.000000',
  `tprot` decimal(10,6) DEFAULT '0.000000',
  `oneway` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `emailaccounts`
--

CREATE TABLE `emailaccounts` (
  `id` int(11) NOT NULL,
  `username` text,
  `password` text,
  `creator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `sender` text,
  `receiver` text,
  `subject` text,
  `message` text,
  `inbox` int(1) NOT NULL DEFAULT '0',
  `outbox` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `factions`
--

CREATE TABLE `factions` (
  `id` int(11) NOT NULL,
  `name` text,
  `bankbalance` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `rank_1` text,
  `rank_2` text,
  `rank_3` text,
  `rank_4` text,
  `rank_5` text,
  `rank_6` text,
  `rank_7` text,
  `rank_8` text,
  `rank_9` text,
  `rank_10` text,
  `rank_11` text,
  `rank_12` text,
  `rank_13` text,
  `rank_14` text,
  `rank_15` text,
  `rank_16` text,
  `rank_17` text,
  `rank_18` text,
  `rank_19` text,
  `rank_20` text,
  `wage_1` int(11) DEFAULT '100',
  `wage_2` int(11) DEFAULT '100',
  `wage_3` int(11) DEFAULT '100',
  `wage_4` int(11) DEFAULT '100',
  `wage_5` int(11) DEFAULT '100',
  `wage_6` int(11) DEFAULT '100',
  `wage_7` int(11) DEFAULT '100',
  `wage_8` int(11) DEFAULT '100',
  `wage_9` int(11) DEFAULT '100',
  `wage_10` int(11) DEFAULT '100',
  `wage_11` int(11) DEFAULT '100',
  `wage_12` int(11) DEFAULT '100',
  `wage_13` int(11) DEFAULT '100',
  `wage_14` int(11) DEFAULT '100',
  `wage_15` int(11) DEFAULT '100',
  `wage_16` int(11) DEFAULT '100',
  `wage_17` int(11) DEFAULT '100',
  `wage_18` int(11) DEFAULT '100',
  `wage_19` int(11) DEFAULT '100',
  `wage_20` int(11) DEFAULT '100',
  `motd` text,
  `note` text,
  `fnote` text,
  `phone` varchar(20) DEFAULT NULL,
  `max_interiors` int(11) DEFAULT '20'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `factions`
--

INSERT INTO `factions` (`id`, `name`, `bankbalance`, `type`, `rank_1`, `rank_2`, `rank_3`, `rank_4`, `rank_5`, `rank_6`, `rank_7`, `rank_8`, `rank_9`, `rank_10`, `rank_11`, `rank_12`, `rank_13`, `rank_14`, `rank_15`, `rank_16`, `rank_17`, `rank_18`, `rank_19`, `rank_20`, `wage_1`, `wage_2`, `wage_3`, `wage_4`, `wage_5`, `wage_6`, `wage_7`, `wage_8`, `wage_9`, `wage_10`, `wage_11`, `wage_12`, `wage_13`, `wage_14`, `wage_15`, `wage_16`, `wage_17`, `wage_18`, `wage_19`, `wage_20`, `motd`, `note`, `fnote`, `phone`, `max_interiors`) VALUES
(1, 'Los Santos Police Department', 99906027, 2, 'Рядовой', 'Ефрейтор', 'Младший сержант', 'Сержант', 'Старший сержант', 'Прапорщик', 'Старший прапорщик', 'Младший Лейтенант', 'Лейтенант', 'Старший лейтенант', 'Капитан', 'Майор', 'Подполковник', 'Полковник', 'Генерал майор', 'Генерал лейтенант', 'Генерал полковник', 'Генерал полиции', 'Генерал полиции 2 ранга', 'Глава полиции', 500, 700, 600, 900, 1000, 1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 2000, 2100, 2200, 2300, 2400, 2500, 'Radio :911.231', 'Ебать пи\n', 'Тут всякая инфа о фраке\n', NULL, 20),
(3, 'Government of Los Santos', 28701288, 3, '(( FMT Liaison )) Suspended/Leave', 'Intern', 'Trainee Licensing Officer', 'Licensing Officer', 'P.A', 'Planning Supervisor', 'Trainee Planning Supervisor', 'Director of Licensing / Planning', 'Public Safety Representative', 'Trainee Security Officer', 'Security Officer', 'Director of Security', 'Director of Public Safety', 'Press Secretary', 'Staff Secretary', 'City District Manager', 'Chief of Staff', 'Council(wo)man', 'Deputy Mayor', 'Mayor', 0, 250, 470, 800, 800, 800, 470, 1050, 900, 470, 800, 1050, 1050, 900, 1100, 1200, 1300, 0, 1400, 1500, 'Radio frequency: 316.95 ||. Please read the note for further information.  ||  We now have our own forums. Check the note for further information. ||', 'Leader Rules:\n- No OOC promotions, demotions, removals or recruitments;\n- Do not change wages without approval of the FMT;\n- Do add, remove or move faction vehicles without approval of the factionleader\n_______________________________________________\n\nInactive Member discussion. 3 Days unnotified inactivity limit for dismissal of rank, 6 Days full removal of the faction!!\nPlease write here if members are suspended and what reason they are suspended for!\n\n\n_______________________________________________\n\n~ Executive Cabinet\n- Mayor: Daniel Levi (active)\n- Deputy Mayor: Rebecca Glauber (active)\n- Chief of Staff: Taro Watanabe (active)\n- Press Secretary: VACANT\n-- Department of Licensing: Sicilia Holson (active)\n-- Department of Planning: Sicilia Holson (active)\n-- Department of Public Safety: Ryan McCarthy (active)\n-- Department of Security: VACANT\n\n~ City Council\nMayor: Daniel Levi\nDeputy Mayor: Rebecca Glauber\nChief of Police: Thor Askeland\nCommissioner of Fire Department: Jason Heywood\nTaro Watanabe\nEdison Best\nRyan McCarthy\n__________________________________________________\n\nHanding out phone numbers:\n51-xy\nx:\n- 0 = Mayor, Deputy & Chief of Staff\n- 1 = Secretaries\n- 2 = Licensing Dep\n- 3 = Planning Dep\n- 4 = Security\n- 8 = Public Safety\n- 9 = Councilmembers\n\ny: \n- Given in random order.\n\n', 'EVERYONE MUST REQUEST TO JOIN THE GOV USERGROUP ON THE FORUMS!!!!\n\nWe now have our own Government forums! YOU MUST GO THERE AND REGISTER!!!!\nhttp://gov.blankworld.org/\n\nFaction Rules ((OOC and IC))\n\n1) Inactivity:\n1.1) Inactivity of 3 days or more will lead to a removal of wage and you will be set to \"Suspended/Leave\".\n1.2) Inactivity of 6 days or more will lead to a full removal.\n\n2) Corruption:\n2.1) Any form of OOC corruption is strictly forbidden. It will reported to administrators and punished harshly.\n2.2) Any for of IC financial corruption is forbidden unless approved by the FMT leader.\n2.3) IC corruption is allowed if it has no consequnces for the faction, but for you as a member (such as drugs)\n\n3) Behavior:\n3.1) You are expected to behave proffesionally both IC\'ly and OOC\'ly. This includes being formal.\n\n4) Infrastructure & vehicles:\n4.1) The private parking lot is expected to be kept neatly and organized. Only certain members can have reserved parking spots.\n4.2) Helicopter parkings are only for governmental vehicles.\n4.3) /dep is only to be used when approved by a faction leader.\n4.4) Special vehicles may not be used for recreational goals.\n\n5) Badges:\n5.1) Badges are only to be worn in situations related to the faction or in faction-vehicles.\n\n6) A Recruitment Review team is being established by CoS Gregory Holson.  The Recruitment Review team will help to review all Employment applications that players send in on the forums. This team\nis required to review the applications and you will get back to Gregory Holson to let him know what you think on the application, whether it\'s to be accepted or denied.  If you would like to be apart\nof the Recruitment Review team, PM Gregory Holson on the forums @Behr and explain to him why you would like to be apart of the team and what makes you fit for the team.\n(( P.S: Gregory Holson actually wrote this ))\n\n-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n~ Department of Licensing: Phone number 20-29.\nWorks on Forums and IG. Respond to license applications. After application is accepted, respond to licensing calls and grant the license IG and inspect the business.\n(( Trainee Licensing Officers are not allowed to do forum work!  You must do a license with a Licensing Officer IG.  Just go with them and take note of what they do and how they work. ))\n\n~ Department of Planning: Phone number 30-39.\nWorks on Forums and IG. Respond to planning applications. After application is accepted, ensure payments are made and approval is clear.\n', '51', 20),
(20, 'Los Santos Network', 868678, 6, 'Intern', '((FMT))', 'On Leave', 'Suspended', 'Junior Anchor ', 'Junior Journalist', 'Anchor ', 'Journalist', 'Senior Journalist', 'Senior Anchor ', 'Journalist + Anchor', 'Phil', 'Head of Technical Staff ', 'Head Journalist ', 'Head Anchor ', 'Office Supervisor ', 'Manager ', 'Chief Financial Officer', 'Chief Operating Officer ', 'Chief Executive Officer ', 200, 0, 0, 0, 250, 250, 600, 600, 600, 900, 650, 1000, 650, 950, 950, 700, 1000, 1300, 1500, 1500, 'ЕЕЕЕБАТЬ ', 'Ranks ( These are the Standard Rate ranks which may change due to promotion of pay not rank)\n\nChief Executive Officer - 1500\r\nChief Operating Officer - 1500\r\nChief Financial Officer - 1300\r\nManager - 1000\r\nOffice Supervisor - 700\r\n\nHead Journalist - 1000\r\nSenior Journalist - 900\r\nJournalist -  600\r\nTrial Journalist - 400\r\n\r\n\n\nHead Anchor - 1200\r\nSenior Anchor - 900\r\nAnchor - 600\r\nTrial Anchor - 400\r\n\r\nJanitor - 300\n', '\n\n\n/movetv - moves the camera to your position\n/starttv - starts the show\n/endtv - ends the show\n\n/interview name - starts interview\n/i text - to speak via the radio system\n/endinterview name - ends the interview\n\n\n\n\n\n\nRadio Channel #456.709 \n5 days of  inactivity=suspended,\n 7 days=kick!!\nIC Email: firstname.lastname@LSNetwork.sa| \n\n\n', NULL, 20),
(47, 'Армия Los Santos', 1346527, 2, 'On Leave / Suspended', '[ANG] Airman', '[ANG] Master Sergeant', '[ANG] Lieutenant', '[ANG] Major', 'Trainee', 'Security Guard', 'Crew Chief', 'ATC Officer', 'Agent', 'Special Agent', 'ROT Instructor', 'SER Instructor', 'MER Instructor', 'TER Instructor', 'Chief Investigator', 'Operations Manager', 'Head Instructor', 'FAA Deputy Administrator', 'FAA Administrator', 0, 650, 800, 1000, 1200, 200, 550, 550, 550, 750, 1000, 650, 750, 900, 1100, 1000, 1100, 1200, 1200, 1200, 'Internal channel: 951.159 | Remember to apply to the usergroup on forums! | Going away? Post a inactivity notification @ FAA Staff forum & notify a HC.', '---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\nBadge format:\n\nFAA <Rank> - <F.Lastname>\nExample: FAA Administrator - D.Bryant\n\n\nShort links:\nhttp://tiny.cc/faacareer - Career Apps\nhttp://tiny.cc/flightschool - Flight School apps\nhttp://tiny.cc/flightinstructor - Instructor apps\n\nLos Santos Flight School is looking for instructors! Get free education into a lucrative and challenging job. Apply today! http://www.lossantosflightschool.tk/\n\n', 'NOTICE!: 1- Upon leaving the faction/being kicked or removed from it, you\'ll need to delete your badge and possible uniform.\n              2-Don\'t forget to apply for our Usergroup on the forums!\n\n_____________________________________________________________________________________________________________________\n\nIMPORTANT RULES: whoever break any of these rules will be suspended and charged with a crime.\n1) NO guns are allowed inside the airport field, unless the holder is a cop or FAA Agents+, unauthorized personnels will be charged with crime APC112.\n\n2) Cruisers are NOT allowed outside the airport gate under any reason such as  repairing. \n\n3) NO personal vehicles are allowed to pass from the second gates, ONLY faction vehicles.\n\n4) Driving on the runways will lead to an immediate suspension and charging with crime APC 113.\n\n5) Instructing any kind of pilot licenses or typerating without a valid CFI license will lead to charging crime APC107.\n\n6) NO vehicles are allowed to park on the airport\'s sidewalk.\n\n7) ONLY one vehicle is allowed to park inside the parking area per member.\n\n\n-----to be continued-----\n\n\n', '55', 20),
(79, 'Groove Street', 0, 0, 'Dynamic Rank #1', 'Dynamic Rank #2', 'Dynamic Rank #3', 'Dynamic Rank #4', 'Dynamic Rank #5', 'Dynamic Rank #6', 'Dynamic Rank #7', 'Dynamic Rank #8', 'Dynamic Rank #9', 'Dynamic Rank #10', 'Dynamic Rank #11', 'Dynamic Rank #12', 'Dynamic Rank #13', 'Dynamic Rank #14', 'Dynamic Rank #15', 'Dynamic Rank #16', 'Dynamic Rank #17', 'Dynamic Rank #18', 'Dynamic Rank #19', 'Dynamic Rank #20', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 'Welcome to the faction.', '', NULL, NULL, 20),
(80, 'Grove Street', 0, 0, 'Dynamic Rank #1', 'Dynamic Rank #2', 'Dynamic Rank #3', 'Dynamic Rank #4', 'Dynamic Rank #5', 'Dynamic Rank #6', 'Dynamic Rank #7', 'Dynamic Rank #8', 'Dynamic Rank #9', 'Dynamic Rank #10', 'Dynamic Rank #11', 'Dynamic Rank #12', 'Dynamic Rank #13', 'Dynamic Rank #14', 'Dynamic Rank #15', 'Dynamic Rank #16', 'Dynamic Rank #17', 'Dynamic Rank #18', 'Dynamic Rank #19', 'Dynamic Rank #20', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 'Welcome to the faction.', '', NULL, NULL, 20),
(81, 'East Side Ballas Gang', 0, 0, 'Dynamic Rank #1', 'Dynamic Rank #2', 'Dynamic Rank #3', 'Dynamic Rank #4', 'Dynamic Rank #5', 'Dynamic Rank #6', 'Dynamic Rank #7', 'Dynamic Rank #8', 'Dynamic Rank #9', 'Dynamic Rank #10', 'Dynamic Rank #11', 'Dynamic Rank #12', 'Dynamic Rank #13', 'Dynamic Rank #14', 'Dynamic Rank #15', 'Dynamic Rank #16', 'Dynamic Rank #17', 'Dynamic Rank #18', 'Dynamic Rank #19', 'Dynamic Rank #20', 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 'Welcome to the faction.', '', NULL, NULL, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '3',
  `comment` varchar(500) DEFAULT NULL,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `staff_id`, `from_id`, `rating`, `comment`, `date`) VALUES
(0, 2, 3, 3, NULL, NULL),
(0, 3, 2, 1, 'Mi-o facut doar o muie', NULL),
(0, 54, 3, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `force_apps`
--

CREATE TABLE `force_apps` (
  `id` int(11) NOT NULL,
  `account` int(11) DEFAULT NULL,
  `forceapp_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Save forceapped players information to keep them from resubm' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `friend` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `friends`
--

INSERT INTO `friends` (`id`, `friend`) VALUES
(1, 3),
(3, 1),
(3, 51),
(3, 54),
(3, 61),
(51, 3),
(54, 3),
(61, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `fuelpeds`
--

CREATE TABLE `fuelpeds` (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotZ` float NOT NULL,
  `interior` int(11) NOT NULL DEFAULT '0',
  `dimension` int(11) NOT NULL DEFAULT '0',
  `skin` int(3) DEFAULT '50',
  `name` varchar(50) NOT NULL,
  `deletedBy` int(11) DEFAULT '0',
  `shop_link` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fuelpeds`
--

INSERT INTO `fuelpeds` (`id`, `posX`, `posY`, `posZ`, `rotZ`, `interior`, `dimension`, `skin`, `name`, `deletedBy`, `shop_link`) VALUES
(1, 1936.3, -1775.58, 13.55, 93.9318, 0, 0, 50, 'Brandon_D._Decker', 0, 0),
(2, 1941.7, -1775.53, 13.55, 271.111, 0, 0, 50, 'Lloyd_E._Keeler', 0, 0),
(3, 1004.51, -1344.99, 13.55, 180, 0, 0, 50, 'Daniel_P._Trotter', 0, 0),
(4, 1002.32, -1350.79, 13.55, 178.385, 0, 0, 50, 'Zachary_V._Christie', 0, 0),
(5, 613.395, -1505.09, 15.1578, 185.933, 0, 0, 50, 'Michael_Y._Duncan', 0, 0),
(6, 611.1, -1499.59, 15.1578, 185.328, 0, 0, 50, 'James_W._Anderson', 0, 0),
(7, -84.8389, -1163.73, 2.33594, 59.8792, 0, 0, 50, 'Joseph_X._Alston', 0, 0),
(8, -96.6455, -1172.43, 2.49907, 244.123, 0, 0, 50, 'Joshua_G._White', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `fuelstations`
--

CREATE TABLE `fuelstations` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `interior` int(5) DEFAULT '0',
  `dimension` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `gates`
--

CREATE TABLE `gates` (
  `id` int(11) NOT NULL,
  `objectID` int(11) NOT NULL,
  `startX` float NOT NULL,
  `startY` float NOT NULL,
  `startZ` float NOT NULL,
  `startRX` float NOT NULL,
  `startRY` float NOT NULL,
  `startRZ` float NOT NULL,
  `endX` float NOT NULL,
  `endY` float NOT NULL,
  `endZ` float NOT NULL,
  `endRX` float NOT NULL,
  `endRY` float NOT NULL,
  `endRZ` float NOT NULL,
  `gateType` tinyint(3) UNSIGNED NOT NULL,
  `autocloseTime` int(4) NOT NULL,
  `movementTime` int(4) NOT NULL,
  `objectDimension` int(11) NOT NULL,
  `objectInterior` int(11) NOT NULL,
  `gateSecurityParameters` text,
  `creator` varchar(50) NOT NULL DEFAULT '',
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `adminNote` varchar(300) NOT NULL DEFAULT '',
  `triggerDistance` float DEFAULT NULL,
  `triggerDistanceVehicle` float DEFAULT NULL,
  `sound` varchar(50) DEFAULT 'metalgate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gates`
--

INSERT INTO `gates` (`id`, `objectID`, `startX`, `startY`, `startZ`, `startRX`, `startRY`, `startRZ`, `endX`, `endY`, `endZ`, `endRX`, `endRY`, `endRZ`, `gateType`, `autocloseTime`, `movementTime`, `objectDimension`, `objectInterior`, `gateSecurityParameters`, `creator`, `createdDate`, `adminNote`, `triggerDistance`, `triggerDistanceVehicle`, `sound`) VALUES
(4, 3055, 1588.5, -1637.8, 14.6, 0, 0, 0, 1588.5, -1640, 16.5, 270, 0, 0, 7, 50, 25, 0, 0, '1', 'MishaKonsta', '2014-02-06 14:14:12', 'LSPD Ворота парковки', 20, 20, 'metalgate'),
(5, 10184, 1534.1, -1451.4, 14.9, 0, 0, 270, 1535.2, -1451.7, 19.7, 0, 0, 270, 7, 50, 30, 0, 0, '1', 'Franco', '2014-02-06 00:07:28', 'Detectives Gates', NULL, NULL, 'metalgate'),
(6, 988, 2639.8, -2582.4, 13.7, 0, 0, 180, 2642.4, -2582.4, 13.7, 0, 0, 179.995, 3, 30, 20, 0, 0, '82', 'Weimy', '2014-07-10 09:34:02', 'TTR Gate #1', NULL, NULL, 'metalgate'),
(7, 988, 2634.3, -2582.4, 13.7, 0, 0, 179.995, 2630.2, -2582.4, 13.7, 0, 0, 179.995, 3, 30, 20, 0, 0, '82', 'Weimy', '2014-07-10 09:35:31', 'TTR Gate #2', NULL, NULL, 'metalgate'),
(8, 2949, 1584.12, -1638.07, 12.37, 0, 0, 270, 1582.65, -1638.07, 12.37, 0, 0, 270, 7, 50, 15, 0, 0, '1', 'MishaKonsta', '2015-01-08 05:24:24', 'LSPD Дверь', 10, 0, 'metalgate'),
(9, 968, 1544.7, -1630.9, 13.1, 0, 270, 270, 1544.7, -1630.7, 13, 0, 180, 270, 7, 40, 15, 0, 0, '1', 'Maxime', '2014-04-08 04:17:41', 'LSPD ex-gate', NULL, NULL, NULL),
(10, 976, 1643.6, -1718.3, 14.6, 0, 0, 90, 1643.6, -1711.22, 14.6, 0, 0, 90, 7, 40, 45, 0, 0, '20', 'MishaKonsta', '2014-02-07 09:14:05', 'LSN Gate', NULL, NULL, 'metalgate'),
(11, 1495, 249.4, -1725.85, 5113, 0, 0, 0, 249.399, -1725.85, 5113, 0, 0, 90, 3, 15, 30, 6, 1, '86', 'Tylerc010', '2014-02-07 21:20:20', 'LSN INT GATE - SET', NULL, NULL, 'metalgate'),
(12, 2634, 1384.7, 1466.5, 11.4, 0, 0, 180, 1383.6, 1467.5, 11.4, 0, 0, 90, 2, 0, 30, 1575, 45, 'underground123', 'Belgica', '2014-07-14 12:59:35', 'vaultcollins', NULL, NULL, 'metalgate'),
(13, 1495, 1371.8, 1458.9, 10.6, 0, 0, 0, 1371.8, 1458.9, 10.6, 0, 0, 270, 10, 20, 20, 249, 1, 'ClubTec', 'Exciter', '2014-08-27 14:29:14', 'Blueberry Factory', NULL, NULL, 'metalgate'),
(14, 2957, 2054.9, -1694.8, 14.2, 0, 0, 90, 2053.4, -1694.8, 15.5, 90, 0, 90, 2, 0, 30, 0, 0, '2616', 'Firebird', '2014-02-27 18:45:08', '8, Washington Street - Garage', NULL, NULL, NULL),
(15, 969, 781.788, -1384.9, 12.7, 0, 0, 180, 774, -1384.9, 12.7, 0, 0, 179.995, 4, 50, 50, 0, 0, '1996', 'Kermoo', '2014-02-10 21:14:18', 'LSN Studio gate', NULL, NULL, 'metalgate'),
(16, 969, 774.11, -1330.3, 12.7, 0, 0, 0, 778, -1330.3, 12.7, 0, 0, 0, 3, 10, 100, 0, 0, '86', 'Tylerc010', '2014-02-10 21:17:38', 'LSN STUDIO GATE 2', NULL, NULL, 'metalgate'),
(17, 1569, 1391.8, 1490.2, 9.8, 0, 0, 180.495, 1391.8, 1490.2, 9.8, 0, 0, 270.495, 3, 30, 30, 617, 1, '65', 'Err0r', '2014-05-06 15:54:17', 'LSFD int2', NULL, NULL, NULL),
(18, 985, 2680.1, -2565, 14.4, 0, 0, 0, 2687, -2565, 14.4, 0, 0, 0, 3, 15, 30, 0, 0, '82', 'BrukONE', '2014-11-10 09:51:46', 'RT Main Gate 1', 9, 9, 'metalgate'),
(19, 986, 2673.8, -2565, 14.4, 0, 0, 0, 2687.1, -2565, 14.4, 0, 0, 0, 3, 15, 30, 0, 0, '82', 'BrukONE', '2014-11-10 09:53:32', 'RT Main Gate 2', 9, 9, 'metalgate'),
(20, 969, 2543.7, 0.7, 25.2, 0, 0, 270, 2543.7, -8.3, 25.2, 0, 0, 270, 2, 30, 30, 0, 0, 'wutwutindabutt', 'Manjot', '2015-02-01 16:37:40', 'Zackary private', 10, 10, 'metalgate'),
(21, 989, 1964.3, -2189.8, 14.4, 0, 0, 106.745, 1968.8, -2189.8, 14.4, 0, 0, 106.743, 8, 50, 30, 0, 0, 'F=47 OR PILOT OR 64 OR 65', 'Exciter', '2014-02-25 20:49:58', 'LSIA Entrance Left', NULL, NULL, 'metalgate'),
(22, 989, 1958.8, -2189.8, 14.4, 0, 0, 106.743, 1954.3, -2189.8, 14.4, 0, 0, 106.743, 8, 50, 30, 0, 0, 'F=47 OR PILOT OR 64 OR 65', 'Exciter', '2014-02-25 20:52:15', 'LSIA Entrance Right', NULL, NULL, 'metalgate'),
(23, 980, -495.1, -562.8, 27.1, 0, 0, 180, -503.1, -562.8, 27.1, 0, 0, 180, 10, 0, 50, 0, 0, 'hydraStrike', 'Keksii', '2014-05-30 20:10:27', 'Flint County DragTrack2', 9, 9, 'metalgate'),
(24, 1536, 2088, 475.8, 0.8, 0, 0, 268, 2088, 475.8, 0.8, 0, 0, 0, 2, 0, 30, 1787, 2, 'Throttle', 'Belgica', '2014-07-30 13:51:30', '1, Mint Street1', NULL, NULL, 'metalgate'),
(25, 9625, 1725.5, -1142.2, 25.9, 0, 0, 270, 1725.5, -1142.2, 31.6, 0, 0, 270, 3, 50, 50, 0, 0, '65', 'Manjot', '2014-03-12 15:36:22', 'LSFD ex', NULL, NULL, NULL),
(26, 9625, 1733.8, -1142.2, 25.9, 0, 0, 270, 1733.8, -1142.2, 31.6, 0, 0, 270, 7, 50, 50, 0, 0, '2', 'MishaKonsta', '2014-03-12 15:38:38', 'Fire Deportament Gate', NULL, NULL, 'metalgate'),
(27, 9625, 1742.9, -1142.2, 25.9, 0, 0, 270, 1742.9, -1142.2, 31.6, 0, 0, 270, 3, 50, 50, 0, 0, '65', 'Manjot', '2014-03-12 15:40:32', 'LSFD ex3', NULL, NULL, NULL),
(28, 9625, 1751.1, -1142.2, 25.9, 0, 0, 270, 1751.1, -1142.2, 31.6, 0, 0, 270, 3, 50, 50, 0, 0, '65', 'Manjot', '2014-03-12 15:41:18', 'LSFD ex4', NULL, NULL, NULL),
(29, 9625, 1759.8, -1142.2, 25.9, 0, 0, 270, 1759.8, -1142.2, 31.6, 0, 0, 270, 3, 50, 50, 0, 0, '65', 'DutchLars', '2014-03-12 15:41:54', 'LSFD ex5', NULL, NULL, NULL),
(30, 9625, 1768, -1142.2, 25.9, 0, 0, 270, 1768, -1142.2, 31.6, 0, 0, 270, 3, 50, 50, 0, 0, '65', 'DutchLars', '2014-03-12 15:42:40', 'LSFD ex6', NULL, NULL, NULL),
(31, 9625, 1733.3, -1108.8, 25.9, 0, 0, 90, 1733.3, -1108.8, 31.6, 0, 0, 90, 3, 50, 50, 0, 0, '65', 'Err0r', '2014-04-08 04:40:04', 'LSFD ex7', NULL, NULL, NULL),
(32, 9625, 1723.9, -1108.8, 25.9, 0, 0, 90, 1723.9, -1108.8, 31.6, 0, 0, 90, 3, 50, 50, 0, 0, '65', 'Err0r', '2014-04-08 04:50:52', 'LSFD ex8', NULL, NULL, NULL),
(33, 1536, 2088, 472.8, 0.8, 0, 0, 89.995, 2088, 472.8, 0.8, 0, 0, 359.995, 2, 0, 30, 1787, 2, 'Throttle', 'Belgica', '2014-07-30 13:52:07', '1, Mint Street2', NULL, NULL, 'metalgate'),
(34, 985, -1040, -532.888, 31.9592, 0, 0, 0, -1040, -532.888, 25, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR F=1 OR F=50', 'Err0r', '2014-08-29 12:19:34', 'Prison EXT gate 1', 20, 20, 'metalgate'),
(35, 2948, 1901.1, -2441.53, 15.03, 0, 0, 0, 1901.1, -2441.53, 15.03, 0, 0, 270, 7, 25, 20, 1806, 5, '59', 'Nadr', '2014-07-31 12:16:12', 'San Andreas County Jail', 3, NULL, NULL),
(36, 2948, 1901.1, -2443.45, 15.03, 0, 0, 180, 1901.1, -2443.4, 15.03, 0, 0, 270, 7, 25, 20, 1806, 5, '59', 'Nadr', '2014-07-31 12:16:40', 'San Andreas Count Jail', 3, NULL, NULL),
(37, 1569, 1897.33, -2418.2, 16.465, 0, 0, 270, 1897.33, -2418.2, 16.465, 0, 0, 180, 1, 30, 25, 1806, 5, '', 'Nadr', '2014-07-31 12:17:21', 'San Andreas County Jail', 3, NULL, NULL),
(38, 1566, -1792.95, 649.257, 960.55, 0, 0, 0, -1792.95, 649.257, 960.55, 0, 0, 270, 3, 30, 30, 617, 1, '65', 'Theno', '2014-03-13 08:22:40', 'LSFD - Internal Door', NULL, NULL, 'metalgate'),
(39, 3089, 1556, -1679.5, 64.8, 0, 0, 0, 1555.9, -1679.5, 64.8, 0, 0, 90, 7, 30, 30, 1225, 3, '50', 'Belgica', '2014-04-29 01:23:38', 'Court Door 1', NULL, NULL, 'metalgate'),
(40, 971, 1577.5, -1695.3, 60.2, 0, 0, 0, 1577.4, -1694.7, 67.5, 0, 0, 0, 7, 20, 20, 1225, 3, '50', 'Belgica', '2014-04-29 00:58:03', 'Celldoor 2', NULL, NULL, 'metalgate'),
(41, 3037, -401.5, -1443.3, 28.2, 0, 0, 90, -401.5, -1445.6, 30, 0, 90, 90, 2, 0, 40, 0, 0, 'niggerhatinme', 'CharChar', '2015-01-25 04:52:21', 'FCRG', 10, 10, 'metalgate'),
(42, 971, 961.2, -942.1, 39.2, 0, 0, 0, 971.2, -942.1, 39.2, 0, 0, 0, 10, 30, 50, 0, 0, 'hotc2015', 'BrukONE', '2014-10-17 20:33:05', 'elizabethstarks', NULL, NULL, 'metalgate'),
(43, 2948, 1892.8, -2446.7, 15.2, 0, 0, 270, 1892.8, -2446.7, 15.2, 0, 0, 180, 7, 25, 20, 1806, 5, '59', 'Nadr', '2014-07-31 12:17:49', 'San Andreas County Jail', 3, NULL, NULL),
(44, 2948, 1890.9, -2446.7, 15.2, 0, 0, 90, 1890.9, -2446.7, 15.2, 0, 0, 180, 7, 25, 20, 1806, 5, '59', 'Nadr', '2014-07-31 12:18:13', 'San Andreas County Jail', 3, NULL, NULL),
(45, 14843, 1912.8, -2418.3, 17.8, 0, 0, 0, 1910, -2418.3, 17.8, 0, 0, 0, 7, 50, 25, 1158, 10, '1', 'Franco', '2014-03-27 11:14:30', 'lspd de1', NULL, NULL, 'metalgate'),
(46, 1569, 1897.33, -2418.2, 16.465, 0, 0, 0, 1897.33, -2418.2, 16.465, 0, 0, -90, 7, 50, 25, 785, 2, '1', 'Franco', '2014-03-27 11:17:37', 'LSPD de2', NULL, NULL, 'metalgate'),
(47, 2948, 1901.1, -2441.53, 15.03, 0, 0, 0, 1901.1, -2441.53, 15.03, 0, 0, 90, 7, 50, 25, 785, 2, '1', 'Franco', '2014-03-27 11:27:16', 'LSPD de 3', NULL, NULL, 'metalgate'),
(48, 2948, 1901.1, -2443.45, 15.03, 0, 0, 180, 1901.1, -2443.45, 15.03, 0, 0, 90, 7, 50, 25, 785, 2, '1', 'Franco', '2014-03-27 11:29:50', 'LSPD de 4', NULL, NULL, 'metalgate'),
(49, 16773, 1385.4, 1820.7, 25, 0, 0, 90, 1385.4, 1820.7, 17, 0, 0, 90, 7, 30, 30, 17, 18, '56', 'AndreC', '2014-08-10 11:20:22', 'Cargo group int gate', 9, 9, 'metalgate'),
(50, 3095, -1346.2, 928.1, 809.2, 270, 0, 0, -1346.2, 924.7, 809.2, 270, 0, 0, 10, 10, 15, 2145, 1, 'Falafel69', 'Weedex', '2014-12-07 16:11:02', 'Warehouse Gate', NULL, NULL, NULL),
(51, 1496, 1564.1, -1662.7, 27.4, 0, 0, 0, 1564.1, -1662.7, 27.4, 0, 0, 270, 7, 20, 40, 0, 0, '1', 'CharChar', '2014-12-10 14:51:33', 'LSPD Roof Gate', 9, 9, 'metalgate'),
(52, 1497, 1933.03, -2397.94, 32.8, 0, 0, 0, 1933.03, -2397.94, 32.8, 0, 0, 90, 2, 50, 30, 1129, 5, 'phillipisthebest', 'Theno', '2014-06-05 14:33:14', 'Interior 1129 Internal Door', NULL, NULL, 'metalgate'),
(53, 988, 4002.14, 1930.38, 10.9375, 0, 0, 45, 3995.14, 1924.38, 10.9375, 0, 0, 45, 7, 30, 30, 0, 0, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-19 10:47:18', 'San Tortuguilla', 9, 9, 'metalgate'),
(54, 5422, 2692.6, -1466, 1153.2, 0, 0, 89.75, 2692.6, -1466, 1156, 0, 0, 89.75, 3, 50, 30, 264, 56, '156', 'Theno', '2014-04-24 17:40:15', 'Court Evidence room', NULL, NULL, 'metalgate'),
(55, 971, 1568.5, -1695.3, 60.3, 0, 0, 0, 1568.5, -1695.3, 67.5, 0, 0, 0, 7, 20, 20, 1225, 3, '50', 'Belgica', '2014-04-29 00:59:06', 'Celldoor', NULL, NULL, 'metalgate'),
(56, 3089, 1565.6, -1674.7, 64.8, 0, 0, 270, 1565.6, -1674.7, 64.8, 0, 0, 178, 7, 30, 30, 1225, 3, '50', 'Belgica', '2014-04-29 01:16:17', 'Court Door 2', NULL, NULL, 'metalgate'),
(57, 3089, 1582.98, -1691.3, 62.2, 0, 0, 0, 1583.1, -1691.3, 62.3, 0, 0, 102, 7, 30, 30, 1225, 3, '50', 'Belgica', '2014-04-29 01:45:11', 'Court Door 3', NULL, NULL, 'metalgate'),
(58, 3089, 2700.5, -1466.2, 1152.5, 0, 0, 0, 2702, -1466.2, 1152.5, 0, 0, 52, 3, 30, 30, 264, 56, '156', 'Max1', '2014-04-29 02:01:30', 'Court Door 4', NULL, NULL, 'metalgate'),
(59, 9625, 1780.9, -1094.8, 25.9, 0, 0, 270, 1780.9, -1094.9, 31.2, 0, 0, 270, 3, 30, 30, 0, 0, '65', 'anumaz', '2014-04-29 16:44:42', 'FD Employee Parking', NULL, NULL, 'metalgate'),
(60, 2948, 1901.1, -2441.53, 15.03, 0, 0, 0, 1901.1, -2441.53, 15.03, 0, 0, 270, 7, 20, 13, 18, 10, '59', 'anumaz', '2014-07-25 02:11:30', 'SASD', 3, NULL, NULL),
(61, 2948, 1901.1, -2443.45, 15.03, 0, 0, 180, 1901.1, -2443.4, 15.03, 0, 0, 270, 7, 20, 13, 18, 10, '59', 'anumaz', '2014-07-25 02:16:51', 'SASD', 3, NULL, NULL),
(62, 1569, 1897.33, -2418.2, 16.465, 0, 0, 0, 1897.33, -2418.2, 16.465, 0, 0, 270, 1, 0, 13, 18, 10, '', 'Nadr', '2014-07-25 02:18:39', 'SASD', 3, NULL, NULL),
(63, 1569, 1395.8, 1490.2, 9.8, 0, 0, 179.744, 1395.8, 1490.2, 9.8, 0, 0, 269.744, 3, 30, 30, 617, 1, '65', 'Err0r', '2014-05-06 15:54:44', 'LSFD int1', NULL, NULL, NULL),
(64, 1569, 1388.8, 1490.2, 9.8, 0, 0, 0.245, 1388.8, 1490.2, 9.8, 0, 0, 270.245, 3, 30, 30, 617, 1, '65', 'Err0r', '2014-05-06 16:01:00', 'LSFD int3', NULL, NULL, NULL),
(65, 1569, 1392.8, 1490.2, 9.8, 0, 0, 359.995, 1392.8, 1490.2, 9.8, 0, 0, 270.995, 3, 30, 30, 617, 1, '65', 'Err0r', '2014-05-06 16:01:30', 'LSFD int4', NULL, NULL, NULL),
(66, 1569, 1392.8, 1507, 9.8, 0, 0, 359.498, 1392.8, 1507, 9.8, 0, 0, 270.498, 3, 30, 30, 617, 1, '65', 'Err0r', '2014-05-06 16:10:01', 'LSFD int5', NULL, NULL, NULL),
(67, 1569, 1395.8, 1507, 9.8, 0, 0, 179.248, 1395.8, 1507, 9.8, 0, 0, 270.248, 3, 30, 30, 617, 1, '65', 'Err0r', '2014-05-06 16:10:32', 'LSFD int6', NULL, NULL, NULL),
(68, 1569, 1391.8, 1507, 9.8, 0, 0, 180.248, 1391.8, 1507, 9.8, 0, 0, 270.248, 3, 30, 30, 617, 1, '65', 'Err0r', '2014-05-06 16:11:06', 'LSFD int7', NULL, NULL, NULL),
(69, 1569, 1388.8, 1507, 9.8, 0, 0, 359.5, 1388.8, 1507, 9.8, 0, 0, 270.5, 3, 30, 30, 617, 1, '65', 'Err0r', '2014-05-06 16:11:59', 'LSFD int8', NULL, NULL, NULL),
(70, 1569, 1385.8, 1511.2, 9.8, 0, 0, 0, 1385.8, 1511.2, 9.8, 0, 0, 270, 3, 0, 30, 617, 1, '65', 'Err0r', '2014-05-06 16:15:02', 'LSFD int9', NULL, NULL, NULL),
(71, 1569, 1393.8, 1511.2, 9.8, 0, 0, 0, 1393.8, 1511.2, 9.8, 0, 0, 90, 3, 30, 30, 617, 1, '65', 'Err0r', '2014-05-06 16:17:18', 'LSFD int10', NULL, NULL, NULL),
(72, 1569, 1397.9, 1511.2, 9.8, 0, 0, 0, 1397.9, 1511.2, 9.8, 0, 0, 270, 3, 0, 15, 617, 1, '65', 'Err0r', '2014-05-06 16:17:54', 'LSFD int11', NULL, NULL, NULL),
(73, 3037, -402.3, -1443.3, 26.9, 0, 0, 90, -402.3, -1445.5, 30, 0, 90, 90, 2, 0, 40, 0, 0, 'niggerhatinme', 'CharChar', '2015-01-25 04:53:01', 'FCRG', 10, 10, 'metalgate'),
(74, 1557, 1992.3, -2220.7, 13.2, 0, 0, 0, 1992.3, -2220.7, 13.2, 0, 0, 290, 3, 0, 20, 0, 0, '127', 'anumaz', '2014-07-06 08:40:39', 'LSIA - Aeroclub in', NULL, NULL, NULL),
(75, 1557, 1989.1, -2232.5, 13.2, 0, 0, 357.995, 1989.1, -2232.5, 13.2, 0, 0, 279.989, 3, 0, 20, 0, 0, '127', 'anumaz', '2014-07-06 08:41:41', 'LSIA - Aeroclub out', NULL, NULL, NULL),
(76, 2930, 2077, -2231.2, 15.2, 0, 0, 0, 2077, -2231.2, 15.2, 0, 0, 90, 8, 20, 20, 0, 0, 'F=47 OR PILOT OR 64 OR 65', 'Exciter', '2014-07-06 08:43:10', 'LSIA - Pilots entrance', 5, 5, 'metalgate'),
(77, 988, 2080.2, -2333, 13.6, 0, 0, 179.995, 2085.5, -2333, 13.6, 0, 0, 179.995, 8, 40, 30, 0, 0, 'F=47 OR 64 OR 65 OR 127', 'einschtein', '2014-07-06 08:44:52', 'LSIA - MIL area', NULL, NULL, 'metalgate'),
(78, 988, 1946.7, -2204.1, 13.6, 0, 0, 89.995, 1946.7, -2198.8, 13.6, 0, 0, 89.995, 8, 40, 30, 0, 0, 'F=47 OR PILOT OR 64 OR 65', 'einschtein', '2014-07-06 08:47:02', 'LSIA - Apron entrance', 9, 9, 'metalgate'),
(79, 969, -943.1, -1723.9, 76.6, 0, 0, 90, -943.1, -1733, 76.6, 0, 0, 90, 10, 40, 40, 0, 0, 'creamcorn', 'dfajoe', '2014-08-13 20:03:46', 'The McCullah Ranch', 12, 12, 'metalgate'),
(80, 3089, 1917.1, 100.2, 951.1, 0, 0, 0, 1918.6, 101.5, 951.1, 0, 0, 90, 7, 50, 30, 1225, 3, '1 50 59', 'Belgica', '2014-05-11 21:25:21', '', NULL, NULL, NULL),
(81, 3089, 1938.5, 88, 946.7, 0, 0, 0, 1940.1, 88.1, 946.7, 0, 0, 52, 7, 20, 20, 1225, 3, '50', 'Belgica', '2014-05-11 19:46:16', '', NULL, NULL, 'metalgate'),
(82, 2930, 1913.4, 89, 952.4, 0, 0, 0, 1913.4, 88.9, 949.7, 0, 0, 0, 7, 20, 20, 1225, 3, '1 50 59', 'Belgica', '2014-05-11 21:43:25', 'Marshal Office Gate', NULL, NULL, 'metalgate'),
(83, 2930, 1364.1, 382, 21.4, 0, 0, 337.497, 1364.1, 382, 21.4, 0, 0, 425, 7, 30, 20, 0, 0, '59', 'Nadr', '2015-01-28 01:29:36', 'SAHP Monty Station', 4, 5, 'metalgate'),
(84, 1553, 2094.5, -1310.8, 24.2, 0, 0, 0, 2092.6, -1310.8, 24.2, 0, 0, 0, 10, 0, 30, 0, 0, 'daughertyfgt', 'Lemonth', '2014-07-06 11:33:25', '2, Belview Road', NULL, NULL, 'metalgate'),
(85, 969, 841.9, -577, 15.6, 0, 0, 0, 841.9, -577, 11.6, 0, 0, 0, 8, 30, 30, 0, 0, '5=1597', 'Lemonth', '2014-05-14 17:41:19', 'Old IHMC legal gate', NULL, NULL, 'metalgate'),
(86, 3089, 2749.7, -2373.1, 819.6, 0, 0, 269.496, 2749.7, -2373.1, 819.6, 0, 0, 359.495, 3, 30, 15, 220, 2, '156', 'Nadr', '2014-05-15 07:19:15', 'SCOSA Gate 1', NULL, NULL, NULL),
(87, 3089, 2750.7, -2371.1, 819.6, 0, 0, 226.243, 2750.7, -2371.1, 819.6, 0, 0, 308.241, 3, 30, 15, 220, 2, '156', 'Nadr', '2014-05-15 07:20:10', 'SCOSA Gate 2', NULL, NULL, NULL),
(88, 3089, 2767.4, -2371.3, 819.6, 0, 0, 329.996, 2767.4, -2371.4, 819.6, 0, 0, 225.991, 3, 30, 15, 220, 2, '156', 'Nadr', '2014-05-15 07:20:46', 'SCOSA Gate 3', NULL, NULL, NULL),
(89, 980, 952.5, -1383.7, 13.5, 0, 0, 0, 952.5, -1383.7, 9.5, 0, 0, 0, 2, 0, 30, 0, 0, 'sacmastaff', 'BrukONE', '2014-05-15 14:50:30', 'Pasadena Blvd - Garage2', NULL, NULL, 'metalgate'),
(90, 980, 964.7, -1383.7, 13.5, 0, 0, 0, 964.7, -1383.7, 9.5, 0, 0, 0, 2, 0, 30, 0, 0, 'sacmastaff', 'BrukONE', '2014-05-15 14:52:12', 'Pasadena Blvd - Garage1', NULL, NULL, 'metalgate'),
(91, 2948, 1892.8, -2446.7, 15.2, 0, 0, 270, 1892.8, -2446.7, 15.2, 0, 0, 180, 7, 10, 13, 18, 10, '59', 'Nadr', '2014-07-25 02:22:22', 'SASD', 3, NULL, NULL),
(92, 10575, 1549.9, 17.4, 25.1, 0, 0, 190, 1549.9, 17.4, 21.1, 0, 0, 190, 2, 0, 10, 0, 0, 'JalluK0la', 'Keksii', '2014-05-15 18:15:34', 'Red County - Wooden House', NULL, NULL, 'metalgate'),
(93, 11102, 161.19, -22.25, 2.67, 0, 0, 180, 161.19, -22.25, 6.6, 0, 0, 179.995, 2, 45, 45, 0, 0, 'anumaz', 'anumaz', '2014-05-17 04:17:32', 'Dennis Simmons\' garage', NULL, NULL, 'metalgate'),
(94, 985, 318.366, -1190.6, 75.671, 0, 0, 218, 315.688, -1192.59, 75.671, 0, 0, 217.996, 5, 30, 30, 0, 0, '2632', 'Kermoo', '2015-01-19 15:29:30', 'Mansion gate', 55, 55, 'metalgate'),
(95, 11102, 1554.3, -27.6, 22.5, 0, 0, 0, 1554.3, -27.6, 17.5, 0, 0, 0, 2, 0, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 16:48:21', 'Red County - Wooden House', NULL, NULL, 'metalgate'),
(96, 11102, 1524.3, 13.1, 23.5, 0, 0, 10.75, 1524.3, 13.1, 17.5, 0, 0, 10.75, 2, 0, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 16:55:27', 'test1', NULL, NULL, 'metalgate'),
(97, 11102, 1522.6, 23.4, 23.6, 0, 0, 10.75, 1522.6, 23.4, 17.6, 0, 0, 10.75, 2, 0, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 16:55:56', 'test2', NULL, NULL, 'metalgate'),
(98, 11102, 1545.5, -27.4, 22.5, 0, 0, 0, 1545.5, -27.4, 17.5, 0, 0, 0, 2, 0, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 16:56:25', 'test3', NULL, NULL, 'metalgate'),
(99, 11102, 1509.7, 10.4, 23.9, 0, 0, 11, 1509.7, 10.4, 17.9, 0, 0, 11, 2, 20, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 16:56:49', 'test4', NULL, NULL, 'metalgate'),
(100, 11102, 1508.1, 20.5, 23.9, 0, 0, 10.9973, 1508.1, 20.5, 17.9, 0, 0, 10.9973, 2, 20, 20, 0, 0, 'JalluK0la', 'Keksii', '2014-05-17 16:57:27', 'test5', NULL, NULL, 'metalgate'),
(101, 968, 2808.39, -1468.68, 16, 0, 90, 1, 2808.39, -1468.68, 16, 0, 180, 1, 8, 0, 30, 0, 0, '170 = 7335', 'Belgica', '2014-06-01 17:56:33', 'Tay Automobiles Parking ', NULL, NULL, 'metalgate'),
(102, 1569, 444.3, 93.5, 1060.3, 0, 0, 0, 442.8, 93.5, 1060.3, 0, 0, 0, 1, 30, 30, 550, 3, '19', 'Poffy', '2014-05-20 13:21:42', 'KingEnt 1', NULL, NULL, 'metalgate'),
(103, 2773, 1451.68, 1448.45, 26.5, 0, 0, 90, 1452.68, 1448.45, 26.5, 0, 0, 0, 2, 0, 30, 731, 22, 'entrance', 'anumaz', '2014-05-22 14:45:03', 'Peacock entrance', NULL, NULL, 'metalgate'),
(104, 1569, 472.7, 89.1, 1059.3, 0, 0, 0, 471.2, 89.1, 1059.3, 0, 0, 0, 2, 30, 30, 550, 3, 'SupDean', 'Keksii', '2014-05-20 13:27:05', 'KingEnt 2', NULL, NULL, 'metalgate'),
(105, 1569, 493.7, 89.2, 1059.3, 0, 0, 0, 492.3, 89.2, 1059.3, 0, 0, 0, 2, 30, 30, 550, 3, 'SupDean', 'Keksii', '2014-05-20 13:29:52', 'KingEnt 3', NULL, NULL, 'metalgate'),
(106, 1569, 463.1, 92, 1060.3, 0, 0, 270, 463.1, 93.4, 1060.3, 0, 0, 270, 2, 30, 30, 550, 3, 'SupDean', 'Keksii', '2014-05-20 13:31:10', 'KingEnt 4', NULL, NULL, 'metalgate'),
(107, 1569, 469.2, 90.7, 1060.3, 0, 0, 270, 469.2, 90.7, 1060.3, 0, 0, 90, 2, 30, 30, 550, 3, 'SupDean', 'Keksii', '2014-05-20 13:38:12', 'KingEnt 5', NULL, NULL, 'metalgate'),
(108, 2773, 1553.8, 1541.42, 19.8, 0, 0, 0, 1552.86, 1540.45, 19.8, 0, 0, 90, 2, 20, 20, 2015, 21, 'sushi', 'FAILCAKEZ', '2014-10-19 22:32:10', 'Restaurant pole', 5, 5, NULL),
(109, 3055, 1364.3, -1544.1, 14.7, 0, 0, 345.998, 1364.3, -1544.1, 18.4, 0, 0, 345.998, 3, 20, 20, 0, 0, '156', 'Maxime', '2014-10-21 09:31:38', 'Court', NULL, NULL, 'metalgate'),
(110, 1557, 1458.1, 1461.3, 26, 0, 0, 90, 1458.1, 1461.3, 26, 0, 0, 180, 2, 30, 30, 731, 22, 'pcprivate', 'Rilind', '2014-05-22 14:49:55', 'ElizabethStarks', NULL, NULL, NULL),
(111, 1557, 1458.1, 1464.3, 26, 0, 0, 270, 1458.1, 1464.3, 26, 0, 0, 180, 2, 30, 30, 731, 22, 'pcprivate', 'Rilind', '2014-05-22 14:50:53', 'ElizabethStarks', NULL, NULL, NULL),
(112, 2634, 1526, 1333.67, 12, 0, 0, 180, 1526.8, 1332.6, 12, 0, 0, 90, 8, 0, 90, 732, 24, '4=732', 'AndreC', '2014-05-22 15:03:53', 'Peacock vault', NULL, NULL, 'metalgate'),
(113, 1495, 1532.3, 1330.3, 10.3, 0, 0, 90, 1532.3, 1330.3, 10.3, 0, 0, 0, 2, 30, 30, 732, 24, 'test', 'anumaz', '2014-05-22 15:08:56', 'Peacock vault 1', NULL, NULL, 'metalgate'),
(114, 1495, 1532.4, 1325.8, 10.3, 0, 0, 90, 1532.4, 1325.8, 10.3, 0, 0, 0, 2, 30, 30, 732, 24, 'test', 'anumaz', '2014-05-22 15:10:21', 'Peacock vault 2', NULL, NULL, 'metalgate'),
(115, 1495, 1532.4, 1321.2, 10.3, 0, 0, 90, 1532.4, 1321.2, 10.3, 0, 0, 0, 2, 30, 30, 732, 24, 'test', 'anumaz', '2014-05-22 15:10:45', 'Peacock vault 3', NULL, NULL, 'metalgate'),
(116, 1495, 1532.4, 1316.5, 10.3, 0, 0, 90, 1532.4, 1316.5, 10.3, 0, 0, 0, 2, 30, 30, 732, 24, 'test', 'anumaz', '2014-05-22 15:11:11', 'Peacock vault 4', NULL, NULL, 'metalgate'),
(117, 8673, -87.3, -1126.2, -5, 0, 0, 70.5, -87.3, -1126.2, -5, 0, 0, 70.5, 2, 0, 300, 0, 0, 'rshaul', 'Nadr', '2014-06-08 12:39:32', 'RS HAUL', NULL, NULL, 'metalgate'),
(118, 3037, -401.5, -1443.2, 26.9, 0, 0, 90, -401.5, -1445.6, 30, 0, 90, 90, 2, 0, 40, 0, 0, 'niggerhatinme', 'CharChar', '2015-01-25 04:53:39', 'FCRG', 10, 10, 'metalgate'),
(119, 980, -483.6, -562.8, 27.1, 0, 0, 179.997, -475.6, -562.8, 27.1, 0, 0, 179.997, 10, 0, 50, 0, 0, 'hydraStrike', 'Keksii', '2014-05-30 20:19:57', 'Flint County DragTrack1', 9, 9, 'metalgate'),
(120, 2930, 1913.8, -2449.9, 16.6, 0, 0, 2, 1913.8, -2448.3, 16.6, 0, 0, 0.25, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 12:18:50', 'San Andreas County Jail', 3, NULL, 'metalgate'),
(121, 1553, 2222.2, -1230.7, 24.2, 0, 0, 0, 2220.9, -1229.4, 24.2, 0, 0, -90, 8, 0, 30, 0, 0, '170=65891', 'Belgica', '2014-07-31 12:45:30', 'mabako1', NULL, NULL, 'metalgate'),
(122, 1569, 222.13, 79.3, 1004, 0, 0, 90, 222.2, 79.37, 1004, 0, 0, 180, 7, 0, 20, 624, 6, '1', 'Jevi', '2014-08-11 15:28:35', '', 4, NULL, 'metalgate'),
(123, 975, 1092.3, -628.4, 111.8, 0, 14, 353.25, 1091.6, -628.4, 108, 0, 14, 353.25, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 14:48:13', 'Almeida House Gate', 10, 10, 'metalgate'),
(124, 968, 1578.8, 711.1, 10.6, 1, 270, 270, 1578.8, 711.1, 10.6, 1, 180, 270, 8, 30, 30, 0, 0, 'F=59 OR F=1', 'anumaz', '2014-09-12 00:07:09', 'PD-SD training grounds', 9, 9, 'metalgate'),
(125, 980, 984.6, -1585.1, 15.3, 0, 0, 0, 984.6, -1585.1, 9.7, 0, 0, 0, 8, 35, 30, 0, 0, '170=556847', 'Belgica', '2014-09-26 12:34:10', 'Panopticon Avenue Garage', NULL, NULL, 'metalgate'),
(126, 2774, 1101.3, -630, 102.1, 0, 0, 0, 1101.3, -630, 102.1, 0, 0, 0, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 14:50:18', 'Almeida House', 10, 10, NULL),
(127, 3037, -402.3, -1443.4, 28.2, 0, 0, 90, -402.3, -1445.6, 30, 0, 90, 90, 2, 0, 40, 0, 0, 'niggerhatinme', 'CharChar', '2015-01-25 04:54:05', 'FCRG', 10, 10, 'metalgate'),
(128, 4084, -2104.04, -2404.82, 32.24, 0, 0, 321, -2104.04, -2404.82, 35.62, 0, 0, 321, 10, 0, 40, 0, 0, 'bratva', 'BrukONE', '2015-01-25 12:39:29', 'Bratva', 15, 15, 'metalgate'),
(129, 971, 923.55, -1216.5, 17.7, 0, 0, 90, 923.2, -1216.2, 11.4, 0, 0, 90.2, 5, 60, 25, 0, 0, '1', 'Kermoo', '2014-06-18 00:56:59', 'Gated Community in Vinewood', NULL, NULL, 'metalgate'),
(130, 971, 923.55, -1226.3, 17.7, 0, 0, 90, 923.3, -1226.8, 11.4, 0, 0, 270.25, 10, 50, 25, 0, 0, 'VinewoodGardens', 'Mirazoka', '2014-06-18 00:59:11', 'Gated Community in Vinewood', NULL, NULL, 'metalgate'),
(131, 2948, 1890.9, -2446.7, 15.2, 0, 0, 90, 1890.9, -2446.7, 15.2, 0, 0, 180, 7, 10, 13, 18, 10, '59', 'Nadr', '2014-07-25 02:24:45', 'SASD', 3, NULL, NULL),
(132, 2930, 1917, -2462.4, 15.2, 0, 0, 270, 1915.4, -2462.4, 15.2, 0, 0, 270, 7, 0, 13, 18, 10, '59', 'Nadr', '2014-07-25 02:26:27', 'SASD', 2, NULL, 'metalgate'),
(133, 2930, 1912.5, -2462.4, 15.2, 0, 0, 270, 1910.9, -2462.4, 15.2, 0, 0, 270, 7, 0, 13, 18, 10, '59', 'Nadr', '2014-07-25 02:28:06', 'SASD', 2, NULL, 'metalgate'),
(134, 1569, 1615.07, 1569.4, 9.9, 0, 0, 0, 1615.07, 1569.4, 9.9, 0, 0, 90, 3, 40, 20, 6, 24, '86', 'Lewis', '2014-06-11 18:32:57', 'LSN Door', NULL, NULL, NULL),
(135, 1536, 1420.5, 1394.8, 12.3, 0, 0, 270, 1420.5, 1394.8, 12.3, 0, 0, 347.061, 3, 35, 18, 785, 2, '64', 'Ron', '2014-06-12 17:20:58', 'OCI Main door', NULL, NULL, NULL),
(136, 14843, 1432, 1418.2, 15, 0, 0, 0, 1433.5, 1418.2, 15, 0, 0, 0, 3, 30, 30, 785, 2, '64', 'Theno', '2014-06-12 17:21:19', 'OCI Cell door', NULL, NULL, 'metalgate'),
(137, 971, 2071.3, -2533.8, 25.7, 0, 0, 90, 2071.3, -2525, 25.7, 0, 0, 90, 10, 30, 30, 1123, 56, 'Metro - I', 'Sloth', '2014-06-12 20:04:15', 'PD Metro Garage', NULL, NULL, NULL),
(138, 3089, 1810.07, -2499.68, 13.888, 0, 0, 90, 1810.07, -2499.68, 13.888, 0, 0, 180, 10, 20, 10, 1529, 23, 'Metro - I', 'Sloth', '2014-06-12 20:16:50', 'Metro Int Door 1', NULL, NULL, NULL),
(139, 3089, 1810.07, -2509.68, 13.899, 0, 0, 90, 1810.07, -2509.68, 13.899, 0, 0, 180, 10, 20, 10, 1529, 23, 'Metro - I', 'Sloth', '2014-06-12 20:22:54', 'Metro Int Door 2', NULL, NULL, NULL),
(140, 3089, 1799.59, -2478.67, 13.89, 0, 0, 0, 1799.59, -2478.67, 13.89, 0, 0, -90, 10, 20, 10, 1529, 23, 'Metro - I', 'Sloth', '2014-06-12 20:24:44', 'Metro Int Door 3', NULL, NULL, NULL),
(141, 11313, 1574.1, 1582.6, 20.1, 0, 0, 90, 1574, 1584.7, 21.584, 0, -90, 90, 7, 0, 30, 1220, 25, '56', 'AndreC', '2014-06-14 14:22:16', 'Cargo Group Interior', NULL, NULL, 'metalgate'),
(142, 969, 1284.98, -1609.41, 12.71, 0, 0, 270, 1284.98, -1617.38, 12.71, 0, 0, 270, 10, 0, 40, 0, 0, 'democrats', 'BrukONE', '2015-01-06 16:10:08', 'Democratic Buildings', 15, 15, 'metalgate'),
(143, 2930, 923.6, -1209.1, 18.6, 0, 0, 0, 923.6, -1209.1, 18.6, 0, 0, 260, 10, 45, 15, 0, 0, 'VinewoodGardens', 'Mirazoka', '2014-06-18 01:13:58', 'Gated Community in Vinewood  - Foot Entrance', NULL, NULL, 'metalgate'),
(144, 2930, 923.53, -1209.1, 18.6, 0, 0, 180, 923.53, -1209.1, 18.6, 0, 0, 180, 10, 0, 0, 0, 0, 'VinewoodGardens', 'Mirazoka', '2014-06-18 01:15:27', 'Gated Community in Vinewood - Null', NULL, NULL, 'metalgate'),
(145, 1569, 246.94, 72.55, 1002.6, 0, 0, 0, 246.94, 72.55, 1002.6, 0, 0, 90, 7, 0, 20, 624, 6, '1', 'Jevi', '2014-08-11 15:47:32', '', 4, NULL, NULL),
(146, 1569, 248.1, 76.4, 1002.6, 0, 0, 270, 248.05, 76.34, 1002.6, 0, 0, 0, 7, 0, 20, 264, 6, '1', 'Jevi', '2014-08-11 15:54:54', '', 4, NULL, NULL),
(147, 1569, -2223.1, 135.4, 1034.4, 0, 0, 91.999, -2223.1, 135.4, 1034.4, 0, 0, 181.994, 2, 30, 30, 414, 6, 'Snipes316', 'Belgica', '2014-06-26 14:21:06', 'Vinewood Pawns - Interior', NULL, NULL, NULL),
(148, 2930, 1512.84, 1497.22, 25.9, 0, 0, 0, 1512.84, 1497.22, 25.9, 0, 0, 270, 2, 30, 30, 993, 29, 'IHMC', 'DutchLars', '2014-07-01 11:49:35', 'IHMC Club House ', NULL, NULL, 'metalgate'),
(149, 2933, 2446.6, -1461.2, 24.7, 0, 0, 270, 2449, -1461.2, 27.45, 90, 0, 269.995, 8, 0, 30, 0, 0, '170=7335', 'Belgica', '2014-07-01 12:46:01', 'CarWash Front', NULL, NULL, 'metalgate'),
(150, 988, 2506.9, -1457.6, 23.9, 0, 0, 90, 2506.9, -1467.1, 23.9, 0, 0, 90, 8, 0, 30, 0, 0, '170=7335', 'Belgica', '2014-07-01 12:49:09', 'CarWash Back Right', NULL, NULL, 'metalgate'),
(151, 988, 2506.8, -1463, 23.9, 0, 0, 90, 2506.8, -1467.1, 23.9, 0, 0, 90, 8, 0, 30, 0, 0, '170=7335', 'Belgica', '2014-07-01 12:50:13', 'Carwash Back Left', NULL, NULL, 'metalgate'),
(152, 3095, 2457.6, -1461.3, 27.1, 0, 0, 0, 2457.8, -1461.2, 24, 0, 0, 0, 2, 0, 100, 0, 0, '241996a', 'Belgica', '2014-07-01 12:51:22', 'Crusher', NULL, NULL, 'metalgate'),
(153, 1569, -62.57, 129.31, 1007.2, 0, 0, 90, -62.57, 129.31, 1007.2, 0, 0, 180, 7, 30, 20, 1614, 3, '1 or 59', 'Nadr', '2014-11-29 16:13:45', 'Training Grounds', 4, NULL, NULL),
(154, 1553, 2097.3, -1310.8, 24.2, 0, 0, 0, 2099.4, -1310.8, 24.2, 0, 0, 0, 10, 0, 30, 0, 0, 'daughertyfgt', 'Lemonth', '2014-07-06 11:34:11', '2, Belview Road2', NULL, NULL, 'metalgate'),
(155, 2930, 1908, -2462.4, 15.2, 0, 0, 270, 1906.4, -2462.4, 15.2, 0, 0, 270, 7, 0, 13, 18, 10, '59', 'Nadr', '2014-07-25 02:30:09', 'SASD', 2, NULL, 'metalgate'),
(156, 2930, 1913.8, -2449.9, 16.6, 0, 0, 2, 1913.8, -2448.3, 16.6, 0, 0, 0.25, 7, 0, 13, 18, 10, '59', 'Nadr', '2014-07-25 02:31:49', 'SASD', 2, NULL, 'metalgate'),
(157, 3037, -261.6, -2169.4, 30.3, 0, 0, 56, -261.6, -2169.4, 26.1, 0, 0, 55.997, 7, 30, 20, 0, 0, '59', 'Nadr', '2014-11-10 00:03:09', 'SAHP Gate 1', 7, 9, 'metalgate'),
(158, 974, 1896.5, -2446.6, 19.1, 0, 0, 0, 1896.5, -2446.6, 20.3, 0, 0, 0, 7, 0, 30, 18, 10, '59', 'Nadr', '2014-07-25 03:55:24', 'SASD', 5, NULL, 'metalgate'),
(159, 10184, 1905, -2428.9, 16.9, 0, 0, 357.995, 1905.1, -2427.9, 21.9, 0, 0, 357.995, 7, 45, 40, 2248, 21, '1 or 50 or 59', 'Nadr', '2014-12-01 01:41:27', 'PD/HP/CoSA Impound', 4, 7, 'metalgate'),
(160, 1553, 2225, -1230.7, 24.2, 0, 0, 0, 2226.3, -1229.4, 24.2, 0, 0, 90, 8, 0, 30, 0, 0, '170=65891', 'Belgica', '2014-07-31 12:45:54', 'mabako2', NULL, NULL, 'metalgate'),
(161, 1553, 2050.5, -1126, 24.2, 0, 0, 0, 2047.5, -1126, 24.2, 0, 0, 0, 10, 40, 40, 0, 0, 'rip187', 'Nadr', '2014-07-26 17:23:43', 'Park Avenue 1 - Glenpark', 5, 7, NULL),
(162, 1553, 2053.3, -1126, 24.2, 0, 0, 0, 2056.3, -1126, 24.2, 0, 0, 0, 10, 40, 40, 0, 0, 'rip187', 'Nadr', '2014-07-26 17:25:34', 'Park Avenue 1 - Glenpark (2)', 5, 7, NULL),
(163, 1569, 1394, 1843.5, 13.86, 0, 0, 0, 1394.1, 1843.5, 13.86, 0, 0, 90, 7, 0, 20, 624, 6, '1', 'Franco', '2014-08-11 18:37:29', '', 4, NULL, NULL),
(164, 2930, 1918.4, -2455, 16.5, 0, 0, 90, 1916.7, -2455, 16.5, 0, 0, 90, 7, 25, 20, 18, 10, '59', 'Nadr', '2014-07-28 08:09:19', 'SASD', 3, NULL, 'metalgate'),
(165, 2930, 1920.1, -2455, 16.5, 0, 0, 90, 1920.1, -2455, 16.5, 0, 0, 90, 7, 25, 20, 18, 10, '59', 'Nadr', '2014-07-28 08:17:30', 'SASD', 3, NULL, 'metalgate'),
(166, 2930, 1914.35, -2446.8, 16.5, 0, 0, 90, 1912.7, -2446.8, 16.5, 0, 0, 90, 7, 25, 20, 18, 10, '59', 'Nadr', '2014-07-28 08:26:15', 'SASD', 3, NULL, NULL),
(167, 2930, 1916, -2446.8, 16.5, 0, 0, 90, 1916, -2446.8, 16.5, 0, 0, 90, 7, 25, 20, 18, 10, '59', 'Nadr', '2014-07-28 08:30:53', 'SASD', 3, NULL, 'metalgate'),
(168, 2930, 1914, -2442.4, 17.8, 0, 0, 0.75, 1914, -2443.8, 17.8, 0, 0, 0.75, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 13:05:06', 'San Andreas County Jail', 3, NULL, 'metalgate'),
(169, 2930, 1914, -2440.7, 17.8, 0, 0, 0.747, 1914, -2439.3, 17.8, 0, 0, 0.747, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 13:05:36', 'San Andreas County Jail', 3, NULL, 'metalgate'),
(170, 2930, 1914, -2443.45, 19.5, 87.984, 277.122, 84.371, 1914, -2443.45, 19.5, 87.984, 277.122, 84.371, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 13:06:08', 'San Andreas County Jail', 3, NULL, NULL),
(171, 2930, 1916.4, -2446.7, 16.6, 0, 0, 270.497, 1918, -2446.7, 16.6, 0, 0, 270.497, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 13:06:31', 'San Andreas County Jail', 3, NULL, 'metalgate'),
(172, 2930, 1914.7, -2446.7, 16.6, 0, 0, 270.494, 1914.7, -2446.7, 16.6, 0, 0, 270.494, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 13:06:58', 'San Andreas County Jail', 3, NULL, NULL),
(173, 2930, 1920.1, -2455, 16.6, 0, 0, 270.494, 1918.5, -2455, 16.6, 0, 0, 270.494, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 13:08:18', 'San Andreas County Jail', 3, NULL, 'metalgate'),
(174, 2930, 1921.8, -2455, 16.6, 0, 0, 270.494, 1921.8, -2455, 16.6, 0, 0, 270.494, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 13:08:38', 'San Andreas County Jail', 3, NULL, NULL),
(175, 2930, 1914.05, -2446.1, 19.5, 87.984, 277.119, 84.37, 1914.05, -2446.1, 19.5, 87.984, 277.119, 84.37, 3, 30, 20, 1806, 5, '64 112', 'Nadr', '2014-07-31 13:09:19', 'San Andreas County Jail', 3, NULL, NULL),
(176, 1742, 1395.3, 1802.85, 9.8, 0, 0, 179.995, 1395.9, 1804, 9.8, 0, 0, 90, 10, 20, 20, 1796, 10, 'usa', 'Mirazoka', '2014-07-31 15:23:25', '', NULL, NULL, 'metalgate'),
(177, 10154, 1911.67, -2295.73, 15.37, 0, 0, 0, 1911.67, -2295.73, 17, 0, 90, 0, 7, 30, 20, 1081, 56, '59', 'Nadr', '2014-08-01 20:43:24', 'SASD', 5, 6, 'metalgate'),
(178, 10154, 1911.67, -2290.2, 15.37, 0, 0, 0, 1911.67, -2290.2, 15.37, 0, 0, 0, 7, 30, 20, 1081, 56, '59', 'Maxime', '2014-08-01 20:45:24', 'SASD', 5, 6, 'metalgate'),
(179, 1569, 2148.2, -1415.9, 292.69, 0, 0, 0, 2148.2, -1415.9, 292.69, 0, 0, 85, 7, 25, 20, 1397, 2, '59', 'Nadr', '2014-08-01 21:17:46', 'SASD', 4, NULL, NULL),
(180, 976, 1283.2, -621.8, 102, 357.75, 0.25, 31.01, 1290, -617.8, 102, 357.75, 0.25, 31.01, 10, 0, 45, 0, 0, 'snipesmotherfuckinggate', 'BlueBerry', '2014-11-14 11:28:02', 'Snipes', 9, 9, 'metalgate'),
(181, 968, 2702.4, -2534.1, 13.3, 0, 270, 0, 2702.4, -2534.1, 13.3, 0, 182, 0, 3, 0, 30, 0, 0, '82', 'BrukONE', '2014-11-10 09:35:40', 'RT Auction Lot 1', 9, 9, NULL),
(182, 968, 2736.8, -2564.3, 13.3, 0, 270, 0, 2736.8, -2564.3, 13.3, 0, 182, 0, 3, 0, 30, 0, 0, '82', 'BrukONE', '2014-11-10 09:38:11', 'RT Auction Lot 2', 9, 9, 'metalgate'),
(183, 985, 2664.3, -2688.8, 14.4, 0, 0, 270, 2664.3, -2696.6, 14.4, 0, 0, 270, 3, 15, 30, 0, 0, '82', 'BrukONE', '2014-11-10 10:48:01', 'RT Inside Gate', 9, 9, 'metalgate'),
(184, 969, 1342.4, -912.1, 34.9, 0, 0, 179.995, 1335, -912.09, 34.9, 0, 0, 180, 8, 0, 30, 0, 0, '170=7636', 'Belgica', '2014-08-05 12:37:15', 'Peckers Pawnshop', NULL, NULL, 'metalgate'),
(185, 988, -265.7, -255.8, 999.8, 0, 0, 270, -265.7, -260.8, 999.8, 0, 0, 270, 2, 0, 30, 1793, 38, 'pooop', 'BrukONE', '2014-08-07 08:08:14', '37 Auto\'s Building Facility', 30, 30, 'metalgate'),
(186, 986, 2676, -2704.8, 14.4, 0, 0, 180, 2684, -2704.8, 14.4, 0, 0, 180, 3, 15, 30, 0, 0, '82', 'BrukONE', '2014-11-09 18:19:15', 'RT Back Gate 1', 9, 9, 'metalgate'),
(187, 985, 2668.1, -2704.8, 14.4, 0, 0, 180, 2660.1, -2704.8, 14.4, 0, 0, 180, 3, 15, 30, 0, 0, '82', 'BrukONE', '2014-11-09 18:20:03', 'RT Back Gate 2', 9, 9, 'metalgate'),
(188, 969, 2226.7, -2217.5, 12.7, 0, 0, 315.747, 2233.1, -2223.7, 12.7, 0, 0, 315.742, 5, 30, 30, 0, 0, '180', 'Kermoo', '2014-12-13 16:07:57', 'saptgate', NULL, NULL, 'metalgate'),
(189, 1569, 1577.3, -1637.33, 12.54, 0, 0, 90, 1577.3, -1637.33, 12.54, 0, 0, 180, 7, 30, 20, 0, 0, '1', 'Lemonth', '2015-01-09 16:03:19', 'LSPD Side Door', 5, 0, 'metalgate'),
(190, 988, 1386.9, 1328.99, 21.6, 0, 0, 270, 1386.9, 1324, 21.6, 0, 0, 269.995, 2, 100, 30, 1810, 3, 'rafiko', 'Belgica', '2014-08-09 07:38:50', 'IdlewoodMall', NULL, NULL, 'metalgate'),
(191, 988, 1386.8, 1334.4, 21.6, 0, 0, 269.995, 1386.8, 1323.99, 21.6, 0, 0, 269.995, 2, 100, 30, 1810, 3, 'rafiko', 'Belgica', '2014-08-09 07:39:28', 'IdlewoodMall2', NULL, NULL, 'metalgate'),
(192, 1569, 1387.6, 1820.3, 12.45, 0, 0, 270, 1387.6, 1820.2, 12.45, 0, 0, 0, 7, 10, 20, 624, 6, '1', 'Lewis', '2014-08-11 18:39:39', '', 4, NULL, NULL),
(193, 986, 324.606, -1185.66, 75.671, 0, 0, 218.726, 326.953, -1183.72, 75.671, 0, 0, 218.721, 5, 30, 30, 0, 0, '2632', 'Kermoo', '2015-01-19 15:31:53', '', 55, 55, 'metalgate'),
(194, 988, -113.5, 173.6, 1016.1, 0, 0, 88, -113.5, 179.6, 1016.1, 0, 0, 88, 2, 0, 30, 1861, 38, '37a', 'Belgica', '2014-08-12 08:24:22', '37 Auto\'s (Int 1861)', NULL, NULL, 'metalgate'),
(195, 2885, 1064.4, -309.3, 78.49, 0, 0, 0, 1064.4, -309.3, 72.99, 0, 0, 0, 5, 0, 30, 0, 0, '1996', 'Kermoo', '2014-08-15 20:24:33', 'Hiltop Farms', 9, 9, 'metalgate'),
(196, 968, 391.6, 2553.94, 16.3, 0, 90, 0, 391.6, 2553.94, 16.11, 0, 160, 0, 10, 0, 30, 0, 0, 'hydraStrike', 'Keksii', '2014-08-13 19:11:27', 'Drag Track Bone County', 5, 5, 'metalgate'),
(197, 968, 427.9, 2504.4, 16.2, 0, 90, 180, 427.9, 2504.4, 16.2, 0, 160, 180, 10, 0, 30, 0, 0, 'hydraStrike', 'Keksii', '2014-08-13 19:13:31', 'Drag Track Bone County', 5, 5, 'metalgate'),
(198, 968, 17, 2504.6, 16.2, 355, 270, 0, 17, 2504.6, 16.11, 355, 200, 0, 10, 0, 30, 0, 0, 'hydraStrike', 'Keksii', '2014-08-13 19:19:30', 'Drag Track Bone County', 5, 5, 'metalgate'),
(199, 968, 17, 2484, 16.2, 355, 270, 0, 17, 2484, 16.12, 355, 200, 0, 10, 0, 30, 0, 0, 'hydraStrike', 'Keksii', '2014-08-13 19:23:05', 'Drag Track Bone County', 5, 5, 'metalgate'),
(200, 988, 4006.14, 1934.38, 10.9375, 0, 0, 45, 4010.14, 1938.38, 10.9375, 0, 0, 45, 8, 30, 30, 0, 0, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-19 10:50:42', 'San Tortuguilla 2', 9, 9, 'metalgate'),
(201, 1495, 1652.2, -2291.4, 1276, 0, 0, 180, 1652.2, -2291.4, 1276, 0, 0, 90, 8, 0, 20, 2337, 4, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-25 12:41:52', 'LSIA terminal - Gate C', NULL, NULL, NULL),
(202, 1495, 1673, -2291.4, 1276, 0, 0, 0, 1673, -2291.4, 1276, 0, 0, 90, 8, 0, 20, 2337, 4, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-25 12:43:47', 'LSIA terminal - Gate D', NULL, NULL, NULL),
(203, 1495, 1694.1, -2291.2, 1276, 0, 0, 0, 1694.1, -2291.2, 1276, 0, 0, 90, 8, 0, 20, 2337, 4, 'F=47 OR 170=FAA access card for flyUS', 'Exciter', '2014-08-25 12:45:56', 'LSIA terminal - Gate E', NULL, NULL, NULL),
(204, 985, -1041.04, -587.749, 31.9592, 0, 0, 0, -1041.04, -587.749, 25, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR F=1 OR F=50', 'Err0r', '2014-08-29 12:22:25', 'Prison EXT gate 2', 20, 20, 'metalgate'),
(205, 2930, -980.615, -655.193, 34.0157, 0, 0, 270, -980.615, -655.193, 34.0157, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR F=1 OR F=50', 'Nadr', '2014-08-29 12:24:45', 'Prison EXT gate 3', 3, 9, 'metalgate'),
(206, 971, -1112.86, -677.301, 32.9681, 0, 0, 359.742, -1112.86, -677.301, 25, 0, 0, 359.742, 8, 30, 30, 0, 0, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 12:30:02', 'Prison EXT gate 4', 3, 9, 'metalgate'),
(207, 971, -1043.83, -744.119, 32.9681, 0, 0, 359.742, -1043.83, -744.119, 25, 0, 0, 359.742, 8, 30, 30, 0, 0, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 12:31:36', 'Prison EXT gate 5', 3, 9, 'metalgate'),
(208, 2930, -1071.44, -690.959, 33.6659, 0, 0, 270, -1071.44, -690.959, 33.6659, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 12:32:57', 'Prison EXT gate 6', 3, 9, 'metalgate'),
(209, 2930, -1023.91, -691.882, 33.6659, 0, 0, 270, -1023.91, -691.882, 33.6659, 0, 0, 0, 8, 30, 30, 0, 0, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 12:33:46', 'Prison EXT gate 7', 3, 9, 'metalgate'),
(210, 2930, 1498.29, 1532.13, 12.6085, 0, 0, 0, 1498.29, 1532.13, 12.6085, 0, 0, 90, 8, 30, 30, 861, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 12:41:13', 'Prison INT Eating Hall 1', 3, 9, 'metalgate'),
(211, 2930, 1438.72, 1542.06, 12.4966, 0, 0, 0, 1438.72, 1542.06, 12.4966, 0, 0, 90, 8, 30, 30, 881, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 12:43:24', 'Prison INT Christian 1', 3, 9, 'metalgate'),
(212, 2930, 1436.06, 1544.14, 12.4966, 0, 0, 90, 1436.06, 1544.14, 12.4966, 0, 0, 0, 8, 0, 30, 881, 3, 'F=59 OR 64=prison access', 'tomtiger11', '2014-08-29 12:44:26', 'Prison INT Christian 2', 3, 9, 'metalgate'),
(213, 2930, 1410.27, 1543.9, 12.4754, 0, 0, 90, 1410.27, 1543.9, 12.4754, 0, 0, 0, 8, 0, 30, 881, 3, 'F=59 OR 64=prison access', 'tomtiger11', '2014-08-29 12:45:20', 'Prison INT Christian 3', 3, 9, 'metalgate'),
(214, 1569, 1468.66, 1546.02, 12.4531, 0, 0, 0, 1468.66, 1546.02, 12.4531, 0, 0, 90, 8, 30, 30, 812, 3, 'F=59', 'anumaz', '2014-08-29 12:54:06', 'Prison INT lobby 1', 3, 9, NULL),
(215, 1569, 1478.45, 1551.09, 12.4531, 0, 0, 269.989, 1478.45, 1551.09, 12.4531, 0, 0, 0, 8, 30, 30, 812, 3, 'F=59', 'anumaz', '2014-08-29 12:57:10', 'Prison INT lobby 2', 3, 9, NULL),
(216, 1569, 1478.76, 1544.47, 12.4531, 0, 0, 0, 1478.76, 1544.47, 12.4531, 0, 0, 90, 8, 30, 30, 812, 3, 'F=59', 'anumaz', '2014-08-29 12:58:40', 'Prison INT lobby 3', 3, 9, NULL),
(217, 2930, 1470.93, 1516.2, 12.59, 0, 0, 270, 1470.93, 1516.2, 12.59, 0, 0, 0, 8, 30, 30, 851, 3, 'F=59', 'Nadr', '2014-08-29 13:10:08', 'Prison INT visit 1', 3, 9, 'metalgate'),
(218, 2930, 1452.76, 1503.41, 12.5158, 0, 0, 270, 1452.76, 1503.41, 12.5158, 0, 0, 0, 8, 30, 30, 851, 3, 'F=59', 'Nadr', '2014-08-29 13:14:34', 'Prison INT visit 2', 3, 9, 'metalgate'),
(219, 2930, 1448.36, 1503.66, 12.5158, 0, 0, 270, 1448.36, 1503.66, 12.5158, 0, 0, 0, 8, 30, 30, 851, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 13:32:44', 'Prison INT visit 3', 3, 9, 'metalgate'),
(220, 2930, 1443.87, 1518.11, 12.5158, 0, 0, 180, 1443.87, 1518.11, 12.5158, 0, 0, 270, 8, 30, 30, 851, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 13:33:36', 'Prison INT visit 4', 3, 9, 'metalgate'),
(221, 2930, 1434.56, 1504.29, 12.4416, 0, 0, 180, 1434.56, 1504.29, 12.4416, 0, 0, 270, 8, 30, 30, 851, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 13:34:56', 'Prison INT process 1', 3, 0, 'metalgate'),
(222, 2930, 1432.16, 1508.2, 12.4522, 0, 0, 270, 1432.16, 1508.2, 12.4522, 0, 0, 180, 8, 30, 30, 851, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 13:36:18', 'Prison INT process 2', 3, 9, 'metalgate'),
(223, 13817, 1483.51, 1530.3, 11.1369, 0, 0, 270, 1483.51, 1530.3, 7, 0, 0, 270, 8, 30, 30, 812, 3, 'F=59', 'Nadr', '2014-08-29 13:59:13', 'Prison INT hole 1', 3, 9, 'metalgate'),
(224, 13817, 1487.93, 1530.32, 11.1369, 0, 0, 270, 1487.93, 1530.32, 7, 0, 0, 270, 8, 30, 30, 812, 3, 'F=59', 'Nadr', '2014-08-29 14:00:18', 'Prison INT hole 2', 3, 9, 'metalgate'),
(225, 13817, 1492.44, 1530.4, 11.1369, 0, 0, 270, 1492.44, 1530.4, 7, 0, 0, 270, 8, 30, 30, 812, 3, 'F=59', 'Nadr', '2014-08-29 14:02:10', 'Prison INT hole 3', 3, 9, 'metalgate'),
(226, 1495, 1491.68, 1539.43, 11.175, 0, 0, 90, 1491.68, 1539.43, 11.175, 0, 0, 0, 8, 30, 30, 812, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 14:08:16', 'Prison INT lobby 4', 3, 9, 'metalgate'),
(227, 1495, 1497.5, 1534, 10, 0, 0, 180, 1497.5, 1534, 10, 0, 0, 90, 8, 30, 30, 812, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-29 14:11:34', 'Prison INT lobby 5', 3, 9, 'metalgate'),
(228, 3115, -408.4, 1000.7, 390.5, 0, 0, 0, -408.4, 1000.7, 369.9, 0, 0, 0, 0, 1, 1, 0, 18, '', 'Poffy', '2014-08-31 16:16:54', '', NULL, NULL, 'metalgate'),
(229, 2930, 1039.2, 1224.55, 1494.7, 0, 180, 0, 1039.2, 1224.55, 1494.7, 0, 180, 270, 8, 30, 20, 880, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-08-31 19:09:14', 'Prison INT Block 1', 3, NULL, 'metalgate'),
(230, 2930, 1035.25, 1224.6, 1494.7, 0, 180, 0, 1035.25, 1224.6, 1494.7, 0, 180, 90, 8, 30, 20, 880, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-09-01 01:45:31', 'Prison INT Block 2', 3, NULL, 'metalgate'),
(231, 2930, 1027, 1249.85, 1493, 0, 0, 0, 1027, 1249.85, 1493, 0, 0, 90, 8, 0, 20, 880, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-09-01 01:54:35', 'Prison INT Block 3', 4, NULL, 'metalgate'),
(232, 2930, 1027, 1248.15, 1493, 0, 0, 0, 1027, 1248.15, 1493, 0, 0, 0, 8, 0, 20, 880, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-09-01 02:03:08', 'Prison INT Block 3 Spacer', 4, NULL, NULL),
(233, 2930, 1027, 1256.4, 1493, 0, 0, 180, 1027, 1256.4, 1493, 0, 0, 90, 8, 0, 20, 880, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-09-01 02:09:03', 'Prison INT Block 4', 4, NULL, 'metalgate'),
(234, 2930, 1027.07, 1259.8, 1493, 0, 0, 0, 1027.07, 1259.8, 1493, 0, 0, 90, 8, 0, 20, 880, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-09-01 02:31:06', 'Prison INT Block 4', 4, NULL, 'metalgate'),
(235, 2930, 1035.5, 1261.15, 1492.98, 0, 0, 90, 1035.5, 1261.15, 1492.98, 0, 0, 270, 8, 0, 40, 880, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-09-01 03:59:07', 'Prison INT Block 5', 4, NULL, 'metalgate'),
(236, 2930, 1038.94, 1261.08, 1492.98, 0, 0, 270, 1038.94, 1261.08, 1492.98, 0, 0, 90, 8, 0, 40, 880, 3, 'F=59 OR 64=prison access', 'Nadr', '2014-09-01 04:07:09', 'Prison INT Block 5', 4, NULL, 'metalgate'),
(237, 3115, -407.9, 1001.7, 390.5, 0, 0, 0, -407.9, 1001.7, 369.9, 0, 0, 0, 2, 0, 100, 218, 6, 'mansack', 'Capone', '2014-09-01 14:33:42', 'Interior 218', 9.9, 9.9, 'metalgate'),
(238, 3089, 1806.87, -1374.11, 29.6, 0, 0, 0, 1806.87, -1374.11, 29.6, 0, 0, 96.75, 7, 30, 20, 14, 3, '4', 'DutchLars', '2014-09-01 19:33:48', 'Chase INT', 3, NULL, NULL),
(239, 971, 263.8, -1333.4, 55.1, 0, 0.648, 216.749, 263.8, -1333.4, 47.2, 0, 0.643, 216.744, 5, 30, 20, 0, 0, 'parool123', 'Kermoo', '2014-09-04 14:30:12', 'Russel House', NULL, NULL, 'metalgate'),
(240, 968, 1578.8, 710.9, 10.65, 0, 90, 270, 1578.8, 710.9, 10.65, 0, 180, 270, 8, 30, 30, 0, 0, 'F=59 OR F=1', 'anumaz', '2014-09-12 00:07:33', 'PD-SD training grounds', 9, 9, 'metalgate'),
(241, 980, -491.6, -527.9, 26.3, 0, 0, 89.5, -496, -532.2, 26.3, 0, 0, 180.245, 10, 0, 60, 0, 0, 'hydraStrike', 'Keksii', '2014-09-15 07:07:00', 'Gate to enter race track in Doriland', 9, 9, 'metalgate'),
(242, 968, 2100.37, -1374.47, 23.73, 0, 90, 180, 2100.37, -1374.47, 23.73, 0, 180, 180, 10, 0, 30, 0, 0, 'cunt', 'CharChar', '2015-01-05 07:10:54', 'Tel-Aviv Motors', 30, 30, NULL),
(243, 2930, 1381.4, 374.5, 21.5, 0, 0, 337.247, 1381.4, 374.5, 21.5, 0, 0, 248, 7, 30, 20, 0, 0, '59', 'Nadr', '2015-01-28 01:31:18', 'SAHP Monty Station', 3, 4, 'metalgate'),
(244, 11327, 1481.4, 1313.1, 12.9, 0, 0, 0, 1481.4, 1313.09, 16.8, 0, 0, 0, 8, 0, 30, 822, 27, '170 = 7335', 'Belgica', '2014-12-02 15:55:43', 'Belgica', 9, 9, 'metalgate'),
(245, 11102, 958, -1179.1, 18.1, 0, 0, 90, 961.8, -1210.6, 16.1, 0, 0, 180, 2, 30, 30, 0, 0, '0143', 'Rilind', '2014-12-06 18:02:56', '30', NULL, NULL, 'metalgate'),
(246, 1569, 1513.8, 1348.5, 10, 0, 0, 0, 1513.8, 1348.5, 10, 0, 0, -90, 7, 20, 20, 617, 1, '2', 'Rilind', '2015-01-11 10:41:51', 'lsfdlobby', NULL, NULL, NULL),
(247, 975, 2453.87, 85.269, 25, 0, 0, 270, 2453.87, 85.269, 22, 0, 0, 270, 10, 10, 50, 0, 0, 'Sarah123', 'CharChar', '2015-01-21 12:01:55', '9', 9, 9, 'metalgate'),
(248, 968, 988.8, -1776.5, 13.97, 0, 270, 346, 988.8, -1776.5, 13.97, 0, 180, 346, 10, 0, 30, 0, 0, 'sadiqsos', 'Weedex', '2014-09-18 14:55:44', 'Marina garage', 9, 9, 'metalgate'),
(249, 2930, 1861.4, -2461, 19.7, 0, 0, 270, 1859.8, -2461, 19.7, 0, 0, 270, 5, 30, 20, 630, 27, '', 'Lewis', '2014-09-19 17:56:57', 'LSPD Evidence', 3, NULL, 'metalgate'),
(250, 2957, 2494.3, 90.8, 26.3, 0, 0, 0, 2494.3, 89.1, 27.9, 85.93, 0, 0, 10, 0, 25, 0, 0, 'lennox', 'ron', '2014-09-23 18:05:26', 'Palo3', NULL, NULL, 'metalgate'),
(251, 17951, 100, -164.8, 3.4, 0, 0, 0, 97.9, -164.8, 4.5, 0, 267.5, 1.5, 2, 0, 25, 0, 0, 'lennox', 'Rilind', '2014-09-27 03:05:26', 'blueberry garage', NULL, NULL, 'metalgate'),
(252, 968, 1407.1, 423.7, 20, 0, 90, 335.24, 1407.1, 423.7, 20, 0, 155, 335.24, 7, 40, 30, 0, 0, '59', 'BrukONE', '2015-01-28 01:33:32', 'SAHP Monty Station', 7, 9, 'metalgate'),
(253, 1553, 2329, -108.4, 26, 0, 0, 179.995, 2329, -108.4, 24, 0, 0, 179.995, 10, 15, 40, 0, 0, 'Konjamani-69', 'BrukONE', '2015-01-28 09:41:46', 'Palo Gate', 10, 10, 'metalgate'),
(254, 3037, -279.1, -2170.5, 30.3, 0, 0, 109.747, -279.1, -2170.5, 26.1, 0, 0, 109.742, 7, 30, 20, 0, 0, '59', 'Nadr', '2014-11-10 00:03:51', 'SAHP Gate 2', 7, 9, 'metalgate'),
(255, 1553, 2326.2, -108.4, 26, 0, 0, 179.995, 2326.2, -108.4, 24, 0, 0, 179.995, 10, 15, 40, 0, 0, 'Konjamani-69', 'BrukONE', '2015-01-28 09:42:29', 'Palo Gate 2', 10, 10, 'metalgate'),
(256, 2933, 200.6, -1386.6, 48.9, 0, 359.25, 226, 206.8, -1380.4, 48.9, 0, 359.247, 226, 8, 32, 30, 0, 0, '4=1979', 'tomtiger11', '2014-10-04 13:45:22', 'Richman-garage gate', NULL, NULL, 'metalgate'),
(257, 4100, 2039.4, 1452.1, 972.5, 39.998, 270.42, 359.593, 2039.4, 1452.1, 968, 39.998, 270.42, 359.593, 10, 30, 40, 2250, 10, 'Metro - III', 'Sloth', '2015-02-03 16:17:55', 'Metro Evidence - 1', 6, 1, NULL),
(258, 4100, 2039, 1457.4, 971.2, 39.996, 270.417, 359.588, 2039, 1457.4, 968, 39.996, 270.417, 359.588, 10, 30, 40, 2250, 10, 'Metro - III', 'Sloth', '2015-02-03 16:20:46', 'Metro evidence 2', 6, NULL, NULL),
(259, 16775, 1278.5, -1652.2, 16.5, 0, 0, 270, 1278.5, -1652.2, 24.4, 0, 0, 270, 7, 30, 20, 0, 0, '1', 'Rilind', '2014-10-10 13:15:54', '', 10, 10, 'metalgate'),
(260, 1553, 2149.7, -1230.8, 24.2, 0, 0, 180.5, 2150.7, -1229.6, 24.2, 0, 0, 107.25, 2, 30, 30, 0, 0, 'Richie', 'BlueBerry', '2014-11-26 15:42:30', 'Richard Barbero', 9, 9, 'metalgate'),
(261, 1553, 2146.9, -1230.8, 24.2, 0, 0, 178.75, 2146, -1229.6, 24.2, 0, 0, 252.5, 2, 30, 30, 0, 0, 'Richie', 'BlueBerry', '2014-11-26 15:43:09', 'Richard Barbero', 9, 9, 'metalgate'),
(262, 1569, 1635.2, -1674.2, 13.5, 0, 0, 269.25, 1635.2, -1674.2, 13.5, 0, 0, 180.497, 7, 15, 15, 0, 0, '20', 'MishaKonsta', '2014-10-21 15:50:42', 'lsnGate', NULL, NULL, 'metalgate'),
(263, 1569, 1635.2, -1677.2, 13.5, 0, 0, 90.5, 1635.2, -1677.2, 13.5, 0, 0, 180.744, 7, 15, 15, 0, 0, '20', 'MishaKonsta', '2014-10-21 15:51:45', 'lsnGate2', NULL, NULL, 'metalgate'),
(264, 976, 2747.9, -1182.1, 66.3, 0, 0, 90, 2747.9, -1188.4, 66.3, 0, 0, 90, 2, 50, 50, 0, 0, 'test', 'BlueBerry', '2014-10-23 12:20:49', 'Holson House', 9, 9, 'metalgate'),
(265, 2708, 802.3, -1390.3, 2968.4, 0, 0, 270, 802.3, -1388.9, 2968.4, 0, 0, 270, 2, 0, 30, 1846, 1, 'JalluK0la', 'Rilind', '2014-10-24 19:18:16', 'MonaMcLaughlin', NULL, NULL, NULL),
(266, 2708, 802.3, -1392.7, 2968.4, 0, 0, 270, 802.3, -1394.3, 2968.4, 0, 0, 270, 2, 0, 30, 1846, 1, 'JalluK0la', 'Rilind', '2014-10-24 19:20:03', 'MonaMcLaughlin', NULL, NULL, NULL),
(267, 988, 1378.4, -1821, 13.6, 0, 0, 90.5, 1375.8, -1823.7, 13.6, 0, 0, 359.25, 8, 30, 30, 0, 0, '5=2009', 'AndreC', '2014-10-26 13:31:19', 'personalgatedylanjeter', NULL, NULL, 'metalgate'),
(268, 980, 1812.8, -2071.7, 13.6, 0, 0, 270, 1812.8, -2062, 13.6, 0, 0, 270, 2, 0, 30, 0, 0, 'mickeyswarehouse', 'einschtein', '2014-10-27 18:11:16', '1', 9, 9, 'metalgate'),
(269, 2933, 895.9, -717.03, 107.06, 0, 347.7, 67.8, 895.92, -716.89, 105.92, 0, 347.7, 67.8, 10, 0, 15, 0, 0, 'einschtein', 'einschtein', '2014-10-29 17:49:46', '8, Palin Street', 9, 9, 'metalgate'),
(272, 1495, 2248.45, 168.915, 26.4, 0, 0, 180, 2248.45, 168.915, 26.4, 0, 0, 90, 8, 12, 12, 0, 0, '', 'AndreC', '2014-11-15 20:10:22', 'Jay walters palomino house', NULL, NULL, NULL),
(273, 3055, 1358, -1566.7, 14.7, 0, 0, 345.998, 1358, -1566.7, 18.6, 0, 0, 345.998, 3, 20, 20, 0, 0, '156', 'Rilind', '2014-10-31 17:16:44', 'Courts', NULL, NULL, 'metalgate'),
(274, 1569, 1543.9, 1486.4, 28.1, 0, 0, 180, 1543.9, 1486.4, 28.1, 0, 0, 90, 1, 30, 20, 2695, 21, '', 'MishaKonsta', '2015-01-17 13:01:10', 'GovDoorleft', NULL, NULL, 'metalgate'),
(275, 1569, 1540.9, 1486.4, 28.1, 0, 0, 0, 1540.9, 1486.4, 28.1, 0, 0, 90, 7, 30, 20, 2695, 21, '3', 'tomtiger11', '2015-01-17 13:02:03', 'GovDoorRight', NULL, NULL, NULL),
(276, 975, 1117.5, -1222.6, 18.6, 0, 0, 0, 1126, -1222.6, 18.6, 0, 0, 0, 8, 0, 30, 0, 0, '5=972', 'AndreC', '2014-11-01 22:43:08', 'Creason and Creason back lot gate', 22, 22, 'metalgate'),
(277, 980, 2131.87, -1869.35, 13, 0, 0, 90, 2131.87, -1869.35, 9.77, 0, 0, 90, 8, 30, 30, 0, 0, '170=JohnstreetGate', 'BlueBerry', '2014-11-02 07:02:48', 'Johnstreet, back entrance', NULL, NULL, 'metalgate'),
(278, 16773, 1924.21, -2406.98, 14.21, 0, 0, 90, 1924.21, -2406.98, 8.6, 0, 0, 90, 8, 30, 30, 2140, 56, '170=PantopicanAvenueHotel', 'BlueBerry', '2014-11-02 13:44:15', 'Pantopican Avenue Hotel', NULL, NULL, 'metalgate'),
(279, 2634, 2039, 1477.8, 976.7, 0, 0, 180, 2040, 1478.6, 976.7, 0, 0, 270, 10, 30, 40, 2250, 10, 'Metro - IV', 'Sloth', '2015-02-03 16:22:51', 'Metro evidence 3', 30, 40, NULL);
INSERT INTO `gates` (`id`, `objectID`, `startX`, `startY`, `startZ`, `startRX`, `startRY`, `startRZ`, `endX`, `endY`, `endZ`, `endRX`, `endRY`, `endRZ`, `gateType`, `autocloseTime`, `movementTime`, `objectDimension`, `objectInterior`, `gateSecurityParameters`, `creator`, `createdDate`, `adminNote`, `triggerDistance`, `triggerDistanceVehicle`, `sound`) VALUES
(280, 3089, 2759.7, -2379.9, 819.6, 0, 0, 180, 2759.7, -2379.9, 819.6, 0, 0, 270, 7, 0, 20, 220, 2, '50', 'Nadr', '2014-11-04 04:23:49', 'SCoSA', 4, NULL, NULL),
(281, 968, 1623.42, -1882.46, 13.25, 0, 90, 180, 1623.42, -1882.46, 13.25, 0, 165, 180, 10, 0, 30, 0, 0, 'hiroto69', 'Belgica', '2015-01-21 21:54:58', 'Next to Unity Station', 15, 15, NULL),
(282, 1553, 1909.03, -1123.39, 25.49, 0, 0, 0, 1909.03, -1123.39, 23.3, 0, 0, 0, 8, 0, 30, 0, 0, '4=998', 'BrukONE', '2015-01-22 20:47:10', 'Park Avenue - House 2', 15, 15, 'metalgate'),
(283, 1553, 1911.85, -1123.39, 25.49, 0, 0, 0, 1911.85, -1123.39, 23.3, 0, 0, 0, 8, 0, 30, 0, 0, '4=998', 'BrukONE', '2015-01-22 20:49:54', 'Park Avenue - House 2', 15, 15, NULL),
(284, 2946, 2120.8, -2442.25, 12.658, 0, 0, 180, 2120.8, -2442.25, 12.658, 0, 0, 95, 3, 0, 30, 1637, 56, '82', 'BrukONE', '2014-11-11 11:26:07', 'RT Auction Lot Office Door', 9, 9, NULL),
(285, 980, 1042.99, 806.12, -73.2, 0, 0, 0, 1042.99, 806.12, -83.2, 0, 0, 0, 8, 30, 50, 1452, 17, '170=1452', 'Belgica', '2015-01-25 13:21:10', 'gate', 9, 9, 'metalgate'),
(286, 988, 2044.8, 1471.1, 976, 0, 0, 270, 2044.8, 1474.5, 976, 0, 0, 270, 10, 30, 40, 2250, 10, 'Metro - III', 'Sloth', '2015-02-03 16:24:31', 'Metro evidence 4', 6, NULL, NULL),
(287, 2948, 489.855, -61.04, 975.1, 0, 0, 270, 489.855, -61.04, 975.1, 0, 0, 0, 8, 0, 30, 2090, 29, '55=Whispers', 'Belgica', '2014-11-22 07:14:26', 'IntID2090', 9, 9, NULL),
(288, 2988, 480, -81.8, 975.2, 0, 0, 0, 480, -81.8, 975.2, 0, 0, -90, 2, 0, 30, 2090, 29, 's14', 'Belgica', '2014-11-22 07:17:05', 'Int2090Ext', 9, 9, 'metalgate'),
(289, 2988, 480, -90.2, 975.2, 0, 0, 180, 480, -90.2, 975.2, 0, 0, -90, 2, 0, 30, 2090, 29, 's14', 'Belgica', '2014-11-22 07:20:22', 'Int2090Ext2', 9, 9, 'metalgate'),
(290, 988, 2044.8, 1465.2, 976, 0, 0, 270, 2044.8, 1462, 976, 0, 0, 270, 10, 30, 40, 2250, 10, 'Metro - III', 'Sloth', '2015-02-03 16:26:31', 'Metro evidence 5', 6, NULL, NULL),
(291, 980, -128.357, -179.24, 0.847, 0, 0, 350.25, -128.357, -179.241, -1.66777, 0, 0, 350.25, 10, 75, 15, 0, 0, 'loser_poop69', 'BrukONE', '2014-11-28 15:16:19', 'farmgate1', 15, 30, 'metalgate'),
(292, 980, -26.9634, 163.081, 1.3706, 0, 0, 328.703, -26.9639, 163.081, -1.2552, 0, 0, 328.7, 10, 75, 20, 0, 0, 'loser_poop69', 'BrukONE', '2014-11-28 17:09:19', 'farmgate2', 15, 30, 'metalgate'),
(293, 1569, -27.96, 123.73, 1006.2, 0, 0, 0, -27.96, 123.73, 1006.2, 0, 0, 270, 7, 30, 20, 1614, 3, '1 or 59', 'Nadr', '2014-11-29 16:17:05', 'Training Grounds', 4, NULL, NULL),
(294, 1569, -6.99, 123.7, 1006.2, 0, 0, 0, -6.99, 123.7, 1006.2, 0, 0, 270, 7, 30, 20, 1614, 3, '1 or 59', 'Nadr', '2014-11-29 16:20:04', 'Training Grounds', 4, NULL, NULL),
(295, 4100, 2039.4, 1452.1, 972.5, 39.998, 270.42, 359.593, 2039.4, 1452.1, 968, 39.998, 270.42, 359.593, 7, 30, 40, 2247, 2, '59', 'Nadr', '2014-12-01 00:51:45', 'SAHP', 6, NULL, 'metalgate'),
(296, 4100, 2039, 1457.4, 971.2, 39.996, 270.417, 359.588, 2039, 1457.4, 968, 39.996, 270.417, 359.588, 7, 30, 40, 2247, 2, '59', 'Nadr', '2014-12-01 00:52:35', 'SAHP', 6, NULL, 'metalgate'),
(297, 2634, 2039, 1477.8, 976.7, 0, 0, 180, 2040, 1478.6, 976.7, 0, 0, 270, 7, 60, 40, 2247, 2, '59', 'Nadr', '2014-12-01 00:57:36', 'SAHP', 2, NULL, 'metalgate'),
(298, 988, 2044.8, 1471.1, 976, 0, 0, 270, 2044.8, 1474.5, 976, 0, 0, 270, 7, 60, 40, 2247, 2, '59', 'Nadr', '2014-12-01 01:02:16', 'SAHP', 3, NULL, 'metalgate'),
(299, 988, 2044.8, 1465.2, 976, 0, 0, 270, 2044.8, 1462, 976, 0, 0, 270, 7, 60, 40, 2247, 2, '59', 'Nadr', '2014-12-01 01:02:56', 'SAHP', 3, NULL, 'metalgate'),
(300, 988, 2031.7, 1465.4, 976, 0, 0, 90, 2031.7, 1462, 976, 0, 0, 90, 2, 60, 40, 2247, 2, 'deltaseven', 'Nadr', '2014-12-01 01:03:17', 'SAHP', 3, NULL, 'metalgate'),
(301, 988, 2031.7, 1471.2, 976, 0, 0, 90, 2031.7, 1474.5, 976, 0, 0, 90, 7, 60, 40, 2247, 2, '59', 'Nadr', '2014-12-01 01:03:39', 'SAHP', 3, NULL, 'metalgate'),
(302, 3036, 2197.95, -1001.27, 61.4, 0, 0, 339.311, 2197.95, -1001.27, 61.4, 0, 0, -106, 2, 30, 30, 0, 0, '0143', 'Rilind', '2014-12-01 04:16:52', 'Dominick Carter', 9, 9, 'metalgate'),
(303, 3089, 1565.6, -1674.7, 64.8, 0, 0, 270, 1565.5, -1674.7, 64.8, 0, 0, 144, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-01 23:46:28', 'Superior Court of San Andreas', 2, 2, NULL),
(304, 3089, 1555.9, -1679.5, 64.8, 0, 0, 0, 1555.9, -1679.5, 64.8, 0, 0, 132, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-01 23:56:56', 'Superior Court of San Andreas', 2, 2, NULL),
(305, 3089, 1583.3, -1688.3, 63.6, 0, 0, 0, 1583.3, -1688.3, 63.6, 0, 0, 110, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-01 23:59:19', 'Superior Court of San Andreas', 2, 2, NULL),
(306, 3089, 1565.7, -1655.3, 66.2, 0, 0, 179.995, 1565.7, -1655.3, 66.2, 0, 0, 301.995, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 00:01:12', 'Superior Court of San Andreas', 2, 2, NULL),
(307, 2963, 1562, -1651, 66.1, 0, 0, 90, 1559.2, -1651.1, 66.3, 0, 0, 90, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 00:02:49', 'Superior Court of San Andreas', 2, 2, 'metalgate'),
(308, 3089, 1569.7, -1655.3, 66.2, 0, 0, 179.995, 1569.7, -1655.3, 66.2, 0, 0, 305.995, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 00:04:12', 'Superior Court of San Andreas', 2, 2, NULL),
(309, 3089, 1567.94, -1663.2, 66.2, 0, 0, 90, 1568, -1663.2, 66.2, 0, 0, 320, 8, 30, 30, 2249, 7, 'F=50', 'dfajoe', '2014-12-02 00:05:10', 'Superior Court of San Andreas', 2, 2, NULL),
(310, 2774, 1084.9, -627.9, 105.8, 0, 0, 0, 1084.9, -627.9, 105.8, 0, 0, 0, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 14:51:15', 'Almeida House ', 10, 10, NULL),
(311, 3109, -1337.2, 932.1, 794, 0, 0, 0, -1337.2, 930.6, 794, 0, 0, 0, 10, 10, 10, 2145, 1, 'Falafel96', 'Weedex', '2014-12-07 16:05:57', 'Gate.', NULL, NULL, NULL),
(312, 1553, 2093.69, -1290.98, 24.16, 0, 0, 0, 2091.49, -1290.98, 24.16, 0, 0, 0, 10, 0, 30, 0, 0, 'vladim_belview', 'BrukONE', '2014-12-19 06:51:29', '1, Belview Road', NULL, NULL, 'metalgate'),
(313, 1505, 1335.75, 1382.85, 10.3, 0, 0, 0, 1336, 1383.2, 10.3, 0, 0, -272, 3, 30, 30, 1883, 24, '180', 'Rilind', '2014-12-14 10:36:16', 'sapthqgate', NULL, NULL, NULL),
(314, 1553, 2096.51, -1290.98, 24.16, 0, 0, 0, 2098.71, -1290.98, 24.16, 0, 0, 0, 10, 0, 30, 0, 0, 'vladim_belview', 'BrukONE', '2014-12-19 06:53:20', '1, Belview Road', NULL, NULL, 'metalgate'),
(315, 3089, 1867.8, -2241.4, 1359.7, 0, 0, 270, 1867.8, -2241.4, 1359.7, 0, 0, 170, 8, 20, 20, 2340, 4, 'F=47', 'Exciter', '2014-12-19 13:03:10', 'LSIA - ATC', NULL, NULL, 'metalgate'),
(316, 3089, 1735.4, -1637.6, 1521.4, 0, 0, 270, 1735.4, -1637.6, 1521.4, 0, 0, 180, 8, 20, 20, 1462, 3, '170=ClubX 150207 OR 170=ClubX 1502', 'Exciter', '2014-12-21 20:07:11', 'Club X - VIP', NULL, NULL, NULL),
(317, 1497, 2640.92, -1343.48, 1010.17, 0, 0, 90, 2640.92, -1343.48, 1010.17, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 14:54:58', '2219', 5, 6, NULL),
(318, 3055, 2595.7, -1320.5, 997.9, 0, 0, 0, 2595.7, -1320.5, 994.67, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 15:10:07', '2219', 15, 20, NULL),
(319, 3055, 2608.41, -1324.5, 997.9, 0, 0, 90, 2608.41, -1324.5, 994.66, 0, 0, 90, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 15:11:33', '2219', 5, 7, NULL),
(320, 2988, 2630.9, -1321.05, 1003.8, 0, 0, 90, 2630.9, -1321.05, 1003.8, 0, 0, 150, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 15:15:11', '2219', 5, 4, NULL),
(321, 1497, 2641.25, -1324.96, 1003.84, 0, 0, 270, 2641.25, -1324.96, 1003.84, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 15:17:31', '2219', 3, 3, NULL),
(322, 1497, 2641.27, -1327.97, 1003.84, 0, 0, 90, 2641.28, -1327.97, 1003.84, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 15:18:41', '2219', 5, 1, NULL),
(323, 1497, 2628.81, -1324.25, 997.5, 0, 0, 90, 2628.81, -1324.25, 997.5, 0, 0, 180, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 15:22:50', '2219', 4, 4, NULL),
(324, 1497, 2628.78, -1321.24, 997.5, 0, 0, 270, 2628.78, -1321.24, 997.5, 0, 0, 180, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 15:24:04', '2219', 5, 5, NULL),
(325, 1497, 2640.89, -1340.47, 1010.17, 0, 0, 270, 2640.89, -1340.47, 1010.17, 0, 0, 0, 2, 0, 50, 2219, 1, 's14', 'Err0r', '2014-12-23 15:31:34', '2219', 5, 5, NULL),
(326, 976, 2609, -1332.23, 1010.13, 0, 0, 0, 2609, -1332.23, 1006, 0, 0, 0, 2, 0, 50, 2219, 1, 's11', 'CharChar', '2014-12-23 20:28:57', 's14', 90, 5, NULL),
(327, 985, 1081.57, -1301.25, 79.0625, 0, 0, 90, 1081.57, -1292.56, 79.0625, 0, 0, 90, 7, 30, 22, 1060, 1, '1', 'AndreC', '2014-12-23 21:58:13', 'LSPD Impound Gate', 50, 50, 'metalgate'),
(328, 3089, 450.3, 188.05, 1016.8, 0, 0, 90, 450.3, 188.05, 1016.8, 0, 0, 10, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:23:08', 'SAHP Meeting', 2, NULL, NULL),
(329, 3055, 1564, -1609.96, 13.3828, 0, 0, 90, 1560.87, -1610.09, 17.02, 99, 0, 90, 7, 40, 17, 0, 0, '1', 'Maxime', '2014-12-24 00:23:51', 'PD impound', 14, 14, 'metalgate'),
(330, 3089, 450.4, 176.57, 1016.8, 0, 0, 90, 450.4, 176.57, 1016.8, 0, 0, 170, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:24:03', 'SAHP Interrogation', 2, 0, NULL),
(331, 2930, 463.8, 179.7, 1018.08, 0, 0, 270, 465.3, 179.7, 1018.08, 0, 0, 270, 7, 30, 30, 2380, 5, '59', 'Nadr', '2014-12-24 00:26:20', 'SAHP Cell', 2, NULL, 'metalgate'),
(332, 3089, 470, 201.7, 1028.6, 0, 0, 90, 470, 201.7, 1028.6, 0, 0, 170, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:27:10', 'SAHP Rec Room', 2, NULL, NULL),
(333, 3089, 449.775, 175.4, 1016.64, 0, 0, 180, 449.775, 175.4, 1016.64, 0, 0, 100, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:28:00', 'SAHP Private Interrogation', 2, NULL, NULL),
(334, 3089, 450.3, 191.5, 1016.8, 0, 0, 90, 450.3, 191.5, 1016.8, 0, 0, 170, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:28:48', 'SAHP Side', 2, NULL, NULL),
(335, 3089, 458.3, 191.5, 1016.8, 0, 0, 90, 458.3, 191.5, 1016.8, 0, 0, 10, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:29:23', 'SAHP Main', 2, NULL, NULL),
(336, 3089, 462.24, 176.4, 1016.8, 0, 0, 0, 462.24, 176.4, 1016.8, 0, 0, 280, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:29:45', 'SAHP Back', 2, NULL, NULL),
(337, 3089, 480.4, 191.4, 1016.8, 0, 0, 180, 480.4, 191.4, 1016.8, 0, 0, 100, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:30:19', 'SAHP Office', 2, NULL, NULL),
(338, 3089, 449.4, 182.8, 1028.5, 0, 0, 90, 449.4, 182.8, 1028.5, 0, 0, 170, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:30:57', 'SAHP Cubicles', 2, NULL, NULL),
(339, 3089, 445.48, 189.2, 1028.6, 0, 0, 180, 445.48, 189.2, 1028.6, 0, 0, 100, 7, 30, 20, 2380, 5, '59', 'Nadr', '2014-12-24 00:31:24', 'SAHP Duty', 2, NULL, NULL),
(340, 975, 2178.06, -1918.32, 14.2, 0, 0, 180, 2171, -1918.32, 14.2, 0, 0, 180, 8, 30, 30, 0, 0, '5=2381', 'AndreC', '2014-12-24 23:25:47', 'Standards shop gate', 22, 22, 'metalgate'),
(341, 3475, 1084.9, -627.9, 113.2, 348, 0, 272, 1084.9, -627.9, 113.2, 348, 0, 272, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 14:51:41', 'Almeida House', 10, 10, NULL),
(342, 10184, 2235.3, 2457.5, -5.94, 0, 0, 180, 2235.3, 2457.5, -11, 0, 0, 180, 8, 50, 40, 2399, 0, 'F=59 AND 170=authorized', 'Nadr', '2014-12-28 01:20:59', 'SAHP Garage', 4, 7, 'metalgate'),
(343, 2933, 518, -48.17, 979.1, 0, 0, 180, 518, -48.17, 976.4, 0, 0, 180, 10, 0, 30, 2090, 29, 'workplease', 'dfajoe', '2014-12-25 20:23:28', '', 9, 9, NULL),
(344, 988, 2609.45, -1314.1, 1003.53, 270, 90, 0, 2609.45, -1314.1, 997.5, 270, 90, 0, 10, 0, 30, 2219, 1, 'workplease', 'dfajoe', '2014-12-25 20:43:38', '', 11, 11, NULL),
(345, 1536, 1483.62, -1928.12, 290.15, 0, 0, 270, 1483.62, -1928.12, 290.15, 0, 0, 0, 7, 15, 30, 9, 1, '3', 'BrukONE', '2015-01-02 13:19:12', 'Gov door', 15, 15, NULL),
(346, 16775, 1500.36, -568.762, 408.413, 0, 0, 0, 1500.36, -568.762, 412.371, 0, 0, 0, 8, 0, 30, 972, 1, '5=972', 'AndreC', '2014-12-28 22:41:54', 'Creason and Creason int Garage', 15, 15, NULL),
(347, 9020, 1514.6, -539.8, 427.8, 270, 180, 270, 1514.6, -539.8, 431.457, 270, 179.995, 270, 8, 0, 30, 972, 1, '5=972', 'Lemonth', '2014-12-28 22:44:27', 'Creason and creason int gate', 30, 30, 'metalgate'),
(348, 10671, -1348.4, -1995.3, 2.5, 0, 0, 103.997, -1348.4, -1995.3, 4, 0, 90, 103.997, 10, 0, 80, 0, 0, 'riptom', 'CharChar', '2014-12-31 11:00:19', '', 20, 20, 'metalgate'),
(349, 8957, 2614.2, -1338.07, 1011.9, 0, 0, 270, 2614.2, -1338.07, 1007.28, 0, 0, 270, 8, 0, 30, 0, 2, '5=972', 'Weedex', '2014-12-31 11:39:22', 'Creason and Creason int Garage', 15, 15, NULL),
(350, 8957, 2614.2, -1338.07, 1011.9, 0, 0, 270, 2614.2, -1338.07, 1007.28, 0, 0, 270, 10, 0, 30, 0, 2, 'xmax12', 'Weedex', '2014-12-31 11:42:36', 'House gate.', 15, 15, 'alarmbell'),
(351, 3109, 2169.2, -1435.1, 299.2, 0, 0, 0, 2169.2, -1435.1, 299.2, 0, 0, -90, 10, 30, 40, 2138, 2, 'Metro - I', 'Sloth', '2015-01-01 20:03:12', 'LSPD Metro Staircase', 5, NULL, NULL),
(352, 971, 2093.85, -2590.1, 26.46, 0, 0, 90, 2093.85, -2590.1, 17, 0, 0, 90, 10, 0, 20, 1123, 56, 'Metro - II', 'Sloth', '2015-01-01 20:25:53', 'Metro SWAT garage', 10, 10, NULL),
(353, 16775, 629.7, -1115.8, 44.5, 0, 180, 213.25, 629.7, -1115.8, 41.7, 0, 180, 213.25, 10, 0, 30, 0, 0, 'gottschalk', 'BrukONE', '2015-01-01 20:47:32', 'MisterClane\'s house', 15, 15, 'metalgate'),
(354, 8957, 2614.2, -1338.07, 1011.9, 0, 0, 270, 2614.2, -1338.07, 1007.28, 0, 0, 270, 2, 0, 30, 2219, 1, 's14', 'Rilind', '2015-01-01 20:52:14', '', NULL, NULL, NULL),
(355, 3276, -1289.8, -2160, 23.299, 0, 13.236, 160.223, -1289.8, -2160, 20.29, 0, 13.236, 160.223, 10, 0, 30, 0, 0, 'riptom', 'CharChar', '2015-01-02 05:57:30', '', 20, 20, 'metalgate'),
(356, 989, 855.1, -894.3, 65.4, 0, 0, 70, 849.6, -890.5, 65.4, 2, 0, 76, 2, 30, 30, 0, 0, 'singhisking', 'Manjot', '2015-01-02 16:35:46', 'ManjotPrivate', 10, 10, 'metalgate'),
(357, 1536, -37.5, -99.91, 1014.32, 0, 0, 270, -37.5, -99.91, 1014.32, 0, 0, 173, 10, 45, 15, 2517, 22, 'REALTY', 'CharChar', '2015-01-03 03:49:23', 'Interior door', 5, 5, 'metalgate'),
(358, 970, 2850.9, -1309.55, 14.17, 0, 346, 99, 2851.25, -1312.15, 13.51, 0, 346, 99, 8, 22, 22, 0, 0, '4=1306', 'AndreC', '2015-01-03 03:59:04', 'Interior id 2481 front gate', NULL, NULL, NULL),
(359, 11319, 1519.69, -507.07, 407.57, 0, 0, 0, 1519.69, -507.07, 413.03, 0, 0, 0, 8, 0, 55, 972, 1, '5=972', 'Lemonth', '2015-01-03 15:30:43', 'C&C Paint Booth', 12, 15, NULL),
(360, 1497, 2618.8, -1332.08, 1013.7, 0, 0, 0, 2618.8, -1332.08, 1013.7, 0, 0, 90, 10, 0, 15, 2253, 3, 'S14', 'Kamil3052', '2015-01-03 20:24:33', '-', NULL, NULL, NULL),
(361, 3117, 2611.6, -1331.1, 1013.6, 0, 0, 0, 2611.6, -1331.1, 1010.1, 0, 0, 0, 10, 0, 15, 2253, 3, 'S14', 'Kamil3052', '2015-01-03 20:25:52', '-', NULL, NULL, NULL),
(362, 2909, -367.97, 1580.99, 76.32, 0, 0, 225, -362.44, 1575.38, 76.32, 0, 0, 225, 9, 37, 30, 0, 0, '13534', 'L3mon', '2015-01-28 13:30:53', 'Sat Gate', 15, 15, 'metalgate'),
(363, 976, 62.5, -241.6, 0.6, 0, 0, 0, 53.5, -241.6, 0.6, 0, 0, 0, 10, 0, 30, 0, 0, 'FinalCons', 'BrukONE', '2015-01-28 18:21:29', 'Final Construction', 15, 15, 'metalgate'),
(364, 8378, 2009.3, -2388, 22.5, 0, 0, 90, 2009.3, -2388, 3.1, 0, 0, 90, 7, 0, 100, 0, 0, '47', 'anumaz', '2015-01-04 15:57:12', 'LSIA Hangar A', 15, 15, 'alarmbell'),
(365, 1553, 2470.5, 121.8, 26.7, 0, 0, 0, 2472.8, 121.7, 26.7, 0, 0, 0, 8, 60, 30, 0, 0, '4=2315', 'Lemonth', '2015-01-06 18:19:17', '22. Clean St.', NULL, NULL, 'metalgate'),
(366, 2933, 1924.56, -2427.8, 14.25, 0, 0, 90, 1924.56, -2463.5, 14.25, 0, 0, 90, 10, 30, 40, 2167, 56, 'TheMonopoly', 'Lemonth', '2015-01-08 23:07:59', 'The Monopoly', 5, 5, 'metalgate'),
(367, 2933, 1924.56, -2427.8, 14.25, 0, 0, 90, 1924.56, -2436.5, 14.25, 0, 0, 90, 7, 30, 40, 693, 56, '1', 'tomtiger11', '2015-01-05 14:56:56', 'CTUGate', NULL, NULL, 'metalgate'),
(368, 1495, 522.63, 68.7, 1043.49, 0, 0, 270, 522.63, 68.7, 1043.49, 0, 0, 170, 8, 50, 15, 2580, 24, '4=2580', 'Lemonth', '2015-01-06 16:17:17', 'Titan Protection and Consulting Garage', NULL, NULL, 'metalgate'),
(369, 969, 875.6, -1046.61, 24.3, 0, 0, 179, 871.6, -1046.44, 24.3, 0, 0, 179, 8, 60, 30, 0, 0, '4=2580', 'BrukONE', '2015-01-06 16:42:50', 'Titan Protection and Consulting', NULL, NULL, 'metalgate'),
(370, 1553, 2467.7, 121.8, 26.7, 0, 0, 0, 2465.5, 121.8, 26.7, 0, 0, 0, 8, 60, 30, 0, 0, '4=2315', 'Lemonth', '2015-01-06 18:19:43', '22. Clean St.', NULL, NULL, 'metalgate'),
(371, 16773, 530.7, 87.63, 1047.42, 0, 0, 270, 530.7, 87.63, 1051.42, 0, 0, 270, 8, 60, 30, 2580, 24, '4=2580', 'Lemonth', '2015-01-06 18:41:03', 'Titan Protection and Consulting Garage', NULL, NULL, 'metalgate'),
(372, 16773, -3.1, -268.2, 8.4, 0, 0, 180, -3, -264.5, 10.4, 270, 0, 180, 10, 0, 50, 0, 0, 'JGC HQ', 'Exciter', '2015-01-06 19:47:25', 'Blueberry Factory parking', 10, NULL, 'metalgate'),
(373, 968, -1182.3, 7.9, 2486.2, 0, 90, 0, -1182.3, 7.90039, 2486.2, 0, 180, 0, 10, 0, 30, 1061, 2, 'Monarch Staff', 'Kamil3052', '2015-01-10 15:32:01', 'Monarch Gate', 2, NULL, NULL),
(374, 971, 1098.79, -1727.4, 1145.9, 0, 0, 90, 1098.79, -1722.2, 1145.9, 0, 0, 90, 10, 0, 30, 1924, 24, 'ikeia', 'BrukONE', '2015-01-10 18:35:30', 'IKEA Interior gate', 15, 15, 'metalgate'),
(375, 1569, 1512.3, 1352.9, 10, 0, 0, 90, 1512.3, 1352.9, 10, 0, 0, 0, 7, 20, 20, 617, 1, '2', 'Rilind', '2015-01-11 10:44:07', 'lsfdoffice1', NULL, NULL, NULL),
(376, 1569, 1512.3, 1361, 10, 0, 0, 90, 1512.3, 1361, 10, 0, 0, 0, 7, 20, 20, 617, 1, '2', 'Rilind', '2015-01-11 10:47:45', 'lsfdoffice2', NULL, NULL, NULL),
(377, 1569, 1522.1, 1353.2, 10, 0, 0, 0, 1522.1, 1353.2, 10, 0, 0, -90, 7, 20, 20, 617, 1, '2', 'Rilind', '2015-01-11 10:50:00', 'lsfdacademy', NULL, NULL, NULL),
(378, 1569, 1526.5, 1348.5, 10, 0, 0, 0, 1526.5, 1348.5, 10, 0, 0, -270, 7, 20, 20, 617, 1, '2', 'Rilind', '2015-01-11 10:52:05', 'lsfdlounge', NULL, NULL, NULL),
(379, 975, 2544.12, 11.79, 25.33, 0, 0, 90, 2543.98, 20.72, 25.33, 0, 0, 90, 8, 60, 35, 0, 0, '4=2674', 'Lemonth', '2015-01-11 17:33:23', '35. Crest St. Palamino', NULL, NULL, 'metalgate'),
(380, 969, 1937.4, -2039.7, 12.5, 0, 0, 180, 1945.7, -2039.7, 12.5, 0, 0, 180, 2, 30, 30, 0, 0, 'hba', 'Rilind', '2015-01-12 19:15:59', '1', NULL, NULL, 'metalgate'),
(381, 969, 1929, -2008.3, 12.5, 0, 0, 0, 1936.2, -2008.3, 12.5, 0, 0, 0, 2, 30, 30, 0, 0, 'hba', 'Rilind', '2015-01-12 19:16:31', '2', NULL, NULL, 'metalgate'),
(382, 969, -386.3, -1054.8, 58.1, 0, 0, 300, -389.6, -1047.3, 58.1, 0, 0, 300, 8, 60, 20, 0, 0, '4=510', 'Lemonth', '2015-01-13 20:39:04', 'The Ranch - Flint County (#510)', 5, 15, 'metalgate'),
(383, 1553, 2359.44, -38.15, 25.76, 0, 0, 180, 2359.44, -38.15, 24.18, 0, 0, 180, 10, 0, 30, 0, 0, 'errorsucks', 'Err0r', '2015-01-13 23:24:24', '', NULL, NULL, NULL),
(384, 1553, 2356.61, -38.15, 25.76, 0, 0, 180, 2356.61, -38.15, 24.24, 0, 0, 180, 10, 0, 30, 0, 0, 'errorsucks', 'Err0r', '2015-01-13 23:29:46', '', NULL, NULL, NULL),
(385, 968, 1973.11, -2057.38, 13.07, 0, 270, 90, 1973.11, -2057.38, 13.07, 0, 200, 90, 10, 0, 25, 0, 0, 'RPMF', 'BrukONE', '2015-01-14 19:43:07', 'RPMF', 15, 15, NULL),
(386, 16773, 90.25, -294.6, 4.1, 0, 0, 358.4, 90.25, -298.3, 6, -90, 0, 358.396, 10, 0, 50, 0, 0, 'FinalCons', 'BrukONE', '2015-01-28 18:23:33', 'Final Construction', 15, 15, 'metalgate'),
(387, 976, 197.9, -316.9, 0.6, 0, 0, 276, 197.9, -316.9, -3, 0, 0, 275.999, 10, 0, 30, 0, 0, 'FinalCons', 'BrukONE', '2015-01-28 18:26:05', 'Final Construction', 15, 15, 'metalgate'),
(388, 3475, 1099.7, -629.2, 110.5, 12, 0, 84, 1099.7, -629.2, 110.5, 12, 0, 84, 10, 25, 25, 0, 0, 'Almeida', 'Lewis', '2015-01-29 14:52:02', 'Almeida House', 10, 10, NULL),
(389, 2909, 1746.2, -1581.6, 13.8, 0, 0, 88.748, 1746.2, -1581.6, 10.8, 0, 0, 88.748, 10, 15, 40, 0, 0, 'babyboy', 'CharChar', '2015-01-30 06:54:54', 'Panopticon Gate', 10, 10, 'metalgate'),
(390, 1553, 2139.3, -1290.7, 24.2, 0, 0, 0, 2141.9, -1290.7, 24.2, 0, 0, 0, 2, 0, 30, 0, 0, 'nganmengzeferino', 'BrukONE', '2015-01-30 09:24:22', 'Jefferson house', 15, 15, 'metalgate'),
(391, 1553, 2136.45, -1290.7, 24.2, 0, 0, 0, 2133.65, -1290.7, 24.2, 0, 0, 0, 2, 0, 30, 0, 0, 'nganmengzeferino', 'BrukONE', '2015-01-30 09:25:12', 'Jefferson house', 15, 15, 'metalgate'),
(392, 10671, 29.1, 2023.52, 1040.8, 0, 0, 89.5, 29.1, 2023.5, 1038.6, 0, 0, 89.495, 10, 30, 16, 95, 3, 'AccessHouse1', 'Err0r', '2015-02-01 17:18:44', 'AccessHouse1 - 12 Grove Street', 10, 10, NULL),
(393, 10671, 35.2, 2016.9, 1040.59, 0, 0, 0, 35.2, 2016.9, 1038.6, 0, 0, 0, 10, 30, 16, 95, 3, 'AccessHouse2', 'Err0r', '2015-02-01 17:21:16', 'AccessHouse2 - 12 Grove Street', 10, 10, NULL),
(394, 980, 282.4, -1319.9, 55.1, 0, 0, 34.7, 282.4, -1319.9, 49.1, 0, 0, 34.7, 5, 20, 60, 0, 0, 'parool', 'Kermoo', '2015-02-01 23:33:04', 'Richman Gate', 10, 10, 'metalgate'),
(395, 10184, 1951, -2317, 16.5, 0, 0, 0, 1951, -2317, 20.2, 0, 0, 0, 7, 70, 40, 1705, 25, '59', 'Nadr', '2015-02-02 21:25:43', 'Seized Cars', 5, 9, 'metalgate'),
(396, 988, 2031.7, 1465.4, 976, 0, 0, 90, 2031.7, 1462, 976, 0, 0, 90, 10, 30, 40, 2250, 10, 'Metro - III', 'Sloth', '2015-02-03 16:27:50', 'Metro evidence 6', 6, NULL, NULL),
(397, 988, 2031.7, 1471.2, 976, 0, 0, 90, 2031.7, 1474.5, 976, 0, 0, 90, 10, 30, 40, 2250, 10, 'Metro - III', 'Sloth', '2015-02-03 16:29:55', 'Metro evidence 7', 6, NULL, NULL),
(398, 2949, 2006.9, -1688.5, 0.6, 0, 0, 90, 2005, -1688.5, 0.6, 0, 0, 90, 10, 0, 30, 407, 27, 'williamson12', 'BlueBerry', '2015-02-04 13:25:25', 'TWC Jewelry store storage gate', 9, 9, 'metalgate'),
(399, 1553, 2213.9, -45.1, 26.7, 0, 0, 90.246, 2213.9, -45.1, 23, 0, 0, 90.246, 10, 30, 37, 0, 0, 'babyboy', 'dfajoe', '2015-02-04 15:30:58', '', 6, 7, 'metalgate'),
(400, 1553, 2213.9, -47.9, 26.7, 0, 0, 90.246, 2213.9, -47.9, 23, 0, 0, 90.246, 10, 30, 37, 0, 0, 'babyboy', 'dfajoe', '2015-02-04 15:33:03', '', 6, 7, 'metalgate'),
(401, 2930, -141.861, 97.5, 999.51, 0, 0, 180, -141.861, 99.0634, 999.51, 0, 0, 180, 7, 40, 20, 1614, 3, '59', 'dfajoe', '2015-02-05 18:23:47', 'SAHP LV HQ', 3, 5, NULL),
(402, 3037, 2025.3, -132, -1.4, 0, 0, 0, 2025.3, -132, -3.5, 0, 0, 0, 7, 75, 45, 633, 1, '59', 'Nadr', '2015-02-06 05:52:51', 'SAHP Boat Impound Bottom', 9, 9, 'metalgate'),
(403, 3037, 2025.3, -132, 3, 0, 0, 0, 2024.9, -132, 7.4, 0, 10, 0, 7, 60, 60, 633, 1, '59', 'Nadr', '2015-02-06 05:53:55', 'SAHP Boat Impound Top', 9, 9, 'metalgate'),
(404, 3050, 2544.1, 83.5996, 24.5, 179.995, 0, 90, 2544.1, 83.6, 22.8, 179.995, 0, 90, 10, 20, 40, 0, 0, 'Kasnakalle', 'dfajoe', '2015-02-06 18:36:12', 'Enrique E. Young House Gate', 4, 6, 'metalgate'),
(405, 980, 617.1, -1640.6, 15, 0, 0, 290, 619.078, -1651.77, 15, 0, 0, 90, 1, 30, 40, 2, 0, '', 'Nadr', '2015-02-07 03:22:25', 'Test', NULL, NULL, 'metalgate'),
(406, 2949, 1383.9, 1466.44, 9.91, 0, 0, 90, 1383.9, 1466.58, 9.91, 0, 0, 0, 10, 0, 20, 27654, 31, 'Metro - II', 'Sloth', '2015-02-08 17:58:03', 'PD Rescue 1', 5, NULL, NULL),
(407, 976, 1413.9, 242, 18.34, 0, 0, 65.995, 1412.12, 238, 18.34, 0, 0, 66, 2, 0, 30, 0, 0, 'sacmastaff', 'Belgica', '2015-02-09 16:56:56', 'Warehouse Blueberry', 20, 20, 'metalgate'),
(408, 3050, -470.7, -183.1, 79.7, 0, 0, 0, -466.1, -183.1, 79.7, 0, 0, 0, 10, 0, 15, 0, 0, 'Milesliveshere', 'Err0r', '2015-02-10 20:06:19', 'Miles Morrison', 10, 10, 'metalgate'),
(409, 3050, -485.7, -182.9, 79.7, 0, 0, 0, -481.1, -182.9, 79.7, 0, 0, 0, 10, 0, 15, 0, 0, 'Mileslivesherealso', 'Err0r', '2015-02-10 20:05:16', 'Miles Morrison ', 10, 10, 'metalgate'),
(410, 1553, 141.15, -1787.35, 2.29, 0, 0, 299.3, 141.15, -1787.35, 1.18, 0, 0, 299.3, 10, 0, 15, 0, 0, 'dockshop', 'einschtein', '2015-02-10 13:03:32', 'Verona Beach Store Supply', 9, 9, NULL),
(411, 969, 999.9, -645.2, 120.5, 0, 0, 25, 992, -649, 120.5, 0, 0, 25, 5, 30, 50, 0, 0, '1996', 'Kermoo', '2015-02-18 18:19:51', 'Kermoo', 10, 10, 'metalgate');

-- --------------------------------------------------------

--
-- Структура таблицы `health_diagnose`
--

CREATE TABLE `health_diagnose` (
  `uniqueID` int(11) DEFAULT NULL,
  `int_diagnose` varchar(255) DEFAULT NULL,
  `ext_diagnose` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `informationicons`
--

CREATE TABLE `informationicons` (
  `id` int(10) DEFAULT NULL,
  `createdby` text,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rx` float DEFAULT NULL,
  `ry` float DEFAULT NULL,
  `rz` float DEFAULT NULL,
  `interior` float DEFAULT NULL,
  `dimension` float DEFAULT NULL,
  `information` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `insurance_data`
--

CREATE TABLE `insurance_data` (
  `policyid` int(11) NOT NULL,
  `customername` varchar(45) NOT NULL,
  `vehicleid` int(11) NOT NULL,
  `protection` varchar(45) NOT NULL,
  `deductible` int(11) NOT NULL,
  `date` date NOT NULL,
  `claims` float NOT NULL,
  `cashout` float NOT NULL,
  `premium` int(11) NOT NULL,
  `insurancefaction` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `insurance_factions`
--

CREATE TABLE `insurance_factions` (
  `factionID` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gen_maxi` float NOT NULL DEFAULT '0.005',
  `news` text,
  `subscription` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `interiors`
--

CREATE TABLE `interiors` (
  `id` int(11) NOT NULL,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `type` int(1) DEFAULT '0',
  `owner` int(11) DEFAULT '-1',
  `locked` int(1) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `name` text,
  `interior` int(5) DEFAULT '0',
  `interiorx` float DEFAULT '0',
  `interiory` float DEFAULT '0',
  `interiorz` float DEFAULT '0',
  `dimensionwithin` int(5) DEFAULT '0',
  `interiorwithin` int(5) DEFAULT '0',
  `angle` float DEFAULT '0',
  `angleexit` float DEFAULT '0',
  `supplies` int(11) DEFAULT '100',
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `disabled` tinyint(3) UNSIGNED DEFAULT '0',
  `lastused` datetime DEFAULT NULL,
  `deleted` varchar(45) NOT NULL DEFAULT '0',
  `createdDate` datetime DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `isLightOn` tinyint(4) NOT NULL DEFAULT '0',
  `keypad_lock` int(11) DEFAULT NULL,
  `keypad_lock_pw` varchar(32) DEFAULT NULL,
  `keypad_lock_auto` tinyint(1) DEFAULT NULL,
  `uploaded_interior` datetime DEFAULT NULL,
  `faction` int(11) DEFAULT '0',
  `protected_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `interiors`
--

INSERT INTO `interiors` (`id`, `x`, `y`, `z`, `type`, `owner`, `locked`, `cost`, `name`, `interior`, `interiorx`, `interiory`, `interiorz`, `dimensionwithin`, `interiorwithin`, `angle`, `angleexit`, `supplies`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `disabled`, `lastused`, `deleted`, `createdDate`, `creator`, `isLightOn`, `keypad_lock`, `keypad_lock_pw`, `keypad_lock_auto`, `uploaded_interior`, `faction`, `protected_until`) VALUES
(4, 1111.92, -1795.57, 16.5938, 2, -1, 0, 0, 'Центр регистрации', 5, 1104.17, -778.245, 976.252, 0, 0, 0, 268.073, 100, NULL, NULL, NULL, NULL, 0, '2016-10-25 14:51:43', '0', '2013-05-05 17:07:17', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL),
(5, 1368.42, -1279.79, 13.5469, 1, -1, 1, 50000, 'Los Santose Relva Pood', 7, 315.79, -143.27, 999.6, 0, 0, 0, 268.32, 4539, NULL, NULL, NULL, NULL, 0, '2016-10-22 14:38:32', '0', '2014-01-21 16:33:40', 'Theno', 0, NULL, NULL, NULL, NULL, 0, NULL),
(6, 1675.41, -1634.34, 14.2266, 1, -1, 1, 0, 'Los Santos Network', 24, 1614.9, 1558.8, 10.6, 0, 0, 0, 0.733368, 0, NULL, NULL, NULL, NULL, 0, '2016-10-25 05:54:42', '0', '2014-02-06 16:03:38', 'Tylerc010', 0, NULL, NULL, NULL, NULL, 0, NULL),
(7, 1555.5, -1675.6, 16.1953, 1, -1, 0, 0, 'Отдел полиции Лос-Сантос', 10, 246.37, 107.51, 1003.21, 0, 0, 0, 270.853, 100, NULL, NULL, NULL, NULL, 0, '2016-11-05 15:38:49', '0', '2015-02-17 00:36:24', 'Spl4z', 0, NULL, NULL, NULL, NULL, 1, NULL),
(8, 2144.15, -1629.2, 13.3904, 0, -1, 1, 8000, 'Garage', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 245.166, 100, NULL, NULL, NULL, NULL, 0, NULL, 'MishaKonsta', '2016-10-25 07:49:31', 'MishaKonsta', 0, NULL, NULL, NULL, NULL, 0, NULL),
(9, 2147.79, 1604.24, 1006.17, 2, 0, 0, 0, 'Мэрия города Los Santos', 1, 1473.7, -1910.7, 289.1, 9, 1, 343.001, 179.302, 79, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:10:06', '0', '2014-01-23 12:09:22', 'Maxime', 0, NULL, NULL, NULL, '2014-11-17 22:53:07', 0, NULL),
(10, 1352.39, -1759.25, 13.5078, 1, -1, 1, 100000, 'Market', 10, 6.05, -31.27, 1003.54, 0, 0, 0, 188.965, 64, NULL, NULL, NULL, NULL, 0, '2016-11-05 18:37:24', '0', '2016-10-25 12:26:17', 'MishaKonsta', 0, NULL, NULL, NULL, NULL, 0, NULL),
(11, 1980.99, -1682.89, 17.0538, 0, -1, 1, 38000, 'Idlewood 38', 3, 235.44, 1186.83, 1080.25, 0, 0, 0, 87.3783, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:41:52', '0', '2015-02-17 14:41:52', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(13, 1980.38, -1718.9, 17.0303, 0, -1, 1, 36000, 'Idlewood 34', 3, 2496.03, -1692.17, 1014.74, 0, 0, 180, 94.0307, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:47:05', '0', '2015-02-17 14:47:05', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(14, 2015.35, -1732.57, 14.2344, 0, -1, 1, 40000, 'Idlewood 56-2', 6, 2196.85, -1204.4, 1049, 0, 0, 0, 269.035, 100, NULL, NULL, NULL, NULL, 0, '2016-10-18 21:11:29', '0', '2015-02-17 14:50:49', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(15, 2016.2, -1716.95, 14.125, 0, -1, 1, 42000, 'Idlewood 58-2', 10, 2270.41, -1210.46, 1047.56, 0, 0, 0, 269.238, 100, NULL, NULL, NULL, NULL, 0, '2016-10-22 05:13:39', '0', '2015-02-17 14:51:24', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(16, 2013.58, -1656.34, 14.1363, 0, -1, 1, 40000, 'Idlewood 64-4', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 268.875, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:52:23', '0', '2015-02-17 14:52:23', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(17, 2016.54, -1641.63, 14.1129, 0, -1, 1, 42000, 'Idlewood 66-4', 6, 2333, -1077, 1049, 0, 0, 0, 268.875, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:53:12', '0', '2015-02-17 14:53:12', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(18, 2018.06, -1629.92, 14.0426, 0, -1, 1, 42000, 'Idlewood 68-4', 33, 2322.57, -1393.4, 395.09, 0, 0, 0, 269.21, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:54:23', '0', '2015-02-17 14:54:23', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(19, 2067.7, -1628.9, 14.2066, 0, -1, 1, 42000, 'Idlewood 72-4', 33, 2322.57, -1393.4, 395.09, 0, 0, 0, 91.7729, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:55:27', '0', '2015-02-17 14:55:27', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(20, 2067.56, -1643.74, 14.1363, 0, -1, 1, 42000, 'Idlewood 74-4', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 89.8943, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:56:07', '0', '2015-02-17 14:56:07', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(21, 2066.74, -1656.6, 14.1328, 0, -1, 1, 42000, 'Idlewood 76-4', 15, 328.042, 1477.72, 1084.44, 0, 0, 0, 90.4985, 100, NULL, NULL, NULL, NULL, 0, '2016-10-18 12:55:09', '0', '2015-02-17 14:56:31', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(22, 1833.78, -1842.64, 13.5781, 1, -1, 1, 40000, 'Unity Station Pood', 16, -25.9502, -141.556, 1003.55, 0, 0, 179.33, 276.632, 61440, NULL, NULL, NULL, NULL, 0, '2016-10-22 15:24:08', '0', '2014-02-03 11:17:28', 'Firebird', 0, NULL, NULL, NULL, NULL, 0, NULL),
(23, 2065.1, -1703.55, 14.1484, 0, -1, 1, 42000, 'Idlewood 80-4', 15, 328.042, 1477.72, 1084.44, 0, 0, 0, 88.5649, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:57:12', '0', '2015-02-17 14:57:12', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(24, 2066.25, -1717.18, 14.1363, 0, -1, 1, 42000, 'Idlewood 82-4', 26, 1974.03, -2488.14, 13.62, 0, 0, 0, 90.4436, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 14:57:45', '0', '2015-02-17 14:57:45', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(25, 2067.05, -1731.62, 14.2066, 0, -1, 1, 42000, 'Idlewood 84-4', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 90.9984, 100, NULL, NULL, NULL, NULL, 0, '2016-10-22 04:15:23', '0', '2015-02-17 14:58:55', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(26, 2018.24, -1703.06, 14.2344, 0, -1, 1, 42000, 'Idlewood 60-4', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 269.968, 100, NULL, NULL, NULL, NULL, 0, '2016-10-18 21:11:56', '0', '2015-02-17 14:59:41', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(27, 2244.48, -1637.62, 16.2379, 0, -1, 1, 35000, 'Ganton 1', 2, 1.9, -3.2, 999.4, 0, 0, 0, 338.244, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:01:16', '0', '2015-02-17 15:01:16', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(28, 2257.12, -1643.94, 15.8082, 0, -1, 1, 35000, 'Ganton 3', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 351.065, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:02:31', '0', '2015-02-17 15:02:31', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(29, 2282.38, -1641.22, 15.8898, 0, -1, 1, 40000, 'Ganton 5', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 1.09592, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:02:51', '0', '2015-02-17 15:02:51', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(31, 2307.08, -1679.2, 14.3316, 0, -1, 1, 40000, 'Ganton 7', 4, 261.14, 1284.56, 1080.25, 0, 0, 0, 178.709, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:04:14', '0', '2015-02-17 15:04:14', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(32, 2326.88, -1681.97, 14.9297, 0, -1, 1, 38000, 'Ganton 9', 26, 1974.03, -2488.14, 13.62, 0, 0, 0, 90.3227, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:04:41', '0', '2015-02-17 15:04:41', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(33, 2326.61, -1716.7, 14.2379, 0, -1, 1, 38000, 'Ganton 12', 11, 2282.98, -1140.15, 1050.9, 0, 0, 0, 6.32547, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:05:24', '0', '2015-02-17 15:05:24', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(34, 2308.86, -1714.33, 14.9801, 0, -1, 1, 38000, 'Ganton 14', 11, 2282.98, -1140.15, 1050.9, 0, 0, 0, 357.866, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:05:43', '0', '2015-02-17 15:05:43', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(35, 2385.39, -1711.65, 14.2422, 0, -1, 1, 38000, 'Ganton 16', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 357.553, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:06:21', '0', '2015-02-17 15:06:21', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(36, 2409.02, -1674.94, 14.375, 0, -1, 1, 38000, 'Ganton 29', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 178.665, 100, NULL, NULL, NULL, NULL, 0, '2015-03-08 19:13:06', '0', '2015-02-17 15:06:47', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(37, 2384.66, -1675.83, 15.2457, 0, -1, 1, 38000, 'Ganton 27', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 180.231, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:07:00', '0', '2015-02-17 15:07:00', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(38, 2368.4, -1675.34, 14.1682, 0, -1, 1, 38000, 'Ganton 25', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 179.604, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:07:13', '0', '2015-02-17 15:07:13', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(39, 2362.82, -1643.15, 14.3516, 0, -1, 1, 38000, 'Ganton 23', 15, 387.22, 1471.76, 1080.18, 0, 0, 90, 358.805, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:07:36', '0', '2015-02-17 15:07:36', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(40, 2393.08, -1646.04, 13.9051, 0, -1, 1, 38000, 'Ganton 21', 15, 387.22, 1471.76, 1080.18, 0, 0, 90, 358.492, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:07:48', '0', '2015-02-17 15:07:48', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(41, 2413.81, -1646.79, 14.0119, 0, -1, 1, 38000, 'Ganton 19', 15, 387.22, 1471.76, 1080.18, 0, 0, 90, 0.689392, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:07:58', '0', '2015-02-17 15:07:58', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(42, 2451.86, -1641.41, 14.0662, 0, -1, 1, 38000, 'Grove 5', 10, 2270.41, -1210.46, 1047.56, 0, 0, 0, 359.124, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:08:42', '0', '2015-02-17 15:08:42', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(43, 2469.46, -1646.35, 13.7801, 0, -1, 1, 38000, 'Grove 9', 6, 2196.85, -1204.4, 1049, 0, 0, 0, 1.62875, 100, NULL, NULL, NULL, NULL, 0, '2016-10-19 02:05:26', '0', '2015-02-17 15:08:56', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(45, 2486.4, -1644.53, 14.0772, 0, -1, 1, 55000, 'Grove 12', 10, 24, 1340.33, 1084.37, 0, 0, 0, 357.844, 100, NULL, NULL, NULL, NULL, 0, '2016-11-05 18:32:13', '0', '2015-02-17 15:09:45', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(46, 2498.44, -1642.25, 14.1131, 0, -1, 1, 35000, 'Grove 15', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 1.31564, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 15:10:54', '0', '2015-02-17 15:10:54', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(47, 2513.67, -1650.21, 14.3557, 0, -1, 1, 35000, 'Grove 17', 6, 2308.8, -1212.94, 1049.02, 0, 0, 0, 312.124, 100, NULL, NULL, NULL, NULL, 0, '2015-03-08 19:07:17', '0', '2015-02-17 15:11:06', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(48, 2148.94, -1484.68, 26.6243, 0, -1, 1, 55000, 'Jefferson 17', 15, 328.042, 1477.72, 1084.44, 0, 0, 0, 270.754, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 20:07:44', '0', '2015-02-17 20:07:44', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(49, 2146.8, -1470.34, 26.0426, 0, -1, 1, 55000, 'Jefferson 19', 15, 328.042, 1477.72, 1084.44, 0, 0, 0, 266.03, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 20:07:59', '0', '2015-02-17 20:07:59', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(50, 2152.21, -1446.31, 26.1051, 0, -1, 1, 55000, 'Jefferson 21', 26, 1974.03, -2488.14, 13.62, 0, 0, 0, 271.666, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 20:27:46', '0', '2015-02-17 20:27:46', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(51, 2149.86, -1433.71, 26.0703, 0, -1, 1, 45000, 'Jefferson 25', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 272.605, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 20:28:44', '0', '2015-02-17 20:28:44', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(52, 2150.92, -1419.01, 25.9219, 0, -1, 1, 45000, 'Jefferson 27', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 270.726, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 20:28:58', '0', '2015-02-17 20:28:58', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(53, 2151.18, -1400.46, 26.1285, 0, -1, 1, 45000, 'Jefferson 29', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 270.1, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 20:29:07', '0', '2015-02-17 20:29:07', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(54, 2129.56, -1361.69, 26.1363, 0, -1, 1, 45000, 'Jefferson 41', 15, 377.15, 1417.42, 1081.3, 0, 0, 90, 358.344, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 20:29:59', '0', '2015-02-17 20:29:59', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(55, 2091.08, -1277.83, 26.1797, 0, -1, 1, 65000, 'Jefferson 60', 15, 328.042, 1477.72, 1084.44, 0, 0, 0, 2.70541, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 20:31:55', '0', '2015-02-17 20:31:55', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(56, 2111.27, -1278.98, 25.8359, 0, -1, 1, 45000, 'Jefferson 62', 6, 2196.85, -1204.4, 1049, 0, 0, 0, 10.5168, 100, NULL, NULL, NULL, NULL, 0, '2015-02-17 20:32:38', '0', '2015-02-17 20:32:38', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(59, 2400.36, -1981.93, 13.5469, 1, -1, 1, 65000, 'Willowfield Gunstore', 1, 285.39, -41.44, 1001.51, 0, 0, 0, 167.948, 100, NULL, NULL, NULL, NULL, 0, '2015-02-18 11:49:40', '0', '2015-02-17 21:04:40', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(61, 300.287, -1154.5, 81.3903, 0, -1, 0, 67000, 'Richman 15-2', 5, 140.39, 1366.36, 1083.85, 0, 0, 0, 307.482, 100, NULL, NULL, NULL, NULL, 0, '2015-02-18 15:54:59', '0', '2015-02-18 12:59:11', 'Kermoo', 0, NULL, NULL, NULL, NULL, 1, NULL),
(62, 1570.67, -1337.54, 16.4844, 2, 0, 0, 0, 'Банк Лос Сантос', 3, 1269.72, -714.956, 1135.41, 0, 0, 267.832, 159.648, 100, NULL, NULL, NULL, NULL, 0, '2016-10-25 05:38:47', '0', '2015-02-18 13:40:53', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(64, 461.705, -1500.89, 31.0447, 2, 0, 0, 0, 'Armani', 5, 227.08, -8.14, 1002.21, 0, 0, 90, 280.697, 80, NULL, NULL, NULL, NULL, 0, '2015-02-19 14:34:52', '0', '2015-02-19 14:32:28', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(66, -61.2627, -1116.95, 1.07812, 2, -1, 0, 0, 'ЭрЭс Хоул', 0, 1534.91, 1577.07, 10.8203, 0, 0, 359.816, 68.7178, 100, NULL, NULL, NULL, NULL, 0, '2016-10-20 21:46:53', '0', '2014-01-22 02:48:38', 'Maxime', 0, NULL, NULL, NULL, NULL, 0, NULL),
(67, 2244.42, -1665.58, 15.4766, 2, 0, 0, 0, 'Магазин одежды', 15, 207.58, -111, 1005.13, 0, 0, 0, 160.027, 68, NULL, NULL, NULL, NULL, 0, '2016-11-05 16:54:53', '0', '2015-02-19 16:40:32', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(68, 2243.34, -2013.33, 13.5445, 1, -1, 1, 50000, 'Оушен Стритс Кастомс', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 3.45798, 4, NULL, NULL, NULL, NULL, 0, '2016-10-25 05:50:15', '0', '2015-02-20 16:58:20', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(71, 284.959, -1154.75, 80.9141, 1, -1, 1, 1000, 'Гараж', 1, 613.52, 3.31, 1000.92, 0, 0, 180, 44.0476, 100, NULL, NULL, NULL, NULL, 0, '2015-02-21 17:40:46', '0', '2015-02-21 16:25:02', 'Kermoo', 0, NULL, NULL, NULL, NULL, 0, NULL),
(72, 1927.39, -1779.59, 13.5469, 2, 0, 0, 0, '24/7 Заправка', 16, -25.68, -140.99, 1003.54, 0, 0, 0, 83.5386, 82, NULL, NULL, NULL, NULL, 0, '2016-10-25 07:48:24', '0', '2015-02-21 21:51:29', 'Stayni', 0, NULL, NULL, NULL, NULL, 0, NULL),
(73, 2437.57, -2092.61, 13.5469, 0, -1, 1, 8000, 'Дом-Гараж', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 251.632, 100, NULL, NULL, NULL, NULL, 0, '2016-10-18 23:38:58', '0', '2015-03-03 17:39:58', 'George', 0, NULL, NULL, NULL, NULL, 0, NULL),
(74, 2105.51, -2124.84, 13.6328, 0, -1, 1, 8000, 'Дом-Гараж', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 174.875, 100, NULL, NULL, NULL, NULL, 0, '2016-10-25 05:45:18', '0', '2015-03-03 17:39:59', 'Biggi', 0, NULL, NULL, NULL, NULL, 0, NULL),
(75, 2440.82, -2091.94, 13.5469, 0, -1, 1, 8000, 'Дом-Гараж', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 284.844, 100, NULL, NULL, NULL, NULL, 0, '2016-10-18 23:39:54', '0', '2015-03-03 17:40:48', 'George', 0, NULL, NULL, NULL, NULL, 0, NULL),
(76, 2440.82, -2091.94, 13.5469, 0, -1, 1, 8000, 'Дом-Гараж', 21, -2031.88, -118.21, 1039.3, 0, 0, 0, 284.844, 100, NULL, NULL, NULL, NULL, 0, '2016-10-18 23:39:08', '0', '2015-03-03 17:40:48', 'George', 0, NULL, NULL, NULL, NULL, 0, NULL),
(248, 273.172, -195.573, 1.57045, 2, -1, 0, 0, 'Национальный банк Блюберри', 5, 1104.17, -778.245, 976.252, 0, 0, 0, 88.0156, 100, NULL, NULL, NULL, NULL, 0, '2016-10-25 05:52:38', '0', '2014-08-15 15:18:48', 'Belgica', 0, NULL, NULL, NULL, NULL, 0, NULL),
(2695, 1481.55, -1814, 13.54, 2, -1, 0, 30000, 'Мэрия города Лос Сантос', 21, 1533.33, 1474.73, 16.9535, 0, 0, 178.5, 268.458, -125, NULL, NULL, NULL, NULL, 0, '2017-03-28 18:16:42', '0', '2015-01-16 16:05:51', 'Firebird', 0, NULL, NULL, NULL, NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `interior_business`
--

CREATE TABLE `interior_business` (
  `intID` int(11) NOT NULL,
  `businessNote` varchar(101) NOT NULL DEFAULT 'Welcome to our business!'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves info about businesses - Maxime';

-- --------------------------------------------------------

--
-- Структура таблицы `interior_logs`
--

CREATE TABLE `interior_logs` (
  `log_id` int(11) NOT NULL,
  `date` text,
  `intID` int(11) DEFAULT NULL,
  `action` text,
  `actor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on interiors - Monitored by Interio';

--
-- Дамп данных таблицы `interior_logs`
--

INSERT INTO `interior_logs` (`log_id`, `date`, `intID`, `action`, `actor`) VALUES
(0, NULL, 4, 'Entered', 1),
(0, NULL, 4, 'Exited', 1),
(0, NULL, 15, 'lock without key', 1),
(0, NULL, 15, 'unlock without key', 1),
(0, NULL, 15, 'lock without key', 1),
(0, NULL, 15, 'unlock without key', 1),
(0, NULL, 15, 'lock without key', 1),
(0, NULL, 15, 'unlock without key', 1),
(0, NULL, 15, 'lock without key', 1),
(0, NULL, 7, 'Entered', 1),
(0, NULL, 7, 'Exited', 1),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 2695, 'Entered', 3),
(0, NULL, 2695, 'Exited', 3),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 45, 'Bought/rented, $55,000, Misha_Popka', 1),
(0, NULL, 45, 'Entered', 1),
(0, NULL, 45, 'Exited', 1),
(0, NULL, 21, 'fsell', 1),
(0, NULL, 26, 'fsell', 1),
(0, NULL, 43, 'fsell', 1),
(0, NULL, 62, 'Entered', 1),
(0, NULL, 62, 'gotohouse', 1),
(0, NULL, 62, 'Entered', 1),
(0, NULL, 62, 'Entered', 1),
(0, NULL, 62, 'gotohouse', 1),
(0, NULL, 62, 'Entered', 1),
(0, NULL, 14, 'fsell', 1),
(0, NULL, 22, 'fsell', 1),
(0, NULL, 5, 'fsell', 1),
(0, NULL, 67, 'Entered', 1),
(0, NULL, 67, 'gotohouse', 1),
(0, NULL, 67, 'Entered', 1),
(0, NULL, 67, 'Exited', 1),
(0, NULL, 74, 'Entered', 1),
(0, NULL, 74, 'gotohouse', 1),
(0, NULL, 68, 'Entered', 1),
(0, NULL, 68, 'gotohouse', 1),
(0, NULL, 68, 'Entered', 1),
(0, NULL, 68, 'Exited', 1),
(0, NULL, 68, 'Entered', 1),
(0, NULL, 68, 'Exited', 1),
(0, NULL, 248, 'Entered', 1),
(0, NULL, 248, 'gotohouse', 1),
(0, NULL, 248, 'Entered', 1),
(0, NULL, 248, 'gotohouse', 1),
(0, NULL, 248, 'Entered', 1),
(0, NULL, 6, 'Entered', 1),
(0, NULL, 6, 'gotohouse', 1),
(0, NULL, 617, 'Entered', 1),
(0, NULL, 617, 'gotohouse', 1),
(0, NULL, 617, 'Entered', 1),
(0, NULL, 617, 'Exited', 1),
(0, NULL, 4, 'Entered', 1),
(0, NULL, 4, 'gotohouse', 1),
(0, NULL, 4, 'Entered', 1),
(0, NULL, 4, 'gotohouse', 1),
(0, NULL, 4, 'Entered', 1),
(0, NULL, 4, 'Exited', 1),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 72, 'Entered', 1),
(0, NULL, 72, 'Exited', 1),
(0, NULL, 8, 'addnewint - id 119 - price $8000 - name Garage', 1),
(0, NULL, 8, 'delint', 1),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 7, 'Entered', 1),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 10, 'addint - id 22 - price $100000 - name Market', 1),
(0, NULL, 4, 'Entered', 1),
(0, NULL, 4, 'Exited', 1),
(0, NULL, 4, 'Entered', 1),
(0, NULL, 4, 'Exited', 1),
(0, NULL, 73, 'Forcesold by Inactivity Scanner. Reason: Inactive interior | Last used 15 days ago', NULL),
(0, NULL, 75, 'Forcesold by Inactivity Scanner. Reason: Inactive interior | Last used 15 days ago', NULL),
(0, NULL, 76, 'Forcesold by Inactivity Scanner. Reason: Inactive interior | Last used 15 days ago', NULL),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 7, 'Entered', 1),
(0, NULL, 7, 'Exited', 1),
(0, NULL, 15, 'Forcesold by Inactivity Scanner. Reason: Inactive interior | Last used 14 days ago', NULL),
(0, NULL, 25, 'Forcesold by Inactivity Scanner. Reason: Inactive interior | Last used 14 days ago', NULL),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 67, 'Entered', 1),
(0, NULL, 67, 'Exited', 1),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 45, 'Entered', 1),
(0, NULL, 45, 'Exited', 1),
(0, NULL, 10, 'Bought/rented, $100,000, Misha_Konsta', 1),
(0, NULL, 10, 'Entered', 1),
(0, NULL, 10, 'setbiznote none', 1),
(0, NULL, 10, 'setbiznote ЗДАРОВА', 1),
(0, NULL, 10, 'Exited', 1),
(0, NULL, 10, 'Forcesold by Inactivity Scanner. Reason: Неактивный Интерьер | Использовался 142 days ago', NULL),
(0, NULL, 45, 'Forcesold by Inactivity Scanner. Reason: Неактивный Интерьер | Использовался 142 days ago', NULL),
(0, NULL, 68, 'Forcesold by Inactivity Scanner. Reason: Неактивный Интерьер | Владелец Неактивен (154 days ago)', NULL),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1),
(0, NULL, 2695, 'Entered', 1),
(0, NULL, 2695, 'Exited', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `interior_notes`
--

CREATE TABLE `interior_notes` (
  `id` int(11) NOT NULL,
  `intid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `interior_textures`
--

CREATE TABLE `interior_textures` (
  `id` int(11) NOT NULL,
  `interior` int(11) NOT NULL,
  `texture` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `index` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `itemID` int(10) NOT NULL,
  `itemValue` text NOT NULL,
  `protected` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`index`, `type`, `owner`, `itemID`, `itemValue`, `protected`) VALUES
(23, 1, 3, 115, '24:mp98N8brm8QwmuWB0HDZ:Deagle::', 0),
(24, 1, 3, 116, '24:0:Ammo for Deagle', 0),
(25, 1, 3, 116, '24:0:Ammo for Deagle', 0),
(26, 1, 3, 116, '24:0:Ammo for Deagle', 0),
(27, 1, 3, 116, '24:0:Ammo for Deagle', 0),
(28, 1, 3, 116, '24:0:Ammo for Deagle', 0),
(29, 1, 3, 116, '24:0:Ammo for Deagle', 0),
(30, 1, 3, 116, '24:0:Ammo for Deagle', 0),
(34, 1, 3, 116, '24:0:Ammo for Deagle', 0),
(35, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(36, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(37, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(38, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(39, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(40, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(41, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(42, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(43, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(44, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(45, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(46, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(47, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(48, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(49, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(50, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(51, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(52, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(53, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(54, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(55, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(56, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(57, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(58, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(59, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(60, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(61, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(62, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(63, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(64, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(65, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(66, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(67, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(68, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(69, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(70, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(71, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(72, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(73, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(74, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(75, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(76, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(77, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(78, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(79, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(80, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(81, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(82, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(83, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(84, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(85, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(86, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(87, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(88, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(89, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(90, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(91, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(92, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(93, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(94, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(95, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(96, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(97, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(98, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(99, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(100, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(101, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(102, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(103, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(104, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(105, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(106, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(107, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(108, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(109, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(110, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(111, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(112, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(113, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(114, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(115, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(116, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(117, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(118, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(119, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(120, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(121, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(122, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(123, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(124, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(125, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(126, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(127, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(128, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(129, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(130, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(131, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(132, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(133, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(134, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(135, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(136, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(137, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(138, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(139, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(140, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(141, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(142, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(143, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(144, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(145, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(146, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(147, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(148, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(149, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(150, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(151, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(152, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(153, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(154, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(155, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(156, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(157, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(158, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(159, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(160, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(161, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(162, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(163, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(164, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(165, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(166, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(167, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(168, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(169, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(170, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(171, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(172, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(173, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(174, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(175, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(176, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(177, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(178, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(179, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(180, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(181, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(182, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(183, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(184, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(185, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(186, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(187, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(188, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(189, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(190, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(191, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(192, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(193, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(194, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(195, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(196, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(197, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(198, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(199, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(200, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(201, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(202, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(203, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(204, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(205, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(206, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(207, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(208, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(209, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(210, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(211, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(212, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(213, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(214, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(215, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(216, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(217, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(218, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(219, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(220, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(221, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(222, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(223, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(224, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(225, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(226, 1, 3, 116, '24:1:Ammo for Deagle', 0),
(231, 1, 3, 134, '1254345', 0),
(234, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(235, 2, 22, 85, '1', 0),
(236, 1, 1, 64, '1', 0),
(239, 1, 1, 150, '1', 0),
(246, 1, 1, 173, '1', 0),
(248, 1, 1, 173, '1', 0),
(255, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(256, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(258, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(259, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(261, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(263, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(265, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(267, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(268, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(269, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(270, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(271, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(272, 1, 1, 116, '24:0:Ammo for Deagle', 0),
(273, 1, 1, 116, '24:3:Ammo for Deagle', 0),
(274, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(275, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(276, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(277, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(278, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(279, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(280, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(281, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(282, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(283, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(284, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(285, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(286, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(287, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(288, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(289, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(290, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(291, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(292, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(293, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(294, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(295, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(296, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(297, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(298, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(299, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(300, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(301, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(302, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(304, 1, 6, 16, '23', 0),
(305, 1, 6, 17, '1', 0),
(306, 1, 6, 152, 'Govno_Tester;Male;January 1st, 2000;A81D2875A2B515132368D69DB5E97F66', 0),
(307, 1, 6, 160, '1', 0),
(308, 1, 6, 2, '827680', 0),
(309, 1, 6, 134, '500', 0),
(311, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(312, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(313, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(314, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(315, 1, 1, 116, '24:7:Ammo for Deagle', 0),
(316, 1, 7, 16, '27', 0),
(317, 1, 7, 17, '1', 0),
(318, 1, 7, 152, 'SANYA_PEPAS;Male;August 14th, 1972;9818BC6C94FBDA0D7F2450AC81B9DEE2', 0),
(319, 1, 7, 160, '1', 0),
(320, 1, 7, 2, '539445', 0),
(321, 1, 7, 134, '500', 0),
(331, 1, 1, 56, '1', 0),
(334, 1, 1, 160, '1', 0),
(337, 1, 1, 10, '1', 0),
(340, 1, 1, 115, '15:1:Cane', 0),
(343, 1, 1, 57, '0', 0),
(346, 1, 1, 115, '41:1:Spraycan', 0),
(357, 1, 1, 16, '301', 0),
(363, 1, 1, 16, '268', 0),
(379, 1, 1, 16, '301', 0),
(380, 1, 1, 115, '24:mp9ZN8br0uhqmvD808DZ:Deagle::', 0),
(383, 1, 1, 10, '20', 0),
(386, 1, 1, 115, '15:1:Cane', 0),
(389, 1, 1, 57, '0', 0),
(392, 1, 1, 147, '1', 0),
(395, 1, 1, 160, '1', 0),
(398, 1, 1, 10, '20', 0),
(402, 1, 8, 16, '7', 0),
(403, 1, 8, 17, '1', 0),
(404, 1, 8, 152, 'Konsta_Tester;Male;January 1st, 2001;43A4E4A6EB172FB3FC01CDC9AA5AF38B', 0),
(405, 1, 8, 160, '1', 0),
(406, 1, 8, 2, '580008', 0),
(407, 1, 8, 134, '500', 0),
(409, 1, 1, 134, '463', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jailed`
--

CREATE TABLE `jailed` (
  `id` int(11) NOT NULL,
  `charid` int(11) NOT NULL,
  `charactername` text NOT NULL,
  `jail_time` bigint(12) NOT NULL,
  `convictionDate` datetime DEFAULT NULL,
  `updatedBy` text NOT NULL,
  `charges` text NOT NULL,
  `cell` text NOT NULL,
  `fine` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `jobID` int(11) NOT NULL DEFAULT '0',
  `jobCharID` int(11) NOT NULL DEFAULT '-1',
  `jobLevel` int(11) NOT NULL DEFAULT '1',
  `jobProgress` int(11) NOT NULL DEFAULT '0',
  `jobTruckingRuns` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves job info, skill level and progress - Maxime' ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`jobID`, `jobCharID`, `jobLevel`, `jobProgress`, `jobTruckingRuns`) VALUES
(4, 3, 1, 0, 0),
(2, 3, 1, 0, 0),
(3, 3, 1, 0, 0),
(2, 1, 1, 0, 0),
(3, 1, 11, 11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jobs_trucker_orders`
--

CREATE TABLE `jobs_trucker_orders` (
  `orderID` int(11) NOT NULL,
  `orderX` float NOT NULL DEFAULT '0',
  `orderY` float NOT NULL DEFAULT '0',
  `orderZ` float NOT NULL DEFAULT '0',
  `orderWeight` int(11) NOT NULL DEFAULT '0',
  `orderName` text NOT NULL,
  `orderInterior` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves info about customer orders to create markers for truck';

--
-- Дамп данных таблицы `jobs_trucker_orders`
--

INSERT INTO `jobs_trucker_orders` (`orderID`, `orderX`, `orderY`, `orderZ`, `orderWeight`, `orderName`, `orderInterior`) VALUES
(1, 1177.36, -1324.32, 14.067, 1, '1', 11),
(2, 1776.94, -1898.49, 13.3871, 0, 'LS', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `leo_impound_lot`
--

CREATE TABLE `leo_impound_lot` (
  `lane` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rx` float NOT NULL,
  `ry` float NOT NULL,
  `rz` float NOT NULL,
  `int` float NOT NULL,
  `dim` float NOT NULL,
  `faction` int(11) NOT NULL,
  `veh` int(11) NOT NULL DEFAULT '0',
  `fine` int(11) NOT NULL DEFAULT '0',
  `release_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `lifts`
--

CREATE TABLE `lifts` (
  `id` int(11) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `lift_floors`
--

CREATE TABLE `lift_floors` (
  `id` int(11) NOT NULL,
  `lift` int(11) NOT NULL,
  `x` float(10,6) DEFAULT '0.000000',
  `y` float(10,6) DEFAULT '0.000000',
  `z` float(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `floor` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `lottery`
--

CREATE TABLE `lottery` (
  `characterid` int(255) NOT NULL,
  `ticketnumber` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `mdcusers`
--

CREATE TABLE `mdcusers` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '123',
  `high_command` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `mdc_apb`
--

CREATE TABLE `mdc_apb` (
  `id` int(11) NOT NULL,
  `person_involved` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `organization` varchar(10) NOT NULL DEFAULT 'LSPD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mdc_apb`
--

INSERT INTO `mdc_apb` (`id`, `person_involved`, `description`, `doneby`, `time`, `organization`) VALUES
(1, 'Misha_Popka', 'dsfsdfsdf\n', 1, 1477381784, 'LSPD');

-- --------------------------------------------------------

--
-- Структура таблицы `mdc_calls`
--

CREATE TABLE `mdc_calls` (
  `id` int(11) NOT NULL,
  `caller` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mdc_calls`
--

INSERT INTO `mdc_calls` (`id`, `caller`, `number`, `description`, `timestamp`) VALUES
(4, 'Unknown Person', 'Hidden Num', 'ffffffffffffffff - ', '2016-10-18 19:59:50'),
(5, 'Unknown Person', 'Hidden Num', 'dsgsdgdsgsdg - Los Santos', '2016-10-18 23:41:56');

-- --------------------------------------------------------

--
-- Структура таблицы `mdc_crimes`
--

CREATE TABLE `mdc_crimes` (
  `id` int(11) NOT NULL,
  `crime` varchar(255) NOT NULL,
  `punishment` varchar(255) NOT NULL,
  `character` int(11) NOT NULL,
  `officer` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mdc_crimes`
--

INSERT INTO `mdc_crimes` (`id`, `crime`, `punishment`, `character`, `officer`, `timestamp`) VALUES
(3, 'Some details of what happened.\n', 'What punishment was given.\n', 1, 1, 1477381795),
(4, 'Some details of what happened.\n', 'What punishment was given.\n', 1, 1, 1477381817),
(5, 'Some details of what happened.\n', 'What punishment was given.\n', 1, 1, 1477381848),
(6, 'Some details of what happened.\n', 'What punishment was given.\n', 1, 1, 1477381871);

-- --------------------------------------------------------

--
-- Структура таблицы `mdc_criminals`
--

CREATE TABLE `mdc_criminals` (
  `character` int(11) NOT NULL,
  `dob` varchar(10) NOT NULL DEFAULT 'mm/dd/yyyy',
  `ethnicity` varchar(50) NOT NULL DEFAULT 'Unknown',
  `phone` varchar(10) NOT NULL DEFAULT 'Unknown',
  `occupation` varchar(50) NOT NULL DEFAULT 'Unknown',
  `address` varchar(50) NOT NULL DEFAULT 'Unknown',
  `photo` int(11) NOT NULL DEFAULT '-1',
  `details` varchar(255) NOT NULL DEFAULT 'None',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `wanted` int(11) NOT NULL DEFAULT '0',
  `wanted_by` int(11) NOT NULL DEFAULT '0',
  `wanted_details` varchar(255) DEFAULT NULL,
  `pilot_details` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mdc_criminals`
--

INSERT INTO `mdc_criminals` (`character`, `dob`, `ethnicity`, `phone`, `occupation`, `address`, `photo`, `details`, `created_by`, `wanted`, `wanted_by`, `wanted_details`, `pilot_details`) VALUES
(1, 'mm/dd/yyyy', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 7, 'None', 0, 1, 1, 'dsfdddf\n', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `mdc_faa_events`
--

CREATE TABLE `mdc_faa_events` (
  `id` int(11) NOT NULL,
  `crime` varchar(255) NOT NULL,
  `punishment` varchar(255) NOT NULL,
  `character` int(11) NOT NULL,
  `officer` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `mdc_faa_licenses`
--

CREATE TABLE `mdc_faa_licenses` (
  `id` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `license` int(2) NOT NULL,
  `value` int(4) DEFAULT NULL,
  `officer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `mdc_impounds`
--

CREATE TABLE `mdc_impounds` (
  `id` int(11) NOT NULL,
  `veh` int(11) NOT NULL,
  `content` text,
  `reporter` text,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `mdc_users`
--

CREATE TABLE `mdc_users` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `level` int(11) NOT NULL,
  `organization` varchar(30) NOT NULL DEFAULT 'LSPD'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mdc_users`
--

INSERT INTO `mdc_users` (`id`, `user`, `pass`, `level`, `organization`) VALUES
(1, 'LSPD', 'qwe', 2, 'LSPD');

-- --------------------------------------------------------

--
-- Структура таблицы `motds`
--

CREATE TABLE `motds` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `author` int(11) DEFAULT NULL,
  `dismissable` tinyint(1) NOT NULL DEFAULT '1',
  `audiences` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `motds`
--

INSERT INTO `motds` (`id`, `title`, `content`, `creation_date`, `expiration_date`, `author`, `dismissable`, `audiences`) VALUES
(2, 'Добро пожаловать', 'Добро пожаловать на United RolePlay 2.0\n\nВ этом обновлении большая часть работы была сконцентрирована на исправлении серверных ошибок, приводящих к нестабильной работе мода, а так же перевода другой части мода, и небольших визуальных изменений.\n\nВесь список изменений, а так же помощь по моду вы можете посмотреть на https://SEEGame.ru/united', NULL, NULL, 1, 1, '[ [ [ 0, 0 ] ] ]');

-- --------------------------------------------------------

--
-- Структура таблицы `motd_read`
--

CREATE TABLE `motd_read` (
  `id` int(11) NOT NULL,
  `motdid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Note down everyone that read and dismissed the motd.';

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `title` text,
  `details` text,
  `date` text,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `offline_pm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `userid`, `title`, `details`, `date`, `read`, `offline_pm`) VALUES
(401, 0, 'Vehicle ID #4 (1990 BMW E34 520i) was taken away from No-one\'s possession by the vehicle inactivity scanner.', 'Reason: Inactive Vehicle | Last used 589 days ago while parking outdoor. Your vehicle was marked as inactive because your character hasn\'t been logged in game for longer than 30 days or no body has ever started its engine for longer than 14 days while parking outdoor. \n\nAn inactive vehicle is a waste of resources and thus far the vehicle\'s ownership was removed or stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis vehicle wasn\'t unprotected. To prevent this to happen again to other vehicles of yours, you may want to spend your GC(s) to protect it from the inactive vehicle scanner on UCP.', NULL, 0, NULL),
(402, 0, 'Vehicle ID #6 (2000 Nissan Integra Type-R) was taken away from No-one\'s possession by the vehicle inactivity scanner.', 'Reason: Inactive Vehicle | Last used 593 days ago while parking outdoor. Your vehicle was marked as inactive because your character hasn\'t been logged in game for longer than 30 days or no body has ever started its engine for longer than 14 days while parking outdoor. \n\nAn inactive vehicle is a waste of resources and thus far the vehicle\'s ownership was removed or stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis vehicle wasn\'t unprotected. To prevent this to happen again to other vehicles of yours, you may want to spend your GC(s) to protect it from the inactive vehicle scanner on UCP.', NULL, 0, NULL),
(403, 0, 'Vehicle ID #7 (1964 Chevrolet Impala) was taken away from No-one\'s possession by the vehicle inactivity scanner.', 'Reason: Inactive Vehicle | Last used 588 days ago while parking outdoor. Your vehicle was marked as inactive because your character hasn\'t been logged in game for longer than 30 days or no body has ever started its engine for longer than 14 days while parking outdoor. \n\nAn inactive vehicle is a waste of resources and thus far the vehicle\'s ownership was removed or stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis vehicle wasn\'t unprotected. To prevent this to happen again to other vehicles of yours, you may want to spend your GC(s) to protect it from the inactive vehicle scanner on UCP.', NULL, 0, NULL),
(404, 0, 'Vehicle ID #9 (2009 Audi RS6 by ABT) was taken away from No-one\'s possession by the vehicle inactivity scanner.', 'Reason: Inactive Vehicle | Last used 588 days ago while parking outdoor. Your vehicle was marked as inactive because your character hasn\'t been logged in game for longer than 30 days or no body has ever started its engine for longer than 14 days while parking outdoor. \n\nAn inactive vehicle is a waste of resources and thus far the vehicle\'s ownership was removed or stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis vehicle wasn\'t unprotected. To prevent this to happen again to other vehicles of yours, you may want to spend your GC(s) to protect it from the inactive vehicle scanner on UCP.', NULL, 0, NULL),
(405, 0, 'Vehicle ID #10 (2014 Koenigsegg Agera R) was taken away from No-one\'s possession by the vehicle inactivity scanner.', 'Reason: Inactive Vehicle | Last used 589 days ago while parking outdoor. Your vehicle was marked as inactive because your character hasn\'t been logged in game for longer than 30 days or no body has ever started its engine for longer than 14 days while parking outdoor. \n\nAn inactive vehicle is a waste of resources and thus far the vehicle\'s ownership was removed or stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis vehicle wasn\'t unprotected. To prevent this to happen again to other vehicles of yours, you may want to spend your GC(s) to protect it from the inactive vehicle scanner on UCP.', NULL, 0, NULL),
(406, 0, 'Vehicle ID #11 (2013 Volvo PH16) was taken away from No-one\'s possession by the vehicle inactivity scanner.', 'Reason: Inactive Vehicle | Last used 588 days ago while parking outdoor. Your vehicle was marked as inactive because your character hasn\'t been logged in game for longer than 30 days or no body has ever started its engine for longer than 14 days while parking outdoor. \n\nAn inactive vehicle is a waste of resources and thus far the vehicle\'s ownership was removed or stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis vehicle wasn\'t unprotected. To prevent this to happen again to other vehicles of yours, you may want to spend your GC(s) to protect it from the inactive vehicle scanner on UCP.', NULL, 0, NULL),
(407, 0, 'Interior ID #5 (Los Santose Relva Pood) was taken away from No-one\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 589 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(408, 0, 'Interior ID #6 (Los Santos Network) was taken away from No-one\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 605 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(409, 0, 'Interior ID #59 (Willowfield Gunstore) was taken away from No-one\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 608 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(410, 0, 'Interior ID #68 (Ocean Street Costums) was taken away from No-one\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 604 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(411, 0, 'Interior ID #69 (Kalju talu) was taken away from No-one\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 604 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(412, 0, 'Interior ID #71 (Garaaz) was taken away from No-one\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 604 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(413, 2, 'Senior Admin MishaKonsta has promoted you from Trial Administrator to Senior Administrator.', 'Congratulations!', NULL, 0, NULL),
(414, 2, 'Senior Admin MishaKonsta has promoted you from Supporter to Support Manager.', 'Congratulations!', NULL, 0, NULL),
(415, 2, 'Senior Admin MishaKonsta has promoted you from VCT Member to VCT Leader.', 'Congratulations!', NULL, 0, NULL),
(416, 2, 'Senior Admin MishaKonsta has promoted you from Script Tester to Scripter.', 'Congratulations!', NULL, 0, NULL),
(417, 2, 'Senior Admin MishaKonsta has promoted you from Mapper to Lead Mapper.', 'Congratulations!', NULL, 0, NULL),
(418, 2, 'Senior Admin MishaKonsta has promoted you from Player to Lead Administrator.', 'Congratulations!', NULL, 0, NULL),
(419, 2, 'Senior Admin MishaKonsta has promoted you from Player to Support Manager.', 'Congratulations!', NULL, 0, NULL),
(420, 2, 'Senior Admin MishaKonsta has promoted you from Player to VCT Leader.', 'Congratulations!', NULL, 0, NULL),
(421, 2, 'Senior Admin MishaKonsta has promoted you from Player to Scripter.', 'Congratulations!', NULL, 0, NULL),
(422, 2, 'Senior Admin MishaKonsta has promoted you from Player to Lead Mapper.', 'Congratulations!', NULL, 0, NULL),
(423, 1, 'Allan Bro is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (2) Senior Admin MishaKonsta', NULL, 0, NULL),
(424, 3, 'Allan Bro is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (2) Senior Admin MishaKonsta', NULL, 0, NULL),
(425, 3, 'Senior Admin MishaKonsta has promoted you from Player to Lead Administrator.', 'Congratulations!', NULL, 0, NULL),
(426, 3, 'Senior Admin MishaKonsta has promoted you from Player to Support Manager.', 'Congratulations!', NULL, 0, NULL),
(427, 3, 'Senior Admin MishaKonsta has promoted you from Player to VCT Leader.', 'Congratulations!', NULL, 0, NULL),
(428, 3, 'Senior Admin MishaKonsta has promoted you from Player to Scripter.', 'Congratulations!', NULL, 0, NULL),
(429, 3, 'Senior Admin MishaKonsta has promoted you from Player to Lead Mapper.', 'Congratulations!', NULL, 0, NULL),
(430, 1, 'Misha Popka is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(431, 3, 'Misha Popka is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(432, 5, 'Senior Admin MishaKonsta has promoted you from Player to Lead Administrator.', 'Congratulations!', NULL, 0, NULL),
(433, 5, 'Senior Admin MishaKonsta has promoted you from Player to Support Manager.', 'Congratulations!', NULL, 0, NULL),
(434, 5, 'Senior Admin MishaKonsta has promoted you from Player to VCT Leader.', 'Congratulations!', NULL, 0, NULL),
(435, 5, 'Senior Admin MishaKonsta has promoted you from Player to Scripter.', 'Congratulations!', NULL, 0, NULL),
(436, 5, 'Senior Admin MishaKonsta has promoted you from Player to Lead Mapper.', 'Congratulations!', NULL, 0, NULL),
(437, 1, 'Misha Popka is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(438, 3, 'Misha Popka is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(439, 1, 'Misha Popka is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(440, 3, 'Misha Popka is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(441, 1, 'Misha Popka was promoted from \'Рядовой\' to \'Глава полиции\' by Misha Popka of \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(442, 3, 'Misha Popka was promoted from \'Рядовой\' to \'Глава полиции\' by Misha Popka of \'Los Santos Police Department\'', NULL, NULL, 0, NULL),
(443, 1, 'Allan Bro is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (2) Lead Admin AllanBro', NULL, 0, NULL),
(444, 3, 'Allan Bro is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (2) Lead Admin AllanBro', NULL, 0, NULL),
(445, 3, 'Allan Bro is now a leader of your faction \'Los Santos Fire Department\'!', 'Set by (2) Lead Admin AllanBro', NULL, 0, NULL),
(446, 3, 'Allan Bro is now a leader of your faction \'Government of Los Santos\'!', 'Set by (2) Lead Admin AllanBro', NULL, 0, NULL),
(447, 3, 'Allan Bro is now a leader of your faction \'Rapid Towing\'!', 'Set by (2) Lead Admin AllanBro', NULL, 0, NULL),
(448, 3, 'Allan Bro is now a leader of your faction \'Los Santos Network\'!', 'Set by (2) Lead Admin AllanBro', NULL, 0, NULL),
(449, 1, 'Misha Popka is now a leader of your faction \'Los Santos Fire Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(450, 1, 'Misha Popka is now a leader of your faction \'Los Santos Network\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(451, 3, 'Misha Popka is now a leader of your faction \'Los Santos Network\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(452, 1, 'Allan Bro was promoted from \'Intern\' to \'Chief Executive Officer \' by Misha Popka of \'Los Santos Network\'', NULL, NULL, 0, NULL),
(453, 3, 'Allan Bro was promoted from \'Intern\' to \'Chief Executive Officer \' by Misha Popka of \'Los Santos Network\'', NULL, NULL, 0, NULL),
(454, 1, 'Misha Popka is now a leader of your faction \'Los Santos Fire Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(455, 1, 'Misha Popka is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(456, 1, 'Misha Popka is now a leader of your faction \'Los Santos Network\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(457, 1, 'Misha Popka is now a leader of your faction \'Los Santos Police Department\'!', 'Set by (1) Senior Admin MishaKonsta', NULL, 0, NULL),
(458, 0, 'Interior ID #73 (Дом-Гараж) was taken away from No-one\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 15 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(459, 0, 'Interior ID #75 (Дом-Гараж) was taken away from No-one\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 15 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(460, 0, 'Interior ID #76 (Дом-Гараж) was taken away from No-one\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 15 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(461, 1, 'Interior ID #15 (Idlewood 58-2) was taken away from Misha Konsta\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 14 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(462, 1, 'Interior ID #25 (Idlewood 84-4) was taken away from Misha Konsta\'s possession by the interior inactivity scanner.', 'Reason: Inactive interior | Last used 14 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(463, 1, 'Vehicle ID #1 (2016 Mercedes Benz G65 AMG) was taken away from Misha Konsta\'s possession by the vehicle inactivity scanner.', 'Reason: Inactive Vehicle | Last used 142 days ago while parking outdoor. Your vehicle was marked as inactive because your character hasn\'t been logged in game for longer than 30 days or no body has ever started its engine for longer than 14 days while parking outdoor. \n\nAn inactive vehicle is a waste of resources and thus far the vehicle\'s ownership was removed or stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis vehicle wasn\'t unprotected. To prevent this to happen again to other vehicles of yours, you may want to spend your GC(s) to protect it from the inactive vehicle scanner on UCP.', NULL, 0, NULL),
(464, 1, 'Interior ID #10 (Market) was taken away from Misha Konsta\'s possession by the interior inactivity scanner.', 'Reason: Неактивный Интерьер | Использовался 142 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(465, 1, 'Interior ID #45 (Grove 12) was taken away from Misha Konsta\'s possession by the interior inactivity scanner.', 'Reason: Неактивный Интерьер | Использовался 142 days ago. Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL),
(466, 3, 'Interior ID #68 (Оушен Стритс Кастомс) was taken away from Allan Bro\'s possession by the interior inactivity scanner.', 'Reason: Неактивный Интерьер | Владелец Неактивен (154 days ago). Your interior was marked as inactive because no body has ever entered it for the last 14 days or your character(who owns it) hasn\'t been logged in game for 30 days.\n\nAn inactive interior is a waste of resources and thus far the interior\'s ownership was stripped from your possession to give other players opportunities to buy and use it more efficiently.\n\nThis interior wasn\'t unprotected. To prevent this to happen again to other interiors of yours, you may want to spend your GC(s) to protect it from the inactive interior scanner on UCP.', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `objects`
--

CREATE TABLE `objects` (
  `id` int(11) NOT NULL,
  `model` int(6) NOT NULL DEFAULT '0',
  `posX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(1) NOT NULL DEFAULT '1',
  `doublesided` int(1) NOT NULL DEFAULT '0',
  `scale` float(12,7) DEFAULT NULL,
  `breakable` int(1) NOT NULL DEFAULT '0',
  `alpha` int(11) NOT NULL DEFAULT '255'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `txnid` varchar(20) NOT NULL,
  `payment_amount` decimal(7,2) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `itemid` varchar(25) NOT NULL,
  `createdtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `paynspray`
--

CREATE TABLE `paynspray` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `paynspray`
--

INSERT INTO `paynspray` (`id`, `x`, `y`, `z`, `dimension`, `interior`) VALUES
(1, '1911.106445', '-1776.103516', '13.411722', 0, 0),
(2, '2064.333984', '-1831.360352', '13.546875', 0, 0),
(3, '1850.312500', '-1856.445313', '13.382813', 0, 0),
(4, '538.561523', '87.181641', '1044.474609', 8, 24);

-- --------------------------------------------------------

--
-- Структура таблицы `pd_tickets`
--

CREATE TABLE `pd_tickets` (
  `id` int(11) NOT NULL,
  `vehid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `amount` int(11) NOT NULL,
  `issuer` int(11) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `peds`
--

CREATE TABLE `peds` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `behaviour` int(3) DEFAULT '1',
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `skin` int(1) DEFAULT NULL,
  `money` bigint(20) NOT NULL DEFAULT '0',
  `gender` int(1) DEFAULT NULL,
  `stats` text,
  `description` text,
  `owner_type` int(1) NOT NULL DEFAULT '0',
  `owner` int(11) DEFAULT NULL,
  `animation` varchar(255) DEFAULT NULL,
  `synced` tinyint(1) NOT NULL DEFAULT '0',
  `nametag` tinyint(1) NOT NULL DEFAULT '1',
  `frozen` tinyint(1) NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `peds`
--

INSERT INTO `peds` (`id`, `name`, `type`, `behaviour`, `x`, `y`, `z`, `rotation`, `interior`, `dimension`, `skin`, `money`, `gender`, `stats`, `description`, `owner_type`, `owner`, `animation`, `synced`, `nametag`, `frozen`, `comment`, `created_by`, `created_at`) VALUES
(125, NULL, 'fuel', 1, 611.175, 1698.21, 7.1875, 215.107, 0, 0, 50, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 1, '', 635, '2015-01-08 21:58:47'),
(129, 'Алексей Николаев', 'ch.reception', 3, 1532.7, 1487.43, 16.9535, 180, 21, 2695, 133, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 1, '', 635, '2015-01-23 21:53:49'),
(130, 'Михаил Васильевич', 'locksmith', 3, 1534.2, 1487.44, 16.9535, 180, 21, 2695, 33, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 1, '', 635, '2015-01-23 22:00:24'),
(132, NULL, NULL, 2, -24.7198, 1904.89, 17.6476, 295.325, 0, 0, 287, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 635, '2015-01-31 03:22:34'),
(133, 'Ethan Young', NULL, 2, -33.5439, 1909.15, 17.6406, 15.8563, 0, 0, 287, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 635, '2015-01-31 03:23:10'),
(134, NULL, NULL, 2, -40.0138, 1898.75, 17.6406, 115.35, 0, 0, 287, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 635, '2015-01-31 03:23:44'),
(135, NULL, NULL, 4, -28.1555, 1895.92, 17.6476, 210.57, 0, 0, 287, 0, 0, NULL, NULL, 0, NULL, '', 0, 1, 0, '', 635, '2015-01-31 04:32:25');

-- --------------------------------------------------------

--
-- Структура таблицы `ped_inventory`
--

CREATE TABLE `ped_inventory` (
  `index` int(10) UNSIGNED NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL,
  `itemID` int(10) NOT NULL,
  `itemValue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ped_mission`
--

CREATE TABLE `ped_mission` (
  `char_id` int(11) NOT NULL,
  `mission` varchar(255) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `phones`
--

CREATE TABLE `phones` (
  `phonenumber` int(1) NOT NULL,
  `turnedon` smallint(1) NOT NULL DEFAULT '1',
  `secretnumber` smallint(1) NOT NULL DEFAULT '0',
  `phonebook` varchar(40) NOT NULL DEFAULT '0',
  `ringtone` smallint(1) NOT NULL DEFAULT '3',
  `contact_limit` int(5) NOT NULL DEFAULT '50',
  `boughtby` int(11) NOT NULL DEFAULT '-1',
  `bought_date` datetime DEFAULT NULL,
  `sms_tone` smallint(1) NOT NULL DEFAULT '7',
  `keypress_tone` smallint(1) NOT NULL DEFAULT '1',
  `tone_volume` smallint(2) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phones`
--

INSERT INTO `phones` (`phonenumber`, `turnedon`, `secretnumber`, `phonebook`, `ringtone`, `contact_limit`, `boughtby`, `bought_date`, `sms_tone`, `keypress_tone`, `tone_volume`) VALUES
(1, 1, 0, '0', 3, 50, -1, NULL, 7, 1, 10),
(12345, 1, 0, '0', 3, 50, 53, NULL, 7, 1, 10),
(311596, 1, 0, '0', 3, 50, 51, NULL, 7, 1, 10),
(367704, 1, 0, '0', 3, 50, -1, NULL, 7, 1, 10),
(393530, 1, 0, '0', 3, 50, -1, NULL, 7, 1, 10),
(511498, 1, 0, '0', 3, 50, -1, NULL, 7, 1, 10),
(637105, 1, 0, '0', 3, 50, -1, NULL, 7, 1, 10),
(639387, 1, 0, '0', 3, 50, 57, NULL, 7, 1, 10),
(696251, 1, 0, '0', 3, 50, -1, NULL, 7, 1, 10),
(784224, 1, 0, '0', 3, 50, -1, NULL, 7, 1, 10),
(862240, 0, 0, '0', 3, 50, 51, NULL, 7, 1, 10),
(869195, 0, 0, '0', 4, 50, -1, NULL, 7, 1, 10),
(878505, 1, 0, '0', 3, 50, -1, NULL, 7, 1, 10),
(885352, 1, 0, '0', 3, 50, -1, NULL, 7, 1, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `id` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `entryName` varchar(50) DEFAULT NULL,
  `entryNumber` bigint(20) NOT NULL,
  `entryEmail` varchar(60) DEFAULT NULL,
  `entryAddress` varchar(100) DEFAULT NULL,
  `entryFavorited` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `phone_history`
--

CREATE TABLE `phone_history` (
  `id` int(11) NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `date` text,
  `private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `phone_history`
--

INSERT INTO `phone_history` (`id`, `from`, `to`, `state`, `date`, `private`) VALUES
(61, 784224, 2552, 1, NULL, 0),
(62, 869195, 4444444, 2, NULL, 0),
(63, 1, 8924, 2, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phone_sms`
--

CREATE TABLE `phone_sms` (
  `id` int(11) NOT NULL,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date` text,
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `pilot_notams`
--

CREATE TABLE `pilot_notams` (
  `id` int(11) NOT NULL,
  `information` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `publicphones`
--

CREATE TABLE `publicphones` (
  `id` int(10) UNSIGNED NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `dimension` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `publicphones`
--

INSERT INTO `publicphones` (`id`, `x`, `y`, `z`, `dimension`) VALUES
(1, 1197.78, -1331.22, 13.3984, 0),
(2, 1184.94, -1330.17, 13.5749, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `radio_stations`
--

CREATE TABLE `radio_stations` (
  `id` int(11) NOT NULL,
  `station_name` varchar(64) DEFAULT NULL,
  `source` text,
  `owner` int(11) NOT NULL DEFAULT '0',
  `register_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dynamic radio stations.';

--
-- Дамп данных таблицы `radio_stations`
--

INSERT INTO `radio_stations` (`id`, `station_name`, `source`, `owner`, `register_date`, `expire_date`, `enabled`, `order`) VALUES
(1, 'DEFJAY', 'http://he-srv1.defjay.com:80', 0, NULL, NULL, 1, 12),
(2, 'Black Beats FM', 'http://stream3.blackbeats.fm/', 0, NULL, NULL, 1, 14),
(3, 'Радио Рекорд', 'http://air.radiorecord.ru:8101/rr_320', 0, NULL, NULL, 1, 12),
(4, 'Vice City 80s Hits', 'http://us1.internet-radio.com:8180/', 0, NULL, NULL, 1, NULL),
(5, 'Ultra Radio', 'http://uk5.internet-radio.com:8233/', 0, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `ramps`
--

CREATE TABLE `ramps` (
  `id` int(2) NOT NULL,
  `position` text,
  `interior` int(2) DEFAULT NULL,
  `dimension` int(2) DEFAULT NULL,
  `rotation` int(5) DEFAULT NULL,
  `creator` text,
  `state` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ramps`
--

INSERT INTO `ramps` (`id`, `position`, `interior`, `dimension`, `rotation`, `creator`, `state`) VALUES
(1, '[ [ 1544.4771728515625, -1613.1640625, 11.95116138458252 ] ]', 0, 0, 93, 'Bratila Cristian', 0),
(2, '[ [ 1620.485595703125, 61.808090209960938, 35.615306854248047 ] ]', 0, 0, 15, 'Bratila Cristian', 0),
(3, '[ [ 205.5168604204088, -1865.716051453001, 1.458645439147949 ] ]', 0, 0, 324, 'Misha Popka', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `restricted_freqs`
--

CREATE TABLE `restricted_freqs` (
  `id` int(11) NOT NULL,
  `frequency` text,
  `limitedto` int(5) DEFAULT NULL,
  `addedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sapt_destinations`
--

CREATE TABLE `sapt_destinations` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `destinationID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sapt_destinations`
--

INSERT INTO `sapt_destinations` (`id`, `name`, `destinationID`) VALUES
(1, 'San Andreas Public Transport', '001'),
(2, 'To Depot', '005'),
(3, 'Charter', '010'),
(4, 'Not on Route', '013'),
(5, 'Test drive', '014'),
(6, 'Central Bus Station', '100'),
(7, 'East LS Beach', '101'),
(8, 'RS Haul', '102'),
(9, 'Ocean Docks', '103'),
(10, 'Los Santos', '901'),
(11, 'Dillimore', '902');

-- --------------------------------------------------------

--
-- Структура таблицы `sapt_locations`
--

CREATE TABLE `sapt_locations` (
  `id` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `stopID` int(11) NOT NULL,
  `name` text NOT NULL,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sapt_locations`
--

INSERT INTO `sapt_locations` (`id`, `route`, `stopID`, `name`, `posX`, `posY`, `posZ`) VALUES
(1, 1, 1, 'Ocean Docks', 2680.2, -2481.6, 13.5),
(2, 1, 2, 'Industrial', 2302.7, -2095.8, 13.3),
(3, 1, 3, 'Ganton', 2283.9, -1734.6, 13.4),
(4, 1, 4, 'Sea Street', 2739.2, -1442.4, 30.3),
(5, 1, 5, 'Jefferson', 2173.4, -1158.7, 24.7),
(6, 1, 6, 'Los Santos Hospital', 2110.1, -1439.6, 23.8),
(7, 1, 7, 'Idlewood Gas Station', 1922.3, -1749.1, 13.4),
(8, 1, 8, 'City Hall', 1467.2, -1729.5, 13.4),
(9, 1, 9, 'Star Tower', 1563.7, -1295.9, 16.9),
(10, 1, 10, 'St. Lawrence', 1340.3, -1176, 23.1),
(11, 1, 11, 'Commerce Mall', 1132.2, -1393, 13.5),
(12, 1, 12, 'Department of Motor Vehicles', 1035.2, -1733, 13.4),
(13, 1, 13, 'Expressway 425-West', 735.2, -1757.6, 14),
(14, 1, 14, 'RS Haul', -124.5, -1201.7, 2.7),
(15, 2, 1, 'RS Haul', -117.8, -1169, 2.7),
(16, 2, 2, 'Expressway 425-West', 714, -1772, 13.8),
(17, 2, 3, 'Department of Motor Vehicles', 1039.8, -1738.5, 13.4),
(18, 2, 4, 'Commerce Mall', 1121.5, -1408.1, 13.4),
(19, 2, 5, 'St. Lawrence', 1359.8, -1175.6, 23.2),
(20, 2, 6, 'Star Tower', 1569.6, -1304.7, 17.1),
(21, 2, 7, 'City Hall', 1451.4, -1734.6, 13.4),
(22, 2, 8, 'Idlewood Gas Station', 1921.1, -1754.9, 13.4),
(23, 2, 9, 'Los Santos Hospital', 2114.7, -1445.6, 23.8),
(24, 2, 10, 'Jefferson', 2178, -1160.2, 24.6),
(25, 2, 11, 'Sea Street', 2720.3, -1477.5, 30.3),
(26, 2, 12, 'Ganton', 2276.4, -1730, 13.4),
(27, 2, 13, 'Industrial', 2300.6, -2101.3, 13.3),
(28, 2, 14, 'Ocean Docks', 2680.4, -2472.4, 13.5),
(29, 3, 1, 'Central Bus Station', 1939.3, -1727.2, 13.4),
(30, 3, 2, 'Dillimore', 684.6, -506.7, 16.2),
(31, 4, 1, 'Dillimore', 684.4, -506.1, 16.2),
(32, 4, 2, 'Central Bus Station', 1939, -1725, 13.4);

-- --------------------------------------------------------

--
-- Структура таблицы `sapt_routes`
--

CREATE TABLE `sapt_routes` (
  `id` int(11) NOT NULL,
  `line` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `destination` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sapt_routes`
--

INSERT INTO `sapt_routes` (`id`, `line`, `route`, `destination`) VALUES
(1, 901, 1, '102'),
(2, 901, 2, '103'),
(3, 101, 1, '902'),
(4, 101, 2, '901');

-- --------------------------------------------------------

--
-- Структура таблицы `serial_whitelist`
--

CREATE TABLE `serial_whitelist` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `serial` varchar(32) NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `last_login_ip` varchar(15) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` text,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`) VALUES
(1, 'tax', '15'),
(2, 'incometax', '10'),
(3, 'motd', 'EEEEEEEEEEEEEE'),
(4, 'serverip', 'Hello..'),
(5, 'pdcodes', 'EEEEEEEEEEEEEE'),
(6, 'pdprocedures', 'It\'s lonely here or content is out of date. \n\nPlease refresh..\n'),
(7, 'welfare', '200'),
(8, 'lottery', '0'),
(9, 'lotteryNumber', '35');

-- --------------------------------------------------------

--
-- Структура таблицы `sfia_pilots`
--

CREATE TABLE `sfia_pilots` (
  `id` int(11) NOT NULL,
  `charactername` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `shoptype` tinyint(4) DEFAULT '0',
  `rotationz` float NOT NULL DEFAULT '0',
  `skin` int(11) DEFAULT '-1',
  `sPendingWage` int(11) NOT NULL DEFAULT '0',
  `sIncome` bigint(20) NOT NULL DEFAULT '0',
  `sCapacity` int(11) NOT NULL DEFAULT '10',
  `sSales` varchar(5000) NOT NULL DEFAULT '',
  `pedName` text,
  `deletedBy` int(11) NOT NULL DEFAULT '0',
  `faction_belong` int(11) NOT NULL DEFAULT '0',
  `faction_access` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shops`
--

INSERT INTO `shops` (`id`, `x`, `y`, `z`, `dimension`, `interior`, `shoptype`, `rotationz`, `skin`, `sPendingWage`, `sIncome`, `sCapacity`, `sSales`, `pedName`, `deletedBy`, `faction_belong`, `faction_access`) VALUES
(8, 204.852, -7.9668, 1001.21, 64, 5, 5, 266.909, 132, 0, 250, 10, '- 19/02/2015 14:33 : A customer bought a Skin 11 for $50.\n- 19/02/2015 14:33 : A customer bought a Skin 12 for $50.\n- 19/02/2015 14:33 : A customer bought a Skin 10 for $50.\n- 19/02/2015 14:33 : A customer bought a Skin 10 for $50.\n- 19/02/2015 14:33 : A customer bought a Skin 186 for $50.\n', 'Norman_Q._Skinner', 5, 0, 0),
(9, 207.799, -98.7041, 1005.26, 67, 15, 5, 179.138, 83, 0, 50, 10, '- 19/02/2015 16:42 : A customer bought a Skin 116 for $50.\n', 'Richard_E._Brown', 5, 0, 0),
(17, 1049.78, -1465.3, 13.5484, 0, 0, 19, 266.524, 48, 0, 0, 10, '', 'Lloyd_J._Hummer', 5, 0, 0),
(18, 1050.43, -1465.28, 13.5494, 0, 0, 4, 137.213, 11, 0, 0, 10, '', 'Norman_K._Moore', 5, 0, 0),
(19, 1049.72, -1466.04, 13.5485, 0, 0, 3, 137.213, 120, 0, 0, 10, '', 'Zachary_D._Hummer', 5, 0, 0),
(20, 1048.6, -1467.34, 13.5423, 0, 0, 5, 337.096, 167, 0, 0, 10, '', 'Nicholas_U._Decker', 5, 0, 0),
(21, 1053.37, -1466.06, 13.3794, 0, 0, 12, 294.336, 175, 0, 0, 10, '', 'Norman_J._Alston', 5, 0, 0),
(22, 1049.29, -1467.18, 13.5482, 0, 0, 16, 111.444, 29, 0, 0, 10, '', 'Seymour_X._Harris', 5, 0, 0),
(23, 208.144, -98.7041, 1005.26, 67, 15, 5, 182.428, 79, 0, 350, 10, '- 05/11/2016 16:54 : A customer bought a Skin 268 for $50.\n- 05/11/2016 16:54 : A customer bought a Skin 301 for $50.\n- 05/11/2016 16:54 : A customer bought a Skin 301 for $50.\n- 18/10/2016 12:56 : A customer bought a Skin 66 for $50.\n- 18/10/2016 12:56 : A customer bought a Skin 21 for $50.\n- 18/10/2016 12:56 : A customer bought a Skin 21 for $50.\n- 21/02/2015 23:48 : A customer bought a Skin 70 for $50.\n', 'Tyler_F._Duncan', 0, 0, 0),
(28, 1530.07, 1475.16, 16.9535, 2695, 21, 15, 3.76013, 163, 0, 0, 10, '', 'Fresh', 0, 0, 0),
(29, 1553.42, -1673.11, 16.1953, 0, 0, 15, 102.49, 281, 0, 0, 10, '', 'Polis_#>', 37, 0, 0),
(30, 229.497, 119.021, 1010.22, 7, 10, 15, 168.772, 281, 0, 0, 10, '', 'Ahmet_Dursun', 33, 0, 0),
(31, 232.999, 119.021, 1010.21, 7, 10, 15, 171.282, 280, 0, 0, 10, '', 'Osman_Tas', 33, 0, 0),
(32, 225.405, 121.9, 1010.22, 7, 10, 19, 263.091, 312, 0, 0, 10, '', 'Deneme', 33, 0, 0),
(34, -21.748, -140.323, 1003.55, 72, 16, 1, 0.304871, 97, 0, 0, 10, '', 'Aslihan_Genc', 33, 0, 0),
(35, -21.6387, -140.326, 1003.55, 72, 16, 1, 352.543, 93, 0, 370, 10, '- 08/03/2015 23:47 : A customer bought a Duffle Bag for $60.\n- 08/03/2015 23:47 : A customer bought a Lighters for $45.\n- 08/03/2015 23:46 : A customer bought a Lottery Ticket for $75.\n- 22/02/2015 00:36 : A customer bought a Helmet for $100.\n- 22/02/2015 00:36 : A customer bought a Mask for $20.\n- 22/02/2015 00:36 : A customer bought a Spray Can for $25.\n- 21/02/2015 23:52 : A customer bought a Lighters for $45.\n', 'Aslihan_Tas', 0, 0, 0),
(36, 2803.32, -1103.83, 94.1871, 0, 0, 8, 86.7466, 83, 0, 0, 10, '', 'Nicholas_D._Wilson', 50, 0, 0),
(37, 2797.94, -1108.38, 94.1871, 0, 0, 19, 359.349, 77, 0, 0, 10, '', 'William_J._Alston', 50, 0, 0),
(38, 2798.11, -1107.25, 94.1871, 0, 0, 1, 190.459, 75, 0, 0, 10, '', 'Brandon_P._Clark', 0, 0, 0),
(39, 2341.95, -2232.5, 6.0625, 0, 0, 1, 199.759, 148, 0, 0, 10, '', 'Timothy_J._Jackson', 3, 0, 0),
(40, 2342.32, -2233.29, 6.0625, 0, 0, 8, 63.8837, 278, 0, 0, 10, '', 'Seth_W._Duncan', 0, 0, 0),
(41, 1545.7, -1690.29, 13.9214, 0, 0, 1, 84.6152, 177, 0, 0, 10, '', 'Михаил_Юрьевич', 0, 0, 0),
(43, -163.426, 1134.01, 19.7422, 0, 0, 3, 88.032, 198, 0, 0, 10, '', 'Ryan_R._Decker', 0, 0, 0),
(44, -163.411, 1133.31, 19.7422, 0, 0, 4, 88.032, 52, 0, 0, 10, '', 'Junior_I._Dunbar', 0, 0, 0),
(45, -163.413, 1132.74, 19.7422, 0, 0, 5, 88.032, 184, 0, 0, 10, '', 'Василий_Петрович', 0, 0, 0),
(46, -163.411, 1132.18, 19.7422, 0, 0, 6, 88.032, 99, 0, 0, 10, '', 'Andrew_D._Taylor', 0, 0, 0),
(47, -163.411, 1131.62, 19.7422, 0, 0, 7, 88.032, 205, 0, 0, 10, '', 'Виктор_Юрьевич', 0, 0, 0),
(48, -163.411, 1131.06, 19.7422, 0, 0, 8, 88.032, 194, 0, 0, 10, '', 'Алекс_Джозеф', 0, 0, 0),
(49, -163.41, 1130.48, 19.7422, 0, 0, 16, 88.032, 122, 0, 0, 10, '', 'Joshua_I._Martin', 0, 0, 0),
(50, -163.411, 1129.91, 19.7422, 0, 0, 18, 88.032, 127, 0, 0, 10, '', 'John_W._Ames', 0, 0, 0),
(51, -163.412, 1129.34, 19.7422, 0, 0, 19, 88.032, 237, 0, 0, 10, '', 'Seymour_H._Borunda', 0, 4, 2),
(53, 166.37, -1947.33, 3.77344, 0, 0, 19, 40.867, 75, 0, 0, 10, '', 'Zachary_E._Davis', 0, 1, 2),
(54, 1538.51, -1687.73, 13.5469, 0, 0, 14, 2.49667, 105, 0, 0, 10, '', 'John_Q._Daniel', 1, 0, 0),
(55, 1529.73, -1707.15, 13.3828, 0, 0, 13, 194.689, 216, 0, 0, 10, '', 'Lloyd_J._Garcia', 1, 0, 0),
(56, 1522.76, -1700.31, 13.5469, 0, 0, 19, 318.386, 126, 0, 0, 10, '', 'Misha_Konsta', 1, 0, 0),
(61, 1536.08, 1475.93, 16.9535, 2695, 21, 1, 177.742, 1, 0, 0, 10, '', 'SeeGame.ru', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_contacts_info`
--

CREATE TABLE `shop_contacts_info` (
  `npcID` int(11) NOT NULL,
  `sOwner` text,
  `sPhone` text,
  `sEmail` text,
  `sForum` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves data about business''s owners in shop system - MAXIME';

-- --------------------------------------------------------

--
-- Структура таблицы `shop_products`
--

CREATE TABLE `shop_products` (
  `npcID` int(11) DEFAULT NULL,
  `pItemID` int(11) DEFAULT NULL,
  `pItemValue` text,
  `pDesc` text,
  `pPrice` text,
  `pDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pID` int(11) NOT NULL,
  `pQuantity` int(11) NOT NULL DEFAULT '1',
  `pSetQuantity` int(11) NOT NULL DEFAULT '1',
  `pRestockInterval` int(11) DEFAULT '0',
  `pRestockedDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves on-sale products from players, business system by Maxi';

-- --------------------------------------------------------

--
-- Структура таблицы `slotmachines`
--

CREATE TABLE `slotmachines` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotation` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slotmachines`
--

INSERT INTO `slotmachines` (`id`, `x`, `y`, `z`, `rotation`, `dimension`, `interior`) VALUES
(9, '1562.783203', '-1707.068359', '28.094810', '5.660797', 0, 0),
(10, '1549.998047', '-1650.479492', '13.257520', '179.203491', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `speedcams`
--

CREATE TABLE `speedcams` (
  `id` int(11) NOT NULL,
  `x` float(11,7) NOT NULL DEFAULT '0.0000000',
  `y` float(11,7) NOT NULL DEFAULT '0.0000000',
  `z` float(11,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(3) NOT NULL DEFAULT '0' COMMENT 'Stores the location of the pernament speedcams',
  `dimension` int(5) NOT NULL DEFAULT '0',
  `maxspeed` int(4) NOT NULL DEFAULT '120',
  `radius` int(4) NOT NULL DEFAULT '2',
  `enabled` smallint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Дамп данных таблицы `speedcams`
--

INSERT INTO `speedcams` (`id`, `x`, `y`, `z`, `interior`, `dimension`, `maxspeed`, `radius`, `enabled`) VALUES
(1, 1596.5605469, -1732.1796875, 13.3828125, 0, 0, 60, 5, 1),
(2, 1349.2324219, -1426.7968750, 19.2979889, 0, 0, 90, 0, 1),
(3, 1350.1357422, -1425.3466797, 18.4534512, 0, 0, 90, 0, 1),
(5, 1349.9257812, -1418.9873047, 13.6863728, 0, 0, 90, 30, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `speedingviolations`
--

CREATE TABLE `speedingviolations` (
  `id` int(11) NOT NULL,
  `carID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `speed` int(5) NOT NULL,
  `area` varchar(50) NOT NULL,
  `personVisible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `speedingviolations`
--

INSERT INTO `speedingviolations` (`id`, `carID`, `time`, `speed`, `area`, `personVisible`) VALUES
(205, 12, '2016-10-18 22:57:30', 146, 'Commerce Westbound', 63),
(206, 1, '2016-10-18 23:41:33', 65, 'Commerce Westbound', 63),
(207, 1, '2016-10-18 23:41:58', 105, 'Market Northbound', 63),
(208, 12, '2016-10-18 23:44:10', 117, 'Market Southbound', 63),
(209, 12, '2016-10-18 23:45:03', 112, 'Commerce Eastbound', 63),
(210, 1, '2016-10-20 11:22:44', 97, 'Market Southbound', 1),
(211, 12, '2016-10-20 23:22:34', 124, 'Commerce Eastbound', 1),
(212, 24, '2016-10-22 04:22:47', 136, 'Commerce Westbound', 1),
(213, 24, '2016-10-22 04:39:31', 144, 'Market Northbound', 1),
(214, 24, '2016-10-22 05:48:04', 125, 'Commerce Westbound', 1),
(215, 24, '2016-10-22 05:49:03', 80, 'Commerce Eastbound', 1),
(216, 24, '2016-10-22 06:00:05', 100, 'Commerce Eastbound', 1),
(217, 24, '2016-10-22 06:05:04', 147, 'Commerce Westbound', 1),
(218, 23, '2016-10-22 07:50:00', 104, 'Market Eastbound', 1),
(219, 1, '2016-10-24 17:28:09', 157, 'Market Southbound', 1),
(220, 1, '2016-10-24 17:31:03', 62, 'Commerce Westbound', 1),
(221, 1, '2016-10-24 17:33:39', 95, 'Commerce Eastbound', 1),
(222, 10, '2016-10-24 19:02:48', 120, 'Commerce Westbound', 1),
(223, 10, '2016-10-24 19:05:23', 105, 'Commerce Westbound', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `staff_changelogs`
--

CREATE TABLE `staff_changelogs` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `team` int(11) NOT NULL,
  `from_rank` int(11) NOT NULL,
  `to_rank` int(11) DEFAULT NULL,
  `by` int(11) DEFAULT NULL,
  `details` text,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `staff_changelogs`
--

INSERT INTO `staff_changelogs` (`id`, `userid`, `team`, `from_rank`, `to_rank`, `by`, `details`, `date`) VALUES
(0, 2, 1, 6, 4, 3, 'd', NULL),
(0, 2, 1, 6, 4, 3, 'd', NULL),
(0, 2, 1, 6, 4, 3, NULL, NULL),
(0, 50, 1, 0, 2, 3, NULL, NULL),
(0, 51, 1, 6, 4, 3, NULL, NULL),
(0, 53, 1, 0, 4, 3, NULL, NULL),
(0, 52, 1, 0, 2, 3, NULL, NULL),
(0, 52, 1, 2, 0, 3, NULL, NULL),
(0, 54, 1, 0, 4, 3, NULL, NULL),
(0, 54, 1, 4, 0, 3, NULL, NULL),
(0, 54, 3, 0, 2, 3, NULL, NULL),
(0, 54, 1, 0, 4, 3, NULL, NULL),
(0, 61, 1, 0, 4, 3, NULL, NULL),
(0, 62, 1, 0, 4, 3, NULL, NULL),
(0, 3, 2, 0, 2, 3, NULL, NULL),
(0, 3, 3, 0, 2, 3, NULL, NULL),
(0, 3, 4, 4, 3, 3, NULL, NULL),
(0, 61, 2, 0, 2, 61, 'ca esti prea jmecher', NULL),
(0, 61, 3, 0, 2, 61, 'ca esti prea jmecher', NULL),
(0, 77, 1, 0, 4, 3, NULL, NULL),
(0, 2, 1, 1, 3, 1, 'gdffdfdgdfg', NULL),
(0, 2, 2, 1, 2, 1, 'gdffdfdgdfg', NULL),
(0, 2, 3, 1, 2, 1, 'gdffdfdgdfg', NULL),
(0, 2, 4, 1, 3, 1, 'gdffdfdgdfg', NULL),
(0, 2, 5, 1, 2, 1, 'gdffdfdgdfg', NULL),
(0, 2, 1, 0, 4, 1, 'tyrtryyr', NULL),
(0, 2, 2, 0, 2, 1, 'tyrtryyr', NULL),
(0, 2, 3, 0, 2, 1, 'tyrtryyr', NULL),
(0, 2, 4, 0, 3, 1, 'tyrtryyr', NULL),
(0, 2, 5, 0, 2, 1, 'tyrtryyr', NULL),
(0, 3, 1, 0, 4, 1, 'rrrr', NULL),
(0, 3, 2, 0, 2, 1, 'rrrr', NULL),
(0, 3, 3, 0, 2, 1, 'rrrr', NULL),
(0, 3, 4, 0, 3, 1, 'rrrr', NULL),
(0, 3, 5, 0, 2, 1, 'rrrr', NULL),
(0, 5, 1, 0, 4, 1, 'fdggdfg', NULL),
(0, 5, 2, 0, 2, 1, 'fdggdfg', NULL),
(0, 5, 3, 0, 2, 1, 'fdggdfg', NULL),
(0, 5, 4, 0, 3, 1, 'fdggdfg', NULL),
(0, 5, 5, 0, 2, 1, 'fdggdfg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `stats`
--

CREATE TABLE `stats` (
  `district` varchar(45) NOT NULL,
  `deaths` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stats`
--

INSERT INTO `stats` (`district`, `deaths`) VALUES
('East Los Santos, Los Santos', 1),
('Easter Bay Airport, San Fierro', 1),
('Idlewood, Los Santos', 1),
('Los Santos International, Los Santos', 1),
('Los Santose Autoregistrikeskus, Conference Ce', 0),
('Market, Los Santos', 4),
('Ocean Docks, Los Santos', 1),
('Pershing Square, Los Santos', 7),
('Red County, Red County', 2),
('Unknown Area', 1),
('Unknown, Unknown', 1),
('Willowfield, Los Santos', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `suspectcrime`
--

CREATE TABLE `suspectcrime` (
  `id` int(11) NOT NULL,
  `suspect_name` text,
  `time` text,
  `date` text,
  `officers` text,
  `ticket` int(11) DEFAULT NULL,
  `arrest` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `ticket_price` text,
  `arrest_price` text,
  `fine_price` text,
  `illegal_items` text,
  `details` text,
  `done_by` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `suspectdetails`
--

CREATE TABLE `suspectdetails` (
  `suspect_name` text,
  `birth` text,
  `gender` text,
  `ethnicy` text,
  `cell` int(5) DEFAULT '0',
  `occupation` text,
  `address` text,
  `other` text,
  `is_wanted` int(1) DEFAULT '0',
  `wanted_reason` text,
  `wanted_punishment` text,
  `wanted_by` text,
  `photo` text,
  `done_by` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `interior` int(5) DEFAULT NULL,
  `dimension` int(5) DEFAULT NULL,
  `rx` decimal(10,6) DEFAULT NULL,
  `ry` decimal(10,6) DEFAULT NULL,
  `rz` decimal(10,6) DEFAULT NULL,
  `modelid` int(5) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `tc_comments`
--

CREATE TABLE `tc_comments` (
  `id` int(11) NOT NULL,
  `poster` varchar(200) NOT NULL,
  `comment` text NOT NULL,
  `date` text,
  `internal` tinyint(1) NOT NULL DEFAULT '0',
  `tcid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tc_tickets`
--

CREATE TABLE `tc_tickets` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `assign_to` int(11) NOT NULL DEFAULT '0',
  `subcribers` varchar(500) NOT NULL DEFAULT ',',
  `date` text,
  `creator` varchar(200) NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `content` text NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tempinteriors`
--

CREATE TABLE `tempinteriors` (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float DEFAULT NULL,
  `posZ` float DEFAULT NULL,
  `interior` int(5) DEFAULT NULL,
  `uploaded_by` int(11) DEFAULT '0',
  `uploaded_at` datetime DEFAULT NULL,
  `amount_paid` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Структура таблицы `tempobjects`
--

CREATE TABLE `tempobjects` (
  `id` int(11) NOT NULL,
  `model` int(6) NOT NULL DEFAULT '0',
  `posX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(1) DEFAULT '1',
  `doublesided` int(1) DEFAULT '0',
  `scale` float(12,7) DEFAULT '1.0000000',
  `breakable` int(1) DEFAULT '0',
  `alpha` int(11) NOT NULL DEFAULT '255'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `textures_animated`
--

CREATE TABLE `textures_animated` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `frames` text NOT NULL,
  `speed` int(4) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ticketreplies`
--

CREATE TABLE `ticketreplies` (
  `rid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `text` text NOT NULL,
  `by` text NOT NULL,
  `rank` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL,
  `subject` text NOT NULL,
  `assigned` text NOT NULL,
  `priority` text NOT NULL,
  `username` text NOT NULL,
  `gamename` text NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `action` varchar(32) DEFAULT NULL,
  `token` varchar(32) NOT NULL,
  `data` varchar(500) DEFAULT NULL,
  `date` varchar(500) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Random token, used for security and validations - MAXIME';

-- --------------------------------------------------------

--
-- Структура таблицы `towstats`
--

CREATE TABLE `towstats` (
  `id` int(11) NOT NULL,
  `character` int(11) NOT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `vehicle_plate` varchar(8) DEFAULT NULL COMMENT 'vehicle plate at the time of towing, if any',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'date of towing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Detailed information for TTR leaders who towed what and when';

-- --------------------------------------------------------

--
-- Структура таблицы `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `model` int(3) DEFAULT '0',
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotx` decimal(10,6) DEFAULT '0.000000',
  `roty` decimal(10,6) DEFAULT '0.000000',
  `rotz` decimal(10,6) DEFAULT '0.000000',
  `currx` decimal(10,6) DEFAULT '0.000000',
  `curry` decimal(10,6) DEFAULT '0.000000',
  `currz` decimal(10,6) DEFAULT '0.000000',
  `currrx` decimal(10,6) DEFAULT '0.000000',
  `currry` decimal(10,6) DEFAULT '0.000000',
  `currrz` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `fuel` int(3) DEFAULT '100',
  `engine` int(1) DEFAULT '0',
  `locked` int(1) DEFAULT '0',
  `lights` int(1) DEFAULT '0',
  `sirens` int(1) DEFAULT '0',
  `paintjob` int(11) DEFAULT '0',
  `hp` float DEFAULT '1000',
  `color1` varchar(50) DEFAULT '0',
  `color2` varchar(50) DEFAULT '0',
  `color3` varchar(50) DEFAULT NULL,
  `color4` varchar(50) DEFAULT NULL,
  `plate` text,
  `faction` int(11) DEFAULT '-1',
  `owner` int(11) DEFAULT '-1',
  `job` int(11) DEFAULT '-1',
  `tintedwindows` int(1) DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `currdimension` int(5) DEFAULT '0',
  `currinterior` int(5) DEFAULT '0',
  `enginebroke` int(1) DEFAULT '0',
  `items` text,
  `itemvalues` text,
  `Impounded` int(3) DEFAULT '0',
  `handbrake` int(1) DEFAULT '0',
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `upgrades` varchar(150) DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]',
  `wheelStates` varchar(30) DEFAULT '[ [ 0, 0, 0, 0 ] ]',
  `panelStates` varchar(40) DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]',
  `doorStates` varchar(30) DEFAULT '[ [ 0, 0, 0, 0, 0, 0 ] ]',
  `odometer` int(15) DEFAULT '0',
  `headlights` varchar(30) DEFAULT '[ [ 255, 255, 255 ] ]',
  `variant1` int(3) DEFAULT NULL,
  `variant2` int(3) DEFAULT NULL,
  `description1` varchar(300) NOT NULL DEFAULT '',
  `description2` varchar(300) NOT NULL DEFAULT '',
  `description3` varchar(300) NOT NULL DEFAULT '',
  `description4` varchar(300) NOT NULL DEFAULT '',
  `description5` varchar(300) NOT NULL DEFAULT '',
  `suspensionLowerLimit` float DEFAULT NULL,
  `driveType` char(5) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `chopped` tinyint(4) NOT NULL DEFAULT '0',
  `stolen` tinyint(4) NOT NULL DEFAULT '0',
  `lastUsed` datetime DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `trackingdevice` text,
  `registered` int(2) NOT NULL DEFAULT '1',
  `show_plate` int(2) NOT NULL DEFAULT '1',
  `show_vin` int(2) NOT NULL DEFAULT '1',
  `paintjob_url` varchar(255) DEFAULT NULL,
  `vehicle_shop_id` int(11) NOT NULL DEFAULT '0',
  `bulletproof` tinyint(4) NOT NULL DEFAULT '0',
  `textures` varchar(300) NOT NULL DEFAULT '[ [ ] ]',
  `business` int(11) NOT NULL DEFAULT '-1',
  `protected_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vehicles`
--

INSERT INTO `vehicles` (`id`, `model`, `x`, `y`, `z`, `rotx`, `roty`, `rotz`, `currx`, `curry`, `currz`, `currrx`, `currry`, `currrz`, `fuel`, `engine`, `locked`, `lights`, `sirens`, `paintjob`, `hp`, `color1`, `color2`, `color3`, `color4`, `plate`, `faction`, `owner`, `job`, `tintedwindows`, `dimension`, `interior`, `currdimension`, `currinterior`, `enginebroke`, `items`, `itemvalues`, `Impounded`, `handbrake`, `safepositionX`, `safepositionY`, `safepositionZ`, `safepositionRZ`, `upgrades`, `wheelStates`, `panelStates`, `doorStates`, `odometer`, `headlights`, `variant1`, `variant2`, `description1`, `description2`, `description3`, `description4`, `description5`, `suspensionLowerLimit`, `driveType`, `deleted`, `chopped`, `stolen`, `lastUsed`, `creationDate`, `createdBy`, `trackingdevice`, `registered`, `show_plate`, `show_vin`, `paintjob_url`, `vehicle_shop_id`, `bulletproof`, `textures`, `business`, `protected_until`) VALUES
(1, 400, '1812.352539', '-1729.744141', '13.931457', '359.829712', '354.270630', '74.465332', '1812.352539', '-1729.744141', '13.931457', '359.829712', '354.270630', '74.465332', 88, 1, 0, 2, 0, 0, 884.5, '[ [ 101, 1, 0 ] ]', '[ [ 0 ] ]', '[ [ ] ]', '[ [ ] ]', 'EC1 6761', -1, 1, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 3, 0, 0, 0, 0, 2, 2 ] ]', '[ [ 2, 0, 2, 1, 2, 3 ] ]', 3683, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, -1, 0, 0, '2016-11-05 18:36:08', '2016-10-24 17:23:26', -1, NULL, 1, 1, 1, NULL, 1, 0, '[ [ ] ]', -1, NULL),
(2, 431, '1776.166992', '-1929.224609', '13.483315', '359.500122', '359.972534', '0.148315', '1776.166992', '-1929.224609', '13.483315', '359.500122', '359.972534', '0.148315', 98, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'AV7 2921', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-10-24 17:35:57', '2016-10-24 17:35:24', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(3, 431, '1780.609375', '-1929.221680', '13.486465', '359.527588', '0.005493', '1.395264', '2335.967773', '-1152.522461', '26.965631', '358.357544', '359.813232', '75.305786', 735, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'MS5 9921', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2070, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-10-24 19:13:00', '2016-10-24 17:36:34', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(4, 431, '1785.145508', '-1929.197266', '13.487768', '359.533081', '0.000000', '1.658936', '2433.559570', '-1734.534180', '13.646402', '359.961548', '0.560303', '270.247192', 712, 1, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'GP7 8450', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 1121, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-05 17:48:06', '2016-10-24 17:36:59', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(5, 431, '1790.143555', '-1929.042969', '13.489548', '359.538574', '359.994507', '3.691406', '1790.143555', '-1929.041992', '13.490176', '359.544067', '0.038452', '3.724365', 798, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'YQ7 2760', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 13, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-10-24 17:42:33', '2016-10-24 17:37:16', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(6, 431, '1794.705078', '-1928.891602', '13.487796', '359.533081', '0.000000', '0.000000', '1794.706055', '-1928.890625', '13.488537', '359.538574', '0.010986', '0.043945', 98, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'FW9 3904', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-10-24 18:06:06', '2016-10-24 18:05:29', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(7, 431, '1799.368164', '-1928.981445', '13.483445', '359.522095', '0.000000', '0.214233', '1982.887695', '-1754.162109', '13.468074', '0.269165', '359.928589', '270.834961', 654, 1, 0, 1, 0, 0, 990, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'PC7 9198', -1, -2, 3, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 1983, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-05 18:11:59', '2016-10-24 18:05:43', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(8, 420, '1947.913086', '-1822.224609', '13.325686', '359.730835', '0.000000', '351.557007', '1947.914063', '-1822.224609', '13.326436', '359.730835', '359.972534', '351.595459', 100, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'IE2 1431', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-10-24 18:07:49', '2016-10-24 18:07:15', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(9, 420, '1943.402344', '-1821.775391', '13.325822', '359.730835', '0.000000', '349.354248', '1817.714844', '-1740.618164', '13.161814', '359.730835', '359.994507', '25.757446', 97, 0, 0, 1, 0, 0, 983, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'ZQ5 4869', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 1, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 195, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-04 22:09:15', '2016-10-24 18:08:07', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(10, 420, '1938.768555', '-1820.791016', '13.325425', '359.725342', '0.000000', '347.904053', '1474.436523', '-1792.416992', '13.318595', '359.725342', '359.994507', '179.703369', 50, 0, 0, 2, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'KC2 6151', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 2344, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-10-24 19:06:51', '2016-10-24 18:08:35', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(11, 420, '1934.286133', '-1819.859375', '13.327720', '359.736328', '0.000000', '350.529785', '1934.287109', '-1819.859375', '13.328437', '359.736328', '359.972534', '350.568237', 100, 0, 0, 1, 0, 0, 998.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'QX7 3656', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 0, 0 ] ]', 21, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-10-24 18:09:18', '2016-10-24 18:09:00', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(12, 420, '1930.012695', '-1818.915039', '13.326790', '359.730835', '0.000000', '350.172729', '1848.204102', '-1620.219727', '13.321094', '359.588013', '359.983521', '254.328003', 96, 0, 0, 1, 0, 0, 300, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'JU9 7726', -1, -2, 2, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 2, 2, 2 ] ]', '[ [ 3, 2, 1, 2, 0, 2 ] ]', 187, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-10-24 19:48:42', '2016-10-24 18:09:34', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(13, 510, '1231.669922', '-1835.297852', '12.937542', '359.181519', '0.000000', '0.302124', '1446.258789', '-1309.055664', '13.145818', '0.939331', '0.000000', '91.658936', 100, 1, 0, 1, 0, 0, 974, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'TX1 5010', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 749, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2017-03-28 18:01:47', '2016-10-24 18:12:02', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(14, 510, '1230.150391', '-1835.318359', '12.997478', '359.648438', '359.989014', '3.812256', '1234.832031', '-1835.125000', '12.984852', '359.598999', '359.857178', '80.167236', 88, 0, 0, 1, 0, 0, 1000, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'KO 33 NSTA', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 30, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 20:53:24', '2016-10-24 18:12:57', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(15, 510, '1228.470703', '-1835.308594', '12.997616', '359.631958', '359.994507', '1.060181', '1247.598633', '-1842.400391', '13.141116', '0.988770', '359.346313', '339.087524', 97, 1, 0, 1, 0, 0, 954.5, '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [ 0, 0, 0 ] ]', '[ [0, 0, 0] ]', 'CU5 8211', -1, -2, -1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 247, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2017-03-28 17:50:14', '2016-10-24 18:13:04', 1, NULL, 1, 1, 1, NULL, 0, 0, '[ [ ] ]', -1, NULL),
(16, 596, '1544.752930', '-1605.826172', '13.104803', '359.692383', '0.000000', '272.708130', '1621.571289', '61.064453', '36.980289', '4.119873', '1.477661', '347.486572', 45, 0, 0, 2, 0, 0, 865.5, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'WQ6 7646', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 2, 0, 0, 1, 3, 0 ] ]', '[ [ 2, 2, 0, 0, 1, 3 ] ]', 2318, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:04', '2016-10-24 18:29:22', 1, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(17, 596, '1544.777344', '-1609.722656', '13.104622', '359.692383', '0.000000', '270.763550', '2037.577148', '-1582.951172', '12.254456', '352.639160', '359.011230', '355.177002', 25, 0, 0, 1, 0, 0, 978.5, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'RB3 6235', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 2, 0 ] ]', '[ [ 1, 0, 0, 0, 0, 2 ] ]', 539, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:04', '2016-10-24 18:30:55', 1, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(18, 596, '1584.908203', '-1671.644531', '5.613200', '359.670410', '359.950562', '269.978027', '1340.701172', '-1728.337891', '13.145314', '1.543579', '354.391479', '65.643311', 49, 1, 0, 1, 0, 0, 768, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'QA7 3160', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 2, 3, 0, 0, 2, 2, 1 ] ]', '[ [ 2, 2, 2, 0, 0, 0 ] ]', 3273, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-05 16:55:53', '2016-10-24 20:15:20', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(19, 596, '1585.022461', '-1667.512695', '5.613990', '359.648438', '359.994507', '269.642944', '1585.022461', '-1667.512695', '5.595935', '359.593506', '359.994507', '269.642944', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'UZ3 9444', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 37, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:05', '2016-10-24 20:17:11', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(20, 596, '1595.556641', '-1710.683594', '5.611953', '359.692383', '0.000000', '359.450684', '1595.556641', '-1710.683594', '5.593284', '359.637451', '359.994507', '359.450684', 30, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'RM7 8224', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 19, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:05', '2016-10-24 20:19:33', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(21, 596, '1591.437500', '-1710.715820', '5.612229', '359.692383', '359.994507', '359.813232', '1591.437500', '-1710.715820', '5.593525', '359.637451', '359.994507', '359.813232', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'BV9 6311', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 10, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:05', '2016-10-24 20:20:19', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(22, 596, '1587.363281', '-1710.688477', '5.612424', '359.692383', '0.000000', '359.928589', '-3.999023', '-746.308594', '7.261159', '2.900391', '0.280151', '151.276245', 7, 1, 0, 0, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'ZA8 5727', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 32931, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-05 18:26:08', '2016-10-24 20:21:25', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(23, 596, '1583.274414', '-1710.636719', '5.611513', '359.692383', '0.000000', '359.747314', '1583.274414', '-1710.636719', '5.592548', '359.631958', '0.000000', '359.747314', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'YT5 3215', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:05', '2016-10-24 20:22:13', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(24, 596, '1578.537109', '-1710.606445', '5.612155', '359.692383', '0.000000', '358.505859', '1578.537109', '-1710.606445', '5.593098', '359.637451', '0.000000', '358.505859', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'HY9 3346', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:05', '2016-10-24 20:29:46', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(25, 596, '1574.382813', '-1710.500000', '5.610853', '359.686890', '359.994507', '358.599243', '1437.068359', '-1813.136719', '13.321523', '0.258179', '359.978027', '316.713867', 68, 1, 0, 1, 0, 0, 804, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'OS2 8931', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 2, 0, 0, 2, 3, 2 ] ]', '[ [ 0, 2, 0, 0, 2, 3 ] ]', 2821, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-05 18:12:26', '2016-10-24 20:30:38', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(26, 596, '1570.235352', '-1710.582031', '5.611105', '359.686890', '0.000000', '359.439697', '1466.573242', '-1805.178711', '13.321095', '0.230713', '0.032959', '172.128296', 73, 1, 0, 2, 1, 0, 974.5, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'TE1 2936', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 1, 1, 0, 0, 0, 2, 0 ] ]', '[ [ 0, 0, 1, 0, 0, 0 ] ]', 776, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-05 18:14:09', '2016-10-24 20:31:13', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(27, 596, '1528.675781', '-1688.025391', '5.612276', '359.692383', '0.000000', '269.725342', '1528.675781', '-1688.025391', '5.592339', '359.631958', '359.994507', '269.725342', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'AJ6 6743', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:05', '2016-10-24 20:31:54', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(28, 596, '1528.685547', '-1684.030273', '5.610956', '359.686890', '0.000000', '269.384766', '1528.685547', '-1684.030273', '5.591183', '359.631958', '0.000000', '269.384766', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'FW1 4764', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 22, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:05', '2016-10-24 20:32:34', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(29, 596, '1526.457031', '-1644.763672', '5.612044', '359.692383', '359.994507', '179.362793', '1526.457031', '-1644.763672', '5.592140', '359.692383', '359.994507', '179.357300', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'KJ1 2349', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:05', '2016-10-24 20:33:11', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(30, 596, '1530.799805', '-1644.875000', '5.610770', '359.686890', '0.000000', '180.181274', '1530.799805', '-1644.875000', '5.591025', '359.686890', '0.000000', '180.181274', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'GB4 9341', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:05', '2016-10-24 20:33:49', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(31, 596, '1534.733398', '-1645.020508', '5.612561', '359.692383', '0.000000', '179.472656', '1534.733398', '-1645.020508', '5.594010', '359.692383', '0.000000', '179.472656', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'AK5 3089', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 0, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:06', '2016-10-24 20:34:24', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL),
(32, 596, '1539.050781', '-1645.018555', '5.612466', '359.692383', '0.000000', '180.159302', '1539.050781', '-1645.018555', '5.593927', '359.692383', '0.000000', '180.159302', 75, 0, 0, 1, 0, 0, 1000, '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', '[ [ 245, 245, 245 ] ]', '[ [ 42, 119, 161 ] ]', 'AM8 5789', 1, -1, -1, 1, 0, 0, 0, 0, 0, NULL, NULL, 0, 1, NULL, NULL, NULL, NULL, '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]', '[ [ 0, 0, 0, 0, 0, 0 ] ]', 2, '[ [ 255, 255, 255 ] ]', 255, 255, '', '', '', '', '', NULL, NULL, 0, 0, 0, '2016-11-03 22:49:06', '2016-10-24 20:34:58', 3, NULL, 1, 1, 1, NULL, 6, 0, '[ [ ] ]', -1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `vehicles_custom`
--

CREATE TABLE `vehicles_custom` (
  `id` int(11) NOT NULL,
  `brand` text,
  `model` text,
  `year` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `handling` varchar(1000) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) NOT NULL DEFAULT '0',
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedby` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `doortype` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `vehicles_shop`
--

CREATE TABLE `vehicles_shop` (
  `id` int(11) NOT NULL,
  `vehmtamodel` int(11) DEFAULT '0',
  `vehbrand` text,
  `vehmodel` text,
  `vehyear` int(11) DEFAULT '2014',
  `vehprice` int(11) DEFAULT '0',
  `vehtax` int(11) DEFAULT '0',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdby` int(11) NOT NULL DEFAULT '0',
  `updatedate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedby` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `handling` varchar(1000) DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT '1000',
  `enabled` int(1) NOT NULL DEFAULT '0',
  `spawnto` tinyint(2) NOT NULL DEFAULT '0',
  `doortype` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vehicles_shop`
--

INSERT INTO `vehicles_shop` (`id`, `vehmtamodel`, `vehbrand`, `vehmodel`, `vehyear`, `vehprice`, `vehtax`, `createdate`, `createdby`, `updatedate`, `updatedby`, `notes`, `handling`, `duration`, `enabled`, `spawnto`, `doortype`) VALUES
(1, 400, 'Mercedes Benz', 'G65 AMG', 2016, 500000, 250, '2016-10-23 01:17:35', 1, '2016-10-24 13:49:20', 1, '\n', '[ [ 800, 5008.2998046875, 1, [ 0, 0, 0 ], 85, 0.75, 0.8500000238418579, 0.5, 5, 180, 12, 30, \"awd\", \"diesel\", 50, 0.6000000238418579, false, 35, 1.5, 0.009999999776482582, 0, 0.2800000011920929, -0.25, 0.5, 0.25, 0.2700000107288361, 0.2300000041723251, 25000, 32, 5242882, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL),
(2, 406, 'Catpillar', '797', 2016, 20000000, 1000, '2016-10-23 01:35:12', 1, '2016-10-23 08:48:18', 1, '\n', '[ [ 10000, 200000, 4, [ 0, 0, 0 ], 90, 0.7799999713897705, 0.800000011920929, 0.550000011920929, 4, 100, 10, 30, \"awd\", \"diesel\", 3.200000047683716, 0.4000000059604645, false, 30, 3, 0.009999999776482582, 0, 0.2000000029802322, -0.300000011920929, 0.8999999761581421, 0, 0.449999988079071, 0.2000000029802322, 5000, 49160, 20185601, \"long\", \"small\", 20 ] ]', 1000, 1, 0, NULL),
(3, 401, 'Bravura', 'ModelName', 2016, 50000, 25, '2016-10-23 01:38:26', 1, '2016-10-23 08:21:08', 1, '\n', '[ [ 50, 2200, 1.700000047683716, [ 0, 0, 0 ], 70, 0.6499999761581421, 0.800000011920929, 0.5199999809265137, 5, 275, 75, 1, \"rwd\", \"petrol\", 8, 0.800000011920929, false, 30, 3, 0.009999999776482582, 0, 0.3100000023841858, -0.375, 0.5, 0, 0.2599999904632568, 0.5, 9000, 1, 1, \"long\", \"long\", 0 ] ]', 1000, 1, 2, NULL),
(4, 402, 'Ламборгини', 'Bloodshot Special Edition', 2012, 10000000, 100, '2016-10-23 02:10:30', 1, '2016-10-24 18:00:49', 1, '\n', '[ [ 3000, 4000, 2, [ -0.300000011920929, -0.1000000014901161, -0.300000011920929 ], 85, 0.699999988079071, 0.8999999761581421, 0.5, 5, 275, 33, 30, \"awd\", \"petrol\", 11, 0.4000000059604645, false, 30, 1.200000047683716, 0.119999997317791, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0.4000000059604645, 0.25, 0.5, 35000, 10240, 270532608, \"small\", \"small\", 0 ] ]', 1000, 1, 4, NULL),
(5, 520, 'Phantom', 'S', 2017, 80000000, 5000, '2016-10-23 07:31:39', 1, '2016-11-05 15:27:44', 1, '\n', '[ [ 10000, 48750, 0.1000000014901161, [ 0, 0, 0 ], 75, 5, 0.8999999761581421, 1, 1, 275, 75, 20, \"awd\", \"petrol\", 50, 1, false, 33, 0.1000000014901161, 0.009999999776482582, 0, 0.5, -0.300000011920929, 0.5, 0, 0.6000000238418579, 0.75, 45000, 67141888, 4194304, \"long\", \"small\", 27 ] ]', 1000, 0, 1, NULL),
(6, 596, 'SAPD', 'Police Car', 2016, 5000, 10, '2016-10-24 15:27:57', 1, '2016-11-03 19:49:00', 1, '\n', '[ [ 800, 4500, 2, [ 0, 0, 0 ], 75, 0.75, 0.8500000238418579, 0.5, 5, 233, 13, 30, \"awd\", \"petrol\", 10, 0.5, false, 35, 1, 0.009999999776482582, 0, 0.2800000011920929, -0.1000000014901161, 0.5, 0, 0.2000000029802322, 0.239999994635582, 25000, 1073741824, 270532616, \"long\", \"small\", 0 ] ]', 1000, 1, 0, NULL),
(7, 432, 'Konsta', 'Tanker', 1998, 1000000, 11, '2016-10-24 17:23:47', 1, '2016-10-24 17:36:10', 1, '\n', '[ [ 25000, 250000, 5, [ 0, 0, 0 ], 90, 2.5, 0.800000011920929, 0.5, 4, 275, 22, 30, \"awd\", \"diesel\", 50, 0.5, false, 35, 0.5, 0.009999999776482582, 0, 0.3499999940395355, -0.3700000047683716, 0.5, 0, 0.2199999988079071, 0.09000000357627869, 110000, 1073774600, 3180608, \"long\", \"small\", 24 ] ]', 1000, 0, 0, NULL),
(11, 413, 'Grove', 'Тачка', 2011, 10000, 10, '2016-10-25 05:19:33', 1, '0000-00-00 00:00:00', 0, '\n', NULL, 1000, 0, 0, NULL),
(12, 405, 'Mersedes Benz', 'SLS AMG GT', 2011, 5000000, 111, '2016-10-25 05:59:06', 1, '2016-10-25 06:09:40', 1, '\n', '[ [ 1600, 4000, 2.200000047683716, [ 0, 0, 0 ], 75, 0.6499999761581421, 0.75, 0.5, 5, 220, 16, 12, \"rwd\", \"petrol\", 10, 0.5, false, 27, 0.800000011920929, 0.01999999955296516, 0, 0.300000011920929, -0.2000000029802322, 0.5, 0.300000011920929, 0.2000000029802322, 0.5600000023841858, 35000, 0, 4194304, \"long\", \"small\", 0 ] ]', 1000, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `vehicle_logs`
--

CREATE TABLE `vehicle_logs` (
  `log_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vehID` int(11) DEFAULT NULL,
  `action` text,
  `actor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on vehicles - Monitored by Vehicle ';

--
-- Дамп данных таблицы `vehicle_logs`
--

INSERT INTO `vehicle_logs` (`log_id`, `date`, `vehID`, `action`, `actor`) VALUES
(1, '2016-10-24 14:23:26', 1, 'bought from carshop', 1),
(2, '2016-10-24 14:27:07', 1, 'Started engine', 1),
(3, '2016-10-24 14:27:28', 1, 'fixveh', 1),
(4, '2016-10-24 14:35:24', 2, 'makecivveh Bus (job 3)', 1),
(5, '2016-10-24 14:35:31', 2, 'Started engine', 1),
(6, '2016-10-24 14:36:35', 3, 'makecivveh Bus (job 3)', 1),
(7, '2016-10-24 14:36:59', 4, 'makecivveh Bus (job 3)', 1),
(8, '2016-10-24 14:37:16', 5, 'makecivveh Bus (job 3)', 1),
(9, '2016-10-24 14:39:54', 3, 'Started engine', 1),
(10, '2016-10-24 14:39:56', 3, 'Started engine', 1),
(11, '2016-10-24 14:39:58', 3, 'Started engine', 1),
(12, '2016-10-24 14:41:33', 4, 'Started engine', 1),
(13, '2016-10-24 14:41:35', 4, 'Started engine', 1),
(14, '2016-10-24 14:42:13', 5, 'Started engine', 1),
(15, '2016-10-24 14:42:47', 5, 'gotocar', 1),
(16, '2016-10-24 14:43:07', 5, 'gotocar', 1),
(17, '2016-10-24 15:05:29', 6, 'makecivveh Bus (job 3)', 1),
(18, '2016-10-24 15:05:43', 7, 'makecivveh Bus (job 3)', 1),
(19, '2016-10-24 15:05:48', 6, 'Started engine', 1),
(20, '2016-10-24 15:06:13', 7, 'Started engine', 1),
(21, '2016-10-24 15:07:15', 8, 'makecivveh Taxi (job 2)', 1),
(22, '2016-10-24 15:07:21', 8, 'Started engine', 1),
(23, '2016-10-24 15:08:08', 9, 'makecivveh Taxi (job 2)', 1),
(24, '2016-10-24 15:08:12', 9, 'Started engine', 1),
(25, '2016-10-24 15:08:13', 9, 'Started engine', 1),
(26, '2016-10-24 15:08:35', 10, 'makecivveh Taxi (job 2)', 1),
(27, '2016-10-24 15:08:40', 10, 'Started engine', 1),
(28, '2016-10-24 15:09:00', 11, 'makecivveh Taxi (job 2)', 1),
(29, '2016-10-24 15:09:05', 11, 'Started engine', 1),
(30, '2016-10-24 15:09:34', 12, 'makecivveh Taxi (job 2)', 1),
(31, '2016-10-24 15:09:39', 12, 'Started engine', 1),
(32, '2016-10-24 15:12:02', 13, 'makecivveh Mountain Bike (job -1)', 1),
(33, '2016-10-24 15:12:57', 14, 'makecivveh Mountain Bike (job -1)', 1),
(34, '2016-10-24 15:13:05', 15, 'makecivveh Mountain Bike (job -1)', 1),
(35, '2016-10-24 15:17:26', -1, 'Started engine', 1),
(36, '2016-10-24 15:17:58', -1, 'Started engine', 1),
(37, '2016-10-24 15:18:53', -1, 'Started engine', 1),
(38, '2016-10-24 15:25:20', -1, 'Started engine', 1),
(39, '2016-10-24 15:29:23', 16, 'makeveh Police LS ($10000 - to Faction #1)', 1),
(40, '2016-10-24 15:29:29', 16, 'Started engine', 1),
(41, '2016-10-24 15:30:55', 17, 'makeveh Police LS ($10000 - to Faction #1)', 1),
(42, '2016-10-24 15:31:03', 17, 'Started engine', 1),
(43, '2016-10-24 15:31:27', 17, 'Started engine', 1),
(44, '2016-10-24 15:44:22', 17, 'Started engine', 1),
(45, '2016-10-24 15:44:24', 17, 'Started engine', 1),
(46, '2016-10-24 16:02:00', 10, 'Started engine', 1),
(47, '2016-10-24 16:02:02', 10, 'Started engine', 1),
(48, '2016-10-24 16:02:03', 10, 'Started engine', 1),
(49, '2016-10-24 16:02:05', 10, 'Started engine', 1),
(50, '2016-10-24 16:08:40', 3, 'Started engine', 1),
(51, '2016-10-24 16:39:02', -1, 'Started engine', 1),
(52, '2016-10-24 16:42:04', -2, 'Started engine', 1),
(53, '2016-10-24 16:45:06', -3, 'Started engine', 1),
(54, '2016-10-24 16:49:07', -5, 'Started engine', 1),
(55, '2016-10-24 16:49:14', -4, 'Started engine', 3),
(56, '2016-10-24 16:49:23', -5, 'fixveh', 1),
(57, '2016-10-24 16:50:16', -8, 'Started engine', 3),
(58, '2016-10-24 16:50:25', -8, 'Started engine', 3),
(59, '2016-10-24 16:50:30', -8, 'Started engine', 3),
(60, '2016-10-24 16:50:49', -8, 'Started engine', 3),
(61, '2016-10-24 16:50:50', -8, 'Started engine', 3),
(62, '2016-10-24 16:51:29', -9, 'Started engine', 1),
(63, '2016-10-24 17:05:27', 16, 'Started engine', 1),
(64, '2016-10-24 17:07:16', 16, 'park', 1),
(65, '2016-10-24 17:07:57', 16, 'Started engine', 1),
(66, '2016-10-24 17:08:03', 16, 'park', 1),
(67, '2016-10-24 17:11:21', 16, 'Started engine', 3),
(68, '2016-10-24 17:11:24', 16, 'Started engine', 3),
(69, '2016-10-24 17:11:34', 16, 'Started engine', 3),
(70, '2016-10-24 17:11:45', 16, 'PARK', 3),
(71, '2016-10-24 17:11:57', 16, 'park', 3),
(72, '2016-10-24 17:15:20', 18, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(73, '2016-10-24 17:15:28', 18, 'Started engine', 3),
(74, '2016-10-24 17:15:43', 18, 'park', 3),
(75, '2016-10-24 17:16:44', 18, 'Started engine', 1),
(76, '2016-10-24 17:17:11', 19, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(77, '2016-10-24 17:17:27', 19, 'Started engine', 3),
(78, '2016-10-24 17:17:43', 19, 'park', 3),
(79, '2016-10-24 17:18:00', -10, 'Started engine', 3),
(80, '2016-10-24 17:18:56', -11, 'Started engine', 1),
(81, '2016-10-24 17:19:33', 20, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(82, '2016-10-24 17:19:39', 20, 'Started engine', 3),
(83, '2016-10-24 17:19:55', 20, 'park', 3),
(84, '2016-10-24 17:20:19', 21, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(85, '2016-10-24 17:20:24', 21, 'Started engine', 3),
(86, '2016-10-24 17:20:28', -12, 'Started engine', 1),
(87, '2016-10-24 17:21:07', 21, 'park', 3),
(88, '2016-10-24 17:21:25', 22, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(89, '2016-10-24 17:21:31', 22, 'Started engine', 3),
(90, '2016-10-24 17:21:45', 22, 'park', 3),
(91, '2016-10-24 17:22:13', 23, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(92, '2016-10-24 17:22:19', 23, 'Started engine', 3),
(93, '2016-10-24 17:22:34', 23, 'park', 3),
(94, '2016-10-24 17:24:42', 20, 'Started engine', 3),
(95, '2016-10-24 17:24:49', 20, 'park', 3),
(96, '2016-10-24 17:29:46', 24, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(97, '2016-10-24 17:29:52', 24, 'Started engine', 3),
(98, '2016-10-24 17:30:10', 24, 'park', 3),
(99, '2016-10-24 17:30:38', 25, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(100, '2016-10-24 17:30:43', 25, 'Started engine', 3),
(101, '2016-10-24 17:30:55', 25, 'park', 3),
(102, '2016-10-24 17:31:13', 26, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(103, '2016-10-24 17:31:19', 26, 'Started engine', 3),
(104, '2016-10-24 17:31:31', -13, 'Started engine', 1),
(105, '2016-10-24 17:31:33', 26, 'park', 3),
(106, '2016-10-24 17:31:55', 27, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(107, '2016-10-24 17:32:00', 27, 'Started engine', 3),
(108, '2016-10-24 17:32:15', 27, 'park', 3),
(109, '2016-10-24 17:32:34', 28, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(110, '2016-10-24 17:32:40', 28, 'Started engine', 3),
(111, '2016-10-24 17:32:52', 28, 'park', 3),
(112, '2016-10-24 17:33:11', 29, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(113, '2016-10-24 17:33:23', 29, 'Started engine', 3),
(114, '2016-10-24 17:33:37', 29, 'park', 3),
(115, '2016-10-24 17:33:49', 30, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(116, '2016-10-24 17:33:55', 30, 'Started engine', 3),
(117, '2016-10-24 17:34:09', 30, 'park', 3),
(118, '2016-10-24 17:34:24', 31, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(119, '2016-10-24 17:34:30', 31, 'Started engine', 3),
(120, '2016-10-24 17:34:40', 31, 'park', 3),
(121, '2016-10-24 17:34:59', 32, 'makeveh Police LS ($10000 - to Faction #1)', 3),
(122, '2016-10-24 17:35:48', 32, 'Started engine', 3),
(123, '2016-10-24 17:35:58', 32, 'park', 3),
(124, '2016-10-24 17:36:38', -15, 'Started engine', 1),
(125, '2016-10-24 17:37:32', 18, 'Started engine', 3),
(126, '2016-10-24 17:37:36', 18, 'Started engine', 3),
(127, '2016-10-25 02:47:32', -17, 'Started engine', 1),
(128, '2016-10-25 03:11:42', -18, 'Started engine', 1),
(129, '2016-10-25 04:54:48', -1, 'Started engine', 1),
(130, '2016-10-25 05:25:35', 26, 'Started engine', 1),
(131, '2016-10-25 05:37:39', 26, 'fixveh', 1),
(132, '2016-10-25 05:39:03', 22, 'Started engine', 1),
(133, '2016-10-25 05:41:40', 22, 'fixveh', 1),
(134, '2016-10-25 05:42:06', 22, 'Started engine', 1),
(135, '2016-10-25 05:42:14', 22, 'Started engine', 1),
(136, '2016-10-25 05:46:05', -6, 'Started engine', 1),
(137, '2016-10-25 05:46:20', -6, 'Started engine', 1),
(138, '2016-10-25 05:46:21', -6, 'Started engine', 1),
(139, '2016-10-25 05:49:36', -7, 'Started engine', 1),
(140, '2016-10-25 06:02:11', -8, 'Started engine', 1),
(141, '2016-10-25 06:03:21', -11, 'Started engine', 1),
(142, '2016-10-25 06:10:07', -13, 'Started engine', 1),
(143, '2016-10-25 06:14:24', 22, 'Started engine', 1),
(144, '2016-10-25 06:17:21', -15, 'Started engine', 1),
(145, '2016-10-25 06:21:53', -17, 'Started engine', 1),
(146, '2016-10-25 06:22:02', -17, 'Started engine', 1),
(147, '2016-10-25 06:24:55', -18, 'Started engine', 1),
(148, '2016-10-25 06:27:33', -18, 'flip', 1),
(149, '2016-10-25 06:27:37', -18, 'flip', 1),
(150, '2016-10-25 06:27:43', -18, 'fixveh', 1),
(151, '2016-10-25 06:29:12', -19, 'fixveh', 1),
(152, '2016-10-25 06:29:13', -19, 'Started engine', 1),
(153, '2016-10-25 06:30:10', -19, 'fixveh', 1),
(154, '2016-10-25 06:30:11', -19, 'Started engine', 1),
(155, '2016-10-25 06:31:23', -19, 'fixveh', 1),
(156, '2016-10-25 06:31:24', -19, 'Started engine', 1),
(157, '2016-10-25 06:31:36', -19, 'fixveh', 1),
(158, '2016-10-25 06:31:41', -19, 'Started engine', 1),
(159, '2016-10-25 06:33:58', -20, 'Started engine', 1),
(160, '2016-10-25 06:36:56', -22, 'Started engine', 1),
(161, '2016-10-25 06:38:19', -23, 'Started engine', 1),
(162, '2016-10-25 06:38:45', -23, 'flip', 1),
(163, '2016-10-25 06:40:03', -29, 'Started engine', 1),
(164, '2016-10-25 06:41:10', -27, 'Started engine', 1),
(165, '2016-10-25 07:25:43', -30, 'Started engine', 1),
(166, '2016-10-25 07:35:48', -32, 'Started engine', 1),
(167, '2016-10-25 07:35:50', -32, 'Started engine', 1),
(168, '2016-10-25 07:35:53', -32, 'Started engine', 1),
(169, '2016-10-25 07:35:54', -32, 'Started engine', 1),
(170, '2016-10-25 07:36:09', -31, 'Started engine', 1),
(171, '2016-10-25 07:40:52', 16, 'Started engine', 1),
(172, '2016-10-25 07:40:55', 16, 'Started engine', 1),
(173, '2016-10-25 07:41:05', 16, 'Started engine', 1),
(174, '2016-10-25 07:56:15', -33, 'fixveh', 1),
(175, '2016-10-25 07:56:18', -33, 'Started engine', 1),
(176, '2016-10-25 07:58:06', 16, 'fixveh', 1),
(177, '2016-10-25 08:01:54', -35, 'Started engine', 1),
(178, '2016-10-25 08:01:55', -35, 'Started engine', 1),
(179, '2016-10-25 08:01:57', -35, 'Started engine', 1),
(180, '2016-10-25 08:01:58', -35, 'Started engine', 1),
(181, '2016-10-25 08:01:58', -35, 'Started engine', 1),
(182, '2016-10-25 08:02:06', -35, 'Started engine', 1),
(183, '2016-10-25 08:05:32', -36, 'Started engine', 1),
(184, '2016-10-25 08:06:07', -37, 'Started engine', 1),
(185, '2016-10-25 09:07:05', -1, 'Started engine', 1),
(186, '2016-10-25 09:07:41', -1, 'Started engine', 1),
(187, '2016-10-25 10:07:53', -1, 'Started engine', 1),
(188, '2016-10-25 11:24:17', -2, 'Started engine', 1),
(189, '2016-10-25 11:29:52', 22, 'fixveh', 1),
(190, '2016-10-25 11:31:31', -5, 'Started engine', 1),
(191, '2016-10-25 11:36:34', 22, 'Started engine', 1),
(192, '2016-10-25 11:36:56', 22, 'fixveh', 1),
(193, '2016-10-25 11:42:18', -7, 'Started engine', 1),
(194, '2016-10-25 11:43:47', 22, 'Started engine', 1),
(195, '2016-10-25 11:45:37', -3, 'Started engine', 1),
(196, '2016-10-25 11:46:49', 17, 'Started engine', 1),
(197, '2016-10-25 11:48:27', -8, 'Started engine', 1),
(198, '2016-10-25 11:49:25', -9, 'Started engine', 1),
(199, '2016-10-25 11:52:19', -11, 'Started engine', 1),
(200, '2016-10-25 11:54:35', -12, 'fixveh', 1),
(201, '2016-10-25 11:54:36', -12, 'Started engine', 1),
(202, '2016-10-25 11:55:58', -13, 'Started engine', 1),
(203, '2016-10-25 11:56:02', -13, 'Started engine', 1),
(204, '2016-10-25 11:56:03', -13, 'Started engine', 1),
(205, '2016-10-25 11:56:13', -13, 'Started engine', 1),
(206, '2016-10-25 11:56:16', -13, 'fixveh', 1),
(207, '2016-11-03 17:16:26', -1, 'Started engine', 1),
(208, '2016-11-03 17:23:46', -1, 'fixveh', 1),
(209, '2016-11-03 17:31:56', -3, 'Started engine', 1),
(210, '2016-11-03 18:29:53', 22, 'fixveh', 1),
(211, '2016-11-03 19:28:18', -1, 'Started engine', 1),
(212, '2016-11-03 19:30:14', 22, 'fixveh', 1),
(213, '2016-11-03 19:30:18', 22, 'Started engine', 1),
(214, '2016-11-03 19:58:33', 25, 'Started engine', 1),
(215, '2016-11-04 19:05:03', 22, 'fixveh', 1),
(216, '2016-11-04 19:05:08', 22, 'Started engine', 1),
(217, '2016-11-04 19:06:10', 22, 'fixveh', 1),
(218, '2016-11-05 12:39:12', -1, 'Started engine', 1),
(219, '2016-11-05 12:54:41', -2, 'Started engine', 1),
(220, '2016-11-05 13:11:44', -3, 'Started engine', 1),
(221, '2016-11-05 13:12:06', -4, 'Started engine', 1),
(222, '2016-11-05 13:23:11', -4, 'fixveh', 1),
(223, '2016-11-05 13:25:03', 25, 'Started engine', 1),
(224, '2016-11-05 13:49:38', 18, 'Started engine', 1),
(225, '2016-11-05 14:38:25', 4, 'Started engine', 1),
(226, '2016-11-05 14:48:25', 7, 'Started engine', 1),
(227, '2016-11-05 15:12:54', 26, 'Started engine', 1),
(228, '2016-11-05 15:14:56', -1, 'Started engine', 1),
(229, '2016-11-05 15:15:58', -2, 'Started engine', 1),
(230, '2016-11-05 15:19:05', 22, 'Started engine', 1),
(231, '2016-11-05 15:21:24', 22, 'fixveh', 1),
(232, '2016-11-05 15:29:35', -3, 'Started engine', 1),
(233, '2016-11-05 15:30:04', -3, 'fixveh', 1),
(234, '2016-11-05 15:30:05', -3, 'Started engine', 1),
(235, '2016-11-05 15:33:58', 1, 'Started engine', 1),
(236, '2016-11-05 15:34:44', 1, 'Started engine', 1),
(237, '2016-11-05 15:34:54', 1, 'Started engine', 1),
(238, '2017-03-28 15:00:20', 1, 'Deleted by Inactivity Scanner. Reason: Inactive Vehicle | Last used 142 days ago while parking outdoor', NULL),
(239, '2017-03-28 15:02:26', -1, 'Started engine', 1),
(240, '2017-03-28 15:03:34', -1, 'Started engine', 1),
(241, '2017-03-28 15:04:26', -2, 'Started engine', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `vehicle_notes`
--

CREATE TABLE `vehicle_notes` (
  `id` int(11) NOT NULL,
  `vehid` int(11) NOT NULL,
  `creator` int(11) NOT NULL DEFAULT '0',
  `note` text NOT NULL,
  `date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wiretransfers`
--

CREATE TABLE `wiretransfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` int(11) DEFAULT '0',
  `to` int(11) DEFAULT '0',
  `amount` int(11) NOT NULL,
  `reason` text,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL,
  `from_card` varchar(45) DEFAULT NULL,
  `to_card` varchar(45) DEFAULT NULL,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wiretransfers`
--

INSERT INTO `wiretransfers` (`id`, `from`, `to`, `amount`, `reason`, `time`, `type`, `from_card`, `to_card`, `details`) VALUES
(76, -57, 1, 511, 'BANKINTEREST', '2017-03-28 15:00:21', 6, NULL, NULL, NULL),
(77, -1, 1, 500, 'WAGE', '2017-03-28 15:00:21', 6, NULL, NULL, NULL),
(78, 1, -3, 50, 'INCOMETAX', '2017-03-28 15:00:21', 6, NULL, NULL, NULL),
(79, 1, -3, 97, 'PROPERTYTAX', '2017-03-28 15:00:21', 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `worlditems`
--

CREATE TABLE `worlditems` (
  `id` int(11) NOT NULL,
  `itemid` int(11) DEFAULT '0',
  `itemvalue` text,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `creationdate` datetime DEFAULT NULL,
  `rx` float DEFAULT '0',
  `ry` float DEFAULT '0',
  `rz` float DEFAULT '0',
  `creator` int(10) UNSIGNED DEFAULT '0',
  `protected` int(100) NOT NULL DEFAULT '0',
  `perm_use` int(2) NOT NULL DEFAULT '1',
  `perm_move` int(2) NOT NULL DEFAULT '1',
  `perm_pickup` int(2) NOT NULL DEFAULT '1',
  `perm_use_data` text,
  `perm_move_data` text,
  `perm_pickup_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `worlditems_data`
--

CREATE TABLE `worlditems_data` (
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `key` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adminhistory`
--
ALTER TABLE `adminhistory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `apb`
--
ALTER TABLE `apb`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `atm_cards`
--
ALTER TABLE `atm_cards`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `card_id_UNIQUE` (`card_id`);

--
-- Индексы таблицы `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `business_accounts`
--
ALTER TABLE `business_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `business_members`
--
ALTER TABLE `business_members`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `business_rentals`
--
ALTER TABLE `business_rentals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `commands`
--
ALTER TABLE `commands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `commands_library`
--
ALTER TABLE `commands_library`
  ADD PRIMARY KEY (`cmID`);

--
-- Индексы таблицы `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cpa_postbacks`
--
ALTER TABLE `cpa_postbacks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `donates`
--
ALTER TABLE `donates`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `txn_id` (`txn_id`);

--
-- Индексы таблицы `donators`
--
ALTER TABLE `donators`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `don_purchases`
--
ALTER TABLE `don_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `don_transactions`
--
ALTER TABLE `don_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `don_transaction_failed`
--
ALTER TABLE `don_transaction_failed`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `duty_allowed`
--
ALTER TABLE `duty_allowed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `duty_custom`
--
ALTER TABLE `duty_custom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `duty_locations`
--
ALTER TABLE `duty_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `elections`
--
ALTER TABLE `elections`
  ADD PRIMARY KEY (`idelections`);

--
-- Индексы таблицы `elevators`
--
ALTER TABLE `elevators`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `emailaccounts`
--
ALTER TABLE `emailaccounts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `force_apps`
--
ALTER TABLE `force_apps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`,`friend`);

--
-- Индексы таблицы `fuelpeds`
--
ALTER TABLE `fuelpeds`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fuelstations`
--
ALTER TABLE `fuelstations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `insurance_data`
--
ALTER TABLE `insurance_data`
  ADD PRIMARY KEY (`policyid`);

--
-- Индексы таблицы `insurance_factions`
--
ALTER TABLE `insurance_factions`
  ADD PRIMARY KEY (`factionID`);

--
-- Индексы таблицы `interiors`
--
ALTER TABLE `interiors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `interior_business`
--
ALTER TABLE `interior_business`
  ADD PRIMARY KEY (`intID`),
  ADD UNIQUE KEY `intID_UNIQUE` (`intID`);

--
-- Индексы таблицы `interior_notes`
--
ALTER TABLE `interior_notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `interior_textures`
--
ALTER TABLE `interior_textures`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`index`);

--
-- Индексы таблицы `jailed`
--
ALTER TABLE `jailed`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs_trucker_orders`
--
ALTER TABLE `jobs_trucker_orders`
  ADD PRIMARY KEY (`orderID`);

--
-- Индексы таблицы `leo_impound_lot`
--
ALTER TABLE `leo_impound_lot`
  ADD PRIMARY KEY (`lane`);

--
-- Индексы таблицы `lifts`
--
ALTER TABLE `lifts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lift_floors`
--
ALTER TABLE `lift_floors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mdc_apb`
--
ALTER TABLE `mdc_apb`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mdc_calls`
--
ALTER TABLE `mdc_calls`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mdc_crimes`
--
ALTER TABLE `mdc_crimes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mdc_criminals`
--
ALTER TABLE `mdc_criminals`
  ADD UNIQUE KEY `name` (`character`),
  ADD KEY `phone` (`phone`);

--
-- Индексы таблицы `mdc_faa_events`
--
ALTER TABLE `mdc_faa_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mdc_faa_licenses`
--
ALTER TABLE `mdc_faa_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mdc_impounds`
--
ALTER TABLE `mdc_impounds`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mdc_users`
--
ALTER TABLE `mdc_users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `motds`
--
ALTER TABLE `motds`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `motd_read`
--
ALTER TABLE `motd_read`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `objects`
--
ALTER TABLE `objects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `paynspray`
--
ALTER TABLE `paynspray`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pd_tickets`
--
ALTER TABLE `pd_tickets`
  ADD PRIMARY KEY (`id`,`time`);

--
-- Индексы таблицы `peds`
--
ALTER TABLE `peds`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ped_inventory`
--
ALTER TABLE `ped_inventory`
  ADD PRIMARY KEY (`index`);

--
-- Индексы таблицы `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`phonenumber`),
  ADD UNIQUE KEY `phonenumber_UNIQUE` (`phonenumber`);

--
-- Индексы таблицы `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `phone_history`
--
ALTER TABLE `phone_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_UNIQUE` (`id`);

--
-- Индексы таблицы `phone_sms`
--
ALTER TABLE `phone_sms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID_UNIQUE` (`id`);

--
-- Индексы таблицы `pilot_notams`
--
ALTER TABLE `pilot_notams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publicphones`
--
ALTER TABLE `publicphones`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `radio_stations`
--
ALTER TABLE `radio_stations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `ramps`
--
ALTER TABLE `ramps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `restricted_freqs`
--
ALTER TABLE `restricted_freqs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sapt_destinations`
--
ALTER TABLE `sapt_destinations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sapt_locations`
--
ALTER TABLE `sapt_locations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sapt_routes`
--
ALTER TABLE `sapt_routes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `serial_whitelist`
--
ALTER TABLE `serial_whitelist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sfia_pilots`
--
ALTER TABLE `sfia_pilots`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_contacts_info`
--
ALTER TABLE `shop_contacts_info`
  ADD PRIMARY KEY (`npcID`);

--
-- Индексы таблицы `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`pID`),
  ADD UNIQUE KEY `pID_UNIQUE` (`pID`);

--
-- Индексы таблицы `slotmachines`
--
ALTER TABLE `slotmachines`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `speedcams`
--
ALTER TABLE `speedcams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `speedingviolations`
--
ALTER TABLE `speedingviolations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`district`);

--
-- Индексы таблицы `suspectcrime`
--
ALTER TABLE `suspectcrime`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tc_comments`
--
ALTER TABLE `tc_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tc_tickets`
--
ALTER TABLE `tc_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tempobjects`
--
ALTER TABLE `tempobjects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `textures_animated`
--
ALTER TABLE `textures_animated`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ticketreplies`
--
ALTER TABLE `ticketreplies`
  ADD PRIMARY KEY (`rid`);

--
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`tid`);

--
-- Индексы таблицы `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_UNIQUE` (`token`);

--
-- Индексы таблицы `towstats`
--
ALTER TABLE `towstats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_idx` (`character`),
  ADD KEY `vehicle_idx` (`vehicle`);

--
-- Индексы таблицы `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `vehicles_custom`
--
ALTER TABLE `vehicles_custom`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `vehicles_shop`
--
ALTER TABLE `vehicles_shop`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Индексы таблицы `vehicle_logs`
--
ALTER TABLE `vehicle_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Индексы таблицы `vehicle_notes`
--
ALTER TABLE `vehicle_notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wiretransfers`
--
ALTER TABLE `wiretransfers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `worlditems`
--
ALTER TABLE `worlditems`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `worlditems_data`
--
ALTER TABLE `worlditems_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `adminhistory`
--
ALTER TABLE `adminhistory`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `apb`
--
ALTER TABLE `apb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `atms`
--
ALTER TABLE `atms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `atm_cards`
--
ALTER TABLE `atm_cards`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `business_accounts`
--
ALTER TABLE `business_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `business_members`
--
ALTER TABLE `business_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `business_rentals`
--
ALTER TABLE `business_rentals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `clothing`
--
ALTER TABLE `clothing`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `commands`
--
ALTER TABLE `commands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;
--
-- AUTO_INCREMENT для таблицы `commands_library`
--
ALTER TABLE `commands_library`
  MODIFY `cmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=630;
--
-- AUTO_INCREMENT для таблицы `computers`
--
ALTER TABLE `computers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `cpa_postbacks`
--
ALTER TABLE `cpa_postbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `donates`
--
ALTER TABLE `donates`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `donators`
--
ALTER TABLE `donators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `don_purchases`
--
ALTER TABLE `don_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `don_transactions`
--
ALTER TABLE `don_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `don_transaction_failed`
--
ALTER TABLE `don_transaction_failed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `duty_allowed`
--
ALTER TABLE `duty_allowed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `duty_custom`
--
ALTER TABLE `duty_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT для таблицы `duty_locations`
--
ALTER TABLE `duty_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT для таблицы `elevators`
--
ALTER TABLE `elevators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `emailaccounts`
--
ALTER TABLE `emailaccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `factions`
--
ALTER TABLE `factions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT для таблицы `force_apps`
--
ALTER TABLE `force_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `fuelpeds`
--
ALTER TABLE `fuelpeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `fuelstations`
--
ALTER TABLE `fuelstations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gates`
--
ALTER TABLE `gates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;
--
-- AUTO_INCREMENT для таблицы `insurance_data`
--
ALTER TABLE `insurance_data`
  MODIFY `policyid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `interiors`
--
ALTER TABLE `interiors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2696;
--
-- AUTO_INCREMENT для таблицы `interior_notes`
--
ALTER TABLE `interior_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `interior_textures`
--
ALTER TABLE `interior_textures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410;
--
-- AUTO_INCREMENT для таблицы `jailed`
--
ALTER TABLE `jailed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `jobs_trucker_orders`
--
ALTER TABLE `jobs_trucker_orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `leo_impound_lot`
--
ALTER TABLE `leo_impound_lot`
  MODIFY `lane` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `lifts`
--
ALTER TABLE `lifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `lift_floors`
--
ALTER TABLE `lift_floors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `mdc_apb`
--
ALTER TABLE `mdc_apb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `mdc_calls`
--
ALTER TABLE `mdc_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `mdc_crimes`
--
ALTER TABLE `mdc_crimes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `mdc_faa_events`
--
ALTER TABLE `mdc_faa_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `mdc_faa_licenses`
--
ALTER TABLE `mdc_faa_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `mdc_impounds`
--
ALTER TABLE `mdc_impounds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `mdc_users`
--
ALTER TABLE `mdc_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `motds`
--
ALTER TABLE `motds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `motd_read`
--
ALTER TABLE `motd_read`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;
--
-- AUTO_INCREMENT для таблицы `objects`
--
ALTER TABLE `objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `paynspray`
--
ALTER TABLE `paynspray`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `pd_tickets`
--
ALTER TABLE `pd_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `peds`
--
ALTER TABLE `peds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT для таблицы `ped_inventory`
--
ALTER TABLE `ped_inventory`
  MODIFY `index` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `phone_history`
--
ALTER TABLE `phone_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT для таблицы `phone_sms`
--
ALTER TABLE `phone_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `publicphones`
--
ALTER TABLE `publicphones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `radio_stations`
--
ALTER TABLE `radio_stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `ramps`
--
ALTER TABLE `ramps`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `restricted_freqs`
--
ALTER TABLE `restricted_freqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `sapt_destinations`
--
ALTER TABLE `sapt_destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `sapt_locations`
--
ALTER TABLE `sapt_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `sapt_routes`
--
ALTER TABLE `sapt_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `serial_whitelist`
--
ALTER TABLE `serial_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `sfia_pilots`
--
ALTER TABLE `sfia_pilots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT для таблицы `shop_products`
--
ALTER TABLE `shop_products`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `slotmachines`
--
ALTER TABLE `slotmachines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `speedcams`
--
ALTER TABLE `speedcams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `speedingviolations`
--
ALTER TABLE `speedingviolations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
--
-- AUTO_INCREMENT для таблицы `suspectcrime`
--
ALTER TABLE `suspectcrime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tc_comments`
--
ALTER TABLE `tc_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tc_tickets`
--
ALTER TABLE `tc_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tempobjects`
--
ALTER TABLE `tempobjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `textures_animated`
--
ALTER TABLE `textures_animated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `ticketreplies`
--
ALTER TABLE `ticketreplies`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `towstats`
--
ALTER TABLE `towstats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `vehicles_custom`
--
ALTER TABLE `vehicles_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `vehicles_shop`
--
ALTER TABLE `vehicles_shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `vehicle_logs`
--
ALTER TABLE `vehicle_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
--
-- AUTO_INCREMENT для таблицы `vehicle_notes`
--
ALTER TABLE `vehicle_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wiretransfers`
--
ALTER TABLE `wiretransfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT для таблицы `worlditems`
--
ALTER TABLE `worlditems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `worlditems_data`
--
ALTER TABLE `worlditems_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `towstats`
--
ALTER TABLE `towstats`
  ADD CONSTRAINT `character` FOREIGN KEY (`character`) REFERENCES `characters` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `vehicle` FOREIGN KEY (`vehicle`) REFERENCES `vehicles` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
