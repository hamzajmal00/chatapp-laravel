-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 09:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-06-19 07:13:17', NULL),
(2, 2, 1, '2022-06-19 07:13:17', NULL),
(4, 3, 2, '2022-06-20 06:36:16', '2022-06-20 06:36:16'),
(5, 4, 1, '2022-06-20 06:46:37', '2022-06-20 06:46:37'),
(6, 2, 4, '2022-06-20 07:07:48', '2022-06-20 07:07:48'),
(7, 4, 2, '2022-06-20 07:08:18', '2022-06-20 07:08:18'),
(9, 5, 4, '2022-06-20 08:02:06', '2022-06-20 08:02:06'),
(10, 6, 5, '2022-06-20 08:55:50', '2022-06-20 08:55:50'),
(11, 6, 2, '2022-06-20 09:51:14', '2022-06-20 09:51:14'),
(12, 5, 6, '2022-06-20 09:51:37', '2022-06-20 09:51:37'),
(13, 7, 2, '2022-06-21 01:56:40', '2022-06-21 01:56:40');

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(18, 1, 2, 'hi hamza', '2022-06-19 05:59:46', '2022-06-19 05:59:46'),
(28, 1, 1, 'hamza ajamal', '2022-06-19 06:09:52', '2022-06-19 06:09:52'),
(107, 7, 4, 'hi ali', '2022-06-20 07:08:34', '2022-06-20 07:08:34'),
(124, 2, 4, 'hi ali', '2022-06-20 07:08:34', '2022-06-20 07:08:34'),
(125, 4, 1, 'hamza ajamal', '2022-06-19 06:09:52', '2022-06-19 06:09:52'),
(126, 5, 4, 'hi ali', '2022-06-20 07:08:34', '2022-06-20 07:08:34'),
(127, 6, 4, 'hi ali', '2022-06-20 07:08:34', '2022-06-20 07:08:34'),
(129, 9, 5, 'h', '2022-06-20 08:03:12', '2022-06-20 08:03:12'),
(130, 9, 5, 'fhdfh', '2022-06-20 08:12:12', '2022-06-20 08:12:12'),
(131, 9, 5, 'hamza', '2022-06-20 08:18:42', '2022-06-20 08:18:42'),
(132, 9, 5, 'hi', '2022-06-20 08:19:35', '2022-06-20 08:19:35'),
(133, 9, 5, 'ddhamza', '2022-06-20 08:33:38', '2022-06-20 08:33:38'),
(134, 9, 5, 'fff', '2022-06-20 08:35:01', '2022-06-20 08:35:01'),
(135, 9, 5, 'dd', '2022-06-20 08:35:37', '2022-06-20 08:35:37'),
(136, 9, 4, 'hamza', '2022-06-20 08:40:36', '2022-06-20 08:40:36'),
(137, 9, 5, 'ali', '2022-06-20 08:45:41', '2022-06-20 08:45:41'),
(138, 9, 4, 'dfdffd', '2022-06-20 08:47:24', '2022-06-20 08:47:24'),
(139, 9, 5, 'hamza', '2022-06-20 08:49:33', '2022-06-20 08:49:33'),
(140, 9, 4, 'ok', '2022-06-20 08:49:43', '2022-06-20 08:49:43'),
(141, 9, 4, 'gfgf', '2022-06-20 08:49:57', '2022-06-20 08:49:57'),
(142, 9, 5, 'jj', '2022-06-20 08:50:06', '2022-06-20 08:50:06'),
(151, 10, 6, 'dfhd', '2022-06-20 09:50:23', '2022-06-20 09:50:23'),
(152, 10, 5, 'fgfgfg', '2022-06-20 09:50:42', '2022-06-20 09:50:42'),
(153, 10, 6, 'dfdfdf', '2022-06-20 09:50:50', '2022-06-20 09:50:50'),
(154, 12, 5, 'hamza', '2022-06-20 09:51:48', '2022-06-20 09:51:48'),
(159, 11, 5, 'hazma', '2022-06-20 09:59:54', '2022-06-20 09:59:54'),
(160, 11, 5, 'gfgfg', '2022-06-20 10:01:33', '2022-06-20 10:01:33'),
(161, 6, 2, 'hi rose', '2022-06-21 01:13:12', '2022-06-21 01:13:12'),
(162, 6, 4, 'how are you', '2022-06-21 01:14:56', '2022-06-21 01:14:56'),
(163, 6, 2, 'h', '2022-06-21 01:45:19', '2022-06-21 01:45:19'),
(164, 6, 2, 'j', '2022-06-21 01:49:44', '2022-06-21 01:49:44'),
(165, 6, 2, 'ff', '2022-06-21 01:50:14', '2022-06-21 01:50:14'),
(166, 6, 2, 'ff', '2022-06-21 01:52:03', '2022-06-21 01:52:03'),
(167, 6, 2, 'hamza', '2022-06-21 01:52:10', '2022-06-21 01:52:10'),
(168, 6, 4, 'h', '2022-06-21 01:52:26', '2022-06-21 01:52:26'),
(169, 6, 2, 'helo', '2022-06-21 01:52:33', '2022-06-21 01:52:33'),
(170, 6, 2, 'hi rose', '2022-06-21 01:53:12', '2022-06-21 01:53:12'),
(171, 6, 4, 'yess bor', '2022-06-21 01:53:19', '2022-06-21 01:53:19'),
(172, 6, 2, 'hi dear', '2022-06-21 01:54:44', '2022-06-21 01:54:44'),
(173, 6, 4, 'how you fix it', '2022-06-21 01:54:56', '2022-06-21 01:54:56'),
(174, 6, 2, 'by seeng a video', '2022-06-21 01:55:09', '2022-06-21 01:55:09'),
(175, 13, 7, 'hi', '2022-06-21 01:56:51', '2022-06-21 01:56:51'),
(176, 13, 2, 'yes', '2022-06-21 01:57:11', '2022-06-21 01:57:11'),
(177, 13, 2, 'fdf', '2022-06-21 02:04:40', '2022-06-21 02:04:40'),
(178, 13, 2, 'h', '2022-06-21 02:04:52', '2022-06-21 02:04:52'),
(179, 13, 2, 'ho', '2022-06-21 02:14:50', '2022-06-21 02:14:50'),
(180, 13, 2, 'fff', '2022-06-21 02:15:13', '2022-06-21 02:15:13'),
(181, 13, 2, 'h', '2022-06-21 02:15:28', '2022-06-21 02:15:28'),
(182, 13, 7, 'h', '2022-06-21 02:16:53', '2022-06-21 02:16:53'),
(183, 13, 7, 'fdfdf', '2022-06-21 02:17:04', '2022-06-21 02:17:04'),
(184, 13, 7, 'jkk', '2022-06-21 02:20:51', '2022-06-21 02:20:51'),
(185, 13, 7, 'fdf', '2022-06-21 02:22:49', '2022-06-21 02:22:49'),
(186, 13, 7, 'hamza', '2022-06-21 02:35:02', '2022-06-21 02:35:02');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2022_06_18_172516_create_sessions_table', 1),
(10, '2022_06_18_193053_create_conversations_table', 2),
(11, '2022_06_18_193121_create_messages_table', 2);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fQmFmip0LcpGQWW4pVweLfE4dGSp6YBjI0q6OPBM', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOXFBMkN2b3Fjb2hYSldiaXdhMzlhS1ZVcWMwMGtVdzlyd21FbWVNayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGF0L3ZpZXcvMTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3O30=', 1655796925),
('g17mDhYdIu12NH9HZ2Bgu07IikMJiJyRkHD3ylcs', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU1dJU2p0amhicXVveHJLZll0c0xBd1N0ZTRvR0FiaTNIZUlFdk82NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jaGF0L3ZpZXcvMTMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1655797334),
('sR6aQyZH4rzJGyWb5AHtYgYym6ozzkGy0HK4B1Vq', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRUJlblpEZzhRVmVzZnJmc044WFBCMW1DeEg5MnN6WWpkazhwdVg2USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHA6Ly9sb2NhbGhvc3QvcHJvamVjdC9jaGF0LWFwcC1sYXJhdmVsL2JhY2stY2hhdC9jaGF0LWFwcC9wdWJsaWMvZGV0YWlsLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1655792056),
('Su0Tyy69nQVNrjR9TIfePt3poR2rQCzJKH4OGfU4', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVHBISHJKejVIYTFGQ0x3cUViQ0FSYWdoWkxmUXBjb1F6SkNmc0w1dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzk6Imh0dHA6Ly9sb2NhbGhvc3QvcHJvamVjdC9jaGF0LWFwcC1sYXJhdmVsL2JhY2stY2hhdC9jaGF0LWFwcC9wdWJsaWMvY2hhdC92aWV3LzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1655791898),
('USx35acomUwWcMYc3cbZXGTq0w8pDGTYpcSM6GvD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicU02WmU4TERkb0tDN1pZcHJPdzE3SWR5Zmw1T2lJd2U3R2daamVTNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1655790771),
('vJYl5BxpzhjxXotEOdfGTBRT4ovXb6iDUuAyaKuf', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTBaZmhCNjhQdVRPejNzQTRYNGR5S3JwcU8wTmtMSGx3ZTJSUlNFNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHA6Ly9sb2NhbGhvc3QvcHJvamVjdC9jaGF0LWFwcC1sYXJhdmVsL2JhY2stY2hhdC9jaGF0LWFwcC9wdWJsaWMvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1655791633);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `user_id`, `name`, `personal_team`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hamza\'s Team', 1, '2022-06-18 14:28:32', '2022-06-18 14:28:32'),
(2, 2, 'ali\'s Team', 1, '2022-06-18 14:29:18', '2022-06-18 14:29:18'),
(3, 3, 'hp\'s Team', 1, '2022-06-20 06:30:38', '2022-06-20 06:30:38'),
(4, 4, 'rose\'s Team', 1, '2022-06-20 06:46:11', '2022-06-20 06:46:11'),
(5, 5, 'cup\'s Team', 1, '2022-06-20 08:02:00', '2022-06-20 08:02:00'),
(6, 6, 'test01\'s Team', 1, '2022-06-20 08:55:44', '2022-06-20 08:55:44'),
(7, 7, 'test02\'s Team', 1, '2022-06-21 01:56:31', '2022-06-21 01:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Hamza Ajmal', 'admin@admin.com', NULL, '$2y$10$KPNRWzIK4djG7Oz0iwjVS.CNYJmrNuFxh83zOBYWmmccpmZC2Paam', NULL, NULL, NULL, NULL, 1, NULL, '2022-06-18 14:28:32', '2022-06-18 14:28:34'),
(2, 'ali', 'ali@ali.com', NULL, '$2y$10$KNWyYpbzBsRshNU49c45neUa3iIs/wIkxf2uiCgssqzTG/UknHTbm', NULL, NULL, NULL, NULL, 2, NULL, '2022-06-18 14:29:18', '2022-06-18 14:29:18'),
(3, 'hp', 'test@test.com', NULL, '$2y$10$f9VtiHD/t7LCof8haQWrcOW5TEPpM/Z.kveK7bmydF5plQL96ujX.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 06:30:38', '2022-06-20 06:30:38'),
(4, 'rose', 'rose@rose.com', NULL, '$2y$10$.C0TsEpvNp43hzXlYe6Dq.jBJIAl.MuqOFqdtlmM6kcyXFIiegt8C', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 06:46:11', '2022-06-20 06:46:11'),
(5, 'cup', 'cup@cup.com', NULL, '$2y$10$FEzt2gWPAZJbHO7sqW5aDeMEFskkdiRy3sl3COsC4qR3OLaryybIS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 08:02:00', '2022-06-20 08:02:00'),
(6, 'test01', 'test01@test.com', NULL, '$2y$10$f1osccvqyYTGh4TrQxkXgeGLQpj2hT8i/yfnFcHBRGbfPZeHphiom', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 08:55:44', '2022-06-20 08:55:44'),
(7, 'test02', 'test02@test.com', NULL, '$2y$10$wphpCoZxe9WyAscSVipIFO2nkoLY/pXEn3nbeqqGaWCIXM5ADWfm6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 01:56:31', '2022-06-21 01:56:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_sender_id_foreign` (`sender_id`),
  ADD KEY `conversations_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_conversation_id_foreign` (`conversation_id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

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
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`),
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
