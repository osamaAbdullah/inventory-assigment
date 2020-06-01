-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:39 PM
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
-- Table structure for table `items_sell_detail`
--

CREATE TABLE `items_sell_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `sell_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_sell_detail`
--

INSERT INTO `items_sell_detail` (`id`, `sell_id`, `item_id`) VALUES
(1, 1, 43),
(2, 2, 54),
(3, 3, 32),
(4, 10, 90),
(5, 9, 12),
(6, 8, 32),
(7, 7, 43),
(8, 6, 77),
(9, 5, 65),
(10, 4, 87),
(11, 3, 32),
(12, 12, 45),
(13, 13, 48),
(14, 14, 84),
(15, 25, 56),
(16, 78, 65),
(17, 98, 53),
(18, 56, 52),
(19, 36, 51),
(20, 78, 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_sell_detail`
--
ALTER TABLE `items_sell_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_sell_detail_item_id_foreign` (`item_id`),
  ADD KEY `items_sell_detail_sell_id_foreign` (`sell_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_sell_detail`
--
ALTER TABLE `items_sell_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items_sell_detail`
--
ALTER TABLE `items_sell_detail`
  ADD CONSTRAINT `items_sell_detail_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_sell_detail_sell_id_foreign` FOREIGN KEY (`sell_id`) REFERENCES `items_sell` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
