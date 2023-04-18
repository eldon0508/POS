-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 04:57 PM
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
(1, 'Arthur', 'Scott', '+44(0)6737 072566', 'young.kieran@saunders.biz', '1992-02-23', 'Studio 51n\nWhite Shores\nLake Hannahfurt\nW1D 4PR', '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(2, 'Tanya', 'Rogers', '(00487) 44174', 'hunter.lauren@gmail.co.uk', '2015-10-08', '878 Muhammad Expressway\nMartinville\nWR14 2YU', '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(3, 'Phoebe', 'Taylor', '+44(0)9337 048275', 'evans.riley@hotmail.com', '2008-11-24', 'Studio 00\nWard Harbours\nWest Masonmouth\nRM9 4UT', '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(4, 'Jordan', 'Murray', '0844528220', 'charrison@yahoo.com', '2000-08-17', '960 Pauline Shore\nClarkborough\nWR5 1DG', '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(5, 'Linda', 'Wilkinson', '0531 953 8492', 'fdavis@hotmail.com', '2016-09-05', '39 Mason Neck\nCoxview\nBN12 6HW', '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL);

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
(1, 'molestias', 4, 'Est saepe accusamus omnis odit consequuntur dolores dolores.', 100, 5.00, 0.00, '2007-11-28', 0, 1, '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL),
(2, 'deleniti', 3, 'Doloribus error veritatis incidunt labore a illo alias optio.', 100, 9.00, 0.00, '1980-11-25', 0, 1, '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL),
(3, 'facilis', 3, 'Maiores fugit velit ut atque iure nulla.', 100, 3.00, 0.00, '2022-12-30', 0, 1, '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL),
(4, 'ipsum', 3, 'Nihil et eius nihil culpa aut veritatis ut.', 100, 9.00, 0.00, '1986-06-06', 0, 1, '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL),
(5, 'temporibus', 4, 'Qui repudiandae sed sed.', 100, 7.00, 0.00, '1982-06-03', 0, 1, '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL),
(6, 'molestiae', 4, 'Rerum ut fuga unde rerum.', 100, 1.00, 0.00, '1995-12-16', 0, 1, '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL),
(7, 'deserunt', 4, 'Nostrum atque odit eligendi.', 100, 3.00, 0.00, '1972-10-18', 0, 1, '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL),
(8, 'iste', 5, 'Facilis iusto nihil exercitationem odio.', 100, 4.00, 0.00, '1988-11-05', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(9, 'vel', 4, 'Praesentium sapiente quidem adipisci qui.', 100, 6.00, 0.00, '1985-09-10', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(10, 'delectus', 4, 'Sint possimus voluptates nemo sed unde voluptatibus laborum.', 100, 5.00, 0.00, '2009-04-11', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(11, 'in', 4, 'Ratione qui minima facilis reiciendis vitae.', 100, 6.00, 0.00, '2021-08-04', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(12, 'ratione', 1, 'Vitae deserunt voluptatum nobis necessitatibus assumenda et temporibus.', 100, 1.00, 0.00, '1990-07-19', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(13, 'quo', 4, 'Qui laboriosam rerum tempore laboriosam culpa.', 100, 6.00, 0.00, '2008-07-15', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(14, 'animi', 4, 'Hic reiciendis ullam praesentium.', 100, 8.00, 0.00, '2005-08-07', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(15, 'voluptatem', 5, 'Quasi omnis ex incidunt eveniet similique tempore rerum.', 100, 4.00, 0.00, '1990-10-26', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(16, 'est', 5, 'Sit eos unde eligendi autem et.', 100, 8.00, 0.00, '2000-04-17', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(17, 'libero', 2, 'Soluta nobis esse aut quod voluptas.', 100, 7.00, 0.00, '2016-08-05', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(18, 'quis', 1, 'Vel ratione qui ratione eligendi consequuntur sapiente maiores.', 100, 9.00, 0.00, '2009-03-14', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(19, 'quaerat', 2, 'Velit facere dolores qui quaerat dolores temporibus ut.', 100, 1.00, 0.00, '2021-03-13', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(20, 'beatae', 5, 'Corporis odit aut ea quae.', 100, 2.00, 0.00, '1996-06-24', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(21, 'qui', 1, 'Magnam voluptatum et vel voluptatem unde.', 100, 1.00, 0.00, '1993-02-27', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(22, 'iste', 5, 'Dolores nisi doloribus veniam hic officia et.', 100, 6.00, 0.00, '1972-11-13', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(23, 'ab', 3, 'Accusantium laborum eligendi officiis iusto ipsum magni.', 100, 2.00, 0.00, '1983-07-26', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(24, 'vel', 3, 'Quisquam quasi doloremque ad reiciendis.', 100, 6.00, 0.00, '1987-01-14', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(25, 'est', 3, 'Consequatur dicta soluta voluptatem voluptates beatae commodi non.', 100, 8.00, 0.00, '1979-11-27', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(26, 'dolor', 2, 'Incidunt eos similique quis ea.', 100, 5.00, 0.00, '2013-04-27', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(27, 'nihil', 4, 'Porro autem nesciunt vitae deleniti voluptatibus.', 100, 2.00, 0.00, '2001-05-08', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(28, 'quis', 2, 'Ullam temporibus quia odit optio asperiores.', 100, 7.00, 0.00, '2002-08-27', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(29, 'tempora', 5, 'Est itaque blanditiis nam accusantium.', 100, 1.00, 0.00, '2023-03-20', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(30, 'est', 2, 'Et quas aut quisquam et.', 100, 1.00, 0.00, '1998-09-29', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(31, 'harum', 4, 'Aperiam et saepe minima eos quo.', 100, 1.00, 0.00, '1996-01-31', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(32, 'doloribus', 5, 'Est omnis repellendus id est reiciendis error perferendis.', 100, 7.00, 0.00, '2023-04-04', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(33, 'iure', 3, 'Deserunt quo quia quia rerum quia architecto.', 100, 8.00, 0.00, '2001-04-18', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(34, 'et', 3, 'Sit at qui exercitationem iure.', 100, 2.00, 0.00, '1975-02-26', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(35, 'enim', 5, 'In quisquam quibusdam doloremque dicta dolorem.', 100, 9.00, 0.00, '2020-06-15', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(36, 'similique', 4, 'Perspiciatis dignissimos architecto voluptate ad impedit sed odio.', 100, 1.00, 0.00, '1986-10-07', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(37, 'aliquam', 2, 'Voluptatem maiores corporis aut accusamus accusantium.', 100, 9.00, 0.00, '1980-10-12', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(38, 'quaerat', 1, 'Omnis non harum modi ipsum.', 100, 5.00, 0.00, '2021-07-05', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(39, 'veniam', 1, 'Quia fuga non sit molestiae qui provident.', 100, 9.00, 0.00, '1994-05-25', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(40, 'qui', 2, 'Fugiat cum quo omnis voluptatibus aut.', 100, 2.00, 0.00, '1983-06-02', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(41, 'blanditiis', 5, 'Consequatur nulla neque eligendi nihil consequatur.', 100, 9.00, 0.00, '2004-06-11', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(42, 'doloremque', 4, 'Voluptas praesentium cupiditate molestiae dolore quasi ipsum accusantium.', 100, 5.00, 0.00, '1994-09-18', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(43, 'odio', 4, 'Officiis repellat aut quia reprehenderit aut.', 100, 2.00, 0.00, '2014-10-20', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(44, 'id', 2, 'Accusamus fugit harum odit unde.', 100, 9.00, 0.00, '1970-11-13', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(45, 'consequatur', 3, 'Dolorem tempore voluptatem sunt aut.', 100, 6.00, 0.00, '1970-08-28', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(46, 'sit', 3, 'Aperiam ipsum ea cumque numquam et.', 100, 7.00, 0.00, '2016-12-03', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(47, 'enim', 3, 'Eaque rerum praesentium cum quia assumenda.', 100, 6.00, 0.00, '2019-08-07', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(48, 'ut', 1, 'Inventore voluptatum possimus non quae eligendi.', 100, 8.00, 0.00, '1980-08-13', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(49, 'et', 3, 'Ratione nihil est dolore animi.', 100, 2.00, 0.00, '1994-09-10', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL),
(50, 'consequuntur', 5, 'Assumenda asperiores qui omnis omnis animi officiis et.', 100, 1.00, 0.00, '2007-12-10', 0, 1, '2023-04-18 13:56:59', '2023-04-18 13:56:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'manager id',
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1:total price, 2:two-in-one, 3:promo code',
  `discount_type` int(11) NOT NULL COMMENT '1-percentage, 2-fixed',
  `rate` double(8,2) NOT NULL,
  `capped_at` double(8,2) NOT NULL,
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
(1, 1, 'test', 'elliot61@example.net', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Candice', 'Patel', '2014-04-15', '21 Jones Lodge\nReeceburgh\nNE29 0AT', '1997-11-30', 'f7T0JDKhRN', '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL),
(2, 1, 'caroline38', 'chris.parker@example.org', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Bruce', 'Walsh', '2018-07-11', '739 Charlie Avenue\nWest Florenceton\nB26 3SX', '1994-10-25', 'jjI1c2PYgc', '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL),
(3, 1, 'isaac96', 'ehunter@example.com', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Heather', 'Scott', '1988-02-26', '21 Wendy Park\nJohnsonberg\nG83 0SH', '1998-05-23', 'h70iwgflHc', '2023-04-18 13:56:58', '2023-04-18 13:56:58', NULL);

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
