-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2020 at 09:41 PM
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

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
