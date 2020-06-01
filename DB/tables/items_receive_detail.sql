-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:38 PM
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
-- Table structure for table `items_receive_detail`
--

CREATE TABLE `items_receive_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `receive_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `inventory_id` int(10) UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_receive_detail`
--

INSERT INTO `items_receive_detail` (`id`, `receive_id`, `item_id`, `inventory_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'note', '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(2, 2, 3, 3, 'note', '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(3, 3, 3, 1, 'note', '2020-05-27 08:49:12', '2020-05-27 08:49:12'),
(4, 2, 4, 4, 'note', '2020-05-27 08:49:12', '2020-05-27 08:49:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_receive_detail`
--
ALTER TABLE `items_receive_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_receive_detail_receive_id_foreign` (`receive_id`),
  ADD KEY `items_receive_detail_item_id_foreign` (`item_id`),
  ADD KEY `items_receive_detail_inventory_id_foreign` (`inventory_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_receive_detail`
--
ALTER TABLE `items_receive_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items_receive_detail`
--
ALTER TABLE `items_receive_detail`
  ADD CONSTRAINT `items_receive_detail_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_receive_detail_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_receive_detail_receive_id_foreign` FOREIGN KEY (`receive_id`) REFERENCES `items_receive` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
