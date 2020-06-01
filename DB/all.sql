-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:30 PM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_customer` (`customer_name` VARCHAR(255), `customer_email` VARCHAR(255), `customer_phone` VARCHAR(33), `customer_address` VARCHAR(255), `customer_note` VARCHAR(255))  BEGIN

    INSERT INTO `customers`
    (type, name, email, phone_number, address, note, created_at, updated_at)
    VALUES
      ('customer', customer_name, customer_email, customer_phone, customer_address, customer_note, NOW(), NOW());

    INSERT INTO `customer_logs`
    (log, occurred_at) VALUES ('new customer has been created', NOW());

  END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `FULL_NAME` (`first_name` VARCHAR(255), `last_name` VARCHAR(255)) RETURNS VARCHAR(100) CHARSET utf8mb4 RETURN CONCAT(first_name, ' ', last_name)$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `capital`
--

CREATE TABLE `capital` (
  `money_amount` double NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `capital`
--

INSERT INTO `capital` (`money_amount`, `updated_at`) VALUES
(1000000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('customer','supplier') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(33) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `type`, `name`, `email`, `phone_number`, `address`, `note`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'Clement Wiza', 'damon34@gmail.com', '+1.731.722.1143', '789 Bins Hill\nNew Germanhaven, CO 59472', 'Veritatis et deserunt rerum occaecati quos dolor.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(2, 'customer', 'Reagan Krajcik DDS', 'roscoe46@yahoo.com', '1-415-292-2247 x805', '9922 Timmothy Vista\nVioletfort, HI 39408-7790', 'Natus qui sint velit quo sed est.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(3, 'customer', 'Tomasa Kihn', 'turner75@block.com', '(758) 907-8301 x3192', '7764 Adolphus Ville\nVeumland, WV 13481-1727', 'Fugit earum sed aperiam porro blanditiis nam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(4, 'customer', 'Dr. Pierce Prosacco Sr.', 'blanda.ryleigh@koss.org', '(504) 282-4499 x61027', '792 Bayer Pass\nSouth Serenastad, OK 45536', 'Dolorem amet et ullam ea molestias culpa iusto.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(5, 'customer', 'Kennedy Reinger', 'torey00@hotmail.com', '1-859-387-4476 x3620', '976 Haag Plains Suite 815\nMackenzieland, NV 43634-7473', 'Ipsa ea eligendi enim quia magnam qui quo.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(6, 'customer', 'Saige Brekke III', 'emanuel29@gmail.com', '1-859-301-9835 x43839', '380 Deon Rest Apt. 334\nLake Roryland, CA 13055', 'Rerum facilis voluptates beatae quas.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(7, 'customer', 'Edyth Murray', 'schuster.gaetano@bergnaum.com', '571-722-1615', '85321 Hassie Path\nNew Heaven, MT 24032-9196', 'Et libero ipsum eos qui rem.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(8, 'customer', 'Ms. Lue Stracke II', 'qgreen@smith.com', '330.559.4528 x405', '99180 Agustin Drive\nTillmanbury, IL 21762-6439', 'Totam animi autem sequi pariatur.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(9, 'customer', 'Jay Pfeffer', 'savion64@adams.info', '1-631-619-8604 x3182', '306 Harvey Row\nNew Cali, MO 88492', 'Voluptas qui qui placeat delectus.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(10, 'customer', 'Emerald Donnelly', 'myrtle77@hotmail.com', '+1-515-957-8039', '739 Clemmie Loop Apt. 542\nNorth Keshawn, IN 08598-2044', 'Et dolorem sint nesciunt quod quia laboriosam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(11, 'customer', 'Cullen Farrell DVM', 'wiegand.velma@yundt.com', '(581) 943-3197 x820', '587 Branson Springs Suite 462\nEast Caterina, MN 57415', 'Pariatur voluptatem qui et suscipit.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(12, 'customer', 'Jerel Torphy', 'connie36@hotmail.com', '442.810.9099 x848', '291 Amina Bridge Suite 108\nLake Gay, AR 66830', 'Similique ad dolorem ut tempora quaerat.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(13, 'customer', 'Joseph Windler', 'qbuckridge@purdy.com', '+1-253-438-7675', '8335 Harris Shoal\nLydafort, DC 30844', 'Maiores itaque inventore facere quaerat.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(14, 'customer', 'Edd Runolfsdottir', 'qjohnston@hermiston.org', '916.305.6128 x75415', '76825 Mafalda Tunnel Apt. 819\nEast Kirstin, SD 67233-9605', 'Saepe fugit et accusantium aut qui.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(15, 'customer', 'Akeem Baumbach', 'belle10@hotmail.com', '1-512-968-9089 x13611', '48820 Harold Cliffs Apt. 323\nJackfort, NH 93983', 'Deserunt deleniti ducimus necessitatibus at.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(16, 'customer', 'Dr. Mae Walter DDS', 'rstanton@schultz.info', '435-797-6605 x9283', '6390 Rosendo Parkways Suite 914\nBrycenton, OH 66412', 'Omnis corporis consequatur alias architecto.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(17, 'customer', 'Douglas Wilkinson', 'margret26@hotmail.com', '579-624-8608 x84959', '2383 Paucek Stravenue Suite 002\nSouth Emmitt, SC 52386', 'Minima eius repellat optio dignissimos.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(18, 'customer', 'Margarett Parisian', 'lzboncak@gmail.com', '+1-245-207-6725', '727 Kunde Shoals Suite 437\nKaylastad, CO 12473-5030', 'Quis nam explicabo dolor debitis veniam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(19, 'customer', 'Miss Elva Emmerich', 'willa.hahn@gmail.com', '1-773-949-7032 x02849', '38200 Geo Street\nNew Lindseyfurt, AL 00619', 'Non pariatur facere modi distinctio omnis minima.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(20, 'customer', 'Lauryn Effertz', 'omer.white@yahoo.com', '596.814.2783', '7944 Florence Dam Suite 643\nKuhnbury, AR 58871-7543', 'Ullam labore pariatur eum quis eos vitae.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(21, 'customer', 'Dr. Domenico Gerlach', 'garrison64@hotmail.com', '(875) 625-3960 x00686', '929 Feest Port Apt. 776\nNew Imaport, WY 16026-4632', 'Unde qui reiciendis nostrum harum quae.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(22, 'customer', 'Bridget Macejkovic', 'lemke.don@abshire.biz', '1-593-500-2677 x79716', '731 Aidan Row Suite 459\nNew Paxtonfurt, NM 62499', 'Dicta sit dolor error dolores.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(23, 'customer', 'Miss Katrina Brekke IV', 'donna.kuvalis@gmail.com', '714.204.3287', '283 Chandler Club\nRosenbaumchester, OH 10723-7205', 'Id et deserunt error quae quis fugiat aut.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(24, 'customer', 'Buford O\'Connell PhD', 'nyah59@schaefer.com', '963-209-2687 x228', '53028 Kulas Roads\nEast Keegan, NY 00658', 'Nisi quod voluptatem enim repellendus laboriosam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(25, 'customer', 'Jess Swift', 'emerson.dubuque@gmail.com', '(868) 493-6085 x840', '969 Block Flat\nEast Wilberview, NV 88616-0058', 'Rerum ut harum quas magnam aperiam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(26, 'customer', 'Noble Terry', 'dgorczany@schroeder.com', '620-999-7923 x27859', '1663 Corkery View Apt. 084\nPort Rocky, AK 97850-3347', 'Non molestias quod velit aut fugiat in.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(27, 'customer', 'Clyde Wisozk', 'kturcotte@yahoo.com', '523.830.6310 x13039', '111 Hickle Groves Apt. 233\nMoorefurt, PA 74457', 'Neque sapiente repellat ullam dicta voluptates.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(28, 'customer', 'Miss Nichole Toy', 'alyson.hills@lang.com', '(932) 326-4501 x288', '99338 Winston Path\nKittyborough, IN 45849-3430', 'Ut molestias iste laborum sint est incidunt iure.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(29, 'customer', 'Dejah Dietrich', 'piper.kuhic@grant.com', '436-217-6909', '167 Reyna Summit\nPort Aliberg, NM 69949-5187', 'Non perferendis error officia est illum.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(30, 'customer', 'Dr. Abbie Hill', 'dchristiansen@yahoo.com', '910-577-2889 x29238', '430 Schiller Mission Apt. 038\nBernhardtown, OR 60542-2263', 'Et quisquam molestiae tempore iure tempore.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(31, 'customer', 'Marta Runte', 'bcollins@gmail.com', '1-875-944-2211 x33327', '151 Retha Mews Apt. 666\nNorth Kacieton, WA 86154', 'Error omnis et dolor dolorem qui fugiat.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(32, 'customer', 'Jefferey Gibson', 'weber.alberta@hotmail.com', '886-859-1352', '22360 Simonis Plains Suite 177\nLeehaven, ME 65217-2487', 'Ea ad qui iure accusamus.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(33, 'customer', 'Bessie Abshire', 'bahringer.cayla@johns.biz', '343-620-4479 x18043', '10159 Mandy Dam Suite 526\nEast Pansy, NM 58998', 'Sit commodi a et aspernatur et.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(34, 'customer', 'Daryl Torphy', 'qkemmer@barrows.com', '1-672-251-8675', '412 Kyleigh Street\nThielbury, FL 00539', 'Quasi animi est nihil. Rem illum sunt ut facere.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(35, 'customer', 'Prof. Sunny Mills PhD', 'ardella41@hotmail.com', '(439) 921-7310', '3404 Runolfsdottir Harbor\nLake Reymouth, OR 13181-8954', 'Laborum accusantium aut similique architecto.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(36, 'customer', 'Clarissa Mitchell', 'tstokes@armstrong.com', '1-532-321-1226 x3679', '881 Eichmann Port Apt. 726\nSouth Wilbert, OR 82079', 'Est eius itaque temporibus consectetur ex.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(37, 'customer', 'Sven Gusikowski', 'antwon.kuphal@cronin.com', '+1-949-470-1056', '86422 Schumm Center\nWest Marinaport, RI 89796', 'Incidunt labore tenetur assumenda.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(38, 'customer', 'Stanford Walker IV', 'qbrakus@baumbach.com', '1-302-306-8101 x61179', '197 Maria Pine\nMarianeburgh, OK 59892', 'Est qui non unde aperiam sed at et enim.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(39, 'customer', 'Sim Bosco V', 'hessel.ronny@gmail.com', '1-337-826-6301 x744', '8313 Efren Vista\nNevaton, DC 98363-5272', 'Minus accusamus similique commodi qui ipsa.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(40, 'customer', 'Demario Lakin', 'fblick@hotmail.com', '1-743-639-5547 x79038', '9422 Lee Terrace Apt. 848\nNorth Marisolchester, VT 89647-1248', 'Iusto unde voluptas perferendis.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(41, 'customer', 'Dr. Hobart Durgan', 'mccullough.nick@hotmail.com', '1-710-928-5254 x5213', '1652 Waelchi Springs\nBechtelarhaven, ID 70407', 'Qui qui sint unde consectetur omnis.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(42, 'customer', 'Axel Padberg', 'bernadette.langosh@gmail.com', '(292) 775-4008 x912', '80820 Orin Forest Apt. 931\nPort Lorine, NH 39906-1641', 'Distinctio est ab qui qui eum sit.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(43, 'customer', 'Curtis Senger', 'jena03@ullrich.com', '1-752-761-3994 x440', '895 Corwin Fords Suite 313\nCruickshankfurt, MS 38279-0110', 'Beatae illo deserunt iure cum accusantium.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(44, 'customer', 'Celine Hoeger', 'kautzer.ferne@gmail.com', '+19849755013', '5823 Eleazar Knoll Suite 014\nRonside, FL 67614-8418', 'Quas impedit est doloribus asperiores.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(45, 'customer', 'Annamae Kerluke', 'murazik.matilda@schneider.info', '271.942.9492 x66071', '1086 Bashirian Crest Suite 984\nVivianshire, LA 50610', 'Ut aliquid numquam laboriosam rem voluptas iusto.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(46, 'customer', 'Lulu Fadel DDS', 'uweber@yahoo.com', '+1-664-361-3959', '7853 Percy Point Suite 705\nLebsackside, OK 19332-4175', 'Placeat natus reiciendis corporis alias quas.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(47, 'customer', 'Cleora Stamm', 'vlabadie@feest.com', '1-242-822-6917', '3250 Assunta View Apt. 862\nRaulshire, ID 92964-4436', 'Odit debitis voluptatibus perferendis ex et.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(48, 'customer', 'Prof. Amelie Cassin', 'cindy.watsica@hotmail.com', '+1-589-908-8843', '8952 Chanel Knoll\nWest Deontae, KS 84452-0139', 'Accusamus nemo est dolor eveniet.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(49, 'customer', 'Fred Ritchie', 'kaleb.ferry@yahoo.com', '(815) 723-6770', '102 Roosevelt Prairie\nEast Addiemouth, OH 13636', 'Inventore sunt unde nulla.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(50, 'customer', 'Sylvia Goyette', 'kaya78@lind.com', '(934) 378-2727', '92672 Odessa Spurs\nEast Constantinton, AL 55010', 'Ex id dolor ut nobis eum.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(51, 'customer', 'Miss Vivian Hills', 'predovic.rhett@fadel.com', '(749) 939-5200 x312', '9824 Antonio Ford\nWest Tristian, MT 90921-5882', 'Vero quam dolor aut.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(52, 'customer', 'Annetta Robel', 'hintz.fae@hotmail.com', '+15318213791', '137 Amani Parkway Suite 721\nNorth Ruben, DE 60547', 'Quo eaque aliquid similique beatae quasi.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(53, 'customer', 'Bertram Walter', 'dmedhurst@hotmail.com', '(956) 694-3787 x6003', '7441 Hickle Center Apt. 623\nWest Julien, LA 26040', 'Quam ut sint non est.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(54, 'customer', 'Kenneth Pfeffer', 'tyler.kreiger@raynor.com', '(601) 355-8916 x3932', '280 Flatley Rue Apt. 589\nLegroston, NM 87054', 'Eius deserunt et tempore nesciunt quibusdam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(55, 'customer', 'Megane Price', 'bobby36@sporer.info', '(803) 778-9236', '457 McGlynn Unions\nHillview, HI 83239-2468', 'Sint ut ut quidem sed qui.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(56, 'customer', 'Dr. Keyon Goodwin II', 'rashawn07@connelly.com', '+1.905.220.9358', '796 Dickinson Tunnel\nNew Cortneyfurt, TN 96337-3262', 'Quia tempore non dolorem et omnis dolor et at.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(57, 'customer', 'Dr. Halle Howe IV', 'murphy.kshlerin@howell.biz', '371.493.7030', '76300 Brakus Inlet Apt. 524\nPurdyberg, SD 24376', 'At est quae vel ipsum cumque doloremque.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(58, 'customer', 'Kiara Mraz', 'suzanne85@jerde.com', '921-267-8249', '695 Beatty Hollow Suite 810\nLake Eltaton, PA 82907-1221', 'Itaque aspernatur voluptates porro sit dolores.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(59, 'customer', 'Abigale Douglas', 'lily40@yahoo.com', '831-257-6476 x777', '188 Buddy Shores Apt. 265\nEast Dovietown, ND 12343-0671', 'Esse dolores id vel ducimus ea officiis.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(60, 'customer', 'Dr. Sterling Funk DDS', 'reichel.marcelle@hyatt.info', '+1 (731) 467-5603', '983 Shania Flat Suite 978\nTaureanfort, AZ 31241-3788', 'Officia quod sit hic illum minima eveniet.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(61, 'customer', 'Jaylin DuBuque', 'tod.hayes@hotmail.com', '+18377628569', '6074 Flossie Parkways Apt. 062\nRogerberg, PA 06035-0059', 'Laudantium ea amet cupiditate architecto ullam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(62, 'customer', 'Nico Wolf', 'terry.neoma@bergnaum.biz', '(956) 807-7927', '6538 Makayla Underpass Suite 520\nEast Bobby, NY 08577-0343', 'Aut voluptate qui minus rem.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(63, 'customer', 'Kaela Feest', 'fwiegand@kris.com', '497.702.5065 x2816', '110 Elmira Well Apt. 469\nLake Clarissaburgh, ME 71337', 'Laborum illo sunt corporis fugit voluptas sed.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(64, 'customer', 'America Mertz', 'eduardo25@yahoo.com', '279-966-2538', '39830 Pfeffer Fall\nCristopherland, ID 90134-8386', 'Tempore soluta quae asperiores nemo alias.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(65, 'customer', 'Miss Danika Schiller Sr.', 'amie87@hotmail.com', '(910) 636-6987 x9278', '3508 Elfrieda Village\nBrandiside, DC 57038-9306', 'Commodi vitae iste nulla et eum ut.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(66, 'customer', 'Devin Morar', 'mrenner@yahoo.com', '343-547-5505 x7682', '3537 Johns Ridges\nDevonport, MS 67177-6888', 'Sit est tempora asperiores odio optio et.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(67, 'customer', 'Nelson Beahan DVM', 'mbarrows@hills.com', '1-270-226-4941 x524', '239 Lucious Common Suite 534\nLake Selmerland, GA 71148-2897', 'Doloribus repudiandae placeat ab nobis.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(68, 'customer', 'Jarred Turner', 'weldon.greenholt@rowe.com', '1-901-463-2496 x4452', '3697 Stark Valley Apt. 783\nHomenickbury, MS 03587-1070', 'Sapiente distinctio laboriosam est eum.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(69, 'customer', 'Alayna Batz', 'bmuller@simonis.com', '+16758923935', '763 Hackett Causeway Apt. 210\nFeeneyland, MI 04161', 'Nihil nobis impedit voluptas modi.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(70, 'customer', 'Prof. Jeffery VonRueden', 'wroberts@gmail.com', '354-796-5056 x92201', '17054 Skye Skyway\nLake Kylie, IN 79246', 'Sunt esse sint harum quasi esse cumque nostrum.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(71, 'customer', 'Prof. Flavio Cummings', 'stanley.murray@gmail.com', '906-419-1199', '633 Dejon Stream Apt. 500\nSouth Duaneport, ME 36905-4125', 'Quia ullam laboriosam in blanditiis est ut.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(72, 'customer', 'Melany Marks', 'julianne97@hotmail.com', '(567) 296-0153', '9500 Tony Ports Suite 930\nWest Zella, MI 56032-9245', 'Exercitationem et quia doloribus atque enim et.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(73, 'customer', 'Prof. Garry Bogan IV', 'othiel@hotmail.com', '367-221-6999 x1526', '550 Kendrick Summit\nTillmanburgh, NE 91558-1486', 'Asperiores aut quia vel ipsam facere.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(74, 'customer', 'Prof. Destany Erdman', 'antonia14@gmail.com', '674.419.3266 x789', '86069 Marion Manor\nHartmannhaven, UT 35065', 'Dolore quasi repellendus quasi quo.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(75, 'customer', 'Velva Huel', 'ndickens@murray.com', '1-446-985-1331', '43502 Hill Common\nSouth Juniusside, MO 26238-7070', 'Officiis eos adipisci sint odio.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(76, 'customer', 'Dr. Gudrun Rohan', 'magali.becker@hotmail.com', '+1.394.383.8118', '4422 Cassie Run Apt. 814\nNorth Carymouth, LA 63550', 'Eaque minus ad doloribus labore a similique.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(77, 'customer', 'Mr. Destin Zieme V', 'javonte79@hotmail.com', '1-365-638-3955 x165', '61611 Yundt Trail\nPort Emerald, IL 34123-6040', 'Eum aut ipsum at commodi.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(78, 'customer', 'Brock Goyette', 'hayley.mccullough@yahoo.com', '1-606-241-8044', '35531 Brad Oval\nWehnerfurt, DE 91574-6991', 'Aut omnis nesciunt omnis eum est incidunt et id.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(79, 'customer', 'Janie Lynch', 'caesar.wehner@hotmail.com', '935-720-0200', '79888 Aiyana Neck Suite 122\nChristianmouth, DE 56286-9492', 'Quo voluptatibus sit quidem magni.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(80, 'customer', 'Liana Wolff', 'julius44@kuhic.com', '1-590-223-5304 x0729', '2811 Vivienne Rapids Suite 906\nBeahanberg, DE 45774-4366', 'Inventore nihil et distinctio totam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(81, 'customer', 'Taya Hintz I', 'shawn92@kilback.com', '1-235-380-4731 x0823', '97934 Schoen Grove Apt. 240\nDimitrichester, CO 98276-7170', 'Non velit provident ut molestias ut deserunt.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(82, 'customer', 'Andres Marks', 'ruecker.curt@schmidt.net', '890-441-5821', '1447 Kuhlman Squares\nNew Zacheryville, ID 93206', 'Fugiat magni dignissimos sapiente enim.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(83, 'customer', 'Elizabeth Moen', 'alex02@friesen.com', '(594) 685-6529 x2042', '6532 Sylvia Ridge Suite 434\nKoelpinberg, MT 58311', 'Mollitia nam aut molestiae distinctio sed.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(84, 'customer', 'Ena Senger DVM', 'acole@yahoo.com', '1-272-751-0714 x408', '42489 Mackenzie Viaduct\nNorth Tyrique, CT 15996', 'Ipsam sed voluptas et autem.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(85, 'customer', 'Natalia Paucek Jr.', 'hal.smith@hotmail.com', '(801) 561-2311 x624', '642 Jerad Walk\nOrlandoton, CT 58918', 'Minima sit porro quia.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(86, 'customer', 'Dr. Eino Koepp Sr.', 'khartmann@ondricka.com', '459-385-1515 x04005', '715 Rohan Garden Apt. 036\nWest Andy, RI 40095-6884', 'Sunt fuga iste impedit excepturi facere aliquam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(87, 'customer', 'Antonio Simonis', 'mattie.okuneva@mayer.org', '(305) 607-6774', '9228 Omari Branch Apt. 148\nNew Allene, MN 57297-0529', 'Alias architecto optio voluptatem a deserunt ex.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(88, 'customer', 'Jaycee Marquardt', 'eprohaska@hotmail.com', '+1-423-613-8115', '15053 Powlowski Highway\nWest Leilanitown, NM 54375-8257', 'Tempore quas consequatur suscipit ratione modi.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(89, 'customer', 'Stefanie Ankunding V', 'gskiles@yahoo.com', '331-442-7080 x7579', '755 Effertz Fort\nSiennamouth, MA 03662-6006', 'Laborum sit non dignissimos non enim assumenda.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(90, 'customer', 'Mrs. Breanne Pacocha DVM', 'jane.gorczany@yahoo.com', '293-968-7655 x46196', '941 Karl Ports Apt. 047\nLake Justenshire, ME 57131', 'Architecto officiis nulla ipsam deleniti.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(91, 'customer', 'Ashleigh Conroy', 'uhartmann@raynor.com', '(327) 589-6110', '744 Champlin Shoal Apt. 530\nSouth Kendallfurt, NE 02477', 'Harum autem itaque iste.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(92, 'customer', 'Mr. Noel Robel DDS', 'wilfredo73@altenwerth.net', '910-337-7938', '6216 Ritchie Mountains\nNew Thaddeus, MI 84809', 'Vel aut libero dicta voluptatum.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(93, 'customer', 'Miss Brandy Becker Jr.', 'jaylen.hegmann@mcdermott.com', '589.598.0797', '13636 Keebler Freeway Suite 509\nRennermouth, VA 76168-5637', 'Mollitia qui consequuntur error rem omnis.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(94, 'customer', 'Prof. Maryam Casper', 'thompson.flavio@hotmail.com', '+1-348-498-9261', '239 Conroy Port Suite 990\nStantonland, KY 71956', 'Et officiis dolor magnam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(95, 'customer', 'Dr. Michel Schumm DVM', 'jhills@erdman.com', '+1-310-680-5002', '547 Lemke Union\nGulgowskiburgh, NJ 87546', 'Quo tempora qui enim eaque libero.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(96, 'customer', 'Ms. Bridie Champlin III', 'florencio71@heaney.com', '564-772-7786 x6790', '8497 Favian Mountains\nWisokyfurt, LA 93952', 'Unde et ad ducimus et.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(97, 'customer', 'Kiarra Conroy Sr.', 'antonetta.nienow@hilpert.net', '1-286-853-9092', '573 Brown Tunnel Suite 122\nHowardton, VT 66507-0788', 'Sit optio id illum quia ea iusto quibusdam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(98, 'customer', 'Woodrow Conroy Jr.', 'alesch@yahoo.com', '(258) 207-5327 x4358', '79580 Bernier Bridge\nNew Rowlandhaven, VT 96326', 'Non minima illum autem unde soluta dolor.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(99, 'customer', 'Alisa Schamberger', 'lizzie83@herzog.com', '1-318-313-4916 x214', '79790 Dora Curve\nStellabury, CO 17702', 'Iusto vero qui fugit est qui autem quas.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(100, 'customer', 'Timothy Cremin', 'cecilia.treutel@gmail.com', '568-212-9309 x653', '94394 Nolan Mews Suite 418\nPort Derek, IL 89974', 'Aperiam quidem et non enim voluptatem.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(101, 'supplier', 'Dereck Nolan', 'brisa.ondricka@torp.com', '+1 (882) 247-1712', '2202 Spinka Creek\nRyanside, KY 33709', 'Deleniti eum consequatur qui iusto earum numquam.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(102, 'supplier', 'Cordia Cummerata', 'hilario.renner@yahoo.com', '959-454-8630', '2584 Schaefer Lodge\nEast Esther, IA 05257-8785', 'Nesciunt debitis quia voluptatem sunt ut aut.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(103, 'supplier', 'Mr. Logan Hegmann', 'charlie91@damore.com', '245.408.0413 x41344', '73596 Farrell Circles\nNew Korbinmouth, NC 78557-9655', 'Sed rem voluptatibus natus iure.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(104, 'supplier', 'Keaton Schmeler', 'jeffery99@rosenbaum.com', '+1.547.356.6180', '61344 Schuster Lodge\nAureliebury, OH 41446', 'Nobis minima dolorum incidunt qui possimus.', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(105, 'supplier', 'Uriah Erdman', 'sydni29@smitham.net', '434-848-2946 x158', '7299 Loren Ridge Apt. 008\nAlexanneland, NV 87491', 'Qui corrupti vero eius quidem.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(106, 'supplier', 'Curt Heaney', 'yhettinger@kulas.com', '(694) 500-0868 x3872', '5951 Greenfelder Oval Apt. 974\nNorth Velvastad, AZ 95107', 'Earum sequi hic laborum exercitationem.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(107, 'supplier', 'Ms. Evalyn Grant IV', 'cruickshank.lila@batz.net', '1-649-955-4848 x16337', '90585 Connelly Terrace\nJacksontown, WY 52128', 'Ad voluptas rerum earum possimus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(108, 'supplier', 'Shaniya Waters', 'gusikowski.zoe@gmail.com', '237-756-3772 x2363', '403 Edna Tunnel Apt. 361\nSpencermouth, MS 26229', 'Aliquam est culpa voluptates.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(109, 'supplier', 'Bradley Buckridge', 'hdamore@hotmail.com', '947.201.7702 x256', '40460 Katelin Union Apt. 282\nPort Doug, PA 47091', 'Eos sequi et provident qui est voluptas.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(110, 'supplier', 'Nya Labadie', 'pwilliamson@gmail.com', '+1 (576) 307-3602', '32782 Oswaldo Park Suite 459\nEast Fosterview, RI 88134', 'Voluptatibus animi vel soluta minima commodi.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(111, 'supplier', 'Sheldon Harris', 'zulauf.trey@kshlerin.com', '(867) 566-2671 x3468', '49570 Feeney Summit Apt. 431\nGrimeschester, MO 98347', 'Quia occaecati sed ut aut.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(112, 'supplier', 'Newell Conn', 'michael67@yahoo.com', '+19106571179', '427 Buckridge Street\nNolanville, WY 94559-2399', 'Qui dolores est veniam quam.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(113, 'supplier', 'Alexane McGlynn', 'mrolfson@weber.com', '(705) 888-9467', '5955 Senger Freeway\nSchroederview, DC 09521-2328', 'Consequatur odit qui unde harum sed quia.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(114, 'supplier', 'Angela Stiedemann', 'harrison.hoppe@considine.com', '+1-469-867-4434', '2372 Corkery Causeway\nLake Jimmymouth, MA 41278', 'Repellat repellendus non eum ex.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(115, 'supplier', 'Miss Daniela Franecki PhD', 'reese37@yahoo.com', '1-412-285-8796 x2583', '750 Daugherty Wall Suite 276\nNew Damienberg, MN 03041-5009', 'Autem repellendus vel perspiciatis culpa nihil.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(116, 'supplier', 'Tyra Hane II', 'haylie70@turcotte.org', '768.524.7715 x5433', '1867 Cruickshank Neck\nHaagport, ND 98853-8032', 'Voluptatum voluptatem laudantium cum est.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(117, 'supplier', 'Emery Dach', 'lavonne.olson@predovic.org', '+1-805-377-8258', '42905 Zemlak Keys\nWest Frances, IA 16714', 'Doloribus modi voluptatem labore dolor rerum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(118, 'supplier', 'Hosea Schultz', 'wfadel@hotmail.com', '417-593-8715 x0810', '96890 Furman Cliff\nLake Cassandra, NC 34001', 'Quo pariatur et temporibus iure.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(119, 'supplier', 'Macie Collier', 'cremin.ally@kerluke.net', '573-708-1133 x8198', '40450 Vella Street Suite 257\nWatsicaview, OR 91029-5663', 'Sit ipsa aut qui illum corrupti cumque.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(120, 'supplier', 'Prof. Jacques Sporer Jr.', 'qlegros@gmail.com', '586-890-8676 x1420', '570 Rau Plains Suite 711\nSouth Hannah, MS 94172', 'At magni consequatur architecto eligendi dolor.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(121, 'supplier', 'Mr. Kian Barrows IV', 'daniela39@gmail.com', '(691) 346-7842 x712', '950 Jerrold Village\nPort Adrianhaven, NM 42123', 'Cumque culpa ex perspiciatis nobis et.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(122, 'supplier', 'Keenan Gaylord', 'eleonore80@yahoo.com', '489-345-6494', '81900 Wisoky Corners\nLake Talonberg, GA 48213-0596', 'Cum aut vel qui possimus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(123, 'supplier', 'Keely McGlynn', 'ebert.marco@yahoo.com', '898.623.0119 x554', '4130 Stark Rest\nPort Diamondmouth, ND 96040', 'Et et ullam reprehenderit autem.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(124, 'supplier', 'Coby Auer', 'borer.christian@yahoo.com', '253.200.3710 x80830', '79510 Alvah Burgs\nOctaviaton, NE 41660-5027', 'Et provident tempore porro atque unde deserunt.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(125, 'supplier', 'Dr. Autumn Reichert IV', 'kariane58@ondricka.net', '438-765-4535', '372 Rau Way Suite 976\nQuitzonstad, CA 38185', 'Delectus ipsum sit eaque sed fuga molestiae.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(126, 'supplier', 'Ebony Davis', 'howe.raphael@senger.com', '+18693829597', '643 Herminio Ports Apt. 390\nCamrynchester, TX 94645-2061', 'Facilis et aut asperiores rerum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(127, 'supplier', 'Ms. Filomena Olson', 'charlene73@hotmail.com', '+18377409361', '2648 Windler Drives Suite 246\nArmstrongborough, CO 45145-0122', 'Accusamus fugiat officiis unde ex illo dolorem.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(128, 'supplier', 'Rashawn Kozey', 'fmayer@dubuque.net', '(619) 351-7636 x8432', '6323 Marcos Courts Suite 711\nYundtburgh, LA 92749', 'Temporibus in architecto necessitatibus ut porro.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(129, 'supplier', 'Peyton Prohaska', 'anabel.runolfsdottir@gmail.com', '845-647-5860 x48289', '141 Klocko Place Suite 845\nNinahaven, IN 80665', 'Sed assumenda libero ad id.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(130, 'supplier', 'Katarina Steuber', 'lavada70@hotmail.com', '(281) 454-3704', '947 Floyd Mountains\nPort Myrl, OH 84294-9512', 'Molestiae in dolor et et consequatur.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(131, 'supplier', 'Liam Greenholt', 'kbernhard@hotmail.com', '(958) 221-4339 x204', '861 Sawayn Burg\nSouth Elwyntown, FL 01873-9295', 'Iste qui non debitis.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(132, 'supplier', 'Hudson Schneider', 'isai.konopelski@gmail.com', '(656) 488-0419', '7157 Mac Field Apt. 051\nImeldamouth, CO 56709-3734', 'Et ut voluptatibus perferendis eum dolorem.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(133, 'supplier', 'Laura Auer', 'kerluke.jeanette@batz.org', '984-935-1321 x56269', '313 Kuhic Spurs Suite 422\nBiankaton, KY 26461-6364', 'Earum exercitationem corrupti itaque cum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(134, 'supplier', 'Wyman McGlynn', 'boyd42@toy.org', '1-583-444-7162 x346', '343 Fredrick Skyway\nGladycefort, PA 01726', 'Consectetur officiis odit in odit quos.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(135, 'supplier', 'Margaretta Jacobs', 'effertz.ashton@hotmail.com', '930-521-5779', '3343 Althea Ridges Apt. 580\nSouth Noahton, VA 62037', 'Laborum aut neque quis nobis et quas.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(136, 'supplier', 'Mrs. Zoila Rutherford', 'ctowne@hudson.info', '(526) 783-5322', '20507 Rice Stravenue\nNorth Gregorioton, CT 87704', 'Repudiandae eum ut suscipit dolor voluptatibus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(137, 'supplier', 'Evangeline Dicki', 'deckow.pamela@yahoo.com', '+1-846-297-8289', '522 Francesco Flats Suite 555\nBridgetteshire, MI 34378', 'Illum nesciunt doloremque nulla minima.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(138, 'supplier', 'Isabell Stoltenberg', 'faye35@wyman.com', '+1-726-866-1976', '1303 Odie Estates Apt. 094\nPort Carlosberg, WY 85494-6774', 'Animi repellendus fuga voluptas incidunt id et.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(139, 'supplier', 'Brant Nicolas DVM', 'dbahringer@hotmail.com', '(875) 562-3105 x06799', '4368 Mario Mountain\nSouth Jackiehaven, NE 27765-2495', 'Hic est est dolore sapiente iusto.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(140, 'supplier', 'Ariel Heidenreich', 'casper.clement@gmail.com', '1-937-267-8394 x98745', '309 Newell Wall\nSouth Giovanna, TN 10586', 'Qui voluptatem vitae aut modi minus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(141, 'supplier', 'Osborne Wintheiser MD', 'jeanie.koepp@yahoo.com', '861.551.3957 x71629', '346 Corwin Club Suite 522\nEast Joan, PA 92201-2163', 'Optio et quia repellat possimus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(142, 'supplier', 'Cheyenne Mayer', 'aida.monahan@hotmail.com', '648.695.2163 x96254', '31226 Hudson Point Apt. 377\nPort Henderson, OH 98953-8668', 'Perspiciatis nulla ducimus voluptas voluptatem.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(143, 'supplier', 'Zoe Schmeler', 'trantow.imogene@yahoo.com', '+1-467-779-0235', '7136 Candida Circles\nAnitamouth, IA 02838', 'Molestias optio est voluptatem architecto ut eum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(144, 'supplier', 'Trevor Kulas', 'abagail.okeefe@yahoo.com', '(740) 275-0845 x181', '85476 Doyle Stream Apt. 728\nSouth Fletcher, VT 28349', 'Rerum ipsa autem fugiat numquam nemo.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(145, 'supplier', 'Mina Nader', 'kylie18@metz.com', '932.981.7411', '24157 Bernadette Forks Apt. 124\nChristopport, OK 11565-3263', 'Nisi porro ad esse iusto et voluptatem adipisci.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(146, 'supplier', 'Dejah Prosacco', 'antonietta96@gmail.com', '(365) 885-1088', '361 Schinner Villages Suite 543\nPort Elijah, TN 91514', 'Et accusamus rerum fugiat at aliquid.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(147, 'supplier', 'Baron Emard DVM', 'onie.graham@hotmail.com', '(269) 583-5414', '90567 Bethany Center\nFraneckibury, IA 63451', 'Laborum fugit quis molestiae voluptatum et.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(148, 'supplier', 'Louie Bogisich III', 'xglover@yahoo.com', '(804) 918-8551 x7156', '283 Hoppe Extensions\nEast Vitashire, PA 91950', 'Commodi facere consequuntur quo quia.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(149, 'supplier', 'Dr. Vince Kreiger DVM', 'florida.homenick@windler.com', '(502) 857-7505', '37077 Allison Corners\nAryannaburgh, ID 09259-0332', 'Possimus reiciendis ab ducimus ad et eius.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(150, 'supplier', 'Cristopher Lindgren', 'whitney.schoen@yahoo.com', '+17398533580', '739 Jovani Rest Suite 386\nNew Marcia, SC 63842', 'Qui id eius inventore mollitia et natus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(151, 'supplier', 'Myron Thompson I', 'uraynor@stracke.com', '514.678.1903 x95870', '669 Okuneva Islands Suite 592\nBuckridgemouth, ID 83354', 'Officia quasi maiores enim eius et fuga et.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(152, 'supplier', 'Alexa Effertz', 'jailyn.swift@treutel.com', '354.642.3080', '14612 Reichert Lodge Apt. 215\nSouth Marquiseborough, DC 93826-1742', 'Nesciunt qui et et qui.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(153, 'supplier', 'Dr. Maia Eichmann', 'lea71@hotmail.com', '1-302-933-6093 x687', '89912 Halvorson Alley\nEfraintown, LA 93320', 'Voluptas non architecto dolorem ex impedit rerum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(154, 'supplier', 'Isobel Kuhlman', 'laron14@bauch.com', '902-314-3306', '772 Gusikowski Shoals\nWest Candida, IN 66233-7357', 'At reiciendis sit soluta sit.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(155, 'supplier', 'Leanna Schamberger', 'nash59@gmail.com', '(905) 409-4795', '7536 Fritsch Tunnel\nGeoffreyport, WY 36443-4077', 'Ea ex facere exercitationem quia id.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(156, 'supplier', 'Prof. Cyrus Veum', 'renner.golda@barrows.info', '(587) 523-5798 x7776', '9917 Morgan Ridges Apt. 818\nPort Katrinetown, VA 93112-4981', 'Aut rerum vel sequi odit aut quod possimus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(157, 'supplier', 'Madilyn Medhurst', 'fcummerata@hill.biz', '(395) 849-4369', '728 Deshawn Hollow Suite 283\nWest Mayeton, IL 61162-0206', 'Modi modi dolorem blanditiis maiores.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(158, 'supplier', 'Lexie Daniel', 'afahey@hotmail.com', '(747) 913-4693', '188 Lind Roads\nMarksland, OR 61883-4889', 'Placeat velit et iste non ratione debitis quia.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(159, 'supplier', 'Cullen Stamm DDS', 'noemi12@heaney.com', '1-436-582-2521', '19512 Green Place\nEast Sallychester, WI 97733-2749', 'Earum vel veniam non excepturi sequi omnis.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(160, 'supplier', 'Mr. Clark Kovacek DDS', 'jennyfer.kuhn@mueller.com', '+1-274-635-5824', '3005 Bessie Drive Suite 061\nAufderharville, IL 62919-6173', 'Dolore quo totam quam itaque dicta.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(161, 'supplier', 'Dolly Botsford', 'ipowlowski@yahoo.com', '664-564-5541 x125', '443 Ankunding Lake Suite 691\nSouth Mittie, WY 70066', 'Pariatur natus est aut quia eum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(162, 'supplier', 'Mrs. Taya Bernhard MD', 'vkuphal@quitzon.com', '1-246-581-5510', '8596 Leuschke Corners\nWest Vicente, AZ 19946', 'Dolorum eligendi harum qui in quia consectetur.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(163, 'supplier', 'Prof. Peggie White', 'pearl98@moore.com', '+1.458.312.4130', '922 Ashlynn Pine\nWest Blancaberg, CO 54213-3489', 'Sunt dolorum ipsam officiis ut.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(164, 'supplier', 'Jamil Donnelly', 'stan27@simonis.com', '+1-289-639-7355', '6303 Annette Path\nViolettown, NM 31599-0308', 'Ut rerum ea officiis voluptate incidunt quia sed.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(165, 'supplier', 'Cleora Harris', 'lubowitz.jarret@fadel.com', '+15614695535', '2373 Nitzsche Shoals Apt. 502\nNorth Delmerburgh, IN 72141', 'Cum sapiente voluptatum ipsa est.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(166, 'supplier', 'Fanny Rutherford', 'iliana.hartmann@walsh.com', '(207) 728-8787 x878', '6522 Sawayn Drives Apt. 573\nNorth Marjolaineport, CT 94270-9806', 'Veritatis molestiae saepe rerum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(167, 'supplier', 'Dr. Connor VonRueden Sr.', 'slarkin@yahoo.com', '769.305.8431 x5565', '20012 Kyle Prairie Apt. 736\nSouth Sadie, SC 19153-5465', 'Placeat cupiditate est velit.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(168, 'supplier', 'Flo Kling', 'ted.barton@hotmail.com', '+1 (923) 322-9560', '749 Olin Hill\nWalkerport, AL 92690', 'Molestiae excepturi atque eos vel et.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(169, 'supplier', 'Mrs. Ciara Ankunding V', 'lewis.tremblay@vandervort.net', '279.891.1594 x401', '385 Ernie Cove\nSouth Theodorachester, FL 83863', 'Quisquam et laboriosam non id.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(170, 'supplier', 'Linda Streich III', 'carmel12@hotmail.com', '383-453-8064', '38344 Heidenreich Track Apt. 711\nKyleighfort, MI 97420', 'Ea ut adipisci beatae excepturi.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(171, 'supplier', 'Edwina Streich', 'waelchi.brooke@zemlak.info', '(271) 897-6946', '9582 Hartmann Road Apt. 368\nEast Genovevaberg, LA 08410-9363', 'Hic modi voluptatem id sequi quisquam libero ut.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(172, 'supplier', 'Floyd Gibson', 'edna12@rippin.org', '469-977-0891 x1171', '166 Randi Skyway\nPort Vinnie, ME 80640', 'Error nulla ut dolores vel ea sed.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(173, 'supplier', 'Whitney Deckow', 'npagac@cole.com', '(961) 835-2564 x0573', '8579 Johnpaul Road Apt. 684\nGaylordberg, WV 79845-0097', 'Earum in earum odio aut et nostrum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(174, 'supplier', 'Prof. Vince Rempel II', 'turcotte.lelah@kunze.com', '1-735-416-5460 x712', '831 Dicki Roads Suite 062\nSwiftmouth, VA 89499', 'Et deserunt optio sint id totam.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(175, 'supplier', 'Dr. Kallie Kulas', 'elwyn.flatley@douglas.com', '(882) 788-5656 x65178', '3396 Forrest Center Apt. 194\nBlandaville, KS 76615-7476', 'Id doloribus sint tempore recusandae fuga ut.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(176, 'supplier', 'Abbie Aufderhar', 'keenan.volkman@yahoo.com', '(208) 829-3068 x2918', '479 Winston Underpass Suite 964\nEdwinfort, FL 41905-1891', 'Aut et omnis corrupti amet aspernatur veniam.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(177, 'supplier', 'Alba Mayer', 'beatty.friedrich@marks.net', '417.883.1638 x8346', '492 Baumbach Shores\nNew Fabiolastad, MI 33524', 'Nulla id a enim velit.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(178, 'supplier', 'Jeromy Witting', 'stella25@gmail.com', '606-757-0169 x2896', '6513 Athena Centers\nSandrinehaven, VA 23177-2218', 'Illum numquam ipsa voluptas recusandae ut.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(179, 'supplier', 'Gaylord Bednar PhD', 'warren.crooks@gmail.com', '239-703-0380', '177 Skiles Ways\nWest Kelliefort, IN 67585-0351', 'Alias explicabo eveniet architecto molestiae.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(180, 'supplier', 'Colton Pagac', 'jadon.wilkinson@hotmail.com', '364.789.4096 x6555', '53380 Lebsack Gateway\nEdgarhaven, AR 22116', 'A deleniti possimus et totam alias autem nihil.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(181, 'supplier', 'Golda Zieme', 'sanford.lourdes@quigley.com', '258.687.3794 x95542', '1960 Walker Dale\nSpinkaland, DE 57518', 'Commodi et enim qui.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(182, 'supplier', 'Mr. Wayne Mante Jr.', 'ahmed98@becker.info', '634.853.4075 x56310', '5244 Lakin Rue Apt. 367\nUliceschester, PA 80175', 'Dicta est labore temporibus non amet eos.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(183, 'supplier', 'Danielle Schuster', 'jnolan@quigley.com', '402.298.5181', '72360 Nathanael Ports Apt. 886\nCollierstad, NC 16890-6168', 'Culpa libero provident et.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(184, 'supplier', 'Alford Okuneva', 'lilyan10@bailey.com', '420-774-8815 x1031', '25906 Clement Spring\nIzabellaberg, LA 48061-5716', 'Ab inventore aut nesciunt sit totam vel.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(185, 'supplier', 'Ismael Hand', 'mokon@hotmail.com', '312.837.0759', '380 Sauer Stravenue\nWest Keithtown, KS 69491-0985', 'Nobis sed laborum cupiditate delectus.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(186, 'supplier', 'Roslyn Moore I', 'lbrakus@will.com', '881-849-8766 x64944', '60454 Johns Forks Apt. 244\nLake Isacburgh, NH 07509', 'Est ab aperiam vero culpa illum rerum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(187, 'supplier', 'Katrine Wehner Sr.', 'batz.darren@gmail.com', '617-414-9259', '982 Kling Terrace\nWiegandside, PA 20576', 'Rerum beatae aliquid sunt eos qui aut.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(188, 'supplier', 'Dr. Joel Schulist', 'price.irma@frami.com', '907.792.7372 x29309', '56673 Reanna Summit Apt. 722\nNorth Elmira, NH 54192', 'A corporis quod ut aut dicta.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(189, 'supplier', 'Viva Yost', 'alemke@okon.com', '+12713215185', '75885 Weber Centers Apt. 584\nLake Elvaport, GA 73482-3537', 'Ut perferendis tempore a et non quia.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(190, 'supplier', 'Sunny Ratke', 'edwardo43@gmail.com', '+1-789-788-5767', '911 Cummings Spurs Apt. 990\nEast Edwina, WA 26814', 'Rerum sed facilis voluptas ad et eos eius iste.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(191, 'supplier', 'Prof. Harold Murphy', 'witting.ayla@bogisich.com', '+1 (851) 370-6108', '95395 Berge Fort Apt. 451\nBernitastad, NJ 23113', 'Et commodi eligendi laborum omnis.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(192, 'supplier', 'Flavie Carter', 'gutmann.flavie@gmail.com', '1-603-695-5278 x877', '393 Kathlyn Mill Apt. 150\nStreichland, OK 40470-7453', 'Voluptatem amet quia vel odio.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(193, 'supplier', 'Wilma Hamill', 'celestino.shields@dare.com', '487-860-6142', '1447 Kertzmann Inlet Apt. 090\nPort Kimberly, CA 20582', 'Optio facere sapiente laborum quia.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(194, 'supplier', 'Afton Labadie DDS', 'litzy.reinger@gmail.com', '+1.667.599.1705', '969 Greg Ways Suite 308\nGarnetttown, TX 33486-0036', 'Numquam quo fuga et laborum quis.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(195, 'supplier', 'Alfredo Homenick DDS', 'schamberger.chester@reynolds.biz', '1-287-375-1931', '17224 Renner Port Apt. 840\nNew Joany, CO 74155', 'Nihil qui aut labore rerum cum.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(196, 'supplier', 'Ashtyn Klocko', 'frami.ladarius@abshire.com', '708-391-5865 x01655', '1365 Weber Terrace Suite 247\nKubberg, DE 83397-6308', 'Deleniti corporis eum rerum animi.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(197, 'supplier', 'Prof. Marianna Crona III', 'cordell90@jerde.com', '(462) 991-8391 x6144', '9396 Else Union\nNorth Anita, NV 46257', 'Omnis veniam quas ut quaerat.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(198, 'supplier', 'Prof. Myriam Prosacco PhD', 'wratke@gmail.com', '405-851-6962 x6848', '12119 Kellen Parkway\nNew Jaysonhaven, SC 09282-0486', 'Commodi illum delectus qui eos.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(199, 'supplier', 'Mr. Quentin Williamson V', 'jast.julian@yahoo.com', '+1 (580) 850-8825', '738 Tristian Roads\nSouth Alf, DC 76110-3623', 'Nulla beatae illo est accusantium placeat ut.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(200, 'supplier', 'Lee Kihn III', 'rschumm@yahoo.com', '869.942.1187 x20862', '93085 Coy Estates Apt. 635\nKilbackchester, ME 83296', 'Saepe est ipsam similique aut.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(201, 'customer', 'etst', 'etst@example.com', '07507489652', 'erbil-iraq', 'note', '2020-04-01 16:01:13', '2020-04-29 16:01:13'),
(202, 'customer', 'fdfdfs', 'edsdtst@example.com', '075074896ds52', 'erbil-iraq', 'note', '2020-04-02 16:01:13', '2020-04-29 16:01:13'),
(203, 'customer', 'etserert', 'etst@example.cdsdsom', '075073443489652', 'erbil-iraq', 'note', '2020-04-01 16:01:13', '2020-04-03 16:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `customer_logs`
--

CREATE TABLE `customer_logs` (
  `log` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `occurred_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `color`, `code`, `manufacture`, `classification`, `picture`, `properties`, `note`, `created_at`, `updated_at`) VALUES
