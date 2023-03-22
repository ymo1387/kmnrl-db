-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2023 at 05:22 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kmnrl`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `count` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `count`, `created_at`, `updated_at`) VALUES
(15, 1, 1, 1, '2023-02-20 10:03:55', '2023-02-21 08:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `families`
--

INSERT INTO `families` (`id`, `name`, `slug`) VALUES
(1, 'Ray Legacy', 'ray-legacy'),
(2, 'Winston Royale', 'winston-royale'),
(3, 'Winston Double Subs', 'winston-double-subs'),
(4, 'Kate Royale', 'kate-royale'),
(5, 'Mono Tag', 'mono-tag'),
(6, 'Moneypenny', 'moneypenny'),
(7, 'Francis', 'francis'),
(8, 'Poly', 'poly'),
(9, 'Jeff', 'jeff'),
(10, 'Cole', 'cole'),
(11, 'Strap 20', 'strap-20'),
(12, 'Lewis', 'lewis'),
(13, 'Alix', 'alix'),
(14, 'Mika', 'mika'),
(15, 'Kate Revolt', 'kate-revolt'),
(20, 'Ethan', 'ethan'),
(21, 'Turner', 'turner'),
(22, 'Alpha', 'alpha');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `extension`, `path`, `type`, `product_id`) VALUES
(1, 'ray-legacy_mesh-black__front', 'webp', NULL, 'main', 1),
(2, 'ray-legacy_mesh-black__side', 'webp', NULL, 'sec', 1),
(3, 'ray-legacy_mesh-black__back', 'webp', NULL, 'sec', 1),
(4, 'ray-legacy_mesh-black__top', 'webp', NULL, 'other', 1),
(5, 'winston-royale_silver-black__front', 'webp', NULL, 'main', 2),
(6, 'winston-royale_silver-black__side', 'webp', NULL, 'sec', 2),
(7, 'winston-royale_silver-black__back', 'webp', NULL, 'sec', 2),
(8, 'winston-royale_silver-black__top', 'webp', NULL, 'other', 2),
(9, 'winston-royale_silver-blue__front', 'webp', NULL, 'main', 3),
(10, 'winston-royale_silver-blue__side', 'webp', NULL, 'sec', 3),
(11, 'winston-royale_silver-blue__back', 'webp', NULL, 'sec', 3),
(12, 'winston-royale_silver-blue__top', 'webp', NULL, 'other', 3),
(13, 'winston-double-subs_black__front', 'webp', NULL, 'main', 4),
(14, 'winston-double-subs_black__side', 'webp', NULL, 'sec', 4),
(15, 'winston-double-subs_black__back', 'webp', NULL, 'sec', 4),
(16, 'winston-double-subs_black__top', 'webp', NULL, 'other', 4),
(17, 'winston-double-subs_blue__front', 'webp', NULL, 'main', 5),
(18, 'winston-double-subs_blue__side', 'webp', NULL, 'sec', 5),
(19, 'winston-double-subs_blue__back', 'webp', NULL, 'sec', 5),
(20, 'winston-double-subs_blue__top', 'webp', NULL, 'other', 5),
(21, 'kate-royale_silver__front', 'webp', NULL, 'main', 6),
(22, 'kate-royale_silver__side', 'webp', NULL, 'sec', 6),
(23, 'kate-royale_silver__back', 'webp', NULL, 'sec', 6),
(24, 'kate-royale_silver__top', 'webp', NULL, 'other', 6),
(25, 'ray-legacy_mesh-silver__front', 'webp', NULL, 'main', 7),
(26, 'ray-legacy_mesh-silver__side', 'webp', NULL, 'sec', 7),
(27, 'ray-legacy_mesh-silver__back', 'webp', NULL, 'sec', 7),
(28, 'ray-legacy_mesh-silver__top', 'webp', NULL, 'other', 7),
(29, 'mono-tag_all-black__front', 'webp', NULL, 'main', 8),
(30, 'mono-tag_all-black__side', 'webp', NULL, 'sec', 8),
(31, 'mono-tag_all-black__back', 'webp', NULL, 'sec', 8),
(32, 'mono-tag_all-black__top', 'webp', NULL, 'other', 8),
(33, 'moneypenny_black-rose__front', 'webp', NULL, 'main', 9),
(34, 'moneypenny_black-rose__side', 'webp', NULL, 'sec', 9),
(35, 'moneypenny_black-rose__back', 'webp', NULL, 'sec', 9),
(36, 'moneypenny_black-rose__top', 'webp', NULL, 'other', 9),
(37, 'moneypenny_gold-tan__front', 'webp', NULL, 'main', 10),
(38, 'moneypenny_gold-tan__side', 'webp', NULL, 'sec', 10),
(39, 'moneypenny_gold-tan__back', 'webp', NULL, 'sec', 10),
(40, 'moneypenny_gold-tan__top', 'webp', NULL, 'other', 10),
(41, 'francis_musk__front', 'webp', NULL, 'main', 11),
(42, 'francis_musk__sec1', 'webp', NULL, 'sec', 11),
(43, 'francis_pearl__front', 'webp', NULL, 'main', 12),
(44, 'francis_pearl__sec1', 'webp', NULL, 'sec', 12),
(45, 'poly_lake__front', 'webp', NULL, 'main', 13),
(46, 'poly_lake__sec1', 'webp', NULL, 'sec', 13),
(47, 'jeff_black__front', 'webp', NULL, 'main', 14),
(48, 'jeff_black__sec1', 'webp', NULL, 'sec', 14),
(49, 'cole_ash__front', 'webp', NULL, 'main', 15),
(50, 'cole_ash__sec1', 'webp', NULL, 'sec', 15),
(51, 'cole_ash__other1', 'webp', NULL, 'other', 15),
(52, 'cole_black__front', 'webp', NULL, 'main', 16),
(53, 'cole_black__sec1', 'webp', NULL, 'sec', 16),
(54, 'cole_black__other1', 'webp', NULL, 'other', 16),
(55, 'cole_havana__front', 'webp', NULL, 'main', 17),
(56, 'cole_havana__sec1', 'webp', NULL, 'sec', 17),
(57, 'cole_havana__other1', 'webp', NULL, 'other', 17),
(58, 'strap-20_black-black', 'webp', NULL, 'main', 18),
(59, 'strap-20_black-silver', 'webp', NULL, 'main', 19),
(60, 'strap-20_estate-silver', 'webp', NULL, 'main', 20),
(61, 'strap-20_nato_blue-silver', 'webp', NULL, 'main', 21),
(62, 'lewis_black__front', 'webp', NULL, 'main', 22),
(63, 'lewis_black__side', 'webp', NULL, 'sec', 22),
(64, 'lewis_black__back', 'webp', NULL, 'sec', 22),
(65, 'lewis_black__top', 'webp', NULL, 'other', 22),
(66, 'lewis_blue__front', 'webp', NULL, 'main', 23),
(67, 'lewis_blue__side', 'webp', NULL, 'sec', 23),
(68, 'lewis_blue__back', 'webp', NULL, 'sec', 23),
(69, 'lewis_blue__top', 'webp', NULL, 'other', 23),
(70, 'lewis_cigar__front', 'webp', NULL, 'main', 24),
(71, 'lewis_cigar__side', 'webp', NULL, 'sec', 24),
(72, 'lewis_cigar__back', 'webp', NULL, 'sec', 24),
(73, 'lewis_cigar__top', 'webp', NULL, 'other', 24),
(74, 'poly_lilac__front', 'webp', NULL, 'main', 25),
(75, 'poly_lilac__sec1', 'webp', NULL, 'sec', 25),
(76, 'poly_lilac__other1', 'webp', NULL, 'other', 25),
(77, 'alix_gun-matte__front', 'webp', NULL, 'main', 26),
(78, 'alix_gun-matte__sec1', 'webp', NULL, 'sec', 26),
(79, 'alix_gun-matte__other1', 'webp', NULL, 'other', 26),
(80, 'mika_white-gold-glossy__front', 'webp', NULL, 'main', 27),
(81, 'mika_white-gold-glossy__sec1', 'webp', NULL, 'sec', 27),
(82, 'mika_white-gold-glossy__other1', 'webp', NULL, 'other', 27),
(83, 'mika_rose-gold-glossy__front', 'webp', NULL, 'main', 28),
(84, 'mika_rose-gold-glossy__sec1', 'webp', NULL, 'sec', 28),
(85, 'mika_rose-gold-glossy__other1', 'webp', NULL, 'other', 28),
(86, 'francis_daffodil__front', 'webp', NULL, 'main', 29),
(87, 'francis_daffodil__sec1', 'webp', NULL, 'sec', 29),
(88, 'francis_daffodil__other1', 'webp', NULL, 'other', 29),
(89, 'kate-revolt_black__front', 'webp', NULL, 'main', 30),
(90, 'kate-revolt_black__side', 'webp', NULL, 'sec', 30),
(91, 'kate-revolt_black__back', 'webp', NULL, 'sec', 30),
(92, 'kate-revolt_black__top', 'webp', NULL, 'other', 30),
(93, 'kate-revolt_rose-gold__front', 'webp', NULL, 'main', 31),
(94, 'kate-revolt_rose-gold__side', 'webp', NULL, 'sec', 31),
(95, 'kate-revolt_rose-gold__back', 'webp', NULL, 'sec', 31),
(96, 'kate-revolt_rose-gold__top', 'webp', NULL, 'other', 31),
(98, 'lewis_metropolis__front', 'webp', NULL, 'main', 45),
(99, 'lewis_metropolis__back', 'webp', NULL, 'sec', 45),
(100, 'lewis_metropolis__side', 'webp', NULL, 'sec', 45),
(101, 'lewis_metropolis__top', 'jpg', NULL, 'other', 45),
(102, 'ethan_ash__front', 'webp', NULL, 'main', 46),
(103, 'ethan_ash__sec1', 'webp', NULL, 'sec', 46),
(104, 'turner_shadow__front', 'webp', NULL, 'main', 47),
(105, 'turner_shadow__sec1', 'webp', NULL, 'sec', 47),
(106, 'turner_shadow__other1', 'webp', NULL, 'other', 47),
(107, 'alpha_havana__front', 'webp', NULL, 'main', 48),
(108, 'alpha_havana__sec1', 'webp', NULL, 'sec', 48),
(109, 'alpha_havana__other1', 'webp', NULL, 'other', 48);

-- --------------------------------------------------------

--
-- Table structure for table `instocks`
--

CREATE TABLE `instocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `instock` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instocks`
--

INSERT INTO `instocks` (`id`, `product_id`, `instock`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-01-29 15:33:58', '2023-01-29 15:33:58'),
(2, 2, 3, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(3, 3, 2, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(4, 4, 2, '2023-01-29 15:20:52', '2023-03-10 00:23:32'),
(5, 5, 3, '2023-01-29 15:20:52', '2023-03-10 00:24:02'),
(6, 6, 4, '2023-01-29 15:20:52', '2023-03-10 00:25:39'),
(7, 7, 3, '2023-01-29 15:20:52', '2023-03-10 00:25:48'),
(8, 8, 5, '2023-01-29 15:20:52', '2023-03-10 00:25:59'),
(9, 9, 3, '2023-01-29 15:20:52', '2023-03-10 00:26:18'),
(10, 10, 0, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(11, 11, 4, '2023-01-29 15:20:52', '2023-03-10 00:26:48'),
(12, 12, 0, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(13, 13, 3, '2023-01-29 15:20:52', '2023-03-10 00:27:01'),
(14, 14, 4, '2023-01-29 15:20:52', '2023-03-10 00:27:13'),
(15, 15, 0, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(16, 16, 0, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(17, 17, 0, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(18, 18, 5, '2023-01-29 15:20:52', '2023-03-10 00:28:52'),
(19, 19, 5, '2023-01-29 15:20:52', '2023-03-10 00:29:02'),
(20, 20, 5, '2023-01-29 15:20:52', '2023-03-10 00:29:13'),
(21, 21, 4, '2023-01-29 15:20:52', '2023-03-10 00:28:13'),
(22, 22, 2, '2023-01-29 15:20:52', '2023-03-10 00:25:19'),
(23, 23, 6, '2023-01-29 15:20:52', '2023-03-10 00:25:08'),
(24, 24, 5, '2023-01-29 15:20:52', '2023-03-10 00:24:57'),
(25, 25, 1, '2023-01-29 15:20:52', '2023-03-10 00:24:44'),
(26, 26, 0, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(27, 27, 0, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(28, 28, 0, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(29, 29, 0, '2023-01-29 15:20:52', '2023-01-29 15:20:52'),
(30, 30, 4, '2023-01-29 15:20:52', '2023-03-10 00:24:29'),
(31, 31, 2, '2023-01-29 15:20:52', '2023-03-10 00:24:17'),
(34, 45, 1, '2023-03-02 03:44:17', '2023-03-03 08:05:37'),
(35, 46, 5, '2023-03-04 22:08:33', '2023-03-04 22:08:33'),
(36, 47, 3, '2023-03-09 23:48:58', '2023-03-09 23:48:58'),
(37, 48, 4, '2023-03-09 23:56:40', '2023-03-09 23:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2023_01_10_091233_create_families_table', 1),
(6, '2023_01_10_091348_create_products_table', 1),
(7, '2023_01_10_091412_create_images_table', 1),
(8, '2023_01_10_091441_create_tags_table', 1),
(9, '2023_01_10_104915_create_product_tags_table', 1),
(10, '2023_01_29_111456_create_instocks_table', 1),
(11, '2023_01_30_063841_create_specifications_table', 2),
(12, '2023_02_06_125915_create_prices_table', 3),
(13, '2023_02_06_140152_create_carts_table', 4),
(14, '2023_02_09_102830_create_cartmains_table', 5),
(15, '2023_02_16_041249_create_userinfos_table', 6),
(16, '2023_02_17_100510_create_orders_table', 7),
(17, '2023_02_17_100639_create_orderstatuses_table', 7),
(18, '2023_02_17_105000_create_orderdetails_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `count` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `count`) VALUES
(53, 31, 1, 1),
(54, 31, 2, 1),
(55, 32, 1, 1),
(56, 32, 2, 1),
(57, 33, 2, 2),
(58, 34, 2, 2),
(59, 34, 1, 1),
(60, 35, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_code`, `total`, `status`, `created_at`, `updated_at`) VALUES
(31, 1, '1681263f22ac492eef', '163.50', 3, '2023-02-19 07:27:24', '2023-03-06 05:59:07'),
(32, 2, '8304464054782c367b', '163.50', 2, '2023-03-05 19:23:06', '2023-03-06 05:59:05'),
(33, 2, '773736405494f6adde', '89.00', 2, '2023-03-05 19:30:47', '2023-03-06 04:25:36'),
(34, 2, '3104164071cc4cd29e', '208.00', 3, '2023-03-07 04:45:16', '2023-03-10 00:31:36'),
(35, 2, '972546407582988f5a', '133.50', 1, '2023-03-07 08:58:41', '2023-03-07 08:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `orderstatuses`
--

CREATE TABLE `orderstatuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderstatuses`
--

INSERT INTO `orderstatuses` (`id`, `name`, `info`) VALUES
(1, 'pending', NULL),
(2, 'accepted', NULL),
(3, 'rejected', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(73, 'App\\Models\\User', 1, 'auth_token', '36f00601077197273dd559f97bdbc74743d3b157434116645dd0cd95fe896944', '[\"*\"]', '2023-02-21 08:50:09', '2023-02-21 11:32:16', '2023-02-21 07:32:16', '2023-02-21 08:50:09'),
(96, 'App\\Models\\User', 6, 'auth_token', '8220a2e6ba4698183f42b8c03694f68580ff220956b2efff429203e2cad9e625', '[\"*\"]', '2023-03-10 00:32:03', NULL, '2023-03-09 23:44:34', '2023-03-10 00:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `base` decimal(6,2) DEFAULT NULL,
  `discount` decimal(6,2) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `base`, `discount`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '119.00', NULL, 1, '2023-02-06 13:15:42', '2023-02-06 13:15:42'),
(2, '89.00', '44.50', 2, '2023-02-06 13:16:12', '2023-02-06 13:16:12'),
(3, '89.00', NULL, 3, '2023-02-06 13:16:31', '2023-02-06 13:16:31'),
(4, '109.00', NULL, 4, '2023-02-06 13:16:48', '2023-02-06 13:16:48'),
(5, '109.00', NULL, 5, '2023-02-06 13:17:03', '2023-02-06 13:17:03'),
(6, '79.00', NULL, 6, '2023-02-06 13:17:19', '2023-02-06 13:17:19'),
(7, '118.50', NULL, 7, '2023-02-06 13:17:40', '2023-02-06 13:17:40'),
(8, '69.00', NULL, 8, '2023-02-06 13:17:59', '2023-02-06 13:17:59'),
(9, '49.00', NULL, 9, '2023-02-06 13:18:21', '2023-02-06 13:18:21'),
(10, '49.00', NULL, 10, '2023-02-06 13:18:36', '2023-02-06 13:18:36'),
(11, '69.00', NULL, 11, '2023-02-06 13:18:55', '2023-02-06 13:18:55'),
(12, '69.00', NULL, 12, '2023-02-06 13:19:11', '2023-03-10 00:30:35'),
(13, '69.00', NULL, 13, '2023-02-06 13:19:35', '2023-02-06 13:19:35'),
(14, '25.00', NULL, 21, '2023-02-06 13:20:13', '2023-03-10 00:28:09'),
(15, NULL, NULL, 15, '2023-02-06 13:20:56', '2023-02-06 13:20:56'),
(16, NULL, NULL, 16, '2023-02-06 13:21:09', '2023-02-06 13:21:09'),
(17, NULL, NULL, 17, '2023-02-06 13:21:24', '2023-02-06 13:21:24'),
(18, '39.00', NULL, 18, '2023-02-06 13:21:49', '2023-02-06 13:21:49'),
(19, '39.00', NULL, 19, '2023-02-06 13:22:05', '2023-02-06 13:22:05'),
(20, '39.00', NULL, 20, '2023-02-06 13:22:23', '2023-02-06 13:22:23'),
(21, '25.00', NULL, 21, '2023-02-06 13:22:36', '2023-03-10 00:28:09'),
(22, '89.00', NULL, 22, '2023-02-06 13:23:04', '2023-02-06 13:23:04'),
(23, '89.00', NULL, 23, '2023-02-06 13:23:22', '2023-02-06 13:23:22'),
(24, '89.00', NULL, 24, '2023-02-06 13:23:34', '2023-02-06 13:23:34'),
(25, '69.00', NULL, 25, '2023-02-06 13:23:53', '2023-02-06 13:23:53'),
(26, NULL, NULL, 26, '2023-02-06 13:24:31', '2023-03-03 08:53:22'),
(27, NULL, NULL, 27, '2023-02-06 13:24:44', '2023-02-06 13:24:44'),
(28, NULL, NULL, 28, '2023-02-06 13:24:57', '2023-02-06 13:24:57'),
(29, '69.00', NULL, 29, '2023-02-06 13:25:37', '2023-02-06 13:25:37'),
(30, '119.00', NULL, 30, '2023-02-06 13:25:49', '2023-02-06 13:25:49'),
(31, '119.00', NULL, 31, '2023-02-06 13:26:00', '2023-02-06 13:26:00'),
(32, '69.00', NULL, 14, '2023-02-07 15:45:44', '2023-02-07 15:45:44'),
(35, '89.00', NULL, 45, '2023-03-02 03:44:17', '2023-03-03 08:44:47'),
(37, '139.00', '69.50', 46, '2023-03-04 22:08:33', '2023-03-04 22:08:33'),
(38, '139.00', NULL, 47, '2023-03-09 23:48:58', '2023-03-09 23:48:58'),
(39, '69.00', NULL, 48, '2023-03-09 23:56:40', '2023-03-09 23:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type`, `description`, `family_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ray Legacy Mesh Black', 'ray-legacy-mesh-black', 'watches', 'Meet the Ray Legacy – an updated version of the classical dive watch brought into the future. With its sub movement indicating seconds and countdown \\/ stopwatch function, the Ray blends functionality with style.', 1, '2023-01-29 13:34:33', '2023-01-29 13:34:33', NULL),
(2, 'Winston Royale Silver Black', 'winston-royale-silver-black', 'watches', 'The Winston Royale’s luxury mesh wristband and bold numbering are the minimalist fashion statement you didn’t know you were missing.', 2, '2023-01-29 13:38:09', '2023-03-01 10:13:08', NULL),
(3, 'Winston Royale Silver Blue', 'winston-royale-silver-blue', 'watches', 'The Winston Royale’s luxury mesh wristband and bold numbering are the minimalist fashion statement you didn’t know you were missing.', 2, '2023-01-29 13:42:14', '2023-01-29 13:42:14', NULL),
(4, 'Winston Double Subs Black', 'winston-double-subs-black', 'watches', 'KOMONO knows that your time is precious. That’s why we designed the Winston Subs. Featuring two minimalist sub dials this watch is an instant classic with a luxury feel – at a minimalist price.', 3, '2023-01-29 13:43:22', '2023-01-29 13:43:22', NULL),
(5, 'Winston Double Subs Blue', 'winston-double-subs-blue', 'watches', 'KOMONO knows that your time is precious. That’s why we designed the Winston Subs. Featuring two minimalist sub dials this watch is an instant classic with a luxury feel – at a minimalist price.', 3, '2023-01-29 13:44:29', '2023-01-29 13:44:29', NULL),
(6, 'Kate Royale Silver', 'kate-royale-silver', 'watches', 'A feminine counterpart to the Konrad or an updated Moneypenny? The Kate is your ultimate versatile watch for everyday wear. An exercise in elegant architectural forms, the Kate is available in a selection of materials and color combinations.', 4, '2023-01-29 13:45:14', '2023-01-29 13:45:14', NULL),
(7, 'Ray Legacy Mesh Silver', 'ray-legacy-mesh-silver', 'watches', 'Meet the Ray Legacy – an updated version of the classical dive watch brought into the future. With its sub movement indicating seconds and countdown \\/ stopwatch function, the Ray blends functionality with style.', 1, '2023-01-29 13:46:08', '2023-01-29 13:46:08', NULL),
(8, 'Mono Tag All Black', 'mono-tag-all-black', 'watches', 'Distinct, diverse, unique. The Mono is all about expressing yourself. Choose from an array of spectacular colorways, from crisp White and bright Neon Orange to a warm Ochre and deep Jungle green. Consisting of a matching translucent silicone strap, PC case and colored acrylic glass, the collection is the ultimate declaration in monochrome.', 5, '2023-01-29 13:47:00', '2023-01-29 13:47:00', NULL),
(9, 'Moneypenny Black Rose', 'moneypenny-black-rose', 'watches', 'The Moneypenny: small, minimalist, elegant. Finally, a lady’s watch as delicate as designer jewelry – without the designer price.', 6, '2023-01-29 13:48:45', '2023-01-29 13:48:45', NULL),
(10, 'Moneypenny Gold Tan', 'moneypenny-gold-tan', 'watches', 'The Moneypenny: small, minimalist, elegant. Finally, a lady’s watch as delicate as designer jewelry – without the designer price.', 6, '2023-01-29 13:49:45', '2023-01-29 13:49:45', NULL),
(11, 'Francis Musk', 'francis-musk', 'sunglasses', 'Classic sunglasses with a contemporary browline? Try the Francis. Flattering for women and strong on men, the Francis delivers designer fashion in signature KOMONO style.', 7, '2023-01-29 13:50:39', '2023-01-29 13:50:39', NULL),
(12, 'Francis Pearl', 'francis-pearl', 'sunglasses', 'Classic sunglasses with a contemporary browline? Try the Francis. Flattering for women and strong on men, the Francis delivers designer fashion in signature KOMONO style.', 7, '2023-01-29 13:51:29', '2023-01-29 13:51:29', NULL),
(13, 'Poly Lake', 'poly-lake', 'sunglasses', 'Unconventional and different, Poly is the perfect match if you\'re looking for something special. A stand-out piece that will definitely will turn heads.', 8, '2023-01-29 13:52:22', '2023-01-29 13:52:22', NULL),
(14, 'Jeff Black', 'jeff-black', 'sunglasses', 'Ok, you can really rely on the Jeff if you\'re looking for a sturdy yet comfortable frame that stands out. The first thing you notice are its square lenses combined with a strong and somewhat thicker recycled acetate frame. The elegance is in the details, as illustrated in the lines of the temples.', 9, '2023-01-29 13:53:15', '2023-01-29 13:53:15', NULL),
(15, 'Cole Ash', 'cole-ash', 'opticals', 'Strong lines, elegant and fine. The Cole makes sure to bring out your best features with its fine acetate frame.', 10, '2023-01-29 13:54:56', '2023-01-29 13:54:56', NULL),
(16, 'Cole Black', 'cole-black', 'opticals', 'Strong lines, elegant and fine. The Cole makes sure to bring out your best features with its fine acetate frame.', 10, '2023-01-29 13:55:41', '2023-01-29 13:55:41', NULL),
(17, 'Cole Havana', 'cole-havana', 'opticals', 'Strong lines, elegant and fine. The Cole makes sure to bring out your best features with its fine acetate frame.', 10, '2023-01-29 13:56:31', '2023-01-29 13:56:31', NULL),
(18, 'Strap 20-Black Black', 'strap-20-black-black', 'straps', 'KOMONO’s easy-change straps are simple way to update your watch to match your look. Our straps feature genuine Italian leather wristbands and stainless-steel buckles for a classic quick-change.\\r\\n\\r\\nThe 20 strap fits the Winston, Lewis, Walther and Konrad.', 11, '2023-01-29 13:57:39', '2023-01-29 13:57:39', NULL),
(19, 'Strap 20-Black Silver', 'strap-20-black-silver', 'straps', 'KOMONO’s easy-change straps are simple way to update your watch to match your look. Our straps feature genuine Italian leather wristbands and stainless-steel buckles for a classic quick-change.\\r\\n\\r\\nThe 20 strap fits the Winston, Lewis, Walther and Konrad.', 11, '2023-01-29 13:58:29', '2023-01-29 13:58:29', NULL),
(20, 'Strap 20-Estate Silver', 'strap-20-estate-silver', 'straps', 'KOMONO’s easy-change straps are simple way to update your watch to match your look. Our straps feature genuine Italian leather wristbands and stainless-steel buckles for a classic quick-change.\\r\\n\\r\\nThe 20 strap fits the Winston, Lewis, Walther and Konrad', 11, '2023-01-29 13:59:24', '2023-01-29 13:59:24', NULL),
(21, 'Strap 20-Nato-Blue Silver', 'strap-20-nato-blue-silver', 'straps', 'KOMONO’s easy-change straps are simple way to update your watch to match your look. Our Nato straps feature a nylon wristband and stainless-steel buckle for a classic quick-change.\\r\\n\\r\\nThe beauty about this strap is that you can change up other styles. This wristband fits the Winston, Lewis, Walther and Konrad.', 11, '2023-01-29 14:00:13', '2023-01-29 14:00:13', NULL),
(22, 'Lewis Black', 'lewis-black', 'watches', 'Experience minimalist watch design in its ultimate form. The Lewis features a slim profile that brings luxury style and classic aesthetic together – at a minimalist price.', 12, '2023-01-29 14:00:58', '2023-01-29 14:00:58', NULL),
(23, 'Lewis Blue', 'lewis-blue', 'watches', 'Experience minimalist watch design in its ultimate form. The Lewis features a slim profile that brings luxury style and classic aesthetic together – at a minimalist price.', 12, '2023-01-29 14:01:43', '2023-01-29 14:01:43', NULL),
(24, 'Lewis Cigar', 'lewis-cigar', 'watches', 'Experience minimalist watch design in its ultimate form. The Lewis features a slim profile that brings luxury style and classic aesthetic together – at a minimalist price.', 12, '2023-01-29 14:02:22', '2023-01-29 14:02:22', NULL),
(25, 'Poly Lilac', 'poly-lilac', 'sunglasses', 'Unconventional and different, Poly is the perfect match if you\'re looking for something special. A stand-out piece that will.', 8, '2023-01-29 14:03:08', '2023-01-29 14:03:08', NULL),
(26, 'Alix Gun Matte', 'alix-gun-matte', 'opticals', NULL, 13, '2023-01-29 14:03:50', '2023-03-03 08:53:22', NULL),
(27, 'Mika White Gold Glossy', 'mika-white-gold-glossy', 'opticals', NULL, 14, '2023-01-29 14:04:30', '2023-01-29 14:04:30', NULL),
(28, 'Mika Rose Gold Glossy', 'mika-rose-gold-glossy', 'opticals', NULL, 14, '2023-01-29 14:05:07', '2023-01-29 14:05:07', NULL),
(29, 'Francis Daffodil', 'francis-daffodil', 'sunglasses', 'The unusual depths of slate, coal and jet inspired the brutal aesthetics of the Carbon collection. Architectural and immediate for an industrial edge, the collection celebrates the richest of blacks, light-absorbing with a velvety matte texture.', 7, '2023-01-29 14:05:56', '2023-01-29 14:05:56', NULL),
(30, 'Kate Revolt Black', 'kate-revolt-black', 'watches', 'A feminine counterpart to the Konrad or an updated Moneypenny? The Kate is your ultimate versatile watch for everyday wear. An exercise in elegant architectural forms, the Kate is available in a selection of materials and color combinations.', 15, '2023-01-29 14:06:48', '2023-01-29 14:06:48', NULL),
(31, 'Kate Revolt Rose Gold', 'kate-revolt-rose-gold', 'watches', 'A feminine counterpart to the Konrad or an updated Moneypenny? The Kate is your ultimate versatile watch for everyday wear. An exercise in elegant architectural forms, the Kate is available in a selection of materials and color combinations.', 15, '2023-01-29 14:07:35', '2023-01-29 14:07:35', NULL),
(45, 'Lewis Metropolis', 'lewis-metropolis', 'watches', 'Experience minimalist watch design in its ultimate form. The Lewis features a slim profile that brings luxury style and classic aesthetic together – at a minimalist price.', 12, '2023-03-02 03:44:17', '2023-03-04 07:47:21', NULL),
(46, 'Ethan Ash', 'ethan-ash', 'sunglasses', 'Ethan\'s clean lines and designer details are a contemporary twist on a classic frame.', 20, '2023-03-04 22:08:33', '2023-03-04 22:08:33', NULL),
(47, 'Turner Shadow', 'turner-shadow', 'sunglasses', 'If you\'re looking for a slightly bigger frame, your search is over. The Turner is a comfortable and versatile style that compliments any face shape.', 21, '2023-03-09 23:48:58', '2023-03-09 23:48:58', NULL),
(48, 'Alpha Havana', 'alpha-havana', 'sunglasses', 'A powerful name for a powerful frame. The Alpha is one of the new styles in our sustainable collection. Made from Bioplastic, the Alpha\'s uniqueness is in it\'s extraordinary shape.', 22, '2023-03-09 23:56:40', '2023-03-09 23:56:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`) VALUES
(2, 18, 1),
(3, 19, 1),
(4, 20, 1),
(5, 21, 1),
(17, 46, 2),
(18, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `index` smallint(6) UNSIGNED DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specifications`
--

INSERT INTO `specifications` (`id`, `product_id`, `index`, `text`) VALUES
(1, 1, 0, 'Japanese Quartz Movement'),
(2, 1, 1, 'High Mineral Glass'),
(3, 1, 2, 'Material: Alloy case & Stainless Steel back'),
(4, 1, 3, 'Material strap: Stainless Steel'),
(5, 1, 4, 'Strap size: 20mm'),
(6, 1, 5, 'Water Resistant 5 ATM'),
(7, 1, 6, 'Easy switchable strap'),
(8, 1, 7, 'Ø 38mm & 8,5mm'),
(9, 2, 0, 'Japanese Quartz Movement'),
(10, 2, 1, 'Stainless Steel Back'),
(11, 2, 2, 'Black Brushed Metal Case'),
(12, 2, 3, 'Case Diameter 41mm'),
(13, 2, 4, 'Metal Mesh Wristband'),
(14, 3, 0, 'Japanese Quartz Movement'),
(15, 3, 1, 'Stainless Steel Back'),
(16, 3, 2, 'Silver Brushed Metal Case'),
(17, 3, 3, 'Diameter 41mm'),
(18, 3, 4, 'Metal Mesh Wristband'),
(19, 7, 0, 'Japanese Quartz Movement'),
(20, 7, 1, 'High Mineral Glass'),
(21, 7, 2, 'Material: Alloy case & Stainless Steel back'),
(22, 7, 3, 'Material strap: Stainless Steel'),
(23, 7, 4, 'Strap size: 20mm'),
(24, 7, 5, 'Water Resistant 5 ATM'),
(25, 7, 6, 'Easy switchable strap'),
(26, 7, 7, 'Ø 38mm & 8,5mm'),
(27, 8, 0, 'Japanese Quartz Movement'),
(28, 8, 1, 'Acrylic Glass'),
(29, 8, 2, 'Material: PC case & Stainless Steel back'),
(30, 8, 3, 'Material strap: Silicone'),
(31, 8, 4, 'Water Resistant 5 ATM'),
(32, 8, 5, 'Easy switchable strap'),
(33, 8, 6, 'Ø 38,8mm & 9,4mm'),
(34, 12, 0, 'UV 400 Protection'),
(35, 12, 1, 'High Quality Optical Hinges'),
(36, 12, 2, 'Polycarbonate Lens Purple Mirror'),
(37, 12, 3, 'Moldable temples'),
(38, 12, 4, 'Free Cleaning Cloth and Soft Pouch Included'),
(39, 14, 0, 'Size frame: 140mm X 48 mm'),
(40, 14, 1, 'Recycled Acetate Frame'),
(41, 14, 2, 'Lens color: Solid Smoke'),
(42, 14, 3, '100% UV400 Protection'),
(43, 14, 4, 'Cat 3 TAC Polarized lenses'),
(44, 14, 5, 'Cleaning cloth and pouch Included'),
(45, 15, 0, 'Size frame: 141mm x 48,5mm'),
(46, 15, 1, 'Temple length: 145mm'),
(47, 15, 2, 'Eco Acetate Frame'),
(48, 15, 3, 'Core wire'),
(49, 15, 4, 'Nosepads integrated in frame'),
(50, 15, 5, 'Case and Microfibre Cleaning Pouch'),
(51, 16, 0, 'Size frame: 140,6mm x 45,8mm'),
(52, 16, 1, 'Temple length: 140mm'),
(53, 16, 2, 'Stainless Steel Frame'),
(54, 16, 3, 'Adjustable D-Shape titanium screw-in nosepads'),
(55, 16, 4, 'Case and Microfibre Cleaning Pouch'),
(56, 17, 0, 'Size frame: 140,6mm x 45,8mm'),
(57, 17, 1, 'Temple length: 140mm'),
(58, 17, 2, 'Stainless Steel Frame'),
(59, 17, 3, 'Core wire'),
(60, 17, 4, 'Adjustable D-Shape titanium screw-in nosepads'),
(61, 17, 5, 'Case and Microfibre Cleaning Pouch'),
(62, 18, 0, 'Genuine leather strap'),
(63, 18, 1, 'Stainless steel buckle'),
(64, 18, 2, 'Strap width: 20mm'),
(65, 18, 3, 'Quick release spring bar'),
(66, 18, 4, 'Logo embossed on loop'),
(67, 18, 5, '6 months warranty'),
(68, 19, 0, 'Genuine leather strap'),
(69, 19, 1, 'Stainless steel buckle'),
(70, 19, 2, 'Strap width: 20mm'),
(71, 19, 3, 'Quick release spring bar'),
(72, 19, 4, 'Logo embossed on loop'),
(73, 19, 5, '6 months warranty'),
(74, 20, 0, 'Stainless steel strap'),
(75, 20, 1, 'Strap width: 20mm'),
(76, 20, 2, 'Quick release spring bar'),
(77, 20, 3, 'Logo debossed on loop'),
(78, 20, 4, '6 months warranty'),
(79, 21, 0, 'Nylon Nato strap'),
(80, 21, 1, 'Stainless steel buckle and loop'),
(81, 21, 2, 'Strap width: 20mm'),
(82, 21, 3, 'Easy to use as 1 complete strap'),
(83, 21, 4, 'Logo embossed on strap'),
(84, 21, 5, '6 months warranty'),
(85, 25, 0, 'Size frame: 149mm X 55mm'),
(86, 25, 1, 'Bio Nylon Frame'),
(87, 25, 2, 'Lens Color: Purple Pink Gradient'),
(88, 25, 3, '100% UV400 Protection'),
(89, 25, 4, 'Cat 2. Scratch-resistant PC Lenses'),
(90, 25, 5, 'Cleaning cloth and pouch Included'),
(91, 26, 0, 'Size frame: 138,9mm x 49,5mm'),
(92, 26, 1, 'Temple length: 140mm'),
(93, 26, 2, 'Stainless Steel Frame'),
(94, 26, 3, 'Adjustable D-Shape titanium Screw-in Nosepads'),
(95, 26, 4, 'Case and Microfibre Cleaning Pouch'),
(96, 29, 0, 'Size frame: 139mm X 47mm'),
(97, 29, 1, 'Cellulose propionate frame'),
(98, 29, 2, 'Lens Color: Solid Dark Blue'),
(99, 29, 3, 'UV400 Protection'),
(100, 29, 4, 'Cat 3. Scratch-resistant pc Lenses'),
(101, 29, 5, 'Cleaning cloth and pouch Included'),
(117, 45, 0, 'Japanese Quartz Movement'),
(118, 45, 1, 'High Mineral Glass'),
(119, 45, 2, 'Material: Stainless Steel case & back'),
(120, 45, 3, 'Material strap: Genuine Leather'),
(121, 45, 4, 'Strap size: 20mm'),
(122, 45, 5, 'Water Resistant 5 ATM'),
(123, 45, 6, 'Easy switchable strap'),
(124, 45, 7, 'Ø 40mm & 6,3mm'),
(125, 48, 0, 'Size frame: 141,8mm X 46,4mm'),
(126, 48, 1, 'Bio Nylon Frame'),
(127, 48, 2, 'Lens Color: Solid Green'),
(128, 48, 3, '100% UV400 Protection'),
(129, 48, 4, 'Cat 3. Scratch-resistant PC Lenses'),
(130, 48, 5, 'Cleaning cloth and pouch Included');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `info`) VALUES
(1, 'fits Winston/Lewis/Ray', NULL),
(2, '-50%', 'discount');

-- --------------------------------------------------------

--
-- Table structure for table `userinfos`
--

CREATE TABLE `userinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userinfos`
--

INSERT INTO `userinfos` (`id`, `user_id`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'yangon', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ymo57388@gmail.com', NULL, '$2y$10$doxyIXXgvCXHnQb8Ge0k2umf5JcBKTg/7tr13GwDV53rhzQ7ziCeu', 0, NULL, '2023-02-01 08:41:09', '2023-02-01 08:41:09'),
(2, NULL, 'user@gmail.com', NULL, '$2y$10$xA.6NO7wSwTFKrw078o34.raxiZDF/tueR2Zqi23HKAdnskuTldHm', 0, NULL, '2023-02-03 21:01:29', '2023-02-03 21:01:29'),
(6, NULL, 'admin@gmail.com', NULL, '$2y$10$iANDsAEEwNqRbNA42JUktOX3LnTP3kSRFht8eAYCpdxSayirp3Kee', 1, NULL, '2023-02-20 09:33:36', '2023-02-20 09:33:36'),
(8, NULL, 'user2@gmail.com', NULL, '$2y$10$hBNZ42uQncXnkWgKWB9Jl.Q/LX4DMMt2hZOkcBayq6wvQ/lvAoAru', 0, NULL, '2023-03-08 02:23:08', '2023-03-08 02:23:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `instocks`
--
ALTER TABLE `instocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instocks_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetails_order_id_foreign` (`order_id`),
  ADD KEY `orderdetails_product_id_foreign` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_status_foreign` (`status`);

--
-- Indexes for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prices_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_family_id_foreign` (`family_id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tags_tag_id_foreign` (`tag_id`),
  ADD KEY `product_tags_product_id_foreign` (`product_id`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specifications_product_id_foreign` (`product_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfos`
--
ALTER TABLE `userinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userinfos_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `instocks`
--
ALTER TABLE `instocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orderstatuses`
--
ALTER TABLE `orderstatuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userinfos`
--
ALTER TABLE `userinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `instocks`
--
ALTER TABLE `instocks`
  ADD CONSTRAINT `instocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderdetails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_status_foreign` FOREIGN KEY (`status`) REFERENCES `orderstatuses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_family_id_foreign` FOREIGN KEY (`family_id`) REFERENCES `families` (`id`);

--
-- Constraints for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Constraints for table `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `userinfos`
--
ALTER TABLE `userinfos`
  ADD CONSTRAINT `userinfos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
