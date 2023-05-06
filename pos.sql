-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 04:33 AM
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
(1, 'Theresa', 'Martin', '(0164) 5646294', 'damien.harris@roberts.biz', '2010-06-16', '744 George Viaduct\nPort Isabellahaven\nNG5 1HT', '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(2, 'Chloe', 'Simpson', '+44(0)6811 198833', 'maria17@jackson.com', '2018-10-14', '273 Fiona Station\nMorrisland\nLS28 9NF', '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(3, 'Jessica', 'Reid', '+44(0)2585599830', 'chelsea50@adams.com', '1971-08-20', '3 Ellis Fort\nNorth Abbieview\nTD1 2BX', '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(4, 'Molly', 'Richards', '+44(0)0616 045878', 'rogers.evelyn@yahoo.com', '1995-02-04', '188 Mandy Row\nEast Charlie\nSE1P 5NT', '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(5, 'Isobel', 'Fox', '+44(0)1946435541', 'jrobertson@gmail.co.uk', '2021-01-04', '3 Richardson Harbour\nGrahamshire\nBT15 3FB', '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_ext` varchar(255) DEFAULT NULL,
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

INSERT INTO `products` (`id`, `name`, `category_id`, `description`, `image`, `image_ext`, `stock`, `unit_price`, `discounted_price`, `expiry_date`, `age_restriction`, `show_listing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sit', 3, 'Quod nihil corrupti eos neque tempore.', NULL, NULL, 119, 4.00, 0.00, '1984-06-09', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(2, 'rerum', 5, 'Commodi soluta sed adipisci eos.', NULL, NULL, 130, 5.00, 0.00, '2009-08-28', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(3, 'est', 3, 'Impedit deserunt maiores unde tempore voluptatem qui occaecati.', NULL, NULL, 45, 1.00, 0.00, '2009-10-27', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(4, 'enim', 4, 'Qui molestias impedit corrupti officia quia qui neque.', NULL, NULL, 28, 3.00, 0.00, '1988-10-02', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(5, 'quaerat', 2, 'In quam repellendus necessitatibus quia dolores animi dolor.', NULL, NULL, 10, 8.00, 0.00, '2012-06-12', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(6, 'neque', 2, 'Fugiat libero eum itaque consequatur.', NULL, NULL, 26, 6.00, 0.00, '2012-12-21', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(7, 'et', 5, 'Est modi omnis sint modi.', NULL, NULL, 19, 5.00, 0.00, '1995-05-25', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(8, 'officia', 1, 'Nesciunt nam tenetur eum deserunt corporis veritatis.', NULL, NULL, 106, 2.00, 0.00, '1983-02-06', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(9, 'aut', 1, 'Voluptates esse omnis delectus veniam perspiciatis soluta aut.', NULL, NULL, 20, 3.00, 0.00, '1982-06-17', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(10, 'sunt', 1, 'Molestiae sit nostrum occaecati voluptas sed enim minima.', NULL, NULL, 100, 2.00, 0.00, '1978-03-22', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(11, 'iste', 3, 'Fugiat ratione natus quia incidunt nihil iusto.', NULL, NULL, 40, 1.00, 0.00, '1985-10-15', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(12, 'molestiae', 3, 'Molestiae velit iure quas est ad earum.', NULL, NULL, 20, 5.00, 0.00, '1975-11-24', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(13, 'animi', 5, 'Animi et nulla aut fuga perferendis doloremque.', NULL, NULL, 146, 7.00, 0.00, '1987-11-06', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(14, 'numquam', 5, 'Sed aspernatur est quidem vel natus consequatur quos.', NULL, NULL, 87, 5.00, 0.00, '2022-09-17', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(15, 'provident', 3, 'Repellendus optio libero molestiae sapiente id.', NULL, NULL, 143, 9.00, 0.00, '2000-01-06', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(16, 'expedita', 2, 'Rem possimus voluptatum recusandae vitae et aliquam.', NULL, NULL, 129, 2.00, 0.00, '1974-07-29', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(17, 'adipisci', 5, 'Magnam laudantium et nemo autem.', NULL, NULL, 107, 8.00, 0.00, '1982-01-10', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(18, 'facilis', 3, 'Et est sapiente est quia tempore fugiat quia sunt.', NULL, NULL, 13, 4.00, 0.00, '2010-05-13', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(19, 'nobis', 5, 'Non est mollitia molestias ut ut aut.', NULL, NULL, 32, 3.00, 0.00, '2019-10-14', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(20, 'iure', 1, 'Eum numquam omnis molestias ipsam corporis delectus adipisci.', NULL, NULL, 115, 7.00, 0.00, '2005-07-22', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(21, 'facere', 4, 'Laboriosam animi nulla illo ipsam aliquid sed in cum.', NULL, NULL, 63, 1.00, 0.00, '1977-10-01', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(22, 'nobis', 5, 'Praesentium quis quia nemo eligendi eaque vitae.', NULL, NULL, 1, 6.00, 0.00, '1984-07-10', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(23, 'quas', 2, 'Corporis odit itaque laborum sit.', NULL, NULL, 119, 4.00, 0.00, '2017-02-27', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(24, 'magnam', 4, 'Explicabo voluptatibus dolores illum facere qui.', NULL, NULL, 138, 5.00, 0.00, '2008-05-04', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(25, 'non', 1, 'Id quidem ut ut ut quidem.', NULL, NULL, 149, 9.00, 0.00, '2006-12-08', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(26, 'doloribus', 1, 'Aut facere accusantium voluptatem laudantium a non beatae aut.', NULL, NULL, 8, 6.00, 0.00, '2011-02-07', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(27, 'recusandae', 3, 'A tempora magni quia possimus doloribus voluptate.', NULL, NULL, 38, 2.00, 0.00, '2020-01-09', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(28, 'accusantium', 5, 'Et excepturi error ut tempore vitae explicabo.', NULL, NULL, 27, 8.00, 0.00, '1995-07-14', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(29, 'deleniti', 1, 'Deleniti temporibus autem assumenda culpa pariatur labore assumenda voluptas.', NULL, NULL, 39, 8.00, 0.00, '1982-11-12', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(30, 'enim', 3, 'Laborum et hic odit in minus omnis.', NULL, NULL, 46, 6.00, 0.00, '2008-01-30', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(31, 'qui', 4, 'Aut dolores enim dignissimos voluptatem ducimus fugiat non.', NULL, NULL, 126, 4.00, 0.00, '1981-11-02', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(32, 'non', 3, 'Recusandae aliquam veritatis enim ratione laudantium.', NULL, NULL, 96, 8.00, 0.00, '1980-09-30', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(33, 'et', 5, 'Illo et consequatur eveniet laboriosam sit qui ratione.', NULL, NULL, 52, 3.00, 0.00, '1974-10-24', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(34, 'dolor', 2, 'Non ipsum ipsum vel quisquam.', NULL, NULL, 20, 6.00, 0.00, '1976-11-09', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(35, 'ab', 4, 'Neque dolor voluptatem nostrum voluptas dolores voluptates non enim.', NULL, NULL, 6, 3.00, 0.00, '2014-12-07', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(36, 'ut', 5, 'Facilis voluptatem porro optio ullam consequatur.', NULL, NULL, 108, 7.00, 0.00, '1989-02-26', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(37, 'quibusdam', 4, 'Qui ducimus eius quia temporibus similique iure saepe.', NULL, NULL, 59, 7.00, 0.00, '1986-09-23', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(38, 'et', 3, 'Quam minus et fugit et quasi quidem.', NULL, NULL, 20, 2.00, 0.00, '2021-08-16', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(39, 'qui', 3, 'Sunt eum omnis ut fuga et repellendus ullam enim.', NULL, NULL, 112, 6.00, 0.00, '1993-10-02', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(40, 'odit', 1, 'Voluptas sit voluptates molestiae repellendus deserunt repudiandae.', NULL, NULL, 46, 4.00, 0.00, '1990-01-21', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(41, 'enim', 3, 'Ullam corrupti nihil minus omnis.', NULL, NULL, 81, 9.00, 0.00, '1986-07-03', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(42, 'rerum', 4, 'Perferendis soluta velit omnis.', NULL, NULL, 73, 2.00, 0.00, '2003-12-07', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(43, 'ea', 5, 'Perferendis commodi et est voluptas ipsam consectetur voluptas doloremque.', NULL, NULL, 79, 8.00, 0.00, '1993-10-05', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(44, 'consectetur', 5, 'Error corporis vel dolorem ipsam inventore quas quo.', NULL, NULL, 103, 7.00, 0.00, '2007-05-21', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(45, 'dolorem', 3, 'Aut at possimus debitis nostrum sequi eos sit.', NULL, NULL, 127, 9.00, 0.00, '2020-09-09', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(46, 'veniam', 1, 'Quaerat minus quibusdam aut ut exercitationem.', NULL, NULL, 90, 4.00, 0.00, '2013-12-04', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(47, 'magni', 2, 'Veritatis ipsum est est voluptatum tempora a.', NULL, NULL, 4, 8.00, 0.00, '1972-05-25', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(48, 'fugit', 4, 'Doloribus atque exercitationem vero.', NULL, NULL, 126, 5.00, 0.00, '1997-06-26', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(49, 'culpa', 1, 'Inventore dignissimos itaque hic dolores molestiae.', NULL, NULL, 3, 5.00, 0.00, '1973-04-24', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(50, 'voluptatibus', 2, 'Deleniti veniam commodi consequatur.', NULL, NULL, 92, 4.00, 0.00, '1973-10-11', 0, 1, '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL);

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
  `code` varchar(255) DEFAULT NULL,
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

INSERT INTO `promotions` (`id`, `user_id`, `name`, `type`, `discount_type`, `rate`, `capped_at`, `min_spending`, `code`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Cart Discount', 1, 1, 5.00, 5.00, 20.00, NULL, '2000-01-01', '2030-01-01', 1, '2023-05-05 23:00:00', '2023-05-05 23:00:00', NULL);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `email`, `password`, `first_name`, `last_name`, `dob`, `address`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'test', 'selina06@example.net', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Ashley', 'Wilson', '1988-03-10', '70 Eva Corner\nAdamschester\nTR19 6DX', 'BXxdgAaran', '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(2, 2, 'owilkinson', 'olivia.russell@example.com', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Faye', 'King', '1974-09-13', '8 Roberts Terrace\nMooreton\nYO7 1SP', 'RI3M9lt13t', '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL),
(3, 2, 'henry74', 'tiffany.smith@example.com', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Harrison', 'Clarke', '1995-06-05', '543 Lindsay Manors\nLake Katie\nBH11 9NE', 'GCldE4mXKj', '2023-05-06 01:32:56', '2023-05-06 01:32:56', NULL);

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