(1, 'thiel.org', 'Wheat', '8701', 'Beatty, White and Stark', 'Ut est.', 'default-item.png', 'Non iste consequatur iste sint. Explicabo non non eaque et ab et molestiae. Assumenda asperiores eveniet autem libero alias.', 'Id deleniti culpa dicta est.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(2, 'grimes.com', 'Ivory', '5239', 'Hagenes-Mayert', 'Error non.', 'default-item.png', 'Voluptatem nostrum iusto dolore. Cum perferendis itaque excepturi debitis nisi. Blanditiis in molestiae rerum voluptatibus in.', 'Et consequuntur aut sequi est.', '2020-06-01 16:25:31', '2020-06-01 16:25:31'),
(3, 'stehr.info', 'LightGray', '2095', 'Spinka Group', 'Omnis ut.', 'default-item.png', 'Dolorem magni voluptas sunt dolorem quasi. Occaecati sint fuga et laboriosam. Quos accusamus velit asperiores et quod. Qui repellendus voluptatum nulla quisquam eligendi et sunt.', 'Amet tempore possimus laboriosam.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(4, 'hoeger.com', 'Coral', '2630', 'Mertz-Gaylord', 'Magni.', 'default-item.png', 'Reiciendis ut aut non pariatur debitis omnis. Omnis optio rerum ipsum ad maxime sint veritatis. Voluptas sit quod maxime. Facere aliquid dolores repellat illo dolore non.', 'Velit omnis sit aliquid minus.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(5, 'feeney.com', 'NavajoWhite', '7682', 'Champlin-Roob', 'Ipsa et.', 'default-item.png', 'Ut ut dolores sequi est tenetur unde. Est dolorem possimus voluptatem voluptatibus sapiente qui laborum et. Et quia vero saepe fuga voluptatibus. Id consequatur exercitationem sunt.', 'Et voluptatem nemo possimus ut.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(6, 'tromp.com', 'AliceBlue', '2054', 'Brown-Kris', 'Sint.', 'default-item.png', 'Quis possimus non ipsum amet aut ut eveniet et. Deserunt quis debitis minus ut necessitatibus.', 'Nemo cumque adipisci tempora id.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(7, 'gulgowski.com', 'DarkViolet', '1084', 'Kovacek-Graham', 'Dicta.', 'default-item.png', 'Ratione fugit temporibus ullam laboriosam qui odit. Quaerat corrupti minus voluptas.', 'Itaque deserunt et ut et est.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(8, 'hoppe.com', 'LightGray', '9738', 'Eichmann, Dickinson and Huels', 'Nam ipsam.', 'default-item.png', 'Iste aliquam molestias soluta vel aut facere soluta. Qui sint eum asperiores repudiandae nihil. Quisquam provident qui magnam ab ratione. Numquam voluptas exercitationem dicta ullam vel soluta.', 'Atque aperiam in sed quae.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(9, 'bernier.info', 'YellowGreen', '4739', 'Borer Group', 'Ut.', 'default-item.png', 'Commodi officiis et perferendis voluptatibus et voluptatem. Quia voluptatem aut exercitationem adipisci.', 'Laborum quae quo repellat quasi.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(10, 'weimann.com', 'Indigo', '1491', 'Nicolas-Parisian', 'Sint vel.', 'default-item.png', 'Dicta odio voluptatem quae. Eveniet dignissimos molestias ab qui non facere et unde. Ut esse id eos ducimus inventore et laborum. Dolores doloribus animi qui eum pariatur voluptatem.', 'Modi quod sint et.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(11, 'senger.com', 'Teal', '1283', 'Durgan, Littel and Schuster', 'Velit.', 'default-item.png', 'Dolor et inventore et vel quo dolor qui natus. Autem eos voluptas eius labore sapiente delectus doloremque placeat. Sint accusamus molestiae amet facilis.', 'Sit rerum vel dicta asperiores.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(12, 'bergstrom.com', 'DeepPink', '8217', 'Goyette, Medhurst and Robel', 'Nihil.', 'default-item.png', 'Vero eum eos nesciunt perspiciatis sapiente molestiae. Soluta nam nihil porro. Quam eius id tempore. Expedita enim aspernatur nobis pariatur. Omnis exercitationem qui et ducimus sint mollitia.', 'Doloribus sed dicta et nostrum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(13, 'harvey.com', 'MediumSeaGreen', '6889', 'Friesen, Murazik and Conn', 'Adipisci.', 'default-item.png', 'Quos deleniti omnis ducimus soluta illo voluptate harum accusamus. Porro repudiandae nihil corrupti aspernatur in.', 'Nobis ea et cum dolorem ipsa non.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(14, 'grimes.biz', 'DarkGray', '1839', 'Senger LLC', 'Aperiam.', 'default-item.png', 'Ratione quod quasi rerum quis ullam nostrum labore. Magnam qui dolor nisi deserunt quae. Rerum nisi quasi iure. Est velit minima deleniti rerum eligendi ipsum.', 'Rerum a recusandae eveniet ipsam.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(15, 'spencer.biz', 'FloralWhite', '2124', 'Runte-Franecki', 'Dolor.', 'default-item.png', 'Harum minus laboriosam aut cumque doloribus. Corporis aliquid repellat voluptate pariatur veniam. Autem laboriosam enim quos corporis quam. Et voluptas incidunt ut rem quas consequatur id.', 'Mollitia sed labore corporis ut.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(16, 'friesen.net', 'GoldenRod', '5625', 'Tremblay, Flatley and Murray', 'Voluptas.', 'default-item.png', 'Possimus quibusdam sapiente possimus ducimus. Et veniam laudantium eos totam esse facere harum. Aut amet similique qui quaerat. Facere quo accusamus sint commodi voluptas omnis deleniti.', 'Culpa sint accusamus aperiam.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(17, 'hegmann.biz', 'MediumVioletRed', '9006', 'Roob-Hettinger', 'Eos qui.', 'default-item.png', 'Dolorum quidem veritatis quam harum. Cumque quo aliquam a laboriosam qui nesciunt.', 'Repudiandae ad quis accusamus.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(18, 'grady.org', 'MediumBlue', '9420', 'Okuneva Group', 'Et magni.', 'default-item.png', 'Voluptas unde accusantium facere non. Molestiae debitis eaque doloremque aut et. Nam quasi atque doloribus corporis temporibus odit omnis in. Sed doloremque quo labore rem.', 'Ut odio est autem dolorem in.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(19, 'reynolds.org', 'DeepPink', '1087', 'Denesik, Schowalter and Howell', 'Eum omnis.', 'default-item.png', 'Omnis dolores eligendi mollitia voluptatem labore. Dolorem tempora assumenda quis sed qui qui. Molestias sit ut quia maiores et sunt porro repellendus.', 'Necessitatibus non neque est et.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(20, 'bruen.com', 'FireBrick', '4498', 'Feil-Donnelly', 'In ut.', 'default-item.png', 'Facere iusto nobis blanditiis quidem labore et. Corrupti tempore amet rerum repudiandae sit eveniet reiciendis. Officiis quia fugit aut et. Delectus quidem rerum ab quaerat voluptatem dignissimos a.', 'Aut non incidunt quae.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(21, 'rutherford.com', 'ForestGreen', '4357', 'Schneider-Morar', 'Dicta.', 'default-item.png', 'Voluptatum eum fugit velit et quae cum voluptas. Delectus minus molestiae a recusandae. Fugit porro quo animi et iure quia perspiciatis.', 'Dolor et vel ut ea.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(22, 'johnston.info', 'DimGray', '5458', 'West, Frami and Goldner', 'Tenetur.', 'default-item.png', 'Sequi rerum quo aspernatur sunt dolor possimus aut qui. Sed sed animi aut voluptatem consequatur unde non sit. Dolores tempora quis dicta dicta. Expedita mollitia quas neque optio.', 'Quod modi ad temporibus autem aut.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(23, 'brown.org', 'AntiqueWhite', '4200', 'Brakus-Armstrong', 'Voluptate.', 'default-item.png', 'Dolores est quo quisquam vitae a sapiente amet. Asperiores et voluptatibus ratione.', 'Officiis fugit ea laborum earum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(24, 'tremblay.org', 'GoldenRod', '2286', 'Walter Inc', 'Ea fuga.', 'default-item.png', 'Praesentium tempora molestias fugiat est est quas. Voluptatibus amet illo odit minus. Delectus esse commodi ut non labore et ullam.', 'Molestiae tempore minus explicabo.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(25, 'klocko.net', 'MediumBlue', '5001', 'Green, Connelly and Kuvalis', 'Qui magni.', 'default-item.png', 'Voluptatem sed eaque deserunt recusandae aut odit sapiente. Dolores dicta voluptatum porro ad. Ducimus aliquid voluptates expedita qui. Delectus dolore consequatur mollitia ut in minus eos.', 'Quas eos amet et.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(26, 'adams.com', 'SeaShell', '3204', 'Bergnaum-Murazik', 'Alias.', 'default-item.png', 'Cupiditate eos beatae enim et. Dolores esse doloremque quisquam eaque aut ea. Libero autem ad rem vel illo facere illo. Consectetur aut sed et doloribus accusamus voluptatem.', 'Accusamus saepe aut sed eos.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(27, 'walsh.info', 'DarkSeaGreen', '1203', 'Treutel LLC', 'Doloribus.', 'default-item.png', 'Voluptatem molestiae dolor architecto temporibus fugit dolorum nulla atque. Aspernatur omnis et ad. Amet illum id sunt. Et in culpa officia cumque totam.', 'Molestiae qui quibusdam vel odit.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(28, 'ebert.net', 'Navy', '2495', 'Bednar, Littel and McLaughlin', 'Excepturi.', 'default-item.png', 'Accusamus eos reiciendis quia at. Ut fugiat voluptates ut incidunt.', 'Et suscipit quo et.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(29, 'corwin.info', 'White', '7981', 'Larkin-Wyman', 'Quia.', 'default-item.png', 'Accusamus odio ducimus dicta qui. Sed est voluptate eum quas quam doloremque voluptatem. Illo officiis nostrum nulla magnam. Nobis provident rerum consequatur voluptas sunt omnis ex corporis.', 'Eum provident velit dolorum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(30, 'legros.com', 'PowderBlue', '6170', 'Rosenbaum, Ondricka and Heidenreich', 'Nihil.', 'default-item.png', 'Qui et autem velit necessitatibus dolores. Maxime aliquid aliquam quibusdam labore autem pariatur quasi. Vero odit recusandae impedit eos ut. Minima ullam ut molestiae est quia tempore.', 'Quis a qui illum odio odio.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(31, 'jacobson.biz', 'LightCoral', '2239', 'Bayer Ltd', 'Rerum et.', 'default-item.png', 'Placeat vel libero commodi neque dignissimos. Culpa alias facilis harum.', 'Sed hic voluptatem harum possimus.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(32, 'thompson.info', 'SkyBlue', '0271', 'Rutherford, McCullough and Schroeder', 'Totam quo.', 'default-item.png', 'Et voluptatem dolores voluptatibus itaque tenetur sed. Nemo aut veniam temporibus nam possimus praesentium. Quo enim sit minima.', 'Error ex in ducimus.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(33, 'carter.com', 'LightPink', '8408', 'Kertzmann-Hayes', 'Illum.', 'default-item.png', 'Eveniet molestiae ab molestiae eveniet maiores sit. Nam nihil in nihil est. Reprehenderit est rem quo velit. Dolore non in velit ad rem.', 'Suscipit in sit dolor veniam.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(34, 'oconner.net', 'Aquamarine', '2906', 'Thompson, Howell and Sawayn', 'Eius.', 'default-item.png', 'Id perferendis nemo qui facere consequatur ea est. Provident corporis nobis ipsum et ullam doloremque est. Qui at quaerat non officiis. Et iusto ipsum sed sit quo veniam.', 'Ipsa amet cum corporis dolorem.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(35, 'jones.com', 'AliceBlue', '8030', 'McClure-Schultz', 'Quia.', 'default-item.png', 'Delectus qui saepe qui. Et aliquid aut facere in ipsum eos. Dolor est impedit eius magnam quaerat ut. Accusantium sunt a beatae qui unde beatae.', 'Ipsa perspiciatis non et suscipit.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(36, 'bailey.com', 'Black', '1182', 'Mills-Schaden', 'Dolore.', 'default-item.png', 'Vero nesciunt iure ut nostrum beatae pariatur a. Libero aut saepe nisi natus autem.', 'Saepe at deserunt ut quaerat.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(37, 'smitham.biz', 'Sienna', '1251', 'Flatley, Kassulke and Kertzmann', 'Dicta.', 'default-item.png', 'Repellat illum velit aspernatur reprehenderit illum. Unde molestiae laborum consequatur est distinctio. Consequatur perferendis at eaque modi. Nihil aut nobis animi vel dolorem assumenda.', 'Ab dolore voluptate itaque non.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(38, 'gutkowski.info', 'Aqua', '3461', 'Boyle Inc', 'Odio.', 'default-item.png', 'Ex quasi voluptas numquam accusantium. Et voluptate animi eveniet deserunt est optio. Modi asperiores et sed officia itaque ipsum nisi. Mollitia omnis sit vitae enim cupiditate.', 'Laboriosam ex sed et ut.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(39, 'berge.com', 'Orange', '6034', 'Reilly, Schultz and Wisoky', 'Quos.', 'default-item.png', 'Eum voluptatibus sunt sit temporibus iste. Ratione cupiditate dignissimos saepe. Placeat sit velit ipsa nihil. In natus nisi magni officia in magnam fugit modi.', 'Fugiat alias quia et consequuntur.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(40, 'balistreri.org', 'LightGray', '8966', 'Marvin, Wehner and Johnson', 'Deserunt.', 'default-item.png', 'Aut iste voluptas voluptatem aut fuga. Officia ut nisi officia ut natus. Voluptate laborum et voluptate voluptas nesciunt. Soluta deserunt itaque ullam quaerat iusto at.', 'Et et neque consequatur magni.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(41, 'hackett.net', 'PaleGoldenRod', '4963', 'Murray Inc', 'Corrupti.', 'default-item.png', 'Repellat nemo consequatur excepturi culpa sed. Velit atque optio sequi labore libero voluptas. Iure amet sit voluptatem dolor exercitationem. Consequatur rerum ducimus amet culpa delectus.', 'Est doloribus rerum expedita.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(42, 'grady.info', 'Violet', '2163', 'Effertz-Glover', 'Ullam.', 'default-item.png', 'Odit saepe quae veritatis quos. Laudantium eum nulla nulla esse ratione. Voluptatem sed sed officia qui. Veritatis aut vel voluptate molestias deserunt. Porro voluptatibus non ut porro esse nostrum.', 'Qui ratione ea aut aspernatur.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(43, 'wiegand.com', 'Wheat', '4499', 'Wisoky-Volkman', 'Et.', 'default-item.png', 'Odit ut quis repudiandae suscipit et et assumenda. Sint ducimus pariatur inventore. Aut ea et ut impedit.', 'Atque qui tenetur ut sed.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(44, 'thompson.net', 'Thistle', '3030', 'Parker, Conroy and Watsica', 'Soluta.', 'default-item.png', 'Aut totam beatae ut omnis non necessitatibus. Modi eum suscipit modi sit. Iste laudantium architecto est natus necessitatibus facilis. Et distinctio neque corporis atque omnis alias dignissimos.', 'Modi ut quidem est iure.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(45, 'orn.com', 'LightGray', '3665', 'Blanda Group', 'Ab.', 'default-item.png', 'Dicta aut porro exercitationem fuga architecto molestias autem labore. Vel optio culpa sunt aut quisquam ut nihil. Distinctio beatae a non doloribus quasi.', 'Enim illum quidem ea.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(46, 'haag.org', 'Green', '5938', 'Anderson LLC', 'Aperiam.', 'default-item.png', 'Consectetur voluptatem repudiandae et vel earum non nesciunt. Dolore accusantium ut ab nam dolore. Asperiores quia est facilis nostrum.', 'Amet non similique eum est.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(47, 'schowalter.biz', 'PaleGoldenRod', '5597', 'Beer Group', 'Et ut aut.', 'default-item.png', 'Aut earum porro cupiditate ut. Ipsa accusantium accusamus quia. Temporibus ab recusandae labore numquam reprehenderit ducimus iste. Pariatur tenetur natus et quia quisquam modi cumque qui.', 'Voluptatem earum ut eos.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(48, 'grady.com', 'DarkOrchid', '5659', 'Pouros-Predovic', 'Pariatur.', 'default-item.png', 'Debitis ullam beatae adipisci incidunt vel eos quod explicabo. Magnam tenetur qui pariatur natus voluptatem rerum cupiditate. Dolores sed rerum aliquid sapiente et.', 'Ducimus labore in ut delectus.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(49, 'schultz.com', 'LightGoldenRodYellow', '4537', 'Okuneva, Stamm and Okuneva', 'Quo quas.', 'default-item.png', 'Velit rerum ea sapiente enim deserunt. Deleniti voluptatem in impedit nulla et. Et mollitia eius vero et debitis quaerat sint officiis.', 'Veniam natus sit earum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(50, 'dicki.com', 'Gray', '4306', 'Haley-Windler', 'Sint nam.', 'default-item.png', 'Possimus veniam sunt quos. Atque omnis qui perspiciatis quae accusantium aliquid animi cum. Deserunt occaecati hic eaque. Aut corporis quo aut.', 'Sed est et cupiditate voluptatum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(51, 'lockman.com', 'Aquamarine', '7040', 'Volkman Inc', 'Nostrum.', 'default-item.png', 'Voluptas nisi ipsum adipisci sapiente est eius et in. Quis saepe ea inventore et voluptatem. Veritatis sunt sint sint temporibus ducimus architecto debitis.', 'Quas rem est nostrum pariatur.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(52, 'reynolds.info', 'CadetBlue', '3275', 'Okuneva-Schmeler', 'Eius.', 'default-item.png', 'Quod nobis perferendis ex expedita consequatur eaque et repudiandae. Est rerum cumque quidem architecto iusto quia velit. Tempora et quas reprehenderit nostrum excepturi reprehenderit qui.', 'Veritatis dolorem ea et velit.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(53, 'klocko.net', 'AliceBlue', '2766', 'Jast-Watsica', 'Non saepe.', 'default-item.png', 'Et ex aut qui aut et. Sunt natus ut voluptatibus quia placeat et. Sapiente aut rerum est culpa.', 'Minima ipsum rerum est ea ullam.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(54, 'lowe.com', 'DarkMagenta', '6340', 'Schoen-Von', 'Autem et.', 'default-item.png', 'Et autem dignissimos id nihil quae qui dolorem. Repudiandae facere laboriosam officiis quod incidunt ut. Suscipit fugit et ratione magni et.', 'Quibusdam ratione quia rerum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(55, 'torp.com', 'Lime', '8810', 'Hahn PLC', 'Natus aut.', 'default-item.png', 'Animi ipsa et magni consequatur. Tempore dolores veritatis dolorum ut. Culpa id aut voluptate. Debitis laudantium molestias odio similique debitis.', 'Recusandae molestiae quo et.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(56, 'kuvalis.com', 'DimGray', '8270', 'Halvorson, Schmitt and Botsford', 'Magni.', 'default-item.png', 'Maxime atque consequatur voluptas temporibus labore. Ducimus et ipsum dignissimos ea dolore expedita maiores. Impedit esse magni temporibus. Et dolores quia odio omnis necessitatibus.', 'Omnis beatae incidunt dicta.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(57, 'jenkins.com', 'PaleGoldenRod', '1298', 'Klein, Ullrich and Hoppe', 'Doloribus.', 'default-item.png', 'Modi eos debitis quia recusandae voluptatem. Sunt exercitationem non rem voluptas delectus ad quas. Officia consectetur blanditiis repudiandae officia facilis quisquam similique nihil.', 'Quisquam illo sint est molestiae.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(58, 'steuber.com', 'Chartreuse', '0724', 'Gottlieb and Sons', 'Harum.', 'default-item.png', 'Voluptatibus aut atque debitis hic. Tenetur deserunt expedita dolor. Officia atque aliquid aperiam nobis qui et labore.', 'Earum quia necessitatibus nihil.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(59, 'mosciski.com', 'HotPink', '5502', 'Rowe-Brown', 'Ut dicta.', 'default-item.png', 'Temporibus quasi doloremque velit enim molestiae alias et quasi. Alias inventore iste accusantium est earum. Beatae magni et cum natus perferendis consequatur autem.', 'Quo minima ut dicta ex quia ut.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(60, 'welch.com', 'LightGray', '9311', 'Oberbrunner Inc', 'Libero et.', 'default-item.png', 'Necessitatibus dignissimos tenetur dolore ipsam natus nulla. Quos aliquam illum harum quisquam ex mollitia. Doloremque temporibus sed ut ab modi debitis. Necessitatibus qui quaerat quaerat eveniet.', 'Itaque animi voluptatibus in.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(61, 'daugherty.com', 'Aqua', '5569', 'Zemlak, Shanahan and Davis', 'Est sit.', 'default-item.png', 'Quasi quidem sunt fugit aut. Ducimus soluta necessitatibus beatae architecto dolorem. Officia nemo repellendus voluptatem aut.', 'Labore ad officia aperiam quo.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(62, 'quitzon.info', 'MidnightBlue', '8962', 'Fay Group', 'Maiores.', 'default-item.png', 'Dolorum molestiae nihil itaque est voluptatibus. Laudantium porro doloribus occaecati sit aperiam occaecati. Ut non in mollitia aperiam et fugiat.', 'Modi odit minima odit deleniti.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(63, 'fahey.com', 'Chartreuse', '7171', 'Witting-Welch', 'Adipisci.', 'default-item.png', 'Laborum voluptatem et necessitatibus qui accusamus culpa. Aperiam veritatis maxime eum delectus. Molestias molestiae eligendi modi. Et qui est quia tempora. Veniam minima et hic eius.', 'Sint ex voluptatem molestiae quia.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(64, 'koepp.biz', 'OrangeRed', '5557', 'Jacobs Inc', 'Neque.', 'default-item.png', 'Odio quod aut odit amet expedita. Hic omnis consequatur iure sapiente eos. Aut laudantium autem neque maxime voluptate. Ea nihil excepturi ea sit.', 'Quis id in harum placeat qui.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(65, 'ferry.info', 'Sienna', '4500', 'Schuppe, Wolff and Kling', 'Quibusdam.', 'default-item.png', 'Consequatur reiciendis dolorum magnam suscipit libero magnam totam consequatur. Cupiditate nam velit maiores doloremque qui. Aut modi aut sed sint.', 'Vero sint quisquam cupiditate.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(66, 'jacobs.com', 'DarkTurquoise', '6233', 'Littel, Stiedemann and Runolfsson', 'Minima.', 'default-item.png', 'Aperiam et cumque cumque et ducimus dicta. Dolor neque beatae ipsum enim facere molestiae. Optio esse vel ut neque.', 'Unde occaecati maxime tempore.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(67, 'ferry.info', 'Linen', '3508', 'Beahan, Cronin and Effertz', 'Et ut.', 'default-item.png', 'Ea saepe repellendus rerum voluptas illum odit fugit. Quae quia eum velit rerum voluptatem labore at. Ab possimus reiciendis sapiente perferendis repellat.', 'Et eius ut ex soluta.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(68, 'emard.net', 'LightYellow', '8353', 'Bruen, Kling and Moen', 'Et.', 'default-item.png', 'Illo nesciunt qui perspiciatis in tempore. At repudiandae est ad est. Voluptates deserunt molestiae dolore accusamus.', 'Recusandae a ipsam ex et.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(69, 'fadel.info', 'DarkSlateGray', '2338', 'Reinger, Zboncak and Kautzer', 'Quo.', 'default-item.png', 'Ut ad et ex fugit ab officiis ullam. Numquam libero est quos ipsa sunt perferendis id.', 'Sit quo esse qui accusamus omnis.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(70, 'weber.net', 'DeepSkyBlue', '2017', 'Osinski-Brekke', 'Eos odio.', 'default-item.png', 'Exercitationem et doloribus optio non. Incidunt nobis et deserunt quia quo ipsam qui. Delectus assumenda ratione veritatis ut. Ipsum commodi debitis ipsum quod vitae omnis rerum.', 'Qui tempore qui veniam molestiae.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(71, 'herzog.biz', 'Orange', '2127', 'Blanda and Sons', 'Hic ut.', 'default-item.png', 'Nesciunt dolores dolor est id et quae ut. Eius ratione id occaecati ipsa praesentium ut nesciunt. Labore aut inventore eum laborum.', 'Aut officia magni enim corrupti.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(72, 'pacocha.com', 'SandyBrown', '6653', 'Beahan LLC', 'Commodi.', 'default-item.png', 'Dignissimos optio voluptates et voluptas. Numquam eius qui est error ut et. Non aut eum ducimus sed nemo voluptas unde.', 'Et quasi eveniet quis cumque unde.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(73, 'hermiston.info', 'DarkGray', '4903', 'Cruickshank-Corkery', 'Ut quasi.', 'default-item.png', 'Repudiandae est quibusdam at ipsa blanditiis. Et explicabo laudantium natus ipsa dolor odit. Quos ad atque laboriosam et veritatis. Quia eveniet similique consequatur maiores sequi.', 'Minima ea ut harum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(74, 'mraz.biz', 'CadetBlue', '2680', 'Balistreri LLC', 'Quo nisi.', 'default-item.png', 'Eveniet et perferendis ea eligendi quis et possimus. Illo voluptatem similique provident incidunt assumenda. Similique voluptatem maxime officiis nobis cum hic.', 'Omnis dolore quasi qui cum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(75, 'runolfsdottir.com', 'MediumTurquoise', '7784', 'Emard, Sawayn and Nienow', 'Aut.', 'default-item.png', 'Beatae voluptatum corrupti autem cupiditate voluptatibus. Ut eaque numquam aliquid.', 'Eaque rerum quis ut ducimus sed.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(76, 'oberbrunner.com', 'Violet', '1438', 'Cremin-Hegmann', 'Laborum.', 'default-item.png', 'Id architecto qui nihil quia qui modi eos. Eos nemo adipisci cum omnis quis ut. Illum sed architecto ipsa.', 'Aut aut in quis et autem.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(77, 'moore.com', 'Blue', '6201', 'Dickens-Crona', 'Quia.', 'default-item.png', 'Enim minus eum repudiandae et debitis ullam totam tenetur. Cupiditate aut sit dolorum tempora aut eum. Qui assumenda architecto adipisci vero. Unde consequatur in nisi ea fugit quo aut.', 'Eaque illo veniam iste non.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(78, 'ratke.org', 'DodgerBlue', '5041', 'Pagac-West', 'Iure et.', 'default-item.png', 'Animi qui amet tempore esse. Doloribus est officiis nam unde aut earum. Ut sunt atque et rem est ex. Harum corrupti qui molestiae dolor est.', 'Esse ipsam quo ut illum accusamus.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(79, 'blanda.com', 'SteelBlue', '9131', 'Haley, Gulgowski and Flatley', 'Quis.', 'default-item.png', 'Quidem eos perferendis eum porro alias similique magni sed. Et rerum facere excepturi pariatur nobis tempora. Consectetur est pariatur nihil vel.', 'Cumque rerum maxime quia sed enim.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(80, 'damore.info', 'DarkBlue', '7996', 'Kulas PLC', 'Nam.', 'default-item.png', 'Provident optio mollitia adipisci vero inventore autem dolores. Maiores veritatis sunt maxime dolor eum ex et. Non ea voluptatem quisquam magni fugiat.', 'Ullam ut beatae eum quo et quos.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(81, 'oconner.biz', 'Moccasin', '0639', 'Runte-Marvin', 'Illo esse.', 'default-item.png', 'Aspernatur veritatis nemo ut veritatis officia. Expedita ex dolores magnam voluptas ut velit est. Porro est consequatur ut impedit.', 'Mollitia non id aut debitis.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(82, 'west.biz', 'Salmon', '0203', 'White, Crist and Hermann', 'Itaque.', 'default-item.png', 'Dicta quos dolores eos aut dolor. Molestiae debitis autem est dolor. Ipsa quidem nam nihil et aut rerum aut. Vitae ipsa et culpa aut. Vel et autem et rem et impedit qui. In qui porro est.', 'Autem quo in sed velit.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(83, 'rolfson.info', 'MistyRose', '9138', 'Konopelski PLC', 'Quis.', 'default-item.png', 'Ullam doloribus qui consequatur amet. Rerum quaerat autem voluptatem ut deserunt. Minus debitis necessitatibus non quia consequatur. Et eum quaerat enim aut quaerat labore.', 'Labore at nostrum sit quis aut.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(84, 'wilkinson.com', 'DeepPink', '7809', 'Altenwerth-Hayes', 'Sapiente.', 'default-item.png', 'Deserunt consequatur et veritatis ut consequatur. A dolorem ut adipisci qui quos eos. Perferendis est labore dolore.', 'Sed suscipit est rerum ratione et.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(85, 'pfannerstill.net', 'LightPink', '5584', 'Jenkins-Jerde', 'Ea sint.', 'default-item.png', 'Porro libero impedit sunt aut ullam numquam. Aperiam expedita ut expedita nulla omnis. Eius dolorem sint aperiam cupiditate porro eum.', 'Voluptas debitis iste ea et.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(86, 'stiedemann.com', 'MediumSeaGreen', '2316', 'Bradtke, Cremin and Rohan', 'Eius.', 'default-item.png', 'In neque fuga saepe dolorem perspiciatis aut. Qui quo eos magnam. Eos quos iusto eveniet sequi molestias nesciunt. In fugit praesentium soluta illum voluptates qui nihil ea.', 'Non cumque dolores hic quo.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(87, 'hand.com', 'Red', '5618', 'Collier, Moen and VonRueden', 'Rerum.', 'default-item.png', 'Autem aspernatur excepturi quia nostrum quisquam. Non qui autem sed accusamus. Explicabo sint aut aut consequuntur voluptatem.', 'Tempora magni corrupti ut ipsum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(88, 'schuster.org', 'Yellow', '9195', 'Jacobi, Aufderhar and Schimmel', 'Dolore.', 'default-item.png', 'Illum repellendus beatae commodi quis praesentium voluptas. Ut autem a quae sit. Recusandae nihil laudantium vel eius incidunt. Quo sequi tenetur quidem illo aliquid.', 'Quo aut non aspernatur.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(89, 'howell.biz', 'Indigo', '3661', 'Reilly-Little', 'Molestiae.', 'default-item.png', 'Sed saepe sapiente molestiae quo. Voluptate et et ut officia rerum nihil. Eligendi possimus fuga exercitationem omnis.', 'Fuga est eveniet ea autem.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(90, 'erdman.com', 'Aqua', '8216', 'Hagenes, Monahan and Connelly', 'Enim.', 'default-item.png', 'Qui ea voluptatem beatae voluptatibus mollitia praesentium voluptas. Inventore sapiente maiores aut doloribus. Facilis accusamus minima dolores quia quo fugit. Rerum quod quia quis sunt enim.', 'Blanditiis alias fugit quidem.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(91, 'wisozk.info', 'LightBlue', '6173', 'Farrell-Cassin', 'Et.', 'default-item.png', 'Harum non enim placeat quod fuga quia aperiam doloremque. Ex totam adipisci quia totam eos delectus. Aperiam voluptatem fugit molestiae voluptate.', 'Saepe corporis eaque et.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(92, 'treutel.biz', 'Purple', '3151', 'Friesen-Hahn', 'Incidunt.', 'default-item.png', 'Accusamus dolorem sint repellendus perferendis dicta id. Est vitae voluptatibus et voluptatem. Aut voluptas provident repudiandae est nam accusamus enim.', 'Enim sapiente temporibus ipsum.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(93, 'klein.net', 'DarkTurquoise', '8264', 'Hodkiewicz-Hodkiewicz', 'Ut enim.', 'default-item.png', 'Facere voluptatem et qui praesentium enim ipsa. Similique ut veniam possimus perspiciatis qui deleniti facere aut. Iusto et veniam repellendus cupiditate et.', 'At culpa consequatur quidem nobis.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(94, 'krajcik.com', 'LimeGreen', '7984', 'Waelchi, Hahn and Bogan', 'Assumenda.', 'default-item.png', 'Quidem quidem eligendi possimus rem aperiam porro. Earum sit voluptas sequi rerum. Aut repudiandae quia ea harum veritatis. Animi aut et delectus ad eaque dolor eos.', 'Labore modi temporibus in optio.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(95, 'russel.biz', 'Plum', '8224', 'Hudson, Torp and Haag', 'Molestiae.', 'default-item.png', 'Aut qui aut dolore voluptatem. Voluptatem voluptatem incidunt voluptatibus et aut voluptas. Sunt ut perspiciatis esse aut magni cumque. Eius sit soluta amet a.', 'Vel quas id ut distinctio.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(96, 'cartwright.org', 'Brown', '5682', 'Dietrich PLC', 'Maiores.', 'default-item.png', 'Voluptatibus dolore recusandae iusto dolores voluptas. Exercitationem blanditiis ducimus quis. Ipsam eos magnam atque sunt.', 'Ut enim enim sint nam.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(97, 'kuphal.com', 'PaleGreen', '3517', 'Hansen, Kuhic and Hansen', 'Labore ea.', 'default-item.png', 'Facere voluptas explicabo quia odit. Earum nisi necessitatibus accusamus reiciendis dignissimos rerum in.', 'Ut itaque facere quae vel.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(98, 'denesik.com', 'GhostWhite', '9503', 'Howe and Sons', 'Eum.', 'default-item.png', 'Quod fugiat quibusdam facilis. Tempore nihil vel eius repellat et. Sit autem facilis rerum et et et. Aut iusto in a dolor. Ut voluptas numquam saepe sed.', 'Laudantium placeat deleniti qui a.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(99, 'feest.com', 'MediumTurquoise', '2057', 'Fritsch PLC', 'Neque sed.', 'default-item.png', 'Quia quisquam quod et ad et. Vel sit explicabo modi assumenda. Expedita itaque nihil doloribus.', 'Totam repellat quia eligendi.', '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(100, 'raynor.com', 'DarkCyan', '8154', 'Bins, Kuhlman and Dach', 'Unde.', 'default-item.png', 'Velit saepe impedit vero. Est consequatur qui ipsa sunt aut totam assumenda iusto. Nam enim dignissimos iure quidem. Sunt rerum fugit est ducimus eum aut est. Pariatur ullam quam rerum.', 'Perspiciatis est eos corporis aut.', '2020-06-01 16:25:32', '2020-06-01 16:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `items_receive`
--

CREATE TABLE `items_receive` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` double UNSIGNED NOT NULL,
  `production_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `price` double UNSIGNED NOT NULL,
  `delivery_cost` double UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items_receive`
--

INSERT INTO `items_receive` (`id`, `quantity`, `production_date`, `expiration_date`, `price`, `delivery_cost`, `note`, `warranty`, `creator_id`, `created_at`, `updated_at`) VALUES
(1, 9, '1986-03-22', '2011-05-11', 81, 1, 'Porro totam earum error quia.', '61', 3, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(2, 64, '1991-07-08', '1977-03-24', 82, 6, 'Minima enim ut totam qui atque.', '18', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(3, 57, '2014-07-21', '1993-01-22', 14, 4, 'Non exercitationem at animi et.', '28', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(4, 93, '2009-06-11', '1996-02-15', 21, 1, 'Est corrupti aut facere sunt.', '48', 9, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(5, 35, '1971-03-08', '2020-05-12', 69, 0, 'Debitis id perspiciatis culpa ut.', '89', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(6, 30, '1990-09-15', '1980-12-11', 40, 7, 'Et nisi sint sapiente iusto.', '10', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(7, 75, '1992-05-21', '2001-11-21', 87, 4, 'Aut dolorem esse eos officiis.', '44', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(8, 88, '1997-01-18', '1975-09-12', 87, 6, 'Sint illum qui quisquam dicta non.', '04', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(9, 55, '1985-04-30', '1971-04-26', 20, 2, 'Aut iusto ipsam similique eos qui.', '82', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(10, 90, '1984-09-30', '1973-04-02', 56, 0, 'Libero optio illo saepe.', '04', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(11, 45, '1980-01-14', '2010-05-22', 37, 4, 'Unde rerum cum voluptas eius.', '28', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(12, 35, '2001-05-08', '2015-06-26', 1, 7, 'Corrupti quo et sapiente dolor.', '35', 7, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(13, 63, '2015-01-19', '1996-10-13', 22, 3, 'Ab odio et adipisci nulla libero.', '35', 10, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(14, 57, '1989-01-27', '2005-11-20', 54, 5, 'Quaerat vel natus facilis omnis.', '48', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(15, 51, '2002-01-31', '1994-07-24', 28, 7, 'Qui rerum praesentium aut soluta.', '82', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(16, 72, '1994-09-03', '2010-04-08', 73, 0, 'Illo et quidem et laborum aut.', '41', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(17, 44, '1998-11-11', '2014-06-01', 97, 0, 'Aut laborum ut et.', '23', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(18, 18, '1987-01-24', '2013-02-03', 2, 1, 'Amet quia non corporis ut.', '15', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(19, 1, '1976-01-03', '1971-10-30', 77, 8, 'Excepturi odio ut ut.', '87', 2, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(20, 52, '1991-06-16', '1998-01-28', 81, 0, 'Non accusantium sit est rerum eos.', '86', 9, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(21, 32, '1992-08-17', '1986-09-01', 22, 3, 'Enim est dolorum ea eum dolores.', '81', 8, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(22, 48, '1993-10-26', '1982-05-06', 64, 8, 'Ex ratione est ullam est.', '70', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(23, 7, '2000-08-17', '2004-04-26', 77, 5, 'Saepe aut ea recusandae sit.', '18', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(24, 29, '2005-12-01', '2020-04-03', 64, 9, 'Enim sed quibusdam delectus ut.', '38', 9, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(25, 98, '1987-04-27', '2017-03-24', 17, 9, 'Animi dicta aut ut cum quo.', '44', 10, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(26, 10, '1976-05-27', '1979-02-18', 67, 7, 'Quos quia delectus ut a.', '42', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(27, 97, '1973-09-08', '1981-02-27', 81, 8, 'Est ex commodi libero ut debitis.', '33', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(28, 99, '2017-08-28', '1992-11-17', 39, 8, 'Rem repudiandae doloremque ab.', '37', 3, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(29, 13, '1999-08-15', '1993-04-15', 76, 6, 'Voluptatem deserunt et qui ipsa.', '48', 2, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(30, 46, '2016-08-09', '1992-03-13', 24, 4, 'Animi aspernatur illo nihil aut.', '40', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(31, 49, '1988-07-27', '1985-11-24', 0, 6, 'Qui modi aperiam qui accusantium.', '17', 3, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(32, 37, '1979-04-07', '2007-05-13', 91, 7, 'Nam est voluptates illo veniam.', '16', 9, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(33, 9, '1978-10-05', '2000-04-20', 2, 5, 'Eaque ea ad provident.', '95', 10, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(34, 75, '1989-11-17', '1974-01-12', 40, 4, 'Est amet placeat ad et ut vitae.', '53', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(35, 75, '2008-11-13', '1987-12-29', 95, 5, 'Vero laudantium dolor delectus.', '29', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(36, 90, '1981-09-21', '1988-07-07', 71, 9, 'Harum ipsa a a corrupti.', '00', 8, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(37, 35, '1980-09-23', '2009-02-17', 98, 6, 'Aut ut porro quasi nostrum.', '26', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(38, 37, '1992-05-17', '2008-09-13', 33, 4, 'Ea odio eius in quis.', '50', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(39, 3, '1985-09-10', '2019-05-22', 12, 7, 'Earum voluptates porro neque sit.', '86', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(40, 80, '1988-04-12', '1986-11-19', 44, 9, 'Praesentium nemo molestiae et.', '64', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(41, 9, '2000-02-13', '1988-06-14', 89, 2, 'Recusandae ipsum quis est tempore.', '87', 10, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(42, 64, '2018-12-15', '1979-08-22', 90, 4, 'Et error est sit accusamus.', '03', 9, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(43, 86, '2010-12-16', '2004-06-25', 49, 1, 'Culpa sint sit iure officiis.', '51', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(44, 40, '1975-03-06', '1973-09-08', 7, 1, 'Quo voluptatem reiciendis quia.', '04', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(45, 27, '1986-06-07', '1976-04-11', 7, 0, 'Quod nobis iure omnis quo.', '51', 7, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(46, 36, '1983-07-28', '2019-11-14', 46, 9, 'Ut quam et sint officia.', '02', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(47, 9, '2006-04-06', '1989-03-31', 50, 3, 'Et qui labore quia ipsum.', '83', 2, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(48, 43, '1988-12-03', '2018-12-17', 4, 3, 'Sed fugiat non voluptatum ipsa.', '77', 2, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(49, 6, '2004-07-11', '2019-01-25', 34, 5, 'Facilis ea quas asperiores quae.', '88', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(50, 91, '2003-04-27', '1993-12-06', 24, 2, 'Assumenda rerum quo ullam culpa.', '36', 10, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(51, 87, '1993-06-29', '1979-08-05', 66, 5, 'Ut ut quis nam qui.', '03', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(52, 73, '2014-07-22', '1974-08-27', 91, 4, 'Est quia quo est eum odit rerum.', '02', 2, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(53, 45, '1997-01-26', '1989-07-01', 24, 5, 'Culpa sit et et saepe.', '99', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(54, 34, '1998-02-05', '1999-07-06', 4, 7, 'Et explicabo vel voluptatem alias.', '07', 9, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(55, 67, '1973-05-06', '1979-05-13', 41, 1, 'Ea rerum quis ab totam at.', '24', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(56, 43, '2012-03-22', '2018-02-07', 98, 6, 'Sunt qui blanditiis et omnis.', '38', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(57, 43, '1997-03-23', '2012-11-21', 18, 7, 'Ratione sed deleniti ipsum et.', '62', 3, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(58, 31, '1998-05-25', '1997-07-05', 9, 7, 'Eius doloremque sed est.', '16', 10, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(59, 54, '1979-05-14', '1987-05-22', 55, 7, 'Est velit a nesciunt perferendis.', '90', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(60, 55, '1989-04-30', '2007-09-02', 97, 7, 'Dolor neque facere nisi id.', '87', 9, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(61, 60, '1999-04-06', '1985-02-02', 63, 4, 'Tempore aut omnis sed in.', '94', 3, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(62, 48, '2000-08-05', '1988-01-31', 10, 7, 'Dolorum at ratione minus ipsum.', '23', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(63, 27, '1993-02-19', '1985-04-13', 40, 6, 'Omnis quo dolore alias omnis.', '59', 2, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(64, 28, '1999-11-30', '1970-09-18', 90, 5, 'Aut eum dolor ut vero.', '86', 3, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(65, 78, '2009-06-29', '2008-03-30', 62, 4, 'Qui ab sequi officiis est.', '01', 7, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(66, 3, '2019-03-01', '1992-06-27', 45, 2, 'Velit natus recusandae possimus.', '58', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(67, 81, '2014-10-08', '1974-09-21', 88, 8, 'Sed nam velit iste dolor vel quam.', '52', 7, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(68, 53, '1991-07-25', '1980-12-28', 84, 0, 'Ut totam non sint aperiam modi.', '86', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(69, 63, '2001-12-04', '1998-12-25', 90, 9, 'Dolorem non atque ex consectetur.', '09', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(70, 24, '2008-10-11', '1988-09-21', 7, 8, 'Et quis excepturi corrupti fugiat.', '77', 10, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(71, 90, '2014-12-16', '1981-01-25', 42, 3, 'Consequatur et maiores rem ex.', '51', 7, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(72, 4, '1982-01-03', '2014-03-02', 98, 9, 'Architecto minus maiores a dolore.', '50', 8, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(73, 19, '2005-09-25', '1986-05-18', 57, 9, 'Ea minus sit odio aut provident.', '09', 7, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(74, 62, '1973-09-30', '1983-04-30', 40, 4, 'In dolores rerum et.', '95', 7, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(75, 97, '1997-09-14', '1994-07-16', 80, 2, 'Repellendus officiis ea ea eius.', '36', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(76, 73, '1977-11-02', '1985-09-18', 53, 7, 'Voluptatem eos omnis ab.', '75', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(77, 17, '1996-10-03', '1989-02-04', 89, 6, 'Et atque nesciunt velit facere.', '24', 2, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(78, 2, '1970-04-17', '1984-09-19', 78, 2, 'Tempora tempora id quo non.', '46', 7, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(79, 22, '1983-11-09', '1992-12-10', 30, 0, 'Rem exercitationem ut atque non.', '29', 3, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(80, 29, '1971-04-12', '2014-06-12', 48, 6, 'Quibusdam beatae id est sunt.', '42', 2, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(81, 46, '2002-11-26', '2017-11-13', 93, 9, 'Vel perspiciatis nemo et sint.', '93', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(82, 66, '1992-07-16', '1996-02-26', 31, 6, 'Quas et iure enim totam.', '81', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(83, 81, '1984-08-07', '2009-04-18', 7, 4, 'Et est eum dolore.', '45', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(84, 61, '1994-10-20', '1983-05-27', 1, 1, 'Et aliquid quo dolor quo ad autem.', '01', 3, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(85, 7, '2001-06-05', '1992-06-03', 73, 3, 'Id eum id nesciunt autem omnis.', '69', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(86, 97, '1983-08-19', '1981-07-17', 53, 0, 'Sed voluptate dignissimos aliquam.', '78', 5, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(87, 58, '2000-11-01', '1996-01-27', 93, 4, 'Excepturi aspernatur sint maiores.', '47', 8, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(88, 44, '2011-02-23', '1973-02-09', 0, 0, 'Aut sequi in quidem.', '49', 7, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(89, 65, '1977-10-26', '1998-06-13', 84, 4, 'Est eligendi et in et repellendus.', '35', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(90, 90, '2019-08-26', '2008-11-03', 54, 8, 'Explicabo ipsum eum qui fuga.', '90', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(91, 10, '1997-06-25', '1978-01-01', 51, 6, 'Saepe qui atque sequi atque.', '61', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(92, 18, '2018-02-20', '2002-05-08', 18, 2, 'Itaque error quidem enim.', '15', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(93, 61, '2014-07-13', '1993-12-12', 54, 1, 'Quae nihil aut quis quo qui est.', '34', 1, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(94, 45, '1997-02-14', '1996-12-07', 33, 1, 'Aut sint eum ipsa veritatis.', '46', 9, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(95, 28, '1985-06-13', '2013-11-07', 95, 6, 'Nostrum ut at placeat.', '08', 3, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(96, 83, '1976-01-14', '1984-10-23', 69, 2, 'Magni eaque fugit non enim enim.', '63', 4, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(97, 74, '1978-05-27', '1982-09-17', 93, 2, 'Autem ut aperiam ab sed ex vero.', '31', 9, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(98, 52, '1982-01-21', '1994-02-11', 34, 9, 'Molestiae explicabo illum fugit.', '99', 8, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(99, 74, '2012-10-14', '2013-03-04', 8, 8, 'Omnis accusamus est nostrum.', '81', 8, '2020-06-01 16:25:32', '2020-06-01 16:25:32'),
(100, 94, '2015-08-14', '1988-09-30', 84, 8, 'Et eum quos laudantium quis.', '99', 6, '2020-06-01 16:25:32', '2020-06-01 16:25:32');

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

-- --------------------------------------------------------

--
-- Table structure for table `items_receive_picture`
--

CREATE TABLE `items_receive_picture` (
  `receive_id` int(10) UNSIGNED NOT NULL,
  `picture_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `items_receive_view`
-- (See below for the actual view)
--
CREATE TABLE `items_receive_view` (
`name` varchar(255)
,`color` varchar(70)
,`code` varchar(100)
,`manufacture` varchar(100)
,`classification` varchar(255)
,`note` varchar(255)
,`price` double unsigned
,`delivery_cost` double unsigned
,`quantity` double unsigned
,`warranty` varchar(50)
,`production_date` date
,`expiration_date` date
);

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `items_sell_view`
-- (See below for the actual view)
--
CREATE TABLE `items_sell_view` (
`name` varchar(255)
,`color` varchar(70)
,`code` varchar(100)
,`manufacture` varchar(100)
,`classification` varchar(255)
,`note` varchar(255)
,`quantity` double unsigned
,`sold_at` timestamp
);

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

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `type` enum('normal','admin','developer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `roles`, `active`, `type`, `password`, `created_at`, `updated_at`) VALUES
(1, 'osama', 'Fadel', 'osama_akre', 'ryan.devin@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(2, 'developer', 'Spinka', 'developer', 'aufderhar.dana@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'developer', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(3, 'sara', 'Lowe', 'sara_akre', 'jalyn29@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(4, 'Marcelle', 'Cummerata', 'mafalda.buckridge', 'edamore@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(5, 'Alexys', 'Wolff', 'flatley.matilda', 'ahowell@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(6, 'Michael', 'Kris', 'ali15', 'jan.prohaska@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(7, 'Johnny', 'Dooley', 'ykeeling', 'baufderhar@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(8, 'Rosario', 'Buckridge', 'maryse52', 'santos82@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(9, 'Jovan', 'Daniel', 'alexis.haag', 'dubuque.mervin@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(10, 'Thurman', 'Wilderman', 'katlynn.howell', 'casper.maxie@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(11, 'Greta', 'Batz', 'pmcclure', 'aspinka@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(12, 'Baby', 'Terry', 'makenzie70', 'kilback.estrella@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(13, 'Rowland', 'Huels', 'elmer86', 'nellie58@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(14, 'Santiago', 'Collins', 'velma44', 'dena.heaney@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(15, 'Eldred', 'Pouros', 'jones.kathryne', 'dolly21@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(16, 'Finn', 'Upton', 'cassandra16', 'virginia.schoen@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(17, 'Norene', 'Balistreri', 'arno41', 'aaliyah.gerhold@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(18, 'Eusebio', 'Bosco', 'jody.kreiger', 'marisol.feil@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(19, 'Enos', 'Sauer', 'juwan73', 'johnston.mallory@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(20, 'Adelbert', 'Hagenes', 'marisa.brown', 'pweissnat@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(21, 'Sibyl', 'Vandervort', 'ronaldo.stokes', 'mitchell.pagac@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(22, 'Karina', 'Beatty', 'luna93', 'marlene.bosco@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(23, 'Cyril', 'Pollich', 'ocorkery', 'roob.jolie@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(24, 'Rhoda', 'Hammes', 'wyman.lorna', 'felton.nikolaus@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(25, 'Edmond', 'Mueller', 'elna70', 'michael.steuber@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(26, 'Rigoberto', 'Walsh', 'daphnee.mertz', 'mccullough.hipolito@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(27, 'Ezequiel', 'Volkman', 'kauer', 'oreilly.joana@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(28, 'Alexandre', 'Muller', 'cielo.lind', 'bode.lexus@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(29, 'Ocie', 'Dibbert', 'kenny31', 'osinski.bennett@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(30, 'Nedra', 'O\'Connell', 'hturcotte', 'fisher.melyssa@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(31, 'Roslyn', 'Hodkiewicz', 'ima.gislason', 'kyleigh32@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(32, 'Eloy', 'Trantow', 'peter.haag', 'alvera.dicki@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(33, 'Itzel', 'Jacobson', 'jarrod.bahringer', 'annabelle71@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(34, 'Genoveva', 'Marquardt', 'pbailey', 'wmoen@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(35, 'Mason', 'Sanford', 'waters.robert', 'wisoky.dillan@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(36, 'Mitchel', 'Brown', 'dbreitenberg', 'hillard.beatty@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(37, 'Retha', 'Denesik', 'mmills', 'rusty03@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(38, 'Maribel', 'Weber', 'bosco.lempi', 'keenan.kshlerin@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(39, 'Wiley', 'Feil', 'vida.wyman', 'ferry.donny@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(40, 'Brody', 'Feil', 'barton.allison', 'lisandro53@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(41, 'Mae', 'Hill', 'alek19', 'dominique71@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(42, 'Reuben', 'Douglas', 'julius31', 'nayeli.kuhlman@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(43, 'Harold', 'Rice', 'stephon07', 'theodora.kling@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(44, 'Robert', 'Wisoky', 'nicolette.rolfson', 'isac.schinner@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(45, 'Ramiro', 'Dach', 'oberbrunner.natalie', 'bthiel@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(46, 'Aileen', 'O\'Hara', 'xkrajcik', 'lprosacco@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(47, 'Willow', 'Lindgren', 'kuhic.georgette', 'keeling.willard@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(48, 'Madge', 'Luettgen', 'carter.volkman', 'samantha88@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(49, 'Aron', 'Schinner', 'thompson.mateo', 'rae05@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(50, 'Kianna', 'Morissette', 'pspinka', 'ustokes@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(51, 'Genevieve', 'Beier', 'van.tillman', 'cwelch@example.com', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(52, 'Laurie', 'Haag', 'fbeahan', 'zoconner@example.net', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30'),
(53, 'Gregg', 'Murray', 'ecormier', 'nelle50@example.org', '{\"can-see-expenses\":true,\"can-update-expenses\":true,\"can-delete-expenses\":true,\"can-create-expenses\":true}', 1, 'normal', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2020-06-01 16:25:30', '2020-06-01 16:25:30');

-- --------------------------------------------------------

--
-- Structure for view `items_receive_view`
--
DROP TABLE IF EXISTS `items_receive_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `items_receive_view`  AS  select `items`.`name` AS `name`,`items`.`color` AS `color`,`items`.`code` AS `code`,`items`.`manufacture` AS `manufacture`,`items`.`classification` AS `classification`,`items`.`note` AS `note`,`items_receive`.`price` AS `price`,`items_receive`.`delivery_cost` AS `delivery_cost`,`items_receive`.`quantity` AS `quantity`,`items_receive`.`warranty` AS `warranty`,`items_receive`.`production_date` AS `production_date`,`items_receive`.`expiration_date` AS `expiration_date` from ((`items_receive` join `items_receive_detail` on(`items_receive`.`id` = `items_receive_detail`.`receive_id`)) join `items` on(`items`.`id` = `items_receive_detail`.`item_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `items_sell_view`
--
DROP TABLE IF EXISTS `items_sell_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `items_sell_view`  AS  select `items`.`name` AS `name`,`items`.`color` AS `color`,`items`.`code` AS `code`,`items`.`manufacture` AS `manufacture`,`items`.`classification` AS `classification`,`items`.`note` AS `note`,`items_sell`.`quantity` AS `quantity`,`items_sell`.`created_at` AS `sold_at` from ((`items_sell` join `items_sell_detail` on(`items_sell`.`id` = `items_sell_detail`.`sell_id`)) join `items` on(`items`.`id` = `items_sell_detail`.`item_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_number_unique` (`phone_number`),
  ADD KEY `customers_name_index` (`name`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_name_index` (`name`);

--
-- Indexes for table `items_receive`
--
ALTER TABLE `items_receive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_receive_creator_id_index` (`creator_id`);

--
-- Indexes for table `items_receive_detail`
--
ALTER TABLE `items_receive_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_receive_detail_receive_id_foreign` (`receive_id`),
  ADD KEY `items_receive_detail_item_id_foreign` (`item_id`),
  ADD KEY `items_receive_detail_inventory_id_foreign` (`inventory_id`);

--
-- Indexes for table `items_receive_picture`
--
ALTER TABLE `items_receive_picture`
  ADD KEY `items_receive_picture_receive_id_foreign` (`receive_id`),
  ADD KEY `items_receive_picture_picture_id_foreign` (`picture_id`);

--
-- Indexes for table `items_sell`
--
ALTER TABLE `items_sell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_sell_detail`
--
ALTER TABLE `items_sell_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_sell_detail_item_id_foreign` (`item_id`),
  ADD KEY `items_sell_detail_sell_id_foreign` (`sell_id`);

--
-- Indexes for table `items_transfer`
--
ALTER TABLE `items_transfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_transfer_source_inventory_id_foreign` (`source_inventory_id`),
  ADD KEY `items_transfer_destination_inventory_id_foreign` (`destination_inventory_id`);

--
-- Indexes for table `items_transfer_detail`
--
ALTER TABLE `items_transfer_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_transfer_detail_transfer_id_foreign` (`transfer_id`),
  ADD KEY `items_transfer_detail_item_id_foreign` (`item_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_username_index` (`username`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `items_receive`
--
ALTER TABLE `items_receive`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `items_receive_detail`
--
ALTER TABLE `items_receive_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `items_sell`
--
ALTER TABLE `items_sell`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `items_sell_detail`
--
ALTER TABLE `items_sell_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `items_transfer`
--
ALTER TABLE `items_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `items_transfer_detail`
--
ALTER TABLE `items_transfer_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items_receive`
--
ALTER TABLE `items_receive`
  ADD CONSTRAINT `items_receive_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `items_receive_detail`
--
ALTER TABLE `items_receive_detail`
  ADD CONSTRAINT `items_receive_detail_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `inventories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_receive_detail_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_receive_detail_receive_id_foreign` FOREIGN KEY (`receive_id`) REFERENCES `items_receive` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items_receive_picture`
--
ALTER TABLE `items_receive_picture`
  ADD CONSTRAINT `items_receive_picture_picture_id_foreign` FOREIGN KEY (`picture_id`) REFERENCES `pictures` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_receive_picture_receive_id_foreign` FOREIGN KEY (`receive_id`) REFERENCES `items_receive` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items_sell_detail`
--
ALTER TABLE `items_sell_detail`
  ADD CONSTRAINT `items_sell_detail_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_sell_detail_sell_id_foreign` FOREIGN KEY (`sell_id`) REFERENCES `items_sell` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items_transfer`
--
ALTER TABLE `items_transfer`
  ADD CONSTRAINT `items_transfer_destination_inventory_id_foreign` FOREIGN KEY (`destination_inventory_id`) REFERENCES `inventories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `items_transfer_source_inventory_id_foreign` FOREIGN KEY (`source_inventory_id`) REFERENCES `inventories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `items_transfer_detail`
--
ALTER TABLE `items_transfer_detail`
  ADD CONSTRAINT `items_transfer_detail_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_transfer_detail_transfer_id_foreign` FOREIGN KEY (`transfer_id`) REFERENCES `items_transfer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `remove_old_customer_logs` ON SCHEDULE EVERY 3 MONTH STARTS '2020-06-01 22:26:38' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
        DELETE FROM `customer_logs` WHERE `occurred_at` < NOW() - INTERVAL 3 MONTH;
    END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
