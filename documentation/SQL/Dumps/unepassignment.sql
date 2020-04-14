-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2019 at 06:10 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `unepassignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `Countries`
--

CREATE TABLE IF NOT EXISTS `Countries` (
`id` int(11) unsigned NOT NULL,
  `code` varchar(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Countries`
--

INSERT INTO `Countries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People''s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People''s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `NAPStatus`
--

CREATE TABLE IF NOT EXISTS `NAPStatus` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NAPStatus`
--

INSERT INTO `NAPStatus` (`id`, `name`, `description`) VALUES
(1, 'Readiness', ''),
(2, 'National Adaptation Plans', '');

-- --------------------------------------------------------

--
-- Table structure for table `NAPType`
--

CREATE TABLE IF NOT EXISTS `NAPType` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NAPType`
--

INSERT INTO `NAPType` (`id`, `name`, `description`) VALUES
(1, 'Capacity Building', ''),
(2, 'FI/TNA/other', ''),
(3, 'NAP', ''),
(4, 'REDD+', ''),
(5, 'Not Defined', '');

-- --------------------------------------------------------

--
-- Table structure for table `Office`
--

CREATE TABLE IF NOT EXISTS `Office` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `abbreviation` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Office`
--

INSERT INTO `Office` (`id`, `name`, `abbreviation`) VALUES
(1, 'Africa Office', ''),
(2, 'Asia Pacific Office', ''),
(3, 'CTCN', ''),
(4, 'Economy Division', ''),
(5, 'Ecosystems', ''),
(6, 'Europe Office', ''),
(7, 'Latin America Office', ''),
(8, 'Policy & Programme Division', ''),
(9, 'West Asia Office', '');

-- --------------------------------------------------------

--
-- Table structure for table `ProjectLocation`
--

