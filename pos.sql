-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 03:00 AM
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
(1, 'Tom', 'Gray', '00689284969', 'fwright@yahoo.com', '2017-01-29', 'Studio 48u\nCook Underpass\nDanside\nOL12 6RA', '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(2, 'Caitlin', 'Brown', '+44(0)0550878839', 'rebecca.griffiths@marshall.info', '1978-02-17', 'Studio 46c\nHughes Shore\nNew Scarlett\nSY5 0AR', '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(3, 'Oliver', 'Moore', '+44(0)851993950', 'sonia22@gmail.co.uk', '2004-12-26', '7 Imogen Spur\nIanburgh\nOX4 1GF', '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(4, 'Graham', 'Owen', '(09392) 13587', 'molly50@holmes.info', '2004-07-22', 'Flat 96\nScott Stream\nSouth Arthur\nPO17 5HZ', '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(5, 'Charlotte', 'Cooper', '07639 806679', 'tim.wilkinson@gmail.co.uk', '1979-08-16', 'Flat 06m\nClark Fords\nNew Naomiport\nOL12 7TX', '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL);

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
(1, 'et', 2, 'Tempora omnis voluptatum vero cupiditate.', 105, 6.00, 0.00, '1990-09-14', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(2, 'veritatis', 5, 'Sapiente molestiae eligendi eveniet molestiae facere aut nihil.', 6, 4.00, 0.00, '2003-11-10', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(3, 'neque', 1, 'Earum animi voluptate deserunt ad aliquam.', 118, 4.00, 0.00, '1993-03-06', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(4, 'aut', 4, 'Itaque sed quia occaecati id.', 141, 1.00, 0.00, '1992-02-19', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(5, 'nemo', 1, 'Est sit tenetur aliquam eligendi voluptatem est consectetur.', 144, 8.00, 0.00, '2016-07-25', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(6, 'et', 1, 'Dolores quisquam rerum nisi voluptatum.', 102, 9.00, 0.00, '1985-01-27', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(7, 'iure', 3, 'Rerum consequatur tempore eaque saepe non est.', 111, 2.00, 0.00, '1977-09-19', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(8, 'quia', 2, 'Aliquid cupiditate blanditiis aut voluptatem ullam neque.', 30, 7.00, 0.00, '1989-04-16', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(9, 'nesciunt', 1, 'Quam molestiae voluptatem reprehenderit porro est.', 56, 2.00, 0.00, '1988-11-06', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(10, 'est', 3, 'Et quidem corporis maxime qui praesentium qui.', 86, 8.00, 0.00, '1976-08-18', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(11, 'culpa', 3, 'Debitis quod sunt harum esse.', 100, 5.00, 0.00, '2016-04-07', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(12, 'quo', 5, 'Quis ut ipsa corporis aut voluptatem et dolorem.', 52, 2.00, 0.00, '1975-08-04', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(13, 'qui', 5, 'Eum commodi dolor sapiente consectetur minima architecto doloribus eveniet.', 79, 3.00, 0.00, '1976-06-23', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(14, 'quo', 5, 'Similique aliquam veritatis reiciendis est.', 93, 2.00, 0.00, '1976-09-03', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(15, 'aut', 5, 'Et eligendi vel odio facilis vitae sit.', 94, 1.00, 0.00, '1972-09-10', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(16, 'quidem', 1, 'Amet natus eum ipsam quia sint iste.', 145, 4.00, 0.00, '1976-09-21', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(17, 'et', 5, 'Qui ipsum cum autem.', 37, 3.00, 0.00, '1972-04-23', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(18, 'iure', 2, 'Et est expedita consequatur dolorum perspiciatis iure.', 4, 5.00, 0.00, '1992-04-28', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(19, 'vitae', 1, 'Inventore molestiae non delectus sint omnis excepturi est.', 120, 5.00, 0.00, '1975-02-23', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(20, 'dolorum', 2, 'Praesentium nisi iste incidunt maxime.', 133, 4.00, 0.00, '2008-11-15', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(21, 'animi', 3, 'Dolor qui laborum ullam blanditiis qui.', 133, 7.00, 0.00, '2017-03-01', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(22, 'repellendus', 5, 'Officia ea aliquid est doloremque voluptates necessitatibus.', 115, 6.00, 0.00, '1999-06-09', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(23, 'sequi', 2, 'Sit id et expedita debitis ut.', 61, 9.00, 0.00, '2012-06-19', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(24, 'aut', 5, 'Cum voluptatibus corporis aut quis fuga.', 3, 6.00, 0.00, '1972-06-26', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(25, 'commodi', 5, 'Iusto non dolorem sequi assumenda deserunt sunt.', 15, 7.00, 0.00, '1994-09-24', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(26, 'dolores', 4, 'Sed tenetur ea eligendi autem quo qui.', 116, 6.00, 0.00, '2002-04-22', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(27, 'officia', 4, 'Sint sint omnis et id qui.', 122, 6.00, 0.00, '2008-10-10', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(28, 'rerum', 3, 'Dignissimos dolorem recusandae eaque est aut.', 117, 2.00, 0.00, '2005-05-16', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(29, 'explicabo', 3, 'Ut neque nihil minus.', 25, 7.00, 0.00, '2020-12-19', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(30, 'a', 4, 'Autem repellendus exercitationem ab maiores numquam.', 83, 6.00, 0.00, '2003-12-06', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(31, 'sapiente', 3, 'Et nihil repellendus quia nostrum.', 118, 1.00, 0.00, '2020-03-29', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(32, 'aut', 1, 'Sequi fuga ut qui impedit.', 71, 9.00, 0.00, '1979-06-08', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(33, 'debitis', 5, 'Et et magni ratione cupiditate quia consequuntur quod corrupti.', 67, 7.00, 0.00, '1976-04-05', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(34, 'aut', 3, 'Aperiam ut impedit tempore est.', 108, 7.00, 0.00, '1981-10-13', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(35, 'distinctio', 5, 'Quia et voluptatum quo repudiandae perferendis.', 14, 2.00, 0.00, '2008-07-31', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(36, 'molestiae', 1, 'Provident nisi impedit atque illo esse.', 122, 7.00, 0.00, '2019-09-17', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(37, 'voluptas', 3, 'Placeat omnis laborum non rerum possimus.', 128, 3.00, 0.00, '2003-10-16', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(38, 'voluptatem', 2, 'Qui qui tenetur quia illum quis occaecati.', 149, 8.00, 0.00, '2006-07-15', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(39, 'et', 1, 'Consequatur et atque vel est et non.', 8, 8.00, 0.00, '2022-07-25', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(40, 'quis', 1, 'Quas minus non fuga architecto et ea.', 6, 4.00, 0.00, '2014-05-09', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(41, 'reprehenderit', 4, 'Officia voluptatem est doloremque vero eum.', 8, 3.00, 0.00, '1972-10-28', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(42, 'molestiae', 5, 'Sint quae quia ab doloribus ad et quis.', 140, 3.00, 0.00, '1981-04-05', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(43, 'voluptatem', 1, 'Voluptas exercitationem eum sint.', 43, 3.00, 0.00, '2010-03-12', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(44, 'eveniet', 1, 'Error a numquam impedit qui est eos maxime aut.', 104, 6.00, 0.00, '2007-02-04', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(45, 'quaerat', 2, 'Ut ipsum nulla occaecati.', 117, 2.00, 0.00, '2015-01-21', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(46, 'aut', 1, 'Et sint neque et magni et temporibus possimus.', 141, 4.00, 0.00, '2013-09-30', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(47, 'reprehenderit', 5, 'Voluptatem nobis beatae cumque ut.', 53, 3.00, 0.00, '2006-03-06', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(48, 'dolorum', 3, 'Eos quo repudiandae consequatur nam tempore.', 27, 5.00, 0.00, '1970-04-20', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(49, 'quidem', 3, 'Quasi ea dolorum aperiam ex et.', 52, 5.00, 0.00, '2014-02-12', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL),
(50, 'ad', 3, 'In nihil possimus cumque.', 107, 5.00, 0.00, '2014-01-02', 0, 1, '2023-04-28 23:27:04', '2023-04-28 23:27:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'manager id',
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1:total price, 2:promo code',
  `discount_type` int(11) NOT NULL COMMENT '1:percentage, 2:fixed',
  `rate` double(8,2) NOT NULL,
  `capped_at` double(8,2) NOT NULL,
  `min_spending` double(8,2) NOT NULL,
  `promo_code` varchar(255) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `user_id`, `name`, `type`, `discount_type`, `rate`, `capped_at`, `min_spending`, `promo_code`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Cart Discount', 1, 1, 5.00, 5.00, 20.00, NULL, '2000-01-01', '2030-01-01', 1, '2023-04-28 23:00:00', '2023-04-28 23:00:00', NULL);

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
(1, 1, 'test', 'selina06@example.net', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Sophie', 'Knight', '1999-11-28', '9 Naomi Crossroad\nSouth Lexifort\nML12 6XR', '1970-08-21', 'jBUPUJY0v2', '2023-04-24 21:10:32', '2023-04-24 21:10:32', NULL),
(2, 2, 'harry.evans', 'ghall@example.net', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Noah', 'Johnson', '2008-11-14', 'Flat 80v\nRose Place\nGraybury\nDT11 0JD', '1973-11-13', 'Lmzd8qDy0P', '2023-04-24 21:10:32', '2023-04-24 21:10:32', NULL),
(3, 2, 'danielle88', 'mandy.cook@example.net', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Mark', 'Smith', '2014-10-28', '57 Simpson Trafficway\nSuzanneside\nLS25 2AY', '2013-02-09', 'cpTV4cOGJu', '2023-04-24 21:10:32', '2023-04-24 21:10:32', NULL);

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
  ADD KEY `promotions_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
