-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 06:40 PM
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
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Anthony Wood', 5, 'Jennifer Clark', 100, 7.00, 0.00, '1996-06-01', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(2, 'Ella Wilson', 3, 'Sophia Morgan', 100, 5.00, 0.00, '1983-06-12', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(3, 'Mia Davies', 4, 'Sophia White', 100, 9.00, 0.00, '2014-04-18', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(4, 'Will Cox', 2, 'Duncan Butler', 100, 7.00, 0.00, '1981-05-27', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(5, 'Danielle King', 1, 'Martin Stewart', 100, 8.00, 0.00, '1995-10-20', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(6, 'Abigail Phillips', 3, 'Adam Reynolds', 100, 7.00, 0.00, '1992-02-02', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(7, 'Freddie Ward', 5, 'Mike Ward', 100, 1.00, 0.00, '2022-01-29', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(8, 'Zachary Hall', 3, 'John Clark', 100, 4.00, 0.00, '2020-10-30', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(9, 'Jeremy Taylor', 1, 'Erin Thompson', 100, 5.00, 0.00, '1985-05-20', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(10, 'Matthew Wilkinson', 3, 'Florence James', 100, 1.00, 0.00, '1996-09-05', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(11, 'Oliver Khan', 5, 'Ryan Davis', 100, 8.00, 0.00, '2001-06-15', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(12, 'Lizzie Edwards', 1, 'Victoria Robinson', 100, 3.00, 0.00, '1995-04-23', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(13, 'Jonathan Knight', 4, 'Rosie Phillips', 100, 9.00, 0.00, '1977-09-18', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(14, 'Alexander Marshall', 3, 'Dale Lewis', 100, 1.00, 0.00, '2005-01-19', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(15, 'Eva Powell', 5, 'Layla Anderson', 100, 9.00, 0.00, '1995-07-08', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(16, 'Sonia Turner', 5, 'Benjamin Robinson', 100, 2.00, 0.00, '2021-05-08', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(17, 'Abbie Davies', 5, 'Graham Harris', 100, 8.00, 0.00, '1977-02-05', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(18, 'Jade Kelly', 5, 'Alexander Ellis', 100, 1.00, 0.00, '2015-02-28', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(19, 'Kevin Clark', 1, 'Darren Knight', 100, 4.00, 0.00, '2008-12-06', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(20, 'Lucy Miller', 5, 'Evelyn Scott', 100, 6.00, 0.00, '1990-03-19', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(21, 'Adam Anderson', 3, 'Jack Simpson', 100, 8.00, 0.00, '2011-07-26', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(22, 'Jim Stewart', 4, 'Frank Collins', 100, 1.00, 0.00, '2001-12-27', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(23, 'Elizabeth Edwards', 1, 'Ashley Campbell', 100, 2.00, 0.00, '2014-06-16', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(24, 'Nicole Fox', 2, 'Lola Turner', 100, 4.00, 0.00, '2022-10-11', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(25, 'Katie Holmes', 3, 'Sienna Khan', 100, 4.00, 0.00, '1989-10-01', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(26, 'Laura Jones', 5, 'Wendy Matthews', 100, 4.00, 0.00, '2007-10-17', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(27, 'Dennis Walker', 2, 'Vicky Graham', 100, 9.00, 0.00, '1996-11-12', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(28, 'Lewis Allen', 2, 'Gavin Matthews', 100, 4.00, 0.00, '1997-05-19', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(29, 'Emma Mitchell', 4, 'Kirsten Watson', 100, 2.00, 0.00, '1974-06-08', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(30, 'Kieran Gray', 3, 'Vanessa Chapman', 100, 6.00, 0.00, '1994-01-21', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(31, 'Finley Wood', 3, 'Katie Palmer', 100, 4.00, 0.00, '1989-07-07', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(32, 'Caitlin Davies', 3, 'Will Morris', 100, 4.00, 0.00, '2000-07-01', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(33, 'Candice Anderson', 5, 'Sean Mason', 100, 2.00, 0.00, '2017-12-09', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(34, 'Dave Parker', 5, 'Fiona Rose', 100, 3.00, 0.00, '1987-12-25', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(35, 'Tina Holmes', 5, 'Aaron Carter', 100, 1.00, 0.00, '1998-10-07', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(36, 'Jeremy Adams', 3, 'Ethan Edwards', 100, 3.00, 0.00, '1992-11-09', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(37, 'Jack Wright', 5, 'David Hunter', 100, 2.00, 0.00, '1995-07-14', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(38, 'Chris Butler', 2, 'Oscar Hill', 100, 3.00, 0.00, '2009-09-19', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(39, 'George Harris', 1, 'Joel Thompson', 100, 3.00, 0.00, '1998-03-28', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(40, 'Samantha Butler', 3, 'Teagan Harrison', 100, 3.00, 0.00, '2017-11-09', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(41, 'Stefan Robertson', 1, 'Eileen Johnson', 100, 5.00, 0.00, '1985-12-01', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(42, 'Mohammed Martin', 5, 'Anna Gray', 100, 9.00, 0.00, '1993-12-28', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(43, 'Jennifer Roberts', 3, 'Toby Griffiths', 100, 6.00, 0.00, '1985-05-14', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(44, 'Eva Murphy', 5, 'Daniel Palmer', 100, 5.00, 0.00, '1986-11-05', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(45, 'Chris Cooper', 3, 'Lewis Shaw', 100, 2.00, 0.00, '2011-10-23', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(46, 'Lucy Owen', 2, 'Will Hill', 100, 4.00, 0.00, '1977-12-31', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(47, 'Archie Chapman', 5, 'Paula Bell', 100, 1.00, 0.00, '2002-07-07', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(48, 'Jim Davies', 5, 'Samuel Smith', 100, 6.00, 0.00, '1981-07-19', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(49, 'Lauren Palmer', 3, 'Charlotte Wright', 100, 1.00, 0.00, '1970-10-25', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(50, 'Connor James', 1, 'Hollie Bailey', 100, 2.00, 0.00, '1977-11-06', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(51, 'William Wilkinson', 4, 'Jake Hunter', 100, 5.00, 0.00, '2011-03-09', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(52, 'Poppy Harrison', 5, 'William Morgan', 100, 8.00, 0.00, '2016-12-14', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(53, 'Oliver Rogers', 2, 'Neil Davies', 100, 8.00, 0.00, '1987-11-12', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(54, 'Harrison Walker', 4, 'Charlotte Ellis', 100, 5.00, 0.00, '1972-11-04', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(55, 'Jackson Wood', 1, 'Lee Williams', 100, 6.00, 0.00, '1989-01-31', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(56, 'Andy Evans', 1, 'Finley Campbell', 100, 4.00, 0.00, '2000-07-19', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(57, 'Lee Shaw', 5, 'Craig Harrison', 100, 8.00, 0.00, '2011-03-03', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(58, 'Toby Patel', 5, 'Dan Reid', 100, 7.00, 0.00, '1973-05-09', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(59, 'Jennifer Shaw', 2, 'Leah Jackson', 100, 1.00, 0.00, '1977-12-25', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(60, 'Faye Wilkinson', 4, 'Archie Price', 100, 4.00, 0.00, '1988-05-15', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(61, 'Freya Roberts', 4, 'Alexander Cox', 100, 1.00, 0.00, '1972-03-10', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(62, 'Rachel Hill', 3, 'Danielle Wilkinson', 100, 5.00, 0.00, '2004-08-26', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(63, 'Christopher Allen', 4, 'Andy Khan', 100, 8.00, 0.00, '2009-03-26', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(64, 'Ross Morris', 4, 'Duncan Powell', 100, 8.00, 0.00, '1990-05-07', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(65, 'Karlie Hill', 1, 'Zach Cook', 100, 4.00, 0.00, '2018-09-14', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(66, 'Yasmine Russell', 3, 'Riley Taylor', 100, 8.00, 0.00, '2013-09-25', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(67, 'Kirsty Hall', 4, 'Mandy Clark', 100, 9.00, 0.00, '1999-12-09', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(68, 'Alexander Roberts', 3, 'Max Jones', 100, 8.00, 0.00, '1985-12-21', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(69, 'Stephen Reid', 5, 'Imogen Phillips', 100, 2.00, 0.00, '1982-11-19', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(70, 'Liam Marshall', 3, 'Lucy Rose', 100, 8.00, 0.00, '1980-07-31', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(71, 'Matilda Kelly', 5, 'Christopher Shaw', 100, 6.00, 0.00, '2016-12-09', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(72, 'Reece Turner', 2, 'Hannah Hughes', 100, 2.00, 0.00, '2004-05-22', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(73, 'Sally Murray', 4, 'Harry Richardson', 100, 7.00, 0.00, '1982-04-21', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(74, 'Ryan Jackson', 4, 'Gavin Ross', 100, 4.00, 0.00, '2013-07-11', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(75, 'Lily Lloyd', 5, 'Teagan Moore', 100, 5.00, 0.00, '1997-03-05', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(76, 'Cameron Mitchell', 1, 'George Shaw', 100, 9.00, 0.00, '1986-07-23', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(77, 'Steve Rogers', 3, 'Samuel Bell', 100, 1.00, 0.00, '1983-05-07', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(78, 'Rebecca Mitchell', 4, 'Stefan Roberts', 100, 9.00, 0.00, '1971-09-07', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(79, 'Abbie Smith', 3, 'Arthur Hunter', 100, 4.00, 0.00, '2022-03-21', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(80, 'Emma Hall', 2, 'Isaac Evans', 100, 3.00, 0.00, '2003-01-04', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(81, 'Jonathan Watson', 4, 'Erin Harrison', 100, 1.00, 0.00, '2011-03-13', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(82, 'Nicole Adams', 3, 'Mason Green', 100, 2.00, 0.00, '2018-08-13', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(83, 'Sally Edwards', 4, 'Peter Marshall', 100, 7.00, 0.00, '1978-03-23', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(84, 'Leah Lewis', 1, 'Georgia Butler', 100, 3.00, 0.00, '2007-10-05', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(85, 'Holly Watson', 1, 'Dave Green', 100, 1.00, 0.00, '2010-07-04', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(86, 'George Anderson', 5, 'Dale Walsh', 100, 2.00, 0.00, '1980-02-22', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(87, 'Steve Gray', 3, 'Daisy Baker', 100, 8.00, 0.00, '2015-07-09', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(88, 'Roxanne Phillips', 1, 'Freya Harris', 100, 9.00, 0.00, '2001-05-09', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(89, 'Gary Bell', 2, 'Mike Gray', 100, 5.00, 0.00, '2020-03-30', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(90, 'Eva Wright', 4, 'Freya Watson', 100, 3.00, 0.00, '2013-01-04', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(91, 'Tara Powell', 4, 'Erin Jones', 100, 6.00, 0.00, '2005-03-27', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(92, 'Jim Roberts', 5, 'Amber Davis', 100, 8.00, 0.00, '1982-03-05', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(93, 'Florence Kennedy', 5, 'Rob Griffiths', 100, 9.00, 0.00, '2009-08-21', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(94, 'Selina Clark', 2, 'Joshua Stevens', 100, 6.00, 0.00, '1977-08-17', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(95, 'Dale Green', 3, 'Gavin Knight', 100, 5.00, 0.00, '1987-04-12', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(96, 'Lilly Robinson', 1, 'Joel Graham', 100, 7.00, 0.00, '2023-03-28', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(97, 'Grace Ellis', 4, 'Mia Bell', 100, 1.00, 0.00, '2013-06-29', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(98, 'Tom Collins', 2, 'Isaac Harrison', 100, 6.00, 0.00, '1992-08-26', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(99, 'Nicole Stewart', 2, 'Sally Khan', 100, 7.00, 0.00, '1978-04-25', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL),
(100, 'Theresa Murphy', 3, 'Olivia Graham', 100, 7.00, 0.00, '2022-08-14', 0, 1, '2023-04-14 15:40:34', '2023-04-14 15:40:34', NULL);

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
(1, 1, 'test', 'murphy.craig@example.org', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Pauline', 'Stevens', '2016-03-14', '310 Sophia Passage\nOliviaberg\nDY5 3EH', '1971-07-21', 'TQRtcCeIto', '2023-04-14 15:40:33', '2023-04-14 15:40:33', NULL),
(2, 1, 'hunt.ruby', 'william71@example.net', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Peter', 'Thomas', '1998-11-20', 'Flat 67r\nIsla Shoals\nLouisport\nBS6 9HE', '1973-01-15', 'RheTI2IVf5', '2023-04-14 15:40:33', '2023-04-14 15:40:33', NULL),
(3, 1, 'caroline50', 'megan.ellis@example.org', '$2b$10$KX2xzJUuXtTpP6LKv3IuLebp9TCtRA0/R7jzT5X4fa.nkQW0c9vBG', 'Charles', 'Hill', '1998-01-05', '99 Elliott Creek\nSouth Daniel\nOX4 1GF', '2016-08-11', 'g9bbsZz0iM', '2023-04-14 15:40:33', '2023-04-14 15:40:33', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
