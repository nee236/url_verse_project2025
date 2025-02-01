-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2025 at 03:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `url_verse`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `invite_token` varchar(255) NOT NULL,
  `is_signed_up` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `role_id`, `name`, `email`, `invite_token`, `is_signed_up`, `created_at`, `updated_at`) VALUES
(1, 2, 'Sembark Tech', 'neerajyadav536@gmail.com', 'L3eYTcGzRe0A9YKWJhypCQxscWR9nCIK', 0, '2025-01-31 07:59:02', '2025-01-31 07:59:02'),
(3, 2, 'ASP Corp', 'nk456756@gmail.com', 'XIHnR6iVPxbNM1koGHQGOL7lPXCtPPjj', 0, '2025-01-31 11:55:29', '2025-01-31 11:55:29'),
(4, 2, 'NK Group', 'nk23@gmail.com', '2OWbkw0UdoewIzirp9YziF7l46PO7Q73', 0, '2025-01-31 12:08:10', '2025-01-31 12:08:10');

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
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invited_by` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`id`, `client_id`, `role_id`, `invited_by`, `email`, `token`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'neerajyadav536@gmail.com', 'L3eYTcGzRe0A9YKWJhypCQxscWR9nCIK', '2025-01-31 08:29:02', '2025-01-31 07:59:02', '2025-01-31 07:59:02'),
(3, 1, 2, 2, 'nk654001@gmail.com', 'ly8umiLLll3o1LINnKIgOvgx1arRTWah', '2025-01-31 08:39:21', '2025-01-31 08:09:21', '2025-01-31 08:09:21'),
(4, 1, 3, 2, 'mk23@gmail.com', 'RvDgMC0nqYPYKuExYSAg2R3TtXNqBd3j', '2025-01-31 08:40:34', '2025-01-31 08:10:34', '2025-01-31 08:10:34'),
(5, 3, 2, 1, 'nk456756@gmail.com', 'XIHnR6iVPxbNM1koGHQGOL7lPXCtPPjj', '2025-01-31 12:25:29', '2025-01-31 11:55:29', '2025-01-31 11:55:29'),
(6, 4, 2, 1, 'nk23@gmail.com', '2OWbkw0UdoewIzirp9YziF7l46PO7Q73', '2025-01-31 12:38:10', '2025-01-31 12:08:10', '2025-01-31 12:08:10');

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
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2025_01_25_074726_create_roles_table', 1),
(5, '2025_01_27_123941_create_clients_table', 1),
(6, '2025_01_29_164454_create_team_members_table', 1),
(7, '2025_01_29_170023_create_users_table', 1),
(8, '2025_01_29_173400_create_short_urls_table', 1),
(9, '2025_01_29_174128_create_invitations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-01-31 07:58:13', '2025-01-31 07:58:13'),
(2, 'client_admin', 'web', '2025-01-31 07:58:13', '2025-01-31 07:58:13'),
(3, 'client_member', 'web', '2025-01-31 07:58:13', '2025-01-31 07:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `short_urls`
--

CREATE TABLE `short_urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `original_url` text NOT NULL,
  `short_code` varchar(10) NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `short_urls`
--

