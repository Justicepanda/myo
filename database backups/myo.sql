-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2015 at 09:45 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myo`
--

-- --------------------------------------------------------

--
-- Table structure for table `DataPoint`
--

CREATE TABLE IF NOT EXISTS `DataPoint` (
  `dpID` varbinary(16) NOT NULL,
  `dpDateTime` datetime NOT NULL,
  `dpXRotation` float NOT NULL,
  `dpYRotation` float NOT NULL,
  `dpZRotation` float NOT NULL,
  `dpPod1` int(11) NOT NULL,
  `dpPod2` int(11) NOT NULL,
  `dpPod3` int(11) NOT NULL,
  `dpPod4` int(11) NOT NULL,
  `dpPod5` int(11) NOT NULL,
  `dpPod6` int(11) NOT NULL,
  `dpPod7` int(11) NOT NULL,
  `dpPod8` int(11) NOT NULL,
  `loginID` varbinary(16) NOT NULL,
  `dpDeleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Login`
--

CREATE TABLE IF NOT EXISTS `Login` (
  `loginID` varbinary(16) NOT NULL,
  `loginUsername` varchar(150) NOT NULL,
  `loginPassword` varchar(150) NOT NULL,
  `loginFirstName` varchar(150) NOT NULL,
  `loginLastName` varchar(150) NOT NULL,
  `loginEmail` varchar(150) NOT NULL,
  `loginDeleted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DataPoint`
--
ALTER TABLE `DataPoint`
  ADD PRIMARY KEY (`dpID`);

--
-- Indexes for table `Login`
--
ALTER TABLE `Login`
  ADD PRIMARY KEY (`loginID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
