-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 04:02 PM
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
(1, 'Megan Wright', 3, 'Carrie Russell', 100, 3.00, 0.00, '1991-12-28', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(2, 'Charlotte Hall', 4, 'Zachary Rogers', 100, 9.00, 0.00, '2020-06-01', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(3, 'Donna Johnson', 1, 'Noah Carter', 100, 4.00, 0.00, '1986-11-01', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(4, 'Charles Stevens', 1, 'Anthony Cox', 100, 3.00, 0.00, '2014-08-28', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(5, 'Eileen Hill', 4, 'Joseph Wood', 100, 3.00, 0.00, '1990-03-28', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(6, 'Ken Taylor', 1, 'Amelia Wilson', 100, 9.00, 0.00, '2018-10-13', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(7, 'Mia Owen', 1, 'Teagan Matthews', 100, 4.00, 0.00, '1974-12-06', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(8, 'Isla Mason', 1, 'Tyler Robinson', 100, 3.00, 0.00, '1972-09-11', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(9, 'Leah Wood', 1, 'Brandon Wilkinson', 100, 6.00, 0.00, '1989-09-17', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(10, 'Leanne Harrison', 4, 'Ross Rose', 100, 1.00, 0.00, '2003-01-27', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(11, 'Summer Edwards', 1, 'Bethany Hughes', 100, 5.00, 0.00, '1983-12-03', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(12, 'Mary Graham', 4, 'Anthony Watson', 100, 7.00, 0.00, '1981-10-10', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(13, 'Alexander Marshall', 1, 'Leanne Carter', 100, 9.00, 0.00, '2019-10-18', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(14, 'Paula Thompson', 4, 'Isobel Harris', 100, 3.00, 0.00, '1989-09-19', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(15, 'Kelly Evans', 5, 'Owen Russell', 100, 7.00, 0.00, '2019-08-21', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(16, 'Nikki Clarke', 4, 'Andy Powell', 100, 5.00, 0.00, '2007-05-08', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(17, 'Quentin Stevens', 1, 'Holly Moore', 100, 7.00, 0.00, '1996-09-29', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(18, 'Pauline Hunter', 3, 'Henry Gray', 100, 1.00, 0.00, '1993-10-23', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(19, 'Neil Richardson', 4, 'Elliot Green', 100, 5.00, 0.00, '2021-10-05', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(20, 'Jodie Turner', 1, 'Tyler Adams', 100, 5.00, 0.00, '1997-01-22', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(21, 'Christopher Powell', 5, 'Ruby Robinson', 100, 8.00, 0.00, '1971-08-16', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(22, 'Lucy Reynolds', 5, 'Amelia Collins', 100, 9.00, 0.00, '2009-05-06', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(23, 'Jonathan Hughes', 5, 'Stephanie Jackson', 100, 9.00, 0.00, '2003-01-03', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(24, 'Joanne Owen', 4, 'Jacob Saunders', 100, 2.00, 0.00, '2013-03-10', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(25, 'Pauline Kennedy', 2, 'Phoebe Mitchell', 100, 7.00, 0.00, '2016-07-18', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(26, 'Scarlett Robertson', 1, 'Teagan Bennett', 100, 5.00, 0.00, '2003-11-07', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(27, 'Lucas Hunt', 1, 'Erin Martin', 100, 1.00, 0.00, '2004-10-27', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(28, 'Dylan Lee', 2, 'Sabrina Wood', 100, 9.00, 0.00, '1983-01-02', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(29, 'John Jones', 2, 'Joe Walker', 100, 6.00, 0.00, '2010-08-24', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(30, 'Roxanne Parker', 1, 'Yvonne Ward', 100, 5.00, 0.00, '1981-01-22', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(31, 'Sally Bennett', 4, 'Wayne Bennett', 100, 7.00, 0.00, '1991-04-03', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(32, 'Arthur Saunders', 1, 'Greg Baker', 100, 2.00, 0.00, '1972-11-14', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(33, 'Andrew Reynolds', 1, 'Kirsty Cooper', 100, 5.00, 0.00, '1994-07-10', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(34, 'Anthony Graham', 3, 'Jamie Hall', 100, 4.00, 0.00, '1972-11-18', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(35, 'Aaron King', 2, 'Steve Holmes', 100, 5.00, 0.00, '1972-03-13', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(36, 'Callum Price', 4, 'Freddie Young', 100, 1.00, 0.00, '1980-06-06', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(37, 'Ray Harris', 2, 'Henry Edwards', 100, 4.00, 0.00, '1981-10-12', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(38, 'Louis Jones', 2, 'Ryan Davis', 100, 1.00, 0.00, '2015-11-22', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(39, 'Wayne Williams', 2, 'Nick Clark', 100, 1.00, 0.00, '1982-04-09', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(40, 'Samuel Bailey', 1, 'Dean James', 100, 4.00, 0.00, '1985-07-10', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(41, 'Karl Lloyd', 1, 'Abbie Walsh', 100, 9.00, 0.00, '1985-10-08', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(42, 'Rob Stevens', 4, 'Rachel Powell', 100, 7.00, 0.00, '2006-10-15', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(43, 'Ella Hall', 1, 'Faye Moore', 100, 7.00, 0.00, '1971-12-27', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(44, 'Gary Parker', 4, 'Graham Kelly', 100, 5.00, 0.00, '2005-08-05', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(45, 'Jessica Turner', 3, 'Benjamin Graham', 100, 2.00, 0.00, '1977-03-06', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(46, 'Kelly Jones', 2, 'Fiona Stewart', 100, 7.00, 0.00, '1973-07-31', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(47, 'Freya Anderson', 1, 'Carole Walsh', 100, 7.00, 0.00, '2009-10-25', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(48, 'Aiden Ellis', 3, 'Faye Moore', 100, 5.00, 0.00, '1985-08-24', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(49, 'Rachel Saunders', 4, 'Nikki Fox', 100, 2.00, 0.00, '1984-09-15', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(50, 'Lindsay Chapman', 3, 'Donna Hunter', 100, 5.00, 0.00, '2010-01-03', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(51, 'Peter Phillips', 1, 'Luke Wright', 100, 2.00, 0.00, '2007-03-19', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(52, 'Ross Wilson', 1, 'Vicky Matthews', 100, 4.00, 0.00, '2000-05-16', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(53, 'Bethany Collins', 5, 'Julia Wilkinson', 100, 7.00, 0.00, '2011-12-26', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(54, 'Kelly Taylor', 1, 'Sarah Reid', 100, 3.00, 0.00, '2008-08-07', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(55, 'Heather Wilkinson', 2, 'Jeremy Ellis', 100, 9.00, 0.00, '1984-09-11', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(56, 'Kimberly Mitchell', 4, 'Emma Price', 100, 5.00, 0.00, '1971-11-22', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(57, 'William Russell', 3, 'Toby Butler', 100, 5.00, 0.00, '2021-08-20', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(58, 'Victoria Stevens', 2, 'Jonathan Clark', 100, 9.00, 0.00, '1980-10-31', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(59, 'Julie Williams', 1, 'Julia Adams', 100, 9.00, 0.00, '1988-03-20', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(60, 'Shannon Powell', 1, 'Erin Knight', 100, 5.00, 0.00, '1976-09-28', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(61, 'Maria Thomas', 4, 'Wayne Griffiths', 100, 6.00, 0.00, '2021-03-29', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(62, 'Tyler Simpson', 5, 'Aiden Adams', 100, 7.00, 0.00, '1990-02-14', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(63, 'Wendy Wood', 5, 'Harry Wilkinson', 100, 8.00, 0.00, '2013-07-30', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(64, 'Brandon Ellis', 1, 'James Wilson', 100, 2.00, 0.00, '1992-12-11', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(65, 'Joel Russell', 5, 'Isabella Knight', 100, 7.00, 0.00, '1973-02-20', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(66, 'William Matthews', 1, 'Isabelle Cox', 100, 1.00, 0.00, '1989-08-17', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(67, 'Finley Thompson', 3, 'Tom Wilkinson', 100, 4.00, 0.00, '1971-10-15', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(68, 'Alex Stewart', 1, 'Jessica Mason', 100, 9.00, 0.00, '2005-10-24', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(69, 'Jack Wilkinson', 1, 'Ethan Watson', 100, 9.00, 0.00, '2013-02-15', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(70, 'Riley Davies', 2, 'Natalie Murphy', 100, 8.00, 0.00, '1998-04-06', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(71, 'George Rogers', 5, 'Quentin Knight', 100, 2.00, 0.00, '1992-05-17', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(72, 'Sophie Reid', 1, 'Alex Ross', 100, 5.00, 0.00, '1985-08-25', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(73, 'Connor Evans', 4, 'Leo Mason', 100, 6.00, 0.00, '2018-01-28', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(74, 'Andrew Clarke', 2, 'Roxanne Matthews', 100, 5.00, 0.00, '1987-04-12', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(75, 'Abigail James', 1, 'Kirsty White', 100, 2.00, 0.00, '2004-10-19', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(76, 'Jack Lee', 2, 'Sophia Scott', 100, 1.00, 0.00, '1984-10-17', 0, 1, '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(77, 'Lizzie Carter', 4, 'Toby Anderson', 100, 7.00, 0.00, '1990-10-07', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(78, 'Carrie Rogers', 2, 'Mia Allen', 100, 6.00, 0.00, '1992-05-23', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(79, 'Scarlett Stewart', 5, 'Lexi Hall', 100, 5.00, 0.00, '1997-06-22', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(80, 'Lilly Walsh', 4, 'Mason Jones', 100, 6.00, 0.00, '2005-03-29', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(81, 'Jacob Reynolds', 4, 'James Bennett', 100, 7.00, 0.00, '2012-06-01', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(82, 'Theresa Phillips', 4, 'Julia Carter', 100, 5.00, 0.00, '1996-07-05', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(83, 'Aaron Adams', 2, 'Emily Harris', 100, 4.00, 0.00, '1972-03-02', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(84, 'Lee Ellis', 2, 'Lisa Smith', 100, 5.00, 0.00, '2000-03-25', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(85, 'John Turner', 5, 'Mohammed Davis', 100, 5.00, 0.00, '1984-01-03', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(86, 'Lola Edwards', 1, 'Adam Johnson', 100, 1.00, 0.00, '1977-09-11', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(87, 'Ray Murray', 5, 'Elliot Gray', 100, 6.00, 0.00, '2010-03-22', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(88, 'Paula Davies', 4, 'Mandy Davis', 100, 6.00, 0.00, '1971-09-15', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(89, 'Rachel Shaw', 2, 'Andy Baker', 100, 2.00, 0.00, '1989-07-22', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(90, 'Isla Hill', 1, 'Mark Rose', 100, 2.00, 0.00, '1970-01-16', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(91, 'Bruce Wood', 5, 'Pauline Collins', 100, 8.00, 0.00, '1996-07-16', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(92, 'Candice Miller', 3, 'Chloe Phillips', 100, 7.00, 0.00, '1972-02-29', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(93, 'Ellie Allen', 1, 'Ross Griffiths', 100, 4.00, 0.00, '2018-03-06', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(94, 'Thomas Gray', 3, 'Isabella Saunders', 100, 2.00, 0.00, '2002-07-13', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(95, 'Pauline Wilson', 5, 'Amber Davies', 100, 5.00, 0.00, '2003-10-25', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(96, 'Daniel Bailey', 1, 'Mike Butler', 100, 7.00, 0.00, '2015-07-14', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(97, 'Chloe Carter', 2, 'Neil King', 100, 7.00, 0.00, '1981-04-04', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(98, 'Caitlin Mason', 2, 'Mason Rose', 100, 5.00, 0.00, '1986-07-17', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(99, 'Bradley King', 2, 'Benjamin Bell', 100, 7.00, 0.00, '2014-05-23', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL),
(100, 'Isla Davis', 2, 'Rebecca Walker', 100, 2.00, 0.00, '2004-03-24', 0, 1, '2023-04-05 13:01:52', '2023-04-05 13:01:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'manager id',
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
  `total_quantity` int(11) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `tax` double(8,2) NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `payment` double(8,2) NOT NULL,
  `changes` double(8,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL COMMENT 'card/cash',
  `status` varchar(255) NOT NULL COMMENT 'completed/pending/refunded',
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
(1, 1, 'gwhite', 'saunders.christopher@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Craig', 'Johnson', '1978-07-03', '79 Stevens Locks\nAaronmouth\nOL12 6RA', '2002-09-20', 'mO8ZnC0czk', '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(2, 1, 'theresa77', 'taylor.lindsay@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Caroline', 'Hughes', '1976-09-19', '7 Hill Forges\nEast Samuelmouth\nAB31 5ZD', '1989-09-22', 'zw5G4HKeDs', '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL),
(3, 1, 'adams.fiona', 'irussell@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Connor', 'Wilkinson', '1973-09-22', '1 Julie Lock\nNorth Jasonmouth\nW14 8AZ', '1986-08-17', '2d9hwsz0sl', '2023-04-05 13:01:51', '2023-04-05 13:01:51', NULL);

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
