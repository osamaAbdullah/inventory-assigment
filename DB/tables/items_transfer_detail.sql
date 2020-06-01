-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:40 PM
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
-- Table structure for table `items_transfer_detail`
--

CREATE TABLE `items_transfer_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `request` enum('requested','approved','rejected','transferred') COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_transfer_detail`
--

INSERT INTO `items_transfer_detail` (`id`, `transfer_id`, `item_id`, `quantity`, `request`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 13, 'requested', NULL, '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(2, 2, 3, 3, 'requested', NULL, '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(3, 3, 3, 20, 'approved', NULL, '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(4, 2, 4, 20, 'transferred', NULL, '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(5, 6, 45, 20, 'transferred', NULL, '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(6, 7, 32, 20, 'transferred', NULL, '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(7, 3, 3, 20, 'transferred', NULL, '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(8, 2, 4, 4, 'rejected', NULL, '2020-05-27 08:49:12', '2020-05-27 08:49:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_transfer_detail`
--
ALTER TABLE `items_transfer_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_transfer_detail_transfer_id_foreign` (`transfer_id`),
  ADD KEY `items_transfer_detail_item_id_foreign` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_transfer_detail`
--
ALTER TABLE `items_transfer_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items_transfer_detail`
--
ALTER TABLE `items_transfer_detail`
  ADD CONSTRAINT `items_transfer_detail_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_transfer_detail_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `items_transfer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
