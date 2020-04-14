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
-- Indexes for table `ProjectStatus`
--
ALTER TABLE `ProjectStatus`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ProjectStatus`
--
ALTER TABLE `ProjectStatus`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