CREATE TABLE IF NOT EXISTS `ProjectLocation` (
  `projectid` int(11) unsigned NOT NULL DEFAULT '0',
  `countryid` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

--
-- Dumping data for table `ProjectLocation`
--

INSERT INTO `ProjectLocation` (`projectid`, `countryid`) VALUES
(1, 2),
(2, 30),
(3, 48),
(4, 51),
(5, 59),
(6, 62),
(7, 81),
(8, 95),
(9, 111),
(10, 131),
(11, 133),
(12, 134),
(13, 139),
(6, 149),
(2, 170),
(1, 181),
(7, 207),
(7, 227);

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE IF NOT EXISTS `Projects` (
`id` int(11) unsigned NOT NULL,
  `reference` varchar(100) NOT NULL,
  `implementingoffice` int(11) unsigned NOT NULL,
  `title` varchar(500) DEFAULT 'Untitled',
  `grantamount` decimal(13,2) NOT NULL,
  `firstdisbursement` decimal(13,2) NOT NULL,
  `gcfdate` date NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `napstatus` int(5) unsigned NOT NULL,
  `naptype` int(5) unsigned NOT NULL,
  `status` int(5) unsigned NOT NULL,
  `createuser` int(11) unsigned NOT NULL DEFAULT '0',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `createipaddr` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `lastmodifyuser` int(11) unsigned NOT NULL DEFAULT '0',
  `lastmodifydate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastmodifyipaddr` varchar(45) NOT NULL DEFAULT '127.0.0.1',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Projects`
--

INSERT INTO `Projects` (`id`, `reference`, `implementingoffice`, `title`, `grantamount`, `firstdisbursement`, `gcfdate`, `startdate`, `enddate`, `napstatus`, `naptype`, `status`, `createuser`, `createdate`, `createipaddr`, `lastmodifyuser`, `lastmodifydate`, `lastmodifyipaddr`, `deleted`) VALUES
(1, 'ALB-RS-001', 6, 'Readiness support to Albania', '300000.00', '147500.00', '2016-11-15', '2016-08-30', '2017-08-30', 1, 1, 1, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(2, 'BRA-RS-001', 4, 'Technology Needs Assessment for the Implementation of Climate Action Plans', '700000.00', '197450.00', '2018-06-20', '2018-06-20', '2019-12-19', 1, 2, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(3, 'COM-RS-001', 5, '1. Establishing and strengthening National Designated Authorities or Focal Points; 2. Developing strategic frameworks for engagement with the GCF, including the preparation of country programmes.', '426080.00', '115117.00', '2018-11-01', '2018-11-01', '2020-10-21', 1, 1, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(4, 'CRI-RS-002', 7, 'Building sub-national capacities for the implementation of the National Adaptation Plan in Costa Rica', '2861917.00', '350575.33', '2018-10-23', '2018-10-23', '2021-10-23', 2, 3, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(5, 'DOM-RS-002', 7, 'Building capacity to advance National Adaptation Plan Process in the Dominican Republic', '2998325.00', '1161912.00', '2018-07-11', '2018-07-11', '2021-06-10', 2, 3, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(6, 'EGY-RS-001', 5, 'Supporting Egypt’s engagement with the Green Climate Fund: Logical framework support', '300000.00', '122456.00', '2017-05-02', '2017-04-24', '2018-10-23', 1, 1, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(7, 'GHA-RS-001', 3, 'Drought Early Warning and Forecasting System: Improving resiliency of crops to drought through strengthened early warning within Ghana, Uganda and Sudan', '300150.00', '300150.00', '2017-05-15', '2017-05-15', '2019-05-10', 1, 2, 2, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(8, 'HND-RS-002', 7, 'Supporting strategic planning to engage with the GCF and comply with the national commitments under the Paris Agreement regarding the LULUCF sector', '764960.00', '243515.00', '2018-01-18', '2018-01-18', '2019-07-19', 1, 4, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(9, 'JOR-RS-001', 9, 'Strengthening NDA of Jordan to deliver on GCF Investment Framework', '300000.00', '150000.00', '2017-06-15', '2017-06-15', '2018-12-14', 1, 1, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(10, 'MDG-RS-001', 5, 'Building Capacity in Madagascar to engage with the GCF', '300000.00', '177588.00', '2018-07-20', '2018-07-20', '2019-07-19', 1, 1, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(11, 'MLY-RS-002', 2, 'Accessing REDD+ result-based payments in Malaysia', '819230.00', '465695.33', '2018-11-12', '2018-11-12', '2020-11-13', 1, 4, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(12, 'MDV-RS-001', 2, 'Establishing and strengthening National Designated Authority (NDA), and developing strategic framework for engagement with the GCF in Maldives', '300000.00', '198545.00', '2017-06-16', '2017-06-16', '2018-06-13', 1, 1, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0),
(13, 'MRT-RS-002', 1, 'Building capacity to advance National Adaptation Plan Process in Mauritania', '2670374.00', '742163.00', '2018-07-17', '2018-07-17', '2021-07-08', 2, 3, 4, 0, 0, '127.0.0.1', 0, 0, '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ProjectStatus`
--

CREATE TABLE IF NOT EXISTS `ProjectStatus` (
`id` int(11) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProjectStatus`
--

INSERT INTO `ProjectStatus` (`id`, `name`, `description`) VALUES
(1, 'Completed', ''),
(2, 'Completion Report Submitted', ''),
(3, 'Requesting Funds', ''),
(4, 'Under Implementation', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Countries`
--
ALTER TABLE `Countries`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `NAPStatus`
--
ALTER TABLE `NAPStatus`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `NAPType`
--
ALTER TABLE `NAPType`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Office`
--
ALTER TABLE `Office`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ProjectLocation`
--
ALTER TABLE `ProjectLocation`
 ADD PRIMARY KEY (`projectid`,`countryid`), ADD KEY `CNSTR_ProjectLocation_Countries_FK` (`countryid`);

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_Projects_Office` (`implementingoffice`), ADD KEY `FK_Projects_NAPStatus` (`napstatus`), ADD KEY `FK_Projects_NAPType` (`naptype`), ADD KEY `FK_Projects_ProjectStatus` (`status`);

--
-- Indexes for table `ProjectStatus`
--
ALTER TABLE `ProjectStatus`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Countries`
--
ALTER TABLE `Countries`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `NAPStatus`
--
ALTER TABLE `NAPStatus`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `NAPType`
--
ALTER TABLE `NAPType`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Office`
--
ALTER TABLE `Office`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Projects`
--
ALTER TABLE `Projects`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `ProjectStatus`
--
ALTER TABLE `ProjectStatus`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ProjectLocation`
--
ALTER TABLE `ProjectLocation`
ADD CONSTRAINT `CNSTR_ProjectLocation_Countries_FK` FOREIGN KEY (`countryid`) REFERENCES `Countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `CNSTR_ProjectLocation_Projects_FK` FOREIGN KEY (`projectid`) REFERENCES `Projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Projects`
--
ALTER TABLE `Projects`
ADD CONSTRAINT `FK_Projects_NAPStatus` FOREIGN KEY (`napstatus`) REFERENCES `NAPStatus` (`id`),
ADD CONSTRAINT `FK_Projects_NAPType` FOREIGN KEY (`naptype`) REFERENCES `NAPType` (`id`),
ADD CONSTRAINT `FK_Projects_Office` FOREIGN KEY (`implementingoffice`) REFERENCES `Office` (`id`),
ADD CONSTRAINT `FK_Projects_ProjectStatus` FOREIGN KEY (`status`) REFERENCES `ProjectStatus` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