INSERT INTO `short_urls` (`id`, `user_id`, `client_id`, `role_id`, `original_url`, `short_code`, `hits`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, 'https://sembark.com/travel-software/features/best-ab', 'dM1VCo', 5, '2025-01-31 07:59:55', '2025-01-31 08:20:46'),
(2, 2, 1, 2, 'https://sembark.com/travel-software/features/best-abc', 'TrOv0c', 3, '2025-01-31 08:00:06', '2025-01-31 11:10:47'),
(3, 5, 3, 2, 'https://asp_corp.com/travel-software/features/best-ab', 'Dj0ldd', 0, '2025-01-31 11:57:59', '2025-01-31 11:57:59'),
(4, 5, 3, 2, 'https://asp.com/travel-software/features/best-ab', '6mVAcZ', 1, '2025-01-31 11:58:24', '2025-01-31 12:58:51'),
(5, 3, 1, 2, 'https://user1.com/travel-software/features/best-ab', 'nTtewo', 2, '2025-01-31 14:38:05', '2025-01-31 14:38:42');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `invite_token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `role_id`, `client_id`, `name`, `email`, `invite_token`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'User1', 'nk654001@gmail.com', 'ly8umiLLll3o1LINnKIgOvgx1arRTWah', '2025-01-31 08:09:21', '2025-01-31 08:09:21'),
(2, 3, 1, 'User2', 'mk23@gmail.com', 'RvDgMC0nqYPYKuExYSAg2R3TtXNqBd3j', '2025-01-31 08:10:34', '2025-01-31 08:10:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role_id`, `client_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@example.com', '$2y$12$fOL3K6SsqRb4.ZDhAgDN8OnctUIQ/Poik.5VqyUMIqagH6eDa/GGm', 1, NULL, NULL, '2025-01-31 07:58:14', '2025-01-31 07:58:14'),
(2, 'Sembark Tech', 'neerajyadav536@gmail.com', '$2y$12$FJa3AQRjmKwe4x2n6p8voeycKAFQ/PC4S0x5FFjZO5Jw6ur2Rvmh2', 2, 1, NULL, '2025-01-31 07:59:50', '2025-01-31 07:59:50'),
(3, 'User1', 'nk654001@gmail.com', '$2y$12$5/yon9cMdvuLr64GTtoefeS2.ZQp/jW8IK64/0F6dQSSwhVckEbPK', 2, 1, 1, '2025-01-31 08:11:54', '2025-01-31 08:11:54'),
(4, 'User2', 'mk23@gmail.com', '$2y$12$5/yon9cMdvuLr64GTtoefeS2.ZQp/jW8IK64/0F6dQSSwhVckEbPK', 3, 1, 2, NULL, NULL),
(5, 'ASP Corp', 'nk456756@gmail.com', '$2y$12$lx8PP3ZgGSmx4.Iu/JouXONbwaxy8GR.fAPOHrSq.SzCLxh3qun6S', 2, 3, NULL, '2025-01-31 11:56:21', '2025-01-31 11:56:21'),
(6, 'NK Group', 'nk23@gmail.com', '$2y$12$lx8PP3ZgGSmx4.Iu/JouXONbwaxy8GR.fAPOHrSq.SzCLxh3qun6S', 2, 4, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD KEY `clients_role_id_foreign` (`role_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invitations_email_unique` (`email`),
  ADD UNIQUE KEY `invitations_token_unique` (`token`),
  ADD KEY `invitations_client_id_foreign` (`client_id`),
  ADD KEY `invitations_role_id_foreign` (`role_id`),
  ADD KEY `invitations_invited_by_foreign` (`invited_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `short_urls`
--
ALTER TABLE `short_urls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `short_urls_short_code_unique` (`short_code`),
  ADD KEY `short_urls_user_id_foreign` (`user_id`),
  ADD KEY `short_urls_client_id_foreign` (`client_id`),
  ADD KEY `short_urls_role_id_foreign` (`role_id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_members_email_unique` (`email`),
  ADD KEY `team_members_role_id_foreign` (`role_id`),
  ADD KEY `team_members_client_id_foreign` (`client_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_client_id_foreign` (`client_id`),
  ADD KEY `users_team_id_foreign` (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `short_urls`
--
ALTER TABLE `short_urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invitations`
--
ALTER TABLE `invitations`
  ADD CONSTRAINT `invitations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invitations_invited_by_foreign` FOREIGN KEY (`invited_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invitations_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `short_urls`
--
ALTER TABLE `short_urls`
  ADD CONSTRAINT `short_urls_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `short_urls_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `short_urls_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_members_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `team_members` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
