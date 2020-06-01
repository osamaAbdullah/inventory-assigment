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
-- Table structure for table `items_transfer`
--

CREATE TABLE `items_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `source_inventory_id` int(10) UNSIGNED DEFAULT NULL,
  `destination_inventory_id` int(10) UNSIGNED DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_transfer`
--

INSERT INTO `items_transfer` (`id`, `source_inventory_id`, `destination_inventory_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'Ut facere necessitatibus qui quia.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(2, 8, 4, 'Molestiae ut qui non et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(3, 7, 10, 'Quaerat et ipsum dolor et sit.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(4, 4, 7, 'Nisi sint expedita velit sunt.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(5, 3, 3, 'Eos ipsum hic quasi.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(6, 8, 10, 'Qui nobis aut amet pariatur.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(7, 2, 6, 'Sed et autem eum sit sunt minima.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(8, 10, 10, 'Non sed minus non.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(9, 8, 4, 'Quae esse optio et veniam.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(10, 5, 5, 'Et non quae quidem magni ut quia.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(11, 6, 10, 'Nihil omnis vel ea eaque et et et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(12, 9, 6, 'Dolorem ut autem ea recusandae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(13, 8, 9, 'Quia quo dolorem aspernatur eos.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(14, 9, 7, 'Optio vel deserunt vel suscipit.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(15, 1, 8, 'Sit qui aut dolore non.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(16, 2, 3, 'Iste ab quia qui suscipit.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(17, 10, 5, 'Maxime aut vero incidunt.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(18, 4, 2, 'Sint recusandae sit earum qui.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(19, 9, 8, 'Quam assumenda deleniti minus.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(20, 3, 7, 'Possimus tempore velit officia.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(21, 2, 5, 'Dolores pariatur dicta qui.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(22, 7, 4, 'Vitae dolorem eum quod omnis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(23, 8, 9, 'Quis odio ullam quis repellendus.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(24, 3, 8, 'In quis eligendi laudantium nemo.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(25, 1, 1, 'Blanditiis sunt ad amet nesciunt.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(26, 1, 3, 'Nisi et rerum atque quo ut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(27, 6, 8, 'Non autem nesciunt aut omnis quos.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(28, 9, 6, 'Nam minus in magni aliquid.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(29, 3, 8, 'Animi non ad cum quia.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(30, 9, 3, 'Ea pariatur nihil et laboriosam.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(31, 5, 4, 'Odit quidem nam exercitationem.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(32, 10, 8, 'Harum tenetur nam ab quas ut vero.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(33, 6, 9, 'Et voluptas accusamus non ut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(34, 3, 2, 'Placeat incidunt ex est saepe.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(35, 2, 6, 'Doloremque quis explicabo ut qui.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(36, 8, 5, 'Dolores eos alias ex aut dolores.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(37, 3, 3, 'Occaecati error quas omnis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(38, 5, 3, 'Dolor tenetur explicabo qui atque.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(39, 10, 9, 'Sapiente corrupti sit sit ea ut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(40, 6, 5, 'Et omnis unde dolorem cumque.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(41, 6, 7, 'Rerum cumque sint beatae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(42, 8, 8, 'Eligendi non iusto dicta odit.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(43, 5, 7, 'Ut ut ut est aut et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(44, 7, 3, 'Veritatis id aut natus eius earum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(45, 2, 7, 'Repellat tempore et possimus vero.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(46, 10, 1, 'Vel cumque eum reprehenderit.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(47, 7, 3, 'Perspiciatis et quasi non et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(48, 9, 8, 'Sit rerum quis itaque maiores.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(49, 7, 7, 'Eius qui placeat non.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(50, 2, 8, 'Qui itaque facere suscipit et in.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(51, 4, 2, 'Qui unde nemo dolore rem iusto.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(52, 10, 5, 'Voluptas qui et numquam enim.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(53, 2, 3, 'Fugit voluptatem eos architecto.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(54, 10, 6, 'Aut sint quaerat nesciunt beatae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(55, 10, 3, 'Quae quae qui dolore sit.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(56, 5, 2, 'Velit nisi veniam quis vel quod.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(57, 2, 3, 'Quas doloribus non dolor.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(58, 10, 10, 'Omnis alias quod atque et vitae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(59, 6, 9, 'Rerum nam qui quo sunt nostrum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(60, 10, 5, 'Facilis ducimus dolorem et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(61, 8, 9, 'Id saepe aut est quaerat.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(62, 3, 6, 'Saepe qui occaecati blanditiis et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(63, 1, 8, 'Deserunt quia modi iusto nihil.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(64, 5, 5, 'Blanditiis quia pariatur nihil.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(65, 4, 8, 'Tempora magnam quod commodi vel.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(66, 4, 10, 'Velit sunt est reiciendis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(67, 6, 1, 'Ad qui porro eum praesentium et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(68, 9, 3, 'Asperiores reiciendis id rerum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(69, 2, 4, 'In ducimus consequatur quasi.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(70, 1, 6, 'Nostrum dolorem impedit ea.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(71, 8, 1, 'At iste minus omnis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(72, 4, 9, 'Ducimus ea amet dolores illo.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(73, 2, 1, 'Ut magni nisi odit incidunt.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(74, 2, 3, 'Cum sit facere dolores magni.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(75, 2, 3, 'Aut est voluptate nihil non.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(76, 1, 6, 'Enim repellat dicta nemo.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(77, 6, 5, 'Et tempore est molestias iste.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(78, 2, 1, 'Vero modi et est non placeat.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(79, 6, 2, 'Et eos in nihil.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(80, 7, 1, 'Eos et in est vitae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(81, 8, 3, 'Aut repellat vel fuga dolorem.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(82, 10, 4, 'Fugiat rerum dolor aut qui quae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(83, 2, 4, 'Libero maiores et qui enim.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(84, 9, 1, 'Magni atque molestiae sint.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(85, 6, 8, 'Qui vel animi sint sit repellat.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(86, 10, 3, 'Quasi accusamus ducimus et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(87, 3, 8, 'Aspernatur est ut et id repellat.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(88, 4, 5, 'Doloribus eligendi quam nam qui.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(89, 5, 5, 'Et maiores et itaque ut vel.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(90, 9, 2, 'Corporis ipsa nisi qui eos fugiat.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(91, 3, 4, 'Provident et ea cum quidem.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(92, 5, 5, 'Iure a enim esse.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(93, 10, 5, 'Consectetur quis dolores eum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(94, 4, 2, 'Est tenetur in expedita qui.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(95, 1, 10, 'Nobis nulla aut inventore illum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(96, 2, 6, 'Culpa dolores et quis eum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(97, 10, 8, 'Quia qui voluptates quod.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(98, 2, 4, 'Id occaecati eum vitae quia autem.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(99, 4, 6, 'Sed ea doloribus sit in ex.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(100, 10, 4, 'Ipsa modi iusto inventore.', '2020-06-01 16:25:33', '2020-06-01 16:25:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_transfer`
--
ALTER TABLE `items_transfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_transfer_source_inventory_id_foreign` (`source_inventory_id`),
  ADD KEY `items_transfer_destination_inventory_id_foreign` (`destination_inventory_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_transfer`
--
ALTER TABLE `items_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items_transfer`
--
ALTER TABLE `items_transfer`
  ADD CONSTRAINT `items_transfer_destination_inventory_id_foreign` FOREIGN KEY (`destination_inventory_id`) REFERENCES `inventories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `items_transfer_source_inventory_id_foreign` FOREIGN KEY (`source_inventory_id`) REFERENCES `inventories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
