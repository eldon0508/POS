-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2023 at 01:09 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Art', 'Art', 1, NULL, NULL, NULL),
(2, 'F&B', 'Food and Beverage', 1, NULL, NULL, NULL),
(3, 'Cosmetics', 'Cosmetics', 1, NULL, NULL, NULL),
(4, 'Electronics', 'Electronics', 1, NULL, NULL, NULL),
(5, 'Sports', 'Sports', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `phone`, `email`, `dob`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Daisy', 'Rose', '+44(0)3871 387910', 'jason.kelly@gmail.com', '2009-01-05', 'Studio 27\nHunt Oval\nJonesmouth\nBS5 8PJ', '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(2, 'Kieran', 'Roberts', '09629483717', 'amber99@cook.com', '1978-12-22', '210 Mason Ferry\nLindsayburgh\nCW1 5PG', '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(3, 'Sienna', 'Mitchell', '+44(0)628181461', 'chris.hill@bell.com', '2006-03-20', '1 Emma Loop\nEast Zachary\nFK2 8DB', '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(4, 'Abigail', 'Morgan', '0356 528 0802', 'ross.lucas@chapman.com', '1984-04-02', 'Flat 19g\nGray Vista\nPort Bradleymouth\nHP13 7TG', '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(5, 'Alice', 'Graham', '+44(0)2124868678', 'jackson.isabel@wilkinson.com', '2006-08-12', 'Studio 16k\nCollins Junctions\nNorth Jamesstad\nPO14 4NH', '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `discounted_price` double(8,2) NOT NULL DEFAULT 0.00,
  `expiry_date` date NOT NULL,
  `age_restriction` tinyint(1) NOT NULL DEFAULT 0,
  `show_listing` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `description`, `stock`, `unit_price`, `discounted_price`, `expiry_date`, `age_restriction`, `show_listing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'est', 3, 'Animi ipsam eum ut.', 100, 8.00, 0.00, '2005-12-24', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(2, 'molestias', 5, 'Atque maiores at provident voluptatem.', 100, 1.00, 0.00, '1991-06-01', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(3, 'tempore', 2, 'Ut voluptatem odit qui pariatur placeat est sunt.', 100, 7.00, 0.00, '1997-10-27', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(4, 'dolor', 2, 'Aut et sed quisquam.', 100, 6.00, 0.00, '2008-06-26', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(5, 'cupiditate', 3, 'Aspernatur quaerat eaque est mollitia reiciendis dolorem molestias.', 100, 8.00, 0.00, '2005-03-08', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(6, 'porro', 3, 'Quia cupiditate porro ad atque beatae accusantium voluptatibus.', 100, 7.00, 0.00, '2006-06-16', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(7, 'qui', 5, 'Sed quidem beatae aut ut quae maxime molestiae.', 100, 5.00, 0.00, '1999-12-28', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(8, 'in', 4, 'Aut sint repellat perferendis occaecati.', 100, 9.00, 0.00, '2014-05-09', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(9, 'et', 3, 'Aut eligendi magnam et ut.', 100, 7.00, 0.00, '1985-05-04', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(10, 'corporis', 1, 'Necessitatibus iste tempora quod.', 100, 6.00, 0.00, '1977-10-01', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(11, 'omnis', 1, 'Quos excepturi et eligendi distinctio occaecati.', 100, 6.00, 0.00, '1976-12-29', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(12, 'at', 4, 'Tempora quo magni voluptatem incidunt rerum ipsam molestias.', 100, 1.00, 0.00, '1991-04-03', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(13, 'architecto', 4, 'Aut ut et ad eos.', 100, 3.00, 0.00, '2021-08-25', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(14, 'asperiores', 2, 'Qui officiis dolorem quibusdam ut rem qui soluta.', 100, 6.00, 0.00, '2007-02-11', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(15, 'enim', 2, 'Aut neque aspernatur animi illum voluptates.', 100, 8.00, 0.00, '2015-12-28', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(16, 'earum', 1, 'Sunt vel repudiandae id iste sed voluptas.', 100, 2.00, 0.00, '2008-06-06', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(17, 'voluptatem', 1, 'Molestiae est perferendis voluptas consequatur voluptatem ut facilis.', 100, 9.00, 0.00, '1996-07-26', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(18, 'placeat', 4, 'Possimus aut sapiente est corporis id.', 100, 4.00, 0.00, '2021-01-29', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(19, 'necessitatibus', 2, 'Rerum laborum dolorem aut nam sit.', 100, 6.00, 0.00, '1999-10-05', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(20, 'reprehenderit', 3, 'Quia sint sint quidem provident.', 100, 1.00, 0.00, '2018-12-04', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(21, 'et', 3, 'Est tenetur dolorum id quidem ratione amet veniam et.', 100, 1.00, 0.00, '1981-03-21', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(22, 'iusto', 1, 'Optio a delectus dolor odio similique.', 100, 3.00, 0.00, '1997-06-06', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(23, 'ut', 3, 'Nulla eaque qui commodi aut.', 100, 8.00, 0.00, '2011-11-06', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(24, 'pariatur', 4, 'Maiores fuga asperiores est rerum tenetur et.', 100, 4.00, 0.00, '2018-05-23', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(25, 'harum', 3, 'Iure voluptatem ullam ut dolores accusantium.', 100, 9.00, 0.00, '1997-03-26', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(26, 'quia', 4, 'Iure iusto non temporibus ipsa.', 100, 2.00, 0.00, '1970-06-12', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(27, 'facilis', 5, 'Impedit delectus nobis voluptas ullam est est.', 100, 8.00, 0.00, '2003-02-13', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(28, 'ipsum', 4, 'Aspernatur commodi voluptatem id dolorum ut.', 100, 8.00, 0.00, '2012-10-04', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(29, 'dignissimos', 5, 'Qui aut consequuntur architecto quia sit exercitationem.', 100, 4.00, 0.00, '1986-10-02', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(30, 'in', 3, 'In fuga natus et saepe et magni.', 100, 2.00, 0.00, '2002-08-06', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(31, 'aut', 4, 'Et recusandae et omnis expedita doloremque a.', 100, 7.00, 0.00, '2013-12-02', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(32, 'vitae', 5, 'Sapiente accusantium quam quia rerum quia exercitationem ipsa.', 100, 7.00, 0.00, '1982-10-26', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(33, 'libero', 1, 'Est nemo est autem consequuntur.', 100, 4.00, 0.00, '1974-04-25', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(34, 'tenetur', 4, 'Officia laudantium quisquam adipisci nihil alias.', 100, 1.00, 0.00, '2003-07-04', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(35, 'ut', 1, 'Deserunt reprehenderit maiores illo laboriosam.', 100, 3.00, 0.00, '1986-01-05', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(36, 'quaerat', 2, 'Consectetur architecto et dignissimos sapiente.', 100, 5.00, 0.00, '2016-08-03', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(37, 'exercitationem', 2, 'Eaque sunt eaque sit deserunt nemo culpa.', 100, 5.00, 0.00, '1994-12-09', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(38, 'voluptatum', 5, 'At reiciendis distinctio eum quos cupiditate.', 100, 9.00, 0.00, '1979-10-03', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(39, 'voluptatem', 5, 'Dolores qui dolores illo accusamus explicabo modi.', 100, 1.00, 0.00, '1975-04-01', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(40, 'et', 3, 'Voluptatem quisquam dolores officiis est voluptatem atque reiciendis.', 100, 1.00, 0.00, '1973-02-07', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(41, 'numquam', 4, 'Architecto quo quibusdam sequi ut nisi sit id dolorum.', 100, 7.00, 0.00, '1991-02-27', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(42, 'qui', 2, 'Distinctio aperiam voluptates necessitatibus cupiditate aut.', 100, 6.00, 0.00, '1994-06-03', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(43, 'ullam', 5, 'Dolores eos doloremque dicta.', 100, 9.00, 0.00, '1985-04-29', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(44, 'voluptas', 2, 'Rerum voluptas est mollitia et temporibus et quisquam.', 100, 6.00, 0.00, '2012-07-16', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(45, 'et', 1, 'Adipisci exercitationem eos quidem adipisci at accusantium.', 100, 2.00, 0.00, '2010-12-19', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(46, 'commodi', 2, 'Quis cum dolores sequi hic sunt laboriosam.', 100, 7.00, 0.00, '1990-01-05', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(47, 'impedit', 3, 'Laboriosam nihil molestiae ipsam fugit ipsam dolorum eveniet.', 100, 6.00, 0.00, '2005-01-10', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(48, 'minus', 3, 'Quod ut odio eligendi eum eum suscipit.', 100, 4.00, 0.00, '2013-09-26', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(49, 'et', 1, 'Quo nam dolores porro omnis qui.', 100, 2.00, 0.00, '1994-07-25', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(50, 'non', 2, 'Quia ut earum voluptatibus deleniti.', 100, 7.00, 0.00, '1985-12-17', 0, 1, '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'manager id',
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1:total price, 2:promo code',
  `discount_type` int(11) NOT NULL COMMENT '1-percentage, 2-fixed',
  `rate` double(8,2) NOT NULL,
  `capped_at` double(8,2) NOT NULL,
  `min_spending` double(8,2) NOT NULL,
  `promo_code` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `total_quantity` int(11) NOT NULL DEFAULT 0,
  `subtotal` double(8,2) NOT NULL DEFAULT 0.00,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `tax` double(8,2) NOT NULL DEFAULT 0.00,
  `grand_total` double(8,2) NOT NULL DEFAULT 0.00,
  `payment` double(8,2) NOT NULL DEFAULT 0.00,
  `changes` double(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(255) DEFAULT NULL COMMENT 'card/cash',
  `status` varchar(255) NOT NULL DEFAULT 'pending' COMMENT 'pending/completed/refunded',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_items`
--

CREATE TABLE `transaction_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `age_restriction` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1 COMMENT '1-Manager, 2-Staff',
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `join_date` date NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `email`, `password`, `first_name`, `last_name`, `dob`, `address`, `join_date`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'test', 'rebecca79@example.com', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Mohammed', 'Campbell', '1982-04-13', 'Flat 38x\nLewis Bridge\nRowenaland\nNG5 1HT', '1978-01-20', 'dMBHY5U6ke', '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(2, 1, 'bailey.archie', 'bennett.harrison@example.com', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Elsie', 'Thompson', '1976-06-09', '97 Davis Port\nMatthewschester\nNG18 3AZ', '1980-08-24', 'eC0raBgQxH', '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL),
(3, 1, 'stefan63', 'dennis75@example.com', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'William', 'Rose', '1979-04-20', '5 Mason Highway\nDeanport\nBT5 5ED', '1987-01-30', 'fvyi1wWD0m', '2023-04-21 22:08:40', '2023-04-21 22:08:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_user_id_foreign` (`user_id`),
  ADD KEY `promotions_product_id_foreign` (`product_id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_transaction_id_foreign` (`transaction_id`),
  ADD KEY `refunds_customer_id_foreign` (`customer_id`),
  ADD KEY `refunds_user_id_foreign` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_items_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_items_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_items`
--
ALTER TABLE `transaction_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `promotions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `refunds`
--
ALTER TABLE `refunds`
  ADD CONSTRAINT `refunds_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `refunds_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `refunds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `transaction_items`
--
ALTER TABLE `transaction_items`
  ADD CONSTRAINT `transaction_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_items_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
