-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory-assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `path`, `created_at`, `updated_at`) VALUES
(1, 'https://lorempixel.com/640/480/?76358', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(2, 'https://lorempixel.com/640/480/?89101', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(3, 'https://lorempixel.com/640/480/?34646', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(4, 'https://lorempixel.com/640/480/?97754', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(5, 'https://lorempixel.com/640/480/?38001', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(6, 'https://lorempixel.com/640/480/?27141', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(7, 'https://lorempixel.com/640/480/?94965', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(8, 'https://lorempixel.com/640/480/?89116', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(9, 'https://lorempixel.com/640/480/?83841', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(10, 'https://lorempixel.com/640/480/?87937', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(11, 'https://lorempixel.com/640/480/?32137', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(12, 'https://lorempixel.com/640/480/?33872', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(13, 'https://lorempixel.com/640/480/?35269', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(14, 'https://lorempixel.com/640/480/?99510', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(15, 'https://lorempixel.com/640/480/?89345', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(16, 'https://lorempixel.com/640/480/?83324', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(17, 'https://lorempixel.com/640/480/?48625', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(18, 'https://lorempixel.com/640/480/?70536', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(19, 'https://lorempixel.com/640/480/?25160', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(20, 'https://lorempixel.com/640/480/?18897', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(21, 'https://lorempixel.com/640/480/?79251', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(22, 'https://lorempixel.com/640/480/?62770', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(23, 'https://lorempixel.com/640/480/?31884', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(24, 'https://lorempixel.com/640/480/?24091', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(25, 'https://lorempixel.com/640/480/?70133', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(26, 'https://lorempixel.com/640/480/?93717', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(27, 'https://lorempixel.com/640/480/?47972', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(28, 'https://lorempixel.com/640/480/?59491', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(29, 'https://lorempixel.com/640/480/?23224', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(30, 'https://lorempixel.com/640/480/?50988', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(31, 'https://lorempixel.com/640/480/?84080', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(32, 'https://lorempixel.com/640/480/?53373', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(33, 'https://lorempixel.com/640/480/?21253', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(34, 'https://lorempixel.com/640/480/?35092', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(35, 'https://lorempixel.com/640/480/?37980', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(36, 'https://lorempixel.com/640/480/?25157', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(37, 'https://lorempixel.com/640/480/?20268', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(38, 'https://lorempixel.com/640/480/?50494', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(39, 'https://lorempixel.com/640/480/?73573', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(40, 'https://lorempixel.com/640/480/?55368', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(41, 'https://lorempixel.com/640/480/?94075', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(42, 'https://lorempixel.com/640/480/?87700', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(43, 'https://lorempixel.com/640/480/?24584', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(44, 'https://lorempixel.com/640/480/?38785', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(45, 'https://lorempixel.com/640/480/?28260', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(46, 'https://lorempixel.com/640/480/?55656', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(47, 'https://lorempixel.com/640/480/?45745', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(48, 'https://lorempixel.com/640/480/?43636', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(49, 'https://lorempixel.com/640/480/?84147', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(50, 'https://lorempixel.com/640/480/?63547', '2020-06-01 16:25:31', '2020-06-01 16:25:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
