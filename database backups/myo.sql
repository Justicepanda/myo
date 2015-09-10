-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2015 at 01:53 AM
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
-- Table structure for table `datapoints`
--

CREATE TABLE IF NOT EXISTS `datapoints` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `loginUsername`, `loginPassword`, `loginFirstName`, `loginLastName`, `loginEmail`, `loginDeleted`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 'Admin', 'test', 'test@test.test', 0, '2015-09-10 01:15:25', '2015-09-10 01:15:25'),
(2, '', '', '', '', '', 0, '2015-09-10 01:16:03', '2015-09-10 01:16:03');

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
  `sessionDeleted` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datapoints`
--
ALTER TABLE `datapoints`
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
-- AUTO_INCREMENT for table `datapoints`
--
ALTER TABLE `datapoints`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
