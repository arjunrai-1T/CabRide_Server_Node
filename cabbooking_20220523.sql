-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 23, 2022 at 03:17 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cabbooking`
--
CREATE DATABASE IF NOT EXISTS `cabbooking` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cabbooking`;

-- --------------------------------------------------------

--
-- Table structure for table `album_info`
--

DROP TABLE IF EXISTS `album_info`;
CREATE TABLE IF NOT EXISTS `album_info` (
  `ALBUM_ID` varchar(10) NOT NULL,
  `ALBUM_NAME` text NOT NULL,
  `ALBUM_AUTHOR_ID` varchar(200) NOT NULL,
  `ALBUM_PRIVACY` varchar(20) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL,
  PRIMARY KEY (`ALBUM_ID`),
  KEY `ALBUM_AUTHOR_ID` (`ALBUM_AUTHOR_ID`),
  KEY `ALBUM_PRIVACY` (`ALBUM_PRIVACY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `album_privacy_hash_list`
--

DROP TABLE IF EXISTS `album_privacy_hash_list`;
CREATE TABLE IF NOT EXISTS `album_privacy_hash_list` (
  `ALBUM_PRIVACY_KEY` varchar(200) NOT NULL,
  `ALBUM_PRIVACY_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`ALBUM_PRIVACY_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `country_flag_information`
--

DROP TABLE IF EXISTS `country_flag_information`;
CREATE TABLE IF NOT EXISTS `country_flag_information` (
  `COUNTRY_NAME` varchar(200) NOT NULL DEFAULT '',
  `COUNTRY_FLAG_IMAGE` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_flag_information`
--

INSERT INTO `country_flag_information` (`COUNTRY_NAME`, `COUNTRY_FLAG_IMAGE`) VALUES
('India', 'india.png');

-- --------------------------------------------------------

--
-- Table structure for table `country_information`
--

DROP TABLE IF EXISTS `country_information`;
CREATE TABLE IF NOT EXISTS `country_information` (
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
  `CCTLD` char(2) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_NAME`),
  KEY `idx_country_code` (`COUNTRY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_information`
--

INSERT INTO `country_information` (`COUNTRY_CODE`, `COUNTRY_NAME`, `COUNTRY_ALPHA3_CODE`, `COUNTRY_NUMERIC_CODE`, `CAPITAL`, `COUNTRY_DEMONYM`, `TOTAL_AREA`, `POPULATION`, `IDD_CODE`, `CURRENCY_CODE`, `CURRENCY_NAME`, `CURRENCY_SYMBOL`, `LANG_CODE`, `LANG_NAME`, `CCTLD`) VALUES
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
-- Table structure for table `forgot_password`
--

DROP TABLE IF EXISTS `forgot_password`;
CREATE TABLE IF NOT EXISTS `forgot_password` (
  `USER_LOGIN_ID` varchar(200) NOT NULL,
  `PROFILE_ID` varchar(10) DEFAULT NULL,
  `AUTH_KEY` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  KEY `USER_LOGIN_ID` (`USER_LOGIN_ID`),
  KEY `PROFILE_ID` (`PROFILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_basic_info`
--

DROP TABLE IF EXISTS `user_basic_info`;
CREATE TABLE IF NOT EXISTS `user_basic_info` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `ISACOMMUNITY` tinyint(4) NOT NULL DEFAULT '0',
  `USER_FIRST_NAME` varchar(200) NOT NULL,
  `USER_LAST_NAME` varchar(200) NOT NULL,
  `USER_EMAIL_ID` varchar(200) NOT NULL DEFAULT 'Not Applicable',
  `USER_MOBILE_ID` varchar(20) NOT NULL DEFAULT 'Not Applicable',
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`PROFILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_basic_info_indepth`
--

DROP TABLE IF EXISTS `user_basic_info_indepth`;
CREATE TABLE IF NOT EXISTS `user_basic_info_indepth` (
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
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`PROFILE_ID`),
  KEY `USER_GENDER` (`USER_GENDER`),
  KEY `USER_MARTIAL_STATUS` (`USER_MARTIAL_STATUS`),
  KEY `USER_OCCUPATION` (`USER_OCCUPATION`),
  KEY `USER_SEXUAL_ORIENTATION` (`USER_SEXUAL_ORIENTATION`),
  KEY `USER_COUNTRY` (`USER_COUNTRY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_current_image`
--

DROP TABLE IF EXISTS `user_current_image`;
CREATE TABLE IF NOT EXISTS `user_current_image` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `POST_ID` varchar(10) NOT NULL,
  `IMAGE_TYPE` varchar(20) NOT NULL,
  `IMAGE_STATUS` varchar(20) NOT NULL,
  `IMAGE_NAME` varchar(400) NOT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `CREATION_TIME` time DEFAULT NULL,
  KEY `PROFILE_ID` (`PROFILE_ID`),
  KEY `POST_ID` (`POST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_gender_hash_list`
--

DROP TABLE IF EXISTS `user_gender_hash_list`;
CREATE TABLE IF NOT EXISTS `user_gender_hash_list` (
  `USER_GENDER_KEY` varchar(20) NOT NULL,
  `USER_GENDER_VALUE` varchar(10) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`USER_GENDER_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_gender_hash_list`
--

INSERT INTO `user_gender_hash_list` (`USER_GENDER_KEY`, `USER_GENDER_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('Female', '2', '2020-06-02', '21:00:00'),
('Male', '1', '2020-06-02', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_login_info`
--

DROP TABLE IF EXISTS `user_login_info`;
CREATE TABLE IF NOT EXISTS `user_login_info` (
  `PROFILE_ID` varchar(10) NOT NULL,
  `USER_LOGIN_ID` varchar(200) NOT NULL,
  `USER_PWD` varchar(512) NOT NULL,
  `USER_TYPE` varchar(100) NOT NULL,
  `USER_STATUS` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`USER_LOGIN_ID`),
  KEY `PROFILE_ID` (`PROFILE_ID`),
  KEY `USER_TYPE` (`USER_TYPE`),
  KEY `USER_STATUS` (`USER_STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_martial_status_hash_list`
--

DROP TABLE IF EXISTS `user_martial_status_hash_list`;
CREATE TABLE IF NOT EXISTS `user_martial_status_hash_list` (
  `USER_MARTIAL_STATUS_KEY` varchar(100) NOT NULL,
  `USER_MARTIAL_STATUS_VALUE` varchar(10) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`USER_MARTIAL_STATUS_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_martial_status_hash_list`
--

INSERT INTO `user_martial_status_hash_list` (`USER_MARTIAL_STATUS_KEY`, `USER_MARTIAL_STATUS_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
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
-- Table structure for table `user_occupation_hash_list`
--

DROP TABLE IF EXISTS `user_occupation_hash_list`;
CREATE TABLE IF NOT EXISTS `user_occupation_hash_list` (
  `USER_OCCUPATION_KEY` varchar(200) NOT NULL,
  `USER_OCCUPATION_VALUE` varchar(10) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`USER_OCCUPATION_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_occupation_hash_list`
--

INSERT INTO `user_occupation_hash_list` (`USER_OCCUPATION_KEY`, `USER_OCCUPATION_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('None', '0', '2020-06-02', '21:00:00'),
('Software Professional', '1', '2020-06-02', '21:00:00'),
('Teacher', '2', '2020-06-02', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_sexual_orientation_hash_list`
--

DROP TABLE IF EXISTS `user_sexual_orientation_hash_list`;
CREATE TABLE IF NOT EXISTS `user_sexual_orientation_hash_list` (
  `USER_SEXUAL_ORIENTATION_KEY` varchar(100) NOT NULL,
  `USER_SEXUAL_ORIENTATION_VALUE` varchar(10) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`USER_SEXUAL_ORIENTATION_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_sexual_orientation_hash_list`
--

INSERT INTO `user_sexual_orientation_hash_list` (`USER_SEXUAL_ORIENTATION_KEY`, `USER_SEXUAL_ORIENTATION_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('Both', '3', '2020-06-02', '21:00:00'),
('Female', '2', '2020-06-02', '21:00:00'),
('Male', '1', '2020-06-02', '21:00:00');

ALTER TABLE `user_login_info` ADD CONSTRAINT `USER_TYPE` FOREIGN KEY (`USER_TYPE`) REFERENCES `user_type_hash_list`(`USER_TYPE_KEY`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `user_status_hash_list` ADD PRIMARY KEY( `USER_STATUS_KEY`);
ALTER TABLE `user_login_info` ADD CONSTRAINT `USER_STATUS` FOREIGN KEY (`USER_STATUS`) REFERENCES `user_status_hash_list`(`USER_STATUS_KEY`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `user_login_info` ADD CONSTRAINT `PROFILE_ID` FOREIGN KEY (`PROFILE_ID`) REFERENCES `user_basic_info`(`PROFILE_ID`) ON DELETE CASCADE ON UPDATE CASCADE;




-- --------------------------------------------------------

--
-- Table structure for table `user_type_hash_list`
--

DROP TABLE IF EXISTS `user_type_hash_list`;
CREATE TABLE IF NOT EXISTS `user_type_hash_list` (
  `USER_TYPE_KEY` varchar(100) NOT NULL,
  `USER_TYPE_VALUE` varchar(100) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`USER_TYPE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type_hash_list`
--

INSERT INTO `user_type_hash_list` (`USER_TYPE_KEY`, `USER_TYPE_VALUE`, `CREATION_DATE`, `CREATION_TIME`) VALUES
('ADMIN', '0', '2020-06-02', '21:00:00'),
('PROFILE', '1', '2020-06-02', '21:00:00'),
('TECHSUPPORT', '2', '2020-06-02', '21:00:00');


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
('REMOVED', '4', '2020-06-02', '21:00:00);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album_info`
--
ALTER TABLE `album_info`
  ADD CONSTRAINT `ALBUM_INFO_ibfk_1` FOREIGN KEY (`ALBUM_AUTHOR_ID`) REFERENCES `user_basic_info` (`PROFILE_ID`),
  ADD CONSTRAINT `ALBUM_INFO_ibfk_2` FOREIGN KEY (`ALBUM_PRIVACY`) REFERENCES `album_privacy_hash_list` (`ALBUM_PRIVACY_KEY`);

--
-- Constraints for table `country_flag_information`
--
ALTER TABLE `country_flag_information`
  ADD CONSTRAINT `COUNTRY_FLAG_INFORMATION_ibfk_1` FOREIGN KEY (`COUNTRY_NAME`) REFERENCES `country_information` (`COUNTRY_NAME`);

--
-- Constraints for table `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD CONSTRAINT `FORGOT_PASSWORD_ibfk_1` FOREIGN KEY (`USER_LOGIN_ID`) REFERENCES `user_login_info` (`USER_LOGIN_ID`),
  ADD CONSTRAINT `FORGOT_PASSWORD_ibfk_2` FOREIGN KEY (`PROFILE_ID`) REFERENCES `user_basic_info` (`PROFILE_ID`);

--
-- Constraints for table `user_current_image`
--
ALTER TABLE `user_current_image`
  ADD CONSTRAINT `USER_CURRENT_IMAGE_ibfk_1` FOREIGN KEY (`POST_ID`) REFERENCES `post_basic` (`POST_ID`),
  ADD CONSTRAINT `USER_CURRENT_IMAGE_ibfk_2` FOREIGN KEY (`PROFILE_ID`) REFERENCES `user_login_info` (`PROFILE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


DROP TABLE IF EXISTS `car_model_info`;
CREATE TABLE IF NOT EXISTS `car_model_info` (
  `CAR_MODEL_ID`           varchar(10) NOT NULL DEFAULT '',
  `CAR_MODEL_NAME`         text,
  `CAR_MODEL_COMPANY_NAME` text,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`CAR_MODEL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cab_info`;
CREATE TABLE IF NOT EXISTS `cab_info` (
  `CAB_ID`                     varchar(10) NOT NULL DEFAULT '',
  `CAR_MODEL_ID`               varchar(10) NOT NULL DEFAULT '',
  `CAB_LICENSE_NUMBER`         text,
  `CAB_CAR_MODEL_ID`           date NOT NULL,
  `CAB_CAR_OWNER_ID`           text NOT NULL,
  `CAB_IS_IN_SERVICE`          text NOT NULL,
  `CAB_CAR_CHASSIS_NO`         text NOT NULL,
  `CAB_CAR_ENGINE_NO`          text NOT NULL,
  `CAB_CAR_FUEL_TYPE`          text NOT NULL,
  `CAB_CAR_MANUFACTURING_YEAR` text NOT NULL,
  `CAB_CAR_REGISTRATION_YEAR`  text NOT NULL,
  `CAB_CAR_REGISTRATION_VALID_YEAR` text NOT NULL,
  `CAB_CAR_CUBIC_CAPACITY`          text NOT NULL,
  `CAB_CAR_HORSE_POWER`             text NOT NULL,
  `CAB_CAR_SEATING_CAPACITY`        text NOT NULL,
  `CAB_CAR_COLOR` text NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`CAB_ID`),
  FOREIGN KEY (CAR_MODEL_ID) REFERENCES car_model_info(CAR_MODEL_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `user_type_driver_info`;
CREATE TABLE IF NOT EXISTS `user_type_driver_info` (
  `PROFILE_ID` varchar(10) NOT NULL DEFAULT '',
  `DRIVING_LICENSE_NUMBER` text,
  `DRIVING_LICENSE_EXPIRARY_DATE` date NOT NULL,
  `DRIVING_IS_WORKING` text NOT NULL,
  `DRIVING_IS_BLOCKED` text NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`PROFILE_ID`),
  FOREIGN KEY (PROFILE_ID) REFERENCES USER_BASIC_INFO_INDEPTH(PROFILE_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `user_driver_shift_info`;
CREATE TABLE IF NOT EXISTS `user_driver_shift_info` (
  `PROFILE_ID` varchar(10) NOT NULL DEFAULT '',
  `CAB_ID` varchar(10) NOT NULL DEFAULT '',
  `DRIVING_SHIFT_START_DATE` date NOT NULL,
  `DRIVING_SHIFT_START_TIME` time NOT NULL,
  `DRIVING_SHIFT_END_DATE` date NOT NULL,
  `DRIVING_SHIFT_END_TIME` time NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `CREATION_TIME` time NOT NULL,
  PRIMARY KEY (`PROFILE_ID`),
  FOREIGN KEY (PROFILE_ID) REFERENCES USER_BASIC_INFO_INDEPTH(PROFILE_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cab_ride_info`;
CREATE TABLE IF NOT EXISTS `cab_ride_info` (
  `CAB_RIDE_ID`      varchar(10) NOT NULL DEFAULT '',
  `CAB_ID`           varchar(10) NOT NULL DEFAULT '',
  `PICK_UP_LOCATION` text NOT NULL,
  `PICK_UP_GPS`      text NOT NULL,
  `DROP_LOCATION`    text NOT NULL,
  `DROP_GPS`         text NOT NULL,
  `RIDE_DATE`        date NOT NULL,
  `RIDE_START_TIME`  time NOT NULL,
  `RIDE_END_TIME`    time NOT NULL,
  `IS_CANCELED`      text NOT NULL,
  `CANCELED_BY_PROFILE_ID`      varchar(10) ,
  `RIDE_PRICE`      text NOT NULL,
  `PAYMENT_ID`      varchar(10) NOT NULL DEFAULT '',
  `CREATION_DATE`   date NOT NULL,
  `CREATION_TIME`   time NOT NULL,
  PRIMARY KEY (`CAB_RIDE_ID`),
  FOREIGN KEY (CANCELED_BY_PROFILE_ID) REFERENCES USER_BASIC_INFO_INDEPTH(PROFILE_ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE IF NOT EXISTS `payment_info` (
  `PAYMENT_ID`        varchar(10) NOT NULL DEFAULT '',
  `PAYMENT_PRICE`     varchar(10) NOT NULL DEFAULT '',
  `PAYMENT_MODE_TYPE` varchar(10) NOT NULL DEFAULT '',
  `CREATION_DATE`   date NOT NULL,
  `CREATION_TIME`   time NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;