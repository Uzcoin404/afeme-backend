-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Dec 17, 2025 at 02:28 PM
-- Server version: 10.11.14-MariaDB-ubu2204-log
-- PHP Version: 8.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `tel`, `email`, `location`, `icon`, `created_at`, `updated_at`) VALUES
(1, '+998-998-760-021', 'afeme@afeme.com', 'Boburshox kocha 2-uy', NULL, '2022-06-22 01:28:12', '2022-06-22 01:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `url`, `status`, `image`, `created_at`, `updated_at`) VALUES
(2, 'https://www.mbc.uz/', '1', 'http://ali98.uz/admin2/advertisements/1657800524dream-house.png', '2022-07-14 08:39:02', '2022-07-14 12:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_area` varchar(255) NOT NULL,
  `living_area` varchar(255) NOT NULL,
  `kitchen_area` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `total_area`, `living_area`, `kitchen_area`, `post_id`, `created_at`, `updated_at`) VALUES
(1, '7', '7', '7', '7', '2022-06-13 06:28:12', '2022-06-13 06:28:12'),
(2, '7', '7', '7', '7', '2022-06-13 06:28:49', '2022-06-13 06:28:49'),
(3, '7', '7', '7', '7', '2022-06-14 04:54:23', '2022-06-14 04:54:23'),
(4, '7', '7', '7', '7', '2022-06-14 05:50:33', '2022-06-14 05:50:33'),
(5, '7', '7', '7', '7', '2022-06-14 05:58:28', '2022-06-14 05:58:28'),
(6, '7', '7', '7', '7', '2022-06-15 03:12:54', '2022-06-15 03:12:54'),
(7, '7', '7', '7', '7', '2022-06-15 03:13:25', '2022-06-15 03:13:25'),
(8, '7', '7', '7', '7', '2022-06-15 03:13:32', '2022-06-15 03:13:32'),
(9, '7', '7', '7', '7', '2022-06-15 03:13:34', '2022-06-15 03:13:34'),
(10, '7', '7', '7', '7', '2022-06-15 03:16:25', '2022-06-15 03:16:25'),
(11, '7', '7', '7', '7', '2022-06-15 03:16:35', '2022-06-15 03:16:35'),
(12, '7', '7', '7', '7', '2022-06-15 03:17:02', '2022-06-15 03:17:02'),
(13, '7', '7', '7', '7', '2022-06-15 03:17:03', '2022-06-15 03:17:03'),
(14, '7', '7', '7', '7', '2022-06-15 03:17:03', '2022-06-15 03:17:03'),
(15, '7', '7', '7', '7', '2022-06-15 03:17:03', '2022-06-15 03:17:03'),
(16, '7', '7', '7', '7', '2022-06-15 03:17:03', '2022-06-15 03:17:03'),
(17, '7', '7', '7', '7', '2022-06-15 03:17:03', '2022-06-15 03:17:03'),
(18, '7', '7', '7', '7', '2022-06-15 03:39:28', '2022-06-15 03:39:28'),
(19, '7', '7', '7', '7', '2022-06-15 03:40:11', '2022-06-15 03:40:11'),
(20, '7', '7', '7', '7', '2022-06-15 03:41:10', '2022-06-15 03:41:10'),
(21, '7', '7', '7', '7', '2022-06-15 03:42:24', '2022-06-15 03:42:24'),
(22, '7', '7', '7', '7', '2022-06-15 03:42:41', '2022-06-15 03:42:41'),
(23, '7', '7', '7', '7', '2022-06-15 03:42:54', '2022-06-15 03:42:54'),
(24, '7', '7', '7', '7', '2022-06-15 03:42:56', '2022-06-15 03:42:56'),
(25, '7', '7', '7', '7', '2022-06-15 03:42:57', '2022-06-15 03:42:57'),
(26, '7', '7', '7', '7', '2022-06-15 03:42:58', '2022-06-15 03:42:58'),
(27, '7', '7', '7', '7', '2022-06-15 03:42:59', '2022-06-15 03:42:59'),
(28, '7', '7', '7', '7', '2022-06-15 03:43:00', '2022-06-15 03:43:00'),
(29, '7', '7', '7', '7', '2022-06-15 03:43:01', '2022-06-15 03:43:01'),
(30, '7', '7', '7', '7', '2022-06-15 03:43:02', '2022-06-15 03:43:02'),
(31, '7', '7', '7', '7', '2022-06-15 03:46:49', '2022-06-15 03:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_uz` varchar(255) DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_uz`, `icon`, `created_at`, `updated_at`, `name_en`, `name_ru`) VALUES
(12, 'Hovli', 'categories/TtJNBY5y7iTICDsVALaFJsi0ohYcA7HY5IDKrbDD.svg', '2022-06-09 06:09:00', '2025-12-14 18:30:11', 'Courtyard', 'Двор'),
(13, 'Ofis', 'categories/XNkXZj8cloRu46ymZdevGDvi5R5rjvmql4LpM9qT.svg', '2022-06-09 06:10:21', '2025-12-14 18:36:44', 'Office', 'Офис'),
(14, 'Xona', 'categories/DK0wD845TQqy5pUersHrCjXstMCf7O56mzlAgeaq.svg', '2022-06-09 06:10:49', '2025-12-15 07:41:30', 'Room', 'Комната'),
(15, 'Kvartira', 'categories/wclRg0bjCi9lwkK8VUQ2FErkVKCXfiO0tbPLX5Lh.svg', '2022-06-09 06:11:33', '2025-12-14 18:37:24', 'Apartment', 'Квартира'),
(17, 'Kottej', 'categories/8hEIR9VG8S7l5ZzZaqwbvdAnrZLbxAZZ4n6vCvyq.svg', '2022-06-09 06:12:02', '2025-12-14 18:37:36', 'Cottage', 'Коттедж');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_uz` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_uz`, `region_id`, `created_at`, `updated_at`, `name_en`, `name_ru`) VALUES
(75, 'Andijon', '21', '2022-07-11 06:05:54', '2022-07-11 06:05:54', 'Andijon', 'Andijon'),
(76, 'Qashqadaryo', '28', '2022-07-12 09:36:23', '2022-07-12 09:36:23', 'QashqadaryoEn', 'Кашкадарья'),
(77, 'Buhoro', '22', '2022-07-12 09:38:15', '2022-07-12 09:38:15', 'Buhoro', 'Бухара'),
(78, 'Fargona', '23', '2022-07-12 09:39:01', '2022-07-12 09:39:01', 'Fargona', 'Фаргона'),
(79, 'Jizzah', '24', '2022-07-12 09:39:42', '2022-07-12 09:40:59', 'Jizzah', 'Джизак'),
(80, 'Xorazm', '25', '2022-07-12 09:41:55', '2022-07-12 09:41:55', 'Xorazm', 'Хорезм'),
(81, 'Namangan', '26', '2022-07-12 09:42:50', '2022-07-12 09:42:50', 'Namangan', 'Наманган'),
(82, 'Navoiy', '27', '2022-07-12 09:45:59', '2022-07-12 09:45:59', 'Navoiy', 'Навои'),
(83, 'Qashqadaryo', '28', '2022-07-12 09:53:02', '2022-07-12 09:53:02', 'Qashqadaryo', 'Кашкадарья'),
(84, 'Urganch', '29', '2022-07-12 10:26:22', '2022-07-12 10:26:22', 'Urganch', 'Ургенч'),
(85, 'Samarqand', '30', '2022-07-12 10:27:26', '2022-07-12 10:27:26', 'Samarqand', 'Самарканд'),
(86, 'Sirdaryo', '31', '2022-07-12 10:28:15', '2022-07-12 10:28:15', 'Sirdaryo', 'Сырдарья'),
(87, 'Surxondaryo', '32', '2022-07-12 10:29:11', '2022-07-12 10:29:11', 'Surxondaryo', 'Сурхандарья'),
(88, 'Toshkent', '33', '2022-07-12 10:29:50', '2022-07-12 10:29:50', 'Toshkent', 'Ташкент'),
(89, 'Shahrixon', '21', '2022-07-14 06:43:54', '2022-07-14 06:43:54', 'Shahrixon', 'Shahrixon'),
(90, 'Asaka', '21', '2022-07-14 06:44:26', '2022-07-14 06:44:26', 'Asaka', 'Asaka'),
(91, 'Baliqchi', '21', '2022-07-14 06:44:46', '2022-07-14 06:44:46', 'Baliqchi', 'Baliqchi'),
(92, 'Boʻz', '21', '2022-07-18 10:49:44', '2022-07-18 10:49:44', 'Boʻz', 'Боз'),
(93, 'Buloqboshi', '21', '2022-07-18 10:50:11', '2022-07-18 10:50:11', 'Buloqboshi', 'Булокбоши'),
(94, 'Marhamat', '21', '2022-07-18 10:50:50', '2022-07-18 10:50:50', 'Marhamaе', 'Мархамат'),
(95, 'Oqoltin', '21', '2022-07-18 10:51:20', '2022-07-18 10:51:20', 'Oqoltin', 'Околтин'),
(96, 'Oltiariq', '23', '2022-07-18 10:52:24', '2022-07-18 10:52:24', 'Oltiariq', 'Олтиарик'),
(97, 'Quva', '23', '2022-07-18 10:53:13', '2022-07-18 10:53:13', 'Quva', 'Кува'),
(98, 'Rishton', '23', '2022-07-18 10:53:28', '2022-07-18 10:53:36', 'Rishton', 'Риштон'),
(99, 'Ravon', '23', '2022-07-18 10:53:53', '2022-07-18 10:53:53', 'Ravon', 'Равон'),
(100, 'Toshloq', '23', '2022-07-18 10:54:09', '2022-07-18 10:54:09', 'Toshloq', 'Тошлок'),
(101, 'Uchkoʻprik', '23', '2022-07-18 10:54:28', '2022-07-18 10:54:28', 'Uchkoʻprik', 'Учкоприк'),
(102, 'Yaypan', '23', '2022-07-18 10:54:48', '2022-07-18 10:54:48', 'Yaypan', 'Яйпан'),
(103, 'Yozyovon', '23', '2022-07-18 10:55:17', '2022-07-18 10:55:17', 'Yozyovon', 'Юзювон'),
(104, 'Vodil', '23', '2022-07-18 10:55:33', '2022-07-18 10:55:33', 'Vodil', 'Водил'),
(105, 'Dangʻara', '23', '2022-07-18 10:55:55', '2022-07-18 10:55:55', 'Dangara', 'Дангара'),
(106, 'Chortoq', '26', '2022-07-18 10:56:25', '2022-07-18 10:56:25', 'Chortoq', 'Чорток'),
(107, 'Chust', '26', '2022-07-18 10:56:41', '2022-07-18 10:56:41', 'Chust', 'Чуст'),
(108, 'Kosonsoy', '26', '2022-07-18 10:56:56', '2022-07-18 10:56:56', 'Kosonsoy', 'Косонсой'),
(109, 'Jomashoʻy', '26', '2022-07-18 10:57:46', '2022-07-18 10:57:46', 'Jomashoy', 'Жомашой'),
(110, 'Toshbuloq', '26', '2022-07-18 10:58:21', '2022-07-18 10:58:21', 'Toshbuloq', 'Тошбулок'),
(111, 'Haqqulobod', '26', '2022-07-18 10:58:39', '2022-07-18 10:58:39', 'Haqqulobod', 'Хаккулобод'),
(112, 'Toʻraqoʻrgʻon', '26', '2022-07-18 10:59:29', '2022-07-18 10:59:29', 'Toraqorgon', 'Торакоргон');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `devays_id` varchar(255) DEFAULT NULL,
  `devays_type` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `lastname`, `email`, `phone`, `user_type`, `devays_id`, `devays_type`, `password`, `region_id`, `city_id`, `experience`, `description`, `longitude`, `latitude`, `created_at`, `updated_at`, `image`) VALUES
