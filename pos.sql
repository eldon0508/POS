-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 12:10 AM
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
(1, 'qui', 4, 'Corporis excepturi est quos optio velit et reiciendis odio.', 1, 9.00, 0.00, '2019-05-28', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(2, 'iure', 4, 'Eius saepe aut officia sapiente ab.', 73, 7.00, 0.00, '2010-05-13', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(3, 'dolorem', 2, 'Sed sit officia dignissimos ut.', 94, 9.00, 0.00, '1970-12-26', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(4, 'similique', 3, 'Itaque consequatur sequi voluptas et praesentium.', 146, 1.00, 0.00, '1977-04-06', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(5, 'veniam', 2, 'Debitis et fugiat consequatur vel delectus dolor.', 124, 8.00, 0.00, '1971-04-28', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(6, 'velit', 5, 'Sit est iusto autem voluptatem consectetur soluta pariatur.', 58, 8.00, 0.00, '2020-09-20', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(7, 'voluptas', 5, 'Aut numquam aut excepturi aut temporibus odit accusamus blanditiis.', 133, 7.00, 0.00, '1998-05-14', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(8, 'impedit', 5, 'Nihil adipisci aut quasi qui vero facere sit.', 102, 5.00, 0.00, '1993-07-15', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(9, 'amet', 1, 'Nesciunt mollitia praesentium in eos sint libero sed.', 63, 8.00, 0.00, '1992-05-08', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(10, 'nisi', 5, 'Debitis consequatur qui minima facilis ea.', 129, 9.00, 0.00, '2008-10-09', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(11, 'eos', 3, 'Dolorem voluptate officiis consequatur reiciendis nesciunt.', 27, 6.00, 0.00, '2013-11-27', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(12, 'eligendi', 3, 'Aut reprehenderit commodi aut eaque nostrum sint.', 49, 2.00, 0.00, '2015-10-19', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(13, 'voluptates', 5, 'Ab a quo perspiciatis dicta dolorem.', 103, 9.00, 0.00, '2006-05-09', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(14, 'cupiditate', 2, 'Ut voluptate non magnam laudantium distinctio tempore.', 62, 2.00, 0.00, '1978-02-01', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(15, 'nemo', 1, 'Nulla aut et aut vero voluptatem et.', 80, 6.00, 0.00, '1975-12-20', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(16, 'incidunt', 2, 'Repellendus sit doloremque sed aut consequuntur.', 145, 9.00, 0.00, '2000-04-05', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(17, 'molestias', 5, 'Dolores ducimus ut enim itaque et voluptatem laborum.', 11, 6.00, 0.00, '1979-03-18', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(18, 'omnis', 5, 'Atque corrupti amet tenetur minus natus.', 103, 6.00, 0.00, '1977-12-07', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(19, 'non', 1, 'Veritatis aliquid est consequuntur placeat.', 14, 8.00, 0.00, '1997-08-22', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(20, 'eaque', 5, 'Recusandae veniam vel impedit at quam et.', 12, 3.00, 0.00, '1974-04-09', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(21, 'distinctio', 2, 'Nulla repudiandae iure aut qui.', 14, 1.00, 0.00, '1993-05-02', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(22, 'facilis', 2, 'Numquam rerum labore omnis animi est ipsam.', 144, 2.00, 0.00, '2006-11-20', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(23, 'sit', 3, 'Inventore reiciendis incidunt autem nihil.', 138, 3.00, 0.00, '1970-10-31', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(24, 'aperiam', 4, 'Aliquam vero inventore enim expedita aut exercitationem eos sit.', 123, 4.00, 0.00, '2022-02-12', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(25, 'reprehenderit', 4, 'Inventore magnam voluptas voluptas dolor.', 75, 5.00, 0.00, '2008-12-18', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(26, 'eligendi', 1, 'Fuga sapiente harum minima harum.', 11, 6.00, 0.00, '1984-09-12', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(27, 'et', 3, 'Et ratione aut officiis ducimus explicabo.', 44, 2.00, 0.00, '1999-04-05', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(28, 'occaecati', 5, 'Architecto et amet doloremque dolores.', 12, 7.00, 0.00, '1980-07-22', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(29, 'facilis', 5, 'Fugit voluptatem consequatur perspiciatis maiores odio corrupti amet.', 61, 6.00, 0.00, '2001-07-15', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(30, 'quis', 5, 'Quos velit rerum labore dolores.', 42, 4.00, 0.00, '2015-01-11', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(31, 'ullam', 4, 'Veritatis assumenda unde dicta culpa ad officia.', 103, 2.00, 0.00, '1994-07-14', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(32, 'est', 1, 'Rem et eius totam iusto perferendis fugiat ab.', 89, 8.00, 0.00, '1972-05-25', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(33, 'quae', 3, 'Voluptas voluptatem aliquam sed velit.', 44, 2.00, 0.00, '1993-08-24', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(34, 'eum', 1, 'Dolores ipsa fuga deleniti non ut exercitationem iusto.', 55, 2.00, 0.00, '2018-06-20', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(35, 'quam', 4, 'Possimus veritatis doloribus ut nam.', 93, 8.00, 0.00, '2016-07-30', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(36, 'maxime', 1, 'Amet reiciendis et est consectetur eligendi sapiente.', 135, 3.00, 0.00, '1991-05-27', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(37, 'inventore', 4, 'Et reiciendis iste debitis illum veniam.', 81, 6.00, 0.00, '1970-11-03', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(38, 'et', 2, 'Reprehenderit ut qui recusandae.', 39, 7.00, 0.00, '1976-11-08', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(39, 'rerum', 5, 'Nobis cum et maiores esse.', 63, 8.00, 0.00, '1990-12-10', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(40, 'est', 3, 'Est dolore consequatur optio at enim facilis.', 12, 8.00, 0.00, '2020-06-22', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(41, 'nesciunt', 5, 'Impedit delectus quidem laudantium id at.', 117, 1.00, 0.00, '1978-11-12', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(42, 'esse', 5, 'Explicabo qui qui vitae sint id repellat incidunt.', 85, 1.00, 0.00, '1975-12-21', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(43, 'et', 1, 'Vel cumque sunt in praesentium esse iusto.', 22, 1.00, 0.00, '2016-01-02', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(44, 'est', 3, 'Quia modi velit quam.', 23, 6.00, 0.00, '1974-10-08', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(45, 'odio', 3, 'Aut ducimus ad placeat est dolore et quia provident.', 114, 2.00, 0.00, '2009-11-01', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(46, 'quas', 3, 'Eos tenetur nihil est molestiae voluptates officia.', 4, 8.00, 0.00, '2001-06-30', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(47, 'et', 4, 'Eos eos aut dolorem aut soluta aut.', 140, 4.00, 0.00, '2021-07-18', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(48, 'aut', 5, 'Itaque iusto itaque et reiciendis.', 88, 3.00, 0.00, '2012-02-01', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(49, 'dolorem', 3, 'Deleniti et sunt maxime minima molestias.', 77, 3.00, 0.00, '2016-03-27', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL),
(50, 'enim', 1, 'Eveniet ab amet beatae et fugit dolor.', 62, 7.00, 0.00, '2021-07-07', 0, 1, '2023-04-24 21:10:33', '2023-04-24 21:10:33', NULL);

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

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `user_id`, `name`, `type`, `discount_type`, `rate`, `capped_at`, `min_spending`, `promo_code`, `start_date`, `end_date`, `product_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Cart', 1, 1, 5.00, 5.00, 20.00, NULL, '2000-01-01', '2030-01-01', NULL, 1, NULL, NULL, NULL);

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
