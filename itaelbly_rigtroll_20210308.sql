-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2021 at 04:30 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itaelbly_rigtroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `ALBUM_INFO`
--

CREATE TABLE `ALBUM_INFO` (
  `ALBUM_ID` varchar(10) NOT NULL,
  `ALBUM_NAME` text NOT NULL,
  `ALBUM_AUTHOR_ID` varchar(200) NOT NULL,
  `ALBUM_PRIVACY` varchar(20) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ALBUM_INFO`
--

INSERT INTO `ALBUM_INFO` (`ALBUM_ID`, `ALBUM_NAME`, `ALBUM_AUTHOR_ID`, `ALBUM_PRIVACY`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('AL123tja', 'Cover', 'PF4byhr3', 'PUBLIC', '2020-07-03', '17:40:14'),
('AL1262dw', 'Profile', 'PF1t4y1m', 'PUBLIC', '2020-08-16', '20:42:33'),
('AL13iwuu', 'General', 'PF5z777s', 'PUBLIC', '2020-10-01', '02:35:13'),
('AL16jqfp', 'Cover', 'PFgwrxs3', 'PUBLIC', '2020-09-17', '04:45:39'),
('AL17ultf', 'General', 'PF1e2i2d', 'PUBLIC', '2020-11-21', '04:39:52'),
('AL17wkhg', 'Cover', 'PF1ecto0', 'PUBLIC', '2020-09-01', '22:02:09'),
('AL17xy6r', 'General', 'PF250ajp', 'PUBLIC', '2020-09-14', '14:31:48'),
('AL19mod1', 'Profile', 'PF17k48z', 'PUBLIC', '2020-09-16', '18:50:52'),
('AL1aenfh', 'General', 'PF2zpz1u', 'PUBLIC', '2020-10-29', '10:06:59'),
('AL1bdemo', 'Profile', 'PF1z6qyj', 'PUBLIC', '2020-10-09', '20:31:27'),
('AL1brumt', 'General', 'PF9vpsfp', 'PUBLIC', '2020-09-06', '16:35:40'),
('AL1cgps6', 'General', 'PF4byhr3', 'PUBLIC', '2020-07-03', '17:40:14'),
('AL1cgsd5', 'Cover', 'PF6o1jbd', 'PUBLIC', '2020-10-08', '16:15:24'),
('AL1cjboi', 'Profile', 'PF25bucg', 'PUBLIC', '2020-09-16', '10:59:26'),
('AL1dr2q9', 'Cover', 'PF35iwkp', 'PUBLIC', '2020-09-01', '17:23:33'),
('AL1dyy01', 'Cover', 'PF9vpsfp', 'PUBLIC', '2020-09-06', '16:35:40'),
('AL1rizj7', 'Profile', 'PF3madye', 'PUBLIC', '2020-10-08', '03:48:29'),
('AL1roath', 'Profile', 'PFxk5h15', 'PUBLIC', '2020-08-29', '21:29:33'),
('AL1rrcdr', 'Cover', 'PF3madye', 'PUBLIC', '2020-10-08', '03:48:29'),
('AL1rtajb', 'General', 'PF35iwkp', 'PUBLIC', '2020-09-01', '17:23:33'),
('AL1rw1sn', 'Profile', 'PFy1kxsv', 'PUBLIC', '2020-06-02', '15:05:07'),
('AL1tf4wq', 'Cover', 'PFy1kxsv', 'PUBLIC', '2020-06-02', '15:05:07'),
('AL1ts1kr', 'Profile', 'PF147tdr', 'PUBLIC', '2020-12-18', '17:18:48'),
('AL1u8e2q', 'Cover', 'PF1z6qyj', 'PUBLIC', '2020-10-09', '20:31:27'),
('AL1v4hx3', 'General', 'PF6o1jbd', 'PUBLIC', '2020-10-08', '16:15:24'),
('AL1vpagc', 'General', 'PFyoxze5', 'PUBLIC', '2020-09-21', '14:35:22'),
('AL1vtpi2', 'General', 'PF2nbzdh', 'PUBLIC', '2020-09-23', '19:26:08'),
('AL1x3aca', 'General', 'PF3inm8f', 'PUBLIC', '2020-10-05', '14:37:06'),
('AL1x4142', 'Cover', 'PF25bucg', 'PUBLIC', '2020-09-16', '10:59:26'),
('AL1y8mdp', 'Profile', 'PF2xdtbm', 'PUBLIC', '2020-09-01', '23:50:52'),
('AL1zu3xb', 'Cover', 'PF2zbh02', 'PUBLIC', '2020-09-25', '19:10:30'),
('AL21e191', 'General', 'PFb0wgjf', 'PUBLIC', '2020-12-07', '06:33:00'),
('AL21o2xcv', 'General', 'PF18fbnz', 'PUBLIC', '2020-08-04', '20:45:33'),
('AL21o2xx', 'General', 'PFwqgx6j', 'PUBLIC', '2020-08-04', '20:45:33'),
('AL226pbb', 'Cover', 'PF250ajp', 'PUBLIC', '2020-09-14', '14:31:48'),
('AL23ww2e', 'Profile', 'PF1ecto0', 'PUBLIC', '2020-09-01', '22:02:09'),
('AL2453ua', 'Cover', 'PF8k4n0h', 'PUBLIC', '2020-10-29', '16:57:37'),
('AL2648qn', 'Cover', 'PFxk5h15', 'PUBLIC', '2020-08-29', '21:29:33'),
('AL27l55f', 'Cover', 'PFvulfax', 'PUBLIC', '2020-09-04', '08:51:29'),
('AL29wew5', 'General', 'PF8e6jj4', 'PUBLIC', '2020-11-03', '23:06:21'),
('AL2mwg3s', 'Profile', 'PF310wd9', 'PUBLIC', '2020-10-04', '08:44:32'),
('AL2nc3q3', 'General', 'PF2zbh02', 'PUBLIC', '2020-09-25', '19:10:30'),
('AL2oph38', 'Profile', 'PF1xq36k', 'PUBLIC', '2020-09-15', '23:32:08'),
('AL2pcq8h', 'Cover', 'PF2nbzdh', 'PUBLIC', '2020-09-23', '19:26:08'),
('AL2pgvlp', 'Cover', 'PF310wd9', 'PUBLIC', '2020-10-04', '08:44:32'),
('AL2plnq0', 'General', 'PF8k4n0h', 'PUBLIC', '2020-10-29', '16:57:37'),
('AL2qxdm1', 'Cover', 'PFyoxze5', 'PUBLIC', '2020-09-21', '14:35:22'),
('AL2r2nls', 'Cover', 'PF1e2i2d', 'PUBLIC', '2020-11-21', '04:39:52'),
('AL2rjr02', 'General', 'PF1ecto0', 'PUBLIC', '2020-09-01', '22:02:09'),
('AL2snu0e', 'Profile', 'PFwqgx6j', 'PUBLIC', '2020-08-04', '20:45:33'),
('AL2ts9jz', 'Profile', 'PFb0wgjf', 'PUBLIC', '2020-12-07', '06:33:00'),
('AL2x6ube', 'General', 'PF2xdtbm', 'PUBLIC', '2020-09-01', '23:50:52'),
('AL2x6wb1', 'Cover', 'PFb0wgjf', 'PUBLIC', '2020-12-07', '06:33:00'),
('AL2xluqu', 'Profile', 'PF3inm8f', 'PUBLIC', '2020-10-05', '14:37:06'),
('AL2yv6xc', 'Cover', 'PF1t4y1m', 'PUBLIC', '2020-08-16', '20:42:33'),
('AL2zacfz', 'Profile', 'PF2nbzdh', 'PUBLIC', '2020-09-23', '19:26:08'),
('AL2zcxlf', 'Profile', 'PFyoxze5', 'PUBLIC', '2020-09-21', '14:35:22'),
('AL2zl7e0', 'Cover', 'PF2zpz1u', 'PUBLIC', '2020-10-29', '10:06:59'),
('AL2zo1hn', 'General', 'PF147tdr', 'PUBLIC', '2020-12-18', '17:18:48'),
('AL316u80', 'Profile', 'PF6o1jbd', 'PUBLIC', '2020-10-08', '16:15:24'),
('AL31msxp', 'Profile', 'PF8k4n0h', 'PUBLIC', '2020-10-29', '16:57:37'),
('AL32vg84', 'General', 'PF1xq36k', 'PUBLIC', '2020-09-15', '23:32:08'),
('AL34n659', 'Profile', 'PF2zbh02', 'PUBLIC', '2020-09-25', '19:10:30'),
('AL354pau', 'Cover', 'PF1xq36k', 'PUBLIC', '2020-09-15', '23:32:08'),
('AL357p40', 'Cover', 'PF2xdtbm', 'PUBLIC', '2020-09-01', '23:50:52'),
('AL35gu1d', 'Profile', 'PF8e6jj4', 'PUBLIC', '2020-11-03', '23:06:21'),
('AL3ig6vi', 'General', 'PF310wd9', 'PUBLIC', '2020-10-04', '08:44:32'),
('AL40c972', 'General', 'PF1t4y1m', 'PUBLIC', '2020-08-16', '20:42:33'),
('AL4mn216', 'Profile', 'PF5z777s', 'PUBLIC', '2020-10-01', '02:35:13'),
('AL6sgcn5', 'Cover', 'PF17k48z', 'PUBLIC', '2020-09-16', '18:50:52'),
('AL90n20i', 'General', 'PF27spt1', 'PUBLIC', '2020-09-15', '12:09:46'),
('ALa0hv19', 'Profile', 'PFvulfax', 'PUBLIC', '2020-09-04', '08:51:29'),
('ALa5kgdj', 'Profile', 'PFgwrxs3', 'PUBLIC', '2020-09-17', '04:45:39'),
('ALc5aftp', 'General', 'PFxk5h15', 'PUBLIC', '2020-08-29', '21:29:33'),
('ALc85y6b', 'General', 'PF3madye', 'PUBLIC', '2020-10-08', '03:48:29'),
('ALcc8b1a', 'Profile', 'PF35iwkp', 'PUBLIC', '2020-09-01', '17:23:33'),
('ALcdf2st', 'General', 'PFy1kxsv', 'PUBLIC', '2020-06-02', '15:05:07'),
('ALebd1n2', 'Profile', 'PF4byhr3', 'PUBLIC', '2020-07-03', '17:40:14'),
('ALelbh4s', 'General', 'PF25bucg', 'PUBLIC', '2020-09-16', '10:59:26'),
('ALg7j9ky', 'Profile', 'PF9vpsfp', 'PUBLIC', '2020-09-06', '16:35:40'),
('ALggr2hy', 'Cover', 'PF8e6jj4', 'PUBLIC', '2020-11-03', '23:06:21'),
('ALgh0fyw', 'Cover', 'PFwqgx6j', 'PUBLIC', '2020-08-04', '20:45:33'),
('ALi0llfr', 'Profile', 'PF2zpz1u', 'PUBLIC', '2020-10-29', '10:06:59'),
('ALi6vibz', 'General', 'PF1z6qyj', 'PUBLIC', '2020-10-09', '20:31:27'),
('ALinhmbg', 'General', 'PF17k48z', 'PUBLIC', '2020-09-16', '18:50:52'),
('ALixaxx5', 'Cover', 'PF147tdr', 'PUBLIC', '2020-12-18', '17:18:48'),
('ALvmk9t8', 'Cover', 'PF27spt1', 'PUBLIC', '2020-09-15', '12:09:46'),
('ALvuxalc', 'Profile', 'PF1e2i2d', 'PUBLIC', '2020-11-21', '04:39:52'),
('ALw4t108', 'Profile', 'PF250ajp', 'PUBLIC', '2020-09-14', '14:31:48'),
('ALxkgsmc', 'Profile', 'PF27spt1', 'PUBLIC', '2020-09-15', '12:09:46'),
('ALxlkwe1', 'General', 'PFvulfax', 'PUBLIC', '2020-09-04', '08:51:29'),
('ALxyo33f', 'General', 'PFgwrxs3', 'PUBLIC', '2020-09-17', '04:45:39'),
('ALyq4xr9', 'Cover', 'PF3inm8f', 'PUBLIC', '2020-10-05', '14:37:06'),
('ALzj82e5', 'Cover', 'PF5z777s', 'PUBLIC', '2020-10-01', '02:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `ALBUM_PRIVACY_HASH_LIST`
--

CREATE TABLE `ALBUM_PRIVACY_HASH_LIST` (
  `ALBUM_PRIVACY_KEY` varchar(200) NOT NULL,
  `ALBUM_PRIVACY_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ALBUM_PRIVACY_HASH_LIST`
--

INSERT INTO `ALBUM_PRIVACY_HASH_LIST` (`ALBUM_PRIVACY_KEY`, `ALBUM_PRIVACY_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PRIVATE', '2', '2020-06-02', '21:00:00'),
('PUBLIC', '1', '2020-06-02', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORIES`
--

CREATE TABLE `CATEGORIES` (
  `CATEGORY_ID` int(50) NOT NULL,
  `CATEGORY_NAME` varchar(100) NOT NULL,
  `PARENT_ID` int(50) DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CATEGORIES`
--

INSERT INTO `CATEGORIES` (`CATEGORY_ID`, `CATEGORY_NAME`, `PARENT_ID`, `CREATION_DATE`, `CREATION_TIME`) VALUES
(1, 'Hobbies', NULL, '2020-04-26', '21:00:00'),
(2, 'Entertainment', NULL, '2020-04-26', '21:00:00'),
(3, 'Movie', 2, '2020-04-26', '21:00:00'),
(4, 'Actor', 2, '2020-04-26', '21:00:00'),
(5, 'Actress', 2, '2020-04-26', '21:00:00'),
(6, 'TV Shows', 2, '2020-04-26', '21:00:00'),
(7, 'Web Series', 2, '2020-04-26', '21:00:00'),
(8, 'Foods', NULL, '2020-04-26', '21:00:00'),
(9, 'Animated Movie', 2, '2020-04-26', '21:00:00'),
(10, 'Web Series', 2, '2020-04-26', '21:00:00'),
(11, 'TV Chanel', 2, '2020-04-26', '21:00:00'),
(12, 'TV Shows', 2, '2020-04-26', '21:00:00'),
(1006, 'Computers, accessories, and services', NULL, '2020-06-23', '21:11:11'),
(2060, 'eCommerce services', 1006, '2020-06-23', '21:12:12'),
(2067, 'Information Technology & Software', 1006, '2020-06-23', '21:12:00'),
(2068, 'Training services', 1006, '2020-06-23', '21:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `COMMENT_STATUS_HASH_LIST`
--

CREATE TABLE `COMMENT_STATUS_HASH_LIST` (
  `COMMENT_STATUS_KEY` varchar(100) NOT NULL,
  `COMMENT_STATUS_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COMMENT_STATUS_HASH_LIST`
--

INSERT INTO `COMMENT_STATUS_HASH_LIST` (`COMMENT_STATUS_KEY`, `COMMENT_STATUS_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('COMMENT_ACTIVE', '1', '2020-07-28', '19:15:46'),
('COMMENT_DEACTIVE', '2', '2020-07-28', '19:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `COMMUNITY_BASIC_INFO_INDEPTH`
--

CREATE TABLE `COMMUNITY_BASIC_INFO_INDEPTH` (
  `COMMUNITY_PROFILE_ID` varchar(20) NOT NULL,
  `COMMUNITY_STATUS` varchar(100) NOT NULL,
  `COMMUNITY_AUTHOR_ID` varchar(20) NOT NULL,
  `COMMUNITY_NAME` varchar(400) NOT NULL,
  `COMMUNITY_DESCRIPTION` text NOT NULL,
  `COMMUNITY_COUNTRY` varchar(200) NOT NULL,
  `COMMUNITY_PLACE` varchar(200) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COMMUNITY_BASIC_INFO_INDEPTH`
--

INSERT INTO `COMMUNITY_BASIC_INFO_INDEPTH` (`COMMUNITY_PROFILE_ID`, `COMMUNITY_STATUS`, `COMMUNITY_AUTHOR_ID`, `COMMUNITY_NAME`, `COMMUNITY_DESCRIPTION`, `COMMUNITY_COUNTRY`, `COMMUNITY_PLACE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF1t4y1m', 'ACTIVE', 'PFy1kxsv', 'CTS', 'Software/Busniess', 'India', 'Kolkata', '2020-08-16', '20:42:33'),
('PF4byhr3', 'ACTIVE', 'PFy1kxsv', 'TATA Consultancy Services', 'TATA Consultancy Services Limited (TCS) is an Indian multinational information technology (IT) service and consulting company with headquartered in Mumbai, Maharashtra, India.It is a subsidiary of Tata Group and operates in 149 locations across 46 countries.\nTCS is the second largest Indian company by market capitalisation. Tata consultancy services is now placed among the most valuable IT services brands worldwide. In 2015, TCS was ranked 64th overall in the Forbes Worlds Most Innovative Companies ranking, making it both the highest-ranked IT services company and the top Indian company. It is the world\'s largest IT services provider. As of 2018, it is ranked eleventh on the Fortune India 500 list. In April 2018, TCS became the first Indian IT company to reach $100 billion market capitalisation, and second Indian company ever (after Reliance Industries achieved it in 2007) after its market capitalisation stood at ₹6,79,332.81 crore ($102.6 billion) on the Bombay Stock Exchange.', 'India', 'Kolkata', '2020-07-03', '17:40:14'),
('PF9vpsfp', 'ACTIVE', 'PFwqgx6j', 'SANA ENTERPRISE', 'EKHANE AOTI UNNOTO MANER AALU SEED ,BADAM SEED, AND DHAAN SEED PAOA JAY. KENAR JONNO AOTI SOTTOR JOGAJOG KORUN -8116777273', 'India', 'TARAKESWAR', '2020-09-06', '16:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `COMMUNITY_CATEGORY_INFO`
--

CREATE TABLE `COMMUNITY_CATEGORY_INFO` (
  `COMMUNITY_PROFILE_ID` varchar(20) NOT NULL,
  `COMMUNITY_CATEGORY_ID` int(50) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COMMUNITY_CATEGORY_INFO`
--

INSERT INTO `COMMUNITY_CATEGORY_INFO` (`COMMUNITY_PROFILE_ID`, `COMMUNITY_CATEGORY_ID`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF1t4y1m', 2067, '2020-08-16', '20:42:33'),
('PF4byhr3', 2068, '2020-07-03', '17:40:14'),
('PF9vpsfp', 2060, '2020-09-06', '16:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `COMMUNITY_USERS_INFO`
--

CREATE TABLE `COMMUNITY_USERS_INFO` (
  `COMMUNITY_PROFILE_ID` varchar(20) NOT NULL,
  `USER_PROFILE_ID` varchar(20) NOT NULL,
  `USER_ROLES` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COMMUNITY_USERS_INFO`
--

INSERT INTO `COMMUNITY_USERS_INFO` (`COMMUNITY_PROFILE_ID`, `USER_PROFILE_ID`, `USER_ROLES`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF1t4y1m', 'PFy1kxsv', 'Admin', '2020-08-16', '20:42:33'),
('PF4byhr3', 'PFy1kxsv', 'Admin', '2020-07-03', '17:40:14'),
('PF9vpsfp', 'PFy1kxsv', 'Admin', '2020-09-06', '16:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `COMMUNITY_USERS_ROLES_HASH_LIST`
--

CREATE TABLE `COMMUNITY_USERS_ROLES_HASH_LIST` (
  `USERS_ROLES_KEY` varchar(100) NOT NULL,
  `USERS_ROLES_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COMMUNITY_USERS_ROLES_HASH_LIST`
--

INSERT INTO `COMMUNITY_USERS_ROLES_HASH_LIST` (`USERS_ROLES_KEY`, `USERS_ROLES_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('Admin', '0', '2020-06-26', '21:11:11');

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRY_FLAG_INFORMATION`
--

CREATE TABLE `COUNTRY_FLAG_INFORMATION` (
  `COUNTRY_NAME` varchar(200) NOT NULL DEFAULT '',
  `COUNTRY_FLAG_IMAGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COUNTRY_FLAG_INFORMATION`
--

INSERT INTO `COUNTRY_FLAG_INFORMATION` (`COUNTRY_NAME`, `COUNTRY_FLAG_IMAGE`) VALUES
('India', 'india.png');

-- --------------------------------------------------------

--
-- Table structure for table `COUNTRY_INFORMATION`
--

CREATE TABLE `COUNTRY_INFORMATION` (
  `COUNTRY_CODE` char(2) DEFAULT NULL,
  `COUNTRY_NAME` varchar(200) NOT NULL DEFAULT '',
  `COUNTRY_ALPHA3_CODE` char(3) DEFAULT NULL,
  `COUNTRY_NUMERIC_CODE` char(3) DEFAULT NULL,
  `CAPITAL` varchar(50) DEFAULT NULL,
  `COUNTRY_DEMONYM` varchar(100) DEFAULT NULL,
  `TOTAL_AREA` double DEFAULT NULL,
  `POPULATION` int(10) UNSIGNED DEFAULT NULL,
  `IDD_CODE` varchar(5) DEFAULT NULL,
  `CURRENCY_CODE` char(3) DEFAULT NULL,
  `CURRENCY_NAME` varchar(50) DEFAULT NULL,
  `CURRENCY_SYMBOL` varchar(10) DEFAULT NULL,
  `LANG_CODE` char(2) DEFAULT NULL,
  `LANG_NAME` varchar(50) DEFAULT NULL,
  `CCTLD` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COUNTRY_INFORMATION`
--

INSERT INTO `COUNTRY_INFORMATION` (`COUNTRY_CODE`, `COUNTRY_NAME`, `COUNTRY_ALPHA3_CODE`, `COUNTRY_NUMERIC_CODE`, `CAPITAL`, `COUNTRY_DEMONYM`, `TOTAL_AREA`, `POPULATION`, `IDD_CODE`, `CURRENCY_CODE`, `CURRENCY_NAME`, `CURRENCY_SYMBOL`, `LANG_CODE`, `LANG_NAME`, `CCTLD`) VALUES
('AF', 'Afghanistan', 'AFG', '4', 'Kabul', 'Afghans', 652230, 36373176, '93', 'AFN', 'Afghan Afghani', '؋', 'FA', 'Persian', 'af'),
('AX', 'Aland Islands', 'ALA', '248', 'Mariehamn', 'Aland Islanders', 1552, 29013, '358', 'EUR', 'Euro', '€', 'SV', 'Swedish', 'ax'),
('AL', 'Albania', 'ALB', '8', 'Tirana', 'Albanians', 28748, 2934363, '355', 'ALL', 'Albanian Lek', 'L', 'SQ', 'Albanian', 'al'),
('DZ', 'Algeria', 'DZA', '12', 'Algiers', 'Algerians', 2381741, 42008054, '213', 'DZD', 'Algerian Dinar', 'DA', 'AR', 'Arabic', 'dz'),
('AS', 'American Samoa', 'ASM', '16', 'Pago Pago', 'American Samoans', 199, 55679, '1684', 'USD', 'United States Dollar', '$', 'EN', 'Samoan', 'as'),
('AD', 'Andorra', 'AND', '20', 'Andorra la Vella', 'Andorrans', 468, 76953, '376', 'EUR', 'Euro', '€', 'CA', 'Catalana', 'ad'),
('AO', 'Angola', 'AGO', '24', 'Luanda', 'Angolans', 1246700, 30774205, '244', 'AOA', 'Angolan Kwanza', 'Kz', 'PT', 'Portuguese', 'ao'),
('AI', 'Anguilla', 'AIA', '660', 'The Valley', 'Anguillans', 91, 15045, '1264', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'ai'),
('AQ', 'Antarctica', 'ATA', '10', '-', 'Antarctic residents', 14000000, 0, '672', '', '', '', 'RU', 'Russian', 'aq'),
('AG', 'Antigua and Barbuda', 'ATG', '28', 'Saint John\'s', 'Antiguans or Barbudans', 442, 103050, '1268', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'ag'),
('AR', 'Argentina', 'ARG', '32', 'Buenos Aires', 'Argentines', 2780400, 44688864, '54', 'ARS', 'Argentine Peso', '$', 'ES', 'Spanish', 'ar'),
('AM', 'Armenia', 'ARM', '51', 'Yerevan', 'Armenians', 29743, 2934152, '374', 'AMD', 'Armenian Dram', '֏', 'HY', 'Armenian', 'am'),
('AW', 'Aruba', 'ABW', '533', 'Oranjestad', 'Arubans', 180, 105670, '297', 'AWG', 'Aruban Florin', 'Afl', 'NL', 'Dutch', 'aw'),
('AU', 'Australia', 'AUS', '36', 'Canberra', 'Australians', 7741220, 24772247, '61', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'au'),
('AT', 'Austria', 'AUT', '40', 'Vienna', 'Austrians', 83871, 8751820, '43', 'EUR', 'Euro', '€', 'DE', 'German', 'at'),
('AZ', 'Azerbaijan', 'AZE', '31', 'Baku', 'Azerbaijanis', 86600, 9923914, '994', 'AZN', 'Azerbaijani Manat', '₼', 'AZ', 'Azerbaijani', 'az'),
('BS', 'Bahamas', 'BHS', '44', 'Nassau', 'Bahamians', 13880, 399285, '1242', 'BSD', 'Bahamian Dollar', '$', 'EN', 'English', 'bs'),
('BH', 'Bahrain', 'BHR', '48', 'Manama', 'Bahrainis', 760, 1566993, '973', 'BHD', 'Bahraini Dinar', 'BD', 'AR', 'Arabic', 'bh'),
('BD', 'Bangladesh', 'BGD', '50', 'Dhaka', 'Bangladeshis', 143998, 166368149, '880', 'BDT', 'Bangladeshi Taka', '৳', 'BN', 'Bangla', 'bd'),
('BB', 'Barbados', 'BRB', '52', 'Bridgetown', 'Barbadians', 430, 286388, '1246', 'USD', 'United States Dollar', '$', 'EN', 'English', 'bb'),
('BY', 'Belarus', 'BLR', '112', 'Minsk', 'Belarusians', 207600, 9452113, '375', 'BYR', 'Belarusian Ruble', 'Br', 'BE', 'Belarusian', 'by'),
('BE', 'Belgium', 'BEL', '56', 'Brussels', 'Belgians', 30528, 11498519, '32', 'EUR', 'Euro', '€', 'NL', 'Dutch', 'be'),
('BZ', 'Belize', 'BLZ', '84', 'Belmopan', 'Belizeans', 22966, 382444, '501', 'BZD', 'Belize Dollar', '$', 'EN', 'English', 'bz'),
('BJ', 'Benin', 'BEN', '204', 'Porto-Novo', 'Beninese', 112622, 11485674, '229', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'bj'),
('BM', 'Bermuda', 'BMU', '60', 'Hamilton', 'Bermudians', 54, 61070, '1441', 'BMD', 'Bermudian Dollar', '$', 'EN', 'English', 'bm'),
('BT', 'Bhutan', 'BTN', '64', 'Thimphu', 'Bhutanese', 38394, 817054, '975', 'BTN', 'Bhutanese Ngultrum', 'Nu.', 'EN', 'Dzongkha', 'bt'),
('BO', 'Bolivia (Plurinational State of)', 'BOL', '68', 'Sucre', 'Bolivians', 1098581, 11215674, '591', 'BOB', 'Boliviano', 'Bs', 'ES', 'Spanish', 'bo'),
('BQ', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'Kralendijk', 'Bonaire Dutch', 328, 24548, '599', 'USD', 'United States Dollar', '$', 'NL', 'Dutch', 'bq'),
('BA', 'Bosnia and Herzegovina', 'BIH', '70', 'Sarajevo', 'Bosnians or Herzegovinians', 51197, 3503554, '387', 'BAM', 'Bosnia And Herzegovina Convertible Mark', 'KM', 'HR', 'Croatian', 'ba'),
('BW', 'Botswana', 'BWA', '72', 'Gaborone', 'Motswana', 581730, 2333201, '267', 'BWP', 'Botswana Pula', 'P', 'EN', 'English', 'bw'),
('BV', 'Bouvet Island', 'BVT', '74', '-', '', 49, 0, '47', 'NOK', 'Norwegian Kroner', 'kr', 'EN', '', 'bv'),
('BR', 'Brazil', 'BRA', '76', 'Brasileia', 'Brazilians', 8514877, 210867954, '55', 'BRL', 'Brazilian Real', 'Cz$', 'PT', 'Portuguese', 'br'),
('IO', 'British Indian Ocean Territory', 'IOT', '86', 'Diego Garcia', 'British', 54400, 3000, '246', 'GBP', 'British Pound', '£', 'EN', 'English', 'io'),
('BN', 'Brunei Darussalam', 'BRN', '96', 'Bandar Seri Begawan', 'Bruneians', 5765, 434076, '673', 'SGD', 'Brunei Dollar', '$', 'MS', 'Malay', 'bn'),
('BG', 'Bulgaria', 'BGR', '100', 'Sofia', 'Bulgarians', 110879, 7036848, '359', 'BGN', 'Bulgarian Lev', 'лв', 'GB', 'Bulgarian', 'bg'),
('BF', 'Burkina Faso', 'BFA', '854', 'Ouagadougou', 'Burkinabe', 274200, 19751651, '226', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'bf'),
('BI', 'Burundi', 'BDI', '108', 'Bujumbura', 'Burundians', 27830, 11216450, '257', 'BIF', 'Burundian Franc', 'FBu', 'FR', 'French', 'bi'),
('CV', 'Cabo Verde', 'CPV', '132', 'Praia', 'Cabo Verdeans', 4033, 553335, '238', 'CVE', 'Cape Verde Escudo', '$', 'PT', 'Portuguese', 'cv'),
('KH', 'Cambodia', 'KHM', '116', 'Phnom Penh', 'Cambodians', 181035, 16245729, '855', 'KHR', 'Cambodian Riel', '៛', 'KM', 'Khmer', 'kh'),
('CM', 'Cameroon', 'CMR', '120', 'Yaounde', 'Cameroonians', 475440, 24678234, '237', 'XAF', 'Cfa Franc Beac', 'FCFA', 'FR', 'French', 'cm'),
('CA', 'Canada', 'CAN', '124', 'Ottawa', 'Canadians', 9984670, 36953765, '1', 'CAD', 'Canadian Dollar', '$', 'FR', 'French', 'ca'),
('KY', 'Cayman Islands', 'CYM', '136', 'George Town', 'Caymanians', 264, 62348, '1345', 'KYD', 'Cayman Islands Dollar', '$', 'EN', 'English', 'ky'),
('CF', 'Central African Republic', 'CAF', '140', 'Bangui', 'Central Africans', 622984, 4737423, '236', 'XAF', 'Cfa Franc Beac', 'FCFA', 'FR', 'French', 'cf'),
('TD', 'Chad', 'TCD', '148', 'N\'djamena', 'Chadians', 1284000, 15353184, '235', 'XAF', 'Cfa Franc Beac', 'FCFA', 'AR', 'Arabic', 'td'),
('CL', 'Chile', 'CHL', '152', 'Santiago', 'Chileans', 756102, 18197209, '56', 'CLP', 'Chilean Peso', '$', 'ES', 'Spanish', 'cl'),
('CN', 'China', 'CHN', '156', 'Beijing', 'Chinese', 9596961, 1415045928, '86', 'CNY', 'Chinese Yuan Renminbi', '¥', 'ZH', 'Chinese', 'cn'),
('CX', 'Christmas Island', 'CXR', '162', 'Flying Fish Cove', 'Christmas Islanders', 135, 2205, '61', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'cx'),
('CC', 'Cocos (Keeling) Islands', 'CCK', '166', 'West Island', 'Cocos Islanders', 14, 628, '61', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'cc'),
('CO', 'Colombia', 'COL', '170', 'Bogota', 'Colombians', 1138910, 49464683, '57', 'COP', 'Colombian Peso', '$', 'ES', 'Spanish', 'co'),
('KM', 'Comoros', 'COM', '174', 'Moroni', 'Comorans', 2235, 832347, '269', 'KMF', 'Comoro Franc', 'CF', 'AR', 'Arabic', 'km'),
('CG', 'Congo', 'COG', '178', 'Brazzaville', 'Congolese', 342000, 5399895, '242', 'XAF', 'Cfa Franc Beac', 'FCFA', 'EN', 'Niger-congo', 'cg'),
('CD', 'Congo (Democratic Republic of the)', 'COD', '180', 'Kinshasa', 'Congolese', 2344858, 84004989, '243', 'CDF', 'Congolese Franc', 'FCFA', 'EN', '', 'cd'),
('CK', 'Cook Islands', 'COK', '184', 'Avarua', 'Cook Islanders', 236, 17411, '682', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'ck'),
('CR', 'Costa Rica', 'CRI', '188', 'San Jose', 'Costa Ricans', 51100, 4953199, '506', 'CRC', 'Costa Rican Colon', '₡', 'ES', 'Spanish', 'cr'),
('CI', 'Cote d\'Ivoire', 'CIV', '384', 'Yamoussoukro', 'Ivorians', 322463, 24905843, '225', 'XOF', 'Cfa Franc Bceao', 'CFA', 'EN', 'English', 'ci'),
('CO', 'COUNTRY_NAME', 'COU', 'COU', 'CAPITAL', 'COUNTRY_DEMONYM', 0, 0, 'IDD_C', 'CUR', 'CURRENCY_NAME', 'CURRENCY_S', 'LA', 'LANG_NAME', 'CC'),
('HR', 'Croatia', 'HRV', '191', 'Zagreb', 'Croatians', 56594, 4164783, '385', 'HRK', 'Croatian Kuna', 'kn', 'HR', 'Croatian', 'hr'),
('CU', 'Cuba', 'CUB', '192', 'Havana', 'Cubans', 110860, 11489082, '53', 'CUC', 'Cuban Convertible Peso', '$', 'ES', 'Spanish', 'cu'),
('CW', 'Curaçao', 'CUW', '531', 'Willemstad', 'Curacaoans', 444, 161577, '5999', 'ANG', 'Nl Antillian Guilder', 'ƒ', 'NL', 'Dutch', 'cw'),
('CY', 'Cyprus', 'CYP', '196', 'Nicosia', 'Cypriots', 9251, 1189085, '357', 'EUR', 'Euro', '€', 'EL', 'Greek', 'cy'),
('CZ', 'Czechia', 'CZE', '203', 'Prague', 'Czechs', 78867, 10625250, '420', 'CZK', 'Czech Koruna', 'Kč', 'CS', 'Czech', 'cz'),
('DK', 'Denmark', 'DNK', '208', 'Copenhagen', 'Danes', 43094, 5754356, '45', 'DKK', 'Danish Krone', 'kr.', 'DA', 'Danish', 'dk'),
('DJ', 'Djibouti', 'DJI', '262', 'Djibouti', 'Djiboutians', 23200, 971408, '253', 'DJF', 'Djiboutian Franc', 'Fdj', 'FR', 'French', 'dj'),
('DM', 'Dominica', 'DMA', '212', 'Roseau', 'Dominicans', 751, 74308, '1767', 'XCD', 'East Caribbean Dollar', '$', 'FR', 'French', 'dm'),
('DO', 'Dominican Republic', 'DOM', '214', 'Santo Domingo', 'Dominicans', 48670, 10882996, '1829', 'DOP', 'Dominican Peso', '$', 'ES', 'Spanish', 'do'),
('EC', 'Ecuador', 'ECU', '218', 'Quito', 'Ecuadorians', 283561, 16863425, '593', 'USD', 'United States Dollar', '$', 'ES', 'Spanish', 'ec'),
('EG', 'Egypt', 'EGY', '818', 'Cairo', 'Egyptians', 1001450, 99375741, '20', 'EGP', 'Egyptian Pound', 'E£', 'AR', 'Arabic', 'eg'),
('SV', 'El Salvador', 'SLV', '222', 'San Salvador', 'Salvadorans', 21041, 6411558, '503', 'NOK', 'Norwegian Kroner', 'kr', 'ES', 'Spanish', 'sv'),
('GQ', 'Equatorial Guinea', 'GNQ', '226', 'Malabo', 'Equatorial Guineans', 28051, 1313894, '240', 'XAF', 'Cfa Franc Beac', 'FCFA', 'ES', 'Spanish', 'gq'),
('ER', 'Eritrea', 'ERI', '232', 'Asmara', 'Eritreans', 117600, 5187948, '291', 'ERN', 'Eritrean Nakfa', 'Nkf', 'TI', 'Tigrinya', 'er'),
('EE', 'Estonia', 'EST', '233', 'Tallinn', 'Estonians', 45228, 1306788, '372', 'EUR', 'Euro', '€', 'ET', 'Estoniana', 'ee'),
('SZ', 'Eswatini', 'SWZ', '748', 'Mbabane', 'Swazis', 17364, 1391385, '268', 'SZL', 'Swazi Lilangeni', 'L', 'EN', 'English', 'sz'),
('ET', 'Ethiopia', 'ETH', '231', 'Addis Ababa', 'Ethiopians', 1104300, 107534882, '251', 'ETB', 'Ethiopian Birr', 'Br', 'AM', 'Amharic', 'et'),
('FK', 'Falkland Islands (Malvinas)', 'FLK', '238', 'Stanley', 'Falkland Islanders', 12173, 2922, '500', 'FKP', 'Falkland Islands Pound', '£', 'EN', 'English', 'fk'),
('FO', 'Faroe Islands', 'FRO', '234', 'Torshavn', 'Faroese', 1393, 49489, '298', 'DKK', 'Danish Krone', 'kr', 'FO', 'Faroese', 'fo'),
('FJ', 'Fiji', 'FJI', '242', 'Suva', 'Fijians', 18274, 912241, '679', 'FJD', 'Fijian Dollar', '$', 'HI', 'Hindi', 'fj'),
('FI', 'Finland', 'FIN', '246', 'Helsinki', 'Finns', 338145, 5542517, '358', 'EUR', 'Euro', '€', 'FI', 'Finnish', 'fi'),
('FR', 'France', 'FRA', '250', 'Paris', 'French', 643801, 65233271, '33', 'EUR', 'Euro', '€', 'FR', 'French', 'fr'),
('GF', 'French Guiana', 'GUF', '254', 'Cayenne', 'French Guianese', 86504, 289763, '594', 'EUR', 'Euro', '€', 'FR', 'French', 'gf'),
('PF', 'French Polynesia', 'PYF', '258', 'Papeete', 'French Polynesians', 4167, 285859, '689', 'XPF', 'Cfp Franc', '₣', 'FR', 'French', 'pf'),
('TF', 'French Southern Territories', 'ATF', '260', 'Port-aux-francais', 'French', 439781, 140, '262', 'EUR', 'Euro', '€', 'FR', 'French', 'tf'),
('GA', 'Gabon', 'GAB', '266', 'Libreville', 'Gabonese', 267667, 2067561, '241', 'XAF', 'Cfa Franc Beac', 'FCFA', 'FR', 'French', 'ga'),
('GM', 'Gambia', 'GMB', '270', 'Banjul', 'Gambians', 11295, 2163765, '220', 'GMD', 'Gambian Dalasi', 'D', 'EN', 'English', 'gm'),
('GE', 'Georgia', 'GEO', '268', 'Tbilisi', 'Georgians', 69700, 3907131, '995', 'GEL', 'Georgian Lari', '₾', 'KA', 'Georgian', 'ge'),
('DE', 'Germany', 'DEU', '276', 'Berlin', 'Germans', 357022, 82293457, '49', 'EUR', 'Euro', '€', 'DE', 'German', 'de'),
('GH', 'Ghana', 'GHA', '288', 'Accra', 'Ghanaians', 238533, 29463643, '233', 'GHS', 'Ghanaian New Cedi', 'GH₵', 'EE', 'Ewe', 'gh'),
('GI', 'Gibraltar', 'GIB', '292', 'Gibraltar', 'Gibraltarians', 6, 34733, '350', 'GIP', 'Gibraltar Pound', '£', 'ES', 'Spanish', 'gi'),
('GR', 'Greece', 'GRC', '300', 'Athens', 'Greeks', 131957, 11142161, '30', 'EUR', 'Euro', '€', 'EL', 'Greek', 'gr'),
('GL', 'Greenland', 'GRL', '304', 'Nuuk', 'Greenlanders', 2166086, 56565, '299', 'DKK', 'Danish Krone', 'kr.', 'DA', 'Danish', 'gl'),
('GD', 'Grenada', 'GRD', '308', 'Saint George\'s', 'Grenadians', 344, 108339, '1473', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'gd'),
('GP', 'Guadeloupe', 'GLP', '312', 'Basse-terre', 'Guadeloupians', 1630, 449173, '590', 'EUR', 'Euro', '€', 'FR', 'French', 'gp'),
('GU', 'Guam', 'GUM', '316', 'Hagatna', 'Guamanians', 544, 165718, '1671', 'USD', 'United States Dollar', '$', 'EN', 'English', 'gu'),
('GT', 'Guatemala', 'GTM', '320', 'Guatemala City', 'Guatemalans', 108889, 17245346, '502', 'GTQ', 'Guatemalan Quetzal', 'Q', 'ES', 'Spanish', 'gt'),
('GG', 'Guernsey', 'GGY', '831', 'Saint Peter Port', 'Channel Islanders', 78, 66502, '44', 'GBP', 'Pound Sterling', '£', 'FR', 'French', 'gg'),
('GN', 'Guinea', 'GIN', '324', 'Conakry', 'Guineans', 245857, 13052608, '224', 'GNF', 'Guinean Franc', 'FG', 'FR', 'French', 'gn'),
('GW', 'Guinea-Bissau', 'GNB', '624', 'Bissau', 'Bissau-Guineans', 36125, 1907268, '245', 'XOF', 'Cfa Franc Bceao', 'CFA', 'PT', 'Portuguese', 'gw'),
('GY', 'Guyana', 'GUY', '328', 'Georgetown', 'Guyanese', 214969, 782225, '592', 'GYD', 'Guyanese Dollar', '$', 'EN', 'English', 'gy'),
('HT', 'Haiti', 'HTI', '332', 'Port-au-prince', 'Haitians', 27750, 11112945, '509', 'HTG', 'Haitian Gourde', 'G', 'FR', 'French', 'ht'),
('HM', 'Heard Island and McDonald Islands', 'HMD', '334', '-', '', 412, 0, '61', 'AUD', 'Australian Dollar', '$', 'EN', '', 'hm'),
('VA', 'Holy See', 'VAT', '336', 'Vatican City', 'Vatican citizens', 0.44, 801, '39', 'EUR', 'Euro', '€', 'EN', 'Latin', 'va'),
('HN', 'Honduras', 'HND', '340', 'Tegucigalpa', 'Hondurans', 112090, 9417167, '504', 'HNL', 'Honduran Lempira', 'L', 'ES', 'Spanish', 'hn'),
('HK', 'Hong Kong', 'HKG', '344', '-', 'Hong Kongese', 1104, 7428887, '852', 'HKD', 'Hong Kong Dollar', '$', 'ZH', 'Chinese', 'hk'),
('HU', 'Hungary', 'HUN', '348', 'Budapest', 'Hungarians', 93028, 9688847, '36', 'HUF', 'Hungarian Forint', 'Ft', 'HU', 'Hungarian', 'hu'),
('IS', 'Iceland', 'ISL', '352', 'Reykjavik', 'Icelanders', 103000, 337780, '354', 'ISK', 'Iceland Krona', 'kr', 'IS', 'Icelandic', 'is'),
('IN', 'India', 'IND', '356', 'New Delhi', 'Indians', 3287263, 1354051854, '91', 'INR', 'Indian Rupee', '₹', 'HI', 'Hindi, English', 'in'),
('ID', 'Indonesia', 'IDN', '360', 'Jakarta', 'Indonesians', 1904569, 266794980, '62', 'IDR', 'Indonesian Rupiah', 'Rp', 'ID', 'Indonesian', 'id'),
('IR', 'Iran (Islamic Republic of)', 'IRN', '364', 'Tehran', 'Iranians', 1648195, 82011735, '98', 'IRR', 'Iranian Rial', '﷼', 'FA', 'Persian', 'ir'),
('IQ', 'Iraq', 'IRQ', '368', 'Baghdad', 'Iraqis', 438317, 39339753, '964', 'IQD', 'Iraqi Dinar', 'د.ع', 'AR', 'Arabic', 'iq'),
('IE', 'Ireland', 'IRL', '372', 'Dublin', 'Irish', 70273, 4803748, '353', 'EUR', 'Euro', '€', 'GA', 'Irish', 'ie'),
('IM', 'Isle of Man', 'IMN', '833', 'Douglas', 'Manx', 572, 84831, '44', 'GBP', 'British Pound', '£', 'EN', 'English', 'im'),
('IL', 'Israel', 'ISR', '376', 'Jerusalem', 'Israelis', 20770, 8452841, '972', 'ILS', 'Israeli New Shekel', '₪', 'HE', 'Hebrew', 'il'),
('IT', 'Italy', 'ITA', '380', 'Roma', 'Italians', 301340, 59290969, '39', 'EUR', 'Euro', '€', 'IT', 'Italian', 'it'),
('JM', 'Jamaica', 'JAM', '388', 'Kingston', 'Jamaicans', 10991, 2898677, '1876', 'JMD', 'Jamaican Dollar', '$', 'EN', 'English (jamaican English)', 'jm'),
('JP', 'Japan', 'JPN', '392', 'Tokyo', 'Japanese', 377915, 127185332, '81', 'JPY', 'Japanese Yen', '¥', 'JA', 'Japanese', 'jp'),
('JE', 'Jersey', 'JEY', '832', 'Saint Helier', 'Channel Islanders', 116, 166083, '44', 'GBP', 'British Pound', '£', 'FR', 'French', 'je'),
('JO', 'Jordan', 'JOR', '400', 'Amman', 'Jordanians', 89342, 9903802, '962', 'JOD', 'Jordanian Dinar', 'د.أ', 'AR', 'Arabic', 'jo'),
('KZ', 'Kazakhstan', 'KAZ', '398', 'Astana', 'Kazakhstanis', 2724900, 18403860, '7', 'KZT', 'Kazakhstani Tenge', '₸', 'RU', 'Russian', 'kz'),
('KE', 'Kenya', 'KEN', '404', 'Nairobi', 'Kenyans', 580367, 50950879, '254', 'KES', 'Kenyan Shilling', 'KSh', 'EN', 'English', 'ke'),
('KI', 'Kiribati', 'KIR', '296', 'Tarawa', 'I-Kiribati', 811, 118414, '686', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'ki'),
('KP', 'Korea (Democratic People\'s Republic of)', 'PRK', '408', 'Pyongyang', 'Koreans', 120538, 25610672, '850', 'KPW', 'North Korean Won', '₩', 'KO', 'Korean', 'kp'),
('KR', 'Korea (Republic of)', 'KOR', '410', 'Seoul', 'Koreans', 99720, 51164435, '82', 'KRW', 'South-korean Won', '₩', 'KO', 'Korean', 'kr'),
('KW', 'Kuwait', 'KWT', '414', 'Kuwait', 'Kuwaitis', 17818, 4197128, '965', 'KWD', 'Kuwaiti Dinar', 'KD', 'AR', 'Arabic', 'kw'),
('KG', 'Kyrgyzstan', 'KGZ', '417', 'Bishkek', 'Kyrgyzstanis', 199951, 6132932, '996', 'KGS', 'Kyrgyzstani Som', 'Лв', 'RU', 'Russian', 'kg'),
('LA', 'Lao People\'s Democratic Republic', 'LAO', '418', 'Vientiane', 'Laos', 236800, 6961210, '856', 'LAK', 'Lao Kip', '₭', 'LO', 'Lao', 'la'),
('LV', 'Latvia', 'LVA', '428', 'Riga', 'Latvians', 64589, 1929938, '371', 'EUR', 'Euro', '€', 'LV', 'Latvian', 'lv'),
('LB', 'Lebanon', 'LBN', '422', 'Beirut', 'Lebanese', 10400, 6093509, '961', 'LBP', 'Lebanese Pound', 'LL', 'AR', 'Arabica', 'lb'),
('LS', 'Lesotho', 'LSO', '426', 'Maseru', 'Basotho', 30355, 2263010, '266', 'LSL', 'Lesotho Loti', 'M', 'EN', 'English', 'ls'),
('LR', 'Liberia', 'LBR', '430', 'Monrovia', 'Liberians', 111369, 4853516, '231', 'LRD', 'Liberian Dollar', '$', 'EN', 'English', 'lr'),
('LY', 'Libya', 'LBY', '434', 'Tripoli', 'Libyans', 1759540, 6470956, '218', 'LYD', 'Libyan Dinar', 'LD', 'AR', 'Arabic', 'ly'),
('LI', 'Liechtenstein', 'LIE', '438', 'Vaduz', 'Liechtensteiners', 160, 38155, '423', 'CHF', 'Swiss Franc', 'Fr.', 'DE', 'German', 'li'),
('LT', 'Lithuania', 'LTU', '440', 'Vilnius', 'Lithuanians', 65300, 2876475, '370', 'LTL', 'Lithuanian Litas', 'Lt', 'LT', 'Lithuanian', 'lt'),
('LU', 'Luxembourg', 'LUX', '442', 'Luxembourg', 'Luxembourgers', 2586, 590321, '352', 'EUR', 'Euro', '€', 'FR', 'French', 'lu'),
('MO', 'Macao', 'MAC', '446', '-', 'Macanese', 31.3, 632418, '853', 'HKD', 'Hong Kong Dollar', '$', 'ZH', 'Chinese', 'mo'),
('MG', 'Madagascar', 'MDG', '450', 'Antananarivo', 'Malagasy', 587041, 26262810, '261', 'MGA', 'Malagasy Ariary', 'Ar', 'FR', 'French', 'mg'),
('MW', 'Malawi', 'MWI', '454', 'Lilongwe', 'Malawians', 118484, 19164728, '265', 'MWK', 'Malawian Kwacha', 'K', 'EN', 'English', 'mw'),
('MY', 'Malaysia', 'MYS', '458', 'Kuala Lumpur', 'Malaysians', 329847, 32042458, '60', 'MYR', 'Malaysian Ringgit', 'RM', 'MS', 'Malay', 'my'),
('MV', 'Maldives', 'MDV', '462', 'Male', 'Maldivians', 298, 444259, '960', 'MVR', 'Maldivian Rufiyaa', 'Rf', 'DV', 'Maldivian', 'mv'),
('ML', 'Mali', 'MLI', '466', 'Bamako', 'Malians', 1240192, 19107706, '223', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'ml'),
('MT', 'Malta', 'MLT', '470', 'Valletta', 'Maltese', 316, 432089, '356', 'EUR', 'Euro', '€', 'MT', 'Maltese', 'mt'),
('MH', 'Marshall Islands', 'MHL', '584', 'Majuro', 'Marshallese', 181, 53167, '692', 'USD', 'United States Dollar', '$', 'EN', 'English', 'mh'),
('MQ', 'Martinique', 'MTQ', '474', 'Fort-de-france', 'Martiniquais', 1128, 385065, '596', 'EUR', 'Euro', '€', 'FR', 'French', 'mq'),
('MR', 'Mauritania', 'MRT', '478', 'Nouakchott', 'Mauritanians', 1030700, 4540068, '222', 'MRO', 'Mauritanian Ouguiya', 'UM', 'AR', 'Arabic', 'mr'),
('MU', 'Mauritius', 'MUS', '480', 'Port Louis', 'Mauritians', 2040, 1268315, '230', 'MUR', 'Mauritian Rupee', '₨', 'FR', 'French', 'mu'),
('YT', 'Mayotte', 'MYT', '175', 'Mamoudzou', 'Mahorans', 374, 259682, '262', 'EUR', 'Euro', '€', 'FR', 'French', 'yt'),
('MX', 'Mexico', 'MEX', '484', 'Mexico City', 'Mexicans', 1964375, 130759074, '52', 'MXN', 'Mexican Peso', '$', 'ES', 'Spanish', 'mx'),
('FM', 'Micronesia (Federated States of)', 'FSM', '583', 'Palikir', 'Micronesians', 702, 106227, '691', 'USD', 'United States Dollar', '$', 'EN', 'English', 'fm'),
('MD', 'Moldova (Republic of)', 'MDA', '498', 'Chisinau', 'Moldovans', 33851, 4041065, '373', 'MDL', 'Moldovan Leu', 'L', 'RO', 'Romanian', 'md'),
('MC', 'Monaco', 'MCO', '492', 'Monaco', 'Monacans', 2, 38897, '377', 'EUR', 'Euro', '€', 'FR', 'French', 'mc'),
('MN', 'Mongolia', 'MNG', '496', 'Ulaanbaatar', 'Mongolians', 1564116, 3121772, '976', 'MNT', 'Mongolian Tugrik', '₮', 'MN', 'Mongolian', 'mn'),
('ME', 'Montenegro', 'MNE', '499', 'Podgorica', 'Montenegrins', 13812, 629219, '382', 'EUR', 'Euro', '€', 'SR', 'Serbian', 'me'),
('MS', 'Montserrat', 'MSR', '500', 'Plymouth', 'Montserratians', 102, 5203, '1664', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'ms'),
('MA', 'Morocco', 'MAR', '504', 'Rabat', 'Moroccans', 446550, 36191805, '212', 'MAD', 'Moroccan Dirham', 'DH', 'AR', 'Arabic', 'ma'),
('MZ', 'Mozambique', 'MOZ', '508', 'Maputo', 'Mozambicans', 799380, 30528673, '258', 'MZN', 'Mozambican Metical', 'MT', 'PT', 'Portuguese', 'mz'),
('MM', 'Myanmar', 'MMR', '104', 'Pyinmana', 'Burmese', 676578, 53855735, '95', 'MMK', 'Myanmar Kyat', 'K', 'MY', 'Burmese', 'mm'),
('NA', 'Namibia', 'NAM', '516', 'Windhoek', 'Namibians', 824292, 2587801, '264', 'NAD', 'Namibian Dollar', '$', 'EN', 'English', 'na'),
('NR', 'Nauru', 'NRU', '520', 'Yaren', 'Nauruans', 21, 11312, '674', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'nr'),
('NP', 'Nepal', 'NPL', '524', 'Kathmandu', 'Nepalese', 147181, 29624035, '977', 'NPR', 'Nepalese Rupee', 'रू', 'NE', 'Nepali', 'np'),
('NL', 'Netherlands', 'NLD', '528', 'Amsterdam', 'Netherlanders', 41543, 17110161, '31', 'EUR', 'Euro', '€', 'NL', 'Dutch', 'nl'),
('NC', 'New Caledonia', 'NCL', '540', 'Noumea', 'New Caledonians', 18575, 279821, '687', 'XPF', 'Cfp Franc', '₣', 'FR', 'French', 'nc'),
('NZ', 'New Zealand', 'NZL', '554', 'Wellington', 'New Zealanders', 267710, 4749598, '64', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'nz'),
('NI', 'Nicaragua', 'NIC', '558', 'Managua', 'Nicaraguans', 130370, 6284757, '505', 'NIO', 'Nicaraguan CÓrdoba', 'C$', 'ES', 'Spanish', 'ni'),
('NE', 'Niger', 'NER', '562', 'Niamey', 'Nigeriens', 1186408, 22311375, '227', 'NZD', 'New Zealand Dollar', '$', 'FR', 'French', 'ne'),
('NG', 'Nigeria', 'NGA', '566', 'Abuja', 'Nigerians', 923768, 195875237, '234', 'NGN', 'Nigerian Naira', '₦', 'EN', 'English', 'ng'),
('NU', 'Niue', 'NIU', '570', 'Alofi', 'Niueans', 260, 1624, '683', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'nu'),
('NF', 'Norfolk Island', 'NFK', '574', 'Kingston', 'Norfolk Islanders', 36, 2210, '672', 'AUD', 'Australian Dollar', '$', 'EN', 'English', 'nf'),
('MK', 'North Macedonia', 'MKD', '807', 'Skopje', 'Macedonians', 25713, 2085051, '389', 'MKD', 'Macedonian Denar', 'den', 'MK', 'Macedonian', 'mk'),
('MP', 'Northern Mariana Islands', 'MNP', '580', 'Saipan', 'Northern Marianans', 464, 55194, '1670', 'USD', 'United States Dollar', '$', 'EN', 'English', 'mp'),
('NO', 'Norway', 'NOR', '578', 'Oslo', 'Norwegians', 323802, 5353363, '47', 'NOK', 'Norwegian Kroner', 'kr', 'NO', 'Norwegian', 'no'),
('OM', 'Oman', 'OMN', '512', 'Muscat', 'Omanis', 309500, 4829946, '968', 'OMR', 'Omani Rial', 'ر.ع.', 'AR', 'Arabic', 'om'),
('PK', 'Pakistan', 'PAK', '586', 'Islamabad', 'Pakistanis', 796095, 200813818, '92', 'PKR', 'Pakistan Rupee', '₨', 'UR', 'Urdu', 'pk'),
('PW', 'Palau', 'PLW', '585', 'Melekeok - Palau State Capital', 'Palauans', 459, 21964, '680', 'USD', 'United States Dollar', '$', 'EN', 'English', 'pw'),
('PS', 'Palestinian, State of', 'PSE', '275', '-', 'Palestinians', 5860, 5052776, '972', 'ILS', 'Israeli New Shekel', '₪', 'EN', 'English', 'ps'),
('PA', 'Panama', 'PAN', '591', 'Panama', 'Panamanians', 75420, 4162618, '507', 'PAB', 'Panamanian Balboa', 'B/.', 'ES', 'Spanish', 'pa'),
('PG', 'Papua New Guinea', 'PNG', '598', 'Port Moresby', 'Papua New Guineans', 462840, 8418346, '675', 'PGK', 'Papua New Guinean Kina', 'K', 'EN', 'English', 'pg'),
('PY', 'Paraguay', 'PRY', '600', 'Asuncion', 'Paraguayans', 406752, 6896908, '595', 'PYG', 'Paraguayan GuaranÍ', '₲', 'ES', 'Spanish', 'py'),
('PE', 'Peru', 'PER', '604', 'Lima', 'Peruvians', 1285216, 32551815, '51', 'PEN', 'Peruvian Nuevo Sol', 'S/', 'ES', 'Spanish', 'pe'),
('PH', 'Philippines', 'PHL', '608', 'Manila', 'Filipinos', 300000, 106512074, '63', 'PHP', 'Philippine Peso', '₱', 'EN', 'English', 'ph'),
('PN', 'Pitcairn', 'PCN', '612', 'Adamstown', 'Pitcairn Islanders', 47, 54, '872', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'pn'),
('PL', 'Poland', 'POL', '616', 'Warsaw', 'Poles', 312685, 38104832, '48', 'PLN', 'Polish Zloty', 'zł', 'PL', 'Polish', 'pl'),
('PT', 'Portugal', 'PRT', '620', 'Lisbon', 'Portuguese', 92090, 10291196, '351', 'EUR', 'Euro', '€', 'PT', 'Portuguese', 'pt'),
('PR', 'Puerto Rico', 'PRI', '630', 'San Juan', 'Puerto Ricans', 13790, 3659007, '1939', 'USD', 'United States Dollar', '$', 'ES', 'Spanish', 'pr'),
('QA', 'Qatar', 'QAT', '634', 'Doha', 'Qataris', 11586, 2694849, '974', 'QAR', 'Qatari Riyal', 'QR', 'AR', 'Arabic', 'qa'),
('RE', 'Réunion', 'REU', '638', 'Saint-denis', 'Réunionese', 2512, 883247, '262', 'EUR', 'Euro', '€', 'EN', 'English', 're'),
('RO', 'Romania', 'ROU', '642', 'Bucharest', 'Romanians', 238391, 19580634, '40', 'RON', 'Romanian New Lei', 'RON', 'RO', 'Romanian', 'ro'),
('RU', 'Russian Federation', 'RUS', '643', 'Moscow', 'Russians', 17098242, 143964709, '7', 'RUB', 'Russian Rouble', '₽', 'RU', 'Russian', 'ru'),
('RW', 'Rwanda', 'RWA', '646', 'Kigali', 'Rwandans', 26338, 12501156, '250', 'RWF', 'Rwandan Franc', 'FRw', 'FR', 'French', 'rw'),
('BL', 'Saint Barthelemy', 'BLM', '652', 'Gustavia', 'Barthelemois', 21, 8450, '590', 'EUR', 'Euro', '€', 'FR', 'French', 'gp'),
('SH', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'Jamestown', 'Saint Helenians', 122, 4074, '290', 'SHP', 'Saint Helena Pound', '£', 'EN', 'English', 'sh'),
('KN', 'Saint Kitts and Nevis', 'KNA', '659', 'Basseterre', 'Kittitians or Nevisians', 261, 55850, '1869', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'kn'),
('LC', 'Saint Lucia', 'LCA', '662', 'Castries', 'Saint Lucians', 616, 179667, '1758', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'lc'),
('MF', 'Saint Martin (French Part)', 'MAF', '663', 'Marigot', 'Saint-Martinois', 54, 33100, '590', 'EUR', 'Euro', '€', 'FR', 'French', 'gp'),
('PM', 'Saint Pierre and Miquelon', 'SPM', '666', 'Saint-pierre', 'Saint-Pierrais or Miquelonnais', 242, 6342, '508', 'EUR', 'Euro', '€', 'FR', 'French', 'pm'),
('VC', 'Saint Vincent and the Grenadines', 'VCT', '670', 'Kingstown', 'Saint Vincentians', 389, 110200, '1784', 'XCD', 'East Caribbean Dollar', '$', 'EN', 'English', 'vc'),
('WS', 'Samoa', 'WSM', '882', 'Apia', 'Samoans', 2831, 197695, '685', 'WST', 'Samoan Tala', 'WS$', 'EN', 'English', 'ws'),
('SM', 'San Marino', 'SMR', '674', 'San Marino', 'Sammarinese', 61, 33557, '378', 'EUR', 'Euro', '€', 'IT', 'Italian', 'sm'),
('ST', 'Sao Tome and Principe', 'STP', '678', 'Sao Tome', 'Sao Tomeans', 964, 208818, '239', 'STD', 'Droba', 'Db', 'PT', 'Portuguese', 'st'),
('SA', 'Saudi Arabia', 'SAU', '682', 'Riyadh', 'Saudis', 2149690, 33554343, '966', 'SAR', 'Saudi Riyal', 'SR', 'AR', 'Arabic', 'sa'),
('SN', 'Senegal', 'SEN', '686', 'Dakar', 'Somalis', 196722, 16294270, '221', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'sn'),
('RS', 'Serbia', 'SRB', '688', 'Belgrade', 'Serbians', 77474, 8762027, '381', 'RSD', 'Serbian Dinar', 'din', 'SR', 'Serbian', 'rs'),
('SC', 'Seychelles', 'SYC', '690', 'Victoria', 'Seychellois', 455, 95235, '248', 'SCR', 'Seychelles Rupee', 'SR', 'FR', 'French', 'sc'),
('SL', 'Sierra Leone', 'SLE', '694', 'Freetown', 'Sammarinese', 71740, 7719729, '232', 'SLL', 'Sierra Leonean Leone', 'Le', 'EN', 'English', 'sl'),
('SG', 'Singapore', 'SGP', '702', 'Singapore', 'Singaporeans', 697, 5791901, '65', 'SGD', 'Singapore Dollar', '$', 'EN', 'English', 'sg'),
('SX', 'Sint Maarten (Dutch Part)', 'SXM', '534', 'Philipsburg', 'Sint Maartener', 34, 40552, '1721', 'ANG', 'Nl Antillian Guilder', 'ƒ', 'NL', 'Dutch', 'sx'),
('SK', 'Slovakia', 'SVK', '703', 'Bratislava', 'Sierra Leoneans', 49035, 5449816, '421', 'EUR', 'Euro', '€', 'SK', 'Slovak', 'sk'),
('SI', 'Slovenia', 'SVN', '705', 'Ljubljana', 'Slovenes', 20273, 2081260, '386', 'EUR', 'Euro', '€', 'SL', 'Slovene', 'si'),
('SB', 'Solomon Islands', 'SLB', '90', 'Honiara', 'Solomon Islanders', 28896, 623281, '677', 'SBD', 'Solomon Islands Dollar', '$', 'EN', 'English', 'sb'),
('SO', 'Somalia', 'SOM', '706', 'Mogadishu', 'Somalilanders', 637657, 15181925, '252', 'SOS', 'Somali Shilling', 'Sh.So.', 'AR', 'Arabic', 'so'),
('ZA', 'South Africa', 'ZAF', '710', 'Cape Town', 'South Africans', 1219090, 57398421, '27', 'ZAR', 'South African Rand', 'R', 'AF', 'Afrikaans', 'za'),
('GS', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'Grytviken', 'South Georgian or South Sandwich Islander', 3903, 100, '-', 'GBP', 'Pound Sterling', '£', 'EN', 'English', 'gs'),
('SS', 'South Sudan', 'SSD', '728', 'Juba', 'South Sudanese', 644329, 12919053, '211', 'SSP', 'South Sudanese Pound', 'SD', 'EN', 'English', 'ss'),
('ES', 'Spain', 'ESP', '724', 'Madrid', 'Spaniards', 505370, 46397452, '34', 'EUR', 'Euro', '€', 'ES', 'Spanish', 'es'),
('LK', 'Sri Lanka', 'LKA', '144', 'Sri Jayewardenepura Kotte', 'Sri Lankans', 65610, 20950041, '94', 'LKR', 'Sri Lanka Rupee', 'රු', 'TA', 'Tamil', 'lk'),
('SD', 'Sudan', 'SDN', '729', 'Khartoum', 'Sudanese', 1861484, 41511526, '249', 'SDG', 'Sudanese Pound', 'SD', 'AR', 'Arabic', 'sd'),
('SR', 'Suriname', 'SUR', '740', 'Paramaribo', 'Surinamers', 163820, 568301, '597', 'SRD', 'Surinamese Dollar', '$', 'NL', 'Dutch', 'sr'),
('SJ', 'Svalbard and Jan Mayen', 'SJM', '744', 'Longyearbyen', 'Slovakians', 62045, 2667, '47', 'NOK', 'Norwegian Krone', 'kr', 'NO', 'Norwegian', 'sj'),
('SE', 'Sweden', 'SWE', '752', 'Stockholm', 'Swedes', 450295, 9982709, '46', 'SEK', 'Swedish Krona', 'kr', 'SV', 'Swedish', 'se'),
('CH', 'Switzerland', 'CHE', '756', 'Bern', 'Swiss', 41277, 8544034, '41', 'CHF', 'Swiss Franc', 'Fr.', 'DE', 'German', 'ch'),
('SY', 'Syrian Arab Republic', 'SYR', '760', 'Damascus', 'Syrians', 185180, 18284407, '963', 'SYP', 'Syrian Pound', 'LS', 'AR', 'Arabic', 'sy'),
('TW', 'Taiwan (Province of China)', 'TWN', '158', 'Taipei', 'Taiwanese', 35980, 23694089, '886', 'TWD', 'Taiwan Dollar', 'NT$', 'ZH', 'Chinese Tw', 'tw'),
('TJ', 'Tajikistan', 'TJK', '762', 'Dushanbe', 'Tajikistanis', 143100, 9107211, '992', 'TJS', 'Tajikistani Somoni', 'ЅM', 'FA', 'Persian', 'tj'),
('TZ', 'Tanzania, United Republic of', 'TZA', '834', 'Dodoma', 'Tanzanians', 947300, 59091392, '255', 'TZS', 'Tanzanian Shilling', 'TSh', 'EN', 'English', 'tz'),
('TH', 'Thailand', 'THA', '764', 'Bangkok', 'Thai', 513120, 69183173, '66', 'THB', 'Thai Baht', '฿', 'TH', 'Thai', 'th'),
('TL', 'Timor-Leste', 'TLS', '626', 'Dili', 'Timorese', 14874, 1324094, '670', 'NZD', 'New Zealand Dollar', '$', 'PT', 'Portuguese', 'tl'),
('TG', 'Togo', 'TGO', '768', 'Lome', 'Togolese', 56785, 7990926, '228', 'XOF', 'Cfa Franc Bceao', 'CFA', 'FR', 'French', 'tg'),
('TK', 'Tokelau', 'TKL', '772', '-', 'Tokelauans', 12, 1319, '690', 'NZD', 'New Zealand Dollar', '$', 'EN', 'English', 'tk'),
('TO', 'Tonga', 'TON', '776', 'Nuku\'alofa', 'Tongans', 747, 109008, '676', 'TOP', 'Tongan Pa\'anga', 'T$', 'EN', 'English', 'to'),
('TT', 'Trinidad and Tobago', 'TTO', '780', 'Port of Spain', 'Trinidadians or Tobagonians', 5128, 1372598, '1868', 'TTD', 'Trinidad/tobago Dollar', '$', 'EN', 'English', 'tt'),
('TN', 'Tunisia', 'TUN', '788', 'Tunis', 'Tunisians', 163610, 11659174, '216', 'TND', 'Tunisian Dinar', 'DT', 'AR', 'Literary Arabic', 'tn'),
('TR', 'Turkey', 'TUR', '792', 'Ankara', 'Turks', 783562, 81916871, '90', 'TRY', 'Turkish Lira', '₺', 'TR', 'Turkish', 'tr'),
('TM', 'Turkmenistan', 'TKM', '795', 'Ashgabat', 'Turkmens', 488100, 5851466, '993', 'TMT', 'Turkmenistani Manat', 'T', 'RU', 'Russian', 'tm'),
('TC', 'Turks and Caicos Islands', 'TCA', '796', 'Cockburn Town', 'Turks and Caicos Islanders', 948, 35963, '1649', 'USD', 'United States Dollar', '$', 'EN', 'English', 'tc'),
('TV', 'Tuvalu', 'TUV', '798', 'Funafuti', 'Tuvaluans', 26, 11287, '688', 'AUD', 'Australian Dollar', '$', 'EN', 'Tuvaluan English', 'tv'),
('UG', 'Uganda', 'UGA', '800', 'Kampala', 'Ugandans', 241038, 44270563, '256', 'UGX', 'Ugandan Shilling', 'USh', 'EN', 'English', 'ug'),
('UA', 'Ukraine', 'UKR', '804', 'Kiev', 'Ukrainians', 603550, 44009214, '380', 'UAH', 'Ukrainian Hryvnia', '₴', 'UK', 'Ukrainian', 'ua'),
('AE', 'United Arab Emirates', 'ARE', '784', 'Abu Dhabi', 'Emirians', 83600, 9541615, '971', 'AED', 'United Arab Emirates Dirham', 'د.إ', 'AR', 'Arabic', 'ae'),
('GB', 'United Kingdom of Great Britain and Northern Ireland', 'GBR', '826', 'London', 'British', 243610, 66573504, '44', 'GBP', 'British Pound', '£', 'EN', 'English', 'gb'),
('UM', 'United States Minor Outlying Islands', 'UMI', '581', '-', '‎American Islander', 34.2, 300, '-', 'USD', 'United States Dollar', '$', 'EN', 'English', 'um'),
('US', 'United States of America', 'USA', '840', 'Washington, D.C.', 'Americans', 9826675, 326766748, '1', 'USD', 'United States Dollar', '$', 'EN', 'English', 'us'),
('UY', 'Uruguay', 'URY', '858', 'Montevideo', 'Uruguayans', 176215, 3469551, '598', 'UYI', 'Uruguay Peso En Unidades Indexadas', '$', 'ES', 'Spanish', 'uy'),
('UZ', 'Uzbekistan', 'UZB', '860', 'Tashkent', 'Uzbekistanis', 447400, 32364996, '998', 'UZS', 'Uzbekistan Som', 'som', 'UZ', 'Uzbek', 'uz'),
('VU', 'Vanuatu', 'VUT', '548', 'Port-vila', 'Ni-Vanuatu', 12189, 282117, '678', 'VUV', 'Vanuatu Vatu', 'VT', 'FR', 'French', 'vu'),
('VE', 'Venezuela (Bolivarian Republic of)', 'VEN', '862', 'Caracas', 'Venezuelans', 912050, 32381221, '58', 'VEF', 'Venezuelan Bolivar Fuerte', 'Bs.S.', 'ES', 'Spanish', 've'),
('VN', 'Viet Nam', 'VNM', '704', 'Ha Noi', 'Vietnamese', 331210, 96491146, '84', 'VND', 'Vietnamese Dong', '₫', 'VI', 'Vietnamese', 'vn'),
('VG', 'Virgin Islands (British)', 'VGB', '92', 'Road Town', 'British Virgin Islanders', 151, 31719, '1284', 'USD', 'United States Dollar', '$', 'EN', 'English', 'vg'),
('VI', 'Virgin Islands (U.S.)', 'VIR', '850', 'Charlotte Amalie', 'U.S. Virgin Islanders', 1910, 104914, '1340', 'USD', 'United States Dollar', '$', 'EN', 'English', 'vi'),
('WF', 'Wallis and Futuna', 'WLF', '876', 'Mata\'utu', 'Wallisians or Futunans', 142, 11683, '681', 'XPF', 'Cfp Franc', '₣', 'FR', 'French', 'wf'),
('EH', 'Western Sahara', 'ESH', '732', 'Laayoune / El Aaiun', 'Sahrawis', 266000, 567421, '21', 'MAD', 'Moroccan Dirham', 'DH', 'ES', 'Spanish', 'eh'),
('YE', 'Yemen', 'YEM', '887', 'Sanaa', 'Yemenis', 527968, 28915284, '967', 'YER', 'Yemeni Rial', '﷼', 'AR', 'Arabic', 'ye'),
('ZM', 'Zambia', 'ZMB', '894', 'Lusaka', 'Zambians', 752618, 17609178, '260', 'ZMW', 'Zambian Kwacha', 'K', 'EN', 'English', 'zm'),
('ZW', 'Zimbabwe', 'ZWE', '716', 'Harare', 'Zimbabweans', 390757, 16913261, '263', 'ZWD', 'Zimbabwe Dollar', '$', 'EN', 'English', 'zw');

-- --------------------------------------------------------

--
-- Table structure for table `FAVOURITE_LIST`
--

CREATE TABLE `FAVOURITE_LIST` (
  `FAVOURITE_ID` varchar(10) NOT NULL,
  `CATEGORY_ID` int(50) NOT NULL,
  `FAVOURITE_NAME` varchar(400) NOT NULL,
  `FAVOURITE_IMAGE_ICON` varchar(400) NOT NULL,
  `FAVOURITE_MINI_STATEMENT` text NOT NULL,
  `FAVOURITE_WEBURL` varchar(400) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FAVOURITE_LIST`
--

INSERT INTO `FAVOURITE_LIST` (`FAVOURITE_ID`, `CATEGORY_ID`, `FAVOURITE_NAME`, `FAVOURITE_IMAGE_ICON`, `FAVOURITE_MINI_STATEMENT`, `FAVOURITE_WEBURL`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('FAV100', 1, 'Photography', 'Photography.jpg', 'NA', 'NA', '2020-06-21', '19:00:00'),
('FAV126', 3, 'Wonder Woman 1984', 'WonderWoman1984.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV127', 9, 'Big Hero 6', 'BigHero6.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV128', 9, 'Frozen 2', 'Frozen2.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV129', 9, 'Incredibles 2', 'Incredibles2.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV130', 9, 'Zootropolis', 'Zootropolis.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV131', 7, 'Kota Factory', 'KotaFactory.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV132', 7, 'Mirzapur', 'Mirzapur.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV133', 7, 'Panchayat', 'Panchayat.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV134', 7, 'The Family Man', 'TheFamilyMan.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV135', 7, 'TVF Pitchers', 'TVFPitchers.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV136', 11, 'Hbo Hits', 'HboHits.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV137', 11, 'Star Plus', 'StarPlus.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV138', 11, 'Star Sports3', 'StarSports3.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV139', 6, 'Kaun Banega Crorepati', 'KaunBanegaCrorepati.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV140', 6, 'Naagin', 'Naagin.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV141', 11, 'Taarak Mehta Ooltah Chashmah', 'TaarakMehtaOoltahChashmah.jpg', 'NA', 'NA', '2020-04-26', '21:00:00'),
('FAV142', 11, 'Yeh Rishta Kya Kehlat', 'YehRishtaKyaKehlat.jpg', 'NA', 'NA', '2020-04-26', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `FORGOT_PASSWORD`
--

CREATE TABLE `FORGOT_PASSWORD` (
  `USER_LOGIN_ID` varchar(200) NOT NULL,
  `PROFILE_ID` varchar(10) DEFAULT NULL,
  `AUTH_KEY` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FORGOT_PASSWORD`
--

INSERT INTO `FORGOT_PASSWORD` (`USER_LOGIN_ID`, `PROFILE_ID`, `AUTH_KEY`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('sanadebashis@gmail.com', 'PFwqgx6j', '376485', '2020-09-02', '21:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `POST_BASIC`
--

CREATE TABLE `POST_BASIC` (
  `POST_ID` varchar(10) NOT NULL,
  `POST_TYPE` varchar(20) NOT NULL,
  `POST_STATUS` varchar(20) NOT NULL,
  `POST_PRIVACY` varchar(20) NOT NULL,
  `POST_AUTHOR` varchar(200) NOT NULL,
  `POST_TITLE` text NOT NULL,
  `POST_TEXT` text NOT NULL,
  `POST_LOCATION` varchar(100) DEFAULT NULL,
  `POST_PARENT` varchar(10) DEFAULT NULL,
  `POST_HAVEANYCHILD` tinyint(1) NOT NULL DEFAULT '0',
  `POST_ISACOMMUNITYPOST` tinyint(1) NOT NULL DEFAULT '0',
  `POST_HAVEANYIMAGES` tinyint(1) DEFAULT '0',
  `POST_NUMBEROFIMAGES` int(10) DEFAULT '0',
  `POST_HAVEANYVIDEOS` tinyint(1) DEFAULT '0',
  `POST_NUMBEROFVIDEOS` int(10) DEFAULT '0',
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POST_BASIC`
--

INSERT INTO `POST_BASIC` (`POST_ID`, `POST_TYPE`, `POST_STATUS`, `POST_PRIVACY`, `POST_AUTHOR`, `POST_TITLE`, `POST_TEXT`, `POST_LOCATION`, `POST_PARENT`, `POST_HAVEANYCHILD`, `POST_ISACOMMUNITYPOST`, `POST_HAVEANYIMAGES`, `POST_NUMBEROFIMAGES`, `POST_HAVEANYVIDEOS`, `POST_NUMBEROFVIDEOS`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PS10dsme', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '22:36:58'),
('PS10dyrd', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'disha4', 'disha4', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-09-03', '19:36:50'),
('PS10n38q', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '18:43:03'),
('PS11rqpd', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS3j1b7x', 0, 0, 1, 1, 0, 0, '2020-08-18', '23:08:14'),
('PS11rygz', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:51:10'),
('PS120jry', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF2xdtbm', '', '', 'NA', 'NULL', 0, 0, 0, 0, 0, 0, '2020-09-02', '22:34:33'),
('PS1213n2', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'sdfsd', 'sdfsd', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-18', '23:07:53'),
('PS13hbzh', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'ericaworldvideo1', 'ericaworldvideo1', 'NA', 'NULL', 0, 0, 0, 0, 1, 1, '2020-09-03', '20:05:30'),
('PS13qm0u', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '19:14:58'),
('PS13zlz5', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'jghjghjgh', 'ghjghjgh', 'NA', 'NULL', 1, 0, 1, 3, 0, 0, '2020-08-19', '13:41:23'),
('PS13zt2u', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '15:20:15'),
('PS14cyvw', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF35iwkp', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-01', '17:33:17'),
('PS14gapf', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '15:32:16'),
('PS14gi36', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'sa2', 'sa2', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-04', '11:34:52'),
('PS14gsqz', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-18', '23:03:44'),
('PS14lab2', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Sara Ali Khan ', 'Third Post', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-21', '12:28:06'),
('PS15p4z7', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF2xdtbm', '', '', 'NA', 'NULL', 0, 0, 0, 0, 0, 0, '2020-09-02', '22:35:00'),
('PS15yxa6', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'CXVXC', 'VXCVXCVXC', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:24:22'),
('PS163aex', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Sample20200823', 'Sample20200823_content', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-08-23', '22:36:09'),
('PS16gxrl', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PSxz2ftk', 0, 0, 1, 1, 0, 0, '2020-09-12', '13:43:27'),
('PS16jzt3', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF2xdtbm', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-02', '00:01:10'),
('PS17ko7l', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '14:50:31'),
('PS17pis3', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'batman', 'batman', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-02', '21:44:53'),
('PS180xs6', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-16', '21:34:50'),
('PS18cakr', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF2xdtbm', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-15', '23:00:44'),
('PS18cca7', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Sara Ali Khan', 'Second Post', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-21', '12:26:24'),
('PS18et8r', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '22:36:31'),
('PS18f6xt', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PSiwmm0k', 0, 0, 1, 1, 0, 0, '2020-09-04', '11:34:16'),
('PS19gdcb', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '15:37:47'),
('PS1a0ld9', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF1t4y1m', 'Post1', 'Post1', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-31', '18:32:38'),
('PS1aecf7', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-02', '21:18:14'),
('PS1aivy7', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Sushant Sing Rajput', 'In Memory of Sushant Sing Rajput', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-21', '12:09:10'),
('PS1aj5sa', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'samplevideo1', 'samplevideo1', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-09-03', '20:55:26'),
('PS1ak8d6', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PSbzcg0u', 0, 0, 1, 1, 0, 0, '2020-08-18', '23:09:05'),
('PS1bqxko', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS21jeuc', 0, 0, 1, 1, 0, 0, '2020-08-29', '16:20:21'),
('PS1bzskc', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS4vo4nc', 0, 0, 0, 0, 1, 1, '2020-06-19', '21:31:08'),
('PS1dkxox', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF35iwkp', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-01', '17:35:17'),
('PS1dycs7', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-07', '17:41:19'),
('PS1rerbo', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-04', '11:54:28'),
('PS1rjk99', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '19:46:28'),
('PS1rwkx3', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'leonardo1', 'leonardo1', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-03', '20:02:07'),
('PS1t8tc9', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS2ww2po', 0, 0, 1, 1, 0, 0, '2020-06-15', '17:45:47'),
('PS1tf9w7', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '16:01:33'),
('PS1thcbc', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS10dyrd', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:36:50'),
('PS1tig88', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '18:43:23'),
('PS1twqjz', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '19:09:15'),
('PS1tzy8t', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '19:15:14'),
('PS1u4f8w', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PSbzcg0u', 0, 0, 0, 0, 1, 1, '2020-08-18', '23:09:05'),
('PS1v9g9x', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS21jeuc', 0, 0, 1, 1, 0, 0, '2020-08-29', '16:20:21'),
('PS1vv45m', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-07', '17:40:30'),
('PS1vvfe6', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS4vo4nc', 0, 0, 0, 0, 1, 1, '2020-06-19', '21:31:08'),
('PS1vzark', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-03', '21:08:23'),
('PS1w0omt', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 0, 0, 1, 1, '2020-09-11', '19:17:33'),
('PS1w4ioe', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF2xdtbm', 'NA', 'NA', 'NA', 'NULL', 0, 0, 0, 0, 1, 1, '2020-09-15', '23:10:33'),
('PS1x7pz4', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Sara Ali Khan', '5 th post', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-21', '12:32:48'),
('PS1xcf5d', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-09', '17:49:52'),
('PS1xcqz9', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF2xdtbm', '', 'this  is  my sister', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-02', '22:37:54'),
('PS1xu882', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF2xdtbm', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-15', '23:07:18'),
('PS1y3mmk', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS3n7wr3', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:01:20'),
('PS1z3hpx', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS3n9l8r', 0, 0, 1, 1, 0, 0, '2020-09-03', '20:53:48'),
('PS1zfwl0', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '19:15:08'),
('PS1ztqt4', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', '', '', 'NA', 'NULL', 0, 0, 0, 0, 1, 1, '2020-08-29', '13:35:10'),
('PS202lts', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '22:36:27'),
('PS206h7i', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS2ww2po', 0, 0, 1, 1, 0, 0, '2020-06-15', '17:45:47'),
('PS216d0v', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '22:21:08'),
('PS21aeia', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '18:45:12'),
('PS21bdae', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '18:42:47'),
('PS21bmrt', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-04', '11:47:43'),
('PS21e56d', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS3ikms7', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:55:35'),
('PS21ecoe', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-09', '17:44:50'),
('PS21jeuc', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', '', '', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-08-29', '16:20:21'),
('PS21ki52', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'ananya pandey3', 'ananya pandey3', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:40:18'),
('PS21nhka', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 0, 0, 0, 0, '2020-09-07', '18:05:00'),
('PS226c2t', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS1aj5sa', 0, 0, 0, 0, 1, 1, '2020-09-03', '20:55:26'),
('PS226dlx', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-15', '22:28:35'),
('PS23dfri', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'sample45', 'sample45', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-09-03', '20:54:56'),
('PS23lj8o', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-12', '16:04:29'),
('PS23nqwr', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'disha1', 'disha1', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:17:48'),
('PS23rb4h', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-09', '17:40:47'),
('PS256hjm', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF1t4y1m', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-16', '20:47:41'),
('PS25cind', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS23dfri', 0, 0, 1, 1, 0, 0, '2020-09-03', '20:54:56'),
('PS25mxn7', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS27anbj', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:02:01'),
('PS25u6br', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:50:29'),
('PS25uodv', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-07', '18:44:05'),
('PS263fpe', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'ericaworldvideo2', 'ericaworldvideo2', 'NA', 'NULL', 0, 0, 0, 0, 1, 1, '2020-09-03', '20:08:34'),
('PS271to8', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-02', '21:13:59'),
('PS2723z9', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS3j1b7x', 0, 0, 1, 1, 0, 0, '2020-08-18', '23:08:14'),
('PS27anbj', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'cxvxcvxc', 'cxvxcvxc', 'NA', 'NULL', 1, 0, 1, 2, 0, 0, '2020-08-19', '14:02:01'),
('PS27bhdw', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFwqgx6j', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-02', '21:37:57'),
('PS27lgyl', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS13zlz5', 0, 0, 1, 1, 0, 0, '2020-08-19', '13:41:23'),
('PS27qiev', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS2vqta6', 0, 0, 1, 1, 0, 0, '2020-08-19', '18:30:38'),
('PS281qzl', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS2x46pj', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:34:11'),
('PS292e9n', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '18:43:09'),
('PS295hbu', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:38:51'),
('PS297r71', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-12', '15:50:55'),
('PS29ahs8', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'sample video1', 'sample video1', 'NA', 'NULL', 0, 0, 0, 0, 1, 1, '2020-08-19', '18:24:06'),
('PS29eer6', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF4byhr3', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-07-06', '22:15:48'),
('PS29o0tl', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '22:27:55'),
('PS29oc07', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-07', '18:39:38'),
('PS29rnc7', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS8syeec', 0, 0, 0, 0, 1, 1, '2020-06-18', '18:16:06'),
('PS29wwym', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS2z8drc', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:57:26'),
('PS2a2bqm', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '19:46:12'),
('PS2a4omb', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'sample24', 'sample24', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '16:17:21'),
('PS2m47ee', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '14:50:24'),
('PS2myhs9', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '22:29:06'),
('PS2n8zad', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', '', '', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-29', '13:59:47'),
('PS2ngprg', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-02', '21:19:54'),
('PS2nm2mq', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'sa1', 'sa1', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-04', '11:34:36'),
('PS2nn6gb', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF4byhr3', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-07-06', '22:16:19'),
('PS2nqe3x', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '14:47:30'),
('PS2ouej1', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS2yxo78', 0, 0, 1, 1, 0, 0, '2020-08-19', '17:54:26'),
('PS2pd02z', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '15:55:39'),
('PS2pjoj8', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '15:47:32'),
('PS2qs3hr', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-12', '16:04:48'),
('PS2qtxoo', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-07', '18:43:12'),
('PS2r1k6k', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-07', '17:45:35'),
('PS2rhmia', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS10dyrd', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:36:50'),
('PS2ssykj', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'disha2', 'disha2', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:24:40'),
('PS2svqp1', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '15:07:49'),
('PS2swg93', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS8syeec', 0, 0, 1, 1, 0, 0, '2020-06-18', '18:16:06'),
('PS2t1kyo', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS2z8drc', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:57:26'),
('PS2uwr0f', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '16:09:32'),
('PS2vegtd', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS2yxo78', 0, 0, 1, 1, 0, 0, '2020-08-19', '17:54:26'),
('PS2vqta6', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'sample post85', 'sample post85', 'NA', 'NULL', 1, 0, 1, 1, 1, 1, '2020-08-19', '18:30:38'),
('PS2wkzov', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'xcvxcv', 'xvxcvxc', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:01:49'),
('PS2wtnq4', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFwqgx6j', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-02', '21:38:36'),
('PS2ww2po', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Taj Lake Palace', 'The Lake Palace was built between 1743 and 1746[1] under the direction of the Maharana Jagat Singh II (62nd successor to the royal dynasty of Mewar) of Udaipur, Rajasthan as a summer palace. It was initially called Jagniwas or Jan Niwas after its founder.\r\n\r\nThe palace was constructed facing east, allowing its inhabitants to pray to Surya, the Hindu sun god, at the crack of dawn.[2] The successive rulers used this palace as their summer resort, holding their regal durbars in its courtyards lined with columns, pillared terraces, fountains, and gardens.\r\n\r\nThe walls made of black and white marbles are adorned by semi-precious stones and ornamented niches. Gardens, fountains, pillared terraces and columns line its courtyards', 'NA', 'NULL', 1, 0, 1, 2, 0, 0, '2020-06-15', '17:45:47'),
('PS2x0i7t', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFwqgx6j', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-02', '21:39:09'),
('PS2x46pj', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'ananya pandey2', 'ananya pandey2', 'NA', 'NULL', 1, 0, 1, 2, 0, 0, '2020-08-19', '14:34:11'),
('PS2x4eop', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS27anbj', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:02:01'),
('PS2xmqmy', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS23dfri', 0, 0, 1, 1, 0, 0, '2020-09-03', '20:54:56'),
('PS2yjrzw', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'asdas', 'asdas', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '13:39:31'),
('PS2yxo78', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'sample24', 'sample24', 'NA', 'NULL', 1, 0, 1, 2, 0, 0, '2020-08-19', '17:54:26'),
('PS2z59b2', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS2ww2po', 0, 0, 1, 1, 0, 0, '2020-06-15', '17:45:47'),
('PS2z858r', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFwqgx6j', '', 'AAAAyyyyeeeee Bolte', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-02', '21:42:45'),
('PS2z8drc', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'sara1', 'sara1', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-09-03', '19:57:26'),
('PS2zjgo2', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS2x46pj', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:34:11'),
('PS2znzwd', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS2vqta6', 0, 0, 0, 0, 1, 1, '2020-08-19', '18:30:38'),
('PS30x8it', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 0, 0, 0, 0, '2020-09-07', '18:16:15'),
('PS30xyqy', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-02', '21:12:32'),
('PS316c9x', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '15:43:50'),
('PS31ms1h', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS3ikms7', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:55:35'),
('PS32inpl', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'sdasdasdas', 'dasdasdas', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '15:33:40'),
('PS32qrb1', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS2ww2po', 0, 0, 1, 1, 0, 0, '2020-06-15', '17:45:47'),
('PS32ru0q', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-02', '21:16:01'),
('PS32x4rp', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '15:55:51'),
('PS33hy7g', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '16:07:08'),
('PS34ng4l', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-07', '17:38:20'),
('PS34rsh8', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-02', '21:21:21'),
('PS35a22c', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '22:33:57'),
('PS35ktu4', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS1aj5sa', 0, 0, 0, 0, 1, 1, '2020-09-03', '20:55:26'),
('PS3ikms7', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'pranutun1', 'pranutun1', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-09-03', '19:55:35'),
('PS3isaio', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Tiktok Video1', 'Tiktok Video1', 'NA', 'NULL', 0, 0, 0, 0, 1, 1, '2020-06-18', '18:13:20'),
('PS3it041', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'sa4', 'sa4', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-04', '11:40:04'),
('PS3it896', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '19:00:40'),
('PS3iyt80', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF1t4y1m', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-16', '20:47:53'),
('PS3j1b7x', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'cxvxcv', 'xcvxc', 'NA', 'NULL', 1, 0, 1, 3, 0, 0, '2020-08-18', '23:08:14'),
('PS3j61p9', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '14:47:11'),
('PS3j7k3l', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS21jeuc', 0, 0, 1, 1, 0, 0, '2020-08-29', '16:20:21'),
('PS3jaez3', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:27:20'),
('PS3javww', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '16:09:47'),
('PS3k928o', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '22:30:06'),
('PS3ka52v', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-18', '22:47:41'),
('PS3krwz6', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-07', '18:42:04'),
('PS3l452c', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS3n9l8r', 0, 0, 1, 1, 0, 0, '2020-09-03', '20:53:48'),
('PS3l94wa', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS3n7wr3', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:01:20'),
('PS3mekt1', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '15:56:04'),
('PS3mhlmz', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:46:55'),
('PS3n35o4', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Sara Ali Khan', '6 th post', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-21', '12:35:13'),
('PS3n7wr3', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'hfghfg', 'fghfghfg', 'NA', 'NULL', 1, 0, 1, 2, 0, 0, '2020-08-19', '14:01:20'),
('PS3n9l8r', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'sample32', 'sample32', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-09-03', '20:53:48'),
('PS3zc2se', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Sara Ali Khan', 'My Cute Princess', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-21', '12:18:47'),
('PS3zjg2n', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '15:17:06'),
('PS42v9wy', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'disha3', 'disha3', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:32:37'),
('PS48nc3z', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'sample23', 'sample23', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '17:53:52'),
('PS4ih120', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '19:11:14'),
('PS4ungd1', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '16:09:10'),
('PS4vo4nc', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Sample Post One', 'Sample Post One', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-06-19', '21:31:08'),
('PS6394nq', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:48:59'),
('PS676ddm', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PSiwmm0k', 0, 0, 1, 1, 0, 0, '2020-09-04', '11:34:16'),
('PS6g9uyd', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Sara Ali Khan', '4 th post', 'NA', 'NULL', 0, 0, 0, 0, 0, 0, '2020-06-21', '12:29:49'),
('PS6lmu2d', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '14:49:15'),
('PS6u6rxv', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '15:18:23'),
('PS6wo01l', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '18:42:54'),
('PS6woqxy', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '14:47:42'),
('PS852a7b', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 0, 0, 0, 0, '2020-09-07', '18:32:35'),
('PS86y4mq', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS4vo4nc', 0, 0, 0, 0, 1, 1, '2020-06-19', '21:31:08'),
('PS8dyz4a', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS21jeuc', 0, 0, 1, 1, 0, 0, '2020-08-29', '16:20:21'),
('PS8nojn8', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '19:14:28'),
('PS8sdtd8', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PSbzcg0u', 0, 0, 1, 1, 0, 0, '2020-08-18', '23:09:05'),
('PS8syeec', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Video with image', 'Video with image', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-06-18', '18:16:06'),
('PS8taf1v', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:31:32'),
('PS90cvko', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', '', '', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-29', '13:33:33'),
('PS91thuv', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'sa3', 'sa3', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-04', '11:35:11'),
('PSbz0fkf', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '18:43:16'),
('PSbzcg0u', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'czxczxc', 'zxczxczx', 'NA', 'NULL', 1, 0, 1, 2, 1, 1, '2020-08-18', '23:09:05'),
('PSc0oioi', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:40:12'),
('PScuknxx', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-09', '18:20:24'),
('PSd06ye0', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PSxz2ftk', 0, 0, 0, 0, 1, 1, '2020-09-12', '13:43:27'),
('PSdzyq7v', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '16:05:15'),
('PSe46fpl', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'nvidia new card', 'nvidia new card', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-03', '19:04:16'),
('PSegdw9h', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'tryrtyrt', 'tryrtyrt', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '13:40:15'),
('PSfysbl0', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '16:10:09'),
('PSg1590z', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Shanaya Kapoor', 'Shanaya Kapoor CUte\r\nCras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac \r\n                                                     nisi vulputate fringilla. Donec lacinia congue felis in faucibus\r\n                                                     Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. \r\n                                                     Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac \r\n                                                     nisi vulputate fringilla. Donec lacinia congue felis in faucibusCras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. ', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-06-21', '12:37:53'),
('PSgoztc4', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS13zlz5', 0, 0, 1, 1, 0, 0, '2020-08-19', '13:41:23'),
('PSgxw4ad', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS2vqta6', 0, 0, 1, 1, 0, 0, '2020-08-19', '18:30:38'),
('PSgxygp3', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-08', '01:04:52'),
('PShweb9s', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS8syeec', 0, 0, 1, 1, 0, 0, '2020-06-18', '18:16:07'),
('PShwzivx', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-09', '17:38:38'),
('PSi74bg9', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-11', '14:49:29'),
('PSibl5b4', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'disha', 'disha sample', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-02', '21:45:59'),
('PSibo8gh', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 0, 0, 0, 0, '2020-09-07', '18:27:05'),
('PSin6qjy', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS3j1b7x', 0, 0, 1, 1, 0, 0, '2020-08-18', '23:08:14'),
('PSis0hhj', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '16:10:58'),
('PSiwmm0k', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'asdasd', 'sdasda', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-09-04', '11:34:16'),
('PSvuth4h', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'ananya pandey1', 'ananya pandey1', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '14:33:49'),
('PSwbao21', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFwqgx6j', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-02', '21:39:56'),
('PSwg4vi9', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS163aex', 0, 0, 1, 1, 0, 0, '2020-08-23', '22:36:09'),
('PSxpni5b', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 0, 0, 0, 0, '2020-09-07', '18:27:51'),
('PSxpq54x', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:29:44'),
('PSxudyh7', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'NA', 'NA', 'NA', 'PS13zlz5', 0, 0, 1, 1, 0, 0, '2020-08-19', '13:41:23'),
('PSxz2ftk', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'Post1', 'Post1', 'NA', 'NULL', 1, 0, 0, 0, 0, 0, '2020-09-12', '13:43:27'),
('PSy8ceg4', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-09', '17:48:53'),
('PSyg4ncy', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '15:26:31'),
('PSykisap', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF18fbnz', 'asdas', 'asdas', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-19', '15:24:19'),
('PSynvowl', 'POST_TYPE_GENERAL', 'POST_STATUS_ACTIVE', 'POST_PRIVACY_PUBLIC', 'PF4byhr3', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-08-08', '23:32:09'),
('PSzpamfc', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'NULL', 0, 0, 1, 1, 0, 0, '2020-09-10', '13:44:45'),
('PSzs49bm', 'POST_TYPE_GENERAL', 'POST_STATUS_REMOVED', 'POST_PRIVACY_PUBLIC', 'PFy1kxsv', 'NA', 'NA', 'NA', 'PS163aex', 0, 0, 1, 1, 0, 0, '2020-08-23', '22:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `POST_COMMENT`
--

CREATE TABLE `POST_COMMENT` (
  `COMMENT_ID` varchar(10) NOT NULL,
  `PROFILE_ID` varchar(10) NOT NULL,
  `POST_ID` varchar(10) NOT NULL,
  `COMMENT_STATUS` varchar(100) NOT NULL,
  `COMMENT_PARENT` varchar(10) DEFAULT NULL,
  `COMMENT_HAVEANYCHILD` tinyint(1) DEFAULT '0',
  `COMMENT_HAVEANYIMAGES` tinyint(1) DEFAULT '0',
  `COMMENT_NUMBEROFIMAGES` varchar(10) DEFAULT '0',
  `COMMENT_HAVEANYVIDEOS` tinyint(1) DEFAULT '0',
  `COMMENT_NUMBEROFVIDEOS` varchar(10) DEFAULT '0',
  `COMMENT_STATEMENT` text NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POST_COMMENT`
--

INSERT INTO `POST_COMMENT` (`COMMENT_ID`, `PROFILE_ID`, `POST_ID`, `COMMENT_STATUS`, `COMMENT_PARENT`, `COMMENT_HAVEANYCHILD`, `COMMENT_HAVEANYIMAGES`, `COMMENT_NUMBEROFIMAGES`, `COMMENT_HAVEANYVIDEOS`, `COMMENT_NUMBEROFVIDEOS`, `COMMENT_STATEMENT`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('CM11mpms', 'PFy1kxsv', 'PS1aivy7', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', '', '2020-08-15', '16:07:07'),
('CM12a0og', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello5', '2020-09-12', '14:37:51'),
('CM13mh08', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello i am shananya aaaa', '2020-07-29', '17:39:07'),
('CM13mv06', 'PF18fbnz', 'PS3l94wa', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dfgdf', '2020-09-01', '17:57:11'),
('CM14heij', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:28'),
('CM16kiev', 'PFy1kxsv', 'PS2x0i7t', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Nice Post', '2020-09-03', '21:22:21'),
('CM19n99z', 'PFy1kxsv', 'PS1aivy7', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hellotest4', '2020-08-06', '18:53:01'),
('CM1a6kqg', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello world', '2020-07-30', '02:02:02'),
('CM1bhrws', 'PFwqgx6j', 'PSwbao21', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hvyyfutcljvhggui;', '2020-09-06', '16:26:47'),
('CM1c3td8', 'PFy1kxsv', 'PS3zc2se', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dfsdfsd', '2020-08-15', '17:48:18'),
('CM1dikr6', 'PFy1kxsv', 'PS3it041', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'xcvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', '2020-09-04', '22:28:04'),
('CM1dtoa8', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:18'),
('CM1eiasq', 'PFy1kxsv', 'PS1t8tc9', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'helloworld', '2020-08-06', '19:02:03'),
('CM1rp1ky', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:14'),
('CM1sb184', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'undefined', '2020-08-03', '23:35:40'),
('CM1t4lgf', 'PFy1kxsv', 'PS3it041', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'YouTube allows users to upload, view, rate, share, add to playlists, report, comment on videos, and subscribe to other users. It offers a wide variety of user-generated and corporate media videos. Available content includes video clips, TV show clips, music videos, short and documentary films, audio recordings, movie trailers, live streams, and other content such as video blogging, short original videos, and educational videos. Most content on YouTube is uploaded by individuals, but media corporations including CBS, the BBC, Vevo, and Hulu offer some of their material via YouTube as part of the YouTube partnership program. Unregistered users can only watch (but not upload) videos on the site, while registered users are also permitted to upload an unlimited number of videos and add comments to videos. Videos that are age-restricted are available only to registered users affirming themselves to be at least 18 years old.\n\nYouTube and selected creators earn advertising revenue from Google AdSense, a program which targets ads according to site content and audience. The vast majority of its videos are free to view, but there are exceptions, including subscription-based premium channels, film rentals, as well as YouTube Music and YouTube Premium, subscription services respectively offering premium and ad-free music streaming, and ad-free access to all content, including exclusive content commissioned from notable personalities. As of February 2017, there were more than 400 hours of content uploaded to YouTube each minute, and one billion hours of content being watched on YouTube every day. As of August 2018, the website is ranked as the second-most popular site in the world, according to Alexa Internet, just behind Google.[2] As of May 2019, more than 500 hours of video content are uploaded to YouTube every minute.[7] Based on reported quarterly advertising revenue, YouTube is estimated to have US$15 billion in annual revenues.', '2020-09-04', '21:55:09'),
('CM1t59e7', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:10'),
('CM1t8s1v', 'PFy1kxsv', 'PS2ww2po', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'helloworld', '2020-08-15', '17:51:09'),
('CM1trqen', 'PF18fbnz', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'HelloWorld 4', '2020-07-30', '14:47:34'),
('CM1u3nnm', 'PFy1kxsv', 'PS16gxrl', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello1', '2020-09-12', '14:39:20'),
('CM1v50nz', 'PFy1kxsv', 'PS1aivy7', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', '', '2020-08-15', '17:23:00'),
('CM1vibdm', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello6', '2020-09-12', '14:43:57'),
('CM1vn5lg', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello4', '2020-09-12', '14:35:01'),
('CM1w53tr', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'undefined', '2020-08-03', '23:31:14'),
('CM1z1g18', 'PFy1kxsv', 'PS16gxrl', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello2', '2020-09-12', '14:39:28'),
('CM1z2lg0', 'PFy1kxsv', 'PS21bmrt', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Bollywood me bas dada giri hi chal rahi hai. Ab samay aa gaya hai ki kachra pura saaf ho. Govt. Kuchh guideline tay kare. Manoranjan ki limit ho jisme gaali galauch gande ashlil shabd ya seen na ho. Kisi junior ka shoshan na ho. Aur 80 percent outsider baki 20 percent insider har show aur movie me ho.... Nahi to cencer board use paas hi na kare.\nAkhiri baat indian army ka, bharat ki garibi ka sadhu santo ya kisi anya majahab ka  aur sikkhon par majaak na udaya jaye chutkule na banaye jaye. Ye sharmsaar kaaam hai...\nBharat me celebrities ko apni aukat me rahakar kaaam karna honga.. ye hindustan hai. Kisi ke baap ki nahi hai mumbai.... \nMai kisi state ka nahi pure bharat ka hu aur ye pura bharat bhi mera hai.\nJay shree ram....\nJay hind jay bharat', '2020-09-04', '21:38:50'),
('CM1zgipa', 'PFy1kxsv', 'PS4vo4nc', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', '\"There has been some progress made towards this objective but the disengagement process has yet not been completed,\" Ministry of External Affairs (MEA) spokesperson Anurag Srivastava told an online media briefing when asked about the Chinese claim on Tuesday.\n\nHe also said the senior commanders of the two militaries will be meeting in the \"near future\" to work out steps to complete the process of disengagement.\n\n\"As we have stated earlier, the maintenance of peace and tranquillity in the border areas is the basis of our bilateral relationship,\" Mr Srivastava said.\n\n\"Therefore, we expect that the Chinese side will sincerely work with us for complete disengagement and de-escalation and full restoration of peace and tranquillity in the border areas at the earliest as agreed to by the Special Representatives,\" he added.', '2020-07-31', '01:08:05'),
('CM201tuw', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:16'),
('CM201vqh', 'PFy1kxsv', 'PS1rerbo', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'The Unreal Engine is a game engine developed by Epic Games, first showcased in the 1998 first-person shooter game Unreal. Although initially developed for first-person shooters, it has been used in a variety of other genres, including platformers, fighting games, MMORPGs, and other RPGs. Written in C++, the Unreal Engine features a high degree of portability, supporting a wide range of platforms.\n\nThe latest release is Unreal Engine 4, which launched in 2014 under a subscription model. Since 2015, it can be downloaded for free, with its source code available on GitHub. Epic allows for its use in commercial products based on a royalty model, typically asking developers for 5% of revenues from sales, though with the success of Fortnite, which has become a testbed for Unreal Engine for Epic, Epic waives this fee for developers that publish their games through the Epic Games Store. On May 13th, 2020, Epic announced that their portion of royalties for games developed in Unreal Engine are waived until developers have earned their first US$1 million in revenue, retroactively applying to January 1st, 2020. Unreal Engine 5 is scheduled for release by late 2021.', '2020-09-04', '22:12:39'),
('CM212rpw', 'PFy1kxsv', 'PS1x7pz4', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello test', '2020-08-15', '17:06:52'),
('CM2193be', 'PFy1kxsv', 'PS16gxrl', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello4', '2020-09-12', '14:39:38'),
('CM21wz74', 'PFy1kxsv', 'PS1aivy7', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'cxvxcvxc', '2020-08-15', '17:48:25'),
('CM225rts', 'PFy1kxsv', 'PS2nm2mq', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animation, and Ajax.[3] It is free, open-source software using the permissive MIT License.[4] As of May 2019, jQuery is used by 73% of the 10 million most popular websites.[5] Web analysis indicates that it is the most widely deployed JavaScript library by a large margin, having 3 to 4 times more usage than any other JavaScript library.[5][6]\n\njQuery\'s syntax is designed to make it easier to navigate a document, select DOM elements, create animations, handle events, and develop Ajax applications. jQuery also provides capabilities for developers to create plug-ins on top of the JavaScript library. This enables developers to create abstractions for low-level interaction and animation, advanced effects and high-level, themeable widgets. The modular approach to the jQuery library allows the creation of powerful dynamic web pages and Web applications.\n\nThe set of jQuery core features—DOM element selections, traversal and manipulation—enabled by its selector engine (named \"Sizzle\" from v1.3), created a new \"programming style\", fusing algorithms and DOM data structures. This style influenced the architecture of other JavaScript frameworks like YUI v3 and Dojo, later stimulating the creation of the standard Selectors API.[7] Later, this style has been enhanced with a deeper algorithm-data fusion in an heir of jQuery, the D3.js framework.', '2020-09-04', '22:05:41'),
('CM239hv0', 'PFy1kxsv', 'PS1x7pz4', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello', '2020-08-15', '16:06:28'),
('CM23msm8', 'PFy1kxsv', 'PS3it041', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hat face when someone pays a compliment, outside- \'oh stop it *giggle*\', inside- \'go on worship me\' ', '2020-09-04', '22:25:10'),
('CM244bws', 'PFy1kxsv', 'PS91thuv', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '2020-09-04', '22:28:18'),
('CM25kibf', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hellotest4', '2020-08-06', '18:52:11'),
('CM2732l3', 'PFy1kxsv', 'PS16gxrl', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello5', '2020-09-12', '14:39:45'),
('CM2822yo', 'PFy1kxsv', 'PS3it041', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'My fitness peanut butters are amazing specially the smooth one', '2020-09-04', '22:25:30'),
('CM291dd6', 'PFy1kxsv', 'PSiwmm0k', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animation, and Ajax.[3] It is free, open-source software using the permissive MIT License.[4] As of May 2019, jQuery is used by 73% of the 10 million most popular websites.[5] Web analysis indicates that it is the most widely deployed JavaScript library by a large margin, having 3 to 4 times more usage than any other JavaScript library.[5][6]\n\njQuery\'s syntax is designed to make it easier to navigate a document, select DOM elements, create animations, handle events, and develop Ajax applications. jQuery also provides capabilities for developers to create plug-ins on top of the JavaScript library. This enables developers to create abstractions for low-level interaction and animation, advanced effects and high-level, themeable widgets. The modular approach to the jQuery library allows the creation of powerful dynamic web pages and Web applications.\n\nThe set of jQuery core features—DOM element selections, traversal and manipulation—enabled by its selector engine (named \"Sizzle\" from v1.3), created a new \"programming style\", fusing algorithms and DOM data structures. This style influenced the architecture of other JavaScript frameworks like YUI v3 and Dojo, later stimulating the creation of the standard Selectors API.[7] Later, this style has been enhanced with a deeper algorithm-data fusion in an heir of jQuery, the D3.js framework.', '2020-09-04', '22:05:52'),
('CM2973ue', 'PFy1kxsv', 'PS14gi36', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animation, and Ajax.[3] It is free, open-source software using the permissive MIT License.[4] As of May 2019, jQuery is used by 73% of the 10 million most popular websites.[5] Web analysis indicates that it is the most widely deployed JavaScript library by a large margin, having 3 to 4 times more usage than any other JavaScript library.[5][6]\n\njQuery\'s syntax is designed to make it easier to navigate a document, select DOM elements, create animations, handle events, and develop Ajax applications. jQuery also provides capabilities for developers to create plug-ins on top of the JavaScript library. This enables developers to create abstractions for low-level interaction and animation, advanced effects and high-level, themeable widgets. The modular approach to the jQuery library allows the creation of powerful dynamic web pages and Web applications.\n\nThe set of jQuery core features—DOM element selections, traversal and manipulation—enabled by its selector engine (named \"Sizzle\" from v1.3), created a new \"programming style\", fusing algorithms and DOM data structures. This style influenced the architecture of other JavaScript frameworks like YUI v3 and Dojo, later stimulating the creation of the standard Selectors API.[7] Later, this style has been enhanced with a deeper algorithm-data fusion in an heir of jQuery, the D3.js framework.', '2020-09-04', '22:05:30'),
('CM29cs22', 'PFy1kxsv', 'PS3it041', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animation, and Ajax.[3] It is free, open-source software using the permissive MIT License.[4] As of May 2019, jQuery is used by 73% of the 10 million most popular websites.[5] Web analysis indicates that it is the most widely deployed JavaScript library by a large margin, having 3 to 4 times more usage than any other JavaScript library.[5][6]\n\njQuery\'s syntax is designed to make it easier to navigate a document, select DOM elements, create animations, handle events, and develop Ajax applications. jQuery also provides capabilities for developers to create plug-ins on top of the JavaScript library. This enables developers to create abstractions for low-level interaction and animation, advanced effects and high-level, themeable widgets. The modular approach to the jQuery library allows the creation of powerful dynamic web pages and Web applications.\n\nThe set of jQuery core features—DOM element selections, traversal and manipulation—enabled by its selector engine (named \"Sizzle\" from v1.3), created a new \"programming style\", fusing algorithms and DOM data structures. This style influenced the architecture of other JavaScript frameworks like YUI v3 and Dojo, later stimulating the creation of the standard Selectors API.[7] Later, this style has been enhanced with a deeper algorithm-data fusion in an heir of jQuery, the D3.js framework.', '2020-09-04', '22:04:25'),
('CM2hs8dj', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Hello Sonia', '2020-07-29', '16:25:41'),
('CM2n7x8s', 'PFy1kxsv', 'PS3it041', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animation, and Ajax.[3] It is free, open-source software using the permissive MIT License.[4] As of May 2019, jQuery is used by 73% of the 10 million most popular websites.[5] Web analysis indicates that it is the most widely deployed JavaScript library by a large margin, having 3 to 4 times more usage than any other JavaScript library.[5][6]\n\njQuery\'s syntax is designed to make it easier to navigate a document, select DOM elements, create animations, handle events, and develop Ajax applications. jQuery also provides capabilities for developers to create plug-ins on top of the JavaScript library. This enables developers to create abstractions for low-level interaction and animation, advanced effects and high-level, themeable widgets. The modular approach to the jQuery library allows the creation of powerful dynamic web pages and Web applications.\n\nThe set of jQuery core features—DOM element selections, traversal and manipulation—enabled by its selector engine (named \"Sizzle\" from v1.3), created a new \"programming style\", fusing algorithms and DOM data structures. This style influenced the architecture of other JavaScript frameworks like YUI v3 and Dojo, later stimulating the creation of the standard Selectors API.[7] Later, this style has been enhanced with a deeper algorithm-data fusion in an heir of jQuery, the D3.js framework.', '2020-09-04', '22:04:16'),
('CM2ozqli', 'PF18fbnz', 'PS3l94wa', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dfgdf', '2020-09-01', '17:57:13'),
('CM2p2juv', 'PFy1kxsv', 'PS1x7pz4', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'sadas', '2020-08-15', '19:02:44'),
('CM2pgcsy', 'PFy1kxsv', 'PS3it041', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'sdffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '2020-09-04', '22:03:40'),
('CM2pkq75', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello3', '2020-09-12', '14:27:26'),
('CM2tbcge', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:27'),
('CM2tfsam', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello', '2020-09-01', '17:51:45'),
('CM2um8i6', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hi oi', '2020-09-01', '17:52:59'),
('CM2v5dq7', 'PF18fbnz', 'PS3l94wa', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dfgdf', '2020-09-01', '17:57:12'),
('CM2yl3xu', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello7', '2020-09-12', '14:46:17'),
('CM2zkp5b', 'PFy1kxsv', 'PS1aivy7', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'helloworld', '2020-08-15', '17:41:50'),
('CM30nf96', 'PFy1kxsv', 'PS180xs6', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'This is real jammu and kashmir', '2020-08-16', '21:50:43'),
('CM313131', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'helloworld test', '2020-08-06', '18:45:33'),
('CM31fill', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello1', '2020-09-12', '14:27:17'),
('CM31fuc9', 'PFy1kxsv', 'PS2x0i7t', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'again post comment', '2020-09-03', '21:23:25'),
('CM32kb0u', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:17'),
('CM33a40a', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello', '2020-09-12', '14:27:13'),
('CM34mbei', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2020-09-12', '13:46:50'),
('CM34yipy', 'PFy1kxsv', 'PS2nm2mq', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'jQuery is a JavaScript library designed to simplify HTML DOM tree traversal and manipulation, as well as event handling, CSS animation, and Ajax.[3] It is free, open-source software using the permissive MIT License.[4] As of May 2019, jQuery is used by 73% of the 10 million most popular websites.[5] Web analysis indicates that it is the most widely deployed JavaScript library by a large margin, having 3 to 4 times more usage than any other JavaScript library.[5][6]\n\njQuery\'s syntax is designed to make it easier to navigate a document, select DOM elements, create animations, handle events, and develop Ajax applications. jQuery also provides capabilities for developers to create plug-ins on top of the JavaScript library. This enables developers to create abstractions for low-level interaction and animation, advanced effects and high-level, themeable widgets. The modular approach to the jQuery library allows the creation of powerful dynamic web pages and Web applications.\n\nThe set of jQuery core features—DOM element selections, traversal and manipulation—enabled by its selector engine (named \"Sizzle\" from v1.3), created a new \"programming style\", fusing algorithms and DOM data structures. This style influenced the architecture of other JavaScript frameworks like YUI v3 and Dojo, later stimulating the creation of the standard Selectors API.[7] Later, this style has been enhanced with a deeper algorithm-data fusion in an heir of jQuery, the D3.js framework.', '2020-09-04', '22:05:44'),
('CM354ekr', 'PFy1kxsv', 'PS1bzskc', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello cute', '2020-08-15', '20:10:13'),
('CM359ga0', 'PFy1kxsv', 'PS6g9uyd', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dfsd', '2020-08-15', '17:48:08'),
('CM3jbk72', 'PFy1kxsv', 'PS1rerbo', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'saddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2020-09-04', '22:27:21'),
('CM3ksvgj', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2020-09-12', '13:46:44'),
('CM3kwndb', 'PF18fbnz', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'HelloWorld', '2020-07-30', '14:19:58'),
('CM3mwjt5', 'PFwqgx6j', 'PS27bhdw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'great\n', '2020-09-06', '16:23:22'),
('CM3n3ouw', 'PFwqgx6j', 'PSwbao21', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'jiooooooooo', '2020-09-06', '16:25:54'),
('CM3ncnoz', 'PFy1kxsv', 'PS2vqta6', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello', '2020-08-19', '18:38:12'),
('CM44829e', 'PFwqgx6j', 'PS27bhdw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'nqoofhuhlkkanld', '2020-09-06', '16:28:47'),
('CM46yhph', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:15'),
('CM4htbhw', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello world hello', '2020-07-30', '02:05:45'),
('CM6by36g', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:05'),
('CM6egm1d', 'PFy1kxsv', 'PS18cca7', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dsfdsf', '2020-08-15', '17:48:15'),
('CM85696', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Ant-Man and the Wasp is a 2018 American superhero film based on the Marvel Comics characters Scott Lang ', '2020-07-26', '00:29:33'),
('CM856968', 'PF4byhr3', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Sreemoyee is the story of a married homemaker in an urban set-up who lives with her entire family – in-laws, three children and a husband. Her life revolves around her husband who is an egoist and practical and the three grown children. To the world, her family seems nothing short of a dream.[6] However, Sreemoyee soon starts to realize that her very own family takes her for granted and that her world is shallow and lonely. And amidst the quest of caring for their every need, she never took the time to carve her own identity and harness her talent for singing.[7] Sreemoyee is the journey of a woman who embarks on a journey to create an identity for herself - which has more layers than that of a wife and mother – one of that of an individual.[8]', '2020-07-27', '00:29:33'),
('CM85968', 'PF18fbnz', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is the direct sequel to Avengers: Infinity War (2018) and the 22nd film in the Marvel Cinematic Universe (MCU). It was directed by Anthony and Joe Russo and written by Christopher Markus and Stephen McFeely, and features an ensemble cast including Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, and Josh Brolin. In the film, the surviving members of the Avengers and their allies attempt to reverse the damage caused by Thanos in Infinity War.', '2020-07-29', '00:29:33'),
('CMars2wi', 'PFy1kxsv', 'PS3it041', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Healthy snacking with @myfitness\nSwipe➡️ for product details\n.\n.\n.\n.\n#fitness#fashion#localbusiness#promotion#sponsored#instagram#follow#health#healthylifestyle#healthyfood#snacksmart#bodypositivity', '2020-09-04', '22:24:49'),
('CMazt9gd', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello2', '2020-09-12', '14:27:21'),
('CMc9l2mn', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Hello Shanyan 1', '2020-07-29', '17:20:27'),
('CMdvhqmw', 'PFy1kxsv', 'PS16gxrl', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello3', '2020-09-12', '14:39:33'),
('CMe3isqr', 'PFy1kxsv', 'PSiwmm0k', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'sjdashbdjbashdbasjkbhdhhasgdhgasjdghashdashgdashgdashgdhasgjhdgashgdbashgjdasdasdasdasdzxzxczxcasdasdasdasdas', '2020-09-04', '22:06:04'),
('CMg7cqnt', 'PFy1kxsv', 'PS90cvko', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'helloworld', '2020-08-29', '18:47:02'),
('CMgfzaki', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hi', '2020-09-01', '17:52:43'),
('CMgkcf9c', 'PFwqgx6j', 'PS2x0i7t', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Ayyyeee Fatafati\n', '2020-09-06', '16:19:25'),
('CMhxft4w', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:39'),
('CMi0rp69', 'PFy1kxsv', 'PS14lab2', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'sdfsdf', '2020-08-15', '17:48:12'),
('CMi5s7ae', 'PF18fbnz', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'HelloWorld3', '2020-07-30', '14:42:27'),
('CMi5s7af', 'PF18fbnz', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'HelloWorld4', '2020-07-30', '15:25:00'),
('CMiezg1n', 'PFy1kxsv', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'Ramendra Narayan Roy was a kumar (\"prince\") of the Bhawal Estate, a large zamindari in Bengal in modern-day Bangladesh. He was one of three brothers who had inherited the estate from their father. He was popularly known to people as \"mejokumar\". The Bhawal Estate spread over 579 square miles (1,500 km2) and included villages with a population of around 500,000, many of them tenant farmers. The second son, Ramendra Narayan Roy (b. 28 July 1884), was yet to take up the zamindari management when the famous incident of the Bhawal case took place.\n\nRamendra Narayan Roy, second kumar of Bhawal, spent most of his time hunting, in festivities, and with women, having several mistresses. By 1905 he was said to have contracted syphilis. In 1909 he went to Darjeeling to seek treatment, accompanied by his wife, Bibhabati Devi; her brother Satyendranath Banerjee; and a large retinue, but was reported to have died there on 7 May at the age of 25.[1] The reported cause of death was biliary colic (gallstones). His body was supposedly cremated in Darjeeling the next day and customary funerary rites were performed on 8 May.[2]', '2020-07-31', '01:02:03'),
('CMinl2tm', 'PFy1kxsv', 'PSd06ye0', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello88888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888888', '2020-09-12', '15:27:47'),
('CMqn0k0p', 'PFy1kxsv', 'PS29rnc7', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello cute', '2020-08-15', '20:10:20'),
('CMvubaag', 'PF18fbnz', 'PS3l94wa', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'dfgdf', '2020-09-01', '17:57:04'),
('CMvv41hm', 'PF18fbnz', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'HelloWorld6', '2020-07-30', '15:40:00'),
('CMvv41hQ', 'PF18fbnz', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'HelloWorld7', '2020-07-30', '15:45:00'),
('CMvv41ht', 'PF18fbnz', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'HelloWorld2', '2020-07-30', '14:33:27'),
('CMvv41hz', 'PF18fbnz', 'PSg1590z', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'HelloWorld5', '2020-07-30', '15:35:00'),
('CMw387wg', 'PFy1kxsv', 'PS1t8tc9', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'helloworld', '2020-08-06', '19:00:54'),
('CMw3frvk', 'PFy1kxsv', 'PS3n35o4', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'hello sara', '2020-08-06', '19:10:50'),
('CMxbe8f7', 'PF35iwkp', 'PS14cyvw', 'COMMENT_ACTIVE', 'NULL', 0, 0, '0', 0, '0', 'I m d best', '2020-09-01', '17:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `POST_COMMENT_LIKE_DISLIKE`
--

CREATE TABLE `POST_COMMENT_LIKE_DISLIKE` (
  `COMMENT_ID` varchar(10) NOT NULL,
  `TOTAL_LIKES` int(11) NOT NULL,
  `TOTAL_DISLIKE` int(11) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POST_COMMENT_LIKE_DISLIKE`
--

INSERT INTO `POST_COMMENT_LIKE_DISLIKE` (`COMMENT_ID`, `TOTAL_LIKES`, `TOTAL_DISLIKE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('CM11mpms', 0, 0, '2020-08-15', '16:07:07'),
('CM12a0og', 0, 0, '2020-09-12', '14:37:51'),
('CM13mh08', 0, 0, '2020-07-29', '17:39:07'),
('CM13mv06', 0, 0, '2020-09-01', '17:57:11'),
('CM14heij', 0, 0, '2020-09-01', '17:50:28'),
('CM16kiev', 0, 0, '2020-09-03', '21:22:21'),
('CM19n99z', 0, 0, '2020-08-06', '18:53:01'),
('CM1a6kqg', 0, 0, '2020-07-30', '02:02:02'),
('CM1bhrws', 0, 0, '2020-09-06', '16:26:47'),
('CM1c3td8', 0, 0, '2020-08-15', '17:48:18'),
('CM1dikr6', 0, 0, '2020-09-04', '22:28:04'),
('CM1dtoa8', 0, 0, '2020-09-01', '17:50:18'),
('CM1eiasq', 0, 0, '2020-08-06', '19:02:03'),
('CM1rp1ky', 0, 0, '2020-09-01', '17:50:14'),
('CM1sb184', 0, 0, '2020-08-03', '23:35:40'),
('CM1t4lgf', 0, 0, '2020-09-04', '21:55:09'),
('CM1t59e7', 0, 0, '2020-09-01', '17:50:10'),
('CM1t8s1v', 0, 0, '2020-08-15', '17:51:09'),
('CM1trqen', 0, 0, '2020-07-30', '14:47:34'),
('CM1u3nnm', 0, 0, '2020-09-12', '14:39:20'),
('CM1v50nz', 0, 0, '2020-08-15', '17:23:00'),
('CM1vibdm', 0, 0, '2020-09-12', '14:43:57'),
('CM1vn5lg', 0, 0, '2020-09-12', '14:35:01'),
('CM1w53tr', 0, 0, '2020-08-03', '23:31:14'),
('CM1z1g18', 0, 0, '2020-09-12', '14:39:28'),
('CM1z2lg0', 0, 0, '2020-09-04', '21:38:50'),
('CM1zgipa', 0, 0, '2020-07-31', '01:08:05'),
('CM201tuw', 0, 0, '2020-09-01', '17:50:16'),
('CM201vqh', 0, 0, '2020-09-04', '22:12:39'),
('CM212rpw', 0, 0, '2020-08-15', '17:06:52'),
('CM2193be', 0, 0, '2020-09-12', '14:39:38'),
('CM21wz74', 0, 0, '2020-08-15', '17:48:25'),
('CM225rts', 0, 0, '2020-09-04', '22:05:41'),
('CM239hv0', 0, 0, '2020-08-15', '16:06:28'),
('CM23msm8', 0, 0, '2020-09-04', '22:25:10'),
('CM244bws', 0, 0, '2020-09-04', '22:28:18'),
('CM25kibf', 0, 0, '2020-08-06', '18:52:11'),
('CM2732l3', 0, 0, '2020-09-12', '14:39:45'),
('CM2822yo', 0, 0, '2020-09-04', '22:25:30'),
('CM291dd6', 0, 0, '2020-09-04', '22:05:52'),
('CM2973ue', 0, 0, '2020-09-04', '22:05:30'),
('CM29cs22', 0, 0, '2020-09-04', '22:04:25'),
('CM2hs8dj', 0, 0, '2020-07-29', '16:25:41'),
('CM2n7x8s', 0, 0, '2020-09-04', '22:04:16'),
('CM2ozqli', 0, 0, '2020-09-01', '17:57:13'),
('CM2p2juv', 0, 0, '2020-08-15', '19:02:44'),
('CM2pgcsy', 0, 0, '2020-09-04', '22:03:40'),
('CM2pkq75', 0, 0, '2020-09-12', '14:27:26'),
('CM2tbcge', 0, 0, '2020-09-01', '17:50:27'),
('CM2tfsam', 0, 0, '2020-09-01', '17:51:45'),
('CM2um8i6', 0, 0, '2020-09-01', '17:52:59'),
('CM2v5dq7', 0, 0, '2020-09-01', '17:57:12'),
('CM2yl3xu', 0, 0, '2020-09-12', '14:46:17'),
('CM2zkp5b', 0, 0, '2020-08-15', '17:41:50'),
('CM30nf96', 0, 0, '2020-08-16', '21:50:43'),
('CM313131', 0, 0, '2020-08-06', '18:45:33'),
('CM31fill', 0, 0, '2020-09-12', '14:27:17'),
('CM31fuc9', 0, 0, '2020-09-03', '21:23:25'),
('CM32kb0u', 0, 0, '2020-09-01', '17:50:17'),
('CM33a40a', 0, 0, '2020-09-12', '14:27:13'),
('CM34mbei', 0, 0, '2020-09-12', '13:46:50'),
('CM34yipy', 0, 0, '2020-09-04', '22:05:44'),
('CM354ekr', 0, 0, '2020-08-15', '20:10:13'),
('CM359ga0', 0, 0, '2020-08-15', '17:48:08'),
('CM3jbk72', 0, 0, '2020-09-04', '22:27:21'),
('CM3ksvgj', 0, 0, '2020-09-12', '13:46:44'),
('CM3kwndb', 0, 0, '2020-07-30', '14:19:58'),
('CM3mwjt5', 0, 0, '2020-09-06', '16:23:22'),
('CM3n3ouw', 0, 0, '2020-09-06', '16:25:54'),
('CM3ncnoz', 0, 0, '2020-08-19', '18:38:12'),
('CM44829e', 0, 0, '2020-09-06', '16:28:47'),
('CM46yhph', 0, 0, '2020-09-01', '17:50:15'),
('CM4htbhw', 0, 0, '2020-07-30', '02:05:45'),
('CM6by36g', 0, 0, '2020-09-01', '17:50:05'),
('CM6egm1d', 0, 0, '2020-08-15', '17:48:15'),
('CM85696', 0, 0, '2020-07-29', '00:31:41'),
('CMars2wi', 0, 0, '2020-09-04', '22:24:49'),
('CMazt9gd', 0, 0, '2020-09-12', '14:27:21'),
('CMc9l2mn', 0, 0, '2020-07-29', '17:20:27'),
('CMdvhqmw', 0, 0, '2020-09-12', '14:39:33'),
('CMe3isqr', 0, 0, '2020-09-04', '22:06:04'),
('CMg7cqnt', 0, 0, '2020-08-29', '18:47:02'),
('CMgfzaki', 0, 0, '2020-09-01', '17:52:43'),
('CMgkcf9c', 0, 0, '2020-09-06', '16:19:25'),
('CMhxft4w', 0, 0, '2020-09-01', '17:50:39'),
('CMi0rp69', 0, 0, '2020-08-15', '17:48:12'),
('CMi5s7ae', 0, 0, '2020-07-30', '14:42:27'),
('CMi5s7af', 0, 0, '2020-07-30', '15:24:22'),
('CMiezg1n', 0, 0, '2020-07-31', '01:02:03'),
('CMinl2tm', 0, 0, '2020-09-12', '15:27:47'),
('CMqn0k0p', 0, 0, '2020-08-15', '20:10:20'),
('CMvubaag', 0, 0, '2020-09-01', '17:57:04'),
('CMvv41hm', 0, 0, '2020-07-30', '15:40:00'),
('CMvv41hQ', 0, 0, '2020-07-30', '15:45:27'),
('CMvv41ht', 0, 0, '2020-07-30', '14:33:27'),
('CMvv41hz', 0, 0, '2020-07-30', '14:33:27'),
('CMw387wg', 0, 0, '2020-08-06', '19:00:54'),
('CMw3frvk', 0, 0, '2020-08-06', '19:10:50'),
('CMxbe8f7', 0, 0, '2020-09-01', '17:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `POST_COMMENT_MEDIA`
--

CREATE TABLE `POST_COMMENT_MEDIA` (
  `COMMENT_ID` varchar(10) NOT NULL,
  `COMMENT_MEDIA_ID` varchar(10) NOT NULL,
  `COMMENT_MEDIA_TYPE` varchar(200) NOT NULL,
  `COMMENT_MEDIA_NAME` varchar(200) NOT NULL,
  `ALBUM_ID` varchar(10) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `POST_LIKE_DISLIKE`
--

CREATE TABLE `POST_LIKE_DISLIKE` (
  `POST_ID` varchar(10) NOT NULL,
  `TOTAL_LIKES` int(11) NOT NULL,
  `TOTAL_DISLIKE` int(11) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POST_LIKE_DISLIKE`
--

INSERT INTO `POST_LIKE_DISLIKE` (`POST_ID`, `TOTAL_LIKES`, `TOTAL_DISLIKE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PS10dsme', 0, 0, '2020-09-08', '22:36:58'),
('PS10dyrd', 0, 0, '2020-09-03', '19:36:50'),
('PS10n38q', 0, 0, '2020-09-11', '18:43:03'),
('PS11rqpd', 0, 0, '2020-08-18', '23:08:14'),
('PS11rygz', 0, 0, '2020-09-10', '13:51:10'),
('PS120jry', 0, 0, '2020-09-02', '22:34:33'),
('PS1213n2', 0, 0, '2020-08-18', '23:07:53'),
('PS13hbzh', 0, 0, '2020-09-03', '20:05:30'),
('PS13qm0u', 0, 0, '2020-09-11', '19:14:58'),
('PS13zlz5', 0, 0, '2020-08-19', '13:41:23'),
('PS13zt2u', 0, 0, '2020-09-10', '15:20:15'),
('PS14cyvw', 1, 0, '2020-09-01', '17:33:17'),
('PS14gapf', 0, 0, '2020-09-10', '15:32:16'),
('PS14gi36', 0, 0, '2020-09-04', '11:34:52'),
('PS14gsqz', 0, 0, '2020-08-18', '23:03:44'),
('PS14lab2', 0, 0, '2020-06-21', '12:28:06'),
('PS15p4z7', 0, 0, '2020-09-02', '22:35:00'),
('PS15yxa6', 0, 0, '2020-08-19', '14:24:22'),
('PS163aex', 0, 0, '2020-08-23', '22:36:09'),
('PS16gxrl', 0, 0, '2020-09-12', '13:43:27'),
('PS16jzt3', 0, 0, '2020-09-02', '00:01:10'),
('PS17ko7l', 0, 0, '2020-09-11', '14:50:31'),
('PS17pis3', 1, 0, '2020-09-02', '21:44:53'),
('PS18cakr', 0, 0, '2020-09-15', '23:00:44'),
('PS18cca7', 0, 0, '2020-06-21', '12:26:24'),
('PS18et8r', 0, 0, '2020-09-08', '22:36:31'),
('PS18f6xt', 0, 0, '2020-09-04', '11:34:16'),
('PS19gdcb', 0, 0, '2020-09-10', '15:37:48'),
('PS1a0ld9', 0, 0, '2020-08-31', '18:32:38'),
('PS1aecf7', 0, 0, '2020-06-02', '21:18:14'),
('PS1aj5sa', 0, 0, '2020-09-03', '20:55:26'),
('PS1ak8d6', 0, 0, '2020-08-18', '23:09:05'),
('PS1bqxko', 0, 0, '2020-08-29', '16:20:21'),
('PS1dkxox', 0, 0, '2020-09-01', '17:35:17'),
('PS1dycs7', 0, 0, '2020-09-07', '17:41:19'),
('PS1rerbo', 0, 0, '2020-09-04', '11:54:28'),
('PS1rjk99', 0, 0, '2020-09-11', '19:46:28'),
('PS1rwkx3', 0, 0, '2020-09-03', '20:02:07'),
('PS1tf9w7', 0, 0, '2020-09-10', '16:01:33'),
('PS1thcbc', 0, 0, '2020-09-03', '19:36:50'),
('PS1tig88', 0, 0, '2020-09-11', '18:43:23'),
('PS1twqjz', 0, 0, '2020-09-11', '19:09:15'),
('PS1tzy8t', 0, 0, '2020-09-11', '19:15:14'),
('PS1u4f8w', 0, 0, '2020-08-18', '23:09:05'),
('PS1v9g9x', 0, 0, '2020-08-29', '16:20:21'),
('PS1vv45m', 0, 0, '2020-09-07', '17:40:30'),
('PS1vvfe6', 0, 0, '2020-06-19', '21:31:08'),
('PS1vzark', 0, 0, '2020-09-03', '21:08:23'),
('PS1w0omt', 0, 0, '2020-09-11', '19:17:33'),
('PS1w4ioe', 0, 0, '2020-09-15', '23:10:33'),
('PS1x7pz4', 0, 0, '2020-06-21', '12:32:48'),
('PS1xcf5d', 0, 0, '2020-09-09', '17:49:52'),
('PS1xcqz9', 0, 0, '2020-09-02', '22:37:54'),
('PS1xu882', 0, 0, '2020-09-15', '23:07:18'),
('PS1y3mmk', 0, 0, '2020-08-19', '14:01:20'),
('PS1z3hpx', 0, 0, '2020-09-03', '20:53:48'),
('PS1zfwl0', 0, 0, '2020-09-11', '19:15:08'),
('PS1ztqt4', 0, 0, '2020-08-29', '13:35:10'),
('PS202lts', 0, 0, '2020-09-08', '22:36:27'),
('PS216d0v', 0, 0, '2020-09-08', '22:21:08'),
('PS21aeia', 0, 0, '2020-09-11', '18:45:12'),
('PS21bdae', 0, 0, '2020-09-11', '18:42:47'),
('PS21bmrt', 0, 0, '2020-09-04', '11:47:43'),
('PS21e56d', 0, 0, '2020-09-03', '19:55:35'),
('PS21ecoe', 0, 0, '2020-09-09', '17:44:50'),
('PS21jeuc', 0, 0, '2020-08-29', '16:20:21'),
('PS21ki52', 0, 0, '2020-08-19', '14:40:18'),
('PS21nhka', 0, 0, '2020-09-07', '18:05:00'),
('PS226c2t', 0, 0, '2020-09-03', '20:55:26'),
('PS226dlx', 0, 0, '2020-08-15', '22:28:35'),
('PS23dfri', 0, 0, '2020-09-03', '20:54:56'),
('PS23lj8o', 0, 0, '2020-09-12', '16:04:29'),
('PS23nqwr', 0, 0, '2020-09-03', '19:17:48'),
('PS23rb4h', 0, 0, '2020-09-09', '17:40:47'),
('PS256hjm', 0, 0, '2020-08-16', '20:47:41'),
('PS25cind', 0, 0, '2020-09-03', '20:54:56'),
('PS25mxn7', 0, 0, '2020-08-19', '14:02:01'),
('PS25u6br', 0, 0, '2020-09-10', '13:50:29'),
('PS25uodv', 0, 0, '2020-09-07', '18:44:05'),
('PS263fpe', 0, 0, '2020-09-03', '20:08:34'),
('PS271to8', 0, 0, '2020-06-02', '21:13:59'),
('PS2723z9', 0, 0, '2020-08-18', '23:08:14'),
('PS27anbj', 0, 0, '2020-08-19', '14:02:01'),
('PS27bhdw', 1, 0, '2020-09-02', '21:37:57'),
('PS27lgyl', 0, 0, '2020-08-19', '13:41:23'),
('PS27qiev', 0, 0, '2020-08-19', '18:30:38'),
('PS281qzl', 0, 0, '2020-08-19', '14:34:11'),
('PS292e9n', 0, 0, '2020-09-11', '18:43:09'),
('PS295hbu', 0, 0, '2020-09-10', '13:38:51'),
('PS297r71', 0, 0, '2020-09-12', '15:50:55'),
('PS29ahs8', 0, 0, '2020-08-19', '18:24:06'),
('PS29eer6', 0, 0, '2020-07-06', '22:15:48'),
('PS29o0tl', 0, 0, '2020-09-08', '22:27:55'),
('PS29oc07', 0, 0, '2020-09-07', '18:39:38'),
('PS29rnc7', 0, 0, '2020-06-18', '18:16:07'),
('PS29wwym', 0, 0, '2020-09-03', '19:57:26'),
('PS2a2bqm', 0, 0, '2020-09-11', '19:46:12'),
('PS2a4omb', 0, 0, '2020-08-19', '16:17:21'),
('PS2m47ee', 0, 0, '2020-09-11', '14:50:24'),
('PS2myhs9', 0, 0, '2020-09-08', '22:29:06'),
('PS2n8zad', 0, 0, '2020-08-29', '13:59:47'),
('PS2ngprg', 0, 0, '2020-06-02', '21:19:54'),
('PS2nm2mq', 0, 0, '2020-09-04', '11:34:36'),
('PS2nn6gb', 1, 0, '2020-07-06', '22:16:19'),
('PS2nqe3x', 0, 0, '2020-09-11', '14:47:30'),
('PS2ouej1', 0, 0, '2020-08-19', '17:54:26'),
('PS2pd02z', 0, 0, '2020-09-08', '15:55:39'),
('PS2pjoj8', 0, 0, '2020-09-08', '15:47:32'),
('PS2qs3hr', 0, 0, '2020-09-12', '16:04:48'),
('PS2qtxoo', 0, 0, '2020-09-07', '18:43:12'),
('PS2r1k6k', 0, 0, '2020-09-07', '17:45:35'),
('PS2rhmia', 0, 0, '2020-09-03', '19:36:50'),
('PS2ssykj', 0, 0, '2020-09-03', '19:24:40'),
('PS2svqp1', 0, 0, '2020-09-10', '15:07:49'),
('PS2t1kyo', 0, 0, '2020-09-03', '19:57:26'),
('PS2uwr0f', 0, 0, '2020-09-10', '16:09:32'),
('PS2vegtd', 0, 0, '2020-08-19', '17:54:26'),
('PS2vqta6', 0, 0, '2020-08-19', '18:30:38'),
('PS2wkzov', 0, 0, '2020-08-19', '14:01:49'),
('PS2wtnq4', 0, 0, '2020-09-02', '21:38:36'),
('PS2ww2po', 0, 0, '2020-06-15', '17:45:47'),
('PS2x0i7t', 1, 0, '2020-09-02', '21:39:09'),
('PS2x46pj', 0, 0, '2020-08-19', '14:34:11'),
('PS2x4eop', 0, 0, '2020-08-19', '14:02:01'),
('PS2xmqmy', 0, 0, '2020-09-03', '20:54:56'),
('PS2yjrzw', 1, 0, '2020-08-19', '13:39:31'),
('PS2yxo78', 0, 0, '2020-08-19', '17:54:26'),
('PS2z59b2', 0, 0, '2020-06-15', '17:45:47'),
('PS2z858r', 0, 0, '2020-09-02', '21:42:45'),
('PS2z8drc', 0, 0, '2020-09-03', '19:57:26'),
('PS2zjgo2', 0, 0, '2020-08-19', '14:34:11'),
('PS2znzwd', 0, 0, '2020-08-19', '18:30:38'),
('PS30x8it', 0, 0, '2020-09-07', '18:16:15'),
('PS30xyqy', 0, 0, '2020-06-02', '21:12:32'),
('PS316c9x', 0, 0, '2020-09-10', '15:43:50'),
('PS31ms1h', 0, 0, '2020-09-03', '19:55:35'),
('PS32inpl', 0, 0, '2020-08-19', '15:33:40'),
('PS32qrb1', 0, 0, '2020-06-15', '17:45:47'),
('PS32ru0q', 0, 0, '2020-06-02', '21:16:01'),
('PS32x4rp', 0, 0, '2020-09-08', '15:55:51'),
('PS33hy7g', 0, 0, '2020-09-10', '16:07:08'),
('PS34ng4l', 0, 0, '2020-09-07', '17:38:20'),
('PS34rsh8', 0, 0, '2020-06-02', '21:21:21'),
('PS35a22c', 0, 0, '2020-09-08', '22:33:57'),
('PS35ktu4', 0, 0, '2020-09-03', '20:55:26'),
('PS3ikms7', 0, 0, '2020-09-03', '19:55:35'),
('PS3isaio', 0, 0, '2020-06-18', '18:13:20'),
('PS3it041', 0, 0, '2020-09-04', '11:40:04'),
('PS3it896', 0, 0, '2020-09-11', '19:00:40'),
('PS3iyt80', 0, 0, '2020-08-16', '20:47:53'),
('PS3j1b7x', 0, 0, '2020-08-18', '23:08:14'),
('PS3j61p9', 0, 0, '2020-09-11', '14:47:11'),
('PS3j7k3l', 0, 0, '2020-08-29', '16:20:21'),
('PS3jaez3', 0, 0, '2020-09-10', '13:27:20'),
('PS3javww', 0, 0, '2020-09-10', '16:09:47'),
('PS3k928o', 0, 0, '2020-09-08', '22:30:10'),
('PS3ka52v', 0, 0, '2020-08-18', '22:47:41'),
('PS3krwz6', 0, 0, '2020-09-07', '18:42:04'),
('PS3l452c', 0, 0, '2020-09-03', '20:53:48'),
('PS3l94wa', 0, 0, '2020-08-19', '14:01:20'),
('PS3mekt1', 0, 0, '2020-09-08', '15:56:04'),
('PS3mhlmz', 0, 0, '2020-09-10', '13:46:55'),
('PS3n7wr3', 0, 0, '2020-08-19', '14:01:20'),
('PS3n9l8r', 0, 0, '2020-09-03', '20:53:48'),
('PS3zc2se', 0, 0, '2020-06-21', '12:18:47'),
('PS3zjg2n', 0, 0, '2020-09-10', '15:17:06'),
('PS42v9wy', 0, 0, '2020-09-03', '19:32:37'),
('PS48nc3z', 0, 0, '2020-08-19', '17:53:52'),
('PS4ih120', 0, 0, '2020-09-11', '19:11:14'),
('PS4ungd1', 0, 0, '2020-09-10', '16:09:10'),
('PS4vo4nc', 0, 0, '2020-06-19', '21:31:08'),
('PS6394nq', 0, 0, '2020-09-10', '13:48:59'),
('PS676ddm', 0, 0, '2020-09-04', '11:34:16'),
('PS6g9uyd', 0, 0, '2020-06-21', '12:29:49'),
('PS6lmu2d', 0, 0, '2020-09-11', '14:49:15'),
('PS6u6rxv', 0, 0, '2020-09-10', '15:18:23'),
('PS6wo01l', 0, 0, '2020-09-11', '18:42:54'),
('PS6woqxy', 0, 0, '2020-09-11', '14:47:42'),
('PS852a7b', 0, 0, '2020-09-07', '18:32:35'),
('PS86y4mq', 0, 0, '2020-06-19', '21:31:08'),
('PS8dyz4a', 0, 0, '2020-08-29', '16:20:21'),
('PS8nojn8', 0, 0, '2020-09-11', '19:14:28'),
('PS8sdtd8', 0, 0, '2020-08-18', '23:09:05'),
('PS8syeec', 0, 0, '2020-06-18', '18:16:06'),
('PS8taf1v', 0, 0, '2020-09-10', '13:31:32'),
('PS90cvko', 0, 0, '2020-08-29', '13:33:33'),
('PS91thuv', 0, 0, '2020-09-04', '11:35:11'),
('PSbz0fkf', 0, 0, '2020-09-11', '18:43:16'),
('PSbzcg0u', 0, 0, '2020-08-18', '23:09:05'),
('PSc0oioi', 0, 0, '2020-09-10', '13:40:12'),
('PScuknxx', 0, 0, '2020-09-09', '18:20:24'),
('PSd06ye0', 0, 0, '2020-09-12', '13:43:27'),
('PSdzyq7v', 0, 0, '2020-09-10', '16:05:15'),
('PSe46fpl', 0, 0, '2020-09-03', '19:04:16'),
('PSegdw9h', 0, 0, '2020-08-19', '13:40:15'),
('PSfysbl0', 0, 0, '2020-09-10', '16:10:09'),
('PSgoztc4', 0, 0, '2020-08-19', '13:41:23'),
('PSgxw4ad', 0, 0, '2020-08-19', '18:30:38'),
('PSgxygp3', 0, 0, '2020-09-08', '01:04:52'),
('PShwzivx', 0, 0, '2020-09-09', '17:38:38'),
('PSi74bg9', 0, 0, '2020-09-11', '14:49:30'),
('PSibl5b4', 0, 0, '2020-09-02', '21:45:59'),
('PSibo8gh', 0, 0, '2020-09-07', '18:27:05'),
('PSin6qjy', 0, 0, '2020-08-18', '23:08:14'),
('PSis0hhj', 0, 0, '2020-09-10', '16:10:58'),
('PSiwmm0k', 0, 0, '2020-09-04', '11:34:16'),
('PSvuth4h', 0, 0, '2020-08-19', '14:33:49'),
('PSwbao21', 1, 0, '2020-09-02', '21:39:56'),
('PSwg4vi9', 0, 0, '2020-08-23', '22:36:09'),
('PSxpni5b', 0, 0, '2020-09-07', '18:27:51'),
('PSxpq54x', 0, 0, '2020-09-10', '13:29:44'),
('PSxudyh7', 0, 0, '2020-08-19', '13:41:23'),
('PSxz2ftk', 0, 0, '2020-09-12', '13:43:27'),
('PSy8ceg4', 0, 0, '2020-09-09', '17:48:53'),
('PSyg4ncy', 0, 0, '2020-09-10', '15:26:31'),
('PSykisap', 0, 0, '2020-08-19', '15:24:19'),
('PSynvowl', 0, 0, '2020-08-08', '23:32:09'),
('PSzpamfc', 0, 0, '2020-09-10', '13:44:45'),
('PSzs49bm', 0, 0, '2020-08-23', '22:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `POST_MEDIA`
--

CREATE TABLE `POST_MEDIA` (
  `POST_ID` varchar(10) NOT NULL,
  `POST_MEDIA_ID` varchar(10) NOT NULL,
  `POST_MEDIA_TYPE` varchar(200) NOT NULL,
  `POST_MEDIA_NAME` varchar(2000) NOT NULL,
  `ALBUM_ID` varchar(10) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POST_MEDIA`
--

INSERT INTO `POST_MEDIA` (`POST_ID`, `POST_MEDIA_ID`, `POST_MEDIA_TYPE`, `POST_MEDIA_NAME`, `ALBUM_ID`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PS10dsme', 'PMI2t9zsg', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wOF8yMjozNjo1OF8vdG1wL3BocGFaeTdnaw==.jpeg', 'AL1tf4wq', '2020-09-08', '22:36:58'),
('PS10n38q', 'PMI262gnr', 'image/jpeg', 'UEZ5MWt4c3ZfNjE4M18yMDIwLTA5LTExXzE4OjQzOjAzXy90bXAvcGhweXpYTFRF.jpg', 'ALcdf2st', '2020-09-11', '18:43:03'),
('PS11rqpd', 'PMI2pjljb', 'image/jpeg', 'UEYxOGZibnpfNTJjYzZjYjQ5NzEwNThmZmVlNzdkOTQ5ZjE3OGQ1YWNfMjAyMC0wOC0xOF8yMzowODoxNF8vdG1wL3BocDlmUUdaQw==.jpg', 'AL21o2xcv', '2020-08-18', '23:08:14'),
('PS11rygz', 'PMIyelury', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTEwXzEzOjUxOjEwXy90bXAvcGhwTTJHVk54.bmp', 'AL1tf4wq', '2020-09-10', '13:51:10'),
('PS1213n2', 'PMI29wfx1', 'image/jpeg', 'UEYxOGZibnpfNjczMjY2Mi1hcHNhcmEgZHVyZ2EgZ29kZGVzcyB0YXJhXzIwMjAtMDgtMThfMjM6MDc6NTNfL3RtcC9waHB6SHBNaDk=.jpg', 'AL21o2xcv', '2020-08-18', '23:07:53'),
('PS13hbzh', 'PMI295zks', 'video/mp4', 'UEZ5MWt4c3ZfMTE4NDQzODA5XzE5MzU2MDQ0NTUyMDc2NV8xMDM1NjQ2NDg4MTkyMDg2Mjg1X25fMjAyMC0wOS0wM18yMDowNTozMF8vdG1wL3BocEU1YnZKWg==.mp4', 'ALcdf2st', '2020-09-03', '20:05:30'),
('PS13qm0u', 'PMI25m401', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTExXzE5OjE0OjU4Xy90bXAvcGhwQW5YempG.png', 'ALcdf2st', '2020-09-11', '19:14:58'),
('PS13zt2u', 'PMI92cyl5', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTEwXzE1OjIwOjE1Xy90bXAvcGhwYTJQTDli.bmp', 'AL1tf4wq', '2020-09-10', '15:20:15'),
('PS14cyvw', 'PMI1tfa35', 'image/jpeg', 'UEYzNWl3a3BfMTU3OTI2MDcyNjYyMl8yMDIwLTA5LTAxXzE3OjMzOjE3Xy90bXAvcGhwUU5UWklY.jpg', 'ALcc8b1a', '2020-09-01', '17:33:17'),
('PS14gapf', 'PMI2npkon', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTEwXzE1OjMyOjE1Xy90bXAvcGhwZDRoUDU0.bmp', 'AL1tf4wq', '2020-09-10', '15:32:16'),
('PS14gi36', 'PMI140p6w', 'image/jpeg', 'UEZ5MWt4c3ZfNTQ1MTIxNjlfNDM3NDU0NzQzNjc0ODAyXzc0MjE5OTUzNjQ0NDY0NTU4ODVfbl8yMDIwLTA5LTA0XzExOjM0OjUyXy90bXAvcGhweGtPS3g2.jpg', 'ALcdf2st', '2020-09-04', '11:34:52'),
('PS14gsqz', 'PMI1a62mz', 'image/jpeg', 'UEYxOGZibnpfMTdfMDFfNTAxOTM2NjEwbWF4cmVzZGVmYXVsdC1sbF8yMDIwLTA4LTE4XzIzOjAzOjQ0Xy90bXAvcGhwdnZEYllG.jpg', 'AL21o2xcv', '2020-08-18', '23:03:44'),
('PS15yxa6', 'PMI1w2lae', 'image/jpeg', 'UEYxOGZibnpfY3JlYXRpb24tMDNfMjAyMC0wOC0xOV8xNDoyNDoyMl8vdG1wL3BocGptaUxocg==.jpg', 'AL21o2xcv', '2020-08-19', '14:24:22'),
('PS16gxrl', 'PMI2a5zko', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTEyXzEzOjQzOjI3Xy90bXAvcGhwV1huVnZp.png', 'ALcdf2st', '2020-09-12', '13:43:27'),
('PS16jzt3', 'PMI82iwm5', 'image/png', 'UEYyeGR0Ym1faW1hZ2UxNTM3NzkxOTA5NTgzXzIwMjAtMDktMDJfMDA6MDE6MTBfL3RtcC9waHBDUUFnaEQ=.png', 'AL1y8mdp', '2020-09-02', '00:01:10'),
('PS17ko7l', 'PMI19nptv', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyXzIwMjAtMDktMTFfMTQ6NTA6MzFfL3RtcC9waHA3RDFseGk=.jpg', 'ALcdf2st', '2020-09-11', '14:50:31'),
('PS17pis3', 'PMI312gh1', 'image/jpeg', 'UEZ5MWt4c3ZfQmF0bWFuXzAwM18yMDIwLTA5LTAyXzIxOjQ0OjUzXy90bXAvcGhwZ1FGTW45.jpg', 'ALcdf2st', '2020-09-02', '21:44:53'),
('PS18cakr', 'PMI1dlvbo', 'image/png', 'UEYyeGR0Ym1faW1hZ2UxNTM3NzkxOTA5NTgzXzIwMjAtMDktMTVfMjM6MDA6NDRfL3RtcC9waHB5QWlKWGY=.png', 'AL1y8mdp', '2020-09-15', '23:00:44'),
('PS18et8r', 'PMIg71h85', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wOF8yMjozNjozMV8vdG1wL3BocHBCam1vNg==.jpeg', 'AL1tf4wq', '2020-09-08', '22:36:31'),
('PS18f6xt', 'PMI3ijfpd', 'image/jpeg', 'UEZ5MWt4c3ZfMzIwNDczNTRfNjAwMDQ5MDUzNjk2NDk0XzEwNTk3Mzg1MTI2MjgxMjE2MF9uXzIwMjAtMDktMDRfMTE6MzQ6MTZfL3RtcC9waHA5cWd0bVc=.jpg', 'ALcdf2st', '2020-09-04', '11:34:16'),
('PS19gdcb', 'PMI27kdee', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTEwXzE1OjM3OjQ3Xy90bXAvcGhwZUE0b0xS.png', 'AL1tf4wq', '2020-09-10', '15:37:48'),
('PS1a0ld9', 'PMI17xn72', 'image/jpeg', 'UEYxdDR5MW1fMWFmMWMwMzRjNTNmYzZmMjBjMmEyNTA5MTU5ZjgxZDVfMjAyMC0wOC0zMV8xODozMjozOF8vdG1wL3BocHRKN0ZrdQ==.jpg', 'AL40c972', '2020-08-31', '18:32:38'),
('PS1aecf7', 'PMIw055we', 'image/jpeg', 'UEZ5MWt4c3ZfTUsxMV8yMDIwLTA2LTAyXzIxOjE4OjE0Xy90bXAvcGhwWnd3UWhE.jpg', 'AL1rw1sn', '2020-06-02', '21:18:14'),
('PS1ak8d6', 'PMI25gd8j', 'image/jpeg', 'UEYxOGZibnpfU2V0aF8yMDIwLTA4LTE4XzIzOjA5OjA1Xy90bXAvcGhwcUlIRG5t.jpg', 'AL21o2xcv', '2020-08-18', '23:09:05'),
('PS1bqxko', 'PMI2nkms0', 'image/jpeg', 'UEZ5MWt4c3ZfNzU1OTUyMjlfMTQwMjg5OTgzOTMyODIxXzU3NDY1NDY0MjMwMzg2MjA5MzVfbl8yMDIwLTA4LTI5XzE2OjIwOjIxXy90bXAvcGhwQjdwUHc5.jpg', 'ALcdf2st', '2020-08-29', '16:20:21'),
('PS1dkxox', 'PMIaro92l', 'image/jpeg', 'UEYzNWl3a3BfMTU3OTI2MDcxMzY4Ml8yMDIwLTA5LTAxXzE3OjM1OjE3Xy90bXAvcGhwdHpZSDZ5.jpg', 'AL1dr2q9', '2020-09-01', '17:35:17'),
('PS1dycs7', 'PMIwd3fia', 'image/png', 'UEZ5MWt4c3ZfaXRhZWxkMl8yMDIwLTA5LTA3XzE3OjQxOjE5Xy90bXAvcGhwUnVXV1Zz.png', 'ALcdf2st', '2020-09-07', '17:41:19'),
('PS1rerbo', 'PMI212is3', 'image/jpeg', 'UEZ5MWt4c3ZfNzU2MTYxNjBfNzQ0MDMwMzMyNzI5NTQ0XzY2OTg5MTY5MTMxNTgxMzQ2NjZfbl8yMDIwLTA5LTA0XzExOjU0OjI4Xy90bXAvcGhwaFBqVjNu.jpg', 'AL1rw1sn', '2020-09-04', '11:54:28'),
('PS1rjk99', 'PMI23j19i', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0xMV8xOTo0NjoyOF8vdG1wL3BocDZER2R1dA==.webp', 'ALcdf2st', '2020-09-11', '19:46:28'),
('PS1rwkx3', 'PMI34lmxn', 'image/jpeg', 'UEZ5MWt4c3ZfNTg5NzYzZTg2YTMwMzllZjgyNjMxNmI3OWU2MDRiNTdfMjAyMC0wOS0wM18yMDowMjowN18vdG1wL3BocDlIUmIxVg==.jpg', 'ALcdf2st', '2020-09-03', '20:02:07'),
('PS1tf9w7', 'PMI1dgjqp', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTEwXzE2OjAxOjMzXy90bXAvcGhwSzd3NFdK.png', 'AL1tf4wq', '2020-09-10', '16:01:33'),
('PS1thcbc', 'PMI1xusch', 'image/jpeg', 'UEZ5MWt4c3ZfMl8yMDIwLTA5LTAzXzE5OjM2OjQ5Xy90bXAvcGhwMWpFMThH.jpg', 'ALcdf2st', '2020-09-03', '19:36:50'),
('PS1tig88', 'PMI2tsuxn', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTExXzE4OjQzOjIzXy90bXAvcGhwaGJLS2o3.bmp', 'ALcdf2st', '2020-09-11', '18:43:23'),
('PS1twqjz', 'PMI2v4d2u', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTExXzE5OjA5OjE1Xy90bXAvcGhwMjh3emdG.png', 'ALcdf2st', '2020-09-11', '19:09:15'),
('PS1tzy8t', 'PMI1zge2e', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0xMV8xOToxNToxNF8vdG1wL3BocFpqYk10ag==.webp', 'ALcdf2st', '2020-09-11', '19:15:14'),
('PS1u4f8w', 'PMI35gm09', 'video/mp4', 'UEYxOGZibnpfbWFydmVsXzIwMjAtMDgtMThfMjM6MDk6MDVfL3RtcC9waHBhdFRTbWo=.mp4', 'AL21o2xcv', '2020-08-18', '23:09:05'),
('PS1v9g9x', 'PMI1vc1vp', 'image/jpeg', 'UEZ5MWt4c3ZfMTAzOTYwOTMyXzI4OTQ3MTk4OTA5ODAzMV84NTIwNjg4OTQ0ODgyNTczNjAyX25fMjAyMC0wOC0yOV8xNjoyMDoyMV8vdG1wL3BocHUyWnEyVQ==.jpg', 'ALcdf2st', '2020-08-29', '16:20:21'),
('PS1vv45m', 'PMI2oosih', 'image/jpeg', 'UEZ5MWt4c3ZfSU1HXzIwMjAwNjI2XzAxMjc1OF8yMDIwLTA5LTA3XzE3OjQwOjMwXy90bXAvcGhwQUhjdEFk.jpg', 'ALcdf2st', '2020-09-07', '17:40:30'),
('PS1vzark', 'PMIch0vm2', 'image/jpeg', 'UEZ5MWt4c3ZfNTg5NzYzZTg2YTMwMzllZjgyNjMxNmI3OWU2MDRiNTdfMjAyMC0wOS0wM18yMTowODoyM18vdG1wL3BocFp4QkpYUw==.jpg', 'AL1rw1sn', '2020-09-03', '21:08:23'),
('PS1w0omt', 'PMI3ncdom', 'video/mp4', 'UEZ5MWt4c3ZfdmlkXzIwMjAtMDktMTFfMTk6MTc6MzNfL3RtcC9waHBOOGlGNG8=.mp4', 'ALcdf2st', '2020-09-11', '19:17:33'),
('PS1w4ioe', 'PMI2z2mkb', 'video/mp4', 'UEYyeGR0Ym1fOGI1ZDY0ZGYtY2M4Ni00ZTZhLTljYzgtMjkzOWJjMDhmZjg0XzIwMjAtMDktMTVfMjM6MTA6MzNfL3RtcC9waHB1bzZKMlk=.mp4', 'AL2x6ube', '2020-09-15', '23:10:33'),
('PS1xcf5d', 'PMIwdrsd9', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wOV8xNzo0OTo1Ml8vdG1wL3BocFFORWdpeg==.jpeg', 'AL1tf4wq', '2020-09-09', '17:49:52'),
('PS1xcqz9', 'PMI29n79u', 'image/jpeg', 'UEYyeGR0Ym1fUGhvdG8wMzMzXzIwMjAtMDktMDJfMjI6Mzc6NTRfL3RtcC9waHByNzV1eW8=.jpg', 'AL2x6ube', '2020-09-02', '22:37:54'),
('PS1xu882', 'PMI1r9q3a', 'image/jpeg', 'UEYyeGR0Ym1fUGhvdG8wMzc4XzIwMjAtMDktMTVfMjM6MDc6MThfL3RtcC9waHBxQXFlMnQ=.jpg', 'AL2x6ube', '2020-09-15', '23:07:18'),
('PS1y3mmk', 'PMIejywx', 'image/jpeg', 'UEYxOGZibnpfMTA0MTY5MTQ1XzExNzY1NTEzMzMxMjU3MF8xMzAwNTI0NTY0MDcwNDU4MTE3X25fMjAyMC0wOC0xOV8xNDowMToyMF8vdG1wL3BocFlmUzNRbQ==.jpg', 'AL21o2xcv', '2020-08-19', '14:01:20'),
('PS1z3hpx', 'PMI3ma23o', 'image/jpeg', 'UEZ5MWt4c3ZfNTg5NzYzZTg2YTMwMzllZjgyNjMxNmI3OWU2MDRiNTdfMjAyMC0wOS0wM18yMDo1Mzo0OF8vdG1wL3BocEwycmpKUw==.jpg', 'ALcdf2st', '2020-09-03', '20:53:48'),
('PS1zfwl0', 'PMI2v18mt', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTExXzE5OjE1OjA4Xy90bXAvcGhwMVBUSWMx.bmp', 'ALcdf2st', '2020-09-11', '19:15:08'),
('PS1ztqt4', 'PMIe317y2', 'video/mp4', 'UEZ5MWt4c3ZfVmlkMl8yMDIwLTA4LTI5XzEzOjM1OjEwXy90bXAvcGhwdTBlakxM.mp4', 'ALcdf2st', '2020-08-29', '13:35:10'),
('PS202lts', 'PMI2qy3g6', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wOF8yMjozNjoyN18vdG1wL3BocFRhMFZucw==.jpeg', 'AL1tf4wq', '2020-09-08', '22:36:27'),
('PS216d0v', 'PMI19fr9t', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wOF8yMjoyMTowOF8vdG1wL3BocFNUQlgxWQ==.jpeg', 'AL1tf4wq', '2020-09-08', '22:21:08'),
('PS21aeia', 'PMI8347re', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0xMV8xODo0NToxMl8vdG1wL3BocHpaRDc4TA==.webp', 'ALcdf2st', '2020-09-11', '18:45:12'),
('PS21bdae', 'PMI15kpo0', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTExXzE4OjQyOjQ3Xy90bXAvcGhwRUVubFpa.png', 'ALcdf2st', '2020-09-11', '18:42:47'),
('PS21bmrt', 'PMI1berx1', 'image/jpeg', 'UEZ5MWt4c3ZfMjE5ODU0NDBfNDY0MjY2MTA3Mjc5Mzk4XzYxNzUzNjM4MDcwODMyMzMyODBfbl8yMDIwLTA5LTA0XzExOjQ3OjQzXy90bXAvcGhwek01aU9m.jpg', 'AL1tf4wq', '2020-09-04', '11:47:43'),
('PS21e56d', 'PMI220lss', 'image/jpeg', 'UEZ5MWt4c3ZfUHJhbnV0YW4tQmFobF8yMDIwLTA5LTAzXzE5OjU1OjM1Xy90bXAvcGhwTmJ6dW1O.jpg', 'ALcdf2st', '2020-09-03', '19:55:35'),
('PS21ecoe', 'PMI11wm0p', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTA5XzE3OjQ0OjUwXy90bXAvcGhwSEdYS2hL.bmp', 'AL1tf4wq', '2020-09-09', '17:44:50'),
('PS21ki52', 'PMIgxeq7a', 'image/jpeg', 'UEYxOGZibnpfYW4zXzIwMjAtMDgtMTlfMTQ6NDA6MThfL3RtcC9waHBuMEJaQkY=.jpg', 'AL21o2xcv', '2020-08-19', '14:40:18'),
('PS226c2t', 'PMIik69e6', 'video/mp4', 'UEZ5MWt4c3ZfMTE4NDQzODA5XzE5MzU2MDQ0NTUyMDc2NV8xMDM1NjQ2NDg4MTkyMDg2Mjg1X25fMjAyMC0wOS0wM18yMDo1NToyNl8vdG1wL3BocGJRclVzcg==.mp4', 'ALcdf2st', '2020-09-03', '20:55:26'),
('PS226dlx', 'PMI1afc1o', 'image/jpeg', 'UEYxOGZibnpfSmFnZ25hdGhfMjAyMC0wOC0xNV8yMjoyODozNF8vdG1wL3BocGJab00ySw==.jpg', 'AL21o2xcv', '2020-08-15', '22:28:35'),
('PS23lj8o', 'PMI3kxk1t', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0xMl8xNjowNDoyOV8vdG1wL3BocEl4RnhEMA==.jpeg', 'AL1rw1sn', '2020-09-12', '16:04:29'),
('PS23nqwr', 'PMI253uky', 'image/jpeg', 'UEZ5MWt4c3ZfMV8yMDIwLTA5LTAzXzE5OjE3OjQ4Xy90bXAvcGhwSDhxUXRW.jpg', 'ALcdf2st', '2020-09-03', '19:17:48'),
('PS23rb4h', 'PMIdt9ofm', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wOV8xNzo0MDo0N18vdG1wL3BocDF3NkNtUw==.jpeg', 'AL1tf4wq', '2020-09-09', '17:40:47'),
('PS256hjm', 'PMI23qix6', 'image/jpeg', 'UEYxdDR5MW1fQ29tbXVuaXR5X1Byb2ZpbGVfMjAyMC0wOC0xNl8yMDo0Nzo0MV8vdG1wL3BocHZKVGtSZA==.jpg', 'AL1262dw', '2020-08-16', '20:47:41'),
('PS25cind', 'PMIy6m13f', 'image/jpeg', 'UEZ5MWt4c3ZfUFRJMTJfOV8yMDE4XzAwMDA3MEIoMSktMTU5NDcwNjg0N18yMDIwLTA5LTAzXzIwOjU0OjU2Xy90bXAvcGhweHFqVlBD.jpg', 'ALcdf2st', '2020-09-03', '20:54:56'),
('PS25mxn7', 'PMI1e4h3y', 'image/jpeg', 'UEYxOGZibnpfNjYxMTgyNjdfMTQ5NDAxNDEyODk5NDAwXzQwMjM2OTA3ODM2MDk5Mzg0NDVfbl8yMDIwLTA4LTE5XzE0OjAyOjAxXy90bXAvcGhwT3BYenZC.jpg', 'AL21o2xcv', '2020-08-19', '14:02:01'),
('PS25u6br', 'PMI2igewr', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyXzIwMjAtMDktMTBfMTM6NTA6MjlfL3RtcC9waHBHMGNKTlQ=.jpg', 'AL1tf4wq', '2020-09-10', '13:50:29'),
('PS25uodv', 'PMI17pbyv', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTA3XzE4OjQ0OjA1Xy90bXAvcGhwZHd1dEdH.png', 'ALcdf2st', '2020-09-07', '18:44:05'),
('PS263fpe', 'PMI2mrbbd', 'video/mp4', 'UEZ5MWt4c3ZfMTAwNDU0NDg5XzEyMDgyODYwNjI5NTQzNF81MDc5MTM4MTc4NDgxOTQxNTY4X25fMjAyMC0wOS0wM18yMDowODozNF8vdG1wL3BocGlJWHFNVA==.mp4', 'ALcdf2st', '2020-09-03', '20:08:34'),
('PS271to8', 'PMI33ho4f', 'image/jpeg', 'UEZ5MWt4c3ZfTUs3XzIwMjAtMDYtMDJfMjE6MTM6NTlfL3RtcC9waHBJOUM2RnY=.jpg', 'AL1rw1sn', '2020-06-02', '21:13:59'),
('PS2723z9', 'PMI35ehd2', 'image/jpeg', 'UEYxOGZibnpfOTNlYTA4YjA0MmVlMTJiZTU4MWRmNTRhNzQzOTA1N2JfMjAyMC0wOC0xOF8yMzowODoxNF8vdG1wL3BocG5YN1Y3Qg==.jpg', 'AL21o2xcv', '2020-08-18', '23:08:14'),
('PS27bhdw', 'PMI19jjg3', 'image/jpeg', 'UEZ3cWd4NmpfMV8yMDIwLTA5LTAyXzIxOjM3OjU3Xy90bXAvcGhwRzhmNlVH.jpg', 'AL21o2xx', '2020-09-02', '21:37:57'),
('PS27lgyl', 'PMI1v52i3', 'image/jpeg', 'UEYxOGZibnpfUmFtRmluYWxfMjAyMC0wOC0xOV8xMzo0MToyM18vdG1wL3BocHUzOE1HeQ==.jpg', 'AL21o2xcv', '2020-08-19', '13:41:23'),
('PS27qiev', 'PMI2vs4c1', 'image/png', 'UEYxOGZibnpfMDJfMjAyMC0wOC0xOV8xODozMDozOF8vdG1wL3BocDhNd2tCWg==.png', 'AL21o2xcv', '2020-08-19', '18:30:38'),
('PS281qzl', 'PMI3jeiw0', 'image/jpeg', 'UEYxOGZibnpfMmUwNWM4YWJkNzYzYThiOGUwZDA4ZDI4NDUwMjk1MmVfMjAyMC0wOC0xOV8xNDozNDoxMV8vdG1wL3BocHZDUjVDTQ==.jpg', 'AL21o2xcv', '2020-08-19', '14:34:11'),
('PS292e9n', 'PMI1tjwo0', 'image/jpeg', 'UEZ5MWt4c3ZfMV8yMDIwLTA5LTExXzE4OjQzOjA5Xy90bXAvcGhwUVNUS2xr.jpg', 'ALcdf2st', '2020-09-11', '18:43:09'),
('PS295hbu', 'PMI3igq6p', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyXzIwMjAtMDktMTBfMTM6Mzg6NTFfL3RtcC9waHBsNDczR0M=.jpg', 'AL1tf4wq', '2020-09-10', '13:38:51'),
('PS297r71', 'PMI52m728', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0xMl8xNTo1MDo1NV8vdG1wL3BocE92eGs3Mw==.jpeg', 'ALcdf2st', '2020-09-12', '15:50:55'),
('PS29ahs8', 'PMI2tfl8z', 'video/mp4', 'UEYxOGZibnpfdmlkZW9fMjAyMC0wOC0xOV8xODoyNDowNl8vdG1wL3BocE1kQ1lHTg==.mp4', 'AL21o2xcv', '2020-08-19', '18:24:06'),
('PS29eer6', 'PMI14mye3', 'image/jpeg', 'UEY0YnlocjNfdGNzXzIwMjAtMDctMDZfMjI6MTU6NDhfL3RtcC9waHByNWNyOTM=.jpg', 'ALebd1n2', '2020-07-06', '22:15:48'),
('PS29o0tl', 'PMIhxr16a', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTA4XzIyOjI3OjU1Xy90bXAvcGhwbUFxNENB.bmp', 'AL1tf4wq', '2020-09-08', '22:27:55'),
('PS29oc07', 'PMI1sb7gl', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0wN18xODozOTozOF8vdG1wL3BocDlYc3Q1ZA==.webp', 'ALcdf2st', '2020-09-07', '18:39:38'),
('PS29rnc7', 'PMIfsawgm', 'video/mp4', 'UEZ5MWt4c3ZfVklEMTFfMjAyMC0wNi0xOF8xODoxNjowNl8vdG1wL3BocEc0NGRoTg==.mp4', 'ALcdf2st', '2020-06-18', '18:16:07'),
('PS29wwym', 'PMI29jb02', 'image/jpeg', 'UEZ5MWt4c3ZfUFRJMTJfOV8yMDE4XzAwMDA3MEIoMSktMTU5NDcwNjg0N18yMDIwLTA5LTAzXzE5OjU3OjI2Xy90bXAvcGhwZzhsRGZU.jpg', 'ALcdf2st', '2020-09-03', '19:57:26'),
('PS2a2bqm', 'PMI21bnqw', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTExXzE5OjQ2OjEyXy90bXAvcGhwNm5JRzJl.png', 'ALcdf2st', '2020-09-11', '19:46:12'),
('PS2a4omb', 'PMI3mz1o5', 'image/jpeg', 'UEYxOGZibnpfZGN3MHpwMC04MDNmN2Q4Ny1mMGI5LTRhMjAtYmFkYi0wMGRkNTFlZDQ1ZGNfMjAyMC0wOC0xOV8xNjoxNzoyMV8vdG1wL3BocG0xbUQyQQ==.jpg', 'AL21o2xcv', '2020-08-19', '16:17:21'),
('PS2m47ee', 'PMI15lr4y', 'image/jpeg', 'UEZ5MWt4c3ZfMV8yMDIwLTA5LTExXzE0OjUwOjI0Xy90bXAvcGhwS1pTSUxT.jpg', 'ALcdf2st', '2020-09-11', '14:50:24'),
('PS2myhs9', 'PMI3kntlw', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wOF8yMjoyOTowNl8vdG1wL3BocFEwWno5dg==.jpeg', 'AL1tf4wq', '2020-09-08', '22:29:06'),
('PS2n8zad', 'PMI29onwz', 'image/jpeg', 'UEZ5MWt4c3ZfOTY4ODI1MzFfMjM3OTU0NDgwOTU1Njg4XzU0MDk2ODI5NDYyODQ5ODUxMzRfbl8yMDIwLTA4LTI5XzEzOjU5OjQ3Xy90bXAvcGhwUDFjb3BR.jpg', 'ALcdf2st', '2020-08-29', '13:59:47'),
('PS2ngprg', 'PMIaobr8s', 'image/jpeg', 'UEZ5MWt4c3ZfTUs3XzIwMjAtMDYtMDJfMjE6MTk6NTRfL3RtcC9waHBRcjA0ZWg=.jpg', 'AL1rw1sn', '2020-06-02', '21:19:54'),
('PS2nm2mq', 'PMI35k0sp', 'image/jpeg', 'UEZ5MWt4c3ZfNDQ1NDUwMTVfMjA3NDczNTg1MjU0ODE4OV84MzU4OTUyOTAzNzQ3OTU5NDk2X25fMjAyMC0wOS0wNF8xMTozNDozNl8vdG1wL3BocE1iZzNxZA==.jpg', 'ALcdf2st', '2020-09-04', '11:34:36'),
('PS2nn6gb', 'PMI359ihd', 'image/jpeg', 'UEY0YnlocjNfdGNzY292ZXJfMjAyMC0wNy0wNl8yMjoxNjoxOV8vdG1wL3BocG5pbzc0UA==.jpg', 'AL123tja', '2020-07-06', '22:16:19'),
('PS2nqe3x', 'PMIvuhodo', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTExXzE0OjQ3OjMwXy90bXAvcGhwNE5NY0VL.png', 'AL1tf4wq', '2020-09-11', '14:47:30'),
('PS2ouej1', 'PMI2uwu4l', 'image/jpeg', 'UEYxOGZibnpfNTViYTUyNzRkZDA4OTU0Mzc4OGI0Njc0XzIwMjAtMDgtMTlfMTc6NTQ6MjZfL3RtcC9waHBPNk5yYWw=.jpg', 'AL21o2xcv', '2020-08-19', '17:54:26'),
('PS2pd02z', 'PMI8jremg', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0wOF8xNTo1NTozOV8vdG1wL3BocEEyYVNhTA==.webp', 'AL1rw1sn', '2020-09-08', '15:55:39'),
('PS2pjoj8', 'PMI12hp7l', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTA4XzE1OjQ3OjMyXy90bXAvcGhwclZDVFZQ.bmp', 'AL1rw1sn', '2020-09-08', '15:47:32'),
('PS2qs3hr', 'PMI2qwi0e', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTEyXzE2OjA0OjQ4Xy90bXAvcGhwQmJGNnNl.png', 'AL1rw1sn', '2020-09-12', '16:04:48'),
('PS2qtxoo', 'PMI2n8y3p', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTA3XzE4OjQzOjEyXy90bXAvcGhwck1kZWZu.bmp', 'ALcdf2st', '2020-09-07', '18:43:12'),
('PS2r1k6k', 'PMI2tnmxx', 'image/png', 'UEZ5MWt4c3ZfaXRhZWxkMl8yMDIwLTA5LTA3XzE3OjQ1OjM1Xy90bXAvcGhwajg3Vm1G.png', 'ALcdf2st', '2020-09-07', '17:45:35'),
('PS2rhmia', 'PMI2933bl', 'image/jpeg', 'UEZ5MWt4c3ZfMV8yMDIwLTA5LTAzXzE5OjM2OjQ5Xy90bXAvcGhwMlBNd0Nz.jpg', 'ALcdf2st', '2020-09-03', '19:36:50'),
('PS2ssykj', 'PMI274c3d', 'image/jpeg', 'UEZ5MWt4c3ZfMl8yMDIwLTA5LTAzXzE5OjI0OjQwXy90bXAvcGhwZlhrb1g4.jpg', 'ALcdf2st', '2020-09-03', '19:24:40'),
('PS2svqp1', 'PMI319dzw', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTEwXzE1OjA3OjQ5Xy90bXAvcGhwWjBrQWFD.bmp', 'AL1tf4wq', '2020-09-10', '15:07:49'),
('PS2t1kyo', 'PMI23qnvf', 'image/jpeg', 'UEZ5MWt4c3ZfU2FyYS1BbGktS2hhbi1yZWNlbnRseS1hdHRlbmRlZC1hLXJlYWxpdHktc2hvdy1hbmQtc2hvb2stYS1sZWctb24t4oCYVHdpc3TigJktd2l0aC1hLWNvbnRlc3RhbnQuLUNoZWNrLWl0LW91dF8yMDIwLTA5LTAzXzE5OjU3OjI2Xy90bXAvcGhwUkdrN3l5.jpg', 'ALcdf2st', '2020-09-03', '19:57:26'),
('PS2uwr0f', 'PMI100gie', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTEwXzE2OjA5OjMyXy90bXAvcGhwc0E2cVEx.bmp', 'AL1tf4wq', '2020-09-10', '16:09:32'),
('PS2vegtd', 'PMI1u4ifk', 'image/jpeg', 'UEYxOGZibnpfMjc1ODhlNmVmNDc1ZTRmODJmYjZkNmZmZGE0MTQ4YzFfMjAyMC0wOC0xOV8xNzo1NDoyNl8vdG1wL3BocFgxV1hXWQ==.jpg', 'AL21o2xcv', '2020-08-19', '17:54:26'),
('PS2wkzov', 'PMI1xsrgt', 'image/jpeg', 'UEYxOGZibnpfNzI3ODA1NDNfNTE0MDgxMjU5NDMxNjkyXzEzODI0ODk4MjY4MDY3NDM1OTdfbl8yMDIwLTA4LTE5XzE0OjAxOjQ5Xy90bXAvcGhwUGphNmdv.jpg', 'AL21o2xcv', '2020-08-19', '14:01:49'),
('PS2wtnq4', 'PMI63czlp', 'image/jpeg', 'UEZ3cWd4NmpfNDY0ODgwNjJfMzI2Mzg5MTk4MTgwNDYyXzg0ODM3NzY3NzAxMDgwMzA5NzZfXzIwMjAtMDktMDJfMjE6Mzg6MzZfL3RtcC9waHBseVBmTFA=.jpg', 'AL21o2xx', '2020-09-02', '21:38:36'),
('PS2x0i7t', 'PMI18c4fp', 'image/jpeg', 'UEZ3cWd4NmpfbWlzc2lvbl9pbXBvc3NpYmxlX2ZhbGxvdXRfMS13aWRlc2NyZWVuX3dhbGxwYXBlcnNfMjAyMC0wOS0wMl8yMTozOTowOV8vdG1wL3BocEpmSlFtbw==.jpg', 'AL2snu0e', '2020-09-02', '21:39:09'),
('PS2x4eop', 'PMI272bk3', 'image/jpeg', 'UEYxOGZibnpfNjUyNzI0ODdfNjkzMzU3OTg3Nzc3MTUzXzg2NzA2MjI3MDY5MjU0ODMyMzVfbl8yMDIwLTA4LTE5XzE0OjAyOjAxXy90bXAvcGhwMVBwNURa.jpg', 'AL21o2xcv', '2020-08-19', '14:02:01'),
('PS2xmqmy', 'PMI3k9mx2', 'image/jpeg', 'UEZ5MWt4c3ZfUHJhbnV0YW4tQmFobF8yMDIwLTA5LTAzXzIwOjU0OjU2Xy90bXAvcGhwN3kweENk.jpg', 'ALcdf2st', '2020-09-03', '20:54:56'),
('PS2yjrzw', 'PMIzwqvld', 'image/jpeg', 'UEYxOGZibnpfSGF5YWdyZWV2YV8yMDIwLTA4LTE5XzEzOjM5OjMxXy90bXAvcGhwcmFkUUZF.jpg', 'AL21o2xcv', '2020-08-19', '13:39:31'),
('PS2z59b2', 'PMI2t4zzn', 'image/jpeg', 'UEZ5MWt4c3ZfbWVoYV9uaWt1bmpfcGljNF8yMDIwLTA2LTE1XzE3OjQ1OjQ3Xy90bXAvcGhwN0xDNFdM.jpg', 'AL3kwdbz', '2020-06-15', '17:45:47'),
('PS2z858r', 'PMI129yrn', 'image/jpeg', 'UEZ3cWd4NmpfMjI4OTgxMzg0LWRlYWRwb29sLXdhbGxwYXBlcnMtaGRfMjAyMC0wOS0wMl8yMTo0Mjo0NV8vdG1wL3BocEZzMUloUg==.jpg', 'AL21o2xx', '2020-09-02', '21:42:45'),
('PS2zjgo2', 'PMIy5uid5', 'image/jpeg', 'UEYxOGZibnpfYW5hbnlhLXBhbmRheS1zaGFyZXMtcHJldHR5LXBob3Rvcy1hbmQtc2F5cy1oZXItY2FwdGlvbnMtYXJlbi10LWdldHRpbmctYmV0dGVyLWluLTIwMjAtc3VoYW5hLWtoYW4tY29tbWVudHNfMjAyMC0wOC0xOV8xNDozNDoxMV8vdG1wL3BocDVHWnVTSQ==.jpg', 'AL21o2xcv', '2020-08-19', '14:34:11'),
('PS2znzwd', 'PMIykbc8z', 'video/mp4', 'UEYxOGZibnpfdmlkZW9fMV8yMDIwLTA4LTE5XzE4OjMwOjM4Xy90bXAvcGhwaU5VYW9H.mp4', 'AL21o2xcv', '2020-08-19', '18:30:38'),
('PS30xyqy', 'PMI2t1ur1', 'image/jpeg', 'UEZ5MWt4c3ZfTUs2XzIwMjAtMDYtMDJfMjE6MTI6MzJfL3RtcC9waHA4ZlBQWVo=.jpg', 'AL1rw1sn', '2020-06-02', '21:12:32'),
('PS316c9x', 'PMI2766u5', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyXzIwMjAtMDktMTBfMTU6NDM6NTBfL3RtcC9waHBZRmdQZ0g=.jpg', 'AL1tf4wq', '2020-09-10', '15:43:50'),
('PS31ms1h', 'PMI24zg13', 'image/jpeg', 'UEZ5MWt4c3ZfMjVwcmFudXRhbjRfMjAyMC0wOS0wM18xOTo1NTozNV8vdG1wL3BocFBOcXJmTw==.jpg', 'ALcdf2st', '2020-09-03', '19:55:35'),
('PS32inpl', 'PMIbw4lsw', 'image/jpeg', 'UEYxOGZibnpfNTU4OGFmYzk5NDZkMF8yMDIwLTA4LTE5XzE1OjMzOjQwXy90bXAvcGhwTUNoeGd4.jpg', 'AL21o2xcv', '2020-08-19', '15:33:40'),
('PS32qrb1', 'PMI30k738', 'image/jpeg', 'UEZ5MWt4c3ZfYWFnX2V4dGVyaW9yMXctM3gyXzFfMV8yMDIwLTA2LTE1XzE3OjQ1OjQ3Xy90bXAvcGhwcEVVQnFG.jpg', 'AL3kwdbz', '2020-06-15', '17:45:47'),
('PS32ru0q', 'PMI3ietgu', 'image/jpeg', 'UEZ5MWt4c3ZfTUs4XzIwMjAtMDYtMDJfMjE6MTY6MDFfL3RtcC9waHBMSDJCUFU=.jpg', 'AL1rw1sn', '2020-06-02', '21:16:01'),
('PS32x4rp', 'PMIvtjbbd', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wOF8xNTo1NTo1MV8vdG1wL3BocDhHOTBMZg==.jpeg', 'AL1rw1sn', '2020-09-08', '15:55:51'),
('PS33hy7g', 'PMI6xajzh', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTEwXzE2OjA3OjA4Xy90bXAvcGhwUHd0M0NR.png', 'AL1tf4wq', '2020-09-10', '16:07:08'),
('PS34ng4l', 'PMI1tw69t', 'image/png', 'UEZ5MWt4c3ZfaXRhZWxkMl8yMDIwLTA5LTA3XzE3OjM4OjIwXy90bXAvcGhwN1REQUtR.png', 'ALcdf2st', '2020-09-07', '17:38:20'),
('PS34rsh8', 'PMI2t2et5', 'image/jpeg', 'UEZ5MWt4c3Zfc2FqamFuLXRlcnJhY2UtYS11bmlxdWUtZGluaW5nLWV4cGVyaWVuY2VfMjAyMC0wNi0wMl8yMToyMToyMF8vdG1wL3BocEQ3THR6Uw==.jpg', 'AL1tf4wq', '2020-06-02', '21:21:21'),
('PS35a22c', 'PMIhw04xw', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTA4XzIyOjMzOjU3Xy90bXAvcGhwVWdqTTkx.png', 'AL1tf4wq', '2020-09-08', '22:33:57'),
('PS35ktu4', 'PMI32zmpj', 'video/mp4', 'UEZ5MWt4c3ZfMTAwNDU0NDg5XzEyMDgyODYwNjI5NTQzNF81MDc5MTM4MTc4NDgxOTQxNTY4X25fMjAyMC0wOS0wM18yMDo1NToyNl8vdG1wL3BocHJBcG1kTg==.mp4', 'ALcdf2st', '2020-09-03', '20:55:26'),
('PS3isaio', 'PMI1aemg7', 'video/mp4', 'UEZ5MWt4c3ZfVklEMV8yMDIwLTA2LTE4XzE4OjEzOjIwXy90bXAvcGhwTU95emdL.mp4', 'AL3kwdbz', '2020-06-18', '18:13:20'),
('PS3it041', 'PMI1w0ehm', 'image/jpeg', 'UEZ5MWt4c3ZfNTcxMzExNjZfNDI1NDI3MTYxNjA5NDYzXzcxMDIxNTc0NTgxMzYwMjE1MTJfbl8yMDIwLTA5LTA0XzExOjQwOjA0Xy90bXAvcGhwZWpEVHBF.jpg', 'ALcdf2st', '2020-09-04', '11:40:04'),
('PS3it896', 'PMI16ga4o', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0xMV8xOTowMDo0MF8vdG1wL3BocDlKWWgzcA==.jpeg', 'ALcdf2st', '2020-09-11', '19:00:40'),
('PS3iyt80', 'PMI3iojp5', 'image/jpeg', 'UEYxdDR5MW1fQ29tbXVuaXR5X0NvdmVyXzIwMjAtMDgtMTZfMjA6NDc6NTJfL3RtcC9waHB3M29WVEc=.jpg', 'AL2yv6xc', '2020-08-16', '20:47:53'),
('PS3j61p9', 'PMI3mh12q', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTExXzE0OjQ3OjExXy90bXAvcGhwb2FPZ25X.bmp', 'AL1tf4wq', '2020-09-11', '14:47:11'),
('PS3j7k3l', 'PMI48hfza', 'image/jpeg', 'UEZ5MWt4c3ZfOTY4ODI1MzFfMjM3OTU0NDgwOTU1Njg4XzU0MDk2ODI5NDYyODQ5ODUxMzRfbl8yMDIwLTA4LTI5XzE2OjIwOjIxXy90bXAvcGhwcEdMd1Ix.jpg', 'ALcdf2st', '2020-08-29', '16:20:21'),
('PS3jaez3', 'PMI1s1kb8', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyMV8yMDIwLTA5LTEwXzEzOjI3OjIwXy90bXAvcGhwUGNERTBL..jpg', 'AL1tf4wq', '2020-09-10', '13:27:20'),
('PS3javww', 'PMI15fo2k', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0xMF8xNjowOTo0N18vdG1wL3BocEkyMW1Jbw==.webp', 'AL1tf4wq', '2020-09-10', '16:09:47'),
('PS3k928o', 'PMI15kj0y', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0wOF8yMjozMDowNl8vdG1wL3BocHdUT0s1Sg==.webp', 'AL1tf4wq', '2020-09-08', '22:30:10'),
('PS3ka52v', 'PMI18fvy4', 'image/png', 'UEYxOGZibnpfUlRDUGVlckNvbm5lY3Rpb24tZGlhZ3JhbV8yMDIwLTA4LTE4XzIyOjQ3OjQxXy90bXAvcGhwQm9RRG5X.png', 'AL21o2xcv', '2020-08-18', '22:47:41'),
('PS3krwz6', 'PMI3349ic', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wN18xODo0MjowNF8vdG1wL3BocEM1UWNVcQ==.jpeg', 'ALcdf2st', '2020-09-07', '18:42:04'),
('PS3l452c', 'PMI3mi140', 'image/jpeg', 'UEZ5MWt4c3ZfMjVwcmFudXRhbjRfMjAyMC0wOS0wM18yMDo1Mzo0OF8vdG1wL3BocEV2dkljag==.jpg', 'ALcdf2st', '2020-09-03', '20:53:48'),
('PS3l94wa', 'PMI8n5dzx', 'image/jpeg', 'UEYxOGZibnpfMTAzOTYwOTMyXzI4OTQ3MTk4OTA5ODAzMV84NTIwNjg4OTQ0ODgyNTczNjAyX25fMjAyMC0wOC0xOV8xNDowMToyMF8vdG1wL3BocDhYNHd4SA==.jpg', 'AL21o2xcv', '2020-08-19', '14:01:20'),
('PS3mekt1', 'PMI33f4qt', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTA4XzE1OjU2OjA0Xy90bXAvcGhwdVZtbEVM.png', 'AL1rw1sn', '2020-09-08', '15:56:04'),
('PS3mhlmz', 'PMI1v413z', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyXzIwMjAtMDktMTBfMTM6NDY6NTVfL3RtcC9waHBEaTdRa1Q=.jpg', 'AL1tf4wq', '2020-09-10', '13:46:55'),
('PS3zjg2n', 'PMIadipgk', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTEwXzE1OjE3OjA2Xy90bXAvcGhweXluazZW.bmp', 'AL1tf4wq', '2020-09-10', '15:17:06'),
('PS42v9wy', 'PMI1dprpo', 'image/jpeg', 'UEZ5MWt4c3ZfM18yMDIwLTA5LTAzXzE5OjMyOjM3Xy90bXAvcGhwWHpXajVI.jpg', 'ALcdf2st', '2020-09-03', '19:32:37'),
('PS48nc3z', 'PMI2v9tj3', 'image/jpeg', 'UEYxOGZibnpfa2lzc3BuZy10b20tY3J1aXNlLXRoZS1tdW1teS1jYXN0aW5nLWFjdG9yLWZpbG0tdG9tLWNydWlzZS01YWI2OGU0NDE0MjkwMi40NjQzMjUzNTE1MjE5MTM0MTIwODI2XzIwMjAtMDgtMTlfMTc6NTM6NTJfL3RtcC9waHAybXdlaFo=.jpg', 'AL21o2xcv', '2020-08-19', '17:53:52'),
('PS4ih120', 'PMI2tiw6h', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0xMV8xOToxMToxNF8vdG1wL3BocGRBaEoxZA==.jpeg', 'ALcdf2st', '2020-09-11', '19:11:14'),
('PS4ungd1', 'PMI1aj7uk', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTEwXzE2OjA5OjEwXy90bXAvcGhwRmNsM2pO.png', 'AL1tf4wq', '2020-09-10', '16:09:10'),
('PS6394nq', 'PMI1tvatf', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0xMF8xMzo0ODo1OV8vdG1wL3BocHNmckdnVw==.jpeg', 'AL1tf4wq', '2020-09-10', '13:48:59'),
('PS676ddm', 'PMI1bwsfi', 'image/jpeg', 'UEZ5MWt4c3ZfMzE1MjAwNjFfMTk5ODMyMjMwODEzODc1XzEzOTQzMDQxMzQxMzU0MTQ3ODRfbl8yMDIwLTA5LTA0XzExOjM0OjE2Xy90bXAvcGhwa3hjWXZn.jpg', 'ALcdf2st', '2020-09-04', '11:34:16'),
('PS6lmu2d', 'PMI1x7zyp', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0xMV8xNDo0OToxNV8vdG1wL3BocEtkVnNObQ==.webp', 'ALcdf2st', '2020-09-11', '14:49:15'),
('PS6u6rxv', 'PMI23cvrj', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTEwXzE1OjE4OjIzXy90bXAvcGhwaHIxRzM5.bmp', 'AL1tf4wq', '2020-09-10', '15:18:23'),
('PS6wo01l', 'PMI4mvnbm', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0xMV8xODo0Mjo1NF8vdG1wL3BocGdMYTlzOQ==.jpeg', 'ALcdf2st', '2020-09-11', '18:42:54'),
('PS6woqxy', 'PMI1ve16g', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0xMV8xNDo0Nzo0Ml8vdG1wL3BocEg0NGh4Uw==.jpeg', 'AL1tf4wq', '2020-09-11', '14:47:42'),
('PS86y4mq', 'PMI9xs2hj', 'video/mp4', 'UEZ5MWt4c3ZfVklEM18yMDIwLTA2LTE5XzIxOjMxOjA4Xy90bXAvcGhwM3EzbFM0.mp4', 'ALcdf2st', '2020-06-19', '21:31:08'),
('PS8dyz4a', 'PMI1a9rce', 'image/jpeg', 'UEZ5MWt4c3ZfNzI3ODA1NDNfNTE0MDgxMjU5NDMxNjkyXzEzODI0ODk4MjY4MDY3NDM1OTdfbl8yMDIwLTA4LTI5XzE2OjIwOjIxXy90bXAvcGhwclAyUXho.jpg', 'ALcdf2st', '2020-08-29', '16:20:21'),
('PS8nojn8', 'PMI221yht', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0xMV8xOToxNDoyOF8vdG1wL3BocGs4WUlQMw==.jpeg', 'ALcdf2st', '2020-09-11', '19:14:28'),
('PS8sdtd8', 'PMI21j3oi', 'image/jpeg', 'UEYxOGZibnpfVGhvdGgxXzIwMjAtMDgtMThfMjM6MDk6MDVfL3RtcC9waHB1a2RIRWs=.jpg', 'AL21o2xcv', '2020-08-18', '23:09:05'),
('PS8taf1v', 'PMI3mvo2t', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyXzIwMjAtMDktMTBfMTM6MzE6MzJfL3RtcC9waHBGclFFWDE=..jpg', 'AL1tf4wq', '2020-09-10', '13:31:32'),
('PS90cvko', 'PMI12j35l', 'image/jpeg', 'UEZ5MWt4c3ZfNjUyNzI0ODdfNjkzMzU3OTg3Nzc3MTUzXzg2NzA2MjI3MDY5MjU0ODMyMzVfbl8yMDIwLTA4LTI5XzEzOjMzOjMzXy90bXAvcGhwZ0YwVW10.jpg', 'ALcdf2st', '2020-08-29', '13:33:33'),
('PS91thuv', 'PMI27cspm', 'image/jpeg', 'UEZ5MWt4c3ZfNDI5NzM4NjdfMjA5MjM5NTYzMDgyNDkxM182MTMxMTI1ODAzNjQ5MzE1Mzc0X25fMjAyMC0wOS0wNF8xMTozNToxMV8vdG1wL3BocEdaTGJYbQ==.jpg', 'ALcdf2st', '2020-09-04', '11:35:11'),
('PSbz0fkf', 'PMI23wk1x', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0xMV8xODo0MzoxNl8vdG1wL3BocEhZRzhCMQ==.webp', 'ALcdf2st', '2020-09-11', '18:43:16'),
('PSc0oioi', 'PMI2hmlhy', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTEwXzEzOjQwOjEyXy90bXAvcGhwb0tPTXMy.bmp', 'AL1tf4wq', '2020-09-10', '13:40:12'),
('PScuknxx', 'PMI1aeq77', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0wOV8xODoyMDoyNF8vdG1wL3BocFB2SHRTVw==.jpeg', 'AL1tf4wq', '2020-09-09', '18:20:24'),
('PSd06ye0', 'PMI4pkdc1', 'video/mp4', 'UEZ5MWt4c3ZfdmlkXzIwMjAtMDktMTJfMTM6NDM6MjdfL3RtcC9waHBDMW50a0Q=.mp4', 'ALcdf2st', '2020-09-12', '13:43:27'),
('PSdzyq7v', 'PMI1dibfe', 'image/png', 'UEZ5MWt4c3ZfNV8yMDIwLTA5LTEwXzE2OjA1OjE1Xy90bXAvcGhwa21zNWll.png', 'AL1tf4wq', '2020-09-10', '16:05:15'),
('PSe46fpl', 'PMI202n3z', 'image/jpeg', 'UEZ5MWt4c3ZfMjAyMC0wOS0wMS1pbWFnZS0yMV8yMDIwLTA5LTAzXzE5OjA0OjE2Xy90bXAvcGhwZndWem9v.jpg', 'ALcdf2st', '2020-09-03', '19:04:16'),
('PSegdw9h', 'PMI2p6nmh', 'image/jpeg', 'UEYxOGZibnpfSGF5YWdyZWV2YV8xXzIwMjAtMDgtMTlfMTM6NDA6MTVfL3RtcC9waHBJQ3lvN2g=.JPG', 'AL21o2xcv', '2020-08-19', '13:40:15'),
('PSfysbl0', 'PMI14d3vo', 'image/jpeg', 'UEZ5MWt4c3ZfMy5fMjAyMC0wOS0xMF8xNjoxMDowOV8vdG1wL3BocGZPeFdTVA==.jpeg', 'AL1tf4wq', '2020-09-10', '16:10:09'),
('PSgoztc4', 'PMIvzi2nf', 'image/jpeg', 'UEYxOGZibnpfVG9wIDEwIEhpbmRpIFJhbSBOYXZhbWkgU01TICBTaGF5YXJpIExpc3QgMjAxM18yMDIwLTA4LTE5XzEzOjQxOjIzXy90bXAvcGhwVkpVU2Jz.jpg', 'AL21o2xcv', '2020-08-19', '13:41:23'),
('PSgxw4ad', 'PMI16kg13', 'image/jpeg', 'UEYxOGZibnpfSG9saWRheS00Sy1XYWxscGFwZXItMzg0MHgyMTYwXzIwMjAtMDgtMTlfMTg6MzA6MzhfL3RtcC9waHBKUkF2MGw=.jpg', 'AL21o2xcv', '2020-08-19', '18:30:38'),
('PSgxygp3', 'PMI2rfkrx', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTA4XzAxOjA0OjUyXy90bXAvcGhwNUJGNXI5.bmp', 'ALcdf2st', '2020-09-08', '01:04:52'),
('PShwzivx', 'PMI30ladn', 'image/jpeg', 'UEZ5MWt4c3ZfMV8yMDIwLTA5LTA5XzE3OjM4OjM4Xy90bXAvcGhwMU9PUjJv..jpg', 'AL1rw1sn', '2020-09-09', '17:38:38'),
('PSi74bg9', 'PMI1ratdt', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTExXzE0OjQ5OjI5Xy90bXAvcGhwbTUxNmZr.bmp', 'ALcdf2st', '2020-09-11', '14:49:30'),
('PSibl5b4', 'PMI21qu9p', 'image/jpeg', 'UEZ5MWt4c3ZfRGlzaGFQYXRhbmk3NTlfMjAyMC0wOS0wMl8yMTo0NTo1OV8vdG1wL3BocDQxNlVQag==.jpg', 'ALcdf2st', '2020-09-02', '21:45:59'),
('PSin6qjy', 'PMIwl7j6r', 'image/jpeg', 'UEYxOGZibnpfODVhM2UwZWRhMjhlNzllMWFkY2M1NWI0OWE0XzIwMjAtMDgtMThfMjM6MDg6MTRfL3RtcC9waHBVY0Eycjc=.jpg', 'AL21o2xcv', '2020-08-18', '23:08:14'),
('PSis0hhj', 'PMI3yqp55', 'image/webp', 'UEZ5MWt4c3ZfMi5fMjAyMC0wOS0xMF8xNjoxMDo1OF8vdG1wL3BocGd3YXhSUQ==.webp', 'AL1tf4wq', '2020-09-10', '16:10:58'),
('PSvuth4h', 'PMI1rkd3m', 'image/jpeg', 'UEYxOGZibnpfTVY1Qk5qUTJNRFUwT0RFdE5UazRZaTAwT1RrM0xUZzJPR0l0WVRjNVpEQTBNV0l6WlRNeFhrRXlYa0ZxY0dkZVFYVnlOREF6TkRrME1UUUAuX1YxX18yMDIwLTA4LTE5XzE0OjMzOjQ5Xy90bXAvcGhwM3NqMkQx.jpg', 'AL21o2xcv', '2020-08-19', '14:33:49'),
('PSwbao21', 'PMI1dgarf', 'image/jpeg', 'UEZ3cWd4Nmpfa3VuZ19mdV9wYW5kYV8yX21vdmllXzIwMTEtd2lkZV8yMDIwLTA5LTAyXzIxOjM5OjU2Xy90bXAvcGhwV1d3a05w.jpg', 'ALgh0fyw', '2020-09-02', '21:39:56'),
('PSwg4vi9', 'PMIdyu803', 'image/jpeg', 'UEZ5MWt4c3ZfYW4yXzIwMjAtMDgtMjNfMjI6MzY6MDlfL3RtcC9waHB2c3pKQ3g=.jpg', 'ALcdf2st', '2020-08-23', '22:36:09'),
('PSxpq54x', 'PMI14ckak', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyXzIwMjAtMDktMTBfMTM6Mjk6NDRfL3RtcC9waHBFZFpidFg=..jpg', 'AL1tf4wq', '2020-09-10', '13:29:44'),
('PSxudyh7', 'PMI6tcnho', 'image/jpeg', 'UEYxOGZibnpfNjA2NzAyMy1kYXNoYWF2YXRhcl92aW1hbmlrYV9jb21pY3NfYnlfa2FyYW52aXItZDNpaXg3Ml8yMDIwLTA4LTE5XzEzOjQxOjIzXy90bXAvcGhwbG9MdVVs.jpg', 'AL21o2xcv', '2020-08-19', '13:41:23'),
('PSy8ceg4', 'PMIvl4h7a', 'image/bmp', 'UEZ5MWt4c3ZfNF8yMDIwLTA5LTA5XzE3OjQ4OjUzXy90bXAvcGhwVldvNjJt.bmp', 'AL1tf4wq', '2020-09-09', '17:48:53'),
('PSyg4ncy', 'PMIc9telp', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyXzIwMjAtMDktMTBfMTU6MjY6MzFfL3RtcC9waHB0c2FOY2s=.jpg', 'AL1tf4wq', '2020-09-10', '15:26:31'),
('PSykisap', 'PMI272mcr', 'image/jpeg', 'UEYxOGZibnpfNTU4OGFmY2JjMGU3Y18yMDIwLTA4LTE5XzE1OjI0OjE5Xy90bXAvcGhwRngzTGxE.jpg', 'AL21o2xcv', '2020-08-19', '15:24:19'),
('PSynvowl', 'PMIhxjgo4', 'image/jpeg', 'UEY0YnlocjNfaW1nNl8yMDIwLTA4LTA4XzIzOjMyOjA5Xy90bXAvcGhwQTE2Z3po.jpg', 'AL1cgps6', '2020-08-08', '23:32:09'),
('PSzpamfc', 'PMI53hcv1', 'image/jpeg', 'UEZ5MWt4c3Zfc2xpZGVyXzIwMjAtMDktMTBfMTM6NDQ6NDVfL3RtcC9waHB5d1dISUk=.jpg', 'AL1tf4wq', '2020-09-10', '13:44:45'),
('PSzs49bm', 'PMIebbt46', 'image/jpeg', 'UEZ5MWt4c3ZfYW4zXzIwMjAtMDgtMjNfMjI6MzY6MDlfL3RtcC9waHBwMGZsOTQ=.jpg', 'ALcdf2st', '2020-08-23', '22:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `POST_PRIVACY_HASH_LIST`
--

CREATE TABLE `POST_PRIVACY_HASH_LIST` (
  `POST_PRIVACY_KEY` varchar(200) NOT NULL,
  `POST_PRIVACY_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POST_PRIVACY_HASH_LIST`
--

INSERT INTO `POST_PRIVACY_HASH_LIST` (`POST_PRIVACY_KEY`, `POST_PRIVACY_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('POST_PRIVACY_FRIENDS', '1', '2020-06-01', '21:00:00'),
('POST_PRIVACY_PRIVATE', '0', '2020-06-01', '21:00:00'),
('POST_PRIVACY_PUBLIC', '3', '2020-06-01', '21:00:00'),
('POST_PRIVACY_SELECTIVE', '2', '2020-06-01', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `POST_RATING`
--

CREATE TABLE `POST_RATING` (
  `POST_ID` varchar(10) NOT NULL,
  `RATING_10` varchar(30) NOT NULL,
  `RATING_9` varchar(30) NOT NULL,
  `RATING_8` varchar(30) NOT NULL,
  `RATING_7` varchar(30) NOT NULL,
  `RATING_6` varchar(30) NOT NULL,
  `RATING_5` varchar(30) NOT NULL,
  `RATING_4` varchar(30) NOT NULL,
  `RATING_3` varchar(30) NOT NULL,
  `RATING_2` varchar(30) NOT NULL,
  `RATING_1` varchar(30) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POST_RATING`
--

INSERT INTO `POST_RATING` (`POST_ID`, `RATING_10`, `RATING_9`, `RATING_8`, `RATING_7`, `RATING_6`, `RATING_5`, `RATING_4`, `RATING_3`, `RATING_2`, `RATING_1`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PS10dsme', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '22:36:58'),
('PS10dyrd', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:36:50'),
('PS10n38q', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '18:43:03'),
('PS11rqpd', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:08:14'),
('PS11rygz', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:51:10'),
('PS120jry', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '22:34:33'),
('PS1213n2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:07:53'),
('PS125kjg', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '22:46:48'),
('PS13hbzh', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:05:30'),
('PS13qm0u', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:14:58'),
('PS13zlz5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '13:41:23'),
('PS13zt2u', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '15:20:15'),
('PS14cyvw', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-01', '17:33:17'),
('PS14gapf', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '15:32:16'),
('PS14gi36', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-04', '11:34:52'),
('PS14gsqz', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:03:44'),
('PS14lab2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-21', '12:28:06'),
('PS15p4z7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '22:35:00'),
('PS15yxa6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:24:22'),
('PS163aex', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-23', '22:36:09'),
('PS16gxrl', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-12', '13:43:27'),
('PS16jzt3', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '2020-09-02', '00:01:10'),
('PS17ko7l', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '14:50:31'),
('PS17pis3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '21:44:53'),
('PS180xs6', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '2020-08-16', '21:34:50'),
('PS18cakr', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-15', '23:00:44'),
('PS18cca7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-21', '12:26:24'),
('PS18et8r', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '22:36:31'),
('PS18f6xt', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-04', '11:34:16'),
('PS19gdcb', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '15:37:48'),
('PS1a0ld9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-31', '18:32:38'),
('PS1aecf7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-02', '21:18:14'),
('PS1aivy7', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '2020-06-21', '12:09:10'),
('PS1aj5sa', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:55:26'),
('PS1ak8d6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:09:05'),
('PS1bh9xh', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-06', '21:31:06'),
('PS1bqxko', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-29', '16:20:21'),
('PS1bzskc', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-19', '21:31:08'),
('PS1dkxox', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-01', '17:35:17'),
('PS1dycs7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '17:41:19'),
('PS1rerbo', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-04', '11:54:28'),
('PS1rjk99', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:46:28'),
('PS1rwkx3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:02:07'),
('PS1rxov5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '22:53:29'),
('PS1t8tc9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-15', '17:45:47'),
('PS1tf9w7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '16:01:33'),
('PS1thcbc', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:36:50'),
('PS1tig88', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '18:43:23'),
('PS1twqjz', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:09:15'),
('PS1tzy8t', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:15:14'),
('PS1u4f8w', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:09:05'),
('PS1u674h', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-06', '21:31:06'),
('PS1v9g9x', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-29', '16:20:21'),
('PS1vv45m', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '17:40:30'),
('PS1vvfe6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-19', '21:31:08'),
('PS1vzark', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '21:08:23'),
('PS1w0omt', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:17:33'),
('PS1w4ioe', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-15', '23:10:33'),
('PS1x7pz4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '2020-06-21', '12:32:48'),
('PS1xcf5d', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-09', '17:49:52'),
('PS1xcqz9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '22:37:54'),
('PS1xu882', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-15', '23:07:18'),
('PS1y3mmk', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:01:20'),
('PS1y8ohj', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-06', '21:31:06'),
('PS1z3hpx', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:53:48'),
('PS1zfwl0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:15:08'),
('PS1ztqt4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-29', '13:35:10'),
('PS202lts', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '22:36:27'),
('PS206h7i', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-15', '17:45:47'),
('PS216d0v', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '22:21:08'),
('PS21aeia', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '18:45:12'),
('PS21bdae', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '18:42:47'),
('PS21bmrt', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-04', '11:47:43'),
('PS21e56d', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:55:35'),
('PS21ecoe', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-09', '17:44:50'),
('PS21jeuc', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-29', '16:20:21'),
('PS21ki52', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:40:18'),
('PS21nhka', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '18:05:00'),
('PS226c2t', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:55:26'),
('PS226dlx', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-15', '22:28:35'),
('PS23dfri', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:54:56'),
('PS23lj8o', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-12', '16:04:29'),
('PS23nqwr', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:17:48'),
('PS23rb4h', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-09', '17:40:47'),
('PS256hjm', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-16', '20:47:41'),
('PS25cind', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:54:56'),
('PS25mxn7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:02:01'),
('PS25u6br', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:50:29'),
('PS25uodv', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '18:44:05'),
('PS263fpe', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:08:34'),
('PS271to8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-02', '21:13:59'),
('PS2723z9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:08:14'),
('PS27anbj', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:02:01'),
('PS27bhdw', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '21:37:57'),
('PS27lgyl', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '13:41:23'),
('PS27qiev', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '18:30:38'),
('PS281qzl', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:34:11'),
('PS292e9n', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '18:43:09'),
('PS295hbu', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:38:51'),
('PS297r71', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-12', '15:50:55'),
('PS29ahs8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '18:24:06'),
('PS29eer6', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '2020-07-06', '22:15:48'),
('PS29o0tl', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '22:27:55'),
('PS29oc07', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '18:39:38'),
('PS29rnc7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-18', '18:16:06'),
('PS29wwym', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:57:26'),
('PS2a2bqm', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:46:12'),
('PS2a4omb', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '16:17:21'),
('PS2drt44', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '22:55:49'),
('PS2m47ee', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '14:50:24'),
('PS2myhs9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '22:29:06'),
('PS2n8zad', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-29', '13:59:47'),
('PS2ngprg', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-02', '21:19:54'),
('PS2nm2mq', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-04', '11:34:36'),
('PS2nn6gb', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-07-06', '22:16:19'),
('PS2nqe3x', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '14:47:30'),
('PS2ouej1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '17:54:26'),
('PS2pd02z', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '15:55:39'),
('PS2pjoj8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '15:47:32'),
('PS2qs3hr', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-12', '16:04:48'),
('PS2qtxoo', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '18:43:12'),
('PS2r1k6k', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '17:45:35'),
('PS2rhmia', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:36:50'),
('PS2ssykj', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:24:40'),
('PS2svqp1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '15:07:49'),
('PS2swg93', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-18', '18:16:06'),
('PS2t1kyo', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:57:26'),
('PS2uwr0f', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '16:09:32'),
('PS2vegtd', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '17:54:26'),
('PS2vqta6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '18:30:38'),
('PS2wkzov', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:01:49'),
('PS2wtnq4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '21:38:36'),
('PS2ww2po', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-15', '17:45:47'),
('PS2x0i7t', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '21:39:09'),
('PS2x46pj', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:34:11'),
('PS2x4eop', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:02:01'),
('PS2xmqmy', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:54:56'),
('PS2yjrzw', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '13:39:31'),
('PS2yxo78', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '17:54:26'),
('PS2z59b2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-15', '17:45:47'),
('PS2z858r', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '21:42:45'),
('PS2z8drc', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:57:26'),
('PS2zjgo2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:34:11'),
('PS2znzwd', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '18:30:38'),
('PS30x8it', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '18:16:15'),
('PS30xyqy', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-02', '21:12:32'),
('PS316c9x', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '15:43:50'),
('PS31ms1h', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:55:35'),
('PS32inpl', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '15:33:40'),
('PS32qrb1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-15', '17:45:47'),
('PS32ru0q', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-02', '21:16:01'),
('PS32x4rp', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '15:55:51'),
('PS33hy7g', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '16:07:08'),
('PS34ng4l', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '17:38:20'),
('PS34rsh8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-02', '21:21:21'),
('PS35a22c', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '22:33:57'),
('PS35ktu4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:55:26'),
('PS3ikms7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:55:35'),
('PS3isaio', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-18', '18:13:20'),
('PS3it041', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-04', '11:40:04'),
('PS3it896', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:00:40'),
('PS3iyt80', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-16', '20:47:53'),
('PS3j1b7x', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:08:14'),
('PS3j61p9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '14:47:11'),
('PS3j7k3l', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-29', '16:20:21'),
('PS3jaez3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:27:20'),
('PS3javww', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '16:09:47'),
('PS3k928o', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '22:30:09'),
('PS3ka52v', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '22:47:41'),
('PS3krwz6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '18:42:04'),
('PS3l452c', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:53:48'),
('PS3l94wa', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:01:20'),
('PS3mekt1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '15:56:04'),
('PS3mhlmz', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:46:55'),
('PS3n35o4', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '2020-06-21', '12:35:13'),
('PS3n7wr3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:01:20'),
('PS3n9l8r', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '20:53:48'),
('PS3zc2se', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-21', '12:18:47'),
('PS3zjg2n', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '15:17:06'),
('PS42v9wy', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:32:37'),
('PS48nc3z', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '17:53:52'),
('PS4ih120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:11:14'),
('PS4ungd1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '16:09:10'),
('PS4vo4nc', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-19', '21:31:08'),
('PS6394nq', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:48:59'),
('PS676ddm', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-04', '11:34:16'),
('PS6g9uyd', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-21', '12:29:49'),
('PS6lmu2d', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '14:49:15'),
('PS6u6rxv', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '15:18:23'),
('PS6wo01l', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '18:42:54'),
('PS6woqxy', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '14:47:42'),
('PS852a7b', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '18:32:35'),
('PS86y4mq', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-19', '21:31:08'),
('PS8dyz4a', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-29', '16:20:21'),
('PS8nojn8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '19:14:28'),
('PS8sdtd8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:09:05'),
('PS8syeec', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-18', '18:16:06'),
('PS8taf1v', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:31:32'),
('PS8x2aph', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-06', '21:31:06'),
('PS90cvko', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-29', '13:33:33'),
('PS91thuv', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-04', '11:35:11'),
('PSbz0fkf', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '18:43:16'),
('PSbzcg0u', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:09:05'),
('PSc0oioi', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:40:12'),
('PScuknxx', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-09', '18:20:24'),
('PSd06ye0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-12', '13:43:27'),
('PSdzyq7v', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '16:05:15'),
('PSe46fpl', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-03', '19:04:16'),
('PSegdw9h', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '13:40:15'),
('PSfysbl0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '16:10:09'),
('PSg1590z', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '2020-06-21', '12:37:53'),
('PSgoztc4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '13:41:23'),
('PSgxw4ad', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '18:30:38'),
('PSgxygp3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-08', '01:04:52'),
('PShweb9s', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-06-18', '18:16:07'),
('PShwzivx', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-09', '17:38:38'),
('PSi74bg9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-11', '14:49:29'),
('PSibl5b4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '21:45:59'),
('PSibo8gh', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '18:27:05'),
('PSin6qjy', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '23:08:14'),
('PSis0hhj', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '16:10:58'),
('PSiwmm0k', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-04', '11:34:16'),
('PSvuth4h', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '14:33:49'),
('PSw2x35a', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-18', '22:58:49'),
('PSwbao21', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-02', '21:39:56'),
('PSwg4vi9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-23', '22:36:09'),
('PSxpni5b', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-07', '18:27:51'),
('PSxpq54x', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:29:44'),
('PSxudyh7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '13:41:23'),
('PSxz2ftk', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-12', '13:43:27'),
('PSy8ceg4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-09', '17:48:53'),
('PSyg4ncy', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '15:26:31'),
('PSykisap', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-19', '15:24:19'),
('PSynvowl', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-08', '23:32:09'),
('PSzpamfc', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-09-10', '13:44:45'),
('PSzs49bm', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2020-08-23', '22:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `POST_STATUS_HASH_LIST`
--

CREATE TABLE `POST_STATUS_HASH_LIST` (
  `POST_STATUS_KEY` varchar(200) NOT NULL,
  `POST_STATUS_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POST_STATUS_HASH_LIST`
--

INSERT INTO `POST_STATUS_HASH_LIST` (`POST_STATUS_KEY`, `POST_STATUS_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('POST_STATUS_ACTIVE', '1', '2020-06-01', '21:00:00'),
('POST_STATUS_BLOCKED', '-1', '2020-06-01', '21:00:00'),
('POST_STATUS_INACTIVE', '2', '2020-06-01', '21:00:00'),
('POST_STATUS_REMOVED', '0', '2020-06-01', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `POST_TYPES_HASH_LIST`
--

CREATE TABLE `POST_TYPES_HASH_LIST` (
  `POST_TYPES_KEY` varchar(200) NOT NULL,
  `POST_TYPES_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `POST_TYPES_HASH_LIST`
--

INSERT INTO `POST_TYPES_HASH_LIST` (`POST_TYPES_KEY`, `POST_TYPES_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('POST_TYPE_BLOG', '2', '2020-06-01', '21:00:00'),
('POST_TYPE_GENERAL', '1', '2020-06-01', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `SOCIAL_RELATIONSHIP_STATUS`
--

CREATE TABLE `SOCIAL_RELATIONSHIP_STATUS` (
  `PROFILE_ID_ONE` varchar(10) NOT NULL,
  `PROFILE_ID_TWO` varchar(10) NOT NULL,
  `ACTION_PROFILE_ID` varchar(20) NOT NULL,
  `RELATIONSHIP_STATUS` varchar(200) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SOCIAL_RELATIONSHIP_STATUS`
--

INSERT INTO `SOCIAL_RELATIONSHIP_STATUS` (`PROFILE_ID_ONE`, `PROFILE_ID_TWO`, `ACTION_PROFILE_ID`, `RELATIONSHIP_STATUS`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF18fbnz', 'PF1t4y1m', 'PF18fbnz', 'PROFILE_FOLLOWER', '2020-08-31', '17:24:47'),
('PF18fbnz', 'PF35iwkp', 'PF18fbnz', 'FRIEND_REQUEST_PENDING', '2020-09-01', '17:50:10'),
('PF18fbnz', 'PF35iwkp', 'PF18fbnz', 'PROFILE_FOLLOWER', '2020-09-01', '17:50:11'),
('PF18fbnz', 'PF4byhr3', 'PF18fbnz', 'PROFILE_FOLLOWER', '2020-08-31', '17:26:20'),
('PF18fbnz', 'PFxk5h15', 'PF18fbnz', 'FRIENDS', '2020-08-31', '17:33:58'),
('PF18fbnz', 'PFxk5h15', 'PF18fbnz', 'PROFILE_FOLLOWER', '2020-08-31', '17:26:59'),
('PF18fbnz', 'PFy1kxsv', 'PF18fbnz', 'PROFILE_FOLLOWER', '2020-08-31', '17:55:07'),
('PFwqgx6j', 'PFy1kxsv', 'PFwqgx6j', 'FRIENDS', '2020-09-06', '16:21:27'),
('PFwqgx6j', 'PFy1kxsv', 'PFwqgx6j', 'PROFILE_FOLLOWER', '2020-09-06', '16:21:48'),
('PFy1kxsv', 'PF18fbnz', 'PFy1kxsv', 'PROFILE_FOLLOWER', '2020-08-31', '17:41:16'),
('PFy1kxsv', 'PFwqgx6j', 'PFy1kxsv', 'PROFILE_FOLLOWER', '2020-09-07', '22:48:35'),
('PFy1kxsv', 'PFxk5h15', 'PFy1kxsv', 'FRIENDS', '2020-08-29', '21:32:05'),
('PFy1kxsv', 'PFxk5h15', 'PFy1kxsv', 'PROFILE_FOLLOWER', '2020-08-31', '17:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `SOCIAL_RELATIONSHIP_STATUS_VALUES`
--

CREATE TABLE `SOCIAL_RELATIONSHIP_STATUS_VALUES` (
  `RELATIONSHIP_STATUS` varchar(50) NOT NULL,
  `RELATIONSHIP_STATUS_ID` varchar(2) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SOCIAL_RELATIONSHIP_STATUS_VALUES`
--

INSERT INTO `SOCIAL_RELATIONSHIP_STATUS_VALUES` (`RELATIONSHIP_STATUS`, `RELATIONSHIP_STATUS_ID`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('FRIENDS', '1', '2020-05-27', '19:00:00'),
('FRIEND_REQUEST_PENDING', '0', '2020-05-27', '19:00:00'),
('PROFILE_BLOCKED', '3', '2020-05-27', '19:00:00'),
('PROFILE_FOLLOWER', '2', '2020-05-27', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `SOCIAL_RELATIONSHIP_SUM`
--

CREATE TABLE `SOCIAL_RELATIONSHIP_SUM` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `SUM_FRIEND` varchar(200) NOT NULL,
  `SUM_FOLLOWER` varchar(200) NOT NULL,
  `SUM_FOLLOWING` varchar(200) NOT NULL,
  `SUM_BLOCKED` varchar(200) NOT NULL,
  `SUM_PENDING` varchar(200) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SOCIAL_RELATIONSHIP_SUM`
--

INSERT INTO `SOCIAL_RELATIONSHIP_SUM` (`PROFILE_ID`, `SUM_FRIEND`, `SUM_FOLLOWER`, `SUM_FOLLOWING`, `SUM_BLOCKED`, `SUM_PENDING`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF147tdr', '0', '0', '0', '0', '0', '2020-12-18', '17:19:21'),
('PF18fbnz', '0', '0', '0', '0', '0', '2020-06-02', '22:54:31'),
('PF2xdtbm', '0', '0', '0', '0', '0', '2020-09-01', '23:52:55'),
('PF35iwkp', '0', '0', '0', '0', '0', '2020-09-01', '17:24:42'),
('PFwqgx6j', '0', '0', '0', '0', '0', '2020-08-04', '20:46:32'),
('PFxk5h15', '0', '0', '0', '0', '0', '2020-08-29', '21:31:12'),
('PFy1kxsv', '0', '0', '0', '0', '0', '2020-06-02', '15:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `USER_AWARD_INFO`
--

CREATE TABLE `USER_AWARD_INFO` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `AWARD_ID` varchar(10) NOT NULL,
  `AWARD_NAME` varchar(200) NOT NULL,
  `AWARD_TOPIC` text NOT NULL,
  `AWARD_DATE` date NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER_BASIC_INFO`
--

CREATE TABLE `USER_BASIC_INFO` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `ISACOMMUNITY` tinyint(4) NOT NULL DEFAULT '0',
  `USER_FIRST_NAME` varchar(200) NOT NULL,
  `USER_LAST_NAME` varchar(200) NOT NULL,
  `USER_EMAIL_ID` varchar(200) NOT NULL DEFAULT 'Not Applicable',
  `USER_MOBILE_ID` varchar(20) NOT NULL DEFAULT 'Not Applicable',
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_BASIC_INFO`
--

INSERT INTO `USER_BASIC_INFO` (`PROFILE_ID`, `ISACOMMUNITY`, `USER_FIRST_NAME`, `USER_LAST_NAME`, `USER_EMAIL_ID`, `USER_MOBILE_ID`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF147tdr', 0, 'aaaa', 'aaaa', 'aaaa@gmail.com', 'NA', '2020-12-18', '17:18:48'),
('PF17k48z', 0, 'Pete', 'Emmerich', 'info@hiltonmgmt.com', 'NA', '2020-09-16', '18:50:52'),
('PF18fbnz', 0, 'Shuvam', 'Mondal', 'shuvam.mondal008@gmail.com', 'NA', '2020-06-02', '22:53:34'),
('PF1e2i2d', 0, 'Chandler', 'Moen', 'lynnann.todd@gmail.com', 'NA', '2020-11-21', '04:39:52'),
('PF1ecto0', 0, 'Vivianne', 'Bauch', 'mjmaffie@yahoo.com', 'NA', '2020-09-01', '22:02:09'),
('PF1t4y1m', 1, 'NA', 'NA', 'NA', 'NA', '2020-08-16', '20:42:33'),
('PF1xq36k', 0, 'Meredith', 'Mraz', 'rdhsteve@hotmail.com', 'NA', '2020-09-15', '23:32:08'),
('PF1z6qyj', 0, 'Doug', 'Morar', 'lizexcelc25@yahoo.com', 'NA', '2020-10-09', '20:31:27'),
('PF250ajp', 0, 'Vivienne', 'Heidenreich', '5129819640@vtext.com', 'NA', '2020-09-14', '14:31:47'),
('PF25bucg', 0, 'Caden', 'Ferry', 'jsholmes250@gmail.com', 'NA', '2020-09-16', '10:59:26'),
('PF27spt1', 0, 'Noble', 'Wilkinson', 'talyomtuvian@gmail.com', 'NA', '2020-09-15', '12:09:46'),
('PF2nbzdh', 0, 'Leonie', 'Glover', 'griffip1@embarqmail.com', 'NA', '2020-09-23', '19:26:08'),
('PF2xdtbm', 0, 'depak', 'mahato', 'arupmahato523@gmail.com', 'NA', '2020-09-01', '23:50:52'),
('PF2zbh02', 0, 'Hellen', 'Collier', 'fsevim@tts-haustechnik.de', 'NA', '2020-09-25', '19:10:30'),
('PF2zpz1u', 0, 'Lora', 'Cummerata', 'dorvaldti@hotmail.com', 'NA', '2020-10-29', '10:06:59'),
('PF310wd9', 0, 'Lucile', 'Purdy', 'kellykell12002@yahoo.com', 'NA', '2020-10-04', '08:44:31'),
('PF35iwkp', 0, 'Sandipan', 'Manna', 'sandipanmanna84@gmail.com', 'NA', '2020-09-01', '17:23:33'),
('PF3inm8f', 0, 'Angelita', 'Sipes', 'b.jachvadze@gmail.com', 'NA', '2020-10-05', '14:37:06'),
('PF3madye', 0, 'Angelica', 'Jenkins', 'ndempsey@blueash.com', 'NA', '2020-10-08', '03:48:29'),
('PF4byhr3', 1, 'NA', 'NA', 'NA', 'NA', '2020-07-03', '17:40:14'),
('PF5z777s', 0, 'Freida', 'Ward', 'blbowman6@gmail.com', 'NA', '2020-10-01', '02:35:13'),
('PF6o1jbd', 0, 'Adrian', 'Mayert', 'info1@nfpworkshops.co.uk', 'NA', '2020-10-08', '16:15:24'),
('PF8e6jj4', 0, 'Jeremie', 'Russel', '5129247944@vzwpix.com', 'NA', '2020-11-03', '23:06:21'),
('PF8k4n0h', 0, 'Archibald', 'Bradtke', 'Myrtice_Balistreri43@yahoo.com', 'NA', '2020-10-29', '16:57:37'),
('PF9vpsfp', 1, 'NA', 'NA', 'NA', 'NA', '2020-09-06', '16:35:40'),
('PFb0wgjf', 0, 'Laron', 'Skiles', 'lindseyhaskins5@gmail.com', 'NA', '2020-12-07', '06:33:00'),
('PFgwrxs3', 0, 'Houston', 'VonRueden', 'paparelleno@yahoo.com', 'NA', '2020-09-17', '04:45:39'),
('PFvulfax', 0, 'Dustin', 'Conn', 'britney_laughland@aol.com', 'NA', '2020-09-04', '08:51:29'),
('PFwqgx6j', 0, 'Debashis', 'Sana', 'sanadebashis@gmail.com', 'NA', '2020-08-04', '20:45:33'),
('PFxk5h15', 0, 'Arup', 'Mahato', 'NA', '9647640176', '2020-08-29', '21:29:33'),
('PFy1kxsv', 0, 'Arjun', 'Rai', 'malay.emailme@gmail.com', '9903688797', '2020-06-02', '15:05:07'),
('PFyoxze5', 0, 'Mustafa', 'Pouros', '8327764782@vtext.com', 'NA', '2020-09-21', '14:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `USER_BASIC_INFO_INDEPTH`
--

CREATE TABLE `USER_BASIC_INFO_INDEPTH` (
  `PROFILE_ID` varchar(10) NOT NULL DEFAULT '',
  `PROFILE_DESC` text,
  `USER_GENDER` varchar(20) DEFAULT NULL,
  `USER_BIRTHDAY` date DEFAULT NULL,
  `USER_MARTIAL_STATUS` varchar(100) DEFAULT NULL,
  `USER_SEXUAL_ORIENTATION` varchar(100) DEFAULT NULL,
  `USER_OCCUPATION` varchar(200) DEFAULT NULL,
  `USER_COUNTRY` varchar(200) DEFAULT NULL,
  `USER_STATE` varchar(200) DEFAULT NULL,
  `USER_PLACE` varchar(200) DEFAULT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_BASIC_INFO_INDEPTH`
--

INSERT INTO `USER_BASIC_INFO_INDEPTH` (`PROFILE_ID`, `PROFILE_DESC`, `USER_GENDER`, `USER_BIRTHDAY`, `USER_MARTIAL_STATUS`, `USER_SEXUAL_ORIENTATION`, `USER_OCCUPATION`, `USER_COUNTRY`, `USER_STATE`, `USER_PLACE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF147tdr', '', 'Male', '1947-03-15', '', '', '', 'Bolivia, Plurinational State of', '', '', '2020-12-18', '17:18:48'),
('PF17k48z', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-16', '18:50:52'),
('PF18fbnz', 'dcsadsadasdas', 'Male', '2020-06-02', 'Single', 'Female', 'Software Professional', 'India', NULL, 'Kolkata', '2020-06-02', '21:00:00'),
('PF1e2i2d', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-11-21', '04:39:52'),
('PF1ecto0', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-01', '22:02:09'),
('PF1xq36k', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-15', '23:32:08'),
('PF1z6qyj', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-10-09', '20:31:27'),
('PF250ajp', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-14', '14:31:47'),
('PF25bucg', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-16', '10:59:26'),
('PF27spt1', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-15', '12:09:46'),
('PF2nbzdh', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-23', '19:26:08'),
('PF2xdtbm', 'i  am  simple', 'Male', '1985-12-17', 'Single', 'Female', 'None', 'India', '', 'bankura', '2020-09-01', '23:50:52'),
('PF2zbh02', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-25', '19:10:30'),
('PF2zpz1u', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-10-29', '10:06:59'),
('PF310wd9', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-10-04', '08:44:31'),
('PF35iwkp', 'nothing to say much.. Let see', 'Male', '1989-08-01', 'Married', 'Female', 'Software Professional', 'India', '', 'Singur', '2020-09-01', '17:23:33'),
('PF3inm8f', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-10-05', '14:37:06'),
('PF3madye', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-10-08', '03:48:29'),
('PF5z777s', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-10-01', '02:35:13'),
('PF6o1jbd', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-10-08', '16:15:24'),
('PF8e6jj4', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-11-03', '23:06:21'),
('PF8k4n0h', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-10-29', '16:57:37'),
('PFb0wgjf', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-12-07', '06:33:00'),
('PFgwrxs3', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-17', '04:45:39'),
('PFvulfax', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-04', '08:51:29'),
('PFwqgx6j', 'Hello', 'Male', '2020-06-02', 'Single', 'Female', 'None', 'India', 'NA', 'Kolkata', '2020-06-02', '21:00:00'),
('PFxk5h15', 'I interstate in everyone. ', 'Male', '1986-12-03', 'Single', 'Female', 'None', 'India', '', 'Moukura', '2020-08-29', '21:29:33'),
('PFy1kxsv', ' Google, LLC is an American multinational technology company that specializes in Internet-related services and products, which include online advertising technologies, a search engine, cloud computing, software, and hardware. It is considered one of the Big Four technology companies, alongside Amazon, Apple, and Microsoft.', 'Male', '2020-10-14', 'Married', 'Female', 'Software Professional', 'India', 'NA', 'Kolkatadsadsdas', '2020-06-02', '21:00:00'),
('PFyoxze5', '', 'Male', '0000-00-00', '', '', '', 'United States Minor Outlying Islands', '', '', '2020-09-21', '14:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `USER_CURRENT_IMAGE`
--

CREATE TABLE `USER_CURRENT_IMAGE` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `POST_ID` varchar(10) NOT NULL,
  `IMAGE_TYPE` varchar(20) NOT NULL,
  `IMAGE_STATUS` varchar(20) NOT NULL,
  `IMAGE_NAME` varchar(400) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_CURRENT_IMAGE`
--

INSERT INTO `USER_CURRENT_IMAGE` (`PROFILE_ID`, `POST_ID`, `IMAGE_TYPE`, `IMAGE_STATUS`, `IMAGE_NAME`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF2xdtbm', 'PS18cakr', 'Profile', 'Active', 'UEYyeGR0Ym1faW1hZ2UxNTM3NzkxOTA5NTgzXzIwMjAtMDktMTVfMjM6MDA6NDRfL3RtcC9waHB5QWlKWGY=.png', '2020-09-15', '23:00:44');

-- --------------------------------------------------------

--
-- Table structure for table `USER_EDUCATIONAL_INFO`
--

CREATE TABLE `USER_EDUCATIONAL_INFO` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `EDUCATION_ID` varchar(10) NOT NULL,
  `INSTITUTE_NAME` varchar(200) NOT NULL,
  `INSTITUTE_TYPE` varchar(200) NOT NULL,
  `DEGREE_TYPE` varchar(200) NOT NULL,
  `DEGREE` varchar(200) DEFAULT NULL,
  `SUBJECT` varchar(200) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `EDUCATION_INFO_PRIVACY` varchar(200) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER_EMPLOYMENT_INFO`
--

CREATE TABLE `USER_EMPLOYMENT_INFO` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `EMPLOYMENT_ID` varchar(10) NOT NULL,
  `COMPANY_NAME` varchar(200) NOT NULL,
  `DESIGNATION` varchar(200) NOT NULL,
  `ROLES` text NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `EMPLOYMENT_INFO_PRIVACY` varchar(200) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_EMPLOYMENT_INFO`
--

INSERT INTO `USER_EMPLOYMENT_INFO` (`PROFILE_ID`, `EMPLOYMENT_ID`, `COMPANY_NAME`, `DESIGNATION`, `ROLES`, `START_DATE`, `END_DATE`, `EMPLOYMENT_INFO_PRIVACY`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF35iwkp', 'EMPa969n4', 'abc', 'sd', 'jjjj', '2019-05-00', '2020-12-00', 'Public', '2020-09-01', '17:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `USER_FAVOURITE_LIST`
--

CREATE TABLE `USER_FAVOURITE_LIST` (
  `FAVOURITE_ID` varchar(10) NOT NULL,
  `PROFILE_ID` varchar(20) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_FAVOURITE_LIST`
--

INSERT INTO `USER_FAVOURITE_LIST` (`FAVOURITE_ID`, `PROFILE_ID`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('FAV100', 'PFy1kxsv', '2020-09-04', '22:32:39'),
('FAV126', 'PFy1kxsv', '2020-09-04', '23:28:43'),
('FAV127', 'PFy1kxsv', '2020-09-04', '23:29:48'),
('FAV135', 'PFy1kxsv', '2020-09-04', '23:29:35'),
('FAV136', 'PFy1kxsv', '2020-09-04', '23:29:20'),
('FAV139', 'PFy1kxsv', '2020-09-04', '23:29:28'),
('null', 'PF2xdtbm', '2020-09-02', '22:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `USER_GENDER_HASH_LIST`
--

CREATE TABLE `USER_GENDER_HASH_LIST` (
  `USER_GENDER_KEY` varchar(20) NOT NULL,
  `USER_GENDER_VALUE` varchar(10) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_GENDER_HASH_LIST`
--

INSERT INTO `USER_GENDER_HASH_LIST` (`USER_GENDER_KEY`, `USER_GENDER_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('Female', '2', '2020-06-02', '21:00:00'),
('Male', '1', '2020-06-02', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `USER_GIVEN_LIKE_DISLIKE`
--

CREATE TABLE `USER_GIVEN_LIKE_DISLIKE` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `POST_ID` varchar(10) NOT NULL,
  `LIKES` int(11) NOT NULL,
  `DISLIKE` int(11) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_GIVEN_LIKE_DISLIKE`
--

INSERT INTO `USER_GIVEN_LIKE_DISLIKE` (`PROFILE_ID`, `POST_ID`, `LIKES`, `DISLIKE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF18fbnz', 'PS180xs6', 1, 0, '2020-08-16', '21:51:22'),
('PF18fbnz', 'PS2yjrzw', 1, 0, '2020-08-19', '22:35:25'),
('PF2xdtbm', 'PS15p4z7', 0, 0, '2020-09-02', '22:39:20'),
('PF35iwkp', 'PS14cyvw', 1, 0, '2020-09-01', '17:49:47'),
('PFwqgx6j', 'PS17pis3', 1, 0, '2020-09-02', '21:45:07'),
('PFwqgx6j', 'PS27bhdw', 1, 0, '2020-09-06', '16:23:12'),
('PFwqgx6j', 'PS2wtnq4', 0, 0, '2020-09-06', '16:22:47'),
('PFwqgx6j', 'PS2x0i7t', 1, 0, '2020-09-06', '16:19:02'),
('PFwqgx6j', 'PSwbao21', 1, 0, '2020-09-06', '16:22:55'),
('PFy1kxsv', 'PS1aivy7', 0, 0, '2020-08-15', '15:59:40'),
('PFy1kxsv', 'PS1x7pz4', 0, 0, '2020-08-15', '15:47:07'),
('PFy1kxsv', 'PS29eer6', 0, 0, '2020-07-28', '14:58:17'),
('PFy1kxsv', 'PS2nn6gb', 1, 0, '2020-07-27', '21:41:45'),
('PFy1kxsv', 'PS2wtnq4', 0, 0, '2020-09-03', '21:14:07'),
('PFy1kxsv', 'PS3it041', 0, 0, '2020-09-06', '14:29:55'),
('PFy1kxsv', 'PS90cvko', 0, 0, '2020-08-29', '18:45:28'),
('PFy1kxsv', 'PSg1590z', 0, 1, '2020-07-27', '15:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `USER_GIVEN_POST_COMMENT_LIKE_DISLIKE`
--

CREATE TABLE `USER_GIVEN_POST_COMMENT_LIKE_DISLIKE` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `COMMENT_ID` varchar(10) NOT NULL,
  `LIKES` int(11) NOT NULL,
  `DISLIKE` int(11) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `USER_LOGIN_INFO`
--

CREATE TABLE `USER_LOGIN_INFO` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `USER_LOGIN_ID` varchar(200) NOT NULL,
  `USER_PWD` varchar(512) NOT NULL,
  `USER_TYPE` varchar(100) NOT NULL,
  `USER_STATUS` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_LOGIN_INFO`
--

INSERT INTO `USER_LOGIN_INFO` (`PROFILE_ID`, `USER_LOGIN_ID`, `USER_PWD`, `USER_TYPE`, `USER_STATUS`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF8e6jj4', '5129247944@vzwpix.com', '$2y$11$Bla6i6tzLSYeCJe1U1eK6.CJop.1Aw5RynYMKWepRg.FP/HdWLID2', 'PROFILE', 'NEWUSER', '2020-11-03', '23:06:21'),
('PF250ajp', '5129819640@vtext.com', '$2y$11$Ct2RSCLT9FHgCRQgThaxhepbPTvytrgsxzyaV9mkFi/SAsr5F4ski', 'PROFILE', 'NEWUSER', '2020-09-14', '14:31:47'),
('PFyoxze5', '8327764782@vtext.com', '$2y$11$UT/nkEZjMoVcuJfsIz3aZ.h.7.QJ9ZpefM5KQDbpI1mVftjRQPGb2', 'PROFILE', 'NEWUSER', '2020-09-21', '14:35:22'),
('PFxk5h15', '9647640176', '$2y$11$wI7AYeeYxPxS0bVPullW7OwgFCLQLp3WIfiHEBQkCf1vk83QslSXm', 'PROFILE', 'ACTIVE', '2020-08-29', '21:29:33'),
('PFy1kxsv', '9903688797', '$2y$11$efmyDSTLpG5D6qNy326a8.lYd0b5cWtl29uWHOqwWzUcUzEPDIMym', 'PROFILE', 'ACTIVE', '2020-06-02', '15:05:07'),
('PF147tdr', 'aaaa@gmail.com', '$2y$11$lqweH1rYzWB3oFkZ0p/lret/WcpbfLSf6R.XZsEXp2RDgdf9uuiUC', 'PROFILE', 'ACTIVE', '2020-12-18', '17:18:48'),
('PF2xdtbm', 'arupmahato523@gmail.com', '$2y$11$92qu/2wBmUKxYf9lk8wf/u0rGzDhkxu0tDSl3KDmABvGx9VeLbFJa', 'PROFILE', 'ACTIVE', '2020-09-01', '23:50:52'),
('PF3inm8f', 'b.jachvadze@gmail.com', '$2y$11$YVO8RktaBzMeXyV8a/d6/eR01Fw5eBtmK5ykVmC7wYfiaeni2U7Zm', 'PROFILE', 'NEWUSER', '2020-10-05', '14:37:06'),
('PF5z777s', 'blbowman6@gmail.com', '$2y$11$3yfxV9A89kHFf1AFrQ5C1.9OGocUB5pyPGwxL2NDGdQfQSkPww.0K', 'PROFILE', 'NEWUSER', '2020-10-01', '02:35:13'),
('PFvulfax', 'britney_laughland@aol.com', '$2y$11$mW4e2zpBMbcO7zb2ocqTeuB0yw2sYPrBGz0OS5YaAptylRQ9SrVJ6', 'PROFILE', 'NEWUSER', '2020-09-04', '08:51:29'),
('PF2zpz1u', 'dorvaldti@hotmail.com', '$2y$11$L1UL0WbOdN8VDa2ybXN5ye205V5U6Z.wydD6tGTE769dVetcYef0S', 'PROFILE', 'NEWUSER', '2020-10-29', '10:06:59'),
('PF2zbh02', 'fsevim@tts-haustechnik.de', '$2y$11$zxKV9dMV0B65Id/vwn845.UdTfDWOPckNDd3AiNoluzl1hIE7EgdO', 'PROFILE', 'NEWUSER', '2020-09-25', '19:10:30'),
('PF2nbzdh', 'griffip1@embarqmail.com', '$2y$11$mdoZut5tJTaozVAx6b607uVVkdF8LPIfcXBH/rLSnfl9lJSJhXr2S', 'PROFILE', 'NEWUSER', '2020-09-23', '19:26:08'),
('PF6o1jbd', 'info1@nfpworkshops.co.uk', '$2y$11$.5bonWS6pVGzDsKWeKMbsO0THURc7m4bSAS8mb4.9s6D7gYl3w5cm', 'PROFILE', 'NEWUSER', '2020-10-08', '16:15:24'),
('PF17k48z', 'info@hiltonmgmt.com', '$2y$11$TW1SewdDs4gZgGsxuXcfiekJIBt47x/WrqgV1kZFarBWbjqFZeqMS', 'PROFILE', 'NEWUSER', '2020-09-16', '18:50:52'),
('PF25bucg', 'jsholmes250@gmail.com', '$2y$11$uABb7DL2yo4e7L3jVVbA9uLZ4a7JaioJlyWT0F3g1FsykTzHKis36', 'PROFILE', 'NEWUSER', '2020-09-16', '10:59:26'),
('PF310wd9', 'kellykell12002@yahoo.com', '$2y$11$e9NSbie9r8JQ.WIwNCICyOCv0yHMfbvwTFe7yCu4xD/eghFRSCXXS', 'PROFILE', 'NEWUSER', '2020-10-04', '08:44:31'),
('PFb0wgjf', 'lindseyhaskins5@gmail.com', '$2y$11$CV6dX43b5A4ZgPKLFlybVeyosSa62DtixFS65QHRd5Hp.BLsoyt3u', 'PROFILE', 'NEWUSER', '2020-12-07', '06:33:00'),
('PF1z6qyj', 'lizexcelc25@yahoo.com', '$2y$11$RD0BnOZ8233XzCvq31aWw.epdqsfamRdfkE7uR/ETWKuF5B92gUZS', 'PROFILE', 'NEWUSER', '2020-10-09', '20:31:27'),
('PF1e2i2d', 'lynnann.todd@gmail.com', '$2y$11$x4zFPso9oIPp9aGERx7.iu7RLfXNGebXR6S7hMEzl4MrkPlCExWj6', 'PROFILE', 'NEWUSER', '2020-11-21', '04:39:52'),
('PF1ecto0', 'mjmaffie@yahoo.com', '$2y$11$/pkbxqunOFmdViGblsCVAOW4UPgPor3LerowBCy.8.xovrNIuaai6', 'PROFILE', 'NEWUSER', '2020-09-01', '22:02:09'),
('PF8k4n0h', 'Myrtice_Balistreri43@yahoo.com', '$2y$11$15Tefcp/g9DtdN08MpYkYexEQt49PdD6wdIByExl/Oim.4SSiL7uy', 'PROFILE', 'NEWUSER', '2020-10-29', '16:57:37'),
('PF3madye', 'ndempsey@blueash.com', '$2y$11$xodAEoGkxs4bxS0DKEM4suJMZNoNjhfoxHC205TA4lrUwE7Xk6J0S', 'PROFILE', 'NEWUSER', '2020-10-08', '03:48:29'),
('PFgwrxs3', 'paparelleno@yahoo.com', '$2y$11$Q4nF/LyQGEv7Ls2E67VdOuaSpvqgNn7gw3sKULZjMvOVryojNo4QS', 'PROFILE', 'NEWUSER', '2020-09-17', '04:45:39'),
('PF1xq36k', 'rdhsteve@hotmail.com', '$2y$11$8dj8PqaNCafQnWLE9lDctOtWkTaI961QmeUdLdURSgQqpqhLd8QIO', 'PROFILE', 'NEWUSER', '2020-09-15', '23:32:08'),
('PFwqgx6j', 'sanadebashis@gmail.com', '$2y$11$TefDR/pjiNtprfOGCefjFergkS0oum1xnCsmYcE186qdORoZvOQma', 'PROFILE', 'ACTIVE', '2020-08-04', '20:45:33'),
('PF35iwkp', 'sandipanmanna84@gmail.com', '$2y$11$2V.t7PGWyzEFIZed8qDwJ.qlnjiu6gCm/uWJ8eyfoMgJEx1qOCWcq', 'PROFILE', 'ACTIVE', '2020-09-01', '17:23:33'),
('PF18fbnz', 'shuvam.mondal008@gmail.com', '$2y$11$WIRSswzvAekswHIPWWLAV.C2E43GD4hXEzP2EYJbfbF71FV51i55i', 'PROFILE', 'ACTIVE', '2020-06-02', '22:53:34'),
('PF27spt1', 'talyomtuvian@gmail.com', '$2y$11$/dq0QFRIsGMAly5WKKL40.FSBTl639PdO6HdEGNsGPT0xl8SbF47e', 'PROFILE', 'NEWUSER', '2020-09-15', '12:09:46');

-- --------------------------------------------------------

--
-- Table structure for table `USER_MARTIAL_STATUS_HASH_LIST`
--

CREATE TABLE `USER_MARTIAL_STATUS_HASH_LIST` (
  `USER_MARTIAL_STATUS_KEY` varchar(100) NOT NULL,
  `USER_MARTIAL_STATUS_VALUE` varchar(10) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_MARTIAL_STATUS_HASH_LIST`
--

INSERT INTO `USER_MARTIAL_STATUS_HASH_LIST` (`USER_MARTIAL_STATUS_KEY`, `USER_MARTIAL_STATUS_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('Divorced', '5', '2020-06-02', '21:00:00'),
('Engaged', '2', '2020-06-02', '21:00:00'),
('In a Relationship', '3', '2020-06-02', '21:00:00'),
('Married', '4', '2020-06-02', '21:00:00'),
('Separated', '8', '2020-06-02', '21:00:00'),
('Single', '1', '2020-06-02', '21:00:00'),
('Widowed', '6', '2020-06-02', '21:00:00'),
('Widower', '7', '2020-06-02', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `USER_OCCUPATION_HASH_LIST`
--

CREATE TABLE `USER_OCCUPATION_HASH_LIST` (
  `USER_OCCUPATION_KEY` varchar(200) NOT NULL,
  `USER_OCCUPATION_VALUE` varchar(10) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_OCCUPATION_HASH_LIST`
--

INSERT INTO `USER_OCCUPATION_HASH_LIST` (`USER_OCCUPATION_KEY`, `USER_OCCUPATION_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('None', '0', '2020-06-02', '21:00:00'),
('Software Professional', '1', '2020-06-02', '21:00:00'),
('Teacher', '2', '2020-06-02', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `USER_PROFILE_PRIVACY`
--

CREATE TABLE `USER_PROFILE_PRIVACY` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `PRIVACY_KEY` varchar(200) NOT NULL,
  `PRIVACY_VALUE` varchar(200) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PROFILE_PRIVACY`
--

INSERT INTO `USER_PROFILE_PRIVACY` (`PROFILE_ID`, `PRIVACY_KEY`, `PRIVACY_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PFy1kxsv', 'DOB_DAY', 'public', '2020-09-09', '14:39:41'),
('PFy1kxsv', 'DOB_YEAR', 'private', '2020-09-09', '14:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `USER_PROFILE_PRIVACY_KEY_LIST`
--

CREATE TABLE `USER_PROFILE_PRIVACY_KEY_LIST` (
  `USER_PROFILE_PRIVACY_KEY` varchar(200) NOT NULL,
  `USER_PROFILE_PRIVACY_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PROFILE_PRIVACY_KEY_LIST`
--

INSERT INTO `USER_PROFILE_PRIVACY_KEY_LIST` (`USER_PROFILE_PRIVACY_KEY`, `USER_PROFILE_PRIVACY_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('DOB_DAY', '1', '2020-09-09', '14:25:11'),
('DOB_YEAR', '2', '2020-09-09', '14:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `USER_RATING_INDEPTH`
--

CREATE TABLE `USER_RATING_INDEPTH` (
  `PROFILE_ID` varchar(100) NOT NULL,
  `POST_ID` varchar(10) NOT NULL,
  `RATING` varchar(4) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_RATING_INDEPTH`
--

INSERT INTO `USER_RATING_INDEPTH` (`PROFILE_ID`, `POST_ID`, `RATING`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('PF18fbnz', 'PS180xs6', '6', '2020-08-16', '21:50:00'),
('PF18fbnz', 'PS1x7pz4', '8', '2020-08-15', '15:53:03'),
('PF2xdtbm', 'PS16jzt3', '2', '2020-09-02', '22:38:59'),
('PFwqgx6j', 'PS27bhdw', '8', '2020-09-06', '16:28:58'),
('PFwqgx6j', 'PS2x0i7t', '8', '2020-09-06', '16:24:04'),
('PFwqgx6j', 'PSwbao21', '9', '2020-09-06', '16:25:34'),
('PFy1kxsv', 'PS1aivy7', '4', '2020-08-15', '20:10:39'),
('PFy1kxsv', 'PS29eer6', '3', '2020-09-03', '20:50:47'),
('PFy1kxsv', 'PS3n35o4', '8', '2020-08-05', '21:47:57'),
('PFy1kxsv', 'PSg1590z', '3', '2020-08-05', '21:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `USER_SEXUAL_ORIENTATION_HASH_LIST`
--

CREATE TABLE `USER_SEXUAL_ORIENTATION_HASH_LIST` (
  `USER_SEXUAL_ORIENTATION_KEY` varchar(100) NOT NULL,
  `USER_SEXUAL_ORIENTATION_VALUE` varchar(10) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_SEXUAL_ORIENTATION_HASH_LIST`
--

INSERT INTO `USER_SEXUAL_ORIENTATION_HASH_LIST` (`USER_SEXUAL_ORIENTATION_KEY`, `USER_SEXUAL_ORIENTATION_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('Both', '3', '2020-06-02', '21:00:00'),
('Female', '2', '2020-06-02', '21:00:00'),
('Male', '1', '2020-06-02', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `USER_STATUS_HASH_LIST`
--

CREATE TABLE `USER_STATUS_HASH_LIST` (
  `USER_STATUS_KEY` varchar(100) NOT NULL,
  `USER_STATUS_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_STATUS_HASH_LIST`
--

INSERT INTO `USER_STATUS_HASH_LIST` (`USER_STATUS_KEY`, `USER_STATUS_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('ACTIVE', '1', '2020-06-02', '21:00:00'),
('BLOCKED', '0', '2020-06-02', '21:00:00'),
('DEACTIVATE', '5', '2020-06-02', '21:00:00'),
('INACTIVE', '2', '2020-06-02', '21:00:00'),
('NEWUSER', '3', '2020-06-02', '21:00:00'),
('REMOVED', '4', '2020-06-02', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `USER_TYPE_HASH_LIST`
--

CREATE TABLE `USER_TYPE_HASH_LIST` (
  `USER_TYPE_KEY` varchar(100) NOT NULL,
  `USER_TYPE_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_TYPE_HASH_LIST`
--

INSERT INTO `USER_TYPE_HASH_LIST` (`USER_TYPE_KEY`, `USER_TYPE_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('ADMIN', '0', '2020-06-02', '21:00:00'),
('PROFILE', '1', '2020-06-02', '21:00:00'),
('TECHSUPPORT', '2', '2020-06-02', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `WEBRTC_INFO`
--

CREATE TABLE `WEBRTC_INFO` (
  `WEBRTC_EVENT_ID` varchar(15) NOT NULL,
  `SENDER_PROFILE_ID` varchar(10) NOT NULL,
  `RECEIVER_PROFILE_ID` varchar(10) NOT NULL,
  `WEBRTC_EVENT` varchar(20) NOT NULL,
  `WEBRTC_DATA` text NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `WEBRTC_INFO`
--

INSERT INTO `WEBRTC_INFO` (`WEBRTC_EVENT_ID`, `SENDER_PROFILE_ID`, `RECEIVER_PROFILE_ID`, `WEBRTC_EVENT`, `WEBRTC_DATA`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('WEBRTC10116r', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 7998446101421614709 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:+8VT\\r\\na=ice-pwd:n+JdgsEPAuZJ+vsVItHNRKeQ\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 92:68:35:DD:1D:76:88:5A:72:33:3F:3E:EF:E6:EE:50:B0:32:FD:F3:5E:9A:2C:25:21:C7:3C:1F:58:89:82:43\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:912465764 cname:y+xtyxWIl/TKPOIw\\r\\n\"}', '2020-08-28', '14:14:17'),
('WEBRTC10al6i', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:3816114306 1 tcp 1518283007 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 9 typ host tcptype active generation 0 ufrag A0jH network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:04:06'),
('WEBRTC11hz8p', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 56229 typ host generation 2 ufrag 3hPw network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:55:20'),
('WEBRTC13mtg5', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 60949 typ host generation 0 ufrag A0jH network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:04:07'),
('WEBRTC13ps1r', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 1527072455716079522 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:YWoZ\\r\\na=ice-pwd:P2uncjdp4nhcYoqaRO2PNL6P\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 48:07:AF:CD:C8:2F:C3:D9:5B:96:DA:C6:C5:2D:4B:7E:9E:01:EA:C1:33:51:61:64:C5:6F:AC:E6:77:2F:BA:56\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1045749127 cname:bDrUXbUirLMxz44G\\r\\na=ssrc:1045749127 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:1045749127 mslabel:WebRTCDataChanel\\r\\na=ssrc:1045749127 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '15:02:09'),
('WEBRTC13vrmn', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 7580662004807554398 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:7HJW\\r\\na=ice-pwd:KZK76cOly5MreNY8bxYYC7l/\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 2B:3E:11:57:3A:BC:E6:D4:10:F6:D0:B7:5E:F8:07:CD:DD:F8:8A:40:DB:29:45:2E:09:23:42:9E:01:90:EE:A5\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2780614741 cname:VKbTgiABISRtie+R\\r\\n\"}', '2020-08-28', '13:18:16'),
('WEBRTC140wyg', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 57412 typ host generation 0 ufrag YDep network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:14:17'),
('WEBRTC15p7fh', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 61339 typ host generation 0 ufrag jzGk network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:36:48'),
('WEBRTC15ty3n', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 52349 typ host generation 0 ufrag +8VT network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:14:18'),
('WEBRTC17flb9', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:778208470 1 udp 2122197247 2402:3a80:a43:2cdd:f44c:f556:420d:4343 52705 typ host generation 0 ufrag Nbev network-id 3 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:58:17'),
('WEBRTC18brq8', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 2180077640962038442 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:fMrk\\r\\na=ice-pwd:KrKyc1Ayo4Bcv8MyHsI9OhyN\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 99:CB:46:8D:C6:1A:B4:DF:5D:77:AB:61:A8:CC:65:51:8D:D5:D2:B5:78:A0:D0:2E:DB:45:8B:13:BE:C6:47:CD\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2284713034 cname:hteZfJOB6TdS4AIQ\\r\\na=ssrc:2284713034 msid:chat chat\\r\\na=ssrc:2284713034 mslabel:chat\\r\\na=ssrc:2284713034 label:chat\\r\\n\"}', '2020-08-28', '13:18:15'),
('WEBRTC18isn3', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6486399388919908178 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:RY9r\\r\\na=ice-pwd:ar6kHK24X9jwc4N/wW5Z+GVf\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 0D:BD:C9:5A:10:67:BB:AD:FF:98:FE:E7:92:5A:30:D0:BE:70:E5:4C:AE:84:87:2E:F0:F4:FC:E2:35:EF:A3:F9\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:3570139352 cname:6I5VIBCJg15Yphsh\\r\\na=ssrc:3570139352 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:3570139352 mslabel:WebRTCDataChanel\\r\\na=ssrc:3570139352 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '15:14:38'),
('WEBRTC19szri', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 53707 typ host generation 0 ufrag gzHB network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:48:12'),
('WEBRTC19w2xd', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 4506021285370154577 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:gzHB\\r\\na=ice-pwd:uPb8EhUlRXvp8tNoey1YJWTW\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 5F:C9:85:DD:8C:7C:12:90:80:9E:9C:AB:94:6A:F6:83:C7:90:88:D9:03:04:15:7C:C1:6C:AC:D8:A6:DA:C8:A2\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1071469119 cname:qm0KBCjEXaQ3ZYQD\\r\\n\"}', '2020-08-28', '13:44:08'),
('WEBRTC1adk22', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 54070 typ host generation 0 ufrag mvSW network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:13:19'),
('WEBRTC1aen2r', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 53866 typ host generation 0 ufrag qny3 network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:00:24'),
('WEBRTC1afuqd', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 62421 typ host generation 0 ufrag 65zX network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:48:10'),
('WEBRTC1aj534', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 60516 typ host generation 0 ufrag 06db network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:21:10'),
('WEBRTC1bsaei', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:1736268921 1 tcp 1518149375 192.168.1.3 9 typ host tcptype active generation 0 ufrag RY9r network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:14:39'),
('WEBRTC1bzd1d', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:778208470 1 udp 2122197247 2402:3a80:a43:2cdd:f44c:f556:420d:4343 59743 typ host generation 0 ufrag RY9r network-id 3 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:14:40'),
('WEBRTC1c0phc', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 1a69261f-3ea4-4e4e-9c8c-d466c8399582.local 61195 typ host generation 0 ufrag M4T/ network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:58:46'),
('WEBRTC1e00td', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 383346266650072229 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:A0jH\\r\\na=ice-pwd:hD/eYj1rVD1BfoVQcbJ9YdEX\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 BD:1F:55:EC:BB:E9:14:E0:77:DD:15:EE:C9:A1:93:84:0E:A0:35:DB:A7:B1:CA:2E:13:DD:A5:3B:A2:E3:F5:18\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1147605451 cname:eXDuWL1y5spPSEZq\\r\\na=ssrc:1147605451 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:1147605451 mslabel:WebRTCDataChanel\\r\\na=ssrc:1147605451 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '15:04:06'),
('WEBRTC1r54vf', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 54639 typ host generation 1 ufrag 5rzF network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:58:18'),
('WEBRTC1rmtp7', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 2770890812607913406 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:YjB6\\r\\na=ice-pwd:+SCZd+4t0ly2t8n2A0bFRFrc\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 37:F1:27:6D:31:4A:B5:99:33:26:60:D0:F3:D4:CC:75:36:DB:1B:9F:9C:C9:0D:92:84:60:58:0B:12:C1:A8:B6\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:3877743679 cname:fLSh7f3W/gorBhL3\\r\\n\"}', '2020-08-28', '15:14:39'),
('WEBRTC1saykr', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 64754 typ host generation 0 ufrag rnN4 network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:58:15'),
('WEBRTC1ta09d', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6757206419950971913 5 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:H+yf\\r\\na=ice-pwd:DqmtKVyNtc2258dSoi/P5sn4\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 F9:58:E2:E7:2E:BE:3C:32:A5:E5:BE:D8:6A:98:64:94:1C:56:71:DC:BE:D0:AA:48:5D:76:64:61:B2:D6:BF:51\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:86021352 cname:X8+4QsMAW4WJOo5S\\r\\na=ssrc:86021352 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:86021352 mslabel:WebRTCDataChanel\\r\\na=ssrc:86021352 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:55:20'),
('WEBRTC1tus7x', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 383346266650072229 3 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 60951 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 192.168.1.3\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=candidate:3816114306 1 tcp 1518283007 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 9 typ host tcptype active generation 0 network-id 2 network-cost 10\\r\\na=candidate:1625389094 1 tcp 1518217471 2402:3a80:a43:2cdd:f44c:f556:420d:4343 9 typ host tcptype active generation 0 network-id 3 network-cost 10\\r\\na=candidate:1736268921 1 tcp 1518149375 192.168.1.3 9 typ host tcptype active generation 0 network-id 1 network-cost 10\\r\\na=candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 60949 typ host generation 0 network-id 2 network-cost 10\\r\\na=candidate:778208470 1 udp 2122197247 2402:3a80:a43:2cdd:f44c:f556:420d:4343 60950 typ host generation 0 network-id 3 network-cost 10\\r\\na=candidate:704553097 1 udp 2122129151 192.168.1.3 60951 typ host generation 0 network-id 1 network-cost 10\\r\\na=ice-ufrag:A0jH\\r\\na=ice-pwd:hD/eYj1rVD1BfoVQcbJ9YdEX\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 BD:1F:55:EC:BB:E9:14:E0:77:DD:15:EE:C9:A1:93:84:0E:A0:35:DB:A7:B1:CA:2E:13:DD:A5:3B:A2:E3:F5:18\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1147605451 cname:eXDuWL1y5spPSEZq\\r\\na=ssrc:1147605451 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:1147605451 mslabel:WebRTCDataChanel\\r\\na=ssrc:1147605451 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '15:04:59'),
('WEBRTC1vygg1', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 4526569310760688824 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:65zX\\r\\na=ice-pwd:v+GwfqqKGEOHDRumxmFlRvAf\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 22:54:44:F2:EC:4B:5D:E3:86:CF:98:78:A7:78:A7:DC:78:66:7C:3D:F2:E7:D4:1A:12:AA:B0:A4:B1:E4:B4:60\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1219806184 cname:agvagImnCCz9GRjn\\r\\na=ssrc:1219806184 msid:chat chat\\r\\na=ssrc:1219806184 mslabel:chat\\r\\na=ssrc:1219806184 label:chat\\r\\n\"}', '2020-08-28', '13:48:10'),
('WEBRTC1xbw0w', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 e16e80e7-5059-40fb-a06e-e7d05d19a5ce.local 58784 typ host generation 0 ufrag 6T5Y network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '02:36:44'),
('WEBRTC1y29w4', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2122129151 192.168.1.3 59744 typ host generation 0 ufrag RY9r network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:14:40'),
('WEBRTC1z28oj', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 4818170776069583030 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Qecn\\r\\na=ice-pwd:/Qd1z0L9gv0FqadwQxhaNVWF\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 B5:F1:22:70:B0:49:93:BF:3B:24:8A:F8:1C:14:86:AC:80:15:C1:52:04:0A:6E:72:22:D8:67:77:57:C2:9C:C5\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2980222298 cname:hgRtqpTzjJg3G8sH\\r\\n\"}', '2020-08-28', '15:04:09'),
('WEBRTC1zb56x', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:3816114306 1 tcp 1518283007 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 9 typ host tcptype active generation 0 ufrag YWoZ network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:02:09'),
('WEBRTC1zf12f', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 3ee94a96-239d-4f20-b5fe-6791dc6eebd9.local 56364 typ host generation 0 ufrag 7HJW network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:18:16'),
('WEBRTC1zokt2', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 39db988f-7a0d-440d-8b43-e67fe52b65b8.local 64821 typ host generation 0 ufrag fMrk network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:18:15'),
('WEBRTC1zpcka', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 5575494385051865391 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:ZWnD\\r\\na=ice-pwd:TLVPMNAe32D4ymS2jjKcHKVW\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 A6:7B:94:ED:38:4E:95:3F:79:62:68:93:73:2E:19:6B:AA:3C:16:3B:A3:01:62:33:FA:FF:1D:57:68:63:05:FF\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2219169469 cname:pZmTqtAml2RmCAv9\\r\\n\"}', '2020-08-28', '13:40:27'),
('WEBRTC1zy0nm', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 3860168852662910768 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 119\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:JrdY\\r\\na=ice-pwd:MpvedsZz7i8RsXFhnv8YZzJ+\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 75:7B:E4:99:81:E4:7B:E8:6F:27:D1:95:A5:26:D2:A3:2B:C3:B8:DD:50:97:95:D2:CE:E0:4C:D7:92:0E:7A:7D\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:119 google-data/90000\\r\\na=ssrc:2169290185 cname:QdWFDXqzyfsOnCfs\\r\\na=ssrc:2169290185 msid:chat chat\\r\\na=ssrc:2169290185 mslabel:chat\\r\\na=ssrc:2169290185 label:chat\\r\\n\"}', '2020-08-28', '02:36:40'),
('WEBRTC21a6bo', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:842163049 1 udp 1677729535 42.110.139.192 33722 typ srflx raddr 0.0.0.0 rport 0 generation 0 ufrag Qecn network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:04:09'),
('WEBRTC2314ug', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 6827559888976106319 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:M4T/\\r\\na=ice-pwd:9MvGAvTP497QMCRHVF28uqz7\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 98:59:DA:2F:0E:93:B8:4B:53:72:71:DF:15:1D:80:C3:7A:36:E8:57:7C:BD:C4:BE:3D:98:7B:D8:C3:A7:C9:3C\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1994699935 cname:Qcpspdy8LnXc26Wf\\r\\n\"}', '2020-08-28', '14:58:46'),
('WEBRTC23a22c', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2122129151 192.168.1.3 52706 typ host generation 0 ufrag Nbev network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:58:17'),
('WEBRTC24zzu2', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:3816114306 1 tcp 1518283007 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 9 typ host tcptype active generation 0 ufrag RY9r network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:14:39'),
('WEBRTC25ov6a', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 53741 typ host generation 0 ufrag hiWH network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:09:33'),
('WEBRTC27fexy', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:842163049 1 udp 1677729535 42.110.139.192 41008 typ srflx raddr 0.0.0.0 rport 0 generation 0 ufrag LzYB network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:02:11'),
('WEBRTC27okn8', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6535024024027348123 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:+5EI\\r\\na=ice-pwd:Yze3h8GIgofYMFzY0lC1MaRk\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 02:AA:65:E0:54:96:67:30:95:4F:49:63:ED:87:8D:36:59:F8:20:E1:AB:F8:A5:96:3F:3B:55:4D:8F:C5:20:D1\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1450909350 cname:pZOQB22IfxSx8Ne8\\r\\na=ssrc:1450909350 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:1450909350 mslabel:WebRTCDataChanel\\r\\na=ssrc:1450909350 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:13:15'),
('WEBRTC27xcxi', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 7227833952680647177 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:YDep\\r\\na=ice-pwd:Ow6e5JxQkQYwwZkW7qtqa4Wk\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 18:4B:91:7C:78:7F:71:5E:DB:DE:F8:40:30:62:3F:DF:DC:82:47:2F:9C:B1:4D:71:75:2E:17:93:C1:E5:2A:B2\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:3278295346 cname:oeuD0KHeo+biipQ/\\r\\na=ssrc:3278295346 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:3278295346 mslabel:WebRTCDataChanel\\r\\na=ssrc:3278295346 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:14:16'),
('WEBRTC28w2xb', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 2690746871168969100 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:LzYB\\r\\na=ice-pwd:FcNuW3hn7bhdev9UL0wjs575\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 8D:D5:D1:C7:4B:21:6C:0C:4C:9E:77:A0:AC:FD:03:4F:B0:6D:C0:A3:1A:E5:39:9C:8D:D7:FE:D1:00:2C:D6:75\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:598765164 cname:NomeWM0Dhax1CjOl\\r\\n\"}', '2020-08-28', '15:02:10'),
('WEBRTC29yf3u', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2122129151 192.168.1.3 64320 typ host generation 0 ufrag YWoZ network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:02:11'),
('WEBRTC2evpzt', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 53460 typ host generation 1 ufrag PHdA network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:51:12'),
('WEBRTC2mzk4k', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 5324827574498791169 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/DTLS/SCTP webrtc-datachannel\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=ice-ufrag:2uZx\\r\\na=ice-pwd:Kt94Ad5jLcxlpi4O1hT6tXfd\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 F8:7A:25:CF:DE:44:86:CA:1F:29:69:55:3C:0B:12:14:FD:E4:06:C9:37:3B:FA:62:B8:6F:F4:18:A9:FE:BD:8F\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sctp-port:5000\\r\\na=max-message-size:262144\\r\\n\"}', '2020-08-28', '14:21:11'),
('WEBRTC2n3itw', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:1625389094 1 tcp 1518217471 2402:3a80:a43:2cdd:f44c:f556:420d:4343 9 typ host tcptype active generation 0 ufrag RY9r network-id 3 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:14:39'),
('WEBRTC2nd4yd', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 53979 typ host generation 0 ufrag Abak network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:59:48'),
('WEBRTC2pc9jd', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 59742 typ host generation 0 ufrag RY9r network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:14:40'),
('WEBRTC2pm94r', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 8157626331981488950 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:jzGk\\r\\na=ice-pwd:ExK16H2kD0Q2xP7dRoSyJ7Kn\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 23:D6:65:85:8B:B3:86:31:EA:39:40:42:BF:E3:91:6F:3A:58:D2:25:07:89:D5:5B:DF:94:47:A5:62:AF:DF:50\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:3081631106 cname:onaYOPRvoqTH7Ked\\r\\na=ssrc:3081631106 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:3081631106 mslabel:WebRTCDataChanel\\r\\na=ssrc:3081631106 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '13:36:48'),
('WEBRTC2qq2tg', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 4268430580423733217 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Nbev\\r\\na=ice-pwd:NiZhwif4zElfjmux/SMxIBVQ\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 53:6C:6A:0C:15:B9:C4:07:CE:F9:DE:9E:55:E3:7C:5D:1A:52:4A:D4:31:AF:2C:5F:B2:06:F5:67:0A:4E:C4:00\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:3549096819 cname:F2D0Yk22VvxIsS8o\\r\\na=ssrc:3549096819 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:3549096819 mslabel:WebRTCDataChanel\\r\\na=ssrc:3549096819 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:58:16'),
('WEBRTC2rx909', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 6711998042713719610 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:EMDp\\r\\na=ice-pwd:5+ER8MGqnGFK7igPqtaiEmSe\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 0A:69:6B:E7:22:06:D7:7B:AA:F6:31:C6:23:C9:81:6B:02:AA:20:C8:E5:FA:F1:39:A8:55:99:FB:A3:C8:0D:AE\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1212847294 cname:iolmLZhDKtabXKHo\\r\\n\"}', '2020-08-28', '14:09:35'),
('WEBRTC2smz6q', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 8421956718458060240 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:pKUq\\r\\na=ice-pwd:ZyIQXVk4Z4pjgx3afZuaXLYo\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 D6:B9:78:9B:81:CF:A3:1C:A7:3E:E9:B3:D7:F6:CF:C6:36:3A:A9:2F:97:21:01:DE:B8:65:85:A4:A8:F2:F7:6F\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1960928655 cname:Vw2R8VcGFCsE4J7q\\r\\n\"}', '2020-08-28', '13:36:51'),
('WEBRTC2taizu', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 8649782742601875718 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 119\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:6T5Y\\r\\na=ice-pwd:TablhZ+jgctlHswwyftlHJWA\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 42:2D:92:AD:23:B1:01:4C:63:0F:69:7D:61:D9:A0:BE:AC:2E:95:DC:38:4B:A4:0B:93:25:E5:D8:7E:C1:7A:31\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:119 google-data/90000\\r\\na=ssrc:1202690405 cname:T+TOA28Bl17qJDiI\\r\\n\"}', '2020-08-28', '02:36:44'),
('WEBRTC2ulnyx', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 5084986703362453958 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:mvSW\\r\\na=ice-pwd:xo7bH39bV1eEOnBkM8KHhqBx\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 73:5C:97:C3:9F:52:65:FE:74:36:23:F8:16:B7:B4:AD:1E:19:2A:0F:19:B0:B6:77:FE:72:86:F6:F8:1C:FE:82\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2066091949 cname:GXyMTCP4/XC8hwoX\\r\\n\"}', '2020-08-28', '14:13:18'),
('WEBRTC2umjw0', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 461517702400598974 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:quyc\\r\\na=ice-pwd:YLFb8ENiyvj4xP9xLOwW3HiL\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 D6:F9:4A:96:4A:59:26:E3:2B:21:6D:34:58:59:B3:B3:7A:5D:D3:99:D1:56:4B:EF:25:87:D9:1A:02:D9:49:6B\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1937270327 cname:h8MLrVHTflQbpweP\\r\\na=ssrc:1937270327 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:1937270327 mslabel:WebRTCDataChanel\\r\\na=ssrc:1937270327 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:00:20'),
('WEBRTC2uvwrm', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 58078 typ host generation 0 ufrag yPv8 network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:40:24'),
('WEBRTC2v539m', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6757206419950971913 4 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:3hPw\\r\\na=ice-pwd:AgccQyTXgZZC9a0Boa6ul4m+\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 F9:58:E2:E7:2E:BE:3C:32:A5:E5:BE:D8:6A:98:64:94:1C:56:71:DC:BE:D0:AA:48:5D:76:64:61:B2:D6:BF:51\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:86021352 cname:X8+4QsMAW4WJOo5S\\r\\na=ssrc:86021352 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:86021352 mslabel:WebRTCDataChanel\\r\\na=ssrc:86021352 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:51:12'),
('WEBRTC2wpgme', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6400249826500532738 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:hiWH\\r\\na=ice-pwd:RFvdHzd5wBmoPBILTkl+0NKY\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 92:7A:33:C8:E4:FC:72:19:57:9E:22:50:6C:3E:04:C3:96:5C:23:FC:F4:FC:2D:B7:16:A5:28:13:7C:98:DD:1B\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1645390505 cname:bCgtFgUAVGUU0+8q\\r\\na=ssrc:1645390505 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:1645390505 mslabel:WebRTCDataChanel\\r\\na=ssrc:1645390505 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:09:32'),
('WEBRTC2xh6h3', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 7530983657502883186 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:rnN4\\r\\na=ice-pwd:sgOrlyTR7K3VfhK4ay73kjKn\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 42:D5:09:EE:6E:28:14:0C:E2:3C:A9:4C:6E:6A:E2:B0:FA:AD:66:AD:66:8B:AD:D8:0A:7C:4F:DC:9B:55:52:D3\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:3314719912 cname:mLBxjsoJv1DLQdvF\\r\\na=ssrc:3314719912 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:3314719912 mslabel:WebRTCDataChanel\\r\\na=ssrc:3314719912 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '13:58:15'),
('WEBRTC2xon85', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 fbe409f8-0c50-4094-9258-5a17cc842162.local 62176 typ host generation 0 ufrag pKUq network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:36:51'),
('WEBRTC2ywzlg', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:842163049 1 udp 1677729535 42.110.139.192 1924 typ srflx raddr 0.0.0.0 rport 0 generation 0 ufrag YjB6 network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:14:40'),
('WEBRTC2z2mnb', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 4350632229395242253 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:2OzC\\r\\na=ice-pwd:28E5tSdBI1lVMsIkyYz7y6xT\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 3B:77:E8:11:0D:17:FC:8E:81:72:EE:0B:32:D7:CC:2D:9A:54:44:23:A4:C9:16:13:0D:D1:94:50:2F:4F:56:DD\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:4002605912 cname:U43SBwzmz9p5+JCn\\r\\na=ssrc:4002605912 msid:chat chat\\r\\na=ssrc:4002605912 mslabel:chat\\r\\na=ssrc:4002605912 label:chat\\r\\n\"}', '2020-08-28', '13:26:19'),
('WEBRTC30jba2', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 64318 typ host generation 0 ufrag YWoZ network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:02:11'),
('WEBRTC30wqhx', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 2358343142781976894 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:1tAQ\\r\\na=ice-pwd:FjwqaIg0K3CPXGijUfElAE5n\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 DF:BB:12:73:D9:CF:48:81:3D:3F:F5:D6:C2:3F:DB:7D:FB:92:4E:46:C6:0B:C9:87:6E:43:07:55:D7:D0:2A:F7\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:75599984 cname:m9Tb+XRlpVyDjJlW\\r\\na=ssrc:75599984 msid:chat chat\\r\\na=ssrc:75599984 mslabel:chat\\r\\na=ssrc:75599984 label:chat\\r\\n\"}', '2020-08-28', '13:21:09'),
('WEBRTC31k74x', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 3456645113869077483 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Bdqr\\r\\na=ice-pwd:ctVhkKuOhnCltzWrP67V42dd\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 7B:A4:8F:18:6A:B7:BD:D9:4F:E2:2B:DB:2F:96:13:2A:A1:3C:F4:11:5A:AD:03:C7:66:28:5F:E6:AE:DE:43:F6\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2514050212 cname:Fn6rJ6aVF2N0Knkb\\r\\n\"}', '2020-08-28', '14:59:49'),
('WEBRTC330q5c', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:1625389094 1 tcp 1518217471 2402:3a80:a43:2cdd:f44c:f556:420d:4343 9 typ host tcptype active generation 0 ufrag YWoZ network-id 3 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:02:10'),
('WEBRTC354xwi', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 51583 typ host generation 0 ufrag 2uZx network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:21:11'),
('WEBRTC3ikny2', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2122260223 192.168.1.3 56491 typ host generation 0 ufrag JrdY network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '02:36:41'),
('WEBRTC3ipnq8', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:1736268921 1 tcp 1518149375 192.168.1.3 9 typ host tcptype active generation 0 ufrag A0jH network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:04:07'),
('WEBRTC3kfe3u', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:842163049 1 udp 1677729535 42.110.139.192 28183 typ srflx raddr 0.0.0.0 rport 0 generation 0 ufrag M4T/ network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:58:47'),
('WEBRTC3kg08p', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 57571 typ host generation 0 ufrag +5EI network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:13:15'),
('WEBRTC3kol70', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 57047 typ host generation 0 ufrag 3EEt network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:49:56'),
('WEBRTC3lamp8', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 1a69261f-3ea4-4e4e-9c8c-d466c8399582.local 51926 typ host generation 0 ufrag YjB6 network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:14:40'),
('WEBRTC3man4r', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 52704 typ host generation 0 ufrag Nbev network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:58:16'),
('WEBRTC3meiau', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6757206419950971913 3 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:PHdA\\r\\na=ice-pwd:joKdAo8TA1jDp8xGLfrg0dF7\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 F9:58:E2:E7:2E:BE:3C:32:A5:E5:BE:D8:6A:98:64:94:1C:56:71:DC:BE:D0:AA:48:5D:76:64:61:B2:D6:BF:51\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:86021352 cname:X8+4QsMAW4WJOo5S\\r\\na=ssrc:86021352 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:86021352 mslabel:WebRTCDataChanel\\r\\na=ssrc:86021352 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:50:40'),
('WEBRTC3mli7z', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6264266430466353979 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:yPv8\\r\\na=ice-pwd:Cwr/k7ILZsNqyP6ZegGIxpvG\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 B7:6D:DC:42:3B:B7:8C:86:88:BD:BE:7B:75:96:E4:A6:99:66:CE:18:B6:A4:68:4E:0F:9F:91:0A:48:62:32:69\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:3028255630 cname:5mpfSOdJhwD0zaRZ\\r\\na=ssrc:3028255630 msid:chat chat\\r\\na=ssrc:3028255630 mslabel:chat\\r\\na=ssrc:3028255630 label:chat\\r\\n\"}', '2020-08-28', '13:40:23'),
('WEBRTC3mq475', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 55598 typ host generation 0 ufrag PbL7 network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:44:07'),
('WEBRTC3mwuul', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 7966853982112812360 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:PbL7\\r\\na=ice-pwd:aBQrefeUECGqU8eIjtRdWDjE\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 0A:89:4C:32:CA:14:E6:9E:10:ED:7F:4A:75:57:05:5B:2F:5C:ED:E4:D2:E9:E9:41:75:43:BC:28:F8:AC:69:63\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:3125315550 cname:GXE+8Hf04UMWIVoh\\r\\na=ssrc:3125315550 msid:chat chat\\r\\na=ssrc:3125315550 mslabel:chat\\r\\na=ssrc:3125315550 label:chat\\r\\n\"}', '2020-08-28', '13:44:07'),
('WEBRTC48p8bx', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2122129151 192.168.1.3 53981 typ host generation 0 ufrag Abak network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:59:49'),
('WEBRTC4d461k', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 8421956718458060240 3 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:qKBJ\\r\\na=ice-pwd:Z6KE5HV+laNm9emRCwA8mecm\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 D6:B9:78:9B:81:CF:A3:1C:A7:3E:E9:B3:D7:F6:CF:C6:36:3A:A9:2F:97:21:01:DE:B8:65:85:A4:A8:F2:F7:6F\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:3205225476 cname:Vw2R8VcGFCsE4J7q\\r\\n\"}', '2020-08-28', '13:40:26'),
('WEBRTC4i4oye', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:778208470 1 udp 2122197247 2402:3a80:a43:2cdd:f44c:f556:420d:4343 64319 typ host generation 0 ufrag YWoZ network-id 3 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:02:11'),
('WEBRTC52wsyg', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 3ee94a96-239d-4f20-b5fe-6791dc6eebd9.local 61998 typ host generation 0 ufrag Nfl2 network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:21:11'),
('WEBRTC67do0f', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:778208470 1 udp 2122197247 2402:3a80:a43:2cdd:f44c:f556:420d:4343 60950 typ host generation 0 ufrag A0jH network-id 3 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:04:08'),
('WEBRTC6xb5u9', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 7722636088871162340 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:qny3\\r\\na=ice-pwd:Bci5HWKaa+ONFDdbbSVrwjEa\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 06:B3:F6:A1:05:8F:AC:71:3E:6C:D0:A1:E1:D0:05:80:0B:84:0F:C2:67:08:29:B2:FA:88:F3:C6:D5:1F:C1:43\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:886101694 cname:Tr/MCsJuwc5s/4+M\\r\\n\"}', '2020-08-28', '14:00:24'),
('WEBRTC73e4k9', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 55356 typ host generation 0 ufrag EMDp network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:09:35'),
('WEBRTC7whsw1', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6757206419950971913 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:3EEt\\r\\na=ice-pwd:8ryE5EJ3Ogm/Gj+EpCVSx9+O\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 F9:58:E2:E7:2E:BE:3C:32:A5:E5:BE:D8:6A:98:64:94:1C:56:71:DC:BE:D0:AA:48:5D:76:64:61:B2:D6:BF:51\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:86021352 cname:X8+4QsMAW4WJOo5S\\r\\na=ssrc:86021352 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:86021352 mslabel:WebRTCDataChanel\\r\\na=ssrc:86021352 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:49:55'),
('WEBRTC80vliz', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 59615 typ host generation 0 ufrag Wgy0 network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:26:22'),
('WEBRTC8awesr', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:842163049 1 udp 1677729535 42.110.139.192 44969 typ srflx raddr 0.0.0.0 rport 0 generation 0 ufrag Bdqr network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:59:50'),
('WEBRTC8xo8w8', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 58848 typ host generation 0 ufrag +puF network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:36:49'),
('WEBRTCao5fsy', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 39db988f-7a0d-440d-8b43-e67fe52b65b8.local 60439 typ host generation 0 ufrag 1tAQ network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:21:09'),
('WEBRTCb0a255', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 4506021285370154577 3 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:5rzF\\r\\na=ice-pwd:WFqNFJA7lYg0OdvObQkZPWqK\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 5F:C9:85:DD:8C:7C:12:90:80:9E:9C:AB:94:6A:F6:83:C7:90:88:D9:03:04:15:7C:C1:6C:AC:D8:A6:DA:C8:A2\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1071469119 cname:qm0KBCjEXaQ3ZYQD\\r\\n\"}', '2020-08-28', '13:48:12'),
('WEBRTCc8xjhg', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 1a69261f-3ea4-4e4e-9c8c-d466c8399582.local 51728 typ host generation 0 ufrag Qecn network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:04:09'),
('WEBRTCckwt0m', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 58371 typ host generation 0 ufrag gzHB network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:44:08'),
('WEBRTCcrxan0', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 1a69261f-3ea4-4e4e-9c8c-d466c8399582.local 62541 typ host generation 0 ufrag Bdqr network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:59:49'),
('WEBRTCdu6f1g', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:1625389094 1 tcp 1518217471 2402:3a80:a43:2cdd:f44c:f556:420d:4343 9 typ host tcptype active generation 0 ufrag A0jH network-id 3 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:04:07');
INSERT INTO `WEBRTC_INFO` (`WEBRTC_EVENT_ID`, `SENDER_PROFILE_ID`, `RECEIVER_PROFILE_ID`, `WEBRTC_EVENT`, `WEBRTC_DATA`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('WEBRTCdv8ugs', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 1722702201729761903 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Nfl2\\r\\na=ice-pwd:WqeUyTlMsYAwnjgd3ReGZJpB\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 6F:24:CC:29:6F:BE:F7:A5:94:99:E1:C9:BA:1B:68:89:65:57:62:42:A2:F9:10:31:F3:A7:C8:69:63:6F:8A:61\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2728748706 cname:s1uPgimshET0UMbo\\r\\n\"}', '2020-08-28', '13:21:10'),
('WEBRTCdylgak', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 f5135d7d-bf35-4f78-9573-ae9e462e0771.local 54783 typ host generation 0 ufrag quyc network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:00:20'),
('WEBRTCec8t4j', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2122129151 192.168.1.3 60951 typ host generation 0 ufrag A0jH network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:04:08'),
('WEBRTCehi1qw', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 4506021285370154577 4 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:fGup\\r\\na=ice-pwd:4xULWvMxKMA5RUnQ2evA8MI4\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 5F:C9:85:DD:8C:7C:12:90:80:9E:9C:AB:94:6A:F6:83:C7:90:88:D9:03:04:15:7C:C1:6C:AC:D8:A6:DA:C8:A2\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1303763677 cname:qm0KBCjEXaQ3ZYQD\\r\\n\"}', '2020-08-28', '13:58:18'),
('WEBRTCgc26ec', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:778208470 1 udp 2122197247 2402:3a80:a43:2cdd:f44c:f556:420d:4343 53980 typ host generation 0 ufrag Abak network-id 3 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:59:49'),
('WEBRTCgy0is0', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 4196823713660840043 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:+puF\\r\\na=ice-pwd:2blRvMZ9w2EdH+FLVJc312zY\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 64:5E:2B:92:83:69:C7:FC:9A:1A:74:52:B9:DA:C4:5B:39:3B:BF:A1:A1:D6:02:10:84:9B:CF:63:C6:2A:E6:33\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2753456775 cname:rzw2PFYE4cRdPia0\\r\\n\"}', '2020-08-28', '13:36:49'),
('WEBRTChtb283', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 1268502379684667544 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Wgy0\\r\\na=ice-pwd:anjCT6JGFuDdtN1cV0tIn6UC\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 7E:8B:99:39:AD:CE:0C:87:C0:E2:A1:F6:16:63:25:08:CF:A8:3F:A4:0C:7E:99:25:92:2E:74:CE:EF:8F:C5:FF\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:chat chat\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2408438699 cname:5ORb2XE43uP3SvhN\\r\\n\"}', '2020-08-28', '13:26:22'),
('WEBRTChwunk1', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 8695223592509233660 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 0.0.0.0\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=ice-ufrag:Abak\\r\\na=ice-pwd:cTxgvz70t85TdTQP8E2hCDKP\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 A4:43:BD:6B:97:DE:F2:50:96:26:19:3E:EF:01:27:57:BF:AB:B0:57:C6:2F:B2:57:A5:A6:95:BF:4A:4A:CE:42\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:1503603243 cname:83o28ZXJGhbwUsb6\\r\\na=ssrc:1503603243 msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=ssrc:1503603243 mslabel:WebRTCDataChanel\\r\\na=ssrc:1503603243 label:WebRTCDataChanel\\r\\n\"}', '2020-08-28', '14:59:48'),
('WEBRTCi6kdah', 'PFwqgx6j', 'PFy1kxsv', 'Send_Answer', '{\"type\":\"answer\",\"sdp\":\"v=0\\r\\no=- 4818170776069583030 3 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 33722 UDP/TLS/RTP/SAVPF 118\\r\\nc=IN IP4 42.110.139.192\\r\\nb=AS:30\\r\\na=rtcp:9 IN IP4 0.0.0.0\\r\\na=candidate:2783420672 1 udp 2113937151 1a69261f-3ea4-4e4e-9c8c-d466c8399582.local 51728 typ host generation 0 network-cost 999\\r\\na=candidate:842163049 1 udp 1677729535 42.110.139.192 33722 typ srflx raddr 0.0.0.0 rport 0 generation 0 network-cost 999\\r\\na=ice-ufrag:Qecn\\r\\na=ice-pwd:/Qd1z0L9gv0FqadwQxhaNVWF\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 B5:F1:22:70:B0:49:93:BF:3B:24:8A:F8:1C:14:86:AC:80:15:C1:52:04:0A:6E:72:22:D8:67:77:57:C2:9C:C5\\r\\na=setup:active\\r\\na=mid:0\\r\\na=sendrecv\\r\\na=msid:WebRTCDataChanel WebRTCDataChanel\\r\\na=rtcp-mux\\r\\na=rtpmap:118 google-data/90000\\r\\na=ssrc:2980222298 cname:hgRtqpTzjJg3G8sH\\r\\n\"}', '2020-08-28', '15:05:00'),
('WEBRTCiqy6t8', 'PFy1kxsv', 'PFwqgx6j', 'Send_Offer', '{\"type\":\"offer\",\"sdp\":\"v=0\\r\\no=- 6057843372946540490 2 IN IP4 127.0.0.1\\r\\ns=-\\r\\nt=0 0\\r\\na=group:BUNDLE 0\\r\\na=msid-semantic: WMS\\r\\nm=application 9 UDP/DTLS/SCTP webrtc-datachannel\\r\\nc=IN IP4 0.0.0.0\\r\\na=ice-ufrag:06db\\r\\na=ice-pwd:93tygf8W6+L9h+/DY501/RxN\\r\\na=ice-options:trickle\\r\\na=fingerprint:sha-256 0F:A8:EB:29:E4:11:6C:AB:C0:B9:10:41:D3:60:96:61:A1:11:12:15:7F:C0:68:4D:D7:F7:A9:5A:7F:85:CC:21\\r\\na=setup:actpass\\r\\na=mid:0\\r\\na=sctp-port:5000\\r\\na=max-message-size:262144\\r\\n\"}', '2020-08-28', '14:21:10'),
('WEBRTCvpses0', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:1736268921 1 tcp 1518149375 192.168.1.3 9 typ host tcptype active generation 0 ufrag YWoZ network-id 1 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:02:10'),
('WEBRTCvusras', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 fbe409f8-0c50-4094-9258-5a17cc842162.local 64012 typ host generation 1 ufrag qKBJ network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:40:26'),
('WEBRTCw495ct', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:2918626418 1 udp 2122262783 2402:3a80:a43:2cdd:3860:2f1c:aec5:d15c 53441 typ host generation 0 ufrag 3EEt network-id 2 network-cost 10\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '14:50:41'),
('WEBRTCx1wo02', 'PFy1kxsv', 'PFwqgx6j', 'Recv_Candidate', '{\"candidate\":\"candidate:704553097 1 udp 2113937151 39db988f-7a0d-440d-8b43-e67fe52b65b8.local 57146 typ host generation 0 ufrag 2OzC network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:26:20'),
('WEBRTCyg2xjz', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 1a69261f-3ea4-4e4e-9c8c-d466c8399582.local 62616 typ host generation 0 ufrag LzYB network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '15:02:11'),
('WEBRTCykqxnr', 'PFwqgx6j', 'PFy1kxsv', 'Recv_Candidate', '{\"candidate\":\"candidate:2783420672 1 udp 2113937151 4300a885-5f7d-4ae3-b7be-fe66729f163a.local 59464 typ host generation 0 ufrag ZWnD network-cost 999\",\"sdpMid\":\"0\",\"sdpMLineIndex\":0}', '2020-08-28', '13:40:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ALBUM_INFO`
--
ALTER TABLE `ALBUM_INFO`
  ADD PRIMARY KEY (`ALBUM_ID`),
  ADD KEY `ALBUM_AUTHOR_ID` (`ALBUM_AUTHOR_ID`),
  ADD KEY `ALBUM_PRIVACY` (`ALBUM_PRIVACY`);

--
-- Indexes for table `ALBUM_PRIVACY_HASH_LIST`
--
ALTER TABLE `ALBUM_PRIVACY_HASH_LIST`
  ADD PRIMARY KEY (`ALBUM_PRIVACY_KEY`);

--
-- Indexes for table `CATEGORIES`
--
ALTER TABLE `CATEGORIES`
  ADD PRIMARY KEY (`CATEGORY_ID`),
  ADD KEY `PARENT_ID_FK` (`PARENT_ID`);

--
-- Indexes for table `COMMENT_STATUS_HASH_LIST`
--
ALTER TABLE `COMMENT_STATUS_HASH_LIST`
  ADD PRIMARY KEY (`COMMENT_STATUS_KEY`);

--
-- Indexes for table `COMMUNITY_BASIC_INFO_INDEPTH`
--
ALTER TABLE `COMMUNITY_BASIC_INFO_INDEPTH`
  ADD PRIMARY KEY (`COMMUNITY_PROFILE_ID`),
  ADD KEY `COMMUNITY_AUTHOR_ID` (`COMMUNITY_AUTHOR_ID`),
  ADD KEY `COMMUNITY_COUNTRY` (`COMMUNITY_COUNTRY`),
  ADD KEY `COMMUNITY_STATUS` (`COMMUNITY_STATUS`);

--
-- Indexes for table `COMMUNITY_CATEGORY_INFO`
--
ALTER TABLE `COMMUNITY_CATEGORY_INFO`
  ADD PRIMARY KEY (`COMMUNITY_PROFILE_ID`,`COMMUNITY_CATEGORY_ID`),
  ADD KEY `COMMUNITY_CATEGORY_ID` (`COMMUNITY_CATEGORY_ID`);

--
-- Indexes for table `COMMUNITY_USERS_INFO`
--
ALTER TABLE `COMMUNITY_USERS_INFO`
  ADD PRIMARY KEY (`COMMUNITY_PROFILE_ID`,`USER_PROFILE_ID`),
  ADD KEY `USER_PROFILE_ID` (`USER_PROFILE_ID`),
  ADD KEY `USER_ROLES` (`USER_ROLES`);

--
-- Indexes for table `COMMUNITY_USERS_ROLES_HASH_LIST`
--
ALTER TABLE `COMMUNITY_USERS_ROLES_HASH_LIST`
  ADD PRIMARY KEY (`USERS_ROLES_KEY`);

--
-- Indexes for table `COUNTRY_FLAG_INFORMATION`
--
ALTER TABLE `COUNTRY_FLAG_INFORMATION`
  ADD PRIMARY KEY (`COUNTRY_NAME`);

--
-- Indexes for table `COUNTRY_INFORMATION`
--
ALTER TABLE `COUNTRY_INFORMATION`
  ADD PRIMARY KEY (`COUNTRY_NAME`),
  ADD KEY `idx_country_code` (`COUNTRY_CODE`);

--
-- Indexes for table `FAVOURITE_LIST`
--
ALTER TABLE `FAVOURITE_LIST`
  ADD PRIMARY KEY (`FAVOURITE_ID`),
  ADD KEY `CATEGORY_ID` (`CATEGORY_ID`);

--
-- Indexes for table `FORGOT_PASSWORD`
--
ALTER TABLE `FORGOT_PASSWORD`
  ADD KEY `USER_LOGIN_ID` (`USER_LOGIN_ID`),
  ADD KEY `PROFILE_ID` (`PROFILE_ID`);

--
-- Indexes for table `POST_BASIC`
--
ALTER TABLE `POST_BASIC`
  ADD PRIMARY KEY (`POST_ID`),
  ADD KEY `POST_AUTHOR` (`POST_AUTHOR`),
  ADD KEY `POST_TYPE` (`POST_TYPE`),
  ADD KEY `POST_STATUS` (`POST_STATUS`),
  ADD KEY `POST_PRIVACY` (`POST_PRIVACY`);

--
-- Indexes for table `POST_COMMENT`
--
ALTER TABLE `POST_COMMENT`
  ADD PRIMARY KEY (`COMMENT_ID`),
  ADD KEY `POST_ID` (`POST_ID`),
  ADD KEY `PROFILE_ID` (`PROFILE_ID`),
  ADD KEY `COMMENT_STATUS` (`COMMENT_STATUS`);

--
-- Indexes for table `POST_COMMENT_LIKE_DISLIKE`
--
ALTER TABLE `POST_COMMENT_LIKE_DISLIKE`
  ADD PRIMARY KEY (`COMMENT_ID`);

--
-- Indexes for table `POST_COMMENT_MEDIA`
--
ALTER TABLE `POST_COMMENT_MEDIA`
  ADD PRIMARY KEY (`COMMENT_ID`,`COMMENT_MEDIA_ID`),
  ADD KEY `ALBUM_ID` (`ALBUM_ID`);

--
-- Indexes for table `POST_LIKE_DISLIKE`
--
ALTER TABLE `POST_LIKE_DISLIKE`
  ADD PRIMARY KEY (`POST_ID`);

--
-- Indexes for table `POST_MEDIA`
--
ALTER TABLE `POST_MEDIA`
  ADD PRIMARY KEY (`POST_ID`,`POST_MEDIA_ID`),
  ADD KEY `ALBUM_ID` (`ALBUM_ID`);

--
-- Indexes for table `POST_PRIVACY_HASH_LIST`
--
ALTER TABLE `POST_PRIVACY_HASH_LIST`
  ADD PRIMARY KEY (`POST_PRIVACY_KEY`);

--
-- Indexes for table `POST_RATING`
--
ALTER TABLE `POST_RATING`
  ADD PRIMARY KEY (`POST_ID`);

--
-- Indexes for table `POST_STATUS_HASH_LIST`
--
ALTER TABLE `POST_STATUS_HASH_LIST`
  ADD PRIMARY KEY (`POST_STATUS_KEY`);

--
-- Indexes for table `POST_TYPES_HASH_LIST`
--
ALTER TABLE `POST_TYPES_HASH_LIST`
  ADD PRIMARY KEY (`POST_TYPES_KEY`);

--
-- Indexes for table `SOCIAL_RELATIONSHIP_STATUS`
--
ALTER TABLE `SOCIAL_RELATIONSHIP_STATUS`
  ADD PRIMARY KEY (`PROFILE_ID_ONE`,`PROFILE_ID_TWO`,`ACTION_PROFILE_ID`,`RELATIONSHIP_STATUS`),
  ADD KEY `PROFILE_ID_TWO` (`PROFILE_ID_TWO`),
  ADD KEY `ACTION_PROFILE_ID` (`ACTION_PROFILE_ID`),
  ADD KEY `RELATIONSHIP_STATUS` (`RELATIONSHIP_STATUS`);

--
-- Indexes for table `SOCIAL_RELATIONSHIP_STATUS_VALUES`
--
ALTER TABLE `SOCIAL_RELATIONSHIP_STATUS_VALUES`
  ADD PRIMARY KEY (`RELATIONSHIP_STATUS`);

--
-- Indexes for table `SOCIAL_RELATIONSHIP_SUM`
--
ALTER TABLE `SOCIAL_RELATIONSHIP_SUM`
  ADD PRIMARY KEY (`PROFILE_ID`);

--
-- Indexes for table `USER_AWARD_INFO`
--
ALTER TABLE `USER_AWARD_INFO`
  ADD PRIMARY KEY (`PROFILE_ID`,`AWARD_ID`);

--
-- Indexes for table `USER_BASIC_INFO`
--
ALTER TABLE `USER_BASIC_INFO`
  ADD PRIMARY KEY (`PROFILE_ID`);

--
-- Indexes for table `USER_BASIC_INFO_INDEPTH`
--
ALTER TABLE `USER_BASIC_INFO_INDEPTH`
  ADD PRIMARY KEY (`PROFILE_ID`),
  ADD KEY `USER_GENDER` (`USER_GENDER`),
  ADD KEY `USER_MARTIAL_STATUS` (`USER_MARTIAL_STATUS`),
  ADD KEY `USER_OCCUPATION` (`USER_OCCUPATION`),
  ADD KEY `USER_SEXUAL_ORIENTATION` (`USER_SEXUAL_ORIENTATION`),
  ADD KEY `USER_COUNTRY` (`USER_COUNTRY`);

--
-- Indexes for table `USER_CURRENT_IMAGE`
--
ALTER TABLE `USER_CURRENT_IMAGE`
  ADD KEY `PROFILE_ID` (`PROFILE_ID`),
  ADD KEY `POST_ID` (`POST_ID`);

--
-- Indexes for table `USER_EDUCATIONAL_INFO`
--
ALTER TABLE `USER_EDUCATIONAL_INFO`
  ADD PRIMARY KEY (`PROFILE_ID`,`EDUCATION_ID`);

--
-- Indexes for table `USER_EMPLOYMENT_INFO`
--
ALTER TABLE `USER_EMPLOYMENT_INFO`
  ADD PRIMARY KEY (`PROFILE_ID`,`EMPLOYMENT_ID`);

--
-- Indexes for table `USER_FAVOURITE_LIST`
--
ALTER TABLE `USER_FAVOURITE_LIST`
  ADD PRIMARY KEY (`FAVOURITE_ID`,`PROFILE_ID`),
  ADD KEY `PROFILE_ID` (`PROFILE_ID`);

--
-- Indexes for table `USER_GENDER_HASH_LIST`
--
ALTER TABLE `USER_GENDER_HASH_LIST`
  ADD PRIMARY KEY (`USER_GENDER_KEY`);

--
-- Indexes for table `USER_GIVEN_LIKE_DISLIKE`
--
ALTER TABLE `USER_GIVEN_LIKE_DISLIKE`
  ADD PRIMARY KEY (`PROFILE_ID`,`POST_ID`),
  ADD KEY `POST_ID` (`POST_ID`);

--
-- Indexes for table `USER_GIVEN_POST_COMMENT_LIKE_DISLIKE`
--
ALTER TABLE `USER_GIVEN_POST_COMMENT_LIKE_DISLIKE`
  ADD PRIMARY KEY (`PROFILE_ID`,`COMMENT_ID`),
  ADD KEY `COMMENT_ID` (`COMMENT_ID`);

--
-- Indexes for table `USER_LOGIN_INFO`
--
ALTER TABLE `USER_LOGIN_INFO`
  ADD PRIMARY KEY (`USER_LOGIN_ID`),
  ADD KEY `PROFILE_ID` (`PROFILE_ID`),
  ADD KEY `USER_TYPE` (`USER_TYPE`),
  ADD KEY `USER_STATUS` (`USER_STATUS`);

--
-- Indexes for table `USER_MARTIAL_STATUS_HASH_LIST`
--
ALTER TABLE `USER_MARTIAL_STATUS_HASH_LIST`
  ADD PRIMARY KEY (`USER_MARTIAL_STATUS_KEY`);

--
-- Indexes for table `USER_OCCUPATION_HASH_LIST`
--
ALTER TABLE `USER_OCCUPATION_HASH_LIST`
  ADD PRIMARY KEY (`USER_OCCUPATION_KEY`);

--
-- Indexes for table `USER_PROFILE_PRIVACY`
--
ALTER TABLE `USER_PROFILE_PRIVACY`
  ADD PRIMARY KEY (`PROFILE_ID`,`PRIVACY_KEY`),
  ADD KEY `PRIVACY_KEY` (`PRIVACY_KEY`);

--
-- Indexes for table `USER_PROFILE_PRIVACY_KEY_LIST`
--
ALTER TABLE `USER_PROFILE_PRIVACY_KEY_LIST`
  ADD PRIMARY KEY (`USER_PROFILE_PRIVACY_KEY`);

--
-- Indexes for table `USER_RATING_INDEPTH`
--
ALTER TABLE `USER_RATING_INDEPTH`
  ADD PRIMARY KEY (`PROFILE_ID`,`POST_ID`),
  ADD KEY `POST_ID` (`POST_ID`);

--
-- Indexes for table `USER_SEXUAL_ORIENTATION_HASH_LIST`
--
ALTER TABLE `USER_SEXUAL_ORIENTATION_HASH_LIST`
  ADD PRIMARY KEY (`USER_SEXUAL_ORIENTATION_KEY`);

--
-- Indexes for table `USER_STATUS_HASH_LIST`
--
ALTER TABLE `USER_STATUS_HASH_LIST`
  ADD PRIMARY KEY (`USER_STATUS_KEY`);

--
-- Indexes for table `USER_TYPE_HASH_LIST`
--
ALTER TABLE `USER_TYPE_HASH_LIST`
  ADD PRIMARY KEY (`USER_TYPE_KEY`);

--
-- Indexes for table `WEBRTC_INFO`
--
ALTER TABLE `WEBRTC_INFO`
  ADD PRIMARY KEY (`WEBRTC_EVENT_ID`),
  ADD KEY `SENDER_PROFILE_ID` (`SENDER_PROFILE_ID`),
  ADD KEY `RECEIVER_PROFILE_ID` (`RECEIVER_PROFILE_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ALBUM_INFO`
--
ALTER TABLE `ALBUM_INFO`
  ADD CONSTRAINT `ALBUM_INFO_ibfk_1` FOREIGN KEY (`ALBUM_AUTHOR_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `ALBUM_INFO_ibfk_2` FOREIGN KEY (`ALBUM_PRIVACY`) REFERENCES `ALBUM_PRIVACY_HASH_LIST` (`ALBUM_PRIVACY_KEY`);

--
-- Constraints for table `CATEGORIES`
--
ALTER TABLE `CATEGORIES`
  ADD CONSTRAINT `CATEGORIES_ibfk_1` FOREIGN KEY (`PARENT_ID`) REFERENCES `CATEGORIES` (`CATEGORY_ID`);

--
-- Constraints for table `COMMUNITY_BASIC_INFO_INDEPTH`
--
ALTER TABLE `COMMUNITY_BASIC_INFO_INDEPTH`
  ADD CONSTRAINT `COMMUNITY_BASIC_INFO_INDEPTH_ibfk_1` FOREIGN KEY (`COMMUNITY_PROFILE_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `COMMUNITY_BASIC_INFO_INDEPTH_ibfk_2` FOREIGN KEY (`COMMUNITY_AUTHOR_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `COMMUNITY_BASIC_INFO_INDEPTH_ibfk_3` FOREIGN KEY (`COMMUNITY_COUNTRY`) REFERENCES `COUNTRY_INFORMATION` (`COUNTRY_NAME`),
  ADD CONSTRAINT `COMMUNITY_BASIC_INFO_INDEPTH_ibfk_4` FOREIGN KEY (`COMMUNITY_STATUS`) REFERENCES `USER_STATUS_HASH_LIST` (`USER_STATUS_KEY`);

--
-- Constraints for table `COMMUNITY_CATEGORY_INFO`
--
ALTER TABLE `COMMUNITY_CATEGORY_INFO`
  ADD CONSTRAINT `COMMUNITY_CATEGORY_INFO_ibfk_1` FOREIGN KEY (`COMMUNITY_PROFILE_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `COMMUNITY_CATEGORY_INFO_ibfk_2` FOREIGN KEY (`COMMUNITY_CATEGORY_ID`) REFERENCES `CATEGORIES` (`CATEGORY_ID`);

--
-- Constraints for table `COMMUNITY_USERS_INFO`
--
ALTER TABLE `COMMUNITY_USERS_INFO`
  ADD CONSTRAINT `COMMUNITY_USERS_INFO_ibfk_1` FOREIGN KEY (`COMMUNITY_PROFILE_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `COMMUNITY_USERS_INFO_ibfk_2` FOREIGN KEY (`USER_PROFILE_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `COMMUNITY_USERS_INFO_ibfk_3` FOREIGN KEY (`USER_ROLES`) REFERENCES `COMMUNITY_USERS_ROLES_HASH_LIST` (`USERS_ROLES_KEY`);

--
-- Constraints for table `COUNTRY_FLAG_INFORMATION`
--
ALTER TABLE `COUNTRY_FLAG_INFORMATION`
  ADD CONSTRAINT `COUNTRY_FLAG_INFORMATION_ibfk_1` FOREIGN KEY (`COUNTRY_NAME`) REFERENCES `COUNTRY_INFORMATION` (`COUNTRY_NAME`);

--
-- Constraints for table `FAVOURITE_LIST`
--
ALTER TABLE `FAVOURITE_LIST`
  ADD CONSTRAINT `FAVOURITE_LIST_ibfk_1` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `CATEGORIES` (`CATEGORY_ID`);

--
-- Constraints for table `FORGOT_PASSWORD`
--
ALTER TABLE `FORGOT_PASSWORD`
  ADD CONSTRAINT `FORGOT_PASSWORD_ibfk_1` FOREIGN KEY (`USER_LOGIN_ID`) REFERENCES `USER_LOGIN_INFO` (`USER_LOGIN_ID`),
  ADD CONSTRAINT `FORGOT_PASSWORD_ibfk_2` FOREIGN KEY (`PROFILE_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`);

--
-- Constraints for table `POST_BASIC`
--
ALTER TABLE `POST_BASIC`
  ADD CONSTRAINT `POST_BASIC_ibfk_1` FOREIGN KEY (`POST_AUTHOR`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `POST_BASIC_ibfk_2` FOREIGN KEY (`POST_TYPE`) REFERENCES `POST_TYPES_HASH_LIST` (`POST_TYPES_KEY`),
  ADD CONSTRAINT `POST_BASIC_ibfk_3` FOREIGN KEY (`POST_STATUS`) REFERENCES `POST_STATUS_HASH_LIST` (`POST_STATUS_KEY`),
  ADD CONSTRAINT `POST_BASIC_ibfk_4` FOREIGN KEY (`POST_PRIVACY`) REFERENCES `POST_PRIVACY_HASH_LIST` (`POST_PRIVACY_KEY`);

--
-- Constraints for table `POST_COMMENT`
--
ALTER TABLE `POST_COMMENT`
  ADD CONSTRAINT `POST_COMMENT_ibfk_1` FOREIGN KEY (`POST_ID`) REFERENCES `POST_BASIC` (`POST_ID`),
  ADD CONSTRAINT `POST_COMMENT_ibfk_2` FOREIGN KEY (`PROFILE_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `POST_COMMENT_ibfk_3` FOREIGN KEY (`COMMENT_STATUS`) REFERENCES `COMMENT_STATUS_HASH_LIST` (`COMMENT_STATUS_KEY`);

--
-- Constraints for table `POST_COMMENT_LIKE_DISLIKE`
--
ALTER TABLE `POST_COMMENT_LIKE_DISLIKE`
  ADD CONSTRAINT `POST_COMMENT_LIKE_DISLIKE_ibfk_1` FOREIGN KEY (`COMMENT_ID`) REFERENCES `POST_COMMENT` (`COMMENT_ID`);

--
-- Constraints for table `POST_COMMENT_MEDIA`
--
ALTER TABLE `POST_COMMENT_MEDIA`
  ADD CONSTRAINT `POST_COMMENT_MEDIA_ibfk_1` FOREIGN KEY (`COMMENT_ID`) REFERENCES `POST_COMMENT` (`COMMENT_ID`),
  ADD CONSTRAINT `POST_COMMENT_MEDIA_ibfk_2` FOREIGN KEY (`ALBUM_ID`) REFERENCES `ALBUM_INFO` (`ALBUM_ID`);

--
-- Constraints for table `POST_LIKE_DISLIKE`
--
ALTER TABLE `POST_LIKE_DISLIKE`
  ADD CONSTRAINT `POST_LIKE_DISLIKE_pdfk_1` FOREIGN KEY (`POST_ID`) REFERENCES `POST_BASIC` (`POST_ID`);

--
-- Constraints for table `SOCIAL_RELATIONSHIP_STATUS`
--
ALTER TABLE `SOCIAL_RELATIONSHIP_STATUS`
  ADD CONSTRAINT `ACTION_PROFILE_ID_prffk_3` FOREIGN KEY (`ACTION_PROFILE_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `PROFILE_ID_ONE_prffk_1` FOREIGN KEY (`PROFILE_ID_ONE`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `PROFILE_ID_TWO_prffk_2` FOREIGN KEY (`PROFILE_ID_TWO`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `RELATIONSHIP_STATUS_prffk_4` FOREIGN KEY (`RELATIONSHIP_STATUS`) REFERENCES `SOCIAL_RELATIONSHIP_STATUS_VALUES` (`RELATIONSHIP_STATUS`);

--
-- Constraints for table `USER_CURRENT_IMAGE`
--
ALTER TABLE `USER_CURRENT_IMAGE`
  ADD CONSTRAINT `USER_CURRENT_IMAGE_ibfk_1` FOREIGN KEY (`POST_ID`) REFERENCES `POST_BASIC` (`POST_ID`),
  ADD CONSTRAINT `USER_CURRENT_IMAGE_ibfk_2` FOREIGN KEY (`PROFILE_ID`) REFERENCES `USER_LOGIN_INFO` (`PROFILE_ID`);

--
-- Constraints for table `USER_PROFILE_PRIVACY`
--
ALTER TABLE `USER_PROFILE_PRIVACY`
  ADD CONSTRAINT `USER_PROFILE_PRIVACY_ibfk_1` FOREIGN KEY (`PROFILE_ID`) REFERENCES `USER_LOGIN_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `USER_PROFILE_PRIVACY_ibfk_2` FOREIGN KEY (`PRIVACY_KEY`) REFERENCES `USER_PROFILE_PRIVACY_KEY_LIST` (`USER_PROFILE_PRIVACY_KEY`);

--
-- Constraints for table `WEBRTC_INFO`
--
ALTER TABLE `WEBRTC_INFO`
  ADD CONSTRAINT `WEBRTC_INFO_ibfk_1` FOREIGN KEY (`SENDER_PROFILE_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`),
  ADD CONSTRAINT `WEBRTC_INFO_ibfk_2` FOREIGN KEY (`RECEIVER_PROFILE_ID`) REFERENCES `USER_BASIC_INFO` (`PROFILE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
