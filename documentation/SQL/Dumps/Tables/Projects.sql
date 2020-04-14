-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2019 at 06:04 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_Projects_Office` (`implementingoffice`), ADD KEY `FK_Projects_NAPStatus` (`napstatus`), ADD KEY `FK_Projects_NAPType` (`naptype`), ADD KEY `FK_Projects_ProjectStatus` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Projects`
--
ALTER TABLE `Projects`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

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
