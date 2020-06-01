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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_name_index` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
