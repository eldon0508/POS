-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 11:35 PM
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
(1, 'Isla', 'Roberts', '09421 18201', 'hunt.eleanor@hotmail.co.uk', '1998-02-27', '4 Tara Shoal\nCarmenland\nNG20 0JZ', '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(2, 'Gavin', 'Kennedy', '(0620) 0263871', 'fox.tiffany@chapman.co.uk', '2008-09-15', 'Studio 87z\nLloyd Lights\nNew Sabrina\nPE29 2HJ', '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(3, 'Becky', 'Knight', '(08252) 32671', 'scott.stewart@clarke.com', '1976-08-29', '872 Patrick Tunnel\nSouth Lindsay\nNE20 0RB', '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(4, 'Tim', 'Smith', '02318 92643', 'ryan.price@hall.com', '2018-04-04', '89 Hughes Isle\nRubymouth\nNE29 0AT', '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(5, 'Becky', 'Walsh', '06759 86244', 'xcampbell@gmail.co.uk', '1977-09-06', '638 Gray Track\nLake Juliafort\nSM3 9QR', '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL);

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
(1, 'reiciendis', 1, 'Aliquid deserunt est possimus nulla.', NULL, NULL, 23, 3.00, 0.00, '1976-10-01', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(2, 'ex', 1, 'Minima assumenda et officiis eum.', NULL, NULL, 113, 2.00, 0.00, '1992-04-15', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(3, 'rerum', 5, 'Magnam doloribus accusamus nobis impedit commodi animi.', NULL, NULL, 61, 4.00, 0.00, '1994-04-26', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(4, 'qui', 1, 'Qui quia eos possimus atque dolorum.', NULL, NULL, 69, 8.00, 0.00, '1974-06-05', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(5, 'aut', 3, 'Voluptatibus aut magni unde reiciendis.', NULL, NULL, 137, 1.00, 0.00, '2021-11-27', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(6, 'quos', 5, 'Animi reiciendis voluptatem magnam tempora.', NULL, NULL, 123, 2.00, 0.00, '1972-09-05', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(7, 'consequatur', 1, 'Et nobis maiores et numquam natus.', NULL, NULL, 93, 6.00, 0.00, '2007-05-19', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(8, 'perspiciatis', 1, 'Cupiditate in molestiae possimus.', NULL, NULL, 84, 1.00, 0.00, '2012-03-04', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(9, 'autem', 1, 'Consequuntur doloremque aut exercitationem quibusdam aut.', NULL, NULL, 9, 2.00, 0.00, '1977-11-20', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(10, 'ut', 3, 'Amet quisquam sunt ut aut laborum sequi.', NULL, NULL, 54, 4.00, 0.00, '2006-08-06', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(11, 'error', 1, 'Rem consectetur aliquid aut accusantium enim aut in laborum.', NULL, NULL, 77, 2.00, 0.00, '2022-08-26', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(12, 'laudantium', 2, 'Laudantium ea autem a unde sunt.', NULL, NULL, 116, 9.00, 0.00, '1971-05-11', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(13, 'voluptates', 3, 'Id incidunt ea inventore sed molestias iure.', NULL, NULL, 122, 1.00, 0.00, '2008-05-26', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(14, 'praesentium', 2, 'Et mollitia tenetur assumenda sint explicabo veritatis nisi.', NULL, NULL, 150, 8.00, 0.00, '1970-06-16', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(15, 'labore', 1, 'Sed enim neque iure ipsum laborum quis cupiditate.', NULL, NULL, 93, 1.00, 0.00, '1989-02-17', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(16, 'impedit', 3, 'Nisi quae porro adipisci repellendus accusantium recusandae reprehenderit.', NULL, NULL, 89, 4.00, 0.00, '2015-01-05', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(17, 'eum', 1, 'Ut est voluptatem officia error quaerat.', NULL, NULL, 77, 9.00, 0.00, '1974-09-14', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(18, 'voluptatem', 2, 'Id dignissimos vitae excepturi.', NULL, NULL, 104, 5.00, 0.00, '1976-09-28', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(19, 'non', 5, 'Et iusto aperiam quidem esse.', NULL, NULL, 93, 4.00, 0.00, '1977-08-03', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(20, 'ipsa', 3, 'Quis quisquam debitis autem alias eos repellat maiores ipsam.', NULL, NULL, 35, 4.00, 0.00, '1983-06-13', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(21, 'aliquid', 1, 'Autem dolorem accusamus voluptatum dolorum.', NULL, NULL, 111, 5.00, 0.00, '2022-03-22', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(22, 'ut', 4, 'Cupiditate et aut repellendus ut harum officia sit.', NULL, NULL, 72, 3.00, 0.00, '1985-02-24', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(23, 'accusantium', 1, 'Similique incidunt porro harum quo fugiat qui.', NULL, NULL, 148, 5.00, 0.00, '1993-09-02', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(24, 'recusandae', 3, 'Doloremque vel itaque veritatis facere aut ea quia consequatur.', NULL, NULL, 129, 2.00, 0.00, '2002-06-14', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(25, 'consectetur', 3, 'Eum aut a qui.', NULL, NULL, 103, 2.00, 0.00, '2019-05-01', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(26, 'non', 4, 'Possimus harum esse quaerat voluptatem non omnis.', NULL, NULL, 135, 9.00, 0.00, '1995-03-03', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(27, 'aspernatur', 5, 'Consequuntur sint pariatur odio reprehenderit similique hic ab beatae.', NULL, NULL, 71, 2.00, 0.00, '2002-08-16', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(28, 'autem', 5, 'Ea quia non quod eveniet tenetur tempore non.', NULL, NULL, 26, 2.00, 0.00, '1975-01-13', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(29, 'amet', 5, 'Qui est nisi ut laudantium laborum dolores.', NULL, NULL, 107, 3.00, 0.00, '1997-04-27', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(30, 'velit', 3, 'Ipsam vel placeat saepe vero quia cupiditate est.', NULL, NULL, 18, 2.00, 0.00, '2001-04-10', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(31, 'in', 4, 'Quo nemo quia quam quo nihil in hic exercitationem.', NULL, NULL, 19, 1.00, 0.00, '2004-11-08', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(32, 'deserunt', 2, 'Harum nesciunt maxime tenetur.', NULL, NULL, 92, 8.00, 0.00, '2021-09-23', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(33, 'ipsam', 3, 'Et sunt maiores illo ut quia odit.', NULL, NULL, 15, 8.00, 0.00, '2014-08-09', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(34, 'dignissimos', 5, 'Similique culpa ratione id et quae.', NULL, NULL, 12, 7.00, 0.00, '1985-05-06', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(35, 'enim', 2, 'Nobis eaque et officia autem ut.', NULL, NULL, 118, 6.00, 0.00, '1971-06-02', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(36, 'enim', 2, 'Ut quia quibusdam et et voluptatem sit velit.', NULL, NULL, 70, 9.00, 0.00, '1974-09-11', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(37, 'fuga', 1, 'Dolores libero et quam quam neque.', NULL, NULL, 139, 4.00, 0.00, '1993-11-16', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(38, 'eum', 4, 'Qui ea a id voluptatum mollitia nemo.', NULL, NULL, 144, 3.00, 0.00, '2019-03-09', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(39, 'expedita', 5, 'Rem consequatur doloribus atque eaque praesentium alias.', NULL, NULL, 77, 9.00, 0.00, '1999-08-19', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(40, 'quod', 1, 'Sunt minima eligendi nobis perspiciatis sit dolorum quia.', NULL, NULL, 146, 9.00, 0.00, '2009-03-10', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(41, 'impedit', 4, 'Est et nihil ea hic nisi ab.', NULL, NULL, 109, 8.00, 0.00, '2020-05-17', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(42, 'qui', 2, 'Praesentium eum id qui voluptatem ullam est.', NULL, NULL, 20, 3.00, 0.00, '1989-11-10', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(43, 'repudiandae', 5, 'Aliquid provident asperiores ea aliquam assumenda laboriosam alias.', NULL, NULL, 114, 5.00, 0.00, '1979-11-10', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(44, 'velit', 2, 'Voluptatem repellendus beatae quo repellat deleniti.', NULL, NULL, 121, 6.00, 0.00, '2002-12-15', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(45, 'enim', 3, 'Repudiandae aperiam ut et neque rerum unde cum.', NULL, NULL, 124, 3.00, 0.00, '1993-11-17', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(46, 'sunt', 1, 'Esse ratione rerum explicabo est.', NULL, NULL, 48, 5.00, 0.00, '2011-08-30', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(47, 'non', 3, 'Est enim eos qui est quidem sit exercitationem.', NULL, NULL, 1, 2.00, 0.00, '1995-05-05', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(48, 'itaque', 5, 'Enim magnam eius vitae doloremque harum quaerat aut neque.', NULL, NULL, 100, 5.00, 0.00, '1986-04-04', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(49, 'itaque', 1, 'Corporis sint animi aut totam unde asperiores occaecati.', NULL, NULL, 17, 2.00, 0.00, '1971-09-14', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL),
(50, 'consectetur', 3, 'Nihil dolorem magnam enim est ullam iusto eos.', NULL, NULL, 82, 3.00, 0.00, '2021-04-25', 0, 1, '2023-04-30 20:35:28', '2023-04-30 20:35:28', NULL);

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
(1, 1, 'Cart Discount', 1, 1, 5.00, 5.00, 20.00, NULL, '2000-01-01', '2030-01-01', 1, '2023-04-29 23:00:00', '2023-04-29 23:00:00', NULL);

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
