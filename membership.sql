-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 09:22 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `membership`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `scan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `email`, `name`, `status`, `scan_id`, `created_at`, `updated_at`) VALUES
(1, 'bins.hadley@example.org', 'Mattie Zemlak', 0, 'zlmgcl', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(2, 'renee.kihn@example.net', 'Araceli Rutherford', 0, 'lezfcr', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(3, 'omer20@example.net', 'Noe O\'Keefe', 0, 'nmmczn', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(4, 'edwardo.hamill@example.com', 'Mackenzie Mayert', 1, 'bhsfds', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(5, 'zoreilly@example.com', 'Prof. Josefina Konopelski', 0, 'dufjmf', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(6, 'xgerlach@example.com', 'Claudie Towne', 1, 'ucxoag', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(7, 'orpha71@example.net', 'Mr. Tony Fahey PhD', 0, 'lrxxoz', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(8, 'danny.dubuque@example.com', 'Liam Nienow', 0, 'glchhu', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(9, 'lesch.emanuel@example.com', 'Mollie Hodkiewicz', 1, 'gmyvzn', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(10, 'gregorio18@example.net', 'Robbie Bartoletti', 1, 'dxeikz', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(11, 'arch80@example.net', 'Prof. Alvera Sanford', 0, 'lzfurd', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(12, 'camylle.blick@example.org', 'Devan Champlin', 0, 'zdkeeb', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(13, 'rlebsack@example.com', 'Mrs. Maeve Bauch', 1, 'atrsoj', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(14, 'douglas.jacey@example.org', 'Delpha Reilly', 1, 'gigxko', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(15, 'vada74@example.com', 'Creola Wolff', 0, 'qulvha', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(16, 'funk.marcia@example.net', 'Micaela Lesch', 1, 'oeqcbw', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(17, 'ynikolaus@example.net', 'Mr. Aaron Abshire DDS', 0, 'smsjam', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(18, 'pheaney@example.com', 'Prof. Danial Cassin MD', 1, 'dmsoxd', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(19, 'izaiah.gleason@example.com', 'Mr. Troy Swaniawski', 1, 'ezevcz', '2021-04-29 12:51:51', '2021-04-29 12:51:51'),
(20, 'weimann.brant@example.net', 'Mya Leannon', 0, 'tlwibo', '2021-04-29 12:51:51', '2021-04-29 12:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2021_04_29_085858_create_sessions_table', 1),
(20, '2021_04_29_110059_memberships', 2),
(23, '2021_04_29_130240_create_memberships_table', 3),
(24, '2021_04_29_203445_create_scan_logs_table', 4),
(25, '2021_04_29_203410_scan_logs', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scan_logs`
--

CREATE TABLE `scan_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `memberships_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scan_logs`
--

INSERT INTO `scan_logs` (`id`, `memberships_id`, `scan_id`, `created_at`, `updated_at`) VALUES
(1, '6', 'UCXOAG', '2021-04-29 21:07:36', '2021-04-29 21:07:36'),
(2, '6', 'UCXOAG', '2021-04-29 21:15:39', '2021-04-29 21:15:39'),
(3, '6', 'UCXOAG', '2021-04-29 21:37:29', '2021-04-29 21:37:29'),
(4, '6', 'UCXOAG', '2021-04-29 21:39:27', '2021-04-29 21:39:27'),
(5, '6', 'UCXOAG', '2021-04-29 21:41:14', '2021-04-29 21:41:14'),
(6, '6', 'UCXOAG', '2021-04-29 21:44:01', '2021-04-29 21:44:01'),
(7, '6', 'UCXOAG', '2021-04-29 21:47:11', '2021-04-29 21:47:11'),
(8, '6', 'UCXOAG', '2021-04-29 21:48:35', '2021-04-29 21:48:35'),
(9, '6', 'UCXOAG', '2021-04-29 21:49:45', '2021-04-29 21:49:45'),
(10, '6', 'UCXOAG', '2021-04-29 21:51:38', '2021-04-29 21:51:38'),
(11, '6', 'UCXOAG', '2021-04-29 21:52:56', '2021-04-29 21:52:56'),
(12, '6', 'UCXOAG', '2021-04-30 06:59:26', '2021-04-30 06:59:26'),
(13, '9', 'GMYVZN', '2021-04-30 07:04:01', '2021-04-30 07:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LMXWh5yCfv4CIZha0iQU2DKPM9qRAqnwVXVaaNNI', 1, '192.168.1.20', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.91 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoid2V1MGZ1ZFZTRmpNVzlidFRoQUtrd3RzbjdadHdDc1Q5eldNSzRWViI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTkyLjE2OC4xLjEzOjgwMDAvbWVtYmVyc2hpcCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRUY0VpbkkzN0NmS0JwSWdXeGo5S2V1azEzeFpHMnZVVWMwaDNRZEkvTzB3OGRGLy82WUp2eSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkVGNFaW5JMzdDZktCcElnV3hqOUtldWsxM3haRzJ2VVVjMGgzUWRJL08wdzhkRi8vNllKdnkiO30=', 1619766104),
('TLmCEHk2Vyqdp0kmPAWDHhGmLHBvMzZXyJq27hXX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiV29YYmNjNjJRTW9hemdJQnA4dXFXVXhBRVVWV3dpTFpVOXBTN05ZZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tZW1iZXJzaGlwX2xvZy82Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFRjRWluSTM3Q2ZLQnBJZ1d4ajlLZXVrMTN4WkcydlVVYzBoM1FkSS9PMHc4ZEYvLzZZSnZ5IjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRUY0VpbkkzN0NmS0JwSWdXeGo5S2V1azEzeFpHMnZVVWMwaDNRZEkvTzB3OGRGLy82WUp2eSI7fQ==', 1619766773),
('XE99cRzwoTKT27pQEXUhgoeS9de8p6C3p6wjKgcS', NULL, '192.168.1.13', 'Avast Antivirus', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDdQNjRTN21yNFJBMVFNOWpldXZmT1p0UWhzbVpXRVlpTWw0d2pjUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly8xOTIuMTY4LjEuMTM6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1619762900);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'shahrul95.dev@gmail.com', NULL, '$2y$10$TcEinI37CfKBpIgWxj9Keuk13xZG2vUUc0h3QdI/O0w8dF//6YJvy', NULL, NULL, 'W5wRcZjLras0UrwD5NdE9BS9d9wTbjfYE10G2rNFnXQEADhKbNrf4e8pW6Gt', NULL, NULL, '2021-04-29 03:07:29', '2021-04-29 03:07:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `scan_logs`
--
ALTER TABLE `scan_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scan_logs`
--
ALTER TABLE `scan_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