(417, 'Hamidullo', 'Saydullaev', 'x5292623@icloud.com', '+998907636669', 'bussines', NULL, NULL, '$2y$10$Ju4XjJ7diOrwId8KNSXW6ecjjQxd1DbQUM3mRJQ1mzfxMV2oZVVo.', 21, NULL, '3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will \r\n\r\n', NULL, NULL, '2022-07-13 08:38:32', '2022-07-13 08:38:32', NULL),
(418, 'Muhammaddiyor', 'Ravshanbekov', 'admin@admin.com', '+998908760021', 'bussines', NULL, NULL, '$2y$10$4PesspDzAvRtBs1i7jDzsO3wtOnDH2naSeCIIdDBW24fDOw.2HwVG', 21, NULL, '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown ', NULL, NULL, '2022-07-13 08:40:31', '2022-07-14 05:33:36', NULL),
(419, 'Suyunbek', 'Saydazimov', 'afeme@afeme.com', '+998906225022', 'bussines', NULL, NULL, '$2y$10$GoN9uSZNZGjNHUMtBS6w1eg.lJJbN7Qq13sOK/1Hu4xtPj6IdAVJe', 21, NULL, '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dumm', NULL, NULL, '2022-07-13 08:47:57', '2022-07-16 05:25:24', NULL),
(420, 'Abdullox', 'Abdusalomov', 'afeme232@afeme.com', '+998900431160', 'bussines', NULL, NULL, '$2y$10$f19gsoRCHnm4WaTS/WF3E.cNTtNri8Ect.Frf4p5mKBGPBfvkR2FW', 21, NULL, NULL, NULL, NULL, NULL, '2022-07-14 05:25:20', '2022-07-14 07:25:25', NULL),
(421, 'Kvartira', 'Abdusalomov', 'khamidmatebooks@gmail.com', '+756566565232', 'bussines', NULL, NULL, '$2y$10$J/iyoqArmZEC3Rx6a828uOoref/cg.sHNc3CdnIymyVpTGhBZgO8i', 27, NULL, '2', 'slkdks spkd posk poskd oskd ospd', NULL, NULL, '2022-07-15 05:43:33', '2022-07-15 05:43:33', NULL),
(422, 'Kvartira', 'Aliev', NULL, '+7 565 665 65 65w2', 'personal', NULL, NULL, '$2y$10$DnuBtBS5w1miVNNn8bKwHuOBgNrgzxTawoWPgs.s19nu8y.2l5ISi', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:45:49', '2022-07-15 05:45:49', NULL),
(425, 'Kvartira', 'Aliev', NULL, '+7 565 665 65 65w222s', 'personal', NULL, NULL, '$2y$10$5gWqyPD/E5u/Xdgf1cTaPeHNjXNHeymapK8EBsH4MS6am2pjbX11C', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:47:18', '2022-07-15 05:47:18', NULL),
(426, 'Kvartira', 'Aliev', NULL, '39084280342', 'personal', NULL, NULL, '$2y$10$bJYiVWJqGFRW25S5bkXy2eeoArHepiaBtfbJx3YU9bY5lFEty0paS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:47:58', '2022-07-15 05:47:58', NULL),
(427, 'Kvartira', 'Aliev', NULL, '390842803428', 'personal', NULL, NULL, '$2y$10$FDoEP3wjznJDiMnatpZ9ReGy/K/fpcmjM.SQBYXwb6Y4H6Gj3g0bi', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:48:51', '2022-07-15 05:48:51', NULL),
(428, 'Kvartira', 'Aliev', NULL, '3908428034283', 'personal', NULL, NULL, '$2y$10$jvY0aihUUQdUmH0g0spak.ebHM9ZTRnutejEhdi4/GUWYuFrM8DWq', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:50:16', '2022-07-15 05:50:16', NULL),
(429, 'Evro Tamir12', 'Abdusalomov', NULL, '+9989076366691', 'personal', NULL, NULL, '$2y$10$.AdOn//KLQc0/bEMz7aSouJUBBcxuTxj/nm1nlRYV2OcEXZDiYN7u', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:51:12', '2022-07-15 05:51:12', NULL),
(430, 'Evro Tamir12', 'Abdusalomov', NULL, '+99890763666912', 'personal', NULL, NULL, '$2y$10$f/qjk16u1si1DgavbiO8CeaEMXRRMCoD3kO5pYzrDIwpcjUGmmNPu', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:51:50', '2022-07-15 05:51:50', NULL),
(431, 'Evro Tamir12', 'Abdusalomov', NULL, '+998907636669123', 'personal', NULL, NULL, '$2y$10$z0.0RpWPlm53pl6yl.3ZNOKhbDj4COFMmyrQXAPrI5WwAbxXZuv.K', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:52:16', '2022-07-15 05:52:16', NULL),
(432, 'Toshkent', 'Abdusalomov', NULL, '+7 565 665 65 6533', 'personal', NULL, NULL, '$2y$10$RXL4YLHT.nKbEtQW6YtlUOZSLIC.sxTeBMRq08wmRmm9lvSsyMrVS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:52:54', '2022-07-15 05:52:54', NULL),
(433, 'Samarqand', 'Real Estateq', NULL, '1234239023', 'companiya', NULL, NULL, '$2y$10$VH4HhCZFaEJ3.ELvSfb5B./vn5PN2mOMLaDp2Ob3v./07qUb20EK.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:54:33', '2022-07-15 05:54:33', NULL),
(434, 'Evro Tamir12', 'Abdusalomov', NULL, '+29857293842903', 'personal', NULL, NULL, '$2y$10$iRFDxnKx8rihPau0uQfkZuOl/c8D2r3nnhuuqngRz5Ret.gzENili', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:55:53', '2022-07-15 05:55:53', NULL),
(436, 'alkdmfslpkdf', 'Real Estate', NULL, '238994823403822', 'personal', NULL, NULL, '$2y$10$jH/bVFi30z6xnPwU9HImg.PxehHcMF5IjIs4hGhaIHQtlpIhA7jNG', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 05:59:17', '2022-07-15 05:59:17', NULL),
(437, 'alkdmfslpkdf', 'Real Estate', NULL, '23899482340382232', 'personal', NULL, NULL, '$2y$10$bqghV27lcHJlBpvYm17AcucQTsd2fvjrOKHXPt.8a9gmTx8pa74x.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 06:00:07', '2022-07-15 06:00:07', NULL),
(438, 'alkdmfslpkdf', 'Real Estate', NULL, '238994823403822323', 'personal', NULL, NULL, '$2y$10$4tPdIIzD1.ar/CUc4HilDOjHh8N7.pP1dFfuJzHk99afUw/FO.JuG', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 06:00:44', '2022-07-15 06:00:44', NULL),
(439, 'alkdmfslpkdf', 'Real Estate', NULL, '2389948234038223233', 'personal', NULL, NULL, '$2y$10$/XJiFUJLBplYc39HPN0hbe5aca.eXR4KbhOy.OjyyctFCTJjyNC8m', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 06:01:22', '2022-07-15 06:01:22', NULL),
(440, 'SASasasd', 'SASAds', 'saDS@slad.acd', '+203923232', 'personal', NULL, NULL, '$2y$10$xXAoTzhHl6urJRAZKFkv3OdFHlq5XBs4AxIpwI8lAFTR9SIxyp41q', 23, NULL, NULL, NULL, NULL, NULL, '2022-07-15 06:03:33', '2022-07-15 06:03:33', NULL),
(441, 'Hamidullo', 'Abdusalomov', NULL, '999999999999999999', 'personal', NULL, NULL, '$2y$10$MiSGQb4NQ37WFPw3XB.TkecQ9tEfpvY6vrYJzwdxF8wrpTrbVVX.W', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 08:20:13', '2022-07-15 08:20:13', NULL),
(442, 'Suyunbek', 'asd', 'asd@asd.asd', '123', 'personal', NULL, NULL, '$2y$10$2aOg.6cW4OXP1xt5Spcjiun3OcdgtKPx2P5Sx/61d256r/fg1CuQ2', 23, NULL, NULL, NULL, NULL, NULL, '2022-07-15 08:20:19', '2022-07-15 08:42:37', NULL),
(443, 'Muhammaddiyor', 'Ravshanbekov', 'mravshanbekov388@gmail.com', '+998998760021', 'bussines', NULL, NULL, '$2y$10$jchJw6EpbKpNKOaMRnpVd.AiY4dHkdm180goedgfoeRqF0/sx34Ey', 21, NULL, '4', 'Salom', NULL, NULL, '2022-07-15 10:02:33', '2022-07-15 10:02:33', NULL),
(444, 'Hamidullo2', 'Saydullaev', 'x5292623@icloud.com', '+82828282929', 'personal', NULL, NULL, '$2y$10$mXQ24Viri./jBb1YdWl8U.dRj3pasoB8T7zgoLIv7hIDIae5QbveK', 21, NULL, NULL, NULL, NULL, NULL, '2022-07-15 10:45:40', '2022-07-15 10:45:40', NULL),
(445, 'Valijon', 'Valiev', 'aabdal@al.com', '0928349283429804', 'personal', NULL, NULL, '$2y$10$/ykgYuFtl3RMjsL.4H3wluI/9fCc6QvgZy8tmPKHxtVa6sH8gpQyK', 23, NULL, NULL, NULL, NULL, NULL, '2022-07-16 12:31:25', '2022-07-16 12:31:25', NULL),
(446, 'Valijon', 'Shamshiev', 'sh@sh.sh', '+9989076366695858', 'personal', NULL, NULL, '$2y$10$iZCLY0kLntB/iBXLkVZ1R.HfILpKLUZPK5z4nOTaRo9B5fawOPIAK', 21, NULL, NULL, NULL, NULL, NULL, '2022-07-16 12:36:48', '2022-07-16 12:36:48', NULL),
(447, 'Valijon', 'Kochkarov', 'aabdal@al.cov', '1234', 'personal', NULL, NULL, '$2y$10$PTvV8B9d/NzKus58W./gC.wf9Lbf0s1EU.cxFjcr/IIo9l9xoXqGG', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-16 12:47:48', '2022-07-16 12:47:48', NULL),
(448, 'Alijon', 'qwerty', 'qwerty@qwer.qwe', '12345', 'bussines', NULL, NULL, '$2y$10$8T6KO/u8SM0Y25Ea0zhAtOjpWxW95apiYpKkvVSwc3RuhVXHd4jZC', 25, NULL, '3', 'lşdl wlşö sdlş öl lsp lqp lsdğl ğp lsğpal spl', NULL, NULL, '2022-07-16 12:59:21', '2022-07-16 12:59:21', NULL),
(449, 'Suyunbek', 'S', 'mail@mail.com', 'mail', 'personal', NULL, NULL, '$2y$10$Pi0GBZ1sckOHorT3sY9Uv.U8eUrBf4acRWdWsVtYJW8kseDCjoo0G', 21, NULL, NULL, NULL, NULL, NULL, '2025-12-14 18:45:36', '2025-12-14 18:45:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `reltor_id` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `post_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `url`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'http://ali98.uz/files/16577790910.19671201705933.jpg', '483', '2022-07-14 06:24:58', '2022-07-14 06:24:58'),
(2, 'http://ali98.uz/files/16577790910.19671201705933.jpg', '484', '2022-07-14 06:26:03', '2022-07-14 06:26:03'),
(3, 'http://ali98.uz/files/16577790910.19671201705933.jpg', '485', '2022-07-14 06:26:59', '2022-07-14 06:26:59'),
(4, 'http://ali98.uz/files/16577790910.19671201705933.jpg', '486', '2022-07-14 06:27:11', '2022-07-14 06:27:11'),
(5, 'http://ali98.uz/files/16577790910.19671201705933.jpg', '487', '2022-07-14 06:28:15', '2022-07-14 06:28:15'),
(6, 'http://ali98.uz/files/16577790910.19671201705933.jpg', '488', '2022-07-14 06:28:45', '2022-07-14 06:28:45'),
(7, 'http://ali98.uz/files/16577790910.19671201705933.jpg', '489', '2022-07-14 06:28:52', '2022-07-14 06:28:52'),
(8, 'http://ali98.uz/files/16577810250.16865396499634.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(9, 'http://ali98.uz/files/16577935320.62410616874695.jpg', '495', '2022-07-14 10:13:47', '2022-07-14 10:13:47'),
(10, 'http://ali98.uz/files/16577935320.62410616874695.jpg', '496', '2022-07-14 10:13:49', '2022-07-14 10:13:49'),
(11, 'http://ali98.uz/files/16577937640.16773700714111.jpg', '497', '2022-07-14 10:17:18', '2022-07-14 10:17:18'),
(12, 'http://ali98.uz/files/16577940140.15417408943176.jpg', '498', '2022-07-14 10:21:40', '2022-07-14 10:21:40'),
(13, 'http://ali98.uz/files/16577944220.16221404075623.jpg', '504', '2022-07-14 10:27:45', '2022-07-14 10:27:45'),
(14, 'http://ali98.uz/files/16577944220.16221404075623.jpg', '506', '2022-07-14 10:28:23', '2022-07-14 10:28:23'),
(15, 'http://ali98.uz/files/16577944220.16221404075623.jpg', '507', '2022-07-14 10:29:15', '2022-07-14 10:29:15'),
(16, 'http://ali98.uz/files/16577954750.17430090904236.jpg', '508', '2022-07-14 10:45:24', '2022-07-14 10:45:24'),
(17, 'http://ali98.uz/files/16578744160.14183688163757.jpg', '509', '2022-07-15 08:40:29', '2022-07-15 08:40:29'),
(18, 'http://ali98.uz/files/16578795480.13064408302307.png', '510', '2022-07-15 10:06:33', '2022-07-15 10:06:33'),
(19, 'http://ali98.uz/files/16578795480.13064408302307.png', '511', '2022-07-15 10:06:40', '2022-07-15 10:06:40'),
(20, 'http://ali98.uz/files/16581286170.14806604385376.png', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(21, 'http://ali98.uz/files/16581286170.14806604385376.png', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(22, 'http://ali98.uz/files/16581286170.14806604385376.png', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `post_id`, `created_at`, `updated_at`) VALUES
(259, 'http://ali98.uz/files/16575386260.13306403160095.png', '430', '2022-07-11 06:25:32', '2022-07-11 06:25:32'),
(260, 'http://ali98.uz/files/16575386260.13306403160095.png', '431', '2022-07-11 06:26:45', '2022-07-11 06:26:45'),
(261, 'http://ali98.uz/files/16575386260.13306403160095.png', '432', '2022-07-11 06:28:39', '2022-07-11 06:28:39'),
(262, 'http://ali98.uz/files/16575386260.13306403160095.png', '433', '2022-07-11 06:29:54', '2022-07-11 06:29:54'),
(263, 'http://ali98.uz/files/16575386260.13306403160095.png', '434', '2022-07-11 06:30:00', '2022-07-11 06:30:00'),
(264, 'http://ali98.uz/files/16575386260.13306403160095.png', '435', '2022-07-11 06:31:19', '2022-07-11 06:31:19'),
(265, 'http://ali98.uz/files/16575386260.13306403160095.png', '436', '2022-07-11 06:32:17', '2022-07-11 06:32:17'),
(266, 'http://ali98.uz/files/16575386260.13306403160095.png', '437', '2022-07-11 06:32:39', '2022-07-11 06:32:39'),
(267, 'http://ali98.uz/files/16575386260.13306403160095.png', '438', '2022-07-11 06:33:19', '2022-07-11 06:33:19'),
(268, 'http://ali98.uz/files/16575386260.13306403160095.png', '439', '2022-07-11 06:33:31', '2022-07-11 06:33:31'),
(269, 'http://ali98.uz/files/16575386260.13306403160095.png', '440', '2022-07-11 06:33:57', '2022-07-11 06:33:57'),
(270, 'http://ali98.uz/files/16575386260.13306403160095.png', '441', '2022-07-11 06:34:24', '2022-07-11 06:34:24'),
(271, 'http://ali98.uz/files/16575386260.13306403160095.png', '442', '2022-07-11 06:34:31', '2022-07-11 06:34:31'),
(272, 'http://ali98.uz/files/16575393670.1185028553009.png', '443', '2022-07-11 06:36:24', '2022-07-11 06:36:24'),
(273, 'http://ali98.uz/files/16575393670.1185028553009.png', '444', '2022-07-11 06:36:43', '2022-07-11 06:36:43'),
(274, 'http://ali98.uz/files/16575393670.1185028553009.png', '445', '2022-07-11 06:37:12', '2022-07-11 06:37:12'),
(275, 'http://ali98.uz/files/16575393670.1185028553009.png', '446', '2022-07-11 06:37:22', '2022-07-11 06:37:22'),
(276, 'http://ali98.uz/files/16575393670.1185028553009.png', '447', '2022-07-11 06:37:35', '2022-07-11 06:37:35'),
(277, 'http://ali98.uz/files/16575393670.1185028553009.png', '448', '2022-07-11 06:38:49', '2022-07-11 06:38:49'),
(278, 'http://ali98.uz/files/16575393670.1185028553009.png', '449', '2022-07-11 06:38:52', '2022-07-11 06:38:52'),
(279, 'http://ali98.uz/files/16575393670.1185028553009.png', '450', '2022-07-11 06:39:11', '2022-07-11 06:39:11'),
(280, 'http://ali98.uz/files/16575393670.1185028553009.png', '451', '2022-07-11 06:39:23', '2022-07-11 06:39:23'),
(282, 'http://ali98.uz/files/16575393670.1185028553009.png', '453', '2022-07-11 06:40:20', '2022-07-11 06:40:20'),
(283, 'http://ali98.uz/files/16575393670.1185028553009.png', '454', '2022-07-11 06:41:05', '2022-07-11 06:41:05'),
(284, 'http://ali98.uz/files/16575397970.1576099395752.png', '455', '2022-07-11 07:01:18', '2022-07-11 07:01:18'),
(285, 'http://ali98.uz/files/16576166680.1308388710022.jpg', '456', '2022-07-12 09:05:16', '2022-07-12 09:05:16'),
(286, 'http://ali98.uz/files/16576166690.1305820941925.jpg', '456', '2022-07-12 09:05:16', '2022-07-12 09:05:16'),
(287, 'http://ali98.uz/files/16576166700.12862801551819.jpg', '456', '2022-07-12 09:05:16', '2022-07-12 09:05:16'),
(288, 'http://ali98.uz/files/16576166690.13713598251343.jpg', '456', '2022-07-12 09:05:16', '2022-07-12 09:05:16'),
(289, 'http://ali98.uz/files/16576166700.20838713645935.jpg', '456', '2022-07-12 09:05:16', '2022-07-12 09:05:16'),
(290, 'http://ali98.uz/files/16576166700.16415309906006.jpg', '456', '2022-07-12 09:05:16', '2022-07-12 09:05:16'),
(291, 'http://ali98.uz/files/16576166680.1308388710022.jpg', '457', '2022-07-12 09:06:26', '2022-07-12 09:06:26'),
(292, 'http://ali98.uz/files/16576166690.1305820941925.jpg', '457', '2022-07-12 09:06:26', '2022-07-12 09:06:26'),
(293, 'http://ali98.uz/files/16576166700.12862801551819.jpg', '457', '2022-07-12 09:06:26', '2022-07-12 09:06:26'),
(294, 'http://ali98.uz/files/16576166690.13713598251343.jpg', '457', '2022-07-12 09:06:26', '2022-07-12 09:06:26'),
(295, 'http://ali98.uz/files/16576166700.20838713645935.jpg', '457', '2022-07-12 09:06:26', '2022-07-12 09:06:26'),
(296, 'http://ali98.uz/files/16576166700.16415309906006.jpg', '457', '2022-07-12 09:06:26', '2022-07-12 09:06:26'),
(403, 'http://ali98.uz/files/16575393670.1185028553009.png', '452', '2022-07-11 06:39:39', '2022-07-11 06:39:39'),
(426, 'http://ali98.uz/files/16577028210.1571569442749.jpg', '469', '2022-07-13 09:01:17', '2022-07-13 09:01:17'),
(427, 'http://ali98.uz/files/16577028210.17507815361023.jpg', '469', '2022-07-13 09:01:17', '2022-07-13 09:01:17'),
(428, 'http://ali98.uz/files/16577028270.13415813446045.jpg', '469', '2022-07-13 09:01:17', '2022-07-13 09:01:17'),
(429, 'http://ali98.uz/files/16577028270.12994694709778.jpg', '469', '2022-07-13 09:01:17', '2022-07-13 09:01:17'),
(430, 'http://ali98.uz/files/16577028290.12643098831177.jpg', '469', '2022-07-13 09:01:17', '2022-07-13 09:01:17'),
(431, 'http://ali98.uz/files/16577028310.14424586296082.jpg', '469', '2022-07-13 09:01:17', '2022-07-13 09:01:17'),
(432, 'http://ali98.uz/files/16577028370.14336490631104.jpg', '469', '2022-07-13 09:01:17', '2022-07-13 09:01:17'),
(433, 'http://ali98.uz/files/16577028370.13325309753418.jpg', '469', '2022-07-13 09:01:17', '2022-07-13 09:01:17'),
(434, 'http://ali98.uz/files/16577030260.14467000961304.jpg', '470', '2022-07-13 09:04:12', '2022-07-13 09:04:12'),
(435, 'http://ali98.uz/files/16577030290.17426109313965.jpg', '470', '2022-07-13 09:04:12', '2022-07-13 09:04:12'),
(436, 'http://ali98.uz/files/16577030320.14006590843201.jpg', '470', '2022-07-13 09:04:12', '2022-07-13 09:04:12'),
(437, 'http://ali98.uz/files/16577030350.14458894729614.jpg', '470', '2022-07-13 09:04:12', '2022-07-13 09:04:12'),
(438, 'http://ali98.uz/files/16577030360.14855599403381.jpg', '470', '2022-07-13 09:04:12', '2022-07-13 09:04:12'),
(439, 'http://ali98.uz/files/16577032950.15351796150208.jpg', '471', '2022-07-13 09:08:51', '2022-07-13 09:08:51'),
(440, 'http://ali98.uz/files/16577032990.14201903343201.jpg', '471', '2022-07-13 09:08:51', '2022-07-13 09:08:51'),
(441, 'http://ali98.uz/files/16577033060.14068007469177.jpg', '471', '2022-07-13 09:08:51', '2022-07-13 09:08:51'),
(442, 'http://ali98.uz/files/16577033100.14756917953491.jpg', '471', '2022-07-13 09:08:51', '2022-07-13 09:08:51'),
(443, 'http://ali98.uz/files/16577033120.13997507095337.jpg', '471', '2022-07-13 09:08:51', '2022-07-13 09:08:51'),
(444, 'http://ali98.uz/files/16577033130.14321613311768.jpg', '471', '2022-07-13 09:08:51', '2022-07-13 09:08:51'),
(461, 'http://ali98.uz/files/16577770340.14066100120544.jfif', '474', '2022-07-14 05:37:43', '2022-07-14 05:37:43'),
(572, 'http://ali98.uz/files/16577810350.15815186500549.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(573, 'http://ali98.uz/files/16577810350.15124917030334.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(574, 'http://ali98.uz/files/16577810350.13135004043579.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(575, 'http://ali98.uz/files/16577810360.13455581665039.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(576, 'http://ali98.uz/files/16577810360.12953519821167.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(577, 'http://ali98.uz/files/16577810370.13979697227478.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(578, 'http://ali98.uz/files/16577810370.13639998435974.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(579, 'http://ali98.uz/files/16577810390.1505720615387.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(580, 'http://ali98.uz/files/16577810390.1526939868927.jpg', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(586, 'http://ali98.uz/files/16577936140.14644908905029.jpg', '495', '2022-07-14 10:13:47', '2022-07-14 10:13:47'),
(587, 'http://ali98.uz/files/16577936140.14644908905029.jpg', '496', '2022-07-14 10:13:49', '2022-07-14 10:13:49'),
(588, 'http://ali98.uz/files/16577938080.13577604293823.jpg', '497', '2022-07-14 10:17:18', '2022-07-14 10:17:18'),
(589, 'http://ali98.uz/files/16577940700.14562487602234.jpg', '498', '2022-07-14 10:21:40', '2022-07-14 10:21:40'),
(599, 'http://ali98.uz/files/16577943690.50249004364014.jpg', '503', '2022-07-14 10:26:46', '2022-07-14 10:26:46'),
(600, 'http://ali98.uz/files/16577943690.38133382797241.jpg', '503', '2022-07-14 10:26:46', '2022-07-14 10:26:46'),
(601, 'http://ali98.uz/files/16577943820.15094494819641.jpg', '503', '2022-07-14 10:26:46', '2022-07-14 10:26:46'),
(602, 'http://ali98.uz/files/16577943850.15133786201477.jpg', '503', '2022-07-14 10:26:46', '2022-07-14 10:26:46'),
(603, 'http://ali98.uz/files/16577943860.151123046875.jpg', '503', '2022-07-14 10:26:46', '2022-07-14 10:26:46'),
(604, 'http://ali98.uz/files/16577943910.15065789222717.jpg', '503', '2022-07-14 10:26:46', '2022-07-14 10:26:46'),
(605, 'http://ali98.uz/files/16577943900.14805102348328.jpg', '503', '2022-07-14 10:26:46', '2022-07-14 10:26:46'),
(606, 'http://ali98.uz/files/16577943790.14759397506714.jpg', '503', '2022-07-14 10:26:46', '2022-07-14 10:26:46'),
(607, 'http://ali98.uz/files/16577944510.14420413970947.jpg', '504', '2022-07-14 10:27:45', '2022-07-14 10:27:45'),
(608, 'http://ali98.uz/files/16577943850.15133786201477.jpg', '505', '2022-07-14 10:28:08', '2022-07-14 10:28:08'),
(609, 'http://ali98.uz/files/16577943860.151123046875.jpg', '505', '2022-07-14 10:28:08', '2022-07-14 10:28:08'),
(610, 'http://ali98.uz/files/16577943910.15065789222717.jpg', '505', '2022-07-14 10:28:08', '2022-07-14 10:28:08'),
(611, 'http://ali98.uz/files/16577943900.14805102348328.jpg', '505', '2022-07-14 10:28:08', '2022-07-14 10:28:08'),
(612, 'http://ali98.uz/files/16577943790.14759397506714.jpg', '505', '2022-07-14 10:28:08', '2022-07-14 10:28:08'),
(613, 'http://ali98.uz/files/16577944080.15706396102905.jpg', '505', '2022-07-14 10:28:08', '2022-07-14 10:28:08'),
(614, 'http://ali98.uz/files/16577944510.14420413970947.jpg', '506', '2022-07-14 10:28:23', '2022-07-14 10:28:23'),
(615, 'http://ali98.uz/files/16577945420.14195704460144.jpg', '507', '2022-07-14 10:29:15', '2022-07-14 10:29:15'),
(616, 'http://ali98.uz/files/16577954970.1517858505249.jpg', '508', '2022-07-14 10:45:24', '2022-07-14 10:45:24'),
(623, 'http://ali98.uz/files/16578795510.14855098724365.png', '510', '2022-07-15 10:06:33', '2022-07-15 10:06:33'),
(625, 'http://ali98.uz/files/16581286300.14847683906555.jpg', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(626, 'http://ali98.uz/files/16581286300.15060496330261.jpg', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(627, 'http://ali98.uz/files/16581286300.15167713165283.jpg', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(628, 'http://ali98.uz/files/16581286310.15136194229126.jpg', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(629, 'http://ali98.uz/files/16581286310.14971399307251.jpg', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(630, 'http://ali98.uz/files/16581286310.21626901626587.jpg', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(631, 'http://ali98.uz/files/16581286310.2333779335022.jpg', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(632, 'http://ali98.uz/files/16581286320.47123885154724.jpg', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(633, 'http://ali98.uz/files/16581286300.14847683906555.jpg', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(634, 'http://ali98.uz/files/16581286300.15060496330261.jpg', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(635, 'http://ali98.uz/files/16581286300.15167713165283.jpg', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(636, 'http://ali98.uz/files/16581286310.15136194229126.jpg', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(637, 'http://ali98.uz/files/16581286310.14971399307251.jpg', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(638, 'http://ali98.uz/files/16581286310.21626901626587.jpg', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(639, 'http://ali98.uz/files/16581286310.2333779335022.jpg', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(640, 'http://ali98.uz/files/16581286320.47123885154724.jpg', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(641, 'http://ali98.uz/files/16581286300.14847683906555.jpg', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52'),
(642, 'http://ali98.uz/files/16581286300.15060496330261.jpg', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52'),
(643, 'http://ali98.uz/files/16581286300.15167713165283.jpg', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52'),
(644, 'http://ali98.uz/files/16581286310.15136194229126.jpg', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52'),
(645, 'http://ali98.uz/files/16581286310.14971399307251.jpg', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52'),
(646, 'http://ali98.uz/files/16581286310.21626901626587.jpg', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52'),
(647, 'http://ali98.uz/files/16581286310.2333779335022.jpg', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52'),
(648, 'http://ali98.uz/files/16581286320.47123885154724.jpg', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52'),
(649, '/storage/files/Vmjryxed4L8mkkytE0jpdb6jyfDJEYMY3TedEs6k.jpg', '515', '2025-12-15 15:36:57', '2025-12-15 15:36:57'),
(650, '/storage/files/roJF8EWa7Tz8uqTGQkMEq9VKFvaDRZ4YyBeQhYNw.jpg', '515', '2025-12-15 15:36:57', '2025-12-15 15:36:57'),
(651, '/storage/files/DOfElrlVr7ecxroeAVKwznNVJIJFfux2wK40jbTC.jpg', '515', '2025-12-15 15:36:57', '2025-12-15 15:36:57'),
(652, '/storage/files/J5VByv43iyrAR1zs62md2DQaGTqdPV0dFL0HqRK7.jpg', '515', '2025-12-15 15:36:57', '2025-12-15 15:36:57'),
(653, '/storage/files/JWLscrMFHU1qGf8podMHh8fpteFFE8WGiqGmIIfe.jpg', '515', '2025-12-15 15:36:57', '2025-12-15 15:36:57'),
(654, '/storage/files/Vmjryxed4L8mkkytE0jpdb6jyfDJEYMY3TedEs6k.jpg', '516', '2025-12-15 15:37:33', '2025-12-15 15:37:33'),
(655, '/storage/files/roJF8EWa7Tz8uqTGQkMEq9VKFvaDRZ4YyBeQhYNw.jpg', '516', '2025-12-15 15:37:33', '2025-12-15 15:37:33'),
(656, '/storage/files/DOfElrlVr7ecxroeAVKwznNVJIJFfux2wK40jbTC.jpg', '516', '2025-12-15 15:37:33', '2025-12-15 15:37:33'),
(657, '/storage/files/J5VByv43iyrAR1zs62md2DQaGTqdPV0dFL0HqRK7.jpg', '516', '2025-12-15 15:37:33', '2025-12-15 15:37:33'),
(658, '/storage/files/JWLscrMFHU1qGf8podMHh8fpteFFE8WGiqGmIIfe.jpg', '516', '2025-12-15 15:37:33', '2025-12-15 15:37:33'),
(659, '/storage/files/roJF8EWa7Tz8uqTGQkMEq9VKFvaDRZ4YyBeQhYNw.jpg', '517', '2025-12-15 15:43:37', '2025-12-15 15:43:37'),
(660, '/storage/files/DOfElrlVr7ecxroeAVKwznNVJIJFfux2wK40jbTC.jpg', '517', '2025-12-15 15:43:37', '2025-12-15 15:43:37'),
(661, '/storage/files/J5VByv43iyrAR1zs62md2DQaGTqdPV0dFL0HqRK7.jpg', '517', '2025-12-15 15:43:37', '2025-12-15 15:43:37'),
(662, '/storage/files/JWLscrMFHU1qGf8podMHh8fpteFFE8WGiqGmIIfe.jpg', '517', '2025-12-15 15:43:37', '2025-12-15 15:43:37'),
(663, '/storage/files/roJF8EWa7Tz8uqTGQkMEq9VKFvaDRZ4YyBeQhYNw.jpg', '518', '2025-12-15 15:46:23', '2025-12-15 15:46:23'),
(664, '/storage/files/DOfElrlVr7ecxroeAVKwznNVJIJFfux2wK40jbTC.jpg', '518', '2025-12-15 15:46:23', '2025-12-15 15:46:23'),
(665, '/storage/files/J5VByv43iyrAR1zs62md2DQaGTqdPV0dFL0HqRK7.jpg', '518', '2025-12-15 15:46:23', '2025-12-15 15:46:23'),
(666, '/storage/files/JWLscrMFHU1qGf8podMHh8fpteFFE8WGiqGmIIfe.jpg', '518', '2025-12-15 15:46:23', '2025-12-15 15:46:23'),
(667, '/storage/files/DOfElrlVr7ecxroeAVKwznNVJIJFfux2wK40jbTC.jpg', '519', '2025-12-15 15:46:31', '2025-12-15 15:46:31'),
(668, '/storage/files/J5VByv43iyrAR1zs62md2DQaGTqdPV0dFL0HqRK7.jpg', '519', '2025-12-15 15:46:31', '2025-12-15 15:46:31'),
(669, '/storage/files/JWLscrMFHU1qGf8podMHh8fpteFFE8WGiqGmIIfe.jpg', '519', '2025-12-15 15:46:31', '2025-12-15 15:46:31'),
(670, '/storage/files/J5VByv43iyrAR1zs62md2DQaGTqdPV0dFL0HqRK7.jpg', '520', '2025-12-15 15:46:39', '2025-12-15 15:46:39'),
(671, '/storage/files/JWLscrMFHU1qGf8podMHh8fpteFFE8WGiqGmIIfe.jpg', '520', '2025-12-15 15:46:39', '2025-12-15 15:46:39'),
(672, '/storage/files/JWLscrMFHU1qGf8podMHh8fpteFFE8WGiqGmIIfe.jpg', '521', '2025-12-15 15:46:56', '2025-12-15 15:46:56'),
(673, '/storage/files/xhwvCs7RKYdPbokRu4QJN9uANaYGMZCjMfqPerXo.jpg', '521', '2025-12-15 15:46:56', '2025-12-15 15:46:56'),
(674, '/storage/files/FJbZJUZblrLIB8ama86Jm6RpDQPC5phA4BgfdfUI.jpg', '521', '2025-12-15 15:46:56', '2025-12-15 15:46:56'),
(675, '/storage/files/xhwvCs7RKYdPbokRu4QJN9uANaYGMZCjMfqPerXo.jpg', '522', '2025-12-15 15:47:07', '2025-12-15 15:47:07'),
(676, '/storage/files/FJbZJUZblrLIB8ama86Jm6RpDQPC5phA4BgfdfUI.jpg', '522', '2025-12-15 15:47:07', '2025-12-15 15:47:07'),
(677, '/storage/files/tv27uO9qmUYOWTvqg8ML7axztJuGJjPiiI0o72Nt.jpg', '522', '2025-12-15 15:47:07', '2025-12-15 15:47:07'),
(700, '/storage/files/svCTpLewPzRPRswBaCsPdeGosyMWJJj6KRMOgMPF.jpg', '523', '2025-12-17 12:38:14', '2025-12-17 12:38:14'),
(701, '/storage/files/Y7yC7iXXjnIsb6od4tdYl5NM1M0a1eSjeT2OZ2Ja.jpg', '523', '2025-12-17 12:38:14', '2025-12-17 12:38:14'),
(702, '/storage/files/iVn3sUKLVuVmhzfnfQ0FImSs0h0uFp4M5URWV3AR.jpg', '523', '2025-12-17 12:38:14', '2025-12-17 12:38:14'),
(703, '/storage/files/sxpoHp2RHJomk2ZOkGuFBRRXCIe2PBaPP10h70By.jpg', '523', '2025-12-17 12:38:14', '2025-12-17 12:38:14'),
(704, '/storage/files/qC5LGV94Im76ecX3T5hvPIRj4hc6Xf8tC1fn9c6q.jpg', '524', '2025-12-17 12:39:58', '2025-12-17 12:39:58'),
(705, '/storage/files/mTrrurU4BhejE8nBe6JUdh2ntMCzBEgZKZXiJcBr.jpg', '524', '2025-12-17 12:39:58', '2025-12-17 12:39:58'),
(706, '/storage/files/spa1FC46RjyA76qr0AYDedvdLzN0sV2Q6uh0GDuK.jpg', '524', '2025-12-17 12:39:58', '2025-12-17 12:39:58'),
(707, '/storage/files/hgF4nWHFQqyGbBDsByGPHsLHfkajuPaPI1CUwdwH.jpg', '524', '2025-12-17 12:39:58', '2025-12-17 12:39:58'),
(708, '/storage/files/NTj6HmBpwQn1tG8rHUglVYNvxprxgHCelKwWWiCk.jpg', '525', '2025-12-17 12:45:13', '2025-12-17 12:45:13'),
(709, '/storage/files/tWXN1he8lZ6Dz1mah2CzcYcyHyyKwqDqNQ64andQ.jpg', '525', '2025-12-17 12:45:13', '2025-12-17 12:45:13'),
(710, '/storage/files/t9bG9Js9E7NruDRlOo2rkkqMz7YEnn1Lxk4r4tJx.jpg', '525', '2025-12-17 12:45:13', '2025-12-17 12:45:13'),
(711, '/storage/files/1wobd7RiKNSq6kxkwncngpbgWoz7mjFFbwP1fqUB.jpg', '525', '2025-12-17 12:45:13', '2025-12-17 12:45:13'),
(712, '/storage/files/AOItx00Rt6bAJInnDGrjTJZkeBpmvC5ECjzgffLU.jpg', '526', '2025-12-17 12:45:39', '2025-12-17 12:45:39'),
(713, '/storage/files/DGHWYx5reGUpqzxGdNpJzKI2UQZN83UHyUdNNmO4.jpg', '526', '2025-12-17 12:45:39', '2025-12-17 12:45:39'),
(714, '/storage/files/RiN0cVwfO8SEwRTO0JsJaIypHYLWgAaanmZhIuR6.jpg', '526', '2025-12-17 12:45:39', '2025-12-17 12:45:39'),
(719, '/storage/files/UuNVaTwE4l4iYcJ7KNywPMCVXdBMkyxayWDZsoa8.jpg', '528', '2025-12-17 12:46:21', '2025-12-17 12:46:21'),
(720, '/storage/files/j1HKhth6NYpT1y0AhLZC0BMkgrGjRLCks89UsZzR.jpg', '528', '2025-12-17 12:46:21', '2025-12-17 12:46:21'),
(721, '/storage/files/61S8KmPnZeMqEwI849EE3Nhc12lGPOLOFtCATeyX.jpg', '529', '2025-12-17 12:46:52', '2025-12-17 12:46:52'),
(722, '/storage/files/mq96BdxbIcEu9cWMfCG0n9gYuioaDDazZD7mhQ75.jpg', '529', '2025-12-17 12:46:52', '2025-12-17 12:46:52'),
(723, '/storage/files/YIxbkL3Tr5x17X0qFaRVQx1yeaqpVeLJ5mueIUeu.jpg', '529', '2025-12-17 12:46:52', '2025-12-17 12:46:52'),
(724, '/storage/files/wlieqD6mEO3EzMCSiFISafUmAwapwWlxW45AAOda.jpg', '529', '2025-12-17 12:46:52', '2025-12-17 12:46:52'),
(728, '/storage/files/9dDQHmAxQyK0RHvXqqcdmN7gcomswJGzF0lUXV0n.jpg', '527', '2025-12-17 14:14:10', '2025-12-17 14:14:10'),
(729, '/storage/files/6dv6zdjA0NlSaqWRAwKHNuJKi0osCVLD246iTabs.jpg', '527', '2025-12-17 14:14:10', '2025-12-17 14:14:10'),
(730, '/storage/files/cbDQxHRIG8p7ymfeZUqhNebgSHq7lDBtRuZO0ymy.jpg', '527', '2025-12-17 14:14:10', '2025-12-17 14:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(271, 406, 431, '2022-07-11 07:31:05', '2022-07-11 07:31:05'),
(272, 406, 432, '2022-07-11 07:31:07', '2022-07-11 07:31:07'),
(273, 406, 429, '2022-07-11 07:36:26', '2022-07-11 07:36:26'),
(304, 420, 471, '2022-07-14 10:47:07', '2022-07-14 10:47:07'),
(312, 440, 469, '2022-07-15 08:58:40', '2022-07-15 08:58:40'),
(314, 440, 503, '2022-07-15 08:59:15', '2022-07-15 08:59:15'),
(317, 443, 510, '2022-07-15 10:08:03', '2022-07-15 10:08:03'),
(318, 443, 471, '2022-07-15 10:08:16', '2022-07-15 10:08:16'),
(319, 443, 469, '2022-07-15 10:08:17', '2022-07-15 10:08:17'),
(320, 443, 470, '2022-07-15 10:08:20', '2022-07-15 10:08:20'),
(323, 444, 469, '2022-07-15 10:47:34', '2022-07-15 10:47:34'),
(324, 444, 471, '2022-07-15 11:41:12', '2022-07-15 11:41:12'),
(331, 419, 471, '2022-07-16 05:59:20', '2022-07-16 05:59:20'),
(333, 419, 470, '2022-07-16 06:40:50', '2022-07-16 06:40:50'),
(335, 420, 470, '2022-07-18 11:02:17', '2022-07-18 11:02:17'),
(336, 449, 516, '2025-12-15 16:01:11', '2025-12-15 16:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_uz` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name_uz`, `created_at`, `updated_at`, `name_en`, `name_ru`) VALUES
(16, 'G\'isht', '2022-07-08 00:03:04', '2022-07-08 00:03:04', 'Brick', 'Кирпич'),
(17, 'Beton', '2022-07-08 00:03:28', '2022-07-08 00:03:28', 'Concrete', 'Конкретный'),
(18, 'Panel', '2022-07-08 00:04:29', '2022-07-08 00:04:29', 'Panel', 'Панель');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `parentID` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `parentID`, `created_at`, `updated_at`) VALUES
(201, 'delete', NULL, 'test', NULL, '2022-07-19 04:05:53', '2022-07-19 04:05:53'),
(202, 'Suyunbek', NULL, 'Test2', NULL, '2022-07-19 05:30:22', '2022-07-19 05:30:22'),
(203, 'Suyunbek', NULL, 'hahahahahhha', NULL, '2022-07-19 05:30:31', '2022-07-19 05:30:31'),
(204, 'Suyunbek', NULL, '123456789', NULL, '2022-07-19 05:32:20', '2022-07-19 05:32:20'),
(205, 'Suyunbek', NULL, 'Test 3', NULL, '2022-07-19 05:32:27', '2022-07-19 05:32:27'),
(206, 'Suyunbek', NULL, 'Test 4', NULL, '2022-07-19 05:34:26', '2022-07-19 05:34:26'),
(207, 'Suyunbek', NULL, 'Test 5', NULL, '2022-07-19 05:34:35', '2022-07-19 05:34:35'),
(208, 'Suyunbek', NULL, 'test 6', NULL, '2022-07-19 05:35:29', '2022-07-19 05:35:29'),
(209, 'Suyunbek', NULL, 'test 7', NULL, '2022-07-19 05:35:38', '2022-07-19 05:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_13_144417_create_abouts_table', 2),
(6, '2022_02_14_102008_create_permission_tables', 3),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 4),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 4),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4),
(10, '2016_06_01_000004_create_oauth_clients_table', 4),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4),
(12, '2022_05_17_050532_create_clients_table', 4),
(13, '2022_05_19_120821_create_products_table', 4),
(14, '2022_05_23_042554_create_regions_table', 4),
(15, '2022_05_23_042639_create_cities_table', 4),
(16, '2022_05_23_074941_create_categories_table', 4),
(17, '2022_05_23_115610_create_repairs_table', 4),
(18, '2022_05_23_115648_create_materials_table', 4),
(19, '2022_05_23_122619_create_sales_table', 4),
(20, '2022_06_04_045610_create_comments_table', 5),
(21, '2022_06_04_120834_create_retings_table', 5),
(22, '2022_06_04_121029_create_likes_table', 5),
(23, '2022_06_06_115724_create_images_table', 5),
(24, '2022_06_07_073023_create_areas_table', 5),
(25, '2022_06_07_091437_create_videos_table', 5),
(26, '2022_06_20_093630_create_s_m_s_table', 6),
(27, '2022_06_22_070131_create_potpiskas_table', 7),
(28, '2022_06_27_044823_create_logos_table', 8),
(29, '2022_06_28_115734_create_partnericons_table', 9),
(30, '2022_06_29_090439_create_colors_table', 10),
(31, '2022_07_11_120556_create_messages_table', 11),
(32, '2022_07_12_171648_create_documents_table', 12),
(33, '2022_07_14_071139_create_advertisements_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 38),
(2, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 4),
(6, 'App\\Models\\User', 16);

-- --------------------------------------------------------

--
-- Table structure for table `networks`
--

CREATE TABLE `networks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `networks`
--

INSERT INTO `networks` (`id`, `telegram`, `instagram`, `created_at`, `updated_at`, `icon`) VALUES
(4, 'https://github.com/Ravshanbekov/AfemeUz', 'https://github.com/abdullox0900/afeme', '2025-12-15 14:24:06', '2025-12-15 14:24:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0066ca30abafd01fb2758df2fa04d3f315ebe496e61589a143108cd4a3b5fb68c3a2a68bfbffd0f8', 163, 1, 'Laravel', '[]', 0, '2022-06-11 01:22:41', '2022-06-11 01:22:41', '2022-12-11 06:22:41'),
('00aba0fed51004301ceec8d7354e2646d2376e4fdd3eda79081388df8a75a3ede8e272eb4ad62f05', 395, 1, 'Laravel', '[]', 0, '2022-07-08 00:46:08', '2022-07-08 00:46:08', '2023-01-08 05:46:08'),
('01249bc02d61359e2da0b176e89e59898f269f9e182a139d1a2a3a9b4d2067df6117a87e0f906062', 4, 1, 'Laravel', '[]', 0, '2022-06-01 06:08:53', '2022-06-01 06:08:53', '2022-12-01 11:08:53'),
('018b0fb8d7fe7a44f51f8b01fd2040feff1e36cf93c98fbecc8d6c33b9ed01f041c64c698e5475ec', 322, 1, 'Laravel', '[]', 0, '2022-06-15 13:50:16', '2022-06-15 13:50:16', '2022-12-15 18:50:16'),
('0240c43bdb503bc7a67311908de9f325ed19d53809a14bd2d05e68519dd87b726e73cc355b3f676e', 302, 1, 'Laravel', '[]', 0, '2022-06-14 06:27:00', '2022-06-14 06:27:00', '2022-12-14 11:27:00'),
('03aca042478a1ea4fd805955674964326c63324472f3ac00d7d62cd1369e08e92df5f9de7afce093', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:07', '2022-06-16 00:37:07', '2022-12-16 05:37:07'),
('0404ddce14081cabb40d07e80b5d0f53ab20ef96198db9b6bdf7ebfed5d07549d74ac1542c567957', 373, 1, 'Laravel', '[]', 0, '2022-07-04 23:48:54', '2022-07-04 23:48:54', '2023-01-05 04:48:54'),
('046104baf33c3abd7d86764333d83a9d8e8c59b9798ba674ee43e7a9cf0c854c9880eb61aeb5ac63', 14, 1, 'Laravel', '[]', 0, '2022-06-02 23:48:41', '2022-06-02 23:48:41', '2022-12-03 04:48:41'),
('04628dc5259f163a7c4cbc5a68ecd3316e08042c878a20afecf46c401486db0b1b8fdced42c9784c', 348, 1, 'Laravel', '[]', 0, '2022-06-16 05:59:48', '2022-06-16 05:59:48', '2022-12-16 10:59:48'),
('04dd0f2e8e7235be32381ea0dfc27965dfa278ed509ad2c0e5b92700fc2e93e683205379396eeeb3', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:22', '2022-06-16 00:38:22', '2022-12-16 05:38:22'),
('0527287414d2b3c22954449d38799a0297bd132e932218e6c986e1568457de9cbfa97bdb148c7434', 193, 1, 'Laravel', '[]', 0, '2022-06-12 14:01:29', '2022-06-12 14:01:29', '2022-12-12 19:01:29'),
('05f16e147239a6b4c0f4629d94f421eec34d475f2c0eab0f7dda2c8e452b9c23cc404b9c84c02fde', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:59', '2022-06-16 00:38:59', '2022-12-16 05:38:59'),
('06c216ec3cd6d462ed6f208e9d6418d29b53c3733ad1a6ab257de68f6491be16f31748434e526192', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:08', '2022-06-16 00:36:08', '2022-12-16 05:36:08'),
('074463c3e5e912e299516807c50fc51018fd9c9a91b4fdcbda350b88c806602c5ccc234442a64d87', 143, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:53', '2022-06-11 01:16:53', '2022-12-11 06:16:53'),
('0758c5d1a0b99a1441ae92685cfa47c79060567f93c118993b862f19e2883fd54f9d781fc9e70943', 169, 1, 'Laravel', '[]', 0, '2022-06-11 05:40:43', '2022-06-11 05:40:43', '2022-12-11 10:40:43'),
('084fc5deafcf05532c52f4a8eaf01df5c49b373672be0db431eaef1e70a67b59aee0e13ea3c3e2b8', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:31', '2022-06-16 00:41:31', '2022-12-16 05:41:31'),
('085c3d04c636933fd8830ac15ce6f45ad433cad899c1b30721faeca032ee5e73519d72d699d63bf6', 347, 1, 'Laravel', '[]', 0, '2022-06-16 04:18:59', '2022-06-16 04:18:59', '2022-12-16 09:18:59'),
('08cc09d0606cc5c3d7e9299372e59a7c06078e2d5c8bbd090090d6139ec7f59f9dd8d34587c0ec46', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:26:59', '2022-06-11 05:26:59', '2022-12-11 10:26:59'),
('08e19de20263af5d27f26b7d674d9b648b14e483436aa7076957dc38d7fb1c35e4bbe531926c9b61', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:33:27', '2022-06-20 07:33:27', '2022-12-20 12:33:27'),
('0917ef22b42347352e4d2498d345b26a3b052b5cfcea5a5e85a61018f0801691dd2240d6923d9eaa', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:31:18', '2022-06-20 07:31:18', '2022-12-20 12:31:18'),
('09eaabf3ff96f3221d1b08b521eb04fcbe57d14a69f4395d28f49a1d8d81dcdf1181a989d22613dd', 345, 1, 'Laravel', '[]', 0, '2022-06-16 04:16:42', '2022-06-16 04:16:42', '2022-12-16 09:16:42'),
('0a19873fc19876fe7ab3aae109e1c39d41c1a1111efe620579f1beed577d06bfb82a7f4c5b85295c', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:36:10', '2022-06-12 11:36:10', '2022-12-12 16:36:10'),
('0a4eb568af940b4666aa724caf464e2b74d545b31de0298bd300d1eb8cdbd76d98d88838b5b6f375', 45, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:06', '2022-06-07 06:17:06', '2022-12-07 11:17:06'),
('0a69739ae48e04afcf1018bbbb37d02933f9000b162d638f053ffed2827afe72391bb6d76b538d79', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:40', '2022-06-16 00:38:40', '2022-12-16 05:38:40'),
('0aa6d0f0334721d9da47a5e7ce61dff85ff60b3a879a255de21af76e45fe20548532362bec1b0f84', 440, 1, 'Laravel', '[]', 0, '2022-07-15 06:40:07', '2022-07-15 06:40:07', '2023-01-15 11:40:07'),
('0b1c72234d1a583da6bb08a830407729846b7bb7a9312c78cb181fec199f56c577690279016e90a9', 264, 1, 'Laravel', '[]', 0, '2022-06-14 04:25:35', '2022-06-14 04:25:35', '2022-12-14 09:25:35'),
('0c2475d611da5ef52f7c2989e9a4adebc71a6096b2c8c69c3281f62c7be1eebb4484f941b1a16d04', 200, 1, 'Laravel', '[]', 0, '2022-06-14 03:21:46', '2022-06-14 03:21:46', '2022-12-14 08:21:46'),
('0ca67ac9bf70c2a20aa0dc7cab1adc3d1b396fbfed32c9c8823154d98e33139eaed3a4640d724ae9', 357, 1, 'Laravel', '[]', 0, '2022-06-21 01:59:11', '2022-06-21 01:59:11', '2022-12-21 06:59:11'),
('0ce09443992a8da4906522e23f2eecba447018a13ec2aa2cb9cd4d16f9ddb44596394e4cead39b99', 132, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:51', '2022-06-11 01:16:51', '2022-12-11 06:16:51'),
('0d1656c80115567caa7e29e48d769c23670eb701f8076b9758cfd0602da44d4ecfeaf73c8207a6ce', 18, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:37', '2022-06-07 06:16:37', '2022-12-07 11:16:37'),
('0d2a629f59df1431cfbd2e7d6c540ad9cfb82ee5cc714457f9b4b11935ee3c891131355b53117ea2', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:07', '2022-06-16 00:37:07', '2022-12-16 05:37:07'),
('0d4f19643e812bff48f1b71635e8dd2f62e5fc47ba1539ae0b7f80f0e94e9770b19ca2ff7d9838c6', 145, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:59', '2022-06-11 01:16:59', '2022-12-11 06:16:59'),
('0d7792b2fff917f05e92d9c65762dbab7d5b729bd162d6a90cf67f59785fb156fefa830dff555c4d', 20, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:38', '2022-06-07 06:16:38', '2022-12-07 11:16:38'),
('0de1225f90f8c1f3332240b0a9bde06b2537300805acddf38aab54835d33ac5eb6134c6f9da150db', 74, 1, 'Laravel', '[]', 0, '2022-06-09 05:00:46', '2022-06-09 05:00:46', '2022-12-09 10:00:46'),
('0e1be0cca2a5aa8b6654cc5b2b7720cd45ad14459b476c4cda2732c7c47a6f317f5a4ff49196ca54', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:01', '2022-06-11 05:27:01', '2022-12-11 10:27:01'),
('0e1e938498e67797f1e4f68625877c9b3a4b86a6d56dad4f54e031f5404ade552d94de3769bd409c', 387, 1, 'Laravel', '[]', 0, '2022-07-06 07:17:11', '2022-07-06 07:17:11', '2023-01-06 12:17:11'),
('0e36a9bdf8a86b303cabdcd0a396d2dfe2ad9fb8ed55221f5a5bb7627d984b6f3ecfa1f181df3f2a', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:28', '2022-06-16 00:37:28', '2022-12-16 05:37:28'),
('0e6d25e33683b3e25aaf86a4dcafc27c648fcad9a2d4dcada7e846cb36335cf2dde722cce9751a3a', 321, 1, 'Laravel', '[]', 0, '2022-06-15 13:38:46', '2022-06-15 13:38:46', '2022-12-15 18:38:46'),
('0e7f8699778f5167b0c175245d31464e6e4c4160a95304c1822befab7b69f485096bda8134bc62f2', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:52:51', '2022-06-20 05:52:51', '2022-12-20 10:52:51'),
('0ef976a2a7be365ecd158518ffe2b7e4e4a86e2522e4a7053888356e4c3d47dfe3e0b09fb7fc35d8', 195, 1, 'Laravel', '[]', 0, '2022-06-20 03:52:24', '2022-06-20 03:52:24', '2022-12-20 08:52:24'),
('0f60c2f4eba33a596719abf952cd130022acc984cd1f454056f2eb81d23fd8eb9dab2f7d83efbb2e', 427, 1, 'Laravel', '[]', 0, '2022-07-15 05:48:51', '2022-07-15 05:48:51', '2023-01-15 10:48:51'),
('0f7ddeccc6d07f3c965d062bf60da7965ee5180a54ec10a1e77afb6344598f7edace5bfc9c3dfdc7', 417, 1, 'Laravel', '[]', 0, '2022-07-14 08:51:55', '2022-07-14 08:51:55', '2023-01-14 13:51:55'),
('0f9885f80dfd4f8119b85d648ece2acf70151fa6a7cfe803828cc61f3e4652c1fbd6a4ec66f39bad', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:47', '2022-06-16 00:36:47', '2022-12-16 05:36:47'),
('10187a825d2f391937e26edeb5fa09ee4ef26ddebbfb6d78737c86c3b868fc502dbfc85d21013e06', 416, 1, 'Laravel', '[]', 0, '2022-07-13 05:56:20', '2022-07-13 05:56:20', '2023-01-13 10:56:20'),
('101a18c1cbc4b2a0871756570d8bb3cf384bf88d9078e1cabccc9dc51503cb21113a528e2abfe45c', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:24', '2022-06-16 00:37:24', '2022-12-16 05:37:24'),
('109c9b595898c3ca6af90ec466c72dbe187b422deaf7c24a3fa1d8a2b16796f6f7e7bc0395025b2f', 195, 1, 'Laravel', '[]', 0, '2022-07-04 02:04:07', '2022-07-04 02:04:07', '2023-01-04 07:04:07'),
('109db07cefdb64cf66cd3101cb3a25dbfba9493fdeba5f23722bda833d1625e2e90a24ca4db934d0', 415, 1, 'Laravel', '[]', 0, '2022-07-13 05:41:11', '2022-07-13 05:41:11', '2023-01-13 10:41:11'),
('1100c96e862f95592fc4a8c12d3c7b2187263c7ddb5c18b592d6d5b5ec05883328a326c790d6f2c7', 195, 1, 'Laravel', '[]', 0, '2022-06-25 01:28:00', '2022-06-25 01:28:00', '2022-12-25 06:28:00'),
('115961c242d6e145ce9853d34c01544fb615219ec5250c5ff3a2b0f7d688422d1bfe9c4bc2363848', 54, 1, 'Laravel', '[]', 0, '2022-06-07 06:19:21', '2022-06-07 06:19:21', '2022-12-07 11:19:21'),
('118c137a0cb8041ca101936a347c3741c6da2ca4f18c084531011bc8a3f32d131860255ea0041fd4', 128, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:50', '2022-06-11 01:16:50', '2022-12-11 06:16:50'),
('123bf888d270d06684d88796bb95558657bdaae69a439701d8bc56834673505579cfe86cf3f980c8', 396, 1, 'Laravel', '[]', 0, '2022-07-08 01:24:18', '2022-07-08 01:24:18', '2023-01-08 06:24:18'),
('12c3fe25d49642cc4587b0b61798a3f95c634d00e8c00487982b6e3927c94ec996674fe2c2a35469', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:06', '2022-06-16 00:36:06', '2022-12-16 05:36:06'),
('131622fea2b3a35166a71209f5ce3b6464d278a3bde132f563212880ed3ed2f420e2a96ce39158ea', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:44', '2022-06-16 00:36:44', '2022-12-16 05:36:44'),
('1317abd5d16c0198ef44ab01a90530abc38e0949222abacf281946462df05cb87dbb0c11b8bfd373', 116, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:39', '2022-06-11 01:16:39', '2022-12-11 06:16:39'),
('13222dccd90f50f13caa3a1cd94cd53eaad29404aea5138874e43e6153dbd118e7ca013240219fb8', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:39:00', '2022-06-16 00:39:00', '2022-12-16 05:39:00'),
('134b1aba74b8f8bb558fe443e3d6fc316db35b374c9aca1ae55c1d85f17ce9ee77e3a5d5f4ba1f02', 172, 1, 'Laravel', '[]', 0, '2022-06-11 03:46:25', '2022-06-11 03:46:25', '2022-12-11 08:46:25'),
('1378291736c26257287386dce9fbdfe33a2400792c7bb8ee3ceb6507525a9cb89032e5044e0a8b35', 374, 1, 'Laravel', '[]', 0, '2022-07-05 00:48:19', '2022-07-05 00:48:19', '2023-01-05 05:48:19'),
('141527f9d9ccdc86a5fe2ef0bf43a660aae881c79632205a63a52a4add4c1ba931741e15a406c9d9', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:20', '2022-06-16 00:38:20', '2022-12-16 05:38:20'),
('1466ff740aa425f62823b801a77fcb57dec850b6459f9084c1f687f45aceda8a655c1ea9500102a4', 127, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:50', '2022-06-11 01:16:50', '2022-12-11 06:16:50'),
('168109f2c44f323ed11dae990265f7c88a0128cc8df7b79a6af6a26bb003f9e37a9d41ce775496d9', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:46', '2022-06-16 00:36:46', '2022-12-16 05:36:46'),
('168880f100b94f6b79a3f3da8f1fb9b21ec1ed048afeaedc86706d6c8123e16a94a51432905b560a', 183, 1, 'Laravel', '[]', 0, '2022-06-11 04:49:31', '2022-06-11 04:49:31', '2022-12-11 09:49:31'),
('1692b37c6c465c75d9827180c7179a5ca4b07686bd21b1a2618aa18c5eb0b313693c3ed41dfffb43', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:06', '2022-06-16 00:36:06', '2022-12-16 05:36:06'),
('16c331df5041d608a0d0182ebdaf06abc774dfe8f8422980bddd124fbc9845606be744c7a9d700b2', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:01', '2022-06-11 05:27:01', '2022-12-11 10:27:01'),
('16dfb2a41587ce76e23f10b817b06b3d2ee3b935029cba06c2ade269e2ebe952401d8df3f1eed804', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:47:31', '2022-06-20 05:47:31', '2022-12-20 10:47:31'),
('17f605dd4dab83361bd5b1fab262a53a6f7091db12c34085ee5bf55c8aee409a26ce7573447fffd3', 195, 1, 'Laravel', '[]', 0, '2022-06-24 06:57:30', '2022-06-24 06:57:30', '2022-12-24 11:57:30'),
('1830277cae133613af3903230cd73183f71de64e00a0456666f3a18cdb29c83b975b560f780af45c', 64, 1, 'Laravel', '[]', 0, '2022-06-08 00:11:46', '2022-06-08 00:11:46', '2022-12-08 05:11:46'),
('18598ad9a2294bd4c47d553714b5f61fecaa09010f7dec17432d28ed287d39114f9382724a7a3558', 44, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:06', '2022-06-07 06:17:06', '2022-12-07 11:17:06'),
('18d7c3956b75950b7baa200e4b208b6407d78278799d5a74691cb2a05f9c95b46b9f42728e1b553d', 195, 1, 'Laravel', '[]', 0, '2022-06-17 06:07:49', '2022-06-17 06:07:49', '2022-12-17 11:07:49'),
('19184218cdc7d33e593b6183ef84d74f90d66454c2c0ffe4c1e043cb7914e296e675821a737b2f7f', 3, 1, 'Laravel', '[]', 0, '2022-06-01 05:24:03', '2022-06-01 05:24:03', '2022-12-01 10:24:03'),
('195d7098d3451a1e9a1ef9d65ea8d887449b453d997cacfe824dacc4e6090920ee1072a122892736', 148, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:00', '2022-06-11 01:17:00', '2022-12-11 06:17:00'),
('198986f0098c9add82de602c8b534f41f3c37f9fdec81df82bfb13403b3bb5ba58fabe430b609925', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:48:38', '2022-06-20 05:48:38', '2022-12-20 10:48:38'),
('1a13bb7d1e2c7aaa90d20b2a74e2e3da71009554813adaebb3902bc3606099c047ea9dec1bfc89c4', 69, 1, 'Laravel', '[]', 0, '2022-06-08 04:57:59', '2022-06-08 04:57:59', '2022-12-08 09:57:59'),
('1a1d8af52ebc593d9ce7a0d6f5785e7a695c8b72bb2d2581a2349f305a708d07f24d2197876d3849', 49, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:07', '2022-06-07 06:17:07', '2022-12-07 11:17:07'),
('1a61d0aff4639599260768ffde5b1c2cb6461cfc5c023a44abcee8d1d1de0fd608461b77b663ef04', 133, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:52', '2022-06-11 01:16:52', '2022-12-11 06:16:52'),
('1a87116b280b05f2c5f0bfd5a511d6bab4350dfb364e54ca71e760a7561c0a59394a3e130054f221', 169, 1, 'Laravel', '[]', 0, '2022-06-12 04:50:25', '2022-06-12 04:50:25', '2022-12-12 09:50:25'),
('1bbb16de4dfb127064d4e2285cd8ff486cc62babb7bdb04cc4392c78391a218cacaca156a1dfbc16', 157, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:11', '2022-06-11 01:17:11', '2022-12-11 06:17:11'),
('1cb0ab0ad17c9e43aa13f0b125ab78391a8dcd90763a31846299c5706d85e4d4087e6cde13ac3a99', 195, 1, 'Laravel', '[]', 0, '2022-06-25 04:47:16', '2022-06-25 04:47:16', '2022-12-25 09:47:16'),
('1cdc6ab51079296a175e11639755b07956cca82227246eeb4094505c17c2959a1768c4e759807b6d', 315, 1, 'Laravel', '[]', 0, '2022-06-15 13:13:21', '2022-06-15 13:13:21', '2022-12-15 18:13:21'),
('1d016c1eaefe265f96c19c0b4e2bff3d7c46a4e5aa5c4286cf9b297aae7d728ba8564d3e0d3c1426', 403, 1, 'Laravel', '[]', 0, '2022-07-11 06:04:52', '2022-07-11 06:04:52', '2023-01-11 11:04:52'),
('1d733ef3468873dd17f36d868fdd5b91505d55689bac3937d81d5a37fc7c58ebd1e06076a0a4727c', 126, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:50', '2022-06-11 01:16:50', '2022-12-11 06:16:50'),
('1d806fcb6196e41650637f1dff2ee75fa78e1a6c3bbba0df766f60421578830fc830deecae787168', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:45:01', '2022-06-16 00:45:01', '2022-12-16 05:45:01'),
('1da6cba2d79c5053c646e74a878376e993823d02b37afe8a50089a25f2f15363c090bbee287b876b', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:21', '2022-06-16 00:38:21', '2022-12-16 05:38:21'),
('1dc12f4ec885569b13a4c1ad54d894eb9615ba7537dac6784c3fff74b3d85e2d08c657bbdd2b6808', 405, 1, 'Laravel', '[]', 0, '2022-07-11 07:23:24', '2022-07-11 07:23:24', '2023-01-11 12:23:24'),
('1dde8fc6f6676b2fb09f4981fe3caea7cfcaa003f74738a4fcc54b35baed36a0e7f1b2505e91cf11', 406, 1, 'Laravel', '[]', 0, '2022-07-11 07:30:42', '2022-07-11 07:30:42', '2023-01-11 12:30:42'),
('1e9a3e1e427026871a1e5c00927a9ca2f647b8320525bdc20e4f791debd2773b1188746c37bb5dd8', 413, 1, 'Laravel', '[]', 0, '2022-07-12 12:51:19', '2022-07-12 12:51:19', '2023-01-12 17:51:19'),
('1edd992909d3d9d60039cdc129f3eeac9c090e87e6345fbdcea6c2db87c5757e71d21144bba1df62', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:22:40', '2022-06-11 05:22:40', '2022-12-11 10:22:40'),
('1fc880630f0b2562e2ae0e6dc331082b009add0e4794530358f2fc627f1253e8cabe654b9a3d28e0', 47, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:06', '2022-06-07 06:17:06', '2022-12-07 11:17:06'),
('1fd69096bf9925039a1ba04fd7a6e51a5c230e3118a56a577d6d99cd7bcc1bc160871b39c07b5576', 373, 1, 'Laravel', '[]', 0, '2022-07-07 05:55:39', '2022-07-07 05:55:39', '2023-01-07 10:55:39'),
('1fda74c7a43a508754e373a17fd8c55eb62fdea826e505103feac9fe904266928867d9c27d9512fd', 48, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:06', '2022-06-07 06:17:06', '2022-12-07 11:17:06'),
('20a45739db9473ff527772b1800d3be5843d99cca119fb1c428e4cd565ec80e832bae4656703a3ea', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:24', '2022-06-16 00:38:24', '2022-12-16 05:38:24'),
('20b06c5b8460df127a0f12c266dc95cacbfe3f37b838445ae5aa58b8733388e6b0e46434411108d5', 390, 1, 'Laravel', '[]', 0, '2022-07-07 06:40:34', '2022-07-07 06:40:34', '2023-01-07 11:40:34'),
('20b3d8b4313c5c0c95cdaa31b407bcad1c9b7e5e472f1e33a2b238794f002e0a9b9ab6f99e7f85d7', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:17', '2022-06-16 00:38:17', '2022-12-16 05:38:17'),
('214ca9700f7e1322c8459c3579b593ae3c6c710c9a36130215f774e61577d76ab15fa52087f83c6d', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:22', '2022-06-16 00:38:22', '2022-12-16 05:38:22'),
('2155564778a50a7051476972307d0e5c2c861d07a9ee0de39b41cb5dba9c3cfead025a5078ed645c', 195, 1, 'Laravel', '[]', 0, '2022-06-16 04:16:51', '2022-06-16 04:16:51', '2022-12-16 09:16:51'),
('215b99efc90acedba419593eff0a97ec8946d3bb92b406f9d9397524ece3bf514ca2272e00aeb195', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:46', '2022-06-16 00:36:46', '2022-12-16 05:36:46'),
('21cbf92b09e067454f50ac4add2611a945051b75358e42f9e779dab0f812a9ca15f43ccf78e60468', 122, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:49', '2022-06-11 01:16:49', '2022-12-11 06:16:49'),
('226ae8c766e811792c08f220f25188d5c1274b0aed6f0bf27c40c7f6f798b90678887ffeee05707b', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:21:32', '2022-06-20 07:21:32', '2022-12-20 12:21:32'),
('2330e38fbc076a70b82248462f7b0294a92517ae8bbdf65b85775e41b4adc347c234b37a46a44e31', 437, 1, 'Laravel', '[]', 0, '2022-07-15 06:00:07', '2022-07-15 06:00:07', '2023-01-15 11:00:07'),
('23360f80010c4d5a1c9f7e5cbb99bd7ed4135daa6a40a82d2ee4152bd7f532cc322afd89af5b68d8', 318, 1, 'Laravel', '[]', 0, '2022-06-15 13:37:48', '2022-06-15 13:37:48', '2022-12-15 18:37:48'),
('23f796216f47ea66bf8b0e91c88a6914d9473abeeccd0e3c0a2423f47d48724adb29bb2843fb0974', 359, 1, 'Laravel', '[]', 0, '2022-07-04 03:36:15', '2022-07-04 03:36:15', '2023-01-04 08:36:15'),
('242366d9cbc2d4b70f53f684501965e64088c5928784ffaf2ce56debed6bb8c2dca07b11f13acb7a', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:45', '2022-06-16 00:36:45', '2022-12-16 05:36:45'),
('24444e79b1172bdbc0bd4fdf94c29eea6beb5f973a13671da110ce5746337e9ce9a2f64b0ba9c7f6', 186, 1, 'Laravel', '[]', 0, '2022-06-11 06:02:16', '2022-06-11 06:02:16', '2022-12-11 11:02:16'),
('26782a800329e9ab7313c9cb8fa34e0a063023b31c13f1033b3ae761b0b8383c8213f8e05ecaca05', 320, 1, 'Laravel', '[]', 0, '2022-06-15 13:38:19', '2022-06-15 13:38:19', '2022-12-15 18:38:19'),
('26c4cc5921c5173216d7c209f01274256559aa96fa3a64d81b3c25ca48aaf4b35a499688d1c09a79', 310, 1, 'Laravel', '[]', 0, '2022-06-15 05:19:24', '2022-06-15 05:19:24', '2022-12-15 10:19:24'),
('26e9c66581ad72341ffd7c2bfb5779121f2538971cbcb3998d108c891dace76a95559d8866acd864', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:28:38', '2022-06-20 07:28:38', '2022-12-20 12:28:38'),
('26f56625b510dce11d6514ac9ab0a7fb813444413a8dfe8f121f799d9b7a81ce7dc859f1ac255290', 195, 1, 'Laravel', '[]', 0, '2022-06-20 02:52:29', '2022-06-20 02:52:29', '2022-12-20 07:52:29'),
('274b82bf4103c13921d78dd0d01a1cc2e71191c4610e94a1593f29076a0f189ef6edb249d5f3cf93', 411, 1, 'Laravel', '[]', 0, '2022-07-13 05:58:20', '2022-07-13 05:58:20', '2023-01-13 10:58:20'),
('278166139fe92d006d70d02b7fda7f459dc2bcd7751ae69778d12f70ac61c02a35b2dad22d502dee', 123, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:50', '2022-06-11 01:16:50', '2022-12-11 06:16:50'),
('27d9b678ea10a79059b210ed910e004caade88242491b1e3b245da133e6402365576da8b7b720c73', 279, 1, 'Laravel', '[]', 0, '2022-06-14 04:58:02', '2022-06-14 04:58:02', '2022-12-14 09:58:02'),
('27f54882c73e94fba101584402d44c9650829670ee2ac68e775e3b8f14db0532df8a8251f7f36dff', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:07', '2022-06-16 00:36:07', '2022-12-16 05:36:07'),
('280941ed490912480d4a4090a293c6692b451fadcc7c9d05200b49d9cd4cbafb63b2cf5eed81987c', 326, 1, 'Laravel', '[]', 0, '2022-06-15 14:22:13', '2022-06-15 14:22:13', '2022-12-15 19:22:13'),
('28b34998905bd978ec245e4a2c40b832f874a9454352716e2998b43ab45a98174559dda1b2a99bd2', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:01', '2022-06-11 05:27:01', '2022-12-11 10:27:01'),
('28f5e87930f25609c95487b36b286bbe5d09b4540c5ae589702254acc0c8efd914fae870d8926469', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:22', '2022-06-16 00:37:22', '2022-12-16 05:37:22'),
('28fab39d4c2b69d97f4003421f7ca1117f52922a5f34797f692db2bfd030cbfc0ac2adfb60a2cea6', 420, 1, 'Laravel', '[]', 0, '2022-07-18 10:27:50', '2022-07-18 10:27:50', '2023-01-18 15:27:50'),
('294bb71382a0834b4096e3ec2ee4ca6bb17cf32f9940a9cb7584bd7e4672beea51416ead7871342c', 446, 1, 'Laravel', '[]', 0, '2022-07-16 12:45:17', '2022-07-16 12:45:17', '2023-01-16 17:45:17'),
('29a62bec80169d7e3296e21dc30561155a29776de8229b5fd9ac8408ef17668ef59a0d21e2eaa737', 66, 1, 'Laravel', '[]', 0, '2022-06-08 00:46:11', '2022-06-08 00:46:11', '2022-12-08 05:46:11'),
('29c8f212f1937368273c7199ad8f3ed79cb1ecf467d409f641b8e579c1b00456e2f3559a827c01b3', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:38', '2022-06-16 00:41:38', '2022-12-16 05:41:38'),
('2b2943615800702ddae5e55ea8eae87e9260fe0de350dcac2f0b1a1292f71b91a2e4df1cf2d82cc0', 33, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:40', '2022-06-07 06:16:40', '2022-12-07 11:16:40'),
('2b4c9223103062fe5161023889ac1615bfefffe7a3625d6f690f64c2ace6945b59b08604a07c6343', 314, 1, 'Laravel', '[]', 0, '2022-06-15 06:05:33', '2022-06-15 06:05:33', '2022-12-15 11:05:33'),
('2b869f6ef71a747b89a809fdc7104847767127cb8bc4ac0d57f8824a4a8a7b823d3501f8e4870bd9', 380, 1, 'Laravel', '[]', 0, '2022-07-05 23:25:38', '2022-07-05 23:25:38', '2023-01-06 04:25:38'),
('2bac0c68ddb7fbf35cec74c852d7a10e2d37dc999249ee14f44e540d196e980dd2a9e69e6fa4599e', 195, 1, 'Laravel', '[]', 0, '2022-06-16 01:08:33', '2022-06-16 01:08:33', '2022-12-16 06:08:33'),
('2d1ffc273e5d7421f192032d91ab4dcedb1837072dffa5d698c40126a053be2c28be3cf031d13886', 63, 1, 'Laravel', '[]', 0, '2022-06-07 07:43:52', '2022-06-07 07:43:52', '2022-12-07 12:43:52'),
('2e6336ba3b1cefb941464f8831355f62dfd9b591020c464459d6e6ae2ce0d2113d4b49e172f39c92', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:46', '2022-06-16 00:36:46', '2022-12-16 05:36:46'),
('2ea4f9ae3c5e5ff0b47393a06903d6982c3168164f1a2e4c41ca67ced6067738924c8cf6c669a8c9', 419, 1, 'Laravel', '[]', 0, '2022-07-15 09:29:09', '2022-07-15 09:29:09', '2023-01-15 14:29:09'),
('2ebaaf95d96e4da65b63d36875f065af5ab328fd104c82a421dfd0b105dcb09a82fe4de408499f70', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:00', '2022-06-11 05:27:00', '2022-12-11 10:27:00'),
('2f4d98b1d7170ac5842ef4dbbdb57c025dcb3205085ce9ef0f04e4d5e8fe42dffd938b11c928b557', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:06', '2022-06-16 00:36:06', '2022-12-16 05:36:06'),
('3044ca3ace567038503583e0353c927b2e22f37d93ed607c6fe9a59b2a63f5051d1b2abf42622216', 439, 1, 'Laravel', '[]', 0, '2022-07-15 06:01:22', '2022-07-15 06:01:22', '2023-01-15 11:01:22'),
('30cb6cc647c213e918d8837999c0b768a1eaf7e01fac8a988d3d772977eb5b06d8cef7ffbb531993', 417, 1, 'Laravel', '[]', 0, '2022-07-14 08:30:29', '2022-07-14 08:30:29', '2023-01-14 13:30:29'),
('30cd0e05eeb14121d373b7607e82d9bb1c460fefde8fee20a8e321ab9622f2f402aef80f823ffd25', 341, 1, 'Laravel', '[]', 0, '2022-06-16 01:03:23', '2022-06-16 01:03:23', '2022-12-16 06:03:23'),
('311e27afde6941ae23760bdfb4a606a3827056e71aa2a2bd20780e3a049350b6fb4e6684819b751b', 351, 1, 'Laravel', '[]', 0, '2022-06-17 05:32:51', '2022-06-17 05:32:51', '2022-12-17 10:32:51'),
('31275800ee1a2e5ed7b837edad7516f5b1963f1930e9325ac50b3544e9c63c2d3d55316227ee45f6', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:20', '2022-06-16 00:36:20', '2022-12-16 05:36:20'),
('315424365d5c947cfa8178ef009544aa7be6d818ffd926ca02eb88dc479ed85ff74b9c03a48f21c5', 154, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:10', '2022-06-11 01:17:10', '2022-12-11 06:17:10'),
('31be8a7bf3e645e49df3f2aad9288d4a37bb9bd7e43e3daa95ef94811b6b3f1b9ba02a8836fcec34', 195, 1, 'Laravel', '[]', 0, '2022-06-24 06:57:06', '2022-06-24 06:57:06', '2022-12-24 11:57:06'),
('31dcdd93b1c7fdf21acf61395983a20a5296be99833722c42bff239bf19dce8298284e41779123f8', 170, 1, 'Laravel', '[]', 0, '2022-06-11 03:45:07', '2022-06-11 03:45:07', '2022-12-11 08:45:07'),
('32315ad84f09e9f8f9bd8fcbf5605c6f98f5216b69e5bc2af8d4fc67ad0fdf777565846559d5066a', 108, 1, 'Laravel', '[]', 0, '2022-06-11 00:59:17', '2022-06-11 00:59:17', '2022-12-11 05:59:17'),
('32834f6d7d506fbca3da919a58c7ecec3e8ab3f391b6f8b689db03637792c72927e103af5d405002', 195, 1, 'Laravel', '[]', 0, '2022-06-20 03:50:24', '2022-06-20 03:50:24', '2022-12-20 08:50:24'),
('330413b9d9c3b07413cc1eeae0079884b5022039cf9b1fb8750bd7b69365792cabd9537f072166c4', 398, 1, 'Laravel', '[]', 0, '2022-07-11 05:01:22', '2022-07-11 05:01:22', '2023-01-11 10:01:22'),
('3355d1f7a28b708cc34311e5e85f67f96d12e6ae0c4aa31a4a86c04eb5f52bc7c1cd9e1c3e57fb5a', 173, 1, 'Laravel', '[]', 0, '2022-06-11 03:46:58', '2022-06-11 03:46:58', '2022-12-11 08:46:58'),
('3383e5dba60491bc69265daed3dc14b55a648749f02903694d2a05d666f187a6f804737d595e2442', 349, 1, 'Laravel', '[]', 0, '2022-06-16 23:45:53', '2022-06-16 23:45:53', '2022-12-17 04:45:53'),
('33a8a1f8dd22d05dcbfb68b817655042caf1778cdf46d25cd29bf7253330b0e124f50d9c8e58b1a5', 151, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:03', '2022-06-11 01:17:03', '2022-12-11 06:17:03'),
('33ac193fc2195608c8126879d8479bb816aba6fbfc0cf2046e7b60ae6f7d5827f45aba6061cc4fa0', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:46', '2022-06-16 00:36:46', '2022-12-16 05:36:46'),
('3442799b84733d348754e8609684649e907584593dc57ea50da1113730cedc632d006e13a745bc62', 214, 1, 'Laravel', '[]', 0, '2022-06-14 03:45:34', '2022-06-14 03:45:34', '2022-12-14 08:45:34'),
('3470c186ba5b8c703f72b713908f0729d8c8ce2da448237c74269e7b8f7a1e2c49c8989a7d5e5477', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:39', '2022-06-16 00:41:39', '2022-12-16 05:41:39'),
('3480ef5f14c10dc24b76b14bc4a0b71404932863654496f8c82aeff1c5a6e28f02eb204ef89d9ed7', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:06', '2022-06-16 00:36:06', '2022-12-16 05:36:06'),
('35075e19795714075f4cf343e34054d3d1ba2b52521704118427a9264c3bcefff39d5fdb830c1077', 58, 1, 'Laravel', '[]', 0, '2022-06-07 06:59:33', '2022-06-07 06:59:33', '2022-12-07 11:59:33'),
('351ba6214bcec9c58c86ff3b9d925ab52b5c566ae67f5847ee8a111e0798978a9422e8d2bdd4b4f0', 195, 1, 'Laravel', '[]', 0, '2022-06-20 04:00:35', '2022-06-20 04:00:35', '2022-12-20 09:00:35'),
('352984032084c7c5d39ce43cc07d3cf671f3515bd8d6ebd7b9e4463a65751d8f6becc883226e0e20', 162, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:12', '2022-06-11 01:17:12', '2022-12-11 06:17:12'),
('3577dde1f00575c5bd7be5588b90c4f626fc6803db00f6acb348d88f21a042a0ed2ca8b00cb769da', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:00', '2022-06-11 05:27:00', '2022-12-11 10:27:00'),
('366daa73f1609652293267f71309aa1d088e4f05f76aa3c6fd2de6b5f752e664e8e1bf6a3dcf48c4', 165, 1, 'Laravel', '[]', 0, '2022-06-11 01:42:31', '2022-06-11 01:42:31', '2022-12-11 06:42:31'),
('3695b28d0bedc4c6ed0d40ddbb56e568f94f18ef8a440c5eb4fcb2538316df21139c2e33d27052c0', 419, 1, 'Laravel', '[]', 0, '2022-07-13 08:47:57', '2022-07-13 08:47:57', '2023-01-13 13:47:57'),
('36a5419e032f15dd2cc1f9a7254fd2b716b80dec260f905e79ee03902f59e55321a11c22b7e2bfdd', 409, 1, 'Laravel', '[]', 0, '2022-07-12 05:24:18', '2022-07-12 05:24:18', '2023-01-12 10:24:18'),
('3740f28d5ac983821a16efc43d38e96ac37c06d1ab6c52fff124a524992a5f491b47ca9b8303ea4f', 429, 1, 'Laravel', '[]', 0, '2022-07-15 05:51:12', '2022-07-15 05:51:12', '2023-01-15 10:51:12'),
('37d78f11e13448d64fc647004234bca0a194d474876510f798387fb794174b74ca91470998f04939', 93, 1, 'Laravel', '[]', 0, '2022-06-10 06:20:35', '2022-06-10 06:20:35', '2022-12-10 11:20:35'),
('3883bce8abfc0a6dbcec12d2af1a619f9f9a3aa3fdf3e6d7c5c6d1b53235aa217d2a39db045ddeb8', 24, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:39', '2022-06-07 06:16:39', '2022-12-07 11:16:39'),
('3884eeab19aca790199008cf4937d8087daa588eb8b9b598735f42985722cc265ed41b1298af06a4', 414, 1, 'Laravel', '[]', 0, '2022-07-12 12:57:05', '2022-07-12 12:57:05', '2023-01-12 17:57:05'),
('38b4b3a3859a0b7b9e89572b0e99b2dbd830951782a77b68facd5118ec2432e4da1da3424b12d175', 205, 1, 'Laravel', '[]', 0, '2022-06-14 03:33:09', '2022-06-14 03:33:09', '2022-12-14 08:33:09'),
('39ba965397a4dbd78690562cfad4d5e018a2d575869d0ef9de788718340b905bc15c7c7ae19fd1b9', 195, 1, 'Laravel', '[]', 0, '2022-06-20 03:58:02', '2022-06-20 03:58:02', '2022-12-20 08:58:02'),
('3a65023e7d7d2fd05b528a8f23391a5d8b5e43b742a50fa5f0a1db2f1006a9c31db538df5e7bf94a', 411, 1, 'Laravel', '[]', 0, '2022-07-13 06:29:01', '2022-07-13 06:29:01', '2023-01-13 11:29:01'),
('3a7606bdc4620f4d79a63934e547d4389f99b65b889f9377647070a712843cf592a61ee4aa954a7f', 433, 1, 'Laravel', '[]', 0, '2022-07-15 05:54:33', '2022-07-15 05:54:33', '2023-01-15 10:54:33'),
('3a87ca16ea5770cfe526f825bb6190ec3d14b4ef4921d2c62d3a07a9fe6ae343282fa8b704a017f3', 189, 1, 'Laravel', '[]', 0, '2022-06-11 06:58:45', '2022-06-11 06:58:45', '2022-12-11 11:58:45'),
('3aad40ef39e24e745017c206f6e2d0530acfb3b95da226a89ad79a6fa6069cdca0c940878a01cbc4', 6, 1, 'Laravel', '[]', 0, '2022-06-01 13:04:57', '2022-06-01 13:04:57', '2022-12-01 18:04:57'),
('3b4dd92daa22dce80372b978004a02261b1d9d0ce1ee53c2d69cb3efd4d297d328f11549b4263efb', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:27:02', '2022-06-20 07:27:02', '2022-12-20 12:27:02'),
('3c3d42d2ed79beb1d441f94e686c6283cf8cfa72a437abdbe529c6275834be9ec9416c1046bf3e24', 184, 1, 'Laravel', '[]', 0, '2022-06-11 04:50:00', '2022-06-11 04:50:00', '2022-12-11 09:50:00'),
('3ce25ec9c005e91043e92b556070b408de0b386fffe0b61ebd181980abe30c61387d927bdff1b1db', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:41:09', '2022-06-12 11:41:09', '2022-12-12 16:41:09'),
('3d3f156dc43574af7f2a6e242766a7d9bfc766de8deada0b4f50693919eb108b119f9baa30c50e44', 72, 1, 'Laravel', '[]', 0, '2022-06-09 04:58:03', '2022-06-09 04:58:03', '2022-12-09 09:58:03'),
('3d41bdfec26a2d612aa251c50408c85a2dd84995c4899a79674d9355d495bf34d71f079a98936f41', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:05:33', '2022-06-12 11:05:33', '2022-12-12 16:05:33'),
('3da8a1a3ffc7ce16465fafc539eaa871ba8ccdfb6c5a44b15150bcdb0bcd8bbc8c1f33eda653d0ba', 358, 1, 'Laravel', '[]', 0, '2022-07-05 22:06:58', '2022-07-05 22:06:58', '2023-01-06 03:06:58'),
('3db4394b3ec62ac9e460ca4b9403fce2866bd8f16dd22b758bc06e27746070e398110a448eb92515', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:43', '2022-06-16 00:36:43', '2022-12-16 05:36:43'),
('3dcc6f727eac255ff55f5ce2b9f57d9016c878242262f3ff6b2aee7d7ec93d68bf12f89bd7625358', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:19', '2022-06-16 00:38:19', '2022-12-16 05:38:19'),
('3e9a45315a0c1bb69340ff397cdd6517e4340a98c7410e6b02386b29358f2d091b64e38d01e350bf', 334, 1, 'Laravel', '[]', 0, '2022-06-15 14:38:14', '2022-06-15 14:38:14', '2022-12-15 19:38:14'),
('3ee17b92a0deaf3f8539abe7c9c2c334c5c9f2dc8c9aaadbe0fd85efa77022ac437238f5d5caac82', 434, 1, 'Laravel', '[]', 0, '2022-07-15 05:55:53', '2022-07-15 05:55:53', '2023-01-15 10:55:53'),
('3f0869a7ed9cdd685f5b660083e4dd456de37c01da2f467248c5dd4cabfaa2e235fa433c9ac18d24', 373, 1, 'Laravel', '[]', 0, '2022-07-04 23:48:30', '2022-07-04 23:48:30', '2023-01-05 04:48:30'),
('3f46084ec29fd6a82d0b30d10a20a1112f4349b0b300259b48ec725d239ff8fc8bc8207093a281ef', 393, 1, 'Laravel', '[]', 0, '2022-07-07 23:23:09', '2022-07-07 23:23:09', '2023-01-08 04:23:09'),
('3fa0efe8de9e6acf2b4b5689dd0d44fe3d73c60bfd68ca0cbf9cb040c6937478f4d880b135491e91', 402, 1, 'Laravel', '[]', 0, '2022-07-11 05:46:56', '2022-07-11 05:46:56', '2023-01-11 10:46:56'),
('40672180d840be1e82fc1ed8a61e99d3fae114b4526781d8b31d71db79fd3925a917c2ea37ef37d9', 120, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:48', '2022-06-11 01:16:48', '2022-12-11 06:16:48'),
('4116c7fdd20ac913b6aaf91d9845b19a083ec16127c61f07267fd8481e3eab1ad340165af45d6bd0', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:48:12', '2022-06-20 05:48:12', '2022-12-20 10:48:12'),
('4187ad2ba7f12449d36f6b8c041cffe862e6609dd902b5df687393e7f231e7ce7c29b3c0753554cb', 346, 1, 'Laravel', '[]', 0, '2022-06-16 04:18:24', '2022-06-16 04:18:24', '2022-12-16 09:18:24'),
('41d138b347a9a76a0a819bff91e44d354c0e2cb720c73601a2cdda8e84a7531506d301ddbddc455a', 51, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:07', '2022-06-07 06:17:07', '2022-12-07 11:17:07'),
('4255e56b1350fa6e65bdd27726819034184ea97927ac20f0a2433cb1b12093a23624f12866575215', 171, 1, 'Laravel', '[]', 0, '2022-06-11 03:45:51', '2022-06-11 03:45:51', '2022-12-11 08:45:51'),
('426e3f4c126539ff24d1f40f17f13dc883b1058354edd7a21f39c4a9afced8e23d1904fb94079efe', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:41', '2022-06-16 00:38:41', '2022-12-16 05:38:41'),
('426fbae1dd7a4d6d8522524b0c1472ae6ed91f63a6dd914acc1ab9bc75474defcffb94c6f2eeb261', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:40', '2022-06-16 00:38:40', '2022-12-16 05:38:40'),
('42b1fe7245a8fa13eb7da31c2623f8a7ee729bd4cb53bca302401bccb388abbbdc822b1241b5bdc7', 382, 1, 'Laravel', '[]', 0, '2022-07-06 00:31:41', '2022-07-06 00:31:41', '2023-01-06 05:31:41'),
('4329ba634abfc17d1fafb03df5429037f24a6579bcd2832ae1054d1878b844222662075d444c852e', 169, 1, 'Laravel', '[]', 0, '2022-06-13 01:00:01', '2022-06-13 01:00:01', '2022-12-13 06:00:01'),
('437b1b7d744ff4548399d227e319153be5bc5ac4ba54d845d9ff805b7c2ec3fee2cf583d7193944f', 420, 1, 'Laravel', '[]', 0, '2022-07-18 11:23:44', '2022-07-18 11:23:44', '2023-01-18 16:23:44'),
('43c00b2ae81f7629d9dc60e51b95fb2e195ea0b7f0fc0291fe7d397ad4bfc1d1aa94433e63f060cc', 265, 1, 'Laravel', '[]', 0, '2022-06-14 04:25:41', '2022-06-14 04:25:41', '2022-12-14 09:25:41'),
('43f997bc5038d844ac8bb21882f4923545d25e692ca3d94b47f7d3199e43a0b4bc807f6e66560d33', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:43:54', '2022-06-16 00:43:54', '2022-12-16 05:43:54'),
('4476b7c561a1ccadd949e23a7dfb49fffdedfe78d5d80b299f6c8ff30c3d0682b81a52a8909a9cbd', 417, 1, 'Laravel', '[]', 0, '2022-07-13 08:46:11', '2022-07-13 08:46:11', '2023-01-13 13:46:11'),
('44de2ec9ed88796fdfb7d64e7c9db5b64045fe5248811336e81825809c61e78b16f154ba1d6a1046', 182, 1, 'Laravel', '[]', 0, '2022-06-11 04:48:24', '2022-06-11 04:48:24', '2022-12-11 09:48:24'),
('463d7614ae5e86337c8ad7e2297b9078790ed6f8a7170b75e9b972c6f28b862888cf3100c44d4612', 111, 1, 'Laravel', '[]', 0, '2022-06-11 01:10:04', '2022-06-11 01:10:04', '2022-12-11 06:10:04'),
('46c6eae1fb69c4ab905c07ae131f0018757e020ea37b422f66a8eab303902e995b742095fac061ed', 134, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:52', '2022-06-11 01:16:52', '2022-12-11 06:16:52'),
('47fc5c6f12ea27df816d1e2d9ca6b210007c2b7b89023947e463e4b256284b283cc4374358c38259', 307, 1, 'Laravel', '[]', 0, '2022-06-15 01:40:51', '2022-06-15 01:40:51', '2022-12-15 06:40:51'),
('48b34f775aad9330ed2b117f1e95b560895f2e9719dc66232de4b5f693b287254626538c0f4e8789', 360, 1, 'Laravel', '[]', 0, '2022-07-04 12:23:28', '2022-07-04 12:23:28', '2023-01-04 17:23:28'),
('4929847ddf3206aaabf52ba48a9941c9a7f937364b81094ee2cd11b9772c63b92fd97b376a7b6e9e', 164, 1, 'Laravel', '[]', 0, '2022-06-11 01:32:26', '2022-06-11 01:32:26', '2022-12-11 06:32:26'),
('493b5646c1b09472e0c962ffec3631716069861914eb9bc6a72aa14a3df94acfff67dba3385a2541', 413, 1, 'Laravel', '[]', 0, '2022-07-12 12:50:11', '2022-07-12 12:50:11', '2023-01-12 17:50:11'),
('4940c98eeb83687c1f7008f6750e6fc4aac22149947f7a5ac5cff1f459c7882d98996d551914633d', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:23', '2022-06-16 00:37:23', '2022-12-16 05:37:23'),
('4ac6e71a57046dd64a72f11220b928492c6ef4d92b57f233359e97768457861a063b76040d8b8144', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:20', '2022-06-16 00:38:20', '2022-12-16 05:38:20'),
('4cc35f1d54a6096aec8194adb178091f7cdc959071386c6c79cf6f2f82b26d262cdd9f739dd76c0e', 270, 1, 'Laravel', '[]', 0, '2022-06-14 04:32:10', '2022-06-14 04:32:10', '2022-12-14 09:32:10'),
('4d3b8e3cf1f5bd2e1543a8315d720ee4ed4156c47a79f2097faaaec00bdc8efa1e38414396d770b2', 42, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:06', '2022-06-07 06:17:06', '2022-12-07 11:17:06'),
('4e191cee59ea55f1ab7152998fefbe11957171c26ceac495e07214fed36cb7d57c48a89bbd311031', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:39', '2022-06-16 00:41:39', '2022-12-16 05:41:39'),
('4e250f5aa0046984ba00432364e8375659e2848d441e9c883b3beb7ee7d9a3460cae59d9470b543e', 411, 1, 'Laravel', '[]', 0, '2022-07-13 04:57:17', '2022-07-13 04:57:17', '2023-01-13 09:57:17'),
('4e747a62e37d74ea02fb6f8ba9b138bb3757385f7769c82c8492d9dfc26cd6a3fda70a5eff0cfbd2', 353, 1, 'Laravel', '[]', 0, '2022-06-20 02:51:07', '2022-06-20 02:51:07', '2022-12-20 07:51:07'),
('4e7b0118065d4784e062a06cb37d10197e2cda23476eb59f18e1bdc0ace27e1e24a186f8229d8058', 23, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:38', '2022-06-07 06:16:38', '2022-12-07 11:16:38'),
('4ec45aa0204444fa1abdcb2b1fbbfee99d0fbb20d82befa588b93f6d9b43091e0cc03490805fbf4e', 276, 1, 'Laravel', '[]', 0, '2022-06-14 04:35:45', '2022-06-14 04:35:45', '2022-12-14 09:35:45'),
('4f088fce983844dcb2b0c1dcbe9b7197a3951a4121faebcf76e9d5240668aa09e4053c6688838907', 195, 1, 'Laravel', '[]', 0, '2022-06-27 05:30:06', '2022-06-27 05:30:06', '2022-12-27 10:30:06'),
('4f695ee95b3c05ba63cfccea2775319c2cac37a7d80754e89bcf22c5c2d455dccd03fa152f26213e', 417, 1, 'Laravel', '[]', 0, '2022-07-15 08:20:38', '2022-07-15 08:20:38', '2023-01-15 13:20:38'),
('4facf4f736ff6568168803d40f004b3927783a9ad6ac3cdb3bd973fb8fbe2d14c23c9c58b023ce63', 178, 1, 'Laravel', '[]', 0, '2022-06-11 03:49:46', '2022-06-11 03:49:46', '2022-12-11 08:49:46'),
('5012e5a1599499d008157a07f529ccd577ba4c3da4cfc56715937217f16605c718fb54dafde1670f', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:20', '2022-06-16 00:38:20', '2022-12-16 05:38:20'),
('505ccfb231122993348f1b707ae805bdb4784d64db3dddfc9e0ce394b47a6ce2da7c4b1d4445521c', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:08', '2022-06-16 00:36:08', '2022-12-16 05:36:08'),
('508fe0c67b0e91372fe3d1a30ffc8c53de54a656aa627fabde68e625dbdd2025c852ace8b519f928', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:23', '2022-06-16 00:38:23', '2022-12-16 05:38:23'),
('50cb5d52fa161f4696b45da57ac50b0fd7c091c4b1fbcd06611d740390a51069df82d395b2aa4883', 119, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:43', '2022-06-11 01:16:43', '2022-12-11 06:16:43'),
('510fd820373dcf2bffadfc98ef0ac10c123761db5aa90d940c3e5609ce37c1e3fbef97eb0df75567', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:06', '2022-06-16 00:37:06', '2022-12-16 05:37:06'),
('5193033bfdbba28b2978bcd4dabd2aad3c12f61fa3680f00695db36859f1a128425e545f48015fe6', 386, 1, 'Laravel', '[]', 0, '2022-07-06 06:50:52', '2022-07-06 06:50:52', '2023-01-06 11:50:52'),
('51e94dc74a981016f5447d37c0db930465e820fa1c386e0bac892933237681f2cffc7d575f647235', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:22:06', '2022-06-11 05:22:06', '2022-12-11 10:22:06'),
('521130b1311cb27a6c950b5c25d3149fae951b43237ea74404dd940bdab9299537642f5a52e36fef', 174, 1, 'Laravel', '[]', 0, '2022-06-11 03:47:45', '2022-06-11 03:47:45', '2022-12-11 08:47:45'),
('5366ba2cb40e2c9bbe5d4a1cc74debba669d3e80a374434256fc79eb8accc977df56dfebc7a25881', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:21', '2022-06-16 00:36:21', '2022-12-16 05:36:21'),
('54a7e93df292963006a71a105aafbe39c23c6957eeac0d9a8d98a415a12498b2a589b5d850296cc5', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:43:18', '2022-06-16 00:43:18', '2022-12-16 05:43:18'),
('54bfb4c42da7204aeb423677b1c15d570b58d627340f90a7e145b90c6f3020cffd06d4ed6c1f5f61', 411, 1, 'Laravel', '[]', 0, '2022-07-12 12:36:24', '2022-07-12 12:36:24', '2023-01-12 17:36:24'),
('54fd3fc0db05b6c451c744189335798c90a5475e2dc04a33f339f7cb53260679500f13e0216536c1', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:01', '2022-06-11 05:27:01', '2022-12-11 10:27:01'),
('55029bd246f86f32a9262f6f7b3e983dbf4cfead48ab0f210921c888205407770c572f2a0bc975a4', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:45', '2022-06-16 00:36:45', '2022-12-16 05:36:45'),
('5512745f631914edb74b98422712f8c2e03d4b485163e66e8a12aaa48546ed3e5daaaa0ce3fa8963', 378, 1, 'Laravel', '[]', 0, '2022-07-05 06:14:00', '2022-07-05 06:14:00', '2023-01-05 11:14:00'),
('5551ed4d85e66707171b6cd7e306e266a68ceec0a442860d05d05a8b078cff56f6f1e1530bdf6c4d', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:38', '2022-06-16 00:38:38', '2022-12-16 05:38:38'),
('55829d1c78b9757c26402fc44a517163782d7e0f9989f799843b1a73cbef2eaf3fed6340aa699616', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:26:09', '2022-06-20 07:26:09', '2022-12-20 12:26:09'),
('55910f82f68b987ddb76a3e9738152b7085e40bb78bda1cf88e5da7d83cb3f82a9549660674cd06f', 364, 1, 'Laravel', '[]', 0, '2022-07-04 03:46:40', '2022-07-04 03:46:40', '2023-01-04 08:46:40'),
('577ec10b6db4e402d25a5952bcea6fd862387ba1292101bed31419e82c49972ad6209cc596ce90d1', 339, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:24', '2022-06-16 00:41:24', '2022-12-16 05:41:24'),
('57862d6b07e730e6bf3f6aab09194dff3b779dcf7e91184b9d4342e8c0c22b0caf09457fc8c6480e', 195, 1, 'Laravel', '[]', 0, '2022-06-20 06:06:56', '2022-06-20 06:06:56', '2022-12-20 11:06:56'),
('57f07ac743ca70f6be7f1dcc567e92bc3aca061253b9df8dbc353d56d87e1da2e7b7ace20a5432b0', 7, 1, 'Laravel', '[]', 0, '2022-06-02 01:10:50', '2022-06-02 01:10:50', '2022-12-02 06:10:50'),
('584fa8415b6ccc71df9722dd95548593a087a212192a63a44f8aad22dc4e42c457dfb5297d697777', 411, 1, 'Laravel', '[]', 0, '2022-07-12 11:55:32', '2022-07-12 11:55:32', '2023-01-12 16:55:32'),
('592f847a9191f671a6294e44dfa1199f5692a9aaf080e50cd23a480075e4c051e9c53c02963f5ae1', 147, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:00', '2022-06-11 01:17:00', '2022-12-11 06:17:00'),
('598ddc3b25c9adaf59b53d96d0d994e9a66945f70ad2bd7141950c4f6842e5bad0b7143fe82af5f2', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:06', '2022-06-16 00:36:06', '2022-12-16 05:36:06'),
('59a24f5ad5d5e9960cdcb6457a7f2d78bd5304042a17390c3a5483cf966674b0ea592a6e75325caa', 187, 1, 'Laravel', '[]', 0, '2022-06-11 06:07:11', '2022-06-11 06:07:11', '2022-12-11 11:07:11'),
('5a0929019fbae2ef4b5eb0c3b55269068029aaa95edd1503e2d6af528818d5167fa53718ed3647ae', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:42', '2022-06-16 00:36:42', '2022-12-16 05:36:42'),
('5a70f8074387f4ea61022601fb36fb9861e19f32635ea4ec4813ba2461b4bc2dffe9e8add2576cfb', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:13', '2022-06-16 00:36:13', '2022-12-16 05:36:13'),
('5ac777dc76781f9ece2c42f28293cd8cb506aca7c64abaa8ee5998abc75907643948d93dcf0f156d', 417, 1, 'Laravel', '[]', 0, '2022-07-15 10:17:10', '2022-07-15 10:17:10', '2023-01-15 15:17:10'),
('5bf2c7f0327a309f0b35194bec20494af2ace4111639552f80040c1fe2326c83690f8cae2f55072f', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:19', '2022-06-16 00:38:19', '2022-12-16 05:38:19'),
('5bff2de07ed96d43cca5b8252afbb8f25970a2035a51ca89a67ff5e4d6485d1e0b9e68ded86332f0', 115, 1, 'Laravel', '[]', 0, '2022-06-11 01:15:28', '2022-06-11 01:15:28', '2022-12-11 06:15:28'),
('5c979abf7bac71599dca740d11986c848a91b94bf9b60fa438094a28519e6d9202207a27f8e1b99a', 15, 1, 'Laravel', '[]', 0, '2022-06-07 05:11:28', '2022-06-07 05:11:28', '2022-12-07 10:11:28'),
('5ded3b1f56c7d75c481401fc97e09dbab1634c76f8d4f226aafb5ae692fcfa362748e258cb4c5a21', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:13', '2022-06-16 00:36:13', '2022-12-16 05:36:13'),
('5e47c10e225603ed1779ce31dcf83c16a96d10be1d005c252befa1675e3752e6dddc6a3aa7c98f72', 146, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:00', '2022-06-11 01:17:00', '2022-12-11 06:17:00'),
('5e801104a50bbfeedc26b6e21187e7d94b831daefb3ec3817845b49d58b4815209a1f39fd89a0ae0', 169, 1, 'Laravel', '[]', 0, '2022-06-15 03:10:05', '2022-06-15 03:10:05', '2022-12-15 08:10:05'),
('5e83d3f79dd36d2af167bb50bdc300149dc3d893fdfad282ce6b344c610feb0447cc6364bb3c4ad0', 231, 1, 'Laravel', '[]', 0, '2022-06-14 04:12:25', '2022-06-14 04:12:25', '2022-12-14 09:12:25'),
('5ebc7caa05a4404c630e64bd473ba243d2bc71655504af0335bb6f039676a317a8fe94f7612aaf5a', 201, 1, 'Laravel', '[]', 0, '2022-06-14 03:24:54', '2022-06-14 03:24:54', '2022-12-14 08:24:54'),
('5f0e18f4fa8a1d25937147a18d4a2660bea37f519d3ad69815b6d5b5ff16eade47e16641e4526e3b', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:19', '2022-06-16 00:38:19', '2022-12-16 05:38:19'),
('5f6672afba43859bdd99541e9a90c77dd92865c3c1a4cdc89b985c88f6a3d2d00bf0e795daff4b1a', 195, 1, 'Laravel', '[]', 0, '2022-06-24 06:39:19', '2022-06-24 06:39:19', '2022-12-24 11:39:19'),
('5f698597a3f29f46018b0952549801966d393d27d14c06bc0c503c6475e0484071e6debabbee96ca', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:24', '2022-06-16 00:38:24', '2022-12-16 05:38:24'),
('5fe324793c74e0cc460bd55dd8a106e3fdb70f530a7d2113a2cc21ea712c94c8cb17622c6a287e4d', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:39:01', '2022-06-16 00:39:01', '2022-12-16 05:39:01'),
('6122c311ce34addd22352a82e9b82a2dd1c0c6f69c170e82d013728b584d7f84f2009177edc75afb', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:21', '2022-06-16 00:38:21', '2022-12-16 05:38:21'),
('61234d3c7cc2612f573a7d48ad862515be6b45c92e63b6dd023b6920f3a48d42b1936c6606baa61a', 344, 1, 'Laravel', '[]', 0, '2022-06-16 01:08:27', '2022-06-16 01:08:27', '2022-12-16 06:08:27'),
('61f04a8a0a44d8f13686d6cd2e082830496d603285d202799bff190e7490b5061f7fe102350326e6', 372, 1, 'Laravel', '[]', 0, '2022-07-04 23:44:40', '2022-07-04 23:44:40', '2023-01-05 04:44:40'),
('620b1b02472c617eb6432b268adf6fc438dc271eeee7db36e5bd0745a8fd80d8d5655193328cebe6', 443, 1, 'Laravel', '[]', 0, '2022-07-15 10:02:33', '2022-07-15 10:02:33', '2023-01-15 15:02:33'),
('623880d7b89be096da154f7a6b6ae372000e039cfc4746c80adde18a54d521c0140506decab09dd1', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:49:03', '2022-06-16 00:49:03', '2022-12-16 05:49:03'),
('62526eac51a9aa9799bbd23b9da34953204343f8197e2307d21b82a4a0c74bf73a5ee5785f5cdb0b', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:54:04', '2022-06-12 11:54:04', '2022-12-12 16:54:04'),
('6459ca14ebc5577e9ec64f9c03d21ed20c6605e537a736b0e7fd074bd42efe050f41d4509bce5ef0', 110, 1, 'Laravel', '[]', 0, '2022-06-11 01:08:28', '2022-06-11 01:08:28', '2022-12-11 06:08:28'),
('64e2ccda49bc8f28cf85f70587d7b3c73542d7543cfabc1ca14b1718120b63224a67ac998d2965ae', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:07', '2022-06-16 00:36:07', '2022-12-16 05:36:07'),
('6597eadc9f69fbf698f75c61b69d513ad95cd3d452e108e29c50401dbe8f515113a609af1b290654', 31, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:40', '2022-06-07 06:16:40', '2022-12-07 11:16:40'),
('65c23d26116f265dcecd5aa87fa7bdcde2cea77d60ef576e70a49d9c592b743a83d8314b5053e779', 417, 1, 'Laravel', '[]', 0, '2022-07-15 10:41:57', '2022-07-15 10:41:57', '2023-01-15 15:41:57'),
('65d7319b3ccd3ca7712c2be58ad15a691f989b10fff70418e5113a9483e01a0c9746f57cf6a8eff8', 381, 1, 'Laravel', '[]', 0, '2022-07-06 00:30:47', '2022-07-06 00:30:47', '2023-01-06 05:30:47'),
('6645970ab075d1c086d1791042527d0ccfb5ec9a8b2ae6dc6a3a36a096bd44f2982d0062e84c4edb', 36, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:41', '2022-06-07 06:16:41', '2022-12-07 11:16:41'),
('664a377133814d8b7bae0c96691442d8d4107e903e1378ff65ffbbd49bcc3763fd700595b64ba96f', 195, 1, 'Laravel', '[]', 0, '2022-06-28 01:39:10', '2022-06-28 01:39:10', '2022-12-28 06:39:10'),
('6687fbf377976c3271a3fe37cbc30d689e025903a565b76141ff2318319ba2278d6928a8e9069cbf', 195, 1, 'Laravel', '[]', 0, '2022-06-20 06:01:56', '2022-06-20 06:01:56', '2022-12-20 11:01:56'),
('6731f22ea4c72a9d565d88e7383f69a04597848857610004a3d6e70b0b497a87092f851532373c7e', 172, 1, 'Laravel', '[]', 0, '2022-06-12 10:29:02', '2022-06-12 10:29:02', '2022-12-12 15:29:02'),
('6766516a4d4aaaaa2b170c156bf3a3a09e6d51b19378d1c8a3744addfa610502859ed0f378ca28f4', 172, 1, 'Laravel', '[]', 0, '2022-06-12 04:52:28', '2022-06-12 04:52:28', '2022-12-12 09:52:28'),
('67764afb820f812913330a6639810acae9f492fbca461121b2f51297b0191a6afc17072a22c40f48', 35, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:40', '2022-06-07 06:16:40', '2022-12-07 11:16:40'),
('67d026b9a369ff1cfbc4df94f5df5efdc6ddfcad90c2822b9b3690ad6ec1b311470b94ef671d64a2', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:00', '2022-06-11 05:27:00', '2022-12-11 10:27:00'),
('67dc8e804c8ddc073b5fd21c15e1c72ae8c93b8cb450458be71d146bce0e3ae0886be0d573b67d74', 371, 1, 'Laravel', '[]', 0, '2022-07-04 23:42:49', '2022-07-04 23:42:49', '2023-01-05 04:42:49'),
('68be9f7272f3be06b920d3b47d5e683268640034c8423830cefffd4ab6a61cf48305746001a3e7bc', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:25:39', '2022-06-20 07:25:39', '2022-12-20 12:25:39'),
('691f703b084c50a6c9bfb52c1505d8a3d7180e7c5538c51047d17fae63634303d07fc640ed209682', 290, 1, 'Laravel', '[]', 0, '2022-06-14 05:36:10', '2022-06-14 05:36:10', '2022-12-14 10:36:10'),
('6990bc5dd10bd8d2dd86f610e9af416318bf06a16a81294b90b1d45dec2fac1a0584e20661946baa', 411, 1, 'Laravel', '[]', 0, '2022-07-12 07:28:12', '2022-07-12 07:28:12', '2023-01-12 12:28:12'),
('6a4d8164802bd66be4f398d7ac764bed7a0bb3e41add46e67401189dbc54411b2ccbf91bcd6f9e62', 117, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:41', '2022-06-11 01:16:41', '2022-12-11 06:16:41'),
('6a5b7235b44be8f9952da14846a068a5640fb6d7a2e10625e5c9c60de7815434ba65d4f3694a9c5b', 195, 1, 'Laravel', '[]', 0, '2022-06-16 23:46:01', '2022-06-16 23:46:01', '2022-12-17 04:46:01'),
('6aa3be74c9c6467a0f52d382c3bb77de030c511abc4a81d4843675e09b8658de71ce906465bcfd1e', 65, 1, 'Laravel', '[]', 0, '2022-06-08 00:13:59', '2022-06-08 00:13:59', '2022-12-08 05:13:59'),
('6aa54d3f8bd0948b4ebfe0e95e9fda4e07197cc82cf82495ca70e4c0ac7501853c545407e516e156', 274, 1, 'Laravel', '[]', 0, '2022-06-14 04:34:57', '2022-06-14 04:34:57', '2022-12-14 09:34:57'),
('6acdbc7717e9b52874e15717bd4bc5547f15de96d4e3f528b00625bf153cd6de7278e935ab329eaf', 375, 1, 'Laravel', '[]', 0, '2022-07-05 00:49:00', '2022-07-05 00:49:00', '2023-01-05 05:49:00'),
('6ad5a72b1022e49da17f0eb81b0cc32e729c5efb89f64a7f56b8eda46f1495d7680162968f6b95be', 417, 1, 'Laravel', '[]', 0, '2022-07-14 08:51:32', '2022-07-14 08:51:32', '2023-01-14 13:51:32'),
('6af05a94d286572a2f1fa2ca32ea4e6a8aca2663200c4af5e25a1238523e4f218d28a67698e56d05', 343, 1, 'Laravel', '[]', 0, '2022-06-16 01:07:30', '2022-06-16 01:07:30', '2022-12-16 06:07:30'),
('6b1b0436c7716b7c37d71cab37cf830f92a778d92f6d45aede85763136f78b4270a7d873b3cc23dd', 104, 1, 'Laravel', '[]', 0, '2022-06-11 00:22:09', '2022-06-11 00:22:09', '2022-12-11 05:22:09');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6b89f7e835984a93fd0e88bb80e368965ebbe27dda3268acbe7eac700e7a27aab7dc68e16907422c', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:39', '2022-06-16 00:38:39', '2022-12-16 05:38:39'),
('6bdccac7d0958b68f0b6539a01ea3561f911c5b2292633af53416bc11de332fd2fcdeea2ae73b0f8', 166, 1, 'Laravel', '[]', 0, '2022-06-11 01:52:06', '2022-06-11 01:52:06', '2022-12-11 06:52:06'),
('6c85f5690f14f316c95e2487ae73c759ecd05aed39cae8b7dbe7a604629019d8f6b7d175ee97c051', 404, 1, 'Laravel', '[]', 0, '2022-07-11 06:09:51', '2022-07-11 06:09:51', '2023-01-11 11:09:51'),
('6c9a4eab6fbcf54e7b24d7291c178cf62bc2936437c4743878f8a8e745337e9cfc45826226bf984e', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:40:35', '2022-06-12 11:40:35', '2022-12-12 16:40:35'),
('6ce23c640c7bc634ef914aec5f797f5adcc61ee2909b511ed6e3b973b9be6d077802b2d2041e7b4e', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:39:01', '2022-06-16 00:39:01', '2022-12-16 05:39:01'),
('6ce793da0ff84b92060e205c20cb367876a59942dc6ae8fd158c0b3974ba8d224e225d204f0706f7', 169, 1, 'Laravel', '[]', 0, '2022-06-12 04:50:43', '2022-06-12 04:50:43', '2022-12-12 09:50:43'),
('6d060b4130c10e5b3af4eeb60356ac3b48e7c9306b393b5d9ccb65726ce0bcc8ea491bdbb4b61366', 180, 1, 'Laravel', '[]', 0, '2022-06-11 03:52:07', '2022-06-11 03:52:07', '2022-12-11 08:52:07'),
('6d19482a93b27a85c1668f61da4bd59424b609d78514563ac4e855cd3b6867557977ea7e37f27322', 56, 1, 'Laravel', '[]', 0, '2022-06-07 06:49:58', '2022-06-07 06:49:58', '2022-12-07 11:49:58'),
('6d24f4ad40711b5b71cb4ed07167bd2e26905e54e9e4501b528921c6463e939007ae8827b71b8001', 13, 1, 'Laravel', '[]', 0, '2022-06-02 04:30:44', '2022-06-02 04:30:44', '2022-12-02 09:30:44'),
('6d2b551fa31bb687bbaa57f3e425d4a1d11ec9f1d7a5acc8eb63b5e5cacd2aeaab678371e1a6375a', 407, 1, 'Laravel', '[]', 0, '2022-07-11 13:23:55', '2022-07-11 13:23:55', '2023-01-11 18:23:55'),
('6d31481fa4572dd8ab6e56da221842d6b3b5bc05de3fd8a4e11d49c6f5a1fddc1fa2ba91a4d50812', 21, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:38', '2022-06-07 06:16:38', '2022-12-07 11:16:38'),
('6d9b26f71646d0202bcd1a144f291d846bfa40b6a3da2da05e9eae7cfb7a22edd10baf1da102f01d', 79, 1, 'Laravel', '[]', 0, '2022-06-09 05:10:10', '2022-06-09 05:10:10', '2022-12-09 10:10:10'),
('6df73c84f006c523c3bd4d6eef3f6d3f14c2f80851bc248fda3722859a2420819385df0b00ca2078', 137, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:52', '2022-06-11 01:16:52', '2022-12-11 06:16:52'),
('6e0aabd295062274813e52486eeb6107b14a06cf4ecb72b5119b24cb7d62ec3ccc424a3be0551106', 398, 1, 'Laravel', '[]', 0, '2022-07-11 03:25:30', '2022-07-11 03:25:30', '2023-01-11 08:25:30'),
('6eb26a22f1deb85c5b471b3fb862adc30cf085824fa2a6e1a4b458d04172c06c81ec7bb44e173286', 152, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:04', '2022-06-11 01:17:04', '2022-12-11 06:17:04'),
('6f1156b58b8d339e6db007fb2ffc4eb671e2a155d5f36a543cc00b98b6d812206cdfcec887697720', 106, 1, 'Laravel', '[]', 0, '2022-06-11 00:46:17', '2022-06-11 00:46:17', '2022-12-11 05:46:17'),
('6f41c95272098574a335dd37377361b58ba55861434bfaa8a325fd623e847c07d6ad4c00bbf74db2', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:34', '2022-06-16 00:41:34', '2022-12-16 05:41:34'),
('70c1e78baca37629bd4a501a66401f2f681def34ff234853505dfc6135110acc4fef6238a1060745', 272, 1, 'Laravel', '[]', 0, '2022-06-14 04:33:21', '2022-06-14 04:33:21', '2022-12-14 09:33:21'),
('710da1a01434a396d02545dc06373d3cda8346ba2f4d49caca3814b8ca30e52f07c55b43d79d26bc', 383, 1, 'Laravel', '[]', 0, '2022-07-06 01:14:41', '2022-07-06 01:14:41', '2023-01-06 06:14:41'),
('7183c47d41ad498606aff386da5e497995e90c4b314c60f5733a2554e3c8b69050b1cfcc933a5ca7', 17, 1, 'Laravel', '[]', 0, '2022-06-07 06:12:23', '2022-06-07 06:12:23', '2022-12-07 11:12:23'),
('72222593684daa56b7914965030ad7fa7128e8e48ea72ae281a4a4b6e5ddd51f2676a07a829605b9', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:38:03', '2022-06-20 07:38:03', '2022-12-20 12:38:03'),
('72a5897016f9573a7f3fff569a34a3d865d4ae106ef4aa9ff4ed7ff5c542a7add25febf657e56a5e', 161, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:12', '2022-06-11 01:17:12', '2022-12-11 06:17:12'),
('72d443f8db345405ac9ae348d939cf4e7b5b3271a15e5c1d900c8dce9c0fd92f04eddde154cdefcc', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:42:31', '2022-06-20 07:42:31', '2022-12-20 12:42:31'),
('72f9d524d01e6760bf8ebb3343fba85e6f50fff951d46c9beeafe5c28116f1f6aea4d33d96f1af8c', 420, 1, 'Laravel', '[]', 0, '2022-07-15 05:05:32', '2022-07-15 05:05:32', '2023-01-15 10:05:32'),
('730267f08bbdf4e721d005362378975d766af838076ffdc6a923d47690bbd5293c41c28467438889', 355, 1, 'Laravel', '[]', 0, '2022-06-20 02:54:50', '2022-06-20 02:54:50', '2022-12-20 07:54:50'),
('733ef834c1a2efd91579475547468cf388d14995692c24f0a144a80286aa63368ba4700de949d60b', 425, 1, 'Laravel', '[]', 0, '2022-07-15 05:47:18', '2022-07-15 05:47:18', '2023-01-15 10:47:18'),
('73583d8b33577f9c40115e84499dea61f2a8aa6a54aeb479597c0b9036b3acf27d4e88c6f2579c1f', 169, 1, 'Laravel', '[]', 0, '2022-06-12 06:14:29', '2022-06-12 06:14:29', '2022-12-12 11:14:29'),
('74592abce059d7be45d697596645d0a6fdada4b399c72bb5fb8d1e1c23b16393ddebec38e752a73e', 335, 1, 'Laravel', '[]', 0, '2022-06-15 14:39:19', '2022-06-15 14:39:19', '2022-12-15 19:39:19'),
('74c35f25daf858619dfafcded177a989466ae37940f92c9a378b378dd3a3d26097a384eb7108dfb6', 61, 1, 'Laravel', '[]', 0, '2022-06-07 07:02:13', '2022-06-07 07:02:13', '2022-12-07 12:02:13'),
('74c555277b5bce7899bda6b204a456bf3b9149ff9250d36fc3b9a27f17c8dc24a42d68f2837992ff', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:08', '2022-06-16 00:36:08', '2022-12-16 05:36:08'),
('754643d04bd530bcc68a05a5951a71c63a5e5acd7035ff3bba2762e4225b07861faf22d438080940', 410, 1, 'Laravel', '[]', 0, '2022-07-12 05:37:00', '2022-07-12 05:37:00', '2023-01-12 10:37:00'),
('759ee1533455d7c030c70ee07ef8977f42af6889190300165c2680129ced77072c216cd33e48b2d8', 27, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:39', '2022-06-07 06:16:39', '2022-12-07 11:16:39'),
('75a3d254793eaae61b39c74ed1b94b88118573c18e78eae829fb08868953210bed9399bedec828c6', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:07', '2022-06-16 00:37:07', '2022-12-16 05:37:07'),
('75edb40dc9b75b2adb8d10b087ef2348839274c2fbc4877a9cb74d3064b8467a3c6b3057223e4557', 88, 1, 'Laravel', '[]', 0, '2022-06-09 05:20:07', '2022-06-09 05:20:07', '2022-12-09 10:20:07'),
('76655730442fd6e69efc1b8895b29c0072d0e6e2345bff75f7364d7fcf5e7ef3777b5c8edb59d79d', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:20', '2022-06-16 00:38:20', '2022-12-16 05:38:20'),
('793794a9b01678bf9c6fd265daeec1c14073a9d78602ef9e5001101d8a95671b99089766ba9d7017', 131, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:51', '2022-06-11 01:16:51', '2022-12-11 06:16:51'),
('79a990d331579604c917c22ba3f57e69da0f4ede18f43a06d5b623811a5e5bd7a885beb9cf14267e', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:21', '2022-06-16 00:36:21', '2022-12-16 05:36:21'),
('7a778b69ffcb0af03131707858ed01ca2e5c2413ff9396586745003f2d71cdc78c9d850fe7ffc739', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:40:00', '2022-06-12 11:40:00', '2022-12-12 16:40:00'),
('7aa5634bf739516e48fdf1230646a12762350554f1c60c3f0e8210e9c5f8216b1c666fb266e1c380', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:39:00', '2022-06-16 00:39:00', '2022-12-16 05:39:00'),
('7b66531b11354eb6729defba8b0b763a055200fda4e337e4bff6152697694a8b06835e1379c95360', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:00', '2022-06-16 00:36:00', '2022-12-16 05:36:00'),
('7b8c46de3f43feed529e3361aa24952d22c3912a430521019af17baca98ddd2562edac5272b756fb', 368, 1, 'Laravel', '[]', 0, '2022-07-04 23:30:38', '2022-07-04 23:30:38', '2023-01-05 04:30:38'),
('7bde1321e67ac9b56b7e581593c74a2489a3f293df2d4c41d51d00372a00554da26942e3ca7e3b15', 144, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:59', '2022-06-11 01:16:59', '2022-12-11 06:16:59'),
('7be456c5f43d5fcb8569bab34529218624cd9e995dee9e86c6d5e121f7cd26dad5eab814364b6e7b', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:31:38', '2022-06-20 07:31:38', '2022-12-20 12:31:38'),
('7bf12a7ded7d729f11b46358be7f4127fb088c343271c8a57802e9ac8b813190472ba588e15281e7', 447, 1, 'Laravel', '[]', 0, '2022-07-16 12:47:48', '2022-07-16 12:47:48', '2023-01-16 17:47:48'),
('7bf2b7da8baf081c9a2b7c6a794077e5d893312f0e6926df3d39888949b65a7485a6a4c43c6b824e', 185, 1, 'Laravel', '[]', 0, '2022-06-11 05:01:23', '2022-06-11 05:01:23', '2022-12-11 10:01:23'),
('7c568e50a289e640b42f83ec47fac93f5a127631e25976d023564054e406da6aacca88ce2fcdbce6', 169, 1, 'Laravel', '[]', 0, '2022-06-12 05:17:43', '2022-06-12 05:17:43', '2022-12-12 10:17:43'),
('7cdcb0f894314eb0ab6b2cc32b44f7532c2137e1db6a8fabfae5feeb22244ea888a4942c36356313', 70, 1, 'Laravel', '[]', 0, '2022-06-09 04:52:49', '2022-06-09 04:52:49', '2022-12-09 09:52:49'),
('7cf6f65c33bc5d325c7c6482ae18ec801513145ca24e432ca4643671eeec75341850672d82cf3b0d', 195, 1, 'Laravel', '[]', 0, '2022-06-20 06:00:02', '2022-06-20 06:00:02', '2022-12-20 11:00:02'),
('7cfccbe4b33ad34248e152875d32a9b2b11a0297bebec7ceb328ad06ded0e39be251d2ad413943be', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:28:53', '2022-06-20 07:28:53', '2022-12-20 12:28:53'),
('7d4e6b8230d72c588f94bc277ad2853ea4af75b0c2e34d505c1fb49d596c4b042179945746c9765f', 420, 1, 'Laravel', '[]', 0, '2022-07-14 08:08:46', '2022-07-14 08:08:46', '2023-01-14 13:08:46'),
('7e4f4c4d819cc14bf51cd4ff87da6f8ccbde398ce8a828502689a3807ca3061321f73c4d015650e6', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:51:26', '2022-06-20 05:51:26', '2022-12-20 10:51:26'),
('7e5695852674939ecf3b22bf1198453fd85c7055bf7c08ff463046f0ed8f551f418aa4f13b82cf16', 46, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:06', '2022-06-07 06:17:06', '2022-12-07 11:17:06'),
('7f36d21276cf5ddd0e3797f8a48a1fe685702a0e86e2c459dbae590f25bd2281a7932ccd714e7e97', 195, 1, 'Laravel', '[]', 0, '2022-06-24 06:55:39', '2022-06-24 06:55:39', '2022-12-24 11:55:39'),
('7fe82aed3b404c4ef44e7ffa3a77331692da96ddf1918382fbe868af07e50450fbb950336c5c54d9', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:46:49', '2022-06-20 05:46:49', '2022-12-20 10:46:49'),
('7ffee891fb27b8afc24eb7868ff9d7289d92b47e74497fad9271bcdc02426bde700a5d9c8d8d1b53', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:20:43', '2022-06-20 07:20:43', '2022-12-20 12:20:43'),
('8077c7c01cbba3eab3e6360bc14f538c1afb56b3348a6f68e329f045dc4857378ecc45533b4bd365', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:45:02', '2022-06-16 00:45:02', '2022-12-16 05:45:02'),
('809503a12fd15ea9cee9f7880fd08e8f839f28ead9fa03c8669f2c5da0fd7b98514bbe6be59ff00f', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:20:32', '2022-06-11 05:20:32', '2022-12-11 10:20:32'),
('80ec43a8ae6a10c2e19c3899540e978f32a70d95882b1eae7abb0115683ae79f0e27aead35f90e91', 12, 1, 'Laravel', '[]', 0, '2022-06-02 03:48:44', '2022-06-02 03:48:44', '2022-12-02 08:48:44'),
('81161d896cef40a9f23f5584e09dad1c553ca1cf68807f53f8136b62f030202a67311ce76c1029ca', 57, 1, 'Laravel', '[]', 0, '2022-06-07 06:50:27', '2022-06-07 06:50:27', '2022-12-07 11:50:27'),
('813d5f7ae89990242ba2abb5c81c9b2da4f18be68ad56630510d069465fc183afb1354b6f83994b0', 448, 1, 'Laravel', '[]', 0, '2022-07-18 05:36:11', '2022-07-18 05:36:11', '2023-01-18 10:36:11'),
('815f98b7757c688fc94532bcc494a1ba3d84e47aefdb67ef78d779b17e6b49821a53e62a547dcba3', 195, 1, 'Laravel', '[]', 0, '2022-06-26 23:50:40', '2022-06-26 23:50:40', '2022-12-27 04:50:40'),
('81ee860cebfa9ad983071fc7349d01a3a7a0d2ba683b760bee4fa682ee74b6eead133b80a2d95d0f', 50, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:07', '2022-06-07 06:17:07', '2022-12-07 11:17:07'),
('82cc02840c3e94a82cffb39be4bb795d8a5f973fa9b4d5a08bba663462e8011dcb654c264439fa58', 153, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:05', '2022-06-11 01:17:05', '2022-12-11 06:17:05'),
('82ec9554880c281e3ae9ce03639055e46b6e923d460f44a066d405ca0a86aabe334312824e9aac8e', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:39:02', '2022-06-16 00:39:02', '2022-12-16 05:39:02'),
('833438a8b6dc79a07e80bf091f29042de302833edec6910f6b49aa6c2c544b213c4f88e3cd548106', 118, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:42', '2022-06-11 01:16:42', '2022-12-11 06:16:42'),
('8338c6b9e9c8b690e6639216766b8d15bac4d31a80d4839b96882f8a137fabf42f07d3dcbd151a59', 260, 1, 'Laravel', '[]', 0, '2022-06-14 04:24:31', '2022-06-14 04:24:31', '2022-12-14 09:24:31'),
('8380880bc7f8c5e007ed8509ec4e3b3dd69af1017b5eacd8811de9e6c8d64b0d3beef6f7ea09dbb0', 10, 1, 'Laravel', '[]', 0, '2022-06-02 01:11:10', '2022-06-02 01:11:10', '2022-12-02 06:11:10'),
('8443a2c533199196e10c23710f5794de6167006108eda9fa59a3e7a2c52968828920fb8a6a7756b6', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:44', '2022-06-16 00:36:44', '2022-12-16 05:36:44'),
('84638b14b7251993dc19a75a94c504a1cc91447534bd129a656aedb74ca69fa23d47a0ef76b9f0ed', 308, 1, 'Laravel', '[]', 0, '2022-06-15 03:09:37', '2022-06-15 03:09:37', '2022-12-15 08:09:37'),
('84b798f4d0c53df462223080e93774b400f027d2292c51ddef76eafca2d38c1db11647ee6d467ee9', 195, 1, 'Laravel', '[]', 0, '2022-06-16 04:19:08', '2022-06-16 04:19:08', '2022-12-16 09:19:08'),
('84d56a01a54a0e50f30215eb11380a45844ba030852fd94039deed9fae39a16146237883c2ddfe12', 428, 1, 'Laravel', '[]', 0, '2022-07-15 05:50:16', '2022-07-15 05:50:16', '2023-01-15 10:50:16'),
('85025a0f812cb644d9677f1ce4c051094848c0b5373903f50ce7007c88173b9ebc6c35a13e4def14', 422, 1, 'Laravel', '[]', 0, '2022-07-15 05:45:49', '2022-07-15 05:45:49', '2023-01-15 10:45:49'),
('8503186e894998860855dd17ee65d504dc6b8e224056b6e067d55182ec070d39d136359751d6d839', 169, 1, 'Laravel', '[]', 0, '2022-06-12 10:56:31', '2022-06-12 10:56:31', '2022-12-12 15:56:31'),
('864f36c9cd4b556689144e77b8e2db157e18364d6d5c2a2df533d9faa578148686f3d28e85f5b61f', 195, 1, 'Laravel', '[]', 0, '2022-06-21 00:14:42', '2022-06-21 00:14:42', '2022-12-21 05:14:42'),
('86b932589cbb79d7f779218245dde6b7e9aec7d73cefc832bed64b4f025496cc686f68ad270826e4', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:18', '2022-06-16 00:38:18', '2022-12-16 05:38:18'),
('86d6d1faea7fe410fe76a430b6bf728a29370baee8a218c852ee4973f43f079cc215d9bb4ba523d4', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:18', '2022-06-16 00:38:18', '2022-12-16 05:38:18'),
('86ed5c3221611e8caee88d9acd34a846b817e060c2095edc87dee05a6bbb7dbe14a0143389ea0a80', 411, 1, 'Laravel', '[]', 0, '2022-07-12 10:01:03', '2022-07-12 10:01:03', '2023-01-12 15:01:03'),
('87faf68b3bac05b826ffcaf3e06f4064d904b2c5e16e1cea8805f42c4021997d0ff3c94a3483c19c', 113, 1, 'Laravel', '[]', 0, '2022-06-11 01:13:21', '2022-06-11 01:13:21', '2022-12-11 06:13:21'),
('882a1aa1be3aab74a4b2ce32a714fbc747d39844da31fbefb3fd5cc31c9908596cd8eea03c48b7e0', 60, 1, 'Laravel', '[]', 0, '2022-06-07 07:01:43', '2022-06-07 07:01:43', '2022-12-07 12:01:43'),
('884de43bbf1245eb8a306011a7fa4e93390ab62d1b193ef13fc9893f127502598e2e4746d1b714af', 377, 1, 'Laravel', '[]', 0, '2022-07-05 00:57:16', '2022-07-05 00:57:16', '2023-01-05 05:57:16'),
('8993a0f29032335408346cfdd560f65775d4bf6c44c79e81461b1c17f91c47c3950e06c7582076a6', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:49:39', '2022-06-16 00:49:39', '2022-12-16 05:49:39'),
('89a1f5303cbff2a6126ad07860f6242f5355b8666792b419c5f6474a5d077198036575df61bcbca2', 167, 1, 'Laravel', '[]', 0, '2022-06-11 03:15:53', '2022-06-11 03:15:53', '2022-12-11 08:15:53'),
('89de62ca725ae78da5525e5314cc8db85f17df99832c5fb01fcea1792596ba4c6abefaafaf249cf8', 222, 1, 'Laravel', '[]', 0, '2022-06-14 04:02:19', '2022-06-14 04:02:19', '2022-12-14 09:02:19'),
('8a1a134e0e812f57940d5dd743bd701e7c19a06e80877e073a7765ea7181e7b20a1ad76f29156cb9', 430, 1, 'Laravel', '[]', 0, '2022-07-15 05:51:50', '2022-07-15 05:51:50', '2023-01-15 10:51:50'),
('8a441260fb75e28df1f0a4600fd2e4ad92e9e50d6f171c47c38a4f461bba8152563335594cda53a5', 448, 1, 'Laravel', '[]', 0, '2022-07-16 12:59:21', '2022-07-16 12:59:21', '2023-01-16 17:59:21'),
('8a77669e89ce7d886c4f1173f96bedc02488a733b0b7491f362f3382bb9a647fcd0f39ec85471270', 171, 1, 'Laravel', '[]', 0, '2022-06-11 05:33:29', '2022-06-11 05:33:29', '2022-12-11 10:33:29'),
('8a9cb721d49faf74b11e368b1b03a5aa061665480caf3758cb99184ab9b6de76acd54601b4855d27', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:40', '2022-06-16 00:41:40', '2022-12-16 05:41:40'),
('8b796382f9f2e1af9eab0e027eab240f5db1281f6e33d4d5181117b0a37f2b2e7e3e5728a20b66dd', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:23', '2022-06-16 00:37:23', '2022-12-16 05:37:23'),
('8bf06fee94665d00fe783a71dd9a4556f6079231cce34a93f1a33c3742627a90fd246d2933795a42', 53, 1, 'Laravel', '[]', 0, '2022-06-07 06:19:13', '2022-06-07 06:19:13', '2022-12-07 11:19:13'),
('8bfd55fda8122f6755e4a8db03dfb2154a9a3ada12e1fa10089c0ff1faa59cca705b79867ee4533f', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:08', '2022-06-16 00:37:08', '2022-12-16 05:37:08'),
('8c9cc281be3910eac87febc5dea7aaeb07ff59eb5aea9591efccc782f62406886139ffcaac1b8718', 210, 1, 'Laravel', '[]', 0, '2022-06-14 03:36:36', '2022-06-14 03:36:36', '2022-12-14 08:36:36'),
('8d1e3e57a7fabc1b92a345086f4cbe81b21118e2f1c39edd3bbb21117b140db67972589408b9afb1', 426, 1, 'Laravel', '[]', 0, '2022-07-15 05:47:58', '2022-07-15 05:47:58', '2023-01-15 10:47:58'),
('8d318a1295fc48587a0abc9839a5be9eaad16322b212481c8f61fbb0e37a43121aa705e4ded6a5ca', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:02', '2022-06-16 00:36:02', '2022-12-16 05:36:02'),
('8d5f6f0030fed7e0596229b5c570e21d56890addca0bb1fb45c341450cdb9c4964141c5d087ff888', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:08', '2022-06-16 00:37:08', '2022-12-16 05:37:08'),
('8db0cf3ecd2ce694fa52a6b39dff68ff52106931b95d36a7b6a7de471d595c77c6c8ce5a4a2509c0', 358, 1, 'Laravel', '[]', 0, '2022-07-07 06:37:14', '2022-07-07 06:37:14', '2023-01-07 11:37:14'),
('8e018d9106ff70473d2863e13ac31cb3c543399d59a4ae4b83b5958b52de3a85af45b8798f0de954', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:24', '2022-06-16 00:38:24', '2022-12-16 05:38:24'),
('8e238b585d08dfe5682e90369d0e664dcca867097b5f8668f363161f554dc79dc7016e054ae703b2', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:36:44', '2022-06-20 07:36:44', '2022-12-20 12:36:44'),
('8e4d9dee18de3bba1c44318d4a62f3c349b03cd38c5e3b15ac6011c794b7184fdce83f268fbd043d', 195, 1, 'Laravel', '[]', 0, '2022-06-26 23:52:26', '2022-06-26 23:52:26', '2022-12-27 04:52:26'),
('8e624ca6e4dd74d058de63b7fa57275fe74bdfb47bd46b76e9545a7470d9f9aaa015717c43fe02ee', 34, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:40', '2022-06-07 06:16:40', '2022-12-07 11:16:40'),
('8ec10ada6fa667b2b22f0b7a5d0c61743d3686606ce6202440fd989dcc861d3637298fe1d504a80d', 130, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:51', '2022-06-11 01:16:51', '2022-12-11 06:16:51'),
('8f0068107e8294e95b44bb69883ee6c8958381bf2eb9b430436188a8672251e9715a82acfaa09044', 160, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:12', '2022-06-11 01:17:12', '2022-12-11 06:17:12'),
('8fc29f0789497923fc5dbde194931a7ee78941cbae04c3e5bd934c73a1d3c17ed143e3ba677efbec', 204, 1, 'Laravel', '[]', 0, '2022-06-14 03:30:03', '2022-06-14 03:30:03', '2022-12-14 08:30:03'),
('902ecebd3867487c00c67f650601d4b75d0a023043d74f54419b9b907512fb039a2da8a8e92fe5ab', 195, 1, 'Laravel', '[]', 0, '2022-06-20 03:55:24', '2022-06-20 03:55:24', '2022-12-20 08:55:24'),
('907ce3f1a980b8ad6d16ba8a60bb79abb1f892700902641b01c15bfdf0c361f2fe5918808dbdaab8', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:04', '2022-06-16 00:36:04', '2022-12-16 05:36:04'),
('909bc3e22de94407ee33a1208f8b3c89d038b6849b3b31cdd5145d8a72c800c1f9d7ca877022eb6c', 419, 1, 'Laravel', '[]', 0, '2022-07-15 09:22:46', '2022-07-15 09:22:46', '2023-01-15 14:22:46'),
('90afdd4326cfc9b62883af80388f387653ae9878daaa2319eae4791630e0b5fbe0bf0dfeffb98523', 158, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:11', '2022-06-11 01:17:11', '2022-12-11 06:17:11'),
('910e3a63f105dd4a9baded42fbf1d7aed190f0825d6b0ae440a2d0766c36ebbac534cfe75188b8b5', 211, 1, 'Laravel', '[]', 0, '2022-06-14 03:38:23', '2022-06-14 03:38:23', '2022-12-14 08:38:23'),
('91665988631a7b68b304e57dcf310e35ed4dfd1c4829b098290b9a8acba3fdc39f6382047df64d73', 22, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:38', '2022-06-07 06:16:38', '2022-12-07 11:16:38'),
('9193f4571a844cac5f6b99e58341fd382b3d44dc15e2720dd1b6ea2e66f0745d514f34911de27948', 296, 1, 'Laravel', '[]', 0, '2022-06-14 06:21:39', '2022-06-14 06:21:39', '2022-12-14 11:21:39'),
('91cc7bb082a8ef0a27e4c8878409e2d9476d184c5bdae874ba51e3518ac01b13291202350c6da76d', 195, 1, 'Laravel', '[]', 0, '2022-06-21 02:05:37', '2022-06-21 02:05:37', '2022-12-21 07:05:37'),
('91dfcab73ad5c8731a5ea1a8fe4952d11213099a027caea2d5de5bfb2c4fdef776ec8bca7b40acfb', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:45', '2022-06-16 00:36:45', '2022-12-16 05:36:45'),
('9201f0b1ffe42b47add24d1ba4353d09289762242ae239f7c092e40aecc9e24cc41b66e60fb7a49c', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:01', '2022-06-11 05:27:01', '2022-12-11 10:27:01'),
('9283c3bacc5e5eabf786864744819806d0cf00cb6f4f75d89fde1d0966dcd4d5ecce90986463f11d', 333, 1, 'Laravel', '[]', 0, '2022-06-15 14:25:35', '2022-06-15 14:25:35', '2022-12-15 19:25:35'),
('9339cc8c2f2fe9c03552ba925d5306da8884081cbcbc5f39434b56b1626e8e163c3c8d1c7b8f2c1f', 67, 1, 'Laravel', '[]', 0, '2022-06-08 03:32:27', '2022-06-08 03:32:27', '2022-12-08 08:32:27'),
('93dda77594913ad8f020ff4b890a1c6862705b2dc0ab03e68d7573ce9513d52767497e90bc0c21fa', 169, 1, 'Laravel', '[]', 0, '2022-06-12 04:50:55', '2022-06-12 04:50:55', '2022-12-12 09:50:55'),
('94a1ad6f15a08af24376df485e01b79b7e5f27ce63bef3ceb5aa8366f539a48cf28021817926c391', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:56:56', '2022-06-20 05:56:56', '2022-12-20 10:56:56'),
('956b9864ac711717cc739424d85cc09f6996048a73d70957920345a7aca95cff9b19dbdc32ea42d3', 206, 1, 'Laravel', '[]', 0, '2022-06-14 03:33:39', '2022-06-14 03:33:39', '2022-12-14 08:33:39'),
('956ee452eeade58c5c442a8e566e33aa88da1383e5ef127e4fe021f4d1b43190090df766956371a5', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:26:59', '2022-06-11 05:26:59', '2022-12-11 10:26:59'),
('9578f9ba05a676e741747abe2f0dfd34ba0364e4908ec239a63b4a4870dd21fb9f9f6885da4feabb', 169, 1, 'Laravel', '[]', 0, '2022-06-12 10:37:48', '2022-06-12 10:37:48', '2022-12-12 15:37:48'),
('965f28cc1653ecfb067b25b2c7793b808d0de35e3555af0e3843659e8a683bfa37161bd95d3175c2', 385, 1, 'Laravel', '[]', 0, '2022-07-06 01:22:08', '2022-07-06 01:22:08', '2023-01-06 06:22:08'),
('9680ff27fbdeff6de79a6a44e1f93dafd7536d995b3d9b12c0c8ee4ffb4c608eb15f4a0fdbe99ccc', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:19', '2022-06-16 00:36:19', '2022-12-16 05:36:19'),
('969c04cb54cbe1c48c8cd28df9c9f9f747985e1833eda70027773eeaa52f81448d1fe5b28d5bf116', 440, 1, 'Laravel', '[]', 0, '2022-07-15 06:03:33', '2022-07-15 06:03:33', '2023-01-15 11:03:33'),
('980c618907b8f0a9106534ee1357d2e085a95f9ccb0c8bde8e72ad2794b7851f02d958537340cee2', 169, 1, 'Laravel', '[]', 0, '2022-06-12 10:57:04', '2022-06-12 10:57:04', '2022-12-12 15:57:04'),
('98bad09d24eba051fcb8cc224a24aed99f2aaf788bf12531dd597a49fccc15e353bbc7970fe93e89', 171, 1, 'Laravel', '[]', 0, '2022-06-11 05:32:40', '2022-06-11 05:32:40', '2022-12-11 10:32:40'),
('98d2e421f42acce0bc4f0d6d720332e086a726688f063f2998048e568d67b2d32e70ae205fe13417', 417, 1, 'Laravel', '[]', 0, '2022-07-15 10:11:27', '2022-07-15 10:11:27', '2023-01-15 15:11:27'),
('99182ceca88e26fbc7c9a1c4bf5fb8daf16264ec447b26d1bbf7f303a75cdd11fe5408a47cc1a1fa', 219, 1, 'Laravel', '[]', 0, '2022-06-14 03:54:55', '2022-06-14 03:54:55', '2022-12-14 08:54:55'),
('9980a0742fa64bdcb09b3107bedc44d2ec2d102c7dbc6b27bef1e316a78d8d9251e6d03203d7f04a', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:26:59', '2022-06-11 05:26:59', '2022-12-11 10:26:59'),
('9afcdd5ef5cb4ada652f24dea49e11276138d1b512a4303fe654f7e3108086972cd2d52511d8bf77', 8, 1, 'Laravel', '[]', 0, '2022-06-02 01:11:01', '2022-06-02 01:11:01', '2022-12-02 06:11:01'),
('9b02974b10f167edbbfa2b5ce393c519bc959977090262ff783f72080a61cc307e8019ce70a48ca9', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:08', '2022-06-16 00:37:08', '2022-12-16 05:37:08'),
('9b839c51c68f605c695e636155faa9a8b17bdb7c9018ed6a3e4c2ea7893bff4ec53e7c44d06666dd', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:50:25', '2022-06-16 00:50:25', '2022-12-16 05:50:25'),
('9bd9c2c9358fec6fb20ff87d9b5c4d30d7dae003a69b66bf6ba9d616dcc3f8935701deaba77a31a5', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:38', '2022-06-16 00:38:38', '2022-12-16 05:38:38'),
('9bec317819e7d2eb24ffd5a427191a7c2c8cb2ec0e4b6bc61d30b41f4120a316ff8c077148a25806', 448, 1, 'Laravel', '[]', 0, '2022-07-16 13:00:31', '2022-07-16 13:00:31', '2023-01-16 18:00:31'),
('9c13b52c6904062f8a6d74971f11be3237b098ba66d81fae40533bd94b2543d5f66df022a84222e8', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:17', '2022-06-16 00:38:17', '2022-12-16 05:38:17'),
('9c2d9d8cb88656d6ef625daae78ea2d288139373211ec2303c5728f182188fb6e5ed5c40f5cb385e', 28, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:39', '2022-06-07 06:16:39', '2022-12-07 11:16:39'),
('9c48b837ed094a122b74bfa3b5359809c6f834ecb6506915da934eefe683cdb3cecd928f40c059f0', 212, 1, 'Laravel', '[]', 0, '2022-06-14 03:41:29', '2022-06-14 03:41:29', '2022-12-14 08:41:29'),
('9c53f529f64e08561ce1f37f3910973e9ad0ec034dee16eac1201929591cd21fa69a45ff3ad5897b', 149, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:01', '2022-06-11 01:17:01', '2022-12-11 06:17:01'),
('9c9384d405b1570c9a60255bdd2178911b5b3cbfe4899dccc5d79b4ffb52306609b6b90f54fa8266', 169, 1, 'Laravel', '[]', 0, '2022-06-11 03:20:52', '2022-06-11 03:20:52', '2022-12-11 08:20:52'),
('9cb7c1294c1f2f0dabf025bf0741956df3dafdd9e0d2837d6c05f76e92f88775db25acf08881e58c', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:08', '2022-06-16 00:36:08', '2022-12-16 05:36:08'),
('9cc005071f80b9606b429c58739c751bb1e242a3d7ef0f2528e8d0b2627a5392537b17677dcf6680', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:26:59', '2022-06-11 05:26:59', '2022-12-11 10:26:59'),
('9d25e878dab23490f5a3ae2b72174046b9cf92cca7c926fc228047c6eeefd6c43c92f227724f52dd', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:23', '2022-06-16 00:38:23', '2022-12-16 05:38:23'),
('9ddc31a3c461b0119e34c1e9b55444c1331181f745074c8893725e90161ff243151f1779d910de59', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:55:53', '2022-06-20 05:55:53', '2022-12-20 10:55:53'),
('9ea95a398c8a63440db75c01cb777e508b85943c61954994a4a9fedfac1fa9744468a169fde77f38', 92, 1, 'Laravel', '[]', 0, '2022-06-09 05:58:56', '2022-06-09 05:58:56', '2022-12-09 10:58:56'),
('9ecbb04fe6026fcbc11f7dbac88a0030f2af5464b21ae379af9c08619527347998f7a71151a32b17', 379, 1, 'Laravel', '[]', 0, '2022-07-05 11:30:37', '2022-07-05 11:30:37', '2023-01-05 16:30:37'),
('9f5784c1474c41fbe9f627d30790625c1923213c9bc3ee0cde8f87a274516fdd50925dcd3be148a1', 417, 1, 'Laravel', '[]', 0, '2022-07-15 11:09:55', '2022-07-15 11:09:55', '2023-01-15 16:09:55'),
('9ffe2fa8b27516a5515a38a96755c0a874a11d748946da5f621daa9842d24655ba3c3bfebf700661', 358, 1, 'Laravel', '[]', 0, '2022-07-04 03:36:06', '2022-07-04 03:36:06', '2023-01-04 08:36:06'),
('a0dd76f1b84abc998306ca07720097e72dce5f7b6cf60754b07630ba4de328b87202667ece0179e1', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:38:58', '2022-06-20 07:38:58', '2022-12-20 12:38:58'),
('a15221355cef50b168d62e09770bb44ba1a21ae8d4963a3f4b75758d23deb0eeec52976513721bfc', 316, 1, 'Laravel', '[]', 0, '2022-06-15 13:32:51', '2022-06-15 13:32:51', '2022-12-15 18:32:51'),
('a171539a1a4be91d2441afc4d95273bb7cf36f811ea34d88603f9bd9753f88d9f2ec5cd49cf7fe97', 438, 1, 'Laravel', '[]', 0, '2022-07-15 06:00:44', '2022-07-15 06:00:44', '2023-01-15 11:00:44'),
('a1887994443e0d6187405426a48b7767fb0e82d6b21b606cd565fb8d30032f4fd4fa85ec81c2addb', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:21', '2022-06-16 00:38:21', '2022-12-16 05:38:21'),
('a1a081b6eeda8c8a9b5ef537e50282b801c52d231e8ee9ef7dd597efbc1850960ba6b2524f5f9277', 156, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:11', '2022-06-11 01:17:11', '2022-12-11 06:17:11'),
('a1b8cf1000649d13397e01a9577e354b5aee646852b6b3ca0f6ae1282619f8b413cbd799cd814d8a', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:22', '2022-06-16 00:38:22', '2022-12-16 05:38:22'),
('a20c217bef9a157046c269390f72f05d111aa60c8f0f8da1e7d6a5ad34cbc75353c9eb6adffe580c', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:23', '2022-06-16 00:38:23', '2022-12-16 05:38:23'),
('a40891d2ce99711fd98f84b09ef6f332d7b0adcfb0c3c98cb52d0470b09a1bc44763f52b1d65a49c', 16, 1, 'Laravel', '[]', 0, '2022-06-07 05:28:04', '2022-06-07 05:28:04', '2022-12-07 10:28:04'),
('a408e3d0bce8167ce69874b748251db7d5417690d1250df3928c15c9093a94031f3535b86df38d5e', 358, 1, 'Laravel', '[]', 0, '2022-07-06 23:46:17', '2022-07-06 23:46:17', '2023-01-07 04:46:17'),
('a41f4d6b9fc2f1ef7213df08e9bb9cc9ee773f4bd611eaccc6d2e8c473d922e90586ae4bc1229715', 19, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:38', '2022-06-07 06:16:38', '2022-12-07 11:16:38'),
('a449429673b727d8914ce0f7ac22d11e69d7970dc26371db4dc768bbc84f40a8efc49f95f3b42ead', 195, 1, 'Laravel', '[]', 0, '2022-06-16 01:03:44', '2022-06-16 01:03:44', '2022-12-16 06:03:44'),
('a4b2283a80361e5dad46a8a0d4d83f2d957f823859d87044c3a6e36020084ae89e653628cf5cbae1', 340, 1, 'Laravel', '[]', 0, '2022-06-16 00:49:28', '2022-06-16 00:49:28', '2022-12-16 05:49:28'),
('a4cac5308638671339d1ef2fbb231d0f0a700a8af745a56a54854f59074d1908453f2058c8434f4e', 141, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:53', '2022-06-11 01:16:53', '2022-12-11 06:16:53'),
('a4e11eda86666bd1cf4ca3ea10d2df27d87a944ad250c5822bc4bd3e88bf691663809875e83a3051', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:06', '2022-06-16 00:37:06', '2022-12-16 05:37:06'),
('a4f0d35bf3df3c9f497f3ba1ef42a5cf0058c2181f645f3afa04d3bd29002ef66f2590e7fa86e9c4', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:42:11', '2022-06-12 11:42:11', '2022-12-12 16:42:11'),
('a5321035348dc0be2b400692c5b9259bbf24c65533f67d12415c79874340343d95d4a1c5c739783f', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:26:58', '2022-06-11 05:26:58', '2022-12-11 10:26:58'),
('a53bba76d5115d9a8b4fa5d9a4941d7484cda9246991cbd264289df14f5d4dca5483dce7943917d4', 138, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:52', '2022-06-11 01:16:52', '2022-12-11 06:16:52'),
('a580569bda3ed3e8cdacfdf6061c839d33b35fb0ca05822560426412b210c94d1f898f24892dba61', 55, 1, 'Laravel', '[]', 0, '2022-06-07 06:19:21', '2022-06-07 06:19:21', '2022-12-07 11:19:21'),
('a5bf8d32b588ff787b428aba75d6c1275c221786b87604eecb8dd567aefb64566af6c290526ae67b', 408, 1, 'Laravel', '[]', 0, '2022-07-11 13:31:49', '2022-07-11 13:31:49', '2023-01-11 18:31:49'),
('a5db94c119ead5f7f84e14380f3fe4a652e8a2e07634ed5ce1f111b0cf9dda7a567d00b7f94ee96b', 169, 1, 'Laravel', '[]', 0, '2022-06-11 05:35:10', '2022-06-11 05:35:10', '2022-12-11 10:35:10'),
('a5e7b4204edf7a00717af84663436ee558e5ce76c99081198eb4593635548e5e83208887a6966a7b', 32, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:40', '2022-06-07 06:16:40', '2022-12-07 11:16:40'),
('a6112483ae5306f530cc8c0872a0076188ed3023a8b925a926dbeb76933afe64392871a3952297d3', 389, 1, 'Laravel', '[]', 0, '2022-07-07 02:47:48', '2022-07-07 02:47:48', '2023-01-07 07:47:48'),
('a6b5b04f5a21220a6bd8e2be10cd52457a4ca4d95901ebe5a7564322b8a3225080813203b2283975', 449, 1, 'Laravel', '[]', 0, '2025-12-14 18:45:36', '2025-12-14 18:45:36', '2026-06-14 23:45:36'),
('a6c97e8b0d9b8d16f8481cc21079ae4718681c53668123a87e9bd327665f36453ccf79490c882641', 418, 1, 'Laravel', '[]', 0, '2022-07-13 08:52:26', '2022-07-13 08:52:26', '2023-01-13 13:52:26'),
('a70c8ac2345bbd7a9dbaf96b3ce5ed37b3332e95bbdfa8370fa69531883b4403d27cdfcf76914cf6', 169, 1, 'Laravel', '[]', 0, '2022-06-12 04:51:10', '2022-06-12 04:51:10', '2022-12-12 09:51:10'),
('a73392d3644378a3ac7704f5dc503c0d21e9eedff740fb8ce03085dbb21af3e402fa706f570925af', 398, 1, 'Laravel', '[]', 0, '2022-07-08 02:40:20', '2022-07-08 02:40:20', '2023-01-08 07:40:20'),
('a74e579632270f8cf78494650b02f41532a75dfa2e9ff441aa3cba0b1a8c14216ed415e190a8f44e', 309, 1, 'Laravel', '[]', 0, '2022-06-15 03:10:24', '2022-06-15 03:10:24', '2022-12-15 08:10:24'),
('a776424c35582f63c55d9cf45ad7aff681df9a8606304bcf54d2456731bab8584c3ef24162c850c7', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:21', '2022-06-16 00:38:21', '2022-12-16 05:38:21'),
('a849ee1d05ef11b9d7d1cd05f27fb91464f56ebdfea862ca92a60100de663d35e8398e4f3fa92693', 140, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:53', '2022-06-11 01:16:53', '2022-12-11 06:16:53'),
('a898ebd2375363b896d0434055eae0a8c00b9884134507075c1789310c15358754a5d4c819e19c2e', 421, 1, 'Laravel', '[]', 0, '2022-07-15 05:43:33', '2022-07-15 05:43:33', '2023-01-15 10:43:33'),
('a944e65928977f5ec65e0caf8201b8d15e279e66e443ee6d2e418367e607e940eaa561728b33af89', 251, 1, 'Laravel', '[]', 0, '2022-06-14 04:21:28', '2022-06-14 04:21:28', '2022-12-14 09:21:28'),
('aa0f56b2e3971726991c542abde57021b3cf9fc19d50cb75effeb953e91f4da3592ac7d6dbeecd68', 394, 1, 'Laravel', '[]', 0, '2022-07-07 23:51:04', '2022-07-07 23:51:04', '2023-01-08 04:51:04'),
('aa1bfffa6f5324163339b1bd5c35b1306055d517ba34265b946c1aec3bf149ed816c8167400a19ae', 195, 1, 'Laravel', '[]', 0, '2022-06-17 05:32:27', '2022-06-17 05:32:27', '2022-12-17 10:32:27'),
('aa222600ce17ba815725fc90526d0a0b3f88d06ca13b21f78280d551142f43c29ab9ab7fdb5267a3', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:39:55', '2022-06-12 11:39:55', '2022-12-12 16:39:55'),
('aa3bb56c421dbdd805b83980d36684780e8db3a109994249008a427e2ad61ca190177022f4d34e4b', 418, 1, 'Laravel', '[]', 0, '2022-07-13 08:40:31', '2022-07-13 08:40:31', '2023-01-13 13:40:31'),
('ab56c0f305266b6e43c1b26a1c0f75398548f118c8ea44a71eed956a5fbbc308fa6834dff166f7ce', 373, 1, 'Laravel', '[]', 0, '2022-07-07 02:02:32', '2022-07-07 02:02:32', '2023-01-07 07:02:32'),
('ab5712a42ff570a132955a75a6209e2628c8e815d02c4d5ec414a73e6162dff4f36aa0e5efe2a785', 356, 1, 'Laravel', '[]', 0, '2022-06-21 01:48:41', '2022-06-21 01:48:41', '2022-12-21 06:48:41'),
('ab58586bf547f1068b41a5b87cf1b5b8684db1fc0afd6d6704f4b74fb7a07963c7d8401a0df323f5', 169, 1, 'Laravel', '[]', 0, '2022-06-12 05:17:51', '2022-06-12 05:17:51', '2022-12-12 10:17:51'),
('ab82c79f8acca0b486bc67664b0ec58e157f806de4a926348973a44305cafa029e0e7b19f79016c9', 87, 1, 'Laravel', '[]', 0, '2022-06-09 05:17:13', '2022-06-09 05:17:13', '2022-12-09 10:17:13'),
('ab889d7a71ffe87aeac0071ecc671b72c681cae681a99dbb9bcea1fcfae7eb4e59a2dea420a0d892', 105, 1, 'Laravel', '[]', 0, '2022-06-11 00:24:13', '2022-06-11 00:24:13', '2022-12-11 05:24:13'),
('abf563a791524d4fc54f85b7b3da127d5b1b58bdd42f9e8e4d57e4c7b453c2a60fbcfc9352db5735', 411, 1, 'Laravel', '[]', 0, '2022-07-12 11:57:33', '2022-07-12 11:57:33', '2023-01-12 16:57:33'),
('ac988788124a222427e0f7c97c3e70061e2cca1a991d3745b7ba15ff43dec3b8e4c02da4fd899d59', 5, 1, 'Laravel', '[]', 0, '2022-06-01 12:41:41', '2022-06-01 12:41:41', '2022-12-01 17:41:41'),
('acb984bd4ca54c89991e09a0b6e470b6ce19c0f1c37ff13c6924609b490952676cab0833aaa29995', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:45', '2022-06-16 00:36:45', '2022-12-16 05:36:45'),
('acc3b9ff9118d13818bb7f7f537b9c6d2ee5bb86b2b087c98264f82c1b58bef2700befdec6490250', 195, 1, 'Laravel', '[]', 0, '2022-06-25 01:28:47', '2022-06-25 01:28:47', '2022-12-25 06:28:47'),
('ad1268a7e9fc571332da82e1a5b90d980da328214d4879f0da67ae5aa90f3ae29f55065e1462038f', 195, 1, 'Laravel', '[]', 0, '2022-06-12 14:05:57', '2022-06-12 14:05:57', '2022-12-12 19:05:57'),
('ad287f73c3331e2ffbedb19735be55961bf9336b20f50457badd20362edf5c4cec53d830b49f9858', 3, 1, 'Laravel', '[]', 0, '2022-06-01 05:20:26', '2022-06-01 05:20:26', '2022-12-01 10:20:26'),
('ad522e4ea4607a2ce94b1e086860f6560d65038a7246b77b559f267f23c3e4221cf44ccb8dfbede4', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:24:29', '2022-06-11 05:24:29', '2022-12-11 10:24:29'),
('ad526ca9baec02b9830232324ffe555d6ecb733ca8ca64ab538e3d64379b99d927a523e9cca5986c', 195, 1, 'Laravel', '[]', 0, '2022-06-21 05:13:17', '2022-06-21 05:13:17', '2022-12-21 10:13:17'),
('ad639da1f9381537a475c8f600f128437acfb1acb2bb6aa4aad8cbc24a6f22f04bbe5e240cdc45f9', 420, 1, 'Laravel', '[]', 0, '2022-07-14 05:25:20', '2022-07-14 05:25:20', '2023-01-14 10:25:20'),
('ad73122012410ba6719ec07154e076d43aabad4643f63452672a9c96407beb841c681e698b1fd29b', 177, 1, 'Laravel', '[]', 0, '2022-06-11 03:49:08', '2022-06-11 03:49:08', '2022-12-11 08:49:08'),
('ae2ad2946a726bcd0d6d194d01fab6d83c8bda0d81395b6d359412fe01dcc8e21453527360190947', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:19', '2022-06-16 00:38:19', '2022-12-16 05:38:19'),
('ae3e6ab2c4c1087c58da8acd8493b22eef7887e74b4b804b1d8565834cd4b7520c188c6593e1c2af', 243, 1, 'Laravel', '[]', 0, '2022-06-14 04:16:22', '2022-06-14 04:16:22', '2022-12-14 09:16:22'),
('af06f430815a2f4b1562fb9faa51fe69967d106479288849296ec691fbba1e7f5c0436ea9366fd1d', 195, 1, 'Laravel', '[]', 0, '2022-06-20 06:05:09', '2022-06-20 06:05:09', '2022-12-20 11:05:09'),
('af3ec884fd200a59aeb6e7350fb5f8921bea9013078db675453e7d793de98173e8d7872444c137f9', 25, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:39', '2022-06-07 06:16:39', '2022-12-07 11:16:39'),
('afa96581121f44e8bf62d6acae12157ce55d1d4e676ef3d6b00c674e8cad339fe47790524d0a6acd', 391, 1, 'Laravel', '[]', 0, '2022-07-07 23:12:26', '2022-07-07 23:12:26', '2023-01-08 04:12:26'),
('aff4e8bcd5bd9ed934a3c89cb8335834ed248267c496386fa4e109c787671db89bbc3e8548e614f3', 441, 1, 'Laravel', '[]', 0, '2022-07-15 08:20:13', '2022-07-15 08:20:13', '2023-01-15 13:20:13'),
('b01230bb29a2003ee2def402bc310a7dc391e37c18d4039ff0ec72e0712db50c81f9383a50883331', 445, 1, 'Laravel', '[]', 0, '2022-07-16 12:31:25', '2022-07-16 12:31:25', '2023-01-16 17:31:25'),
('b027466bdd6c90a6bd56071828963a87f447115995574cf63b94a9e40e27a1c6cd3001a5ecd0ad2a', 37, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:05', '2022-06-07 06:17:05', '2022-12-07 11:17:05'),
('b0290b7d0df7d96d1cad0ccef35fe6c16091419d1f74666e34e984891b41fe8c579b644a15b1570d', 135, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:52', '2022-06-11 01:16:52', '2022-12-11 06:16:52'),
('b089d64bdfbce11f00299ce534692a069aa232e2fd75e008e3969b50a5d5f0dddc0208c2f806015e', 390, 1, 'Laravel', '[]', 0, '2022-07-07 08:30:55', '2022-07-07 08:30:55', '2023-01-07 13:30:55'),
('b16b06125c5ac0dd132d943a50c7de33d6f1049000026823af37e58333d29d31acfd1436a26a9e18', 195, 1, 'Laravel', '[]', 0, '2022-07-04 03:12:21', '2022-07-04 03:12:21', '2023-01-04 08:12:21'),
('b336d19bb7c1149ec0aa26ac5d3be9147205fddd179b1c0637390eca8dd7c1a199a79bc323f505d7', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:03', '2022-06-16 00:36:03', '2022-12-16 05:36:03'),
('b343dbc3c2546beaf2ebf22ae57ba768224acce1a9b5f1359bab2e5586588bcd29fdbd10ac8c73ee', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:44', '2022-06-16 00:36:44', '2022-12-16 05:36:44'),
('b48673e800b94f08b17126c3a6efba6a27686b8182990a37bb05e0134ffc1d456d75ae0ee0585386', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:09', '2022-06-16 00:37:09', '2022-12-16 05:37:09'),
('b48a0941d7c375bacf6c3fbdd14c2c34fef5b75b35c0719a82f7a15108deee9635c27ca7ef2afb4d', 360, 1, 'Laravel', '[]', 0, '2022-07-04 03:39:04', '2022-07-04 03:39:04', '2023-01-04 08:39:04'),
('b48c9270f0650fdc18910563ff4e72182c65c9fa47290c1d9a6930102f7021f44e0604f3b92c6bbd', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:34:00', '2022-06-20 07:34:00', '2022-12-20 12:34:00'),
('b4c5fc1fb625620850d36225fbd78644a78e413fafdd4a921eb60b59fba5eb6d42d0eceae07ca39c', 9, 1, 'Laravel', '[]', 0, '2022-06-02 01:11:03', '2022-06-02 01:11:03', '2022-12-02 06:11:03'),
('b5d9fa0450c464a52fa41976d0a93c6be96bffa1d91483ffa23d2de262749655f22791571ced425e', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:24', '2022-06-16 00:38:24', '2022-12-16 05:38:24'),
('b630cb8b3bcb4d0a91845d3ba9dac834a3d2ae5579d395b1785a4304e1910532d8da1debe049c78a', 203, 1, 'Laravel', '[]', 0, '2022-06-14 03:26:45', '2022-06-14 03:26:45', '2022-12-14 08:26:45'),
('b82c51c02e39faca448f3722abf2ccb7f71131dfa5b1d50feb04d4712897a1f5847b858e32a3f626', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:56:42', '2022-06-20 05:56:42', '2022-12-20 10:56:42'),
('b85050bea6835b8e99e70ff9b6e6f32f6651f2c6a20db037e309f0297a9f5416d1a5ba04d6231afb', 390, 1, 'Laravel', '[]', 0, '2022-07-07 07:35:26', '2022-07-07 07:35:26', '2023-01-07 12:35:26'),
('b8d7d251ae169ef979a1fdfa10a1045c927c3025afb5fcdd060e89300dabace8e59a0b151440f07d', 413, 1, 'Laravel', '[]', 0, '2022-07-12 12:55:15', '2022-07-12 12:55:15', '2023-01-12 17:55:15'),
('b8fbc2c2f3b4c06ca12eca86d67654fdfe36c917a8db3526b536715c5d957c0308f889728db87a0e', 312, 1, 'Laravel', '[]', 0, '2022-06-15 05:50:32', '2022-06-15 05:50:32', '2022-12-15 10:50:32'),
('b9520eff8f221ee6c068cc1403e3bcfbd80d7c3992a42209f5a05381d81c16ea8a7b9ed9310536ed', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:22', '2022-06-16 00:38:22', '2022-12-16 05:38:22'),
('b956279c95fd9016427e31d8846688cde719e7ae4796091911da04f0c63722698362ddb04e8deecc', 195, 1, 'Laravel', '[]', 0, '2022-06-20 03:54:54', '2022-06-20 03:54:54', '2022-12-20 08:54:54'),
('b9fedfd3e152e52112ff70fffb386d590aaa7d0d15de55d1864d50b6dfa1555d0ae10c6355331938', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:41', '2022-06-16 00:41:41', '2022-12-16 05:41:41'),
('ba0f13a7daa6c536120cfce72d9d1d0dfec548d5260816602ab7dd962e96e5a09f96872fb5edd83b', 29, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:39', '2022-06-07 06:16:39', '2022-12-07 11:16:39'),
('ba6fb35e5f3700a9f484c7c0b29128db46203d6b8e4f168972d52e71f029016bd0ed2afdf7420c5d', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:41', '2022-06-16 00:41:41', '2022-12-16 05:41:41'),
('baab9228152e35ba9c02353fd2392c0f18b0b9bf224b5dabbad114b0c0111e9bc074d8520e76cf26', 397, 1, 'Laravel', '[]', 0, '2022-07-08 02:38:07', '2022-07-08 02:38:07', '2023-01-08 07:38:07'),
('bb3408bd0ab9eccf674f14048c581d3e79653a4a18a2ecb48d82a929ae893d2bd3cf3f6b717779d4', 181, 1, 'Laravel', '[]', 0, '2022-06-11 04:47:36', '2022-06-11 04:47:36', '2022-12-11 09:47:36'),
('bb9720d889647ec66aae2b7766b768d3a9fe964a3bfca0b55ee46d1a1533e0638687ba2fa2d27c68', 62, 1, 'Laravel', '[]', 0, '2022-06-07 07:32:39', '2022-06-07 07:32:39', '2022-12-07 12:32:39'),
('bbe7318808f5dc9d13361fba2edf977884da64d55f80135d7d27f6f3ca3ba616cde449c9ac3035be', 352, 1, 'Laravel', '[]', 0, '2022-06-17 06:07:24', '2022-06-17 06:07:24', '2022-12-17 11:07:24'),
('bc7b229c2d530b55a0e92c66040c145a3e94ddb58588332236c3b569bfb0380e62d185654b5fbf39', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:21', '2022-06-16 00:38:21', '2022-12-16 05:38:21'),
('bc8086ae7c80aeab756c0587bbc795e87be307ac3980125b484aedfc3b8fdfd62d053a44d62a1eff', 413, 1, 'Laravel', '[]', 0, '2022-07-12 12:56:05', '2022-07-12 12:56:05', '2023-01-12 17:56:05'),
('bc818dc09a44950f217e6e2135e61d8624a5f42f8fd2987bbc9958286d13abdc5c0ee542eaa0a90e', 2, 1, 'Laravel', '[]', 0, '2022-06-01 01:12:36', '2022-06-01 01:12:36', '2022-12-01 06:12:36'),
('bc8e202518f2857f9b46b6d2c5b4424f676013e055724f69626df72acfe5f485f0cb4f4f8cf6f6da', 417, 1, 'Laravel', '[]', 0, '2022-07-13 09:11:05', '2022-07-13 09:11:05', '2023-01-13 14:11:05'),
('bcbfd5023da3f1254cc0e2f5d6cca90a73396fc0f492726d7730a1644972d1007a8820dd15dd0a0e', 38, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:05', '2022-06-07 06:17:05', '2022-12-07 11:17:05'),
('bcd057db71cb25b8d971d5c5f4e4299fe4373923bb0d3919bbb451b32629e3cac03623e23426115f', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:23', '2022-06-16 00:38:23', '2022-12-16 05:38:23'),
('bcd85a6475634482e0386145a23c224a2e93bd6480a39a7210e3ad3252c6b716f2353a93a38e5296', 431, 1, 'Laravel', '[]', 0, '2022-07-15 05:52:16', '2022-07-15 05:52:16', '2023-01-15 10:52:16'),
('bce1025b8b705d9a610408976702a815947b0374795ea0e4f4ce5704445d31e4b38c735c1c930454', 419, 1, 'Laravel', '[]', 0, '2022-07-14 07:07:36', '2022-07-14 07:07:36', '2023-01-14 12:07:36'),
('bd40cd61a2ba217fd13779aa177872a0ca34c1376b521ae477466dddbe3efffa647f88225aa818b7', 171, 1, 'Laravel', '[]', 0, '2022-06-11 05:30:59', '2022-06-11 05:30:59', '2022-12-11 10:30:59'),
('bd5927e70802f9547480f4ce317a0419c914838f3584cccb63cd72425d5dfe46325a5116c76c8ebb', 169, 1, 'Laravel', '[]', 0, '2022-06-11 05:41:49', '2022-06-11 05:41:49', '2022-12-11 10:41:49'),
('be26e93d5aca4878eec22deb45c53b2b6405b37f266863d1e569dfd443d5b4855baf79a9553e9a03', 440, 1, 'Laravel', '[]', 0, '2022-07-15 06:43:23', '2022-07-15 06:43:23', '2023-01-15 11:43:23'),
('be93c7087247063b11c8b15bd9f4eba301ab4266067e4c66ab505630ea3c8989d2abe42069229b38', 254, 1, 'Laravel', '[]', 0, '2022-06-14 04:22:10', '2022-06-14 04:22:10', '2022-12-14 09:22:10'),
('bf033b4b37a182e1ee1ecf16c6c3590b66faa1ee772c1d11c3984bd39f61662a31a9701dac790ef8', 195, 1, 'Laravel', '[]', 0, '2022-06-20 07:42:01', '2022-06-20 07:42:01', '2022-12-20 12:42:01'),
('bf146866c23db9056d1f2260da5fe98da927b9a5cf27122a283dcd7a3cd587abd9b32d7bdc0a2e02', 195, 1, 'Laravel', '[]', 0, '2022-06-16 05:59:56', '2022-06-16 05:59:56', '2022-12-16 10:59:56'),
('bf4dfe0f471c828fb260fb45b3acb34e9805089ce9562f161c43d4ac4268ae46ff6dc84e8dcc6306', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:45:58', '2022-06-12 11:45:58', '2022-12-12 16:45:58'),
('bf6bfc0dc4329cea36e361e526143bee5494466759e76ac43e269c541324285ff92a9a674e121ee4', 360, 1, 'Laravel', '[]', 0, '2022-07-04 12:21:58', '2022-07-04 12:21:58', '2023-01-04 17:21:58'),
('c0393bbbd28f249b1d15a79c8d33b71b09e3111be560c2d723e917c41005d1b927a0b7f1c7e9b204', 168, 1, 'Laravel', '[]', 0, '2022-06-11 03:18:50', '2022-06-11 03:18:50', '2022-12-11 08:18:50'),
('c0524899628b59d8fb96bd0551b1515836b072e7dfd067adc1c28cf5507d133591fd894727c6bafe', 52, 1, 'Laravel', '[]', 0, '2022-06-07 06:19:09', '2022-06-07 06:19:09', '2022-12-07 11:19:09'),
('c0b54235e3dfe2ddb0f68c774cc80ea02f8a02a687dd2e420e4b524bee62569feb610752aed11661', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:46:09', '2022-06-20 05:46:09', '2022-12-20 10:46:09'),
('c0c80544ce2dda4409975003a433ed7de6c8e91bcbff341d0f5f5a4059abc755e0251730df7e276f', 324, 1, 'Laravel', '[]', 0, '2022-06-15 14:21:54', '2022-06-15 14:21:54', '2022-12-15 19:21:54'),
('c12a05afa58545e444d13dfafea41ddfff20aab73fd62b44765bd15ea2f6e576a07804875ba67415', 114, 1, 'Laravel', '[]', 0, '2022-06-11 01:14:37', '2022-06-11 01:14:37', '2022-12-11 06:14:37'),
('c16ed91e5001a15b3388f03995943d23373f27d57ba71f3c5782a7572e38a903044b8ff027d692d4', 358, 1, 'Laravel', '[]', 1, '2022-07-07 00:27:21', '2022-07-07 00:27:21', '2023-01-07 05:27:21'),
('c1b567431aa74208aa3981db23eaed5327bac62e52dbfd3ac465dc0936428194be362bfb7ad3f292', 190, 1, 'Laravel', '[]', 0, '2022-06-12 13:29:56', '2022-06-12 13:29:56', '2022-12-12 18:29:56'),
('c2253fe6a5671f817fba7e3c9d4bcfd2c87a50f710a7c56e7328cfe97ba1bccb244fec8374a0bc34', 448, 1, 'Laravel', '[]', 0, '2022-07-16 13:02:38', '2022-07-16 13:02:38', '2023-01-16 18:02:38'),
('c24a612754034ed3fa540ea6b9ec4565fc3f165cc98455ee78018d9fbbcdd06e110c743a6ba2ff9f', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:19', '2022-06-16 00:38:19', '2022-12-16 05:38:19'),
('c285a2084ac3d92192ae45fd31ba09359628ee28800e09fec53bbc458ddead662955503259015cb0', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:53:38', '2022-06-20 05:53:38', '2022-12-20 10:53:38'),
('c38426be9fdfb38fd5862eae003c19343b4678d3353e839ef908fc4e3eb0cae55978c73e423798cc', 419, 1, 'Laravel', '[]', 0, '2022-07-15 18:17:00', '2022-07-15 18:17:00', '2023-01-15 23:17:00'),
('c45472d78545562c8601473ed531f455c54da0f5f2492740af590c0d8d41f379f8b45fb5987b4599', 59, 1, 'Laravel', '[]', 0, '2022-06-07 07:01:30', '2022-06-07 07:01:30', '2022-12-07 12:01:30'),
('c46d934144320f91c05b9c663c2fedaf5e64b6ce7b91a6d27f3cc553dfa4f841afc77f812d866813', 188, 1, 'Laravel', '[]', 0, '2022-06-11 06:08:30', '2022-06-11 06:08:30', '2022-12-11 11:08:30'),
('c47c025a4712862830091704fdd0ccf13ebd62bb1aafccff216464a455cdf6bb653141518c21e58d', 365, 1, 'Laravel', '[]', 0, '2022-07-04 03:53:01', '2022-07-04 03:53:01', '2023-01-04 08:53:01'),
('c4d675b957e3cb32e0066d3cb1a11d5642b63f7acc35d9d4d4d77bb32a79b82acbd96b0b662c313b', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:54:14', '2022-06-20 05:54:14', '2022-12-20 10:54:14'),
('c5762d369512b1187862c56d03786754cbce320461c0758634d4e623a21afdb2753bbc14d47cde15', 446, 1, 'Laravel', '[]', 0, '2022-07-16 12:36:48', '2022-07-16 12:36:48', '2023-01-16 17:36:48'),
('c6161761e54078106b134fb79f35c329dc913f21b3c8b8b8e90fcf7254279751b27c8710486ae09f', 418, 1, 'Laravel', '[]', 0, '2022-07-13 08:51:58', '2022-07-13 08:51:58', '2023-01-13 13:51:58'),
('c638ec6140b8968ce33b5d339193db16e5e9cfeaca13539fe2b524db7f597bbde19bb8d8bb6c4e65', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:36', '2022-06-16 00:38:36', '2022-12-16 05:38:36'),
('c6643be553b5dfa13cdc66fe50638ef6bf644cac094555121f0e4c5d06b25e831814a975c8d5e42a', 129, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:51', '2022-06-11 01:16:51', '2022-12-11 06:16:51'),
('c68301b7fd3c3e9852b89a410d01d17584c2bdbe7a8eea1cc337043b7f8fe49e57fbf192a346d1fe', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:39:01', '2022-06-16 00:39:01', '2022-12-16 05:39:01'),
('c6c703d087a05d85cfd0da4047ac6d980037a15c69f5f842f9937e82812d1643f57eb1f4e6318c85', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:54:33', '2022-06-12 11:54:33', '2022-12-12 16:54:33'),
('c82122ab9d061ff2a4e4653b7e486b90b17ab7266254328c74cedee8fa7e979922df965c3ce0387d', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:47', '2022-06-16 00:36:47', '2022-12-16 05:36:47'),
('c83950f1a5f5f74df39629aff9dba5d173991984db295dc096ec37c1bdc62c227e82a74fbf98a10d', 440, 1, 'Laravel', '[]', 0, '2022-07-15 06:29:58', '2022-07-15 06:29:58', '2023-01-15 11:29:58'),
('c84ccfce59013a62899eefae14a3f32275379e52b12773cbf63b8d16571a407b8b558a1585acb77d', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:15', '2022-06-16 00:38:15', '2022-12-16 05:38:15'),
('c9679c865723d833e02522fcd8e0d8d9c3d34f282b6bf535257a5eca1231a3695bf2d3c82b05f455', 30, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:40', '2022-06-07 06:16:40', '2022-12-07 11:16:40'),
('c9b42a253a9b8a0a8519e87e7f3fbce0954cf55fc9c3f3f5ec32d85d8bd890ce7c321072b50454c5', 86, 1, 'Laravel', '[]', 0, '2022-06-09 05:14:40', '2022-06-09 05:14:40', '2022-12-09 10:14:40'),
('c9dc083e2c960d4e885930026f018fa0721bc793e512d721987dce8c937d3ebe04fda7d5c1a915af', 229, 1, 'Laravel', '[]', 0, '2022-06-14 04:11:20', '2022-06-14 04:11:20', '2022-12-14 09:11:20'),
('ca501e29b761073359dcc31ab1781f85fe9f138c483010d010cdaa0019c7cfb782eec571e24b63dc', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:24:42', '2022-06-11 05:24:42', '2022-12-11 10:24:42'),
('caa6ce8bb1b3f0e33d467f21e4540d2babdce3d632aed95559ef7d901bc37527da826a8bcf6b321b', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:12', '2022-06-16 00:36:12', '2022-12-16 05:36:12'),
('cb0d4dcce662e074c841102f58607c40cd837ddac27a00aeead01509e2b1a9d657b612875298a435', 411, 1, 'Laravel', '[]', 0, '2022-07-12 07:35:06', '2022-07-12 07:35:06', '2023-01-12 12:35:06'),
('cb85c97f5eedc14ae471c0afc355729dbc27742f53f00d64a82c8ff37a12bfda911f192f62cfb02c', 68, 1, 'Laravel', '[]', 0, '2022-06-08 03:36:03', '2022-06-08 03:36:03', '2022-12-08 08:36:03'),
('cbfd6e6c82b87001e5820e85ba32e301770eeba8db3dfe8a1c0346a7aa4621e1b181c14fcbe0f59c', 417, 1, 'Laravel', '[]', 0, '2022-07-15 09:59:08', '2022-07-15 09:59:08', '2023-01-15 14:59:08');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('cc5300f3e9388cbf1a3f8b45d9983ee38144cd0331168ff6e29c0131612027020451be48488cd021', 418, 1, 'Laravel', '[]', 0, '2022-07-14 05:32:41', '2022-07-14 05:32:41', '2023-01-14 10:32:41'),
('cca8c3d0ece581fec29b328f7dfb53bf93517438cc070cb1ffd37849ce4c188e18e6133b157aa452', 125, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:50', '2022-06-11 01:16:50', '2022-12-11 06:16:50'),
('cdc90ac5dcf0255bc5d918bc6c74667a35a95886979c351f00d4d74f195b9fcacb0e3495009963f8', 64, 1, 'Laravel', '[]', 0, '2022-06-08 00:58:09', '2022-06-08 00:58:09', '2022-12-08 05:58:09'),
('ce03d890a9e0cbbd33be87d51b4aa75603c0cfc60c71f4205f7448fc4bfda816e116e3c556d54eff', 195, 1, 'Laravel', '[]', 0, '2022-06-28 00:48:49', '2022-06-28 00:48:49', '2022-12-28 05:48:49'),
('ce1170884cbcfbeb9114623538d1278c4e7dc38878959ce84966804314d5fd607f6a46500b7b5334', 169, 1, 'Laravel', '[]', 0, '2022-06-12 06:46:50', '2022-06-12 06:46:50', '2022-12-12 11:46:50'),
('ce455cb2fef9bec84d4b52c86eabc6c65500cbcd1b1b3b56996c3b26a4b2541fd7d0eed84ec94edd', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:50:15', '2022-06-20 05:50:15', '2022-12-20 10:50:15'),
('ce469fe3590b504c50fceeba91daf80ec17c53c815a1adefcd367f16327e93d1d0ce758b57a9794e', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:38', '2022-06-16 00:41:38', '2022-12-16 05:41:38'),
('ce9f3a8f708eff2274303e1ebd13a1fef13cc423e174f9e46ea170f664e80b23e1f65d694e4e0f3d', 367, 1, 'Laravel', '[]', 0, '2022-07-04 23:19:45', '2022-07-04 23:19:45', '2023-01-05 04:19:45'),
('cf2ef69cd11fcd87434633883d44ce6d23002c2f7d861dc8ae206d6ece865b210339cde7908b18b5', 39, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:05', '2022-06-07 06:17:05', '2022-12-07 11:17:05'),
('cfa597dea3a322c13999abc41c3e85bebb566dc79da94644b622d7170889406663d12e2c01079bdf', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:04', '2022-06-16 00:36:04', '2022-12-16 05:36:04'),
('cfb1ca714ccb9abdcf024afcf3e4a49ee963374811ef1bd1f882b7e33f2d9e501433d9b3301fef94', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:00', '2022-06-11 05:27:00', '2022-12-11 10:27:00'),
('cfc0475a2878c15568a6c0a01e22947f881f2840a90bca32242f28bdf8e248a89a6b797997d48cbc', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:52:35', '2022-06-20 05:52:35', '2022-12-20 10:52:35'),
('d01c192fc76944efdb17aec9295f4a8bc3db2e1b41c435c2cb4deaee0cdab58a51a0524f66562d73', 227, 1, 'Laravel', '[]', 0, '2022-06-14 04:09:09', '2022-06-14 04:09:09', '2022-12-14 09:09:09'),
('d01ec39d055519e903cdd7abfc250059bbbe5b0f6c978415c5f8db96ca90f3de2ce0b84af6209480', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:08', '2022-06-16 00:37:08', '2022-12-16 05:37:08'),
('d0a5b7a7d10970121d480e22ec468478b19586c77b2137bafffafd911dab836ca1ea00ba875cb680', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:19', '2022-06-16 00:38:19', '2022-12-16 05:38:19'),
('d0adba896edbf2c91a8aecca213add56819b2d7b04b2c136d0b73ca028190cc1b6487cee41b351d5', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:41', '2022-06-16 00:38:41', '2022-12-16 05:38:41'),
('d2822bdd52575a5fec0e0674db96e9191a7c3ad51c42f1ee3a2dcfbae8d08743e80e441315bf8c8f', 388, 1, 'Laravel', '[]', 0, '2022-07-07 01:32:45', '2022-07-07 01:32:45', '2023-01-07 06:32:45'),
('d2abe4526b39cf8f105cf1c2d80afa84b192cfb70188230a581a9b86141aa29552190022d6286f08', 195, 1, 'Laravel', '[]', 0, '2022-06-27 03:43:04', '2022-06-27 03:43:04', '2022-12-27 08:43:04'),
('d2ca4fa24f8a8f6f2568b2c533b794cc4254dc9da1161cad5c0b9caa8a3801f2a3959c0cb7fb50ad', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:44', '2022-06-16 00:36:44', '2022-12-16 05:36:44'),
('d2ee0f66773d2983e7d8dc5e50c8c05729f2bdbbead041cace7ee04fed626145c37bdc4dc3430c2b', 64, 1, 'Laravel', '[]', 0, '2022-06-08 00:12:24', '2022-06-08 00:12:24', '2022-12-08 05:12:24'),
('d3106505e83629fdd7ee3df7ad639a537d1616643b1c0faebce69ff9edbb5aa7800e30b1b6c6fd80', 373, 1, 'Laravel', '[]', 0, '2022-07-05 00:46:56', '2022-07-05 00:46:56', '2023-01-05 05:46:56'),
('d35c151461f23fe2b04c62e69d4d454525d622ea9bded1b7141fc3fdb76d796bdc9336e3d153077d', 73, 1, 'Laravel', '[]', 0, '2022-06-09 04:58:33', '2022-06-09 04:58:33', '2022-12-09 09:58:33'),
('d396e36f908bbc2b370607bef4862af72793dddf6f3a6fe2975092e674433008486ba44228635582', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:39:00', '2022-06-16 00:39:00', '2022-12-16 05:39:00'),
('d3b44b5dea6c066e0e1d0b553f369f98101564f8f117be824d659d6397e94ebd0a0468f205c3f499', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:16', '2022-06-16 00:38:16', '2022-12-16 05:38:16'),
('d487f04bc0144d31360b9ea1e9293960e08adfc526017405bf7c5af5c18045d988f25239d63ee7d1', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:00', '2022-06-11 05:27:00', '2022-12-11 10:27:00'),
('d4bb987e1e85dac8ed029b356f1e5874e94e2de434c19eb3d2e85320cb78d774fb3060641942ef78', 142, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:53', '2022-06-11 01:16:53', '2022-12-11 06:16:53'),
('d4de2c4d28aed18fce5e709af20f701387e06688b54769426c343e4eaf34dc5c066d04677e1f1b8d', 136, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:52', '2022-06-11 01:16:52', '2022-12-11 06:16:52'),
('d5b7b4cce6bc4b96891a4769b225080816df30672bc96fc55f4acfc370cecfcaea8ef15c7a16f6d4', 397, 1, 'Laravel', '[]', 0, '2022-07-11 05:36:19', '2022-07-11 05:36:19', '2023-01-11 10:36:19'),
('d5f0db28a19a5cc86a6092b20630b10ad97ee9151c5d0d547a957cb401031842d1b62986921b4f2c', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:18', '2022-06-16 00:38:18', '2022-12-16 05:38:18'),
('d6a381af31749e0fed8ca4349f0300cf0a4271b0ff77503d5b54433a78bf28d4097067a893ff5edd', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:23', '2022-06-16 00:38:23', '2022-12-16 05:38:23'),
('d6d64eb740e0003d63266b93682b2826f857c6b002a83309d6bd3339bc4ac900963d30a0166af584', 124, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:50', '2022-06-11 01:16:50', '2022-12-11 06:16:50'),
('d6dc4b82e29417f22221408f3299825684cfcae743d8bbf3f0106a17f8ee04983d39e5c6a30d0c78', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:48:45', '2022-06-16 00:48:45', '2022-12-16 05:48:45'),
('d6e4a65c9af950fa308e9725382a39735c283d8b36fce0ba9637d324d857d8980660a6c021283025', 196, 1, 'Laravel', '[]', 0, '2022-06-13 01:01:00', '2022-06-13 01:01:00', '2022-12-13 06:01:00'),
('d797dec7a84208377b9f231acf466cb719ff8fb02f718f8c073bfa1b0702cbbd3b92a3086b598f59', 336, 1, 'Laravel', '[]', 0, '2022-06-15 14:39:50', '2022-06-15 14:39:50', '2022-12-15 19:39:50'),
('d813be5d67c2ddfef6aa2bc91e34fbe70946f4883d1bbc33a41e93c70442321a60b2c71627dac4f7', 90, 1, 'Laravel', '[]', 0, '2022-06-09 05:26:59', '2022-06-09 05:26:59', '2022-12-09 10:26:59'),
('d8a28ae226896e516b72b4d89ec63c99ca205aafbaeedd02d74a9accc51ab5cab24eaff661c1b2d7', 295, 1, 'Laravel', '[]', 0, '2022-06-14 06:09:27', '2022-06-14 06:09:27', '2022-12-14 11:09:27'),
('d8d5a84901e0839aaadc745f8abc449ec890c05d5aae825049be09bb84ce2ba3790ed32800cf2ea9', 358, 1, 'Laravel', '[]', 1, '2022-07-07 00:05:54', '2022-07-07 00:05:54', '2023-01-07 05:05:54'),
('d9b2681b36e8e0b4b77895ccadaf36ee468de94d99e2ed837848a26e0786dffaf4090bb99780fb38', 64, 1, 'Laravel', '[]', 0, '2022-06-08 00:12:12', '2022-06-08 00:12:12', '2022-12-08 05:12:12'),
('db1621719b5810befdc7c553e9597ddb390ac02646585b8897e9c8a7125e601fbdfa1629dd0649bf', 121, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:49', '2022-06-11 01:16:49', '2022-12-11 06:16:49'),
('db1ce16eac5da0e7c44c69c62b27d650bae6d5dca2edcc6c6e84881c194862b01edb6358eb40ef43', 169, 1, 'Laravel', '[]', 0, '2022-06-13 06:45:11', '2022-06-13 06:45:11', '2022-12-13 11:45:11'),
('db53c5e08bf8f677bf9f8ee6dd3afcf10f31167dfdd162d2b5d083aa195df3bba3cd87441ceef1fa', 40, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:05', '2022-06-07 06:17:05', '2022-12-07 11:17:05'),
('db816f3b3e692318a61f99b22a9077883ee284c3e4ff1dcfc326a6f7745732ab39a0dcf274ed8ef2', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:37', '2022-06-16 00:41:37', '2022-12-16 05:41:37'),
('db90bb59aadd0f440e344eaf6b55f026a5cb4df4894780af97e6da3cbeb5832008a9dd3e905f0280', 150, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:01', '2022-06-11 01:17:01', '2022-12-11 06:17:01'),
('dc54ec022e25257e224bbcefde84c33d9b56350926b12bca75e8c2169fbdb752c58a08940ce78927', 411, 1, 'Laravel', '[]', 0, '2022-07-12 09:02:02', '2022-07-12 09:02:02', '2023-01-12 14:02:02'),
('dca6d48594f9b8e2113fbf77f90debb58b7508374419a3eb4f38a9ff816c1571459c17cebd768fdd', 413, 1, 'Laravel', '[]', 0, '2022-07-12 12:54:01', '2022-07-12 12:54:01', '2023-01-12 17:54:01'),
('dcb1951aaec6ceaed257871138a81447580cfca56ea6332b30a01b28137d8206a9bd314e44cffa52', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:00', '2022-06-11 05:27:00', '2022-12-11 10:27:00'),
('dd464f9c06076ac0754f4e8f5baa1448b1698e65dd788567a30f38ae5234ae96d09004d938ec1ed8', 159, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:12', '2022-06-11 01:17:12', '2022-12-11 06:17:12'),
('e045f02ec213b075c377519aa55c9493fea312fcc0a7656f2e51dd2d0f4c7da945221799556a55ed', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:04', '2022-06-16 00:36:04', '2022-12-16 05:36:04'),
('e0536ef282447259088a0ce2da30c9ffde7163113d28faa46b285eae9161951d50b04bfe4186338a', 350, 1, 'Laravel', '[]', 0, '2022-06-17 05:32:01', '2022-06-17 05:32:01', '2022-12-17 10:32:01'),
('e0a5bfd1b7ae71e7a028f41133e896dcc9ad2fb842d6d804fcb2b8b203050312654a10c724d442d9', 215, 1, 'Laravel', '[]', 0, '2022-06-14 03:50:14', '2022-06-14 03:50:14', '2022-12-14 08:50:14'),
('e0baee5acec0b1e1101c6dc2a0502fff27be0c59d190a342bfbd58746038f48ad83044fd91fe9d06', 392, 1, 'Laravel', '[]', 0, '2022-07-07 23:21:29', '2022-07-07 23:21:29', '2023-01-08 04:21:29'),
('e1632913f37f974574662a21bed4951e83e8f2e1e79ca20f5305cf1c55693384370beeb6525d413f', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:05', '2022-06-16 00:36:05', '2022-12-16 05:36:05'),
('e2c0dd2fa9abec322415c08fdfc4d2555ad5dba5d5db1b02e2d30eb8ff8532000a2cd3e0a1722a88', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:41:34', '2022-06-16 00:41:34', '2022-12-16 05:41:34'),
('e2cb5b8c26d6a1a307032b846410f9db715f082a7b022d33210be7939310e5539ff85c978e48442a', 213, 1, 'Laravel', '[]', 0, '2022-06-14 03:43:32', '2022-06-14 03:43:32', '2022-12-14 08:43:32'),
('e34dee4e75609d2633fd47cccc77a25aa29a3095b53fe4f9239d4c4f898745c4748fdcfae4ea9c25', 406, 1, 'Laravel', '[]', 0, '2022-07-11 07:24:22', '2022-07-11 07:24:22', '2023-01-11 12:24:22'),
('e3868e17a32befad7d5cd59df8e17f35e28a6776db57b2ec2b69d4cf5240c82a71ed37605efaf227', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:29:22', '2022-06-11 05:29:22', '2022-12-11 10:29:22'),
('e3bc7623e32d587e40caff8e0431c572153aacb8d7fd5974defb975d44178541ad97a1ace7b10d12', 420, 1, 'Laravel', '[]', 0, '2022-07-14 10:40:01', '2022-07-14 10:40:01', '2023-01-14 15:40:01'),
('e3c0c57d52eb6ff45bf5f5b6ed0428ad9e4df6682ba360b4afc2ccc124ba58d071d8152e846e6de9', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:23', '2022-06-16 00:38:23', '2022-12-16 05:38:23'),
('e4688b5a98a5aad45d3de55cf64052a7b4665649937c90158906bebfbf29369b41c56bac87f61f78', 413, 1, 'Laravel', '[]', 0, '2022-07-12 12:52:46', '2022-07-12 12:52:46', '2023-01-12 17:52:46'),
('e488b76467211bc79fb06a6c66ba2b8d9eaa25d3bab0be8ecad47da4ff14373afe4a23ae6bb969dd', 373, 1, 'Laravel', '[]', 0, '2022-07-07 01:42:14', '2022-07-07 01:42:14', '2023-01-07 06:42:14'),
('e50f0b990495773043a103a87803555e67b990d4e2b6c82ad9d0824d3c4848580947264f5fe8c334', 139, 1, 'Laravel', '[]', 0, '2022-06-11 01:16:53', '2022-06-11 01:16:53', '2022-12-11 06:16:53'),
('e520d3f62e48855d2884ce0e02c92cc5bd1d54c1527c3af025e86161002a221473216d0bf367214b', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:24', '2022-06-16 00:37:24', '2022-12-16 05:37:24'),
('e58892792d084ecf1e7025519f078927d23b127d8aa7ce5ad292c55d718090663d46c1110afd7767', 195, 1, 'Laravel', '[]', 0, '2022-06-20 05:50:39', '2022-06-20 05:50:39', '2022-12-20 10:50:39'),
('e58a6f7e617ab70f3b44f0d414f6f8731ad4579562765884ca5bcbfdd0cba00f105dc5a0d8d81773', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:11', '2022-06-16 00:36:11', '2022-12-16 05:36:11'),
('e61e8af7d3b124f309170f8edf1e0fdb39ebf3a2345e57e79efde5842e9ec0bd1ff286f16d09ee17', 80, 1, 'Laravel', '[]', 0, '2022-06-09 05:11:32', '2022-06-09 05:11:32', '2022-12-09 10:11:32'),
('e6344329965dfaf700bab275d93c981c718fda4139ba7e2fff40a27c4c9ba1a4bdc42d10ab56a597', 317, 1, 'Laravel', '[]', 0, '2022-06-15 13:32:58', '2022-06-15 13:32:58', '2022-12-15 18:32:58'),
('e681b417cb9e8ab928fa8b5e60f2fc5b3601d97b04af9b1e728cf4518530bc3713376c6288dae56c', 342, 1, 'Laravel', '[]', 0, '2022-06-16 01:05:27', '2022-06-16 01:05:27', '2022-12-16 06:05:27'),
('e6fc06c02c2f3f3ac944be53b222d914696e0ead74846f8ed62d460b0732c2a15b1e1b043a0c697f', 169, 1, 'Laravel', '[]', 0, '2022-06-11 05:40:50', '2022-06-11 05:40:50', '2022-12-11 10:40:50'),
('e76e9946115684410808d57f414a3d448550308a4706e2ac1ec9e4a6c33f1fa5e2b33ae5b52f38c6', 436, 1, 'Laravel', '[]', 0, '2022-07-15 05:59:17', '2022-07-15 05:59:17', '2023-01-15 10:59:17'),
('e90f569c8bffc5377603048cb3fcd13a14a12032b93c72547cf48e648d60619220da840529a8eb7a', 194, 1, 'Laravel', '[]', 0, '2022-06-12 14:02:13', '2022-06-12 14:02:13', '2022-12-12 19:02:13'),
('e9e37fd694b9fd88c4160f0c4baa818be2e10ca2be996ebe704262449f1f6a53db8286ef2854cfed', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:20', '2022-06-16 00:38:20', '2022-12-16 05:38:20'),
('e9e66af7c81f03a8b66f5dfc479a08bb05f7624b7142be9478904eced67d141fca20424d8ad71ca9', 64, 1, 'Laravel', '[]', 0, '2022-06-08 00:13:09', '2022-06-08 00:13:09', '2022-12-08 05:13:09'),
('eb50137b9f97833bdb7f4ac5e6f4a516853a29d4dca1cef3811152c70c002ef8ea6e212cc9c0d656', 112, 1, 'Laravel', '[]', 0, '2022-06-11 01:11:31', '2022-06-11 01:11:31', '2022-12-11 06:11:31'),
('eb83bcebc85aa27fcd5ce9c6ae92e464dd485b805499e0304c7fb9477fcab04a401c2e9783305e07', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:20', '2022-06-16 00:36:20', '2022-12-16 05:36:20'),
('eba25830e3123b23a3df5e9cb70aa29344022ec0df9b59c237f2fce1fa345d9ca619e57e908b0a04', 26, 1, 'Laravel', '[]', 0, '2022-06-07 06:16:39', '2022-06-07 06:16:39', '2022-12-07 11:16:39'),
('ec1dc5b9e01e609ad79326678a9756347643a079612bdf6d25d711253e1619c3619128fa9683dbe5', 169, 1, 'Laravel', '[]', 0, '2022-06-12 10:37:15', '2022-06-12 10:37:15', '2022-12-12 15:37:15'),
('ec380e21131bed8e52183d63a3e22b311a6f942d830baec424a80ffc651867f33309aa298d9e6e16', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:22', '2022-06-16 00:36:22', '2022-12-16 05:36:22'),
('ec6f30f4f325c5bd3a7ad66f386a972c3d3aeda9678d758ed2657416d9cc3fac161cd0c9dc58a670', 377, 1, 'Laravel', '[]', 0, '2022-07-05 00:57:41', '2022-07-05 00:57:41', '2023-01-05 05:57:41'),
('ec73d4a15f28e02d644e2644244e3e18c5b90d9f9f17077525d883e74b212c01e70cc78fc40cfb0a', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:21', '2022-06-16 00:36:21', '2022-12-16 05:36:21'),
('ed12adfc6a4037759a15df5aca2b3303e66a378a4a5217ef275d9a1b3a25879db8f4c6dfcba033e1', 287, 1, 'Laravel', '[]', 0, '2022-06-14 05:02:31', '2022-06-14 05:02:31', '2022-12-14 10:02:31'),
('ed1f356b75627858a49ce6602a6f9cc59450b23c58b92f13256ac80c5341b3fa7b1033f9d4fe5525', 397, 1, 'Laravel', '[]', 0, '2022-07-11 05:38:49', '2022-07-11 05:38:49', '2023-01-11 10:38:49'),
('ed45a8f94ae296b26cc0a73bf198a17db711452132c0347fbfd29007c71ea29355d1ccf75714243a', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:22', '2022-06-16 00:38:22', '2022-12-16 05:38:22'),
('edf025d9ff65d082aef9d2043eedb07717b0c9b2712c467f0588aa6d4a880a33977a2772479ffd4c', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:19', '2022-06-16 00:38:19', '2022-12-16 05:38:19'),
('ee4d400260424b16aebdc53e77a79c4c1db7f3abf25bcdca244dae2f10d6a7a3fdc1794d5387fd1f', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:44:58', '2022-06-16 00:44:58', '2022-12-16 05:44:58'),
('ef004b91d90e50adb813a4d8266ba52c4a85b1935455b31da354a820579455075ab06d371a9721df', 370, 1, 'Laravel', '[]', 0, '2022-07-04 23:38:07', '2022-07-04 23:38:07', '2023-01-05 04:38:07'),
('ef18f90b7c39c5847d3dc14ab3c6243c4f3ea0418ae7e32c37b2d1ec2d20587ffb4636a604453d01', 376, 1, 'Laravel', '[]', 0, '2022-07-05 00:53:42', '2022-07-05 00:53:42', '2023-01-05 05:53:42'),
('ef1e0dc064d873cae8f792ddd8b8caa04bf48d9ce209760e2218ad0e6fc404cd3c2581adeaf7df6b', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:22', '2022-06-16 00:36:22', '2022-12-16 05:36:22'),
('ef2dd06566f95197d2148616174826d89177b003d9e7375e54724ca067869a81aa93734de4801e37', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:18:36', '2022-06-11 05:18:36', '2022-12-11 10:18:36'),
('efd28222171e46e58134fa58ceef968ac77f44a1bc85cd019875cb1973f714bf64a46c554ef18965', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:38', '2022-06-16 00:38:38', '2022-12-16 05:38:38'),
('f08fc2dd2aad2ad255d9e478094d311a8cf2f90c86a52961a7c345151d2517bb2bfd8570e5d66582', 432, 1, 'Laravel', '[]', 0, '2022-07-15 05:52:54', '2022-07-15 05:52:54', '2023-01-15 10:52:54'),
('f0b552bf5ec8ca138fe8c7b2d57ab339fdbd7ac48564fcfc722cf2f4e1f9d6843189e85b1bd08549', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:20', '2022-06-16 00:38:20', '2022-12-16 05:38:20'),
('f0bed00d286f342610bb6d28c02ebd2dc2dd3ecfb727793e64a2eb59b89ed788b20c2045c5292920', 412, 1, 'Laravel', '[]', 0, '2022-07-12 09:25:40', '2022-07-12 09:25:40', '2023-01-12 14:25:40'),
('f0e672c8dcf0498b3691ebdce2f7aed19ce4b45da20a2b04a1214e62ab830c61b7c33b916f63f640', 361, 1, 'Laravel', '[]', 0, '2022-07-04 03:43:12', '2022-07-04 03:43:12', '2023-01-04 08:43:12'),
('f0f811f06c7fccd6db54941fbf6af68dc15761de313dd76261b095c6918904fd9adb2e52e5e80129', 155, 1, 'Laravel', '[]', 0, '2022-06-11 01:17:11', '2022-06-11 01:17:11', '2022-12-11 06:17:11'),
('f16551b756c3f1fe174f7233e3aa89e7f06f42f21b15292416507ffb61de76b905e474a9c98e4f16', 176, 1, 'Laravel', '[]', 0, '2022-06-11 03:48:31', '2022-06-11 03:48:31', '2022-12-11 08:48:31'),
('f16cc924d86388591f6e6f77385bf1f438c95ae0dfb803dc6f8d58fcee9b6152ccd66d528ec539f4', 363, 1, 'Laravel', '[]', 0, '2022-07-04 03:43:51', '2022-07-04 03:43:51', '2023-01-04 08:43:51'),
('f1fa8d60699c725192a86a8de0a2cb94c1adb2638040ddfba762eae008f16c7a2a501920b81db3b3', 411, 1, 'Laravel', '[]', 0, '2022-07-12 13:05:43', '2022-07-12 13:05:43', '2023-01-12 18:05:43'),
('f24c62be41259f8031c34dd3928799471e39228d169364561aa8c6d82660da273096567b6381da00', 175, 1, 'Laravel', '[]', 0, '2022-06-11 03:48:08', '2022-06-11 03:48:08', '2022-12-11 08:48:08'),
('f31aad92c2e2c1588ceead57be8ac22195cb7482fdbe58d93637e6b1708cb337ec69e646435fbc6d', 169, 1, 'Laravel', '[]', 0, '2022-06-12 11:54:26', '2022-06-12 11:54:26', '2022-12-12 16:54:26'),
('f378c679bd6280eeeea69f79236b8cd1ebe12333c1be3bd12f19c8cf601013c1231ed2069fba0650', 258, 1, 'Laravel', '[]', 0, '2022-06-14 04:23:05', '2022-06-14 04:23:05', '2022-12-14 09:23:05'),
('f3b6e0c9394ffa4a62399c91ce594f06bc72df443dfa9218f457a3ab082328b8399b59a41bcedd32', 411, 1, 'Laravel', '[]', 0, '2022-07-12 08:24:45', '2022-07-12 08:24:45', '2023-01-12 13:24:45'),
('f3fda837d71558d61f5d980d8d2abdbe18a4c104c20ad2b398c323025c164e9bfb6af62ee574f2db', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:39', '2022-06-16 00:38:39', '2022-12-16 05:38:39'),
('f4225e3be9c8647ef8f8cc4fefb3d2c10aab7a88e782fc93884de5a842bf88e8f1ec642fb679c4bd', 444, 1, 'Laravel', '[]', 0, '2022-07-15 10:45:40', '2022-07-15 10:45:40', '2023-01-15 15:45:40'),
('f5c87a7df1bc0c734ff6096203112ca98cf261e94a8ecc5d42bf98b822cb1b89135af389ec2d1d11', 417, 1, 'Laravel', '[]', 0, '2022-07-13 08:38:32', '2022-07-13 08:38:32', '2023-01-13 13:38:32'),
('f5e7c74e54a4776602d6f6edad0b57b7ecf617fba2d488a40d6c1003f561b8090228488803810e35', 366, 1, 'Laravel', '[]', 0, '2022-07-04 05:32:10', '2022-07-04 05:32:10', '2023-01-04 10:32:10'),
('f603f492558023f554382c70434f1f1a0c28535c885cd233665a0753fe4d1f308ce2a5f6c863cb4d', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:37:23', '2022-06-16 00:37:23', '2022-12-16 05:37:23'),
('f633593efe3c88c74d42eb51c00233d948eff65da225735ec02fc7acf535e958daed3f3606778706', 179, 1, 'Laravel', '[]', 0, '2022-06-11 03:51:22', '2022-06-11 03:51:22', '2022-12-11 08:51:22'),
('f73f32cea2fa2b7068a5057231d3262021efdf0c392f6344a5f68eba7cba73d0cf2c9f89e25ae33a', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:38:38', '2022-06-16 00:38:38', '2022-12-16 05:38:38'),
('f75e54277bb1fc2c1bd941e28993569a491145f4ef451b2d1194a5078f471f79c97ce4bdac50d974', 195, 1, 'Laravel', '[]', 0, '2022-06-20 06:28:41', '2022-06-20 06:28:41', '2022-12-20 11:28:41'),
('f7bad486709924233db1acf029b529314d95cdcb6b8dd993835d533aad66e56be27fd5ec28d602fb', 417, 1, 'Laravel', '[]', 0, '2022-07-13 08:50:08', '2022-07-13 08:50:08', '2023-01-13 13:50:08'),
('f7de6e358a2dedb85fe0a925808fe16921aefdc4b391760fd7dc6f9b61abac92a046fa55dea2a2ca', 198, 1, 'Laravel', '[]', 0, '2022-06-13 06:45:41', '2022-06-13 06:45:41', '2022-12-13 11:45:41'),
('f81103f5a4dc89fd61091303298d3cbb6923871f82f8c13b4ea1606a9c31d84912fffbbd2c0b216c', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:12', '2022-06-16 00:36:12', '2022-12-16 05:36:12'),
('f85c0157afe89542945581034aeba99a75d4936d420646a3e63f640da6ef7e889f5f176704cd3fc6', 195, 1, 'Laravel', '[]', 0, '2022-06-17 05:32:54', '2022-06-17 05:32:54', '2022-12-17 10:32:54'),
('f8957297c95ab6463ac9194fc4e141e93061ab954f09c0460d1903de64b0c3e812780bdad313b0a9', 41, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:05', '2022-06-07 06:17:05', '2022-12-07 11:17:05'),
('f89584e8fbf46663e5423256e66d1a05b2df1b3f5e088ee8d7674bf7f5c6114cb8f112818139c19d', 195, 1, 'Laravel', '[]', 0, '2022-06-21 04:24:45', '2022-06-21 04:24:45', '2022-12-21 09:24:45'),
('f99406ec065b2ea5083d48fad84d4bca1d51049ceab366c03067aec41dd661778f1b581bc888eeae', 107, 1, 'Laravel', '[]', 0, '2022-06-11 00:48:00', '2022-06-11 00:48:00', '2022-12-11 05:48:00'),
('f9d52d05232f18949c9c4b6b0daf693c8831563eab159b3c1649870d62f9bb9a6b9c9ec0bbdd5735', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:20', '2022-06-16 00:36:20', '2022-12-16 05:36:20'),
('fa0c28af5c86d34be2c36debf74868831593cfacf8aa1f526afe7fbe0ba7becd46d9d74247d74f43', 195, 1, 'Laravel', '[]', 0, '2022-06-16 00:36:46', '2022-06-16 00:36:46', '2022-12-16 05:36:46'),
('faabb0fcebc2a3dfd6f0e06a5d6016af967f5d7f19a6320e5e93954ae79ae1159ddf26463258239b', 442, 1, 'Laravel', '[]', 0, '2022-07-15 08:20:19', '2022-07-15 08:20:19', '2023-01-15 13:20:19'),
('fb8335e5ed6331eaa02a33e64e11fc3ea25c0cb1ac9acd2718b0314c7926cc73d055f7ad25b7f0b5', 440, 1, 'Laravel', '[]', 0, '2022-07-15 06:42:05', '2022-07-15 06:42:05', '2023-01-15 11:42:05'),
('fc70213516e82ad927f43e773cf70d93ef6f9a026847f1fa4fc68655f052a641e6e6f397151d5338', 195, 1, 'Laravel', '[]', 0, '2022-06-22 03:56:35', '2022-06-22 03:56:35', '2022-12-22 08:56:35'),
('fc8a43a9d444d6ebf9aea7658911a9d1e6d98e1ee13ee5fefd717edf98ec5d7ad2f62c73af881768', 448, 1, 'Laravel', '[]', 0, '2022-07-16 13:03:28', '2022-07-16 13:03:28', '2023-01-16 18:03:28'),
('fc95f1b290ad3522c9a3c5e48e3da75e78492f3add0a2c765ad73ea829a6e899294e905687174148', 384, 1, 'Laravel', '[]', 0, '2022-07-06 01:20:17', '2022-07-06 01:20:17', '2023-01-06 06:20:17'),
('fccd65c63d43fdcea5fbd617df0548f2a092ac9b3973ce7919c8f9f9f6399956be36645734146948', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:01', '2022-06-11 05:27:01', '2022-12-11 10:27:01'),
('fd31c7f6ab688b8c5a00f5e56c9e3fb110a05bb34fcd6d8bac4ffa72bfe4caccc650e65a5f449b0e', 195, 1, 'Laravel', '[]', 0, '2022-07-04 03:13:30', '2022-07-04 03:13:30', '2023-01-04 08:13:30'),
('fd5b67f671bd0509f946f63f9badcebbc7396cb4a8992abf53780348a3e372fda97ad63613f4f131', 109, 1, 'Laravel', '[]', 0, '2022-06-11 01:01:31', '2022-06-11 01:01:31', '2022-12-11 06:01:31'),
('fd6897ff0ef70f9fe7a120ae4f84182deeadae50e177ac0fec70d755dc74b91166ab4708777efe6b', 43, 1, 'Laravel', '[]', 0, '2022-06-07 06:17:06', '2022-06-07 06:17:06', '2022-12-07 11:17:06'),
('fe264a3bd21e3880bd183de34004c0ee7a46bd24d63d5bf325d050cd4718285c8c9faa1698c3c972', 169, 1, 'Laravel', '[]', 0, '2022-06-11 05:39:47', '2022-06-11 05:39:47', '2022-12-11 10:39:47'),
('fe4a86c260271174341a0244865f1b3a0282fc41d9b2a562c148b2c09636d730fe2ef1869651a3f6', 172, 1, 'Laravel', '[]', 0, '2022-06-11 05:27:01', '2022-06-11 05:27:01', '2022-12-11 10:27:01'),
('fe5514e629ab4d30499684030b65957bdd21f1201a3fe7f39ea956fff2705f89c86f4863976376b6', 11, 1, 'Laravel', '[]', 0, '2022-06-02 02:17:37', '2022-06-02 02:17:37', '2022-12-02 07:17:37'),
('fe80becc6f3d3f1f525248255de6e1230cda1c8a98360811ccce497e07bb40e01f22e4930511bc35', 358, 1, 'Laravel', '[]', 0, '2022-07-07 00:31:13', '2022-07-07 00:31:13', '2023-01-07 05:31:13'),
('ff071ed4bbca758b99a0e8328926f08644a5f0a1a1c942864537f6345c39160b83130b01cdc1b5b5', 378, 1, 'Laravel', '[]', 0, '2022-07-05 06:12:47', '2022-07-05 06:12:47', '2023-01-05 11:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'J1kXxYHhL1sgEWCdKalzw4VXcEVolsxCzhSgQszh', NULL, 'http://localhost', 1, 0, 0, '2022-06-01 01:12:20', '2022-06-01 01:12:20'),
(2, NULL, 'Laravel Password Grant Client', 'wmb25QiHE8zLBLDuByXgWpx6rsWQQ9Ft9EHIc3jy', 'users', 'http://localhost', 0, 1, 0, '2022-06-01 01:12:20', '2022-06-01 01:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-06-01 01:12:20', '2022-06-01 01:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partnericons`
--

CREATE TABLE `partnericons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partnericons`
--

INSERT INTO `partnericons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(9, 'partnericons/t4M4m7zbAQMmvQQ2E8FW48UDcYfPfzbM77mjnHux.jpg', 'https://gh.uz/', '2025-12-15 12:56:57', '2025-12-15 12:56:57'),
(10, 'partnericons/Q3m7Uj2YGdrajKwZnHaK30vBeNrytBElRD8p9xsQ.jpg', 'https://mbc.uz/', '2025-12-15 12:59:09', '2025-12-15 12:59:09'),
(11, 'partnericons/qhTumBQJ49D0I0a8yhLcZ4y9GYMBnHBq7t7fNAxz.webp', 'https://xonsaroy.uz/', '2025-12-15 13:00:48', '2025-12-15 13:00:48'),
(12, 'partnericons/mGh9XLK6PZxpyZNjN3J6wPEwv5dFLUEAkY9skOQE.svg', 'https://uetconstruction.com/', '2025-12-15 13:01:24', '2025-12-15 13:01:24'),
(13, 'partnericons/EKfY7sdr0VHl0c4JozuvK9k8cXOT5fTMKdBYFMLU.png', 'https://mesmer.uz/', '2025-12-15 13:01:56', '2025-12-15 13:01:56'),
(14, 'partnericons/Rrq62mrW5OkhBMDYbY4iSQuuqNjrnFCW7cAzjAbd.png', 'https://kam-cc.com/', '2025-12-15 13:02:15', '2025-12-15 13:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_uz` varchar(255) DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `body_uz` varchar(255) DEFAULT NULL,
  `body_ru` varchar(255) DEFAULT NULL,
  `body_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `title_uz`, `title_ru`, `title_en`, `body_uz`, `body_ru`, `body_en`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Bizning Hamkorlar', 'Наши партнеры', 'Our Partners', 'Boshqa tomondan, biz lahzalik zavq-shavq jozibasi bilan aldanib, nafsdan ko\'r bo\'lgan erkaklarni adolatli g\'azab va nafrat bilan qoralaymiz.&nbsp;&nbsp;', 'С другой стороны, мы осуждаем с праведным негодованием и ненавидим людей, которые так обольщены и деморализованы прелестями сиюминутных удовольствий,', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment,', '2022-06-28 06:22:23', '2022-06-29 01:44:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('afeme@afeme.com', '$2y$10$L8iEML3HN4CF8An/Wj6qC.ik8aJPqvargwPt80w4ncmScOsaIRHz.', '2022-07-18 12:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'user-list', 'web', '2022-03-03 03:41:56', '2022-03-03 03:41:56'),
(5, 'user-create', 'web', '2022-03-03 03:41:56', '2022-03-03 03:41:56'),
(6, 'user-edit', 'web', '2022-03-03 03:41:56', '2022-03-03 03:41:56'),
(7, 'user-delete', 'web', '2022-03-03 03:41:56', '2022-03-03 03:41:56'),
(8, 'role-list', 'web', '2022-03-03 03:41:57', '2022-03-03 03:41:57'),
(9, 'role-create', 'web', '2022-03-03 03:41:57', '2022-03-03 03:41:57'),
(10, 'role-edit', 'web', '2022-03-03 03:41:57', '2022-03-03 03:41:57'),
(11, 'role-delete', 'web', '2022-03-03 03:41:57', '2022-03-03 03:41:57'),
(16, 'region-list', 'web', '2022-05-30 04:07:28', '2022-05-30 04:07:28'),
(17, 'region-create', 'web', '2022-05-30 04:07:28', '2022-05-30 04:07:28'),
(18, 'region-edit', 'web', '2022-05-30 04:07:28', '2022-05-30 04:07:28'),
(19, 'region-delete', 'web', '2022-05-30 04:07:28', '2022-05-30 04:07:28'),
(20, 'citie-list', 'web', '2022-05-30 04:07:28', '2022-05-30 04:07:28'),
(21, 'citie-create', 'web', '2022-05-30 04:07:28', '2022-05-30 04:07:28'),
(22, 'citie-edit', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(23, 'citie-delete', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(24, 'sale-list', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(25, 'sale-create', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(26, 'sale-edit', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(27, 'sale-delete', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(28, 'repair-list', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(29, 'repair-create', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(30, 'repair-edit', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(31, 'repair-delete', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(32, 'material-list', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(33, 'material-create', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(34, 'material-edit', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(35, 'material-delete', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(36, 'category-list', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(37, 'category-create', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(38, 'category-edit', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(39, 'category-delete', 'web', '2022-05-30 04:07:29', '2022-05-30 04:07:29'),
(40, 'client-list', 'web', '2022-06-11 00:52:33', '2022-06-11 00:57:33'),
(41, 'client-delete', 'web', '2022-07-11 00:52:33', '2022-07-11 01:52:33'),
(42, 'slider-list', 'web', '2022-06-20 04:50:05', '2022-06-20 04:50:05'),
(43, 'slider-create', 'web', '2022-06-20 04:50:05', '2022-06-20 04:50:05'),
(44, 'slider-edit', 'web', '2022-06-20 04:50:05', '2022-06-20 04:50:05'),
(45, 'slider-delete', 'web', '2022-06-20 04:50:05', '2022-06-20 04:50:05'),
(46, 'address-list', 'web', '2022-06-22 01:22:15', '2022-06-22 01:22:15'),
(47, 'address-create', 'web', '2022-06-22 01:22:15', '2022-06-22 01:22:15'),
(48, 'address-edit', 'web', '2022-06-22 01:22:15', '2022-06-22 01:22:15'),
(49, 'address-delete', 'web', '2022-06-22 01:22:15', '2022-06-22 01:22:15'),
(50, 'network-list', 'web', '2022-06-22 02:30:40', '2022-06-22 02:30:40'),
(51, 'network-create', 'web', '2022-06-22 02:30:40', '2022-06-22 02:30:40'),
(52, 'network-edit', 'web', '2022-06-22 02:30:40', '2022-06-22 02:30:40'),
(53, 'network-delete', 'web', '2022-06-22 02:30:40', '2022-06-22 02:30:40'),
(54, 'partner-list', 'web', '2022-06-23 00:17:11', '2022-06-23 00:17:11'),
(55, 'partner-create', 'web', '2022-06-23 00:17:11', '2022-06-23 00:17:11'),
(56, 'partner-edit', 'web', '2022-06-23 00:17:11', '2022-06-23 00:17:11'),
(57, 'partner-delete', 'web', '2022-06-23 00:17:11', '2022-06-23 00:17:11'),
(58, 'logo-list', 'web', '2022-06-27 00:31:50', '2022-06-27 00:31:50'),
(59, 'logo-create', 'web', '2022-06-27 00:31:50', '2022-06-27 00:31:50'),
(60, 'logo-edit', 'web', '2022-06-27 00:31:50', '2022-06-27 00:31:50'),
(61, 'logo-delete', 'web', '2022-06-27 00:31:50', '2022-06-27 00:31:50'),
(62, 'partnericon-list', 'web', '2022-06-28 07:19:28', '2022-06-28 07:19:28'),
(63, 'partnericon-create', 'web', '2022-06-28 07:19:28', '2022-06-28 07:19:28'),
(64, 'partnericon-edit', 'web', '2022-06-28 07:19:29', '2022-06-28 07:19:29'),
(65, 'partnericon-delete', 'web', '2022-06-28 07:19:29', '2022-06-28 07:19:29'),
(70, 'advertisement-list', 'web', '2022-07-14 08:06:14', '2022-07-14 08:06:14'),
(71, 'advertisement-create', 'web', '2022-07-14 08:06:14', '2022-07-14 08:06:14'),
(72, 'advertisement-edit', 'web', '2022-07-14 08:06:14', '2022-07-14 08:06:14'),
(73, 'advertisement-delete', 'web', '2022-07-14 08:06:14', '2022-07-14 08:06:14'),
(74, 'product-list', 'web', '2022-07-19 06:38:38', '2022-07-19 06:38:38'),
(75, 'product-create', 'web', '2022-07-19 06:38:38', '2022-07-19 06:38:38'),
(76, 'product-edit', 'web', '2022-07-19 06:38:39', '2022-07-19 06:38:39'),
(77, 'product-delete', 'web', '2022-07-19 06:38:39', '2022-07-19 06:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `potpiskas`
--

CREATE TABLE `potpiskas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reltor_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `check` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `htype_id` varchar(255) DEFAULT NULL,
  `sale_id` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `price_som` int(11) DEFAULT NULL,
  `nwe_price` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `kitchen_area` varchar(255) DEFAULT NULL,
  `living_area` varchar(255) DEFAULT NULL,
  `total_area` varchar(255) DEFAULT NULL,
  `total_area_type` varchar(255) DEFAULT NULL,
  `repair_id` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `close` tinyint(1) DEFAULT NULL,
  `material_id` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `flat` varchar(255) DEFAULT NULL,
  `ipoteka` varchar(255) DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `solt` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `check`, `user_id`, `htype_id`, `sale_id`, `longitude`, `latitude`, `price_som`, `nwe_price`, `date`, `room`, `kitchen_area`, `living_area`, `total_area`, `total_area_type`, `repair_id`, `description`, `close`, `material_id`, `region_id`, `city_id`, `street`, `house`, `floor`, `flat`, `ipoteka`, `trade`, `view`, `solt`, `created_at`, `updated_at`) VALUES
(469, '1', 418, '17', '6', '72.43532082057014', '40.725433601749565', 1000000000, NULL, '2020', '10', '35', '25', '10', 'ar', '1', ' Turar joylar asrlar davomida togʻ gʻorlari, tabiatdagi oddiy boshpana bostirmalardan boshlab, zamonaviy koʻp qavatli uylargacha murakkab tarak,qiyot jarayonini bosib oʻtgan. Ayni vaqtda meʼmorlik shaklu shamoyili asosini taʼminlab kelgan. Tosh davrida gor, chayla, yertoʻlalar Turar joy vazifasini oʻtagan (qarang Ibtidoiy jamiyat). Inson oʻtroqlashgan sari Turar joy shakli ham oʻzgara borgan, oʻrmonli joylarda yogʻoch uylar yuzaga kelgan (botqoq va suv bosadigan yerlarga yogoch, xoda qoqib, ustiga uy qurilgan). Iqlimi quruq, daraxt oʻsmaydigan dasht va togʻ etaklarida neolit davridan boshlab tosh, loy, xom gʻisht, guvala, somon kabi qurilish materiallaridan foydalanilgan. Osiyo va Afrikaning chorvachilik bilan shugʻullanadigan oʻlkalarida koʻchma Tj.lar keng tarqalgan. Chodir (hayvon terisi, matodan; Osiyoning jan. toglik hududlarida, eroniylar, arablar), oq uy, qora uyoʻtov, chayla, kapa, olachuq kabi (namat va yogʻochdan) mugʻul koʻchma uyjoylari ayniqsa koʻchmanchi turkiy qavmlarda keng qoʻllangan, hatto arava ustiga qurilgan koʻchik (koʻshk)lar Dashti Qipchoqsan Sharqiy Yevropagacha boʻlgan hududlarda kuzatilgan. Shimolida eskimoslarning Turar joylari bugʻu terisi va muzdan qurilgan.\r\n', NULL, '16', '21', '75', 'Zavroq', '2', '2', NULL, NULL, NULL, 45, NULL, '2022-07-13 09:01:17', '2022-07-19 08:35:03'),
(470, '1', 418, '13', '6', '64.43202463427306', '39.77500644701446', 900000000, NULL, '2000', '3', '15', '45', '100', 'm2', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s w', NULL, '17', '22', '77', 'Markaz', '2', '4', '20', NULL, NULL, 11, NULL, '2022-07-13 09:04:12', '2022-07-19 08:34:44'),
(471, '1', 418, '12', '5', '65.36817008842684', '40.142439402636214', 7000000, NULL, '2000', '7', '25', '35', '8', 'ar', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s w', NULL, '16', '27', '82', 'Karmana', '2', NULL, NULL, NULL, NULL, 33, NULL, '2022-07-13 09:08:51', '2022-07-19 08:35:45'),
(474, 'true', 420, '15', '5', '69.20071101662788', '41.08971670641833', 10000000, NULL, '1009', '10', '12', '1', '21', NULL, '1', 'Yahshi kvartira', NULL, '16', '33', '88', 'Bobur shoh 5 Makro togrisida', '2', '1', '2', NULL, NULL, 6, NULL, '2022-07-14 05:37:43', '2025-12-15 17:31:09'),
(490, 'false', 417, '15', '6', '59.017069085785394', '43.87860077838318', 100000000, NULL, '2000', '5', '20', '20', '6', 'ar', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s w', NULL, '16', '29', '84', 'Muynok', '2', '2', NULL, NULL, NULL, 11, NULL, '2022-07-14 06:44:36', '2022-07-19 08:45:18'),
(494, 'true', 420, '12', '5', '64.45901852843316', '39.859691314090526', 12342366, NULL, '2022', '8', '21', '3232', '323', NULL, '1', 'Lorem', NULL, '16', '22', '77', 'bobur', '2', '0', '1', NULL, NULL, 7, NULL, '2022-07-14 09:56:47', '2022-07-19 08:46:16'),
(495, 'true', 420, '15', '6', '71.64163338069956', '41.01131360371609', 99887778, NULL, '2022', '3', '32', '233', '323', NULL, '1', 'Yahshi uy', NULL, '16', '26', '81', 'SH', '2', '1', '0', NULL, NULL, 5, NULL, '2022-07-14 10:13:47', '2025-12-15 16:59:31'),
(496, 'false', 420, '15', '6', '71.64163338069956', '41.01131360371609', 99887778, NULL, '2022', '3', '32', '233', '323', NULL, '1', 'Yahshi uy', NULL, '16', '26', '81', 'SH', '2', '1', '0', NULL, NULL, 14, NULL, '2022-07-14 10:13:49', '2022-07-19 08:58:42'),
(497, 'true', 420, '17', '5', '65.87056577316783', '39.80217789641443', 19800000, NULL, '2019', '6', '34', '42', '423', NULL, '1', 'zor uy', NULL, '17', '25', '80', 'Bobur', '2', '1', '3', NULL, NULL, 12, NULL, '2022-07-14 10:17:18', '2025-12-17 14:19:12'),
(498, 'true', 420, '14', '5', '59.37113393675047', '42.721161740409464', 150000000, NULL, '1999', '12', '213', '321', '2333', NULL, '1', 'yahshi', NULL, '16', '29', '84', 'kocha 4', '2', '1', '1', NULL, NULL, 3, NULL, '2022-07-14 10:21:40', '2025-12-17 14:15:36'),
(503, 'true', 419, '12', '5', '70.95273180738415', '40.74855390789263', 7900000, NULL, '2020', '3', '2', '2', '2', 'm2', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five', NULL, '17', '33', '89', 'Andijon', '2', '1', '2', NULL, NULL, 11, NULL, '2022-07-14 10:26:46', '2025-12-17 14:19:03'),
(504, 'false', 420, '13', '5', '71.67662117390194', '40.96141260480363', 999999999, NULL, '2019', '18', '32', '3232', '32', NULL, '1', 'yaxshi uyjon telfonda gaplashamiz', NULL, '16', '26', '81', 'alisher 15', '2', '12', '21', NULL, NULL, 3, NULL, '2022-07-14 10:27:45', '2025-12-15 15:39:20'),
(505, 'false', 419, '12', '5', '70.95273180738415', '40.74855390789263', 7900000, NULL, '2020', '3', '2', '2', '2', 'm2', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five', NULL, '17', '33', '89', 'Anidjon', '2', '1', '2', NULL, NULL, 14, NULL, '2022-07-14 10:28:08', '2025-12-15 15:39:23'),
(506, 'false', 420, '13', '5', '70.93504402546444', '40.536943975819874', 13000000, NULL, '2019', '18', '32', '3232', '32', NULL, '1', 'yaxshi uyjon telfonda gaplashamiz', NULL, '16', '23', '78', 'alisher 15', '2', '12', '21', NULL, NULL, 12, NULL, '2022-07-14 10:28:23', '2025-12-15 15:39:25'),
(507, 'false', 420, '12', '6', '69.2917421213181', '41.248932087862926', 13400000, NULL, '2019', '18', '32', '3232', '32', NULL, '1', 'yaxshi uyjon telfonda gaplashamiz', NULL, '16', '33', '88', 'alisher 15', '2', '12', '21', NULL, NULL, 60, NULL, '2022-07-14 10:29:15', '2025-12-15 15:39:27'),
(508, 'false', 420, '12', '5', '72.34770405223765', '40.78048381960076', 19000000, NULL, '1999', '12', '12', '213', '334', NULL, '1', 'Yaxshi uy', NULL, '16', '21', '75', 'Bobur 15', '2', '1', '2', NULL, NULL, 38, NULL, '2022-07-14 10:45:24', '2025-12-15 15:39:30'),
(510, 'false', 443, '13', '5', '23.90625', '8.157118149071993', 10000000, NULL, '2457', '425', '4', '45', '4', 'ar', '1', '254p[p', NULL, '16', '21', '89', 'rthrth', '2', '2', '5', NULL, NULL, 2, NULL, '2022-07-15 10:06:33', '2025-12-15 15:39:32'),
(512, 'false', 448, '13', '5', '77.6953125', '51.020666012558095', 12, NULL, '23', '32', '32', '32', '29', NULL, '2', 'alkd', NULL, '16', '23', '78', 'alkflş', '2', '32', '32', NULL, NULL, 21, NULL, '2022-07-18 07:17:32', '2025-12-15 15:39:35'),
(513, 'false', 448, '13', '5', '77.6953125', '51.020666012558095', 12, NULL, '23', '32', '32', '32', '29', NULL, '2', 'alkd', NULL, '16', '23', '78', 'alkflş', '2', '32', '32', NULL, NULL, 29, NULL, '2022-07-18 07:17:38', '2025-12-15 15:39:37'),
(514, 'false', 448, '13', '5', '77.6953125', '51.020666012558095', 12, NULL, '23', '32', '32', '32', '29', NULL, '2', 'alkd', NULL, '16', '23', '78', 'alkflş', '2', '32', '32', NULL, NULL, 30, NULL, '2022-07-18 07:17:52', '2025-12-15 15:39:40'),
(515, 'true', 449, '12', '5', '69.19868502751285', '41.28036940035558', 1000000000, NULL, '2010', '5', '24', '32', '90', NULL, '1', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Velit debitis consequuntur perferendis ipsum voluptas dolor aliquam iste, vero dolorem quis, eveniet quod. Esse perferendis beatae dolorum? Voluptatum, sapiente officiis nihil voluptas mollitia maxime, aut cupiditate corrupti ratione molestias amet iste assumenda porro eveniet quibusdam minima, numquam ipsam. Odit quos laudantium maiores bl', NULL, '16', '21', '75', '1', '1', '1', '1', NULL, NULL, 52, NULL, '2025-12-15 15:36:57', '2025-12-17 13:49:40'),
(523, 'true', 449, '15', '5', '69.40071101662788', '41.02971670641833', 4000000, NULL, '2005', '2', '16', '20', '50', 'null', '2', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae voluptate incidunt nulla. Ab suscipit et saepe consequatur tempore soluta ratione nobis adipisci, cumque nam minima ut placeat. Distinctio id facere fugit in, provident doloremque delectus ipsa sapiente et, ab dolore nihil amet. Illum quisquam, dolorem officiis harum temporibus neque beatae pariatur rerum id? Expedita deleniti om', NULL, '17', '33', '88', 'Yunusobod', '2', '4', '4', NULL, NULL, 7, NULL, '2025-12-15 17:17:16', '2025-12-17 13:49:55'),
(524, 'true', 449, '15', '5', '71.54163338069956', '41.11131360371609', 4000000, NULL, '2005', '2', '16', '20', '50', 'null', '2', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae voluptate incidunt nulla. Ab suscipit et saepe consequatur tempore soluta ratione nobis adipisci, cumque nam minima ut placeat. Distinctio id facere fugit in, provident doloremque delectus ipsa sapiente et, ab dolore nihil amet. Illum quisquam, dolorem officiis harum temporibus neque beatae pariatur rerum id? Expedita deleniti om', NULL, '17', '33', '88', 'Yunusobod', '2', '4', '4', NULL, NULL, 6, NULL, '2025-12-15 17:18:08', '2025-12-17 14:03:58'),
(525, 'true', 449, '13', '5', '71.58163338069956', '41.18131360371609', 5000000, NULL, '2005', '2', '16', '20', '50', 'null', '2', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae voluptate incidunt nulla. Ab suscipit et saepe consequatur tempore soluta ratione nobis adipisci, cumque nam minima ut placeat. Distinctio id facere fugit in, provident doloremque delectus ipsa sapiente et, ab dolore nihil amet. Illum quisquam, dolorem officiis harum temporibus neque beatae pariatur rerum id? Expedita deleniti om', NULL, '17', '33', '88', 'Yunusobod', '2', '4', '4', NULL, NULL, 91, NULL, '2025-12-15 17:19:01', '2025-12-17 14:18:44'),
(526, 'true', 449, '13', '5', '77.6853125', '77.6853125', 5000000, NULL, '2005', '2', '16', '20', '50', 'null', '2', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae voluptate incidunt nulla. Ab suscipit et saepe consequatur tempore soluta ratione nobis adipisci, cumque nam minima ut placeat. Distinctio id facere fugit in, provident doloremque delectus ipsa sapiente et, ab dolore nihil amet. Illum quisquam, dolorem officiis harum temporibus neque beatae pariatur rerum id? Expedita deleniti om', NULL, '17', '23', '78', 'Qo\'qon', '3', '4', '4', NULL, NULL, 59, NULL, '2025-12-15 17:19:52', '2025-12-17 12:50:16'),
(527, 'true', 449, '14', '5', '71.64163338069956', '41.01131360371609', 2500000, NULL, '2015', '2', '16', '20', '50', 'm2', '3', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae voluptate incidunt nulla. Ab suscipit et saepe consequatur tempore soluta ratione nobis adipisci, cumque nam minima ut placeat. Distinctio id facere fugit in, provident doloremque delectus ipsa sapiente et, ab dolore nihil amet. Illum quisquam, dolorem officiis harum temporibus neque beatae pariatur rerum id? Expedita deleniti om', NULL, '18', '33', '88', 'Tinchlik', '45', '4', '4', NULL, NULL, 7, NULL, '2025-12-15 17:22:02', '2025-12-17 14:14:38'),
(528, 'true', 449, '14', '6', '65.46817008842684', '40.182439402636214', 500000000, NULL, '2015', '2', '16', '20', '50', 'null', '3', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae voluptate incidunt nulla. Ab suscipit et saepe consequatur tempore soluta ratione nobis adipisci, cumque nam minima ut placeat. Distinctio id facere fugit in, provident doloremque delectus ipsa sapiente et, ab dolore nihil amet. Illum quisquam, dolorem officiis harum temporibus neque beatae pariatur rerum id? Expedita deleniti om', NULL, '18', '33', '88', 'Resevi', '12', '4', '4', NULL, NULL, 34, NULL, '2025-12-15 17:23:00', '2025-12-17 12:50:20'),
(529, 'true', 449, '15', '6', '70.55273180738415', '40.34855390789263', 600000000, NULL, '2015', '2', '16', '20', '50', 'null', '3', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Recusandae voluptate incidunt nulla. Ab suscipit et saepe consequatur tempore soluta ratione nobis adipisci, cumque nam minima ut placeat. Distinctio id facere fugit in, provident doloremque delectus ipsa sapiente et, ab dolore nihil amet. Illum quisquam, dolorem officiis harum temporibus neque beatae pariatur rerum id? Expedita deleniti om', NULL, '18', '33', '88', 'Resevi', '12', '4', '4', NULL, NULL, 49, NULL, '2025-12-15 17:23:23', '2025-12-17 14:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_uz` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name_uz`, `created_at`, `updated_at`, `name_en`, `name_ru`, `image`) VALUES
(21, 'Andijon', '2022-06-09 01:52:05', '2025-12-14 18:10:18', 'Andijon', 'Андижан', 'regions/EmyDGYT3eBeQWxM2G1HTkEXmipKT1Wtuos7bgwyv.webp'),
(22, 'Buxoro', '2022-06-09 01:52:31', '2025-12-14 18:09:36', 'Bukhara', 'Бухара', 'regions/dHodASMMb2BAsDZ5TfPcKE2cBKncQt5Grmr3G90w.jpg'),
(23, 'Farg\'ona', '2022-06-09 01:53:05', '2025-12-14 18:09:11', 'Фергана', 'Fergana', 'regions/Ha1yyHZmMIHj4REeq2vV4RD3RTugaa759VhP1P0Q.jpg'),
(24, 'Jizzax', '2022-06-09 01:53:31', '2025-12-14 18:08:25', 'Jizzax', 'Джизакс', 'regions/U8nW1XQSz1O5SlNKnazxTbLzDDwExkZEn71CFu3X.jpg'),
(25, 'Xorazm', '2022-06-09 01:53:39', '2025-12-14 18:07:36', 'Khorezm', 'Хорезм', 'regions/o30rYnk4JCZERpdbDeUVrH96vXdUokKWaznPH6fs.webp'),
(26, 'Namangan', '2022-06-09 01:54:53', '2025-12-14 18:07:04', 'Namangan', 'Наманган', 'regions/CI3jrFffdo14xAK4mUprQn7h02UfW2pwVyFv3TC9.jpg'),
(27, 'Navoiy', '2022-06-09 01:55:12', '2025-12-14 18:06:07', 'Navoi', 'Навои', 'regions/rZqnK7kl7UFxZ32OLFNTTNJxkNhC0aMFlKoGnaBe.jpg'),
(28, 'Qashqadaryo', '2022-06-09 01:55:25', '2025-12-14 18:05:37', 'Qashqadaryo', 'Кашкадарья', 'regions/83VpZ7B4SXwewaKwTk1QekhAcLwMZo1BLgDDMTAf.jpg'),
(29, 'Qoraqalpog\'iston Respublikasi', '2022-06-09 01:55:46', '2025-12-14 18:04:47', 'The Republic of Karakalpakstan', 'Республика Каракалпакстан', 'regions/u1NtFyhjp2w2VkxY6csJavklvQgFNasJLrU4kaxe.jpg'),
(30, 'Samarqand', '2022-06-09 01:55:55', '2025-12-14 18:03:12', 'Samarkand', 'Самарканд', 'regions/CHFSEIHuvVOZEvQHfuluZtO2xEDzZuBV3zDcUFfP.jpg'),
(31, 'Sirdaryo', '2022-06-09 01:56:23', '2025-12-15 17:04:04', 'Sirdaryo', 'Sirdaryo', 'regions/QIM3c2k1j3LeFv5ZWQ959sqexe2Mk4cVCyfQWmKD.jpg'),
(32, 'Surxondaryo', '2022-06-09 01:56:39', '2025-12-15 17:03:48', 'Surxondaryo', 'Surxondaryo', 'regions/Pjnf5xORGkIichO80ukMJkbAc2GGSjiRHEQEWCR1.jpg'),
(33, 'Toshkent', '2022-06-09 01:57:39', '2025-12-15 17:04:35', 'Tashkent', 'Toshkent', 'regions/vaPSotbxF1BUMqO3aC2fVHWx2PSF64wyvDG8j1eg.webp');

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE `repairs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_uz` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`id`, `name_uz`, `created_at`, `updated_at`, `name_en`, `name_ru`) VALUES
(1, 'Yevro', '2022-05-30 04:47:59', '2022-06-14 06:29:21', 'Eur', 'Eвро'),
(2, 'O\'rtacha', '2022-05-30 04:48:12', '2022-06-14 06:30:30', 'Average', 'Cредний'),
(3, 'Tamir talab', '2022-05-30 04:48:23', '2022-06-14 06:31:23', 'Repair required', 'Требуется ремонт');

-- --------------------------------------------------------

--
-- Table structure for table `retings`
--

CREATE TABLE `retings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `reting` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retings`
--

INSERT INTO `retings` (`id`, `author`, `user_id`, `post_id`, `reting`, `comment`, `created_at`, `updated_at`) VALUES
(27, 358, NULL, 406, 5, NULL, NULL, NULL),
(28, 396, NULL, 462, 4, 'Yahshu ukam zor uyga gap yoq', '2022-07-08 01:36:43', '2022-07-08 01:37:50'),
(29, 398, 398, NULL, 3, 'Yahshiii', '2022-07-11 03:31:56', '2022-07-11 03:31:56'),
(30, 406, 403, NULL, 2, 'mömlk', '2022-07-11 08:16:47', '2022-07-11 13:29:27'),
(31, 407, 406, NULL, 5, 'sldfkş', '2022-07-11 13:24:25', '2022-07-11 13:24:25'),
(32, 408, 403, NULL, 1, 'aşlkdkf', '2022-07-11 13:32:48', '2022-07-12 05:35:06'),
(33, 410, 405, NULL, 3, 'poskfe', '2022-07-12 05:37:31', '2022-07-12 05:46:56'),
(34, 411, 406, NULL, 5, 'alskdnakm lam das malk mdklam kdlma lksmd alkmd', '2022-07-13 06:33:33', '2022-07-13 06:33:33'),
(35, 420, 417, NULL, 3, 'nima gap bro', '2022-07-14 10:56:22', '2022-07-15 06:27:52'),
(36, 440, 420, NULL, 5, 'oııuı', '2022-07-15 10:33:28', '2022-07-15 10:33:28'),
(37, 417, 421, NULL, 5, 'as alşs şdşa lsalsoap alplaps las', '2022-07-15 10:34:19', '2022-07-16 11:35:40'),
(38, 444, 418, NULL, 5, 'Jsnsnas', '2022-07-15 10:48:00', '2022-07-15 10:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-02-15 02:23:22', '2022-06-09 00:33:35'),
(2, 'Foydalanuvchi', 'web', '2022-02-15 02:23:29', '2022-06-09 00:33:18'),
(3, 'Qo\'shuvchi', 'web', '2022-02-15 02:24:10', '2022-06-09 00:33:05'),
(4, 'Tahrirlovchi', 'web', '2022-02-15 02:24:35', '2022-06-09 00:32:48'),
(6, 'O\'chiruvchi', 'web', '2022-03-03 03:50:11', '2022-06-09 00:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(4, 4),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(8, 4),
(9, 1),
(10, 1),
(11, 1),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 6),
(17, 1),
(17, 2),
(17, 3),
(18, 1),
(18, 2),
(18, 4),
(19, 1),
(19, 2),
(19, 6),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 6),
(21, 1),
(21, 2),
(21, 3),
(22, 1),
(22, 2),
(22, 4),
(23, 1),
(23, 2),
(23, 6),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 6),
(25, 1),
(25, 2),
(25, 3),
(26, 1),
(26, 2),
(26, 4),
(27, 1),
(27, 2),
(27, 6),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 6),
(29, 1),
(29, 2),
(29, 3),
(30, 1),
(30, 2),
(30, 4),
(31, 1),
(31, 2),
(31, 6),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 6),
(33, 1),
(33, 2),
(33, 3),
(34, 1),
(34, 2),
(34, 4),
(35, 1),
(35, 2),
(35, 6),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(36, 6),
(37, 1),
(37, 2),
(37, 3),
(38, 1),
(38, 2),
(38, 4),
(39, 1),
(39, 2),
(39, 6),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(42, 6),
(43, 1),
(43, 2),
(43, 3),
(44, 1),
(44, 2),
(44, 4),
(45, 1),
(45, 2),
(45, 6),
(46, 1),
(46, 2),
(46, 3),
(46, 4),
(46, 6),
(47, 1),
(47, 2),
(47, 3),
(48, 1),
(48, 2),
(48, 4),
(49, 1),
(49, 2),
(49, 6),
(50, 1),
(50, 2),
(50, 3),
(50, 4),
(50, 6),
(51, 1),
(51, 2),
(51, 3),
(52, 1),
(52, 2),
(52, 4),
(53, 1),
(53, 2),
(53, 6),
(54, 1),
(54, 2),
(54, 3),
(54, 4),
(54, 6),
(55, 1),
(55, 2),
(55, 3),
(56, 1),
(56, 2),
(56, 4),
(57, 1),
(57, 2),
(57, 6),
(58, 1),
(58, 2),
(58, 3),
(58, 4),
(58, 6),
(59, 1),
(59, 2),
(59, 3),
(60, 1),
(60, 2),
(60, 4),
(61, 1),
(61, 2),
(61, 6),
(62, 1),
(62, 2),
(62, 3),
(62, 4),
(62, 6),
(63, 1),
(63, 2),
(63, 3),
(64, 1),
(64, 2),
(64, 4),
(65, 1),
(65, 2),
(65, 6),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(75, 1),
(76, 1),
(77, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_uz` varchar(255) DEFAULT NULL,
  `icon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(255) DEFAULT NULL,
  `name_ru` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `name_uz`, `icon`, `created_at`, `updated_at`, `name_en`, `name_ru`) VALUES
(5, 'Ijara', '1654774102svggg.svg', '2022-05-30 04:33:21', '2022-06-14 06:25:07', 'Rent', 'Арендовать'),
(6, 'Sotish', '1654774110svggg.svg', '2022-05-30 04:33:43', '2022-06-14 06:25:39', 'Sale', 'Распродажа');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_uz` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_ru` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title_uz`, `image`, `status`, `created_at`, `updated_at`, `title_ru`, `title_en`) VALUES
(8, 'Golden House', 'sliders/ap9YndF2247nOScgCBjXVBCdOOXOzHQ3KDmQDOOO.jpg', '1', '2022-07-05 01:39:07', '2025-12-15 08:04:05', 'Golden House', 'Golden House'),
(9, 'Murad Buildings', 'sliders/xSBdxe1IGIUweuV8IPtacS2Pv6cRJ7bHmQR6HjfY.jpg', '1', '2022-07-05 01:39:22', '2025-12-15 08:01:35', 'Murad Buildings', 'Murad Buildings'),
(12, 'KHON SAROY', 'sliders/z13jOsMEHNXT9yKtltsAC3LbJC5Ci9mWWuUhHsOW.webp', '1', '2025-12-15 08:05:06', '2025-12-15 08:05:06', 'KHON SAROY', 'KHON SAROY'),
(13, 'UET Construction', 'sliders/eshC81eF1cPOHp4AM77c23t5wKKzc4ACQoyGfzvh.svg', '1', '2025-12-15 08:07:25', '2025-12-15 08:07:25', 'UET Construction', 'UET Construction'),
(14, 'MESMER', 'sliders/cDzj29xH54HXhkbsCN8F5K6E5zODhAdsLRnHMggi.png', '1', '2025-12-15 08:08:16', '2025-12-15 08:08:16', 'MESMER', 'MESMER'),
(15, 'Kam Construction Company', 'sliders/eVRDzkB2tUuEpoPcriVfu451QqrpBSvmleKtcOjh.png', '1', '2025-12-15 08:11:23', '2025-12-15 08:11:23', 'Kam Construction Company', 'Kam Construction Company');

-- --------------------------------------------------------

--
-- Table structure for table `s_m_s`
--

CREATE TABLE `s_m_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `s_m_s`
--

INSERT INTO `s_m_s` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(118, '2985729384290', '6EJG', '2022-07-12 13:09:47', '2022-07-12 13:12:54'),
(119, '3987489', 'gpYM', '2022-07-12 13:13:27', '2022-07-12 13:14:29'),
(120, '+998907636669', 'xAna', '2022-07-13 04:57:04', '2022-07-15 11:09:52'),
(121, '3847523092357', 'WS9w', '2022-07-13 05:29:38', '2022-07-13 05:30:02'),
(122, '38475230923577', 'ceUg', '2022-07-13 05:30:37', '2022-07-13 05:30:37'),
(123, '384752309235774', 'aOFP', '2022-07-13 05:31:44', '2022-07-13 05:31:44'),
(124, '38475230923577480', 'QxKu', '2022-07-13 05:32:25', '2022-07-13 05:32:25'),
(125, '3.8475230923577476e+23', '5HhC', '2022-07-13 05:32:37', '2022-07-13 05:32:37'),
(126, '923882938', 'yE2n', '2022-07-13 05:34:42', '2022-07-13 05:34:42'),
(127, '92388293234', 'qhPd', '2022-07-13 05:35:53', '2022-07-13 05:35:53'),
(128, '9238829323467', 'oVYG', '2022-07-13 05:36:40', '2022-07-13 05:36:40'),
(129, '92388293234674', 'KmpF', '2022-07-13 05:38:33', '2022-07-13 05:38:33'),
(130, '+9238', 'XF5I', '2022-07-13 05:40:54', '2022-07-13 05:40:54'),
(131, '99890293223', '8yD9', '2022-07-13 05:44:19', '2022-07-13 05:44:19'),
(132, '998902932231', 'oA59', '2022-07-13 05:45:51', '2022-07-13 05:45:51'),
(133, '798293429', 'X1lt', '2022-07-13 05:47:52', '2022-07-13 05:47:52'),
(134, '9989076366692', 'JnDv', '2022-07-13 05:48:57', '2022-07-13 05:48:57'),
(135, '9989076366691220', '8yiv', '2022-07-13 05:49:52', '2022-07-13 05:49:52'),
(136, '29857293842902', 'hOaB', '2022-07-13 05:51:42', '2022-07-13 05:51:42'),
(137, '9987600218788', 'b0kA', '2022-07-13 05:52:52', '2022-07-13 05:52:52'),
(138, '+99876002187881', 'C8ub', '2022-07-13 05:56:11', '2022-07-13 05:56:11'),
(139, '907823396', '5USo', '2022-07-13 08:30:28', '2022-07-13 08:40:19'),
(140, '+7 565 665 65 65', 'lFP8', '2022-07-13 08:36:11', '2022-07-13 08:37:07'),
(141, '+2985729384290', 'zRff', '2022-07-13 08:36:31', '2022-07-15 05:44:34'),
(142, '+998906225022', '7Vaa', '2022-07-13 08:47:50', '2022-07-15 18:16:57'),
(143, '+998907823396', '2flc', '2022-07-13 08:51:51', '2022-07-14 05:32:32'),
(144, '998900431160', 'ErPI', '2022-07-14 05:15:21', '2022-07-14 05:17:58'),
(145, '+998900431160', 'NGqt', '2022-07-14 05:25:12', '2022-07-18 10:27:05'),
(146, '4354435345', 'Woxp', '2022-07-14 06:10:35', '2022-07-14 06:10:42'),
(147, '123423902', '7YFP', '2022-07-15 05:28:48', '2022-07-15 05:28:48'),
(148, '+7 565 665 65 6533', 'BSj7', '2022-07-15 05:30:46', '2022-07-15 05:54:43'),
(149, '+92839428', 'VPU9', '2022-07-15 05:33:29', '2022-07-15 05:35:08'),
(150, '+7 565 665 65 we', 'YC1Q', '2022-07-15 05:35:31', '2022-07-15 05:36:39'),
(151, '+7 565 665 65232', '0Wqm', '2022-07-15 05:36:54', '2022-07-15 05:38:04'),
(152, '+756566565232', 'i7NT', '2022-07-15 05:43:17', '2022-07-15 05:43:17'),
(153, '+7 565 665 65 65w2', 'hBPd', '2022-07-15 05:45:23', '2022-07-15 05:45:43'),
(154, '+7 565 665 65 65w22', 'XJ4b', '2022-07-15 05:46:23', '2022-07-15 05:46:23'),
(155, '+7 565 665 65 65w222', 'IHd0', '2022-07-15 05:46:42', '2022-07-15 05:46:42'),
(156, '+7 565 665 65 65w222s', 'jHf7', '2022-07-15 05:47:04', '2022-07-15 05:47:04'),
(157, '39084280342', 'yucJ', '2022-07-15 05:47:50', '2022-07-15 05:47:50'),
(158, '390842803428', 'bvEg', '2022-07-15 05:48:43', '2022-07-15 05:48:43'),
(159, '3908428034283', 'pyWO', '2022-07-15 05:50:09', '2022-07-15 05:50:09'),
(160, '+9989076366691', '6wDi', '2022-07-15 05:51:06', '2022-07-15 05:51:06'),
(161, '+99890763666912', '9ABd', '2022-07-15 05:51:44', '2022-07-15 05:51:44'),
(162, '+998907636669123', 'gdOY', '2022-07-15 05:52:10', '2022-07-15 05:52:10'),
(163, '1234239023', 'bHxW', '2022-07-15 05:53:58', '2022-07-15 05:53:58'),
(164, '+29857293842903', 'bYGs', '2022-07-15 05:55:27', '2022-07-15 05:55:42'),
(165, '23899482340382', 'G3Zq', '2022-07-15 05:58:07', '2022-07-15 05:58:07'),
(166, '238994823403822', 'rkhg', '2022-07-15 05:59:02', '2022-07-15 05:59:02'),
(167, '23899482340382232', 'IlkQ', '2022-07-15 05:59:57', '2022-07-15 05:59:57'),
(168, '238994823403822323', 'K15K', '2022-07-15 06:00:33', '2022-07-15 06:00:33'),
(169, '2389948234038223233', 'Ovoy', '2022-07-15 06:01:15', '2022-07-15 06:01:15'),
(170, '+203923232', 'OPNS', '2022-07-15 06:03:14', '2022-07-15 06:43:18'),
(171, '999999999999999999', '9q7C', '2022-07-15 08:20:00', '2022-07-15 08:20:00'),
(172, '123', 'Hdaj', '2022-07-15 08:20:01', '2022-07-15 08:20:01'),
(173, '+998998760021', '1DFt', '2022-07-15 10:02:27', '2022-07-15 10:02:27'),
(174, '+82828282929', 'F7Kd', '2022-07-15 10:45:34', '2022-07-15 10:45:34'),
(175, '0928349283429804', 'Yxxa', '2022-07-16 12:22:35', '2022-07-16 12:31:21'),
(176, '99876002023131', 'gYYC', '2022-07-16 12:23:35', '2022-07-16 12:23:35'),
(177, '99876002023131ads', '59BT', '2022-07-16 12:25:13', '2022-07-16 12:25:24'),
(178, '+9989076366695858', 'jGnV', '2022-07-16 12:36:44', '2022-07-16 12:36:44'),
(179, '1234', 'wqK1', '2022-07-16 12:47:43', '2022-07-16 12:47:43'),
(180, '12345', 'D6B6', '2022-07-16 12:59:16', '2022-07-16 12:59:16'),
(181, 'Galaxy0900', '0MxC', '2022-07-18 10:23:28', '2022-07-18 10:23:28'),
(182, '+998908760021', '0jU5', '2022-07-18 20:17:37', '2022-07-18 20:18:44'),
(183, 'mail', 'qvB3', '2025-12-14 18:45:32', '2025-12-14 18:45:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`) VALUES
(2, 'Dariya', 'Qoshuvchi@Qoshuvchi.com', NULL, '$2y$10$91oh4sRlX9RoYnXYD0wRK..EqYOOeyxQ7DzYm4GL6WUcVUvSQZyHa', NULL, '2022-02-15 02:43:46', '2022-07-14 05:13:28', '16577756081652869578user-6.png'),
(3, 'Afeme', 'afeme@afeme.com', NULL, '$2y$10$OBS1jMHvjJdhgLwXzIj7/eP9jrAvZPVvnfpmA3Inu4a8FSZTcE.0O', '7mN5F0U3WWL4sauQ9QvtsAOLDxGrpYCWKKlPgGNOAd5k092wB6lqXFnFIQjh', '2022-02-15 02:52:10', '2022-07-14 05:11:51', '1657775511photo_2022-07-12_14-50-50.jpg'),
(4, 'Feya', 'Tahrirlovchi@Tahrirlovchi.com', NULL, '$2y$10$VFNcS5cTe/7Sj3yluO32Jud4N6ujuxZu0arJhUqoSXZcwtadsuYk2', NULL, '2022-02-15 02:53:48', '2022-07-14 05:13:04', '16577755841652869548user-2.png'),
(16, 'Ali', 'Ochiruvchi@Ochiruvchi.com', NULL, '$2y$10$fX3mTqGqrFLSlfZSu72ER.Al5ioBhmAGjRdiBs8yNulMDeO0yoHka', NULL, '2022-03-03 09:33:30', '2022-07-14 05:13:13', '16577755931652869613user-8.png'),
(29, 'Alex', 'user@user.com', NULL, '$2y$10$RusxTgN3KBPMMj1SAfVfku/h6XtIlNfP39.mg//Y5u//TV/iaBSfO', NULL, '2022-06-16 05:25:19', '2022-07-14 06:18:01', '16577794811652869651user-4.png'),
(38, 'Suyunbek', 'mail@mail.com', NULL, '$2y$10$EjpWNVGYVoHtBiskE5B9TO2R7WLVuIsdqhogsQ3iYgtXVz6DQz9zO', NULL, '2025-12-15 06:46:53', '2025-12-15 06:46:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `post_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `url`, `post_id`, `created_at`, `updated_at`) VALUES
(152, 'https://www.youtube.be/embed/kacyaEXqVhs', '462', '2022-07-12 09:06:45', '2022-07-12 09:06:45'),
(154, 'http://ali98.uz/files/16576209440.16471099853516.mp4', '471', '2022-07-12 10:16:42', '2022-07-12 10:16:42'),
(155, 'http://ali98.uz/files/16576209440.16471099853516.mp4', '470', '2022-07-12 10:16:51', '2022-07-12 10:16:51'),
(156, 'http://ali98.uz/files/16577791070.14979696273804.mp4', '484', '2022-07-14 06:26:03', '2022-07-14 06:26:03'),
(157, 'http://ali98.uz/files/16577791070.14979696273804.mp4', '485', '2022-07-14 06:26:59', '2022-07-14 06:26:59'),
(158, 'http://ali98.uz/files/16577791070.14979696273804.mp4', '486', '2022-07-14 06:27:11', '2022-07-14 06:27:11'),
(159, 'http://ali98.uz/files/16577791070.14979696273804.mp4', '487', '2022-07-14 06:28:15', '2022-07-14 06:28:15'),
(160, 'http://ali98.uz/files/16577791070.14979696273804.mp4', '488', '2022-07-14 06:28:45', '2022-07-14 06:28:45'),
(161, 'http://ali98.uz/files/16577791070.14979696273804.mp4', '489', '2022-07-14 06:28:52', '2022-07-14 06:28:52'),
(162, 'http://ali98.uz/files/16577810470.1239550113678.mp4', '490', '2022-07-14 06:44:36', '2022-07-14 06:44:36'),
(163, 'input type = file, name = file. bo\'lishi kerak', '512', '2022-07-18 07:17:32', '2022-07-18 07:17:32'),
(164, 'input type = file, name = file. bo\'lishi kerak', '513', '2022-07-18 07:17:38', '2022-07-18 07:17:38'),
(165, 'input type = file, name = file. bo\'lishi kerak', '514', '2022-07-18 07:17:52', '2022-07-18 07:17:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `networks`
--
ALTER TABLE `networks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `partnericons`
--
ALTER TABLE `partnericons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `potpiskas`
--
ALTER TABLE `potpiskas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retings`
--
ALTER TABLE `retings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_m_s`
--
ALTER TABLE `s_m_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=731;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `networks`
--
ALTER TABLE `networks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partnericons`
--
ALTER TABLE `partnericons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `potpiskas`
--
ALTER TABLE `potpiskas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `repairs`
--
ALTER TABLE `repairs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `retings`
--
ALTER TABLE `retings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `s_m_s`
--
ALTER TABLE `s_m_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
