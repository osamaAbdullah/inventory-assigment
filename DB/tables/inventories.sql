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
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `name`, `location`, `note`, `created_at`, `updated_at`) VALUES
(1, 'effertz.com', '24174 Victor Park Apt. 323\nSimonishaven, MS 76862-1685', 'Quia cum ut omnis.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(2, 'sipes.net', '846 Florian Fort\nCharleston, MN 72309', 'Nulla nihil doloribus qui nulla.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(3, 'bailey.org', '664 Erica Springs Apt. 531\nGoyettestad, MN 82028', 'Eum nostrum ut autem non corporis.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(4, 'bogan.com', '599 Emie Causeway\nOlafort, NC 12551', 'Est quo et quibusdam et.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(5, 'dickens.biz', '81700 Spinka Ways Apt. 943\nCasperhaven, SD 49989', 'Ea ullam alias vel dolores.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(6, 'kirlin.com', '244 Hahn Throughway\nHuelport, IL 92317', 'Sit quidem blanditiis dolorum ut.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(7, 'douglas.com', '526 Jesus Forest\nNew Jerrell, GA 18952-6649', 'Sit veritatis dolor quia rem.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(8, 'batz.com', '27060 Murray Light\nHartmannburgh, NY 15102-5872', 'Nihil totam corrupti in commodi.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(9, 'hills.org', '28725 D\'Amore Crest Apt. 019\nPenelopeshire, AR 19473-7301', 'Soluta sit porro molestiae atque.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(10, 'harber.com', '4396 Kylee Hills\nSouth Coty, CO 90544-8298', 'Quia non ab et.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(11, 'lindgren.com', '31565 Bradly Knolls\nCarminebury, MI 65297', 'Ipsam ut et qui numquam provident.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(12, 'lebsack.info', '22263 Kuvalis Mountains Suite 013\nKaraborough, NY 27491', 'At alias odit ut magnam cum sit.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(13, 'rau.com', '920 Ramiro Unions Suite 965\nLake Tyshawn, PA 62444-8690', 'Omnis alias quia voluptas odio.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(14, 'rolfson.com', '69503 Weissnat Squares\nGoldnershire, VA 96452', 'Dolorem sit est sit distinctio.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(15, 'gusikowski.biz', '1784 Robel Island Suite 527\nWest Elmiraview, NY 78718', 'Eum et ut perspiciatis magni.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(16, 'bailey.net', '33256 Hermann Drive Apt. 420\nNorth Elfriedaland, MT 87611-7129', 'Sit adipisci vel at unde sed qui.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(17, 'mckenzie.com', '344 Graciela Divide Apt. 980\nSteuberhaven, WI 34110-0149', 'Adipisci sunt est voluptatibus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(18, 'labadie.com', '9878 Auer Manors\nNorth Deanshire, WY 90121-9515', 'Eos earum vero necessitatibus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(19, 'durgan.com', '6945 Verner Walks\nTerencestad, KS 43854', 'Illum libero similique pariatur.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(20, 'kerluke.info', '160 Mckayla View\nNorth Federico, NY 40695', 'Aspernatur quo delectus velit.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(21, 'stokes.net', '996 Mueller Viaduct Apt. 359\nEast Tremaynetown, NC 37985', 'Ullam modi ut voluptate nobis.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(22, 'bednar.info', '6018 Sandrine Shoals Suite 493\nMorissettechester, DC 35601', 'Ducimus impedit ratione impedit.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(23, 'yost.org', '98106 Angelo Lock Suite 158\nNorth Giuseppeville, KS 11588', 'Quia corporis officiis enim sed.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(24, 'dibbert.com', '2996 Rutherford Locks Apt. 033\nSouth Shyannview, AK 51524-1493', 'Similique autem nemo vel.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(25, 'hudson.com', '242 Dibbert Meadows\nPort Jordan, OH 89400', 'Similique sed earum et facere.', '2020-06-01 16:25:31', '2020-06-01 16:25:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
