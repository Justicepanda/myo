-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 11, 2015 at 06:46 AM
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
-- Table structure for table `data_points`
--

CREATE TABLE IF NOT EXISTS `data_points` (
  `id` int(10) unsigned NOT NULL,
  `dpXRotation` double(8,2) NOT NULL,
  `dpYRotation` double(8,2) NOT NULL,
  `dpZRotation` double(8,2) NOT NULL,
  `dpPod1` bigint(20) NOT NULL,
  `dpPod2` bigint(20) NOT NULL,
  `dpPod3` bigint(20) NOT NULL,
  `dpPod4` bigint(20) NOT NULL,
  `dpPod5` bigint(20) NOT NULL,
  `dpPod6` bigint(20) NOT NULL,
  `dpPod7` bigint(20) NOT NULL,
  `dpPod8` bigint(20) NOT NULL,
  `sessionID` bigint(20) NOT NULL,
  `dpDeleted` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_points`
--

INSERT INTO `data_points` (`id`, `dpXRotation`, `dpYRotation`, `dpZRotation`, `dpPod1`, `dpPod2`, `dpPod3`, `dpPod4`, `dpPod5`, `dpPod6`, `dpPod7`, `dpPod8`, `sessionID`, `dpDeleted`, `created_at`, `updated_at`) VALUES
(1, 1.00, 2.00, 3.00, 1, 2, 3, 4, 5, 6, 7, 8, 1, 0, '0000-00-00 00:00:00', '2015-09-11 06:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE IF NOT EXISTS `logins` (
  `id` int(10) unsigned NOT NULL,
  `loginUsername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loginPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loginFirstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loginLastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loginEmail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loginDeleted` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `loginUsername`, `loginPassword`, `loginFirstName`, `loginLastName`, `loginEmail`, `loginDeleted`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 'Admin', 'test', 'test@test.test', 0, '2015-09-10 01:15:25', '2015-09-10 01:15:25'),
(2, '', '', '', '', '', 0, '2015-09-10 01:16:03', '2015-09-10 01:16:03'),
(3, '', '', '', '', '', 0, '2015-09-11 05:09:42', '2015-09-11 05:09:42'),
(4, '', '', '', '', '', 0, '2015-09-11 05:09:56', '2015-09-11 05:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_09_10_010449_create_logins_table', 1),
('2015_09_10_010725_create_sessions_table', 1),
('2015_09_10_010831_create_datapoints_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(10) unsigned NOT NULL,
  `sessionStartTime` datetime NOT NULL,
  `sessionEndTime` datetime NOT NULL,
  `loginID` int(10) NOT NULL,
  `sessionDeleted` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `sessionStartTime`, `sessionEndTime`, `loginID`, `sessionDeleted`, `created_at`, `updated_at`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_points`
--
ALTER TABLE `data_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_points`
--
ALTER TABLE `data_points`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
