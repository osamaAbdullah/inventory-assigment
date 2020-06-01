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
-- Table structure for table `items_sell`
--

CREATE TABLE `items_sell` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` double UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_sell`
--

INSERT INTO `items_sell` (`id`, `quantity`, `price`, `note`, `created_at`, `updated_at`) VALUES
(1, 6, 201, 'Quaerat velit nostrum sequi sit.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(2, 4, 250, 'Numquam harum velit qui sit.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(3, 1, 25, 'Qui iste nulla similique atque.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(4, 6, 132, 'Aliquam ut nostrum ipsa cum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(5, 0, 85, 'Repellat et nulla ipsam corrupti.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(6, 7, 321, 'Reiciendis dolorem sed nostrum a.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(7, 1, 575, 'Quasi quasi deserunt numquam.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(8, 4, 72, 'Ex illum totam eveniet aut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(9, 0, 200, 'Et eaque quasi occaecati quia ex.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(10, 6, 730, 'Beatae non nisi qui.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(11, 5, 733, 'Incidunt est ipsam sed.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(12, 6, 246, 'Commodi ea in iusto.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(13, 5, 602, 'Non animi minus et ab labore.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(14, 7, 706, 'Alias aut et sed sit quia quasi.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(15, 7, 648, 'Illo temporibus et non.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(16, 2, 312, 'Voluptatem ab distinctio qui sed.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(17, 9, 643, 'Et quasi placeat voluptas ut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(18, 4, 94, 'Consequuntur qui eveniet ea nisi.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(19, 8, 533, 'Eum id expedita similique.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(20, 6, 379, 'Quas atque est possimus totam.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(21, 3, 997, 'Iste omnis vel cupiditate est.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(22, 8, 782, 'Vel aut mollitia et facere.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(23, 1, 47, 'Impedit non aut debitis vel.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(24, 7, 693, 'Ut vel nostrum enim ut optio.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(25, 9, 196, 'Est doloribus eveniet autem sunt.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(26, 9, 798, 'Consequuntur eum aut ut in.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(27, 8, 19, 'Enim aut est cum nulla est.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(28, 8, 533, 'At qui enim omnis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(29, 0, 857, 'Quas qui voluptate cum nemo.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(30, 1, 983, 'Illo debitis eaque voluptate ex.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(31, 8, 30, 'Rerum sunt beatae aut et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(32, 2, 167, 'Labore ut et itaque ut autem.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(33, 5, 376, 'Atque assumenda quia quis in.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(34, 9, 762, 'Enim et mollitia et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(35, 6, 787, 'Voluptas et sit quisquam ipsa.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(36, 5, 887, 'Et incidunt nihil quaerat.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(37, 0, 641, 'Est possimus ut sequi.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(38, 3, 131, 'Quasi sed magni ut veniam sed.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(39, 1, 533, 'Earum est magni iste qui.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(40, 1, 264, 'Qui voluptas quo possimus.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(41, 2, 616, 'Repellat qui tenetur ut officiis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(42, 1, 707, 'Sed velit tempore architecto.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(43, 9, 169, 'Et deleniti ullam qui veritatis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(44, 9, 839, 'Dolorem aut sit dolor.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(45, 3, 846, 'At dolorem sed veniam nostrum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(46, 7, 340, 'Sit sit consequatur ea aliquam.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(47, 8, 427, 'Aut cum dolorum mollitia.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(48, 7, 467, 'Voluptas atque minus debitis est.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(49, 5, 167, 'Est neque dolore cum voluptates.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(50, 7, 98, 'Officiis et quia quae iste nulla.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(51, 7, 44, 'Ut est illo mollitia cumque.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(52, 4, 765, 'Neque iure animi voluptatem.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(53, 7, 776, 'Quia ea sed nam perspiciatis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(54, 9, 260, 'Et quae consectetur iusto at.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(55, 8, 57, 'Voluptatem autem aliquam a ea.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(56, 7, 530, 'Delectus saepe vel molestiae amet.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(57, 3, 961, 'Totam alias cum aut occaecati.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(58, 3, 689, 'Culpa ipsam magni modi cumque.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(59, 8, 836, 'Dolorem neque quia ut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(60, 9, 969, 'Deserunt magni ratione iusto id.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(61, 6, 525, 'Vel enim vitae possimus accusamus.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(62, 2, 894, 'Doloribus nisi quos enim amet.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(63, 9, 794, 'Fuga eius et natus sapiente.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(64, 8, 704, 'Adipisci assumenda et vero esse.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(65, 4, 887, 'At aliquam commodi aut et quae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(66, 1, 852, 'Ipsa cumque tempora labore ut ut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(67, 5, 531, 'Molestias dicta ducimus ut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(68, 1, 123, 'Ut neque earum ab quae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(69, 8, 652, 'Nesciunt nulla alias est.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(70, 3, 659, 'Nisi libero ea est eius fugiat.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(71, 8, 515, 'In et voluptatem natus.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(72, 9, 664, 'Quaerat ipsa error et vel enim at.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(73, 3, 448, 'Nihil incidunt et harum sunt eos.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(74, 2, 860, 'Similique vitae omnis ab eum est.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(75, 5, 213, 'Dignissimos optio nam sed totam.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(76, 9, 203, 'Eum vel sed ducimus saepe.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(77, 6, 696, 'Adipisci culpa sunt illo ut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(78, 7, 200, 'Molestiae id nobis hic ullam.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(79, 2, 421, 'Totam qui quod saepe aliquid.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(80, 7, 556, 'Error quia aut cum ab molestias.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(81, 3, 728, 'Nam ex eligendi modi provident.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(82, 5, 58, 'Facere recusandae eos quo in.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(83, 1, 745, 'Porro qui ducimus sequi ut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(84, 8, 147, 'Et ipsam in quia recusandae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(85, 4, 876, 'Repudiandae quo est eum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(86, 4, 872, 'Dicta cum id officia.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(87, 5, 170, 'Alias ea vero eos quia.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(88, 7, 624, 'Facere accusamus magnam non.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(89, 8, 131, 'Minus beatae qui et laudantium.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(90, 1, 522, 'Sed ipsa est rerum ab omnis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(91, 4, 190, 'Fugiat quis totam quasi.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(92, 3, 308, 'Ut laborum doloremque id cumque.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(93, 8, 324, 'Deleniti mollitia aut dolor ad.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(94, 7, 503, 'Ducimus nihil aut fuga qui.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(95, 7, 454, 'Sunt at error labore et quaerat.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(96, 0, 713, 'Sunt et est aliquam.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(97, 9, 369, 'Quam illum provident quia et quos.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(98, 2, 721, 'Quo quo quo velit dolor.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(99, 0, 76, 'Quidem quo dicta natus et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(100, 2, 154, 'Labore id fugiat unde.', '2020-06-01 16:25:33', '2020-06-01 16:25:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_sell`
--
ALTER TABLE `items_sell`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_sell`
--
ALTER TABLE `items_sell`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
