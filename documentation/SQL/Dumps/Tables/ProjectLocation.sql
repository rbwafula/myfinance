-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2019 at 06:07 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ProjectLocation`
--
ALTER TABLE `ProjectLocation`
 ADD PRIMARY KEY (`projectid`,`countryid`), ADD KEY `CNSTR_ProjectLocation_Countries_FK` (`countryid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ProjectLocation`
--
ALTER TABLE `ProjectLocation`
ADD CONSTRAINT `CNSTR_ProjectLocation_Countries_FK` FOREIGN KEY (`countryid`) REFERENCES `Countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `CNSTR_ProjectLocation_Projects_FK` FOREIGN KEY (`projectid`) REFERENCES `Projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
