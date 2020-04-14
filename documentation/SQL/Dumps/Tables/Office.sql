-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2019 at 06:09 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Office`
--
ALTER TABLE `Office`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Office`
--
ALTER TABLE `Office`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
