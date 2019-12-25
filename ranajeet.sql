-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2019 at 07:43 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ranajeet`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_level1`
--

CREATE TABLE `category_level1` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_level1`
--

INSERT INTO `category_level1` (`id`, `name`) VALUES
(1, 'competitions'),
(2, 'events'),
(3, 'sports'),
(4, 'fests'),
(5, 'other');

-- --------------------------------------------------------

--
-- Table structure for table `category_level2`
--

CREATE TABLE `category_level2` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_level2`
--

INSERT INTO `category_level2` (`id`, `catId`, `name`) VALUES
(1, 1, 'film & photography'),
(2, 1, 'performing arts'),
(3, 1, 'fine arts'),
(4, 1, 'film & photography'),
(5, 1, 'others'),
(6, 2, 'workshops'),
(7, 2, 'exibitions'),
(8, 2, 'seminars'),
(9, 2, 'conference'),
(10, 2, 'meetup'),
(11, 3, 'indoor'),
(12, 3, 'outdoor'),
(13, 3, 'marathon'),
(14, 4, 'college fest'),
(15, 4, 'university fest'),
(16, 5, 'promotions'),
(17, 5, 'online partenership');

-- --------------------------------------------------------

--
-- Table structure for table `category_level3`
--

CREATE TABLE `category_level3` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_level3`
--

INSERT INTO `category_level3` (`id`, `catId`, `name`) VALUES
(1, 2, 'dance'),
(2, 2, 'theatre'),
(3, 2, 'standup'),
(4, 2, 'speech'),
(5, 2, 'music'),
(6, 3, 'painting & drawing'),
(7, 3, 'sculpture'),
(8, 3, 'pottery'),
(9, 4, 'short film'),
(10, 4, 'documentry'),
(11, 4, 'photography'),
(12, 5, 'architecture'),
(13, 5, 'online events');

-- --------------------------------------------------------

--
-- Table structure for table `category_level4`
--

CREATE TABLE `category_level4` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_level4`
--

INSERT INTO `category_level4` (`id`, `catId`, `name`) VALUES
(1, 1, 'classical'),
(2, 1, 'folk'),
(3, 1, 'bollywood'),
(4, 1, 'western'),
(5, 5, 'classical'),
(6, 5, 'folk'),
(7, 5, 'bollywood'),
(8, 5, 'western');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_level1`
--
ALTER TABLE `category_level1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_level2`
--
ALTER TABLE `category_level2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`);

--
-- Indexes for table `category_level3`
--
ALTER TABLE `category_level3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`);

--
-- Indexes for table `category_level4`
--
ALTER TABLE `category_level4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catId` (`catId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_level1`
--
ALTER TABLE `category_level1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_level2`
--
ALTER TABLE `category_level2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category_level3`
--
ALTER TABLE `category_level3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category_level4`
--
ALTER TABLE `category_level4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_level2`
--
ALTER TABLE `category_level2`
  ADD CONSTRAINT `category_level2_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `category_level1` (`id`);

--
-- Constraints for table `category_level3`
--
ALTER TABLE `category_level3`
  ADD CONSTRAINT `category_level3_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `category_level2` (`id`);

--
-- Constraints for table `category_level4`
--
ALTER TABLE `category_level4`
  ADD CONSTRAINT `category_level4_ibfk_1` FOREIGN KEY (`catId`) REFERENCES `category_level3` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
