-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 03:49 PM
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
(1, 'Theresa Anderson', 4, 'Kirsten Richards', 100, 6.00, 0.00, '1990-05-24', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(2, 'Max Butler', 2, 'Yvonne Campbell', 100, 4.00, 0.00, '1981-02-14', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(3, 'Isaac Clarke', 4, 'Logan Adams', 100, 8.00, 0.00, '1979-03-25', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(4, 'Fiona Khan', 3, 'Zoe Murphy', 100, 9.00, 0.00, '2012-05-21', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(5, 'Eileen Stevens', 4, 'Neil Rose', 100, 9.00, 0.00, '2022-02-26', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(6, 'Melissa Allen', 1, 'Andy Evans', 100, 9.00, 0.00, '2019-03-09', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(7, 'Nikki Baker', 4, 'Joanne Ross', 100, 1.00, 0.00, '1986-09-15', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(8, 'Sophie Allen', 1, 'Adrian Taylor', 100, 1.00, 0.00, '1995-12-27', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(9, 'Rebecca King', 3, 'Karen Clarke', 100, 7.00, 0.00, '2019-03-03', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(10, 'Linda Morris', 2, 'Alex Cook', 100, 2.00, 0.00, '1989-05-16', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(11, 'Joanne Robertson', 4, 'Mia Chapman', 100, 8.00, 0.00, '2017-01-01', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(12, 'Leanne Smith', 1, 'Brandon Baker', 100, 6.00, 0.00, '1992-04-08', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(13, 'James Green', 2, 'Christopher Wilson', 100, 6.00, 0.00, '2007-08-22', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(14, 'Nathan Fox', 2, 'Zach Kennedy', 100, 2.00, 0.00, '1996-10-08', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(15, 'Jeremy Jones', 4, 'Emily Ross', 100, 7.00, 0.00, '1993-11-11', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(16, 'Evelyn Green', 3, 'Charlotte Holmes', 100, 7.00, 0.00, '1985-04-03', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(17, 'Ella Ross', 3, 'Suzanne Hunt', 100, 5.00, 0.00, '1974-10-16', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(18, 'Mike Allen', 2, 'Lucy Hill', 100, 7.00, 0.00, '2018-05-02', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(19, 'Karen Robinson', 2, 'Helena Wilson', 100, 4.00, 0.00, '2017-03-18', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(20, 'Will Jackson', 4, 'Lucy Reid', 100, 7.00, 0.00, '1977-08-26', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(21, 'Emma Williams', 4, 'Helen Stewart', 100, 7.00, 0.00, '1986-03-28', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(22, 'Ian Lewis', 2, 'Hollie Johnson', 100, 3.00, 0.00, '1988-12-20', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(23, 'Jordan Murray', 3, 'Theresa Chapman', 100, 9.00, 0.00, '1974-11-27', 0, 1, '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(24, 'Heather Ward', 2, 'Rosie Lloyd', 100, 3.00, 0.00, '1974-05-18', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(25, 'Natasha Miller', 3, 'Roxanne Hill', 100, 6.00, 0.00, '1979-11-16', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(26, 'Grant Young', 4, 'David Chapman', 100, 1.00, 0.00, '1984-06-18', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(27, 'Alison Lloyd', 2, 'Jasmine Clarke', 100, 7.00, 0.00, '2000-07-15', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(28, 'Sienna Powell', 5, 'Lee White', 100, 2.00, 0.00, '1970-04-22', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(29, 'Hannah Jackson', 5, 'Callum Ross', 100, 1.00, 0.00, '2013-05-12', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(30, 'Chelsea Wilkinson', 1, 'Rob Cooper', 100, 2.00, 0.00, '1985-09-12', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(31, 'Rob Jones', 3, 'Lizzie Bell', 100, 7.00, 0.00, '2004-01-29', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(32, 'Molly Saunders', 2, 'Jackson Palmer', 100, 8.00, 0.00, '2020-07-16', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(33, 'George Kennedy', 1, 'Rosie Powell', 100, 6.00, 0.00, '2020-06-14', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(34, 'Cameron Wood', 3, 'Linda James', 100, 9.00, 0.00, '2018-12-03', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(35, 'Yasmine Baker', 1, 'Harrison Butler', 100, 2.00, 0.00, '1987-04-29', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(36, 'Eden Holmes', 4, 'Zachary Edwards', 100, 9.00, 0.00, '2000-06-21', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(37, 'Naomi Ellis', 4, 'Rebecca Taylor', 100, 1.00, 0.00, '1975-09-24', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(38, 'Wayne Kelly', 5, 'Wayne Moore', 100, 5.00, 0.00, '2017-05-03', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(39, 'Logan Shaw', 1, 'Lauren Adams', 100, 7.00, 0.00, '2010-09-07', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(40, 'Michael Scott', 4, 'Ethan Ross', 100, 8.00, 0.00, '1998-12-25', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(41, 'Danielle Baker', 3, 'Lee Jones', 100, 5.00, 0.00, '2008-01-25', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(42, 'Philip Walsh', 2, 'Dan Young', 100, 9.00, 0.00, '1978-12-11', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(43, 'Caitlin Young', 1, 'Freya Khan', 100, 9.00, 0.00, '1995-10-28', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(44, 'Quentin Holmes', 1, 'Caroline Mitchell', 100, 9.00, 0.00, '1978-04-09', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(45, 'Jonathan Palmer', 4, 'Vicky Powell', 100, 9.00, 0.00, '1994-10-27', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(46, 'Sofia Davis', 2, 'Sebastian Lee', 100, 4.00, 0.00, '2002-05-08', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(47, 'Julia Adams', 4, 'Wendy Taylor', 100, 2.00, 0.00, '2019-05-06', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(48, 'Abigail Holmes', 5, 'Kirsty King', 100, 2.00, 0.00, '1971-07-14', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(49, 'Neil Hall', 1, 'Greg Clarke', 100, 8.00, 0.00, '1983-07-01', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(50, 'James Ross', 5, 'Callum Mitchell', 100, 5.00, 0.00, '1981-10-11', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(51, 'Isabelle Harris', 4, 'Paul Lloyd', 100, 3.00, 0.00, '2006-06-17', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(52, 'Ellie Cooper', 2, 'Phoebe Murphy', 100, 9.00, 0.00, '1978-10-08', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(53, 'Phoebe Richardson', 5, 'Grant Mason', 100, 7.00, 0.00, '1970-09-28', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(54, 'Rebecca Hughes', 2, 'Will Johnson', 100, 5.00, 0.00, '1990-03-06', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(55, 'Connor Anderson', 4, 'Oliver Walsh', 100, 6.00, 0.00, '1980-06-30', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(56, 'Ian Simpson', 5, 'Zoe Walsh', 100, 7.00, 0.00, '1988-11-28', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(57, 'Jessica Rose', 2, 'Amber Matthews', 100, 4.00, 0.00, '1974-09-27', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(58, 'Linda Collins', 4, 'Ella Thompson', 100, 7.00, 0.00, '2010-07-22', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(59, 'Kyle Scott', 5, 'Natalie Mason', 100, 9.00, 0.00, '2015-07-06', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(60, 'Vanessa Shaw', 3, 'Benjamin Cook', 100, 5.00, 0.00, '1998-10-03', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(61, 'Jayden Lloyd', 5, 'Nathan Young', 100, 9.00, 0.00, '2019-08-30', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(62, 'Shannon Phillips', 3, 'Emily Rogers', 100, 5.00, 0.00, '1975-08-30', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(63, 'Jason Wood', 3, 'Amanda Wilkinson', 100, 5.00, 0.00, '2023-01-15', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(64, 'Bethany Smith', 5, 'Patricia Lee', 100, 9.00, 0.00, '1991-11-01', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(65, 'Sabrina Owen', 1, 'Sofia Hall', 100, 9.00, 0.00, '2019-05-14', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(66, 'Joel Powell', 5, 'Evelyn Smith', 100, 4.00, 0.00, '1973-03-22', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(67, 'Gary Graham', 4, 'Karl Lloyd', 100, 5.00, 0.00, '1983-03-25', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(68, 'Ella Kelly', 5, 'Bradley Saunders', 100, 6.00, 0.00, '2003-08-25', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(69, 'Roxanne Reid', 5, 'Henry Stewart', 100, 5.00, 0.00, '1994-01-06', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(70, 'Karlie Chapman', 3, 'Keith Watson', 100, 3.00, 0.00, '1979-08-08', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(71, 'Lizzie Palmer', 5, 'Vicky Murray', 100, 1.00, 0.00, '1997-01-14', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(72, 'Aaron Wood', 1, 'Linda Davis', 100, 1.00, 0.00, '1986-03-04', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(73, 'Poppy Price', 3, 'Ethan Rose', 100, 5.00, 0.00, '2008-05-30', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(74, 'Chloe Shaw', 2, 'Gavin Khan', 100, 5.00, 0.00, '2006-12-18', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(75, 'Gavin Kelly', 2, 'Christian Ross', 100, 7.00, 0.00, '1994-11-01', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(76, 'Nikki Price', 1, 'Nicole Graham', 100, 9.00, 0.00, '1981-02-13', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(77, 'Karl Butler', 4, 'Greg Evans', 100, 5.00, 0.00, '1986-07-27', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(78, 'Carrie Hughes', 5, 'Lindsay Kelly', 100, 5.00, 0.00, '2008-08-12', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(79, 'Megan Robertson', 3, 'Dave Lloyd', 100, 6.00, 0.00, '1980-08-05', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(80, 'Jacob Marshall', 5, 'Andrew Marshall', 100, 1.00, 0.00, '2015-02-13', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(81, 'Jennifer King', 3, 'Charlotte Ellis', 100, 9.00, 0.00, '2005-09-11', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(82, 'Jasmine Taylor', 3, 'Emily Lee', 100, 9.00, 0.00, '2009-03-09', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(83, 'Dylan Bailey', 1, 'Sean Chapman', 100, 8.00, 0.00, '1983-01-24', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(84, 'Jacob Mason', 2, 'Owen Kelly', 100, 4.00, 0.00, '2014-12-17', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(85, 'Kimberly Stewart', 4, 'Holly Hughes', 100, 5.00, 0.00, '1987-11-11', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(86, 'Barry Shaw', 3, 'Barry Hill', 100, 6.00, 0.00, '1992-11-07', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(87, 'Thomas Scott', 3, 'Vanessa Watson', 100, 5.00, 0.00, '2018-10-27', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(88, 'Andrew Price', 5, 'Matthew Ross', 100, 8.00, 0.00, '1979-08-28', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(89, 'Alexandra Hunter', 2, 'Muhammad Hughes', 100, 6.00, 0.00, '2019-07-30', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(90, 'Joe Thomas', 2, 'Karlie Simpson', 100, 4.00, 0.00, '1981-01-12', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(91, 'Donna Griffiths', 3, 'Craig Gray', 100, 8.00, 0.00, '2018-05-11', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(92, 'Tim Ward', 5, 'Oliver Cox', 100, 4.00, 0.00, '1999-07-31', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(93, 'Kelly Gray', 4, 'Julie Watson', 100, 7.00, 0.00, '1999-08-17', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(94, 'Jackson Green', 2, 'Keith Smith', 100, 5.00, 0.00, '1990-07-29', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(95, 'Daisy King', 5, 'Oscar Clarke', 100, 7.00, 0.00, '1996-04-20', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(96, 'Lee Palmer', 2, 'Tyler Robinson', 100, 7.00, 0.00, '1984-04-02', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(97, 'Florence Knight', 2, 'Scott Carter', 100, 6.00, 0.00, '1974-05-21', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(98, 'Freddie Gray', 4, 'Carmen Harris', 100, 1.00, 0.00, '2020-07-02', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(99, 'Tim Jackson', 2, 'Thomas Evans', 100, 6.00, 0.00, '2005-02-09', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL),
(100, 'Tracy Robertson', 2, 'Dale Bailey', 100, 4.00, 0.00, '1971-06-24', 0, 1, '2023-04-07 12:48:53', '2023-04-07 12:48:53', NULL);

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
(1, 1, 'richardson.matthew', 'hannah.wilkinson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dave', 'Price', '1981-06-26', 'Flat 70x\nDavies Inlet\nNorth Darrenshire\nBS24 7AH', '2006-10-11', 'h7d5WbgnvD', '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(2, 1, 'ccooper', 'sally16@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Leanne', 'Hughes', '2012-11-21', '74 Jacob Mountain\nNorth Jodieland\nLS1 9QA', '1989-01-19', 'BEEYpc6suz', '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL),
(3, 1, 'clee', 'stacey.edwards@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Edward', 'Rogers', '1997-06-24', '227 Melissa Mountain\nSouth Nathan\nBR6 9XJ', '1981-03-27', 'PB6uLXuhLM', '2023-04-07 12:48:52', '2023-04-07 12:48:52', NULL);

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
