-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 19, 2015 at 03:04 AM
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
-- Table structure for table `acceleration_data_points`
--

CREATE TABLE IF NOT EXISTS `acceleration_data_points` (
  `id` int(10) unsigned NOT NULL,
  `adpXAcceleration` double(8,2) NOT NULL,
  `adpYAcceleration` double(8,2) NOT NULL,
  `adpZAcceleration` double(8,2) NOT NULL,
  `adpDateTime` datetime NOT NULL,
  `sessionID` bigint(20) NOT NULL,
  `adpDeleted` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acceleration_data_points`
--

INSERT INTO `acceleration_data_points` (`id`, `adpXAcceleration`, `adpYAcceleration`, `adpZAcceleration`, `adpDateTime`, `sessionID`, `adpDeleted`, `created_at`, `updated_at`) VALUES
(1, 1.00, 1.00, 2.00, '2015-08-15 01:30:00', 1, 0, '2015-10-15 04:14:32', '2015-10-15 04:14:32'),
(2, 2.00, 5.00, 4.00, '2015-08-15 02:30:00', 1, 0, '2015-10-15 04:14:46', '2015-10-15 04:14:46'),
(3, 15.00, 20.00, 10.00, '2015-08-15 03:30:00', 1, 0, '2015-10-15 04:15:00', '2015-10-15 04:15:00'),
(4, 24.00, 10.00, 1.00, '2015-08-15 04:30:00', 1, 0, '2015-10-15 04:15:17', '2015-10-15 04:15:17'),
(5, 4.00, 14.00, 12.00, '2015-08-15 05:30:00', 1, 0, '2015-10-15 04:15:26', '2015-10-15 04:15:26'),
(6, 0.00, 0.00, 0.00, '2015-08-15 06:30:00', 1, 0, '2015-10-15 04:15:38', '2015-10-15 04:15:38');

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
-- Table structure for table `emg_data_points`
--

CREATE TABLE IF NOT EXISTS `emg_data_points` (
  `id` int(10) unsigned NOT NULL,
  `emgpPod1` double(8,2) NOT NULL,
  `emgpPod2` double(8,2) NOT NULL,
  `emgpPod3` double(8,2) NOT NULL,
  `emgpPod4` double(8,2) NOT NULL,
  `emgpPod5` double(8,2) NOT NULL,
  `emgpPod6` double(8,2) NOT NULL,
  `emgpPod7` double(8,2) NOT NULL,
  `emgpPod8` double(8,2) NOT NULL,
  `emgpDateTime` datetime NOT NULL,
  `sessionID` bigint(20) NOT NULL,
  `emgpDeleted` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `emg_data_points`
--

INSERT INTO `emg_data_points` (`id`, `emgpPod1`, `emgpPod2`, `emgpPod3`, `emgpPod4`, `emgpPod5`, `emgpPod6`, `emgpPod7`, `emgpPod8`, `emgpDateTime`, `sessionID`, `emgpDeleted`, `created_at`, `updated_at`) VALUES
(1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2015-08-15 01:30:00', 1, 0, '2015-10-15 04:17:21', '2015-10-15 04:17:21'),
(2, 1.00, 2.00, 3.00, 4.00, 5.00, 6.00, 7.00, 8.00, '2015-08-15 02:30:00', 1, 0, '2015-10-15 04:17:48', '2015-10-15 04:17:48'),
(3, 2.00, 4.00, 6.00, 8.00, 10.00, 12.00, 14.00, 16.00, '2015-08-15 03:30:00', 1, 0, '2015-10-15 04:18:17', '2015-10-15 04:18:17'),
(4, 4.00, 8.00, 12.00, 16.00, 20.00, 24.00, 28.00, 32.00, '2015-08-15 04:30:00', 1, 0, '2015-10-15 04:18:42', '2015-10-15 04:18:42'),
(5, 2.00, 4.00, 6.00, 8.00, 10.00, 12.00, 14.00, 16.00, '2015-08-15 05:30:00', 1, 0, '2015-10-15 04:19:05', '2015-10-15 04:19:05'),
(6, 1.00, 2.00, 3.00, 4.00, 5.00, 6.00, 7.00, 8.00, '2015-08-15 06:30:00', 1, 0, '2015-10-15 04:19:18', '2015-10-15 04:19:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `loginUsername`, `loginPassword`, `loginFirstName`, `loginLastName`, `loginEmail`, `loginDeleted`, `created_at`, `updated_at`) VALUES
(1, 'myo', 'test', 'Testing', 'Myo', 'myo@myo.com', 0, '2015-10-15 04:06:07', '2015-10-15 04:06:07');

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
('2015_09_10_010831_create_datapoints_table', 1),
('2015_10_15_030805_create_rotationdatapoints_table', 1),
('2015_10_15_031019_create_accelerationdatapoints_table', 1),
('2015_10_15_031451_create_emgdatapoints_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rotation_data_points`
--

CREATE TABLE IF NOT EXISTS `rotation_data_points` (
  `id` int(10) unsigned NOT NULL,
  `rdpXRotation` double(8,2) NOT NULL,
  `rdpYRotation` double(8,2) NOT NULL,
  `rdpZRotation` double(8,2) NOT NULL,
  `rdpDateTime` datetime NOT NULL,
  `sessionID` bigint(20) NOT NULL,
  `rdpDeleted` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rotation_data_points`
--

INSERT INTO `rotation_data_points` (`id`, `rdpXRotation`, `rdpYRotation`, `rdpZRotation`, `rdpDateTime`, `sessionID`, `rdpDeleted`, `created_at`, `updated_at`) VALUES
(1, 1.00, 5.00, 10.00, '2015-08-15 01:30:00', 1, 0, '2015-10-15 04:11:35', '2015-10-15 04:11:35'),
(2, 2.00, 10.00, 20.00, '2015-08-15 02:30:00', 1, 0, '2015-10-15 04:12:01', '2015-10-15 04:12:01'),
(3, 4.00, 20.00, 40.00, '2015-08-15 03:30:00', 1, 0, '2015-10-15 04:12:19', '2015-10-15 04:12:19'),
(4, 5.00, 30.00, 50.00, '2015-08-15 04:30:00', 1, 0, '2015-10-15 04:12:38', '2015-10-15 04:12:38'),
(5, 7.00, 35.00, 55.00, '2015-08-15 05:30:00', 1, 0, '2015-10-15 04:12:47', '2015-10-15 04:12:47'),
(6, 8.00, 25.00, 25.00, '2015-08-15 06:30:00', 1, 0, '2015-10-15 04:13:02', '2015-10-15 04:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int(10) unsigned NOT NULL,
  `sessionStartTime` datetime NOT NULL,
  `sessionEndTime` datetime NOT NULL,
  `loginID` bigint(20) NOT NULL,
  `sessionQuality` bigint(20) NOT NULL,
  `sessionDeleted` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `sessionStartTime`, `sessionEndTime`, `loginID`, `sessionQuality`, `sessionDeleted`, `created_at`, `updated_at`) VALUES
(1, '2015-10-15 01:00:00', '2015-10-15 07:00:00', 1, 10, 0, '2015-10-15 04:07:28', '2015-10-15 04:07:28'),
(2, '2015-10-16 01:00:00', '2015-10-16 07:00:00', 1, 9, 0, '2015-10-15 04:56:19', '2015-10-15 04:56:19'),
(3, '2015-10-17 01:00:00', '2015-10-17 12:00:00', 1, 3, 0, '2015-10-15 06:21:19', '2015-10-15 06:21:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceleration_data_points`
--
ALTER TABLE `acceleration_data_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datapoints`
--
ALTER TABLE `datapoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emg_data_points`
--
ALTER TABLE `emg_data_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rotation_data_points`
--
ALTER TABLE `rotation_data_points`
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
-- AUTO_INCREMENT for table `acceleration_data_points`
--
ALTER TABLE `acceleration_data_points`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `datapoints`
--
ALTER TABLE `datapoints`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emg_data_points`
--
ALTER TABLE `emg_data_points`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rotation_data_points`
--
ALTER TABLE `rotation_data_points`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
