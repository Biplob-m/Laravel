-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 06:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ameniti_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `ameniti_type`, `created_at`, `updated_at`) VALUES
(1, 'Pure Vegetarian', '2024-02-01 12:35:56', '2024-02-01 12:35:56'),
(2, 'Buffet', '2024-02-02 09:38:18', '2024-02-02 09:38:18'),
(3, 'Take Away Only', '2024-02-02 09:38:40', '2024-02-02 09:38:40'),
(4, 'Candle Light Dinner', '2024-02-02 09:39:16', '2024-02-02 09:39:16'),
(6, 'fff', '2024-02-26 06:38:20', '2024-02-26 06:38:20'),
(9, 'klm', '2024-02-26 07:10:42', '2024-02-26 07:10:42'),
(23, 'hbvv', '2024-02-26 07:13:02', '2024-02-26 07:13:02'),
(56, 'gggg', '2024-02-26 06:36:25', '2024-02-26 06:36:25'),
(77, 'bhj', '2024-02-26 12:42:53', '2024-02-26 12:42:53'),
(78, 'mjkl', '2024-02-26 12:58:59', '2024-02-26 12:58:59'),
(6756757871, 'ABC', '2024-02-26 01:19:12', '2024-02-26 01:19:12'),
(6756757872, 'ABCD', '2024-02-26 01:49:09', '2024-02-26 01:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `photo`, `created_at`, `updated_at`) VALUES
(4, 'Gym23', 'gym.png', '2024-02-02 07:18:04', '2024-02-02 07:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `created_at`, `updated_at`) VALUES
(1, 'kolkata', '2024-02-02 06:47:22', '2024-02-02 06:47:22'),
(2, 'Howrah', '2024-02-02 09:41:15', '2024-02-02 09:41:15'),
(3, 'Hooghly', '2024-02-02 09:41:29', '2024-02-02 09:41:29'),
(4, 'abc', '2024-02-23 10:19:27', '2024-02-23 10:19:27'),
(5, 'Barasat', '2024-02-23 10:22:11', '2024-02-23 10:22:11'),
(6, 'Mumbai', '2024-02-23 11:11:20', '2024-02-23 11:11:20'),
(7, 'South Kolkata', '2024-02-23 11:14:21', '2024-02-23 11:14:21'),
(34, 'fgee', '2024-02-28 13:57:10', '2024-02-28 13:57:10'),
(44, 'bhdgv', '2024-03-06 14:03:59', '2024-03-06 14:03:59'),
(49, 'Malancha', '2024-03-06 09:55:39', '2024-03-06 09:55:39'),
(101, 'lll', '2024-02-26 12:35:26', '2024-02-26 12:35:26'),
(103, 'hhgg', '2024-02-26 12:37:52', '2024-02-26 12:37:52'),
(104, 'hhgg', '2024-02-26 12:38:08', '2024-02-26 12:38:08'),
(105, 'fghjkl', '2024-02-26 12:55:24', '2024-02-26 12:55:24'),
(106, 'fghjklm', '2024-02-26 12:56:10', '2024-02-26 12:56:10'),
(107, 'shghfsdjgds', '2024-03-06 13:57:35', '2024-03-06 13:57:35'),
(109, 'chgchjg', '2024-03-06 14:10:45', '2024-03-06 14:10:45'),
(110, 'chgchjgg', '2024-03-06 14:14:02', '2024-03-06 14:14:02');

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_01_30_152522_create_categories_table', 1),
(11, '2024_01_30_153948_create_sub_categories_table', 1),
(12, '2024_01_30_190644_create_amenities_table', 2),
(13, '2024_01_30_191336_create_cities_table', 3),
(14, '2024_01_30_191834_create_restaurant_details_table', 4),
(15, '2024_03_27_171338_create_options_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Category', '2024-03-27 12:34:54', '2024-03-27 12:34:54'),
(2, 'SubCategory', '2024-03-27 12:35:48', '2024-03-27 12:35:48');

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
-- Table structure for table `restaurant_details`
--

CREATE TABLE `restaurant_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phNo` bigint(20) NOT NULL,
  `ratings` varchar(255) NOT NULL,
  `sub_category` bigint(20) UNSIGNED DEFAULT NULL,
  `city` bigint(20) UNSIGNED DEFAULT NULL,
  `ameniti` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_details`
--

INSERT INTO `restaurant_details` (`id`, `restaurant_name`, `photo`, `address`, `phNo`, `ratings`, `sub_category`, `city`, `ameniti`, `created_at`, `updated_at`) VALUES
(1, 'Biryani House', 'biryanihouse.jpeg', 'Amta Road, Howrah', 8468959247, '4', 1, 2, 1, '2024-02-02 13:14:44', '2024-02-02 13:14:44'),
(2, 'Sadhe Bilashita', 'sadhebilasita.jpeg', 'Road Shibpur, Howrah', 8468959248, '4.2', 1, 2, 3, '2024-02-02 13:18:26', '2024-02-02 13:18:26'),
(3, 'Dilli 6', 'dilli6.jpeg', 'Zakaria Street, Kolkata', 8468959250, '4.1', 1, 1, 4, '2024-02-02 13:20:11', '2024-02-02 13:20:11'),
(4, 'Abar Khabo', 'abarkhabo.jpeg', 'OT Road,Uluberia', 9468959255, '4.2', 2, 2, 3, '2024-02-02 13:21:50', '2024-02-02 13:21:50'),
(5, 'Signature Recipe', 'signature.jpeg', 'Andul Road, Howrah', 9468959258, '4.1', 2, 2, 2, '2024-02-02 13:23:46', '2024-02-02 13:23:46'),
(6, 'Alishan Biryani', 'alishan.jpeg', 'Saltlake, Kolkata', 9468959260, '4.3', 2, 1, 3, '2024-02-02 13:25:39', '2024-02-02 13:25:39'),
(7, 'Lemon Grass', 'lemongrass.jpeg', 'City Centre, Hooghly', 9768959262, '4.3', 3, 3, 4, '2024-02-02 13:27:27', '2024-02-02 13:27:27'),
(8, 'The 54 Resro', 'the54.jpeg', '54 Foot Road, Kolkata', 9768959264, '4.1', 3, 1, 2, '2024-02-02 13:28:56', '2024-02-02 13:28:56'),
(9, 'WOW Kitchen', 'wowkitchen.jpeg', 'C Zone, Hooghly', 9768959266, '4.2', 3, 3, 1, '2024-02-02 13:30:19', '2024-02-02 13:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `category` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category_name`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Afghani Restaurants', NULL, '2024-02-02 08:45:49', '2024-02-02 08:45:49'),
(2, 'Indian Restaurants', NULL, '2024-02-02 08:46:37', '2024-02-02 08:46:37'),
(3, 'American Restaurants', NULL, '2024-02-02 08:47:09', '2024-02-02 08:47:09'),
(4, '5 Star Hotels', NULL, '2024-02-02 08:47:45', '2024-02-02 08:47:45'),
(5, '4 Star Hotels', NULL, '2024-02-02 08:47:52', '2024-02-02 08:47:52'),
(6, '3 Star Hotels', NULL, '2024-02-02 08:47:59', '2024-02-02 08:47:59'),
(7, 'School', NULL, '2024-02-02 08:48:23', '2024-02-02 08:48:23'),
(8, 'College', NULL, '2024-02-02 08:48:44', '2024-02-02 08:48:44'),
(9, 'Coaching', NULL, '2024-02-02 08:49:04', '2024-02-02 08:49:04'),
(10, '5 Star Gym', 4, '2024-02-02 08:49:29', '2024-02-02 08:49:29'),
(11, '4 Star Gym', 4, '2024-02-02 08:49:35', '2024-02-02 08:49:35'),
(12, '3 Star Gym', 4, '2024-02-02 08:49:42', '2024-02-02 08:49:42'),
(13, 'Car On Rent', NULL, '2024-02-02 08:50:06', '2024-02-02 08:50:06'),
(14, 'Furnitures On Rent', NULL, '2024-02-02 08:50:34', '2024-02-02 08:50:34'),
(15, 'Vehicle On Rent', NULL, '2024-02-02 08:50:58', '2024-02-02 08:50:58'),
(17, 'High School', NULL, '2024-04-06 08:34:51', '2024-04-06 08:34:51'),
(18, 'South Indian Restaurants', NULL, '2024-04-06 08:38:30', '2024-04-06 08:38:30'),
(20, 'North Indian Restaurants', NULL, '2024-04-06 08:46:16', '2024-04-06 08:46:16');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'rahul', 'rahul123@gmail.com', NULL, '$2y$12$mX.c9OAX1QGHzcoFsxpOCOxpkZOTpf7Ygq1as6JUTIn64o4dkVq5a', NULL, '2024-04-17 13:30:47', '2024-04-17 13:30:47'),
(3, 'biplob', 'biplob123@gmail.com', NULL, '$2y$12$KgtzrN7AptaBchRlSdBVI.Z8Q2cTO4krCtbQU4tIzcmpdIKOQBjbC', NULL, '2024-04-20 00:46:26', '2024-04-20 00:46:26'),
(4, 'pritam', 'pritam123@gmail.com', NULL, '$2y$12$02.qSY4Fjm0xhK0TI6wvW.7QEWvyvmxCSrUwwE5SIuL6n3cOCZRdC', NULL, '2024-04-20 13:46:26', '2024-04-20 13:46:26'),
(5, 'abc', 'abc123@gmail.com', NULL, '$2y$12$TMUtWNFkqUFwT6lprD4cbO36Auahen6z6NhagyIYnrR9dkuxgTg8G', NULL, '2024-04-20 13:49:24', '2024-04-20 13:49:24'),
(6, 'def', 'def123@gmail.com', NULL, '$2y$12$Vcc6z/alYrhJhbHV7NDNoOGXvvyZolngGBOga1KrOi21DAHIaivIa', NULL, '2024-04-20 13:56:06', '2024-04-20 13:56:06'),
(7, 'yuu', 'yuu123@gmail.com', NULL, '$2y$12$3r2F1oWy6I1vACbDHoQ9s.7OkInHuAWJ6MOpAGeE5qbyni.5M9Ykq', NULL, '2024-04-20 14:20:49', '2024-04-20 14:20:49'),
(8, 'fyudt', 'ghfh77@gmail.com', NULL, '$2y$12$ywVEcrS6FNqaXrBgBhQyG.bW6t3zwdI/Oqj2CTRuT.2p0QC5KYHC.', NULL, '2024-04-20 14:27:38', '2024-04-20 14:27:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
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
-- Indexes for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_details_sub_category_foreign` (`sub_category`),
  ADD KEY `restaurant_details_city_foreign` (`city`),
  ADD KEY `restaurant_details_ameniti_foreign` (`ameniti`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_foreign` (`category`);

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
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6756757873;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `restaurant_details`
--
ALTER TABLE `restaurant_details`
  ADD CONSTRAINT `restaurant_details_ameniti_foreign` FOREIGN KEY (`ameniti`) REFERENCES `amenities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `restaurant_details_city_foreign` FOREIGN KEY (`city`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `restaurant_details_sub_category_foreign` FOREIGN KEY (`sub_category`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_foreign` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
