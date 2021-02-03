-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 03, 2021 at 11:27 AM
-- Server version: 10.5.8-MariaDB-1:10.5.8+maria~focal
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meta_mata_db`
--

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
-- Table structure for table `likers`
--

CREATE TABLE `likers` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `cerita_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likers`
--

INSERT INTO `likers` (`id`, `user_id`, `cerita_id`) VALUES
(1, '1', '14'),
(2, '1', '13'),
(3, '1', '5'),
(4, '1', '14'),
(5, '1', '17');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `story`
--

CREATE TABLE `story` (
  `id` int(11) NOT NULL,
  `cerita` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `created_at` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `updated_at` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `judul` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `cerita`, `created_at`, `updated_at`, `judul`, `user_id`) VALUES
(1, 'hahahah hihihihiih', '2020-03-03 09:09:09', NULL, 'naek motor', NULL),
(2, 'ohohohoho hahahaa', '2021-01-01 01:45:12', NULL, 'naek sepeda', NULL),
(3, 'tes', '2021-02-01 12:23:19', NULL, 'tes', NULL),
(4, 'tes', '2021-02-01 12:23:29', NULL, 'tes', NULL),
(5, 'aaaa', '2021-02-01 12:24:20', NULL, 'aa', NULL),
(6, 'lagi naek gunung tiba2 ketemu buaya.', '2021-02-02 07:53:14', NULL, 'ke gunung', NULL),
(7, 'laut warna biru aku suka biru', '2021-02-02 09:14:03', NULL, 'laut', NULL),
(12, '222e', '2021-02-02 12:08:14', NULL, 'ekek', NULL),
(13, 'sq', '2021-02-02 12:15:32', NULL, 'sdd', NULL),
(14, 'sad', '2021-02-03 03:31:49', NULL, 'asldk', '1'),
(15, 'temennya ogi nur muhnovaa', '2021-02-03 04:48:18', NULL, 'yoga', '2'),
(16, 'huuu', '2021-02-03 11:52:14', NULL, 'hahah', '2'),
(17, 'hobynya caur olahraga kalo inget', '2021-02-03 13:47:40', NULL, 'Caur', '1');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ogi Nur Muhnova', 'oginurmuhnova@gmail.com', NULL, '$2y$10$Qz8f38dY18rWQGD.xrQ6jOEnLtLw8pmnE1iCYiANswJlEVifpIzsO', NULL, '2021-02-03 03:30:40', '2021-02-03 03:30:40'),
(2, 'Muhammad Rizki Adeyoga', 'oginur8@gmail.com', NULL, '$2y$10$vIpzkmb0xRkiyOUHTacvZOKPmykSJq9zadsyPVpB6gzFEaCfJMZvq', NULL, '2021-02-03 04:47:43', '2021-02-03 04:47:43');

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
-- Indexes for table `likers`
--
ALTER TABLE `likers`
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
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `likers`
--
ALTER TABLE `likers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
