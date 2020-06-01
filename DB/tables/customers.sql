-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:35 PM
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
