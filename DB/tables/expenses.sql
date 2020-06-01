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
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `type` enum('cost-of-goods-sold','administration-expenses','selling-expenses') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling-expenses',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `amount`, `type`, `title`, `note`, `created_at`, `updated_at`) VALUES
(1, 32, 'selling-expenses', 'Fugiat dolores rerum enim aut.', 'Et natus eligendi nesciunt quam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(2, 96, 'selling-expenses', 'Qui quae quia et ullam natus.', 'Autem quia odio quia excepturi.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(3, 49, 'selling-expenses', 'Aliquid explicabo quasi dolore.', 'Labore voluptas est voluptatem.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(4, 27, 'selling-expenses', 'Et nam unde mollitia enim.', 'Sunt et voluptate sed aut velit.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(5, 36, 'selling-expenses', 'Amet perferendis et dolor et.', 'Itaque minima et nisi sunt ut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(6, 9, 'selling-expenses', 'Dolore nihil enim ut ab.', 'Dolorem tenetur eos quia.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(7, 95, 'selling-expenses', 'Beatae eum cum labore.', 'Rerum ad qui nam ullam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(8, 3, 'selling-expenses', 'Est veniam ab voluptas.', 'Voluptatem id iste similique odio.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(9, 51, 'selling-expenses', 'Voluptas nobis omnis enim.', 'Ipsa quisquam numquam facilis.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(10, 37, 'selling-expenses', 'Enim hic eos in ut.', 'Nostrum voluptatum iure sed.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(11, 18, 'selling-expenses', 'Fugit eum quisquam totam tenetur.', 'Veritatis voluptatem nihil aut et.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(12, 97, 'selling-expenses', 'Non a magnam ex repellat ullam.', 'Voluptatum sit velit magni nemo.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(13, 81, 'selling-expenses', 'Ea qui molestiae numquam ex.', 'Velit quam et odio aliquam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(14, 43, 'selling-expenses', 'Optio porro ab adipisci dolorem.', 'Itaque voluptatem veniam quos aut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(15, 34, 'selling-expenses', 'Aut labore reprehenderit magnam.', 'Fugiat iste omnis aut minima.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(16, 25, 'selling-expenses', 'Odit unde et aut qui molestiae a.', 'Asperiores doloribus sed itaque.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(17, 84, 'selling-expenses', 'Magni ipsa consectetur et fugit.', 'Unde quo explicabo atque qui.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(18, 0, 'selling-expenses', 'Odio recusandae est ut quia.', 'Quia facere esse odit non.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(19, 91, 'selling-expenses', 'Rerum aut dolore aut.', 'Ut itaque rerum maiores velit.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(20, 63, 'selling-expenses', 'Delectus incidunt porro ut aut.', 'Nisi qui reiciendis totam natus.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(21, 27, 'selling-expenses', 'Aut eius atque natus labore nulla.', 'Quidem enim ipsum porro aut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(22, 96, 'selling-expenses', 'Vel qui aperiam aperiam.', 'Qui aut error labore et minima.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(23, 6, 'selling-expenses', 'Pariatur eius qui nobis ea aut.', 'Sint autem voluptatum labore.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(24, 98, 'selling-expenses', 'Aut non quam eos aperiam.', 'Sed iure nostrum fuga ipsam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(25, 12, 'selling-expenses', 'Magnam et ad voluptatem repellat.', 'Repellat molestiae provident sed.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(26, 71, 'selling-expenses', 'Quibusdam vel quis veniam id.', 'Dignissimos qui et molestiae ut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(27, 21, 'selling-expenses', 'Asperiores minima dicta est.', 'Sed quam repellat eum tenetur.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(28, 12, 'selling-expenses', 'Sapiente et error aut et delectus.', 'Consectetur sed accusamus vel et.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(29, 33, 'selling-expenses', 'Voluptas hic modi autem aut sed.', 'Rerum ab animi non pariatur.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(30, 91, 'selling-expenses', 'Deleniti provident et nulla modi.', 'Deleniti quae vitae veniam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(31, 71, 'selling-expenses', 'Nostrum officia vel ut unde.', 'Facilis ab aliquam nihil enim.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(32, 53, 'selling-expenses', 'Placeat ea sed ratione et.', 'Natus quibusdam nam magni.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(33, 70, 'selling-expenses', 'Eos quia ex et est.', 'Sunt aut et qui.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(34, 52, 'selling-expenses', 'Nemo doloribus voluptatem commodi.', 'Distinctio magni aut deserunt.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(35, 51, 'selling-expenses', 'Sed harum aspernatur sunt nihil.', 'Aut sit asperiores ut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(36, 1, 'selling-expenses', 'Vero quo in ut velit.', 'Est voluptas reiciendis cum dolor.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(37, 91, 'selling-expenses', 'Sed nostrum non laborum.', 'Vero iste id enim dolores.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(38, 19, 'selling-expenses', 'Fugiat ut perferendis rerum et.', 'Unde nemo asperiores cum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(39, 41, 'selling-expenses', 'Adipisci eos natus eos.', 'Et eaque modi et quo eaque.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(40, 69, 'selling-expenses', 'Unde perspiciatis earum dolor.', 'Quam ipsa in neque modi ut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(41, 60, 'selling-expenses', 'Omnis soluta amet non fugit.', 'Neque rerum repellat dicta.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(42, 61, 'selling-expenses', 'Quia quia sequi ad nam quisquam.', 'Asperiores odio consequatur et.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(43, 98, 'selling-expenses', 'Enim quia et cumque hic.', 'Placeat at porro repellat iusto.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(44, 68, 'selling-expenses', 'Odio placeat alias beatae magnam.', 'Cumque dolor laudantium quos id.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(45, 66, 'selling-expenses', 'Explicabo sed et ut et.', 'Deserunt velit in aperiam omnis.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(46, 9, 'selling-expenses', 'Nam ipsa impedit aut.', 'Iusto deserunt quam dignissimos.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(47, 84, 'selling-expenses', 'Et culpa ut quia aliquid sequi.', 'Qui maiores sed enim earum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(48, 44, 'selling-expenses', 'Dolorum in debitis vel cum.', 'Ab aliquid nostrum a fuga.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(49, 17, 'selling-expenses', 'Qui sit voluptatum soluta est non.', 'Natus accusamus rem id.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(50, 98, 'selling-expenses', 'Et qui ut quia sunt.', 'Eum vel consequuntur animi et.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(51, 44, 'selling-expenses', 'Nemo autem et deleniti doloribus.', 'Ipsam quas dolor aut quasi.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(52, 16, 'selling-expenses', 'Ut eum expedita voluptas error.', 'Ad eum consequatur omnis ut velit.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(53, 75, 'selling-expenses', 'Quis iste minima voluptatem.', 'Velit exercitationem sit ut optio.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(54, 41, 'selling-expenses', 'Enim aut cupiditate ut delectus.', 'Voluptatum quas et aut distinctio.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(55, 89, 'selling-expenses', 'Occaecati debitis et quas velit.', 'In ullam quo ut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(56, 32, 'selling-expenses', 'Sunt aut optio maiores.', 'Nulla ea harum quo labore.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(57, 19, 'selling-expenses', 'Voluptates mollitia qui at ut et.', 'Odio occaecati eius maiores.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(58, 65, 'selling-expenses', 'Quasi temporibus odio sunt.', 'Nam nesciunt officiis voluptatem.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(59, 4, 'selling-expenses', 'Vitae commodi ad sunt occaecati.', 'Velit asperiores qui provident.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(60, 83, 'selling-expenses', 'Iste ad ut distinctio amet qui.', 'Enim et id laborum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(61, 74, 'selling-expenses', 'In culpa vero maiores est.', 'Quasi nam magni enim molestiae.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(62, 80, 'selling-expenses', 'At ea ut quas quasi.', 'Aut quaerat et explicabo.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(63, 74, 'selling-expenses', 'Autem eos quod ab voluptas.', 'Aut error expedita harum cum qui.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(64, 64, 'selling-expenses', 'Aut et rem a.', 'Omnis dolor et excepturi est.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(65, 52, 'selling-expenses', 'Et est vel quo consectetur ut id.', 'Veritatis sit in et velit impedit.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(66, 6, 'selling-expenses', 'Iure quia consectetur nulla ut.', 'Ipsam similique ullam et ratione.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(67, 66, 'selling-expenses', 'Enim earum officiis id ipsa quod.', 'Nisi dolores iusto libero saepe.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(68, 89, 'selling-expenses', 'Eius nisi ea non ut.', 'Qui libero illum fuga non ut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(69, 25, 'selling-expenses', 'Quam iste quibusdam sequi iste.', 'Quia laborum adipisci sunt beatae.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(70, 67, 'selling-expenses', 'Ex pariatur et quis deleniti.', 'Est assumenda est rerum autem.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(71, 36, 'selling-expenses', 'Ut sunt est eaque ea.', 'Rem nulla hic iure dicta vel.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(72, 88, 'selling-expenses', 'Eum libero veniam at perferendis.', 'Minima enim iste mollitia rerum.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(73, 19, 'selling-expenses', 'Et officiis nulla odio.', 'Ex eius ex doloribus modi.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(74, 98, 'selling-expenses', 'Ipsam non sint animi aut.', 'Aut est aut et aut.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(75, 22, 'selling-expenses', 'Quam numquam et qui.', 'Est eius aperiam modi nam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(76, 88, 'selling-expenses', 'Sit et voluptate vel doloribus.', 'Et sequi aut expedita.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(77, 63, 'selling-expenses', 'Est quis dolor veritatis ad.', 'Vel assumenda unde est aliquam.', '2020-06-01 16:25:34', '2020-06-01 16:25:34'),
(78, 92, 'selling-expenses', 'Est ea sit quis dolorem enim aut.', 'Ad animi magnam cupiditate atque.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(79, 14, 'selling-expenses', 'Est alias earum quaerat rerum.', 'Maxime ut vitae hic fuga et.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(80, 8, 'selling-expenses', 'Dolor sunt aliquid quasi.', 'Rerum est sed nobis recusandae et.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(81, 10, 'selling-expenses', 'Id eum eaque nihil omnis et aut.', 'Saepe aspernatur quis dolore.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(82, 41, 'selling-expenses', 'Voluptates earum sed est qui.', 'Minima esse magni nulla.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(83, 38, 'selling-expenses', 'Fugit quae dolor numquam neque ut.', 'Laborum quia ea totam corrupti.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(84, 29, 'selling-expenses', 'Sed eius maiores sed ut.', 'Ea eum at laborum non.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(85, 52, 'selling-expenses', 'Error ea deserunt est non.', 'Qui non quas ducimus nemo quo.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(86, 51, 'selling-expenses', 'Tenetur dolor et explicabo.', 'Facilis totam nisi facere.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(87, 94, 'selling-expenses', 'Eum illum impedit eum aut.', 'Quos sunt dolorum esse expedita.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(88, 72, 'selling-expenses', 'Ut porro ducimus fugiat quia.', 'A est debitis et sed.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(89, 24, 'selling-expenses', 'Qui doloribus necessitatibus est.', 'Minus iure consequatur illum ab.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(90, 4, 'selling-expenses', 'Sit quo sequi consequatur.', 'Vel quaerat voluptates sunt sed.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(91, 50, 'selling-expenses', 'Libero sapiente vero delectus quo.', 'Rem dolor sit possimus sed ut.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(92, 54, 'selling-expenses', 'Facilis aut magni non.', 'Sit non rem in quis hic.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(93, 27, 'selling-expenses', 'Recusandae quo omnis quo natus.', 'Facere quis et dignissimos ipsam.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(94, 72, 'selling-expenses', 'Ut consequuntur qui sint.', 'Quam illum modi nihil earum.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(95, 94, 'selling-expenses', 'Ex et exercitationem est.', 'Explicabo numquam rerum ut qui.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(96, 26, 'selling-expenses', 'Sit dolorem vel mollitia.', 'In voluptates rerum non est.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(97, 89, 'selling-expenses', 'Quas qui nihil a unde facere.', 'Autem aut blanditiis illo et eum.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(98, 98, 'selling-expenses', 'Accusantium vero dicta id a.', 'Et id et qui animi voluptate.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(99, 78, 'selling-expenses', 'Aliquid necessitatibus aut ut.', 'Incidunt non dolores cum quia ut.', '2020-06-01 16:25:35', '2020-06-01 16:25:35'),
(100, 96, 'selling-expenses', 'Est dolore dolorem velit velit et.', 'Vel voluptatem qui minima natus.', '2020-06-01 16:25:35', '2020-06-01 16:25:35');

--
-- Triggers `expenses`
--
DELIMITER $$
CREATE TRIGGER `decrease_capital_when_expense_created` AFTER INSERT ON `expenses` FOR EACH ROW UPDATE `capital` SET `money_amount` = (`money_amount` - NEW.amount)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `increase_capital_when_expense_deleted` AFTER DELETE ON `expenses` FOR EACH ROW UPDATE `capital` SET `money_amount` = (`money_amount` + OLD.amount)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_capital_when_expense_updated` AFTER UPDATE ON `expenses` FOR EACH ROW BEGIN
  UPDATE capital SET money_amount = (money_amount + OLD.amount);
  UPDATE `capital` SET `money_amount` = (`money_amount` - NEW.amount);
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
