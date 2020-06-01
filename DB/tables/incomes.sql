-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:37 PM
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
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `title`, `amount`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Soluta voluptate quam tenetur.', 43, 'Quo quia omnis aspernatur aliquid.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(2, 'Ut quae qui id nihil.', 336, 'Accusantium vel dolorem et libero.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(3, 'Cupiditate sint et accusantium.', 738, 'Adipisci labore est aliquid et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(4, 'Similique est sint ut voluptatem.', 281, 'Molestias ipsum et omnis dolorum.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(5, 'Error ea accusantium nihil beatae.', 283, 'Non vel ad commodi ullam at vitae.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(6, 'Sit eum porro et id et eius harum.', 444, 'Quia est ea hic est id quia.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(7, 'Autem velit cumque vero.', 115, 'Consequatur iste est enim minus.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(8, 'Aspernatur aut inventore ullam.', 567, 'Modi qui molestiae blanditiis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(9, 'Nobis qui illum dignissimos.', 542, 'Ipsam et sit repudiandae dolor.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(10, 'Dicta est molestias ex.', 338, 'Omnis autem fugiat et quo omnis.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(11, 'Nostrum ad nam quaerat id.', 886, 'Dolores optio ut nisi dolore.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(12, 'Nam mollitia rerum doloribus.', 256, 'Veniam explicabo ab quo in.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(13, 'Quisquam sit est et aperiam.', 63, 'Sunt fuga sed sunt.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(14, 'Aut aut tempora sunt corrupti.', 169, 'Nam et et asperiores sed ut aut.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(15, 'Qui neque fuga quas nihil.', 829, 'Nisi iure dolorem ea sit.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(16, 'Commodi alias alias quis dolorum.', 276, 'Aut aliquid et ut repellendus.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(17, 'Quod iure beatae maiores.', 999, 'Est sunt voluptas aut modi.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(18, 'Quo ut quia voluptatum voluptas.', 861, 'Deleniti esse sint aliquid soluta.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(19, 'Aut velit tempora minima hic.', 822, 'Unde possimus vel sunt et.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(20, 'Qui perspiciatis ut qui.', 2, 'Ut officiis sit aut iusto.', '2020-06-01 16:25:33', '2020-06-01 16:25:33'),
(21, 'Est fuga in et at a.', 601, 'Libero et dolorem ut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(22, 'Similique odio velit velit et.', 867, 'In temporibus qui nemo dolores.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(23, 'Facere ipsa et saepe ex.', 285, 'Odio quos ipsa rem laboriosam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(24, 'At amet non facere velit.', 362, 'Quos nesciunt autem eaque qui.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(25, 'Deserunt aut nulla et laudantium.', 348, 'Et expedita qui recusandae magnam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(26, 'Optio quisquam quae illum.', 348, 'Magnam iure omnis nisi.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(27, 'Et dolorem at tempora iure.', 570, 'Quo tempore eius corrupti amet.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(28, 'Ipsa eaque dolor id officia.', 876, 'Non quod et eius harum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(29, 'Beatae a sit sunt tempora.', 248, 'Non ullam aut aliquam qui.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(30, 'Qui excepturi unde atque a rem.', 714, 'Quas natus et esse.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(31, 'Et minima laboriosam iste.', 703, 'Illo tempora suscipit excepturi.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(32, 'Magni eligendi eius quia labore.', 985, 'Est eos ut nulla iure eius non.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(33, 'Corporis et ad quia et.', 665, 'Molestiae est rerum et adipisci.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(34, 'Nisi qui ut ullam et voluptas.', 736, 'Sit provident repudiandae vel.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(35, 'Rerum et voluptatibus iusto porro.', 806, 'Quis ut et commodi esse.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(36, 'Temporibus non enim quas non.', 353, 'Numquam eaque iusto ut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(37, 'Sit repudiandae assumenda nemo et.', 241, 'Velit qui dolore ipsum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(38, 'Omnis deleniti omnis labore sed.', 278, 'Quo sint quas nemo omnis.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(39, 'Qui aut at eveniet sed laudantium.', 263, 'Repellat unde optio temporibus.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(40, 'Facere et ea qui dolorum.', 581, 'Quod ea iste accusantium iure.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(41, 'Fugiat quaerat commodi ad aut.', 920, 'Sed sit maxime earum porro beatae.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(42, 'Possimus et magnam in itaque non.', 211, 'Voluptatem hic autem in quis.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(43, 'Modi rerum porro eum autem.', 583, 'Earum iure rerum ut rerum dolores.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(44, 'Numquam doloremque non ut sit.', 812, 'Aut et nam unde sed debitis et.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(45, 'Et omnis iste molestias magnam.', 812, 'Officia esse sed laudantium.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(46, 'Praesentium sed magni non omnis.', 72, 'Modi ut et sed delectus.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(47, 'Error impedit cupiditate et error.', 735, 'Maxime omnis enim et eum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(48, 'Eveniet rem eius hic doloribus.', 703, 'Minima unde ut ipsum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(49, 'Eveniet natus animi non minima.', 501, 'Et quis et tempore.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(50, 'Id unde nihil perferendis.', 47, 'Vero libero dolores sunt.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(51, 'Aliquam aperiam eos voluptates.', 876, 'Qui quia et autem qui ducimus.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(52, 'Et velit eum aut.', 702, 'Rerum dolorem eum ut quo.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(53, 'Ad ea maxime rem totam quas.', 719, 'Voluptas omnis reiciendis quia.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(54, 'Odio quae aut doloremque alias.', 834, 'A aut esse sint iure aut aut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(55, 'Et modi ea unde ducimus.', 430, 'Non unde fuga recusandae facilis.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(56, 'Ullam fugiat corrupti sit odit.', 725, 'Corrupti adipisci ut esse sint.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(57, 'Doloribus cum nostrum est sit eos.', 140, 'Hic voluptas cum itaque.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(58, 'Omnis doloribus sit hic vel.', 954, 'Cum qui natus quae molestias.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(59, 'Asperiores distinctio ea sed vel.', 971, 'Autem qui sunt ullam soluta at.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(60, 'Dolor rem nulla saepe voluptas.', 742, 'Aperiam aliquam sint deserunt a.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(61, 'Asperiores et quaerat ab earum.', 131, 'Est provident aperiam rem sit.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(62, 'Aut sunt neque voluptate dolorum.', 106, 'Qui vero et reprehenderit.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(63, 'Et rerum eveniet laborum vel illo.', 29, 'Modi nisi accusantium eos.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(64, 'Ut perspiciatis et non aliquam.', 14, 'Omnis nam rerum velit.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(65, 'Dolor vero dolorem eum.', 582, 'Aut dolorum optio id ea.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(66, 'Natus qui quas nesciunt impedit.', 885, 'Repellendus quo dignissimos id.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(67, 'Eius magni quos officiis est.', 478, 'Quidem dolore et qui debitis.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(68, 'Et quod dolorem neque nam.', 461, 'Quis ex sed qui atque.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(69, 'Natus sequi ex ut.', 453, 'Ab nobis sint et et.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(70, 'Exercitationem magni porro et.', 195, 'Ut iure vel dicta.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(71, 'Ut dolor molestiae eum magni.', 779, 'Omnis corrupti ad nemo cum veniam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(72, 'Ab quis deserunt distinctio.', 609, 'Tempora voluptatem et at nostrum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(73, 'Vel quam libero quae et.', 950, 'Culpa porro unde laudantium eum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(74, 'Rerum fugiat vel praesentium.', 332, 'Qui et est numquam tempore.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(75, 'Qui deserunt animi dolor quaerat.', 865, 'Aut odit reprehenderit aliquam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(76, 'Earum aut minima non perspiciatis.', 887, 'Id voluptate voluptas voluptatum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(77, 'Consequatur nisi autem ex et.', 13, 'Unde ea reiciendis quos.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(78, 'In repudiandae vel doloremque.', 189, 'Eos id minima natus libero.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(79, 'Tenetur ex ab dolorum ab suscipit.', 623, 'Iusto labore aliquam numquam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(80, 'Maxime totam autem ab laboriosam.', 760, 'Debitis culpa ullam commodi minus.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(81, 'Nesciunt et voluptate in iste.', 324, 'Ducimus et ipsum molestias ea.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(82, 'Et sunt molestias et.', 185, 'Consequuntur molestias sequi aut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(83, 'Aut qui quia ut ut molestias.', 402, 'Quis rerum voluptatem sit at.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(84, 'Atque dolorum iusto omnis qui.', 424, 'Vel cum ab sit recusandae atque.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(85, 'Qui quia rerum doloremque.', 214, 'Quam quam optio dicta totam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(86, 'Et et commodi ducimus quaerat id.', 703, 'Expedita qui dolor omnis ut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(87, 'At unde aut optio.', 405, 'Iure unde deleniti consequatur.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(88, 'Molestiae est non ut.', 79, 'Maxime officiis sed maxime qui.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(89, 'Quia vitae est dolores molestiae.', 436, 'Possimus sit aut vitae maiores et.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(90, 'Excepturi enim iure fugit.', 128, 'Dicta hic saepe ea aut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(91, 'Quas quia nemo omnis rem.', 247, 'Et doloribus qui quia labore.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(92, 'Facere et eum id quia.', 619, 'Incidunt enim eligendi corporis.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(93, 'Et et ipsa omnis amet.', 926, 'Id iste vitae ut dicta.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(94, 'Quo asperiores quo ipsa qui.', 735, 'Aut eius iste eius vitae.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(95, 'Et quia nostrum aut.', 325, 'Culpa omnis maxime ut ipsum minus.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(96, 'Rerum in et omnis error quae nemo.', 325, 'Vero corporis nisi fugit qui.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(97, 'Ipsum consequatur numquam quo.', 608, 'Dolorum aut est recusandae.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(98, 'Aut est ea autem aliquam.', 236, 'Earum enim rerum ad quam quo qui.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(99, 'Harum aut dolorem qui.', 921, 'Ut sed laboriosam cumque nam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(100, 'Praesentium tempora qui quisquam.', 619, 'Eos itaque illum excepturi.', '2020-06-01 16:25:34', '2020-06-01 16:25:34');

--
-- Triggers `incomes`
--
DELIMITER $$
CREATE TRIGGER `decrease_capital_when_income_deleted` AFTER DELETE ON `incomes` FOR EACH ROW UPDATE `capital` SET `money_amount` = (`money_amount` - OLD.amount)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `increase_capital_when_income_created` AFTER INSERT ON `incomes` FOR EACH ROW UPDATE `capital` SET `money_amount` = (`money_amount` + NEW.amount)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_capital_when_income_updated` AFTER UPDATE ON `incomes` FOR EACH ROW BEGIN
    UPDATE `capital` SET `money_amount` = (`money_amount` - OLD.amount);
    UPDATE `capital` SET `money_amount` = (`money_amount` + NEW.amount);
  END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
