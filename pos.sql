-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 04:54 PM
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
(1, 'Keeley Brown', 2, 'Isabelle White', 100, 1.00, 0.00, '2021-08-28', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(2, 'Mike Rogers', 5, 'Kirsty Jones', 100, 4.00, 0.00, '2012-05-16', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(3, 'Lauren Rose', 3, 'Kelly Lee', 100, 6.00, 0.00, '2013-08-08', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(4, 'Eden King', 3, 'Scott Parker', 100, 8.00, 0.00, '1994-07-04', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(5, 'Mandy Hill', 2, 'Imogen Wood', 100, 9.00, 0.00, '2000-02-12', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(6, 'Chris Reid', 4, 'William Collins', 100, 1.00, 0.00, '2014-03-25', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(7, 'Zach Smith', 2, 'Lilly Young', 100, 2.00, 0.00, '1996-12-05', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(8, 'Cameron Jones', 4, 'Kirsty Mitchell', 100, 6.00, 0.00, '2002-06-13', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(9, 'Joanne King', 1, 'Alan Shaw', 100, 5.00, 0.00, '1988-02-12', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(10, 'Gavin Cooper', 2, 'Roxanne Carter', 100, 1.00, 0.00, '1970-02-09', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(11, 'Toby Richards', 2, 'Fred Lewis', 100, 7.00, 0.00, '2015-04-08', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(12, 'Kimberly Baker', 5, 'Carrie Carter', 100, 4.00, 0.00, '2014-03-19', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(13, 'Natasha Graham', 2, 'Lindsay Anderson', 100, 2.00, 0.00, '1981-10-25', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(14, 'Muhammad Russell', 5, 'Adrian Johnson', 100, 1.00, 0.00, '2010-10-11', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(15, 'Gordon Watson', 1, 'Selina Anderson', 100, 6.00, 0.00, '1995-10-18', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(16, 'Linda Thompson', 1, 'Nathan Carter', 100, 1.00, 0.00, '2022-04-26', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(17, 'Jason Clarke', 1, 'Daniel Phillips', 100, 8.00, 0.00, '1980-11-08', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(18, 'Wayne Richards', 2, 'Jeremy Rogers', 100, 7.00, 0.00, '2010-06-03', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(19, 'Lauren Baker', 1, 'Poppy Taylor', 100, 2.00, 0.00, '1995-09-15', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(20, 'Jade Butler', 1, 'Tony Scott', 100, 8.00, 0.00, '2023-02-03', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(21, 'John Jones', 5, 'Ashley Watson', 100, 9.00, 0.00, '2017-05-08', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(22, 'Nathan Cooper', 1, 'Theresa White', 100, 3.00, 0.00, '2004-05-27', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(23, 'Olivia Gray', 2, 'Kirsty Wright', 100, 8.00, 0.00, '1980-03-11', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(24, 'Caroline Wilkinson', 3, 'Natasha Wilkinson', 100, 3.00, 0.00, '2017-02-25', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(25, 'Patrick Bell', 3, 'Peter Gray', 100, 4.00, 0.00, '1979-08-29', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(26, 'Kimberly Rose', 2, 'Eden Fox', 100, 2.00, 0.00, '1977-11-22', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(27, 'Barry Stewart', 3, 'Ken Miller', 100, 9.00, 0.00, '2018-02-18', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(28, 'Charlie Robertson', 4, 'Kirsty Hall', 100, 7.00, 0.00, '1989-02-09', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(29, 'Daisy Phillips', 1, 'Candice Robinson', 100, 3.00, 0.00, '1987-10-19', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(30, 'Lily Stewart', 3, 'Ethan Carter', 100, 2.00, 0.00, '1989-11-02', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(31, 'Neil Reynolds', 5, 'Jessica Owen', 100, 8.00, 0.00, '1993-01-27', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(32, 'Francesca Gray', 1, 'Pete Murray', 100, 8.00, 0.00, '1993-02-24', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(33, 'Tony Morris', 5, 'Karlie Cook', 100, 2.00, 0.00, '2009-03-24', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(34, 'Aaron Price', 2, 'Molly Stevens', 100, 4.00, 0.00, '2007-07-14', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(35, 'Ethan Anderson', 4, 'Alan Robinson', 100, 5.00, 0.00, '1972-09-22', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(36, 'Reece Robinson', 5, 'Rachel Young', 100, 8.00, 0.00, '2015-02-03', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(37, 'Eleanor Reynolds', 2, 'Matthew Hunter', 100, 6.00, 0.00, '2020-02-12', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(38, 'Gordon Reynolds', 5, 'Sonia Harrison', 100, 7.00, 0.00, '1998-08-25', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(39, 'Mark Collins', 5, 'Charlotte Roberts', 100, 6.00, 0.00, '2003-11-05', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(40, 'Pete Butler', 1, 'Maisie Harrison', 100, 5.00, 0.00, '1971-12-25', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(41, 'Amanda Knight', 1, 'Amanda Reynolds', 100, 5.00, 0.00, '1971-02-01', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(42, 'Quentin Roberts', 2, 'Lily Shaw', 100, 1.00, 0.00, '1985-06-30', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(43, 'Amy Rogers', 3, 'Emma Robertson', 100, 1.00, 0.00, '1977-03-27', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(44, 'Mason Green', 1, 'Zach Campbell', 100, 8.00, 0.00, '1974-05-19', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(45, 'Millie Watson', 2, 'Sasha Mitchell', 100, 5.00, 0.00, '1987-05-27', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(46, 'Eileen Shaw', 2, 'Scarlett Hall', 100, 6.00, 0.00, '1985-06-04', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(47, 'Ruth Clark', 2, 'Millie Russell', 100, 6.00, 0.00, '2010-10-17', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(48, 'Ken Green', 4, 'Harry Thomas', 100, 9.00, 0.00, '2007-11-12', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(49, 'Ruby Chapman', 5, 'Freddie Marshall', 100, 1.00, 0.00, '1984-01-20', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(50, 'Carrie Richardson', 3, 'Heather Wood', 100, 5.00, 0.00, '1986-12-01', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(51, 'Dylan Wilkinson', 5, 'Dennis Marshall', 100, 3.00, 0.00, '2003-02-01', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(52, 'Jade Moore', 4, 'David Davies', 100, 8.00, 0.00, '1987-06-06', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(53, 'Michael Wood', 1, 'Harry Shaw', 100, 9.00, 0.00, '1974-02-05', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(54, 'Harvey Rogers', 5, 'Donna Brown', 100, 8.00, 0.00, '1987-08-30', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(55, 'Rob Watson', 1, 'Alice Cooper', 100, 4.00, 0.00, '2006-10-06', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(56, 'Joe Bennett', 5, 'Wendy Roberts', 100, 4.00, 0.00, '2016-06-20', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(57, 'Andrew Phillips', 4, 'Courtney Ross', 100, 8.00, 0.00, '1986-03-09', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(58, 'Eden Thompson', 5, 'Theo Matthews', 100, 6.00, 0.00, '1979-10-21', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(59, 'Beth Griffiths', 2, 'Julie Price', 100, 8.00, 0.00, '1994-05-27', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(60, 'Adam Scott', 4, 'Isaac Bell', 100, 1.00, 0.00, '1980-08-14', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(61, 'Ryan James', 3, 'Ryan Price', 100, 4.00, 0.00, '2021-07-31', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(62, 'Alan Baker', 2, 'Anna Kennedy', 100, 6.00, 0.00, '1972-02-09', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(63, 'Paula Watson', 2, 'Theo Powell', 100, 3.00, 0.00, '1975-03-14', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(64, 'Scott Davis', 3, 'Abigail King', 100, 8.00, 0.00, '1987-06-30', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(65, 'Damien Brown', 1, 'Charlie Richards', 100, 1.00, 0.00, '2023-04-09', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(66, 'Kelly Moore', 4, 'Alfie Murphy', 100, 6.00, 0.00, '1981-12-27', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(67, 'Donna Holmes', 2, 'David Davis', 100, 9.00, 0.00, '1979-10-03', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(68, 'Isaac Johnson', 2, 'Alan Scott', 100, 8.00, 0.00, '1987-05-30', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(69, 'Owen Wood', 1, 'Gary Price', 100, 5.00, 0.00, '1970-02-07', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(70, 'Jonathan King', 5, 'Yvette Parker', 100, 3.00, 0.00, '2018-11-30', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(71, 'Victoria Adams', 4, 'Courtney Powell', 100, 7.00, 0.00, '1982-05-14', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(72, 'Elliot Stevens', 4, 'Faye Palmer', 100, 6.00, 0.00, '1982-02-14', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(73, 'Lee Adams', 1, 'Liam Robertson', 100, 2.00, 0.00, '2015-07-25', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(74, 'Isabella Butler', 4, 'Stefan Jackson', 100, 6.00, 0.00, '2006-04-26', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(75, 'Holly Ellis', 3, 'Lexi Evans', 100, 7.00, 0.00, '1991-03-18', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(76, 'Grace Kennedy', 4, 'Gordon Robinson', 100, 2.00, 0.00, '2011-05-14', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(77, 'Alan Kelly', 1, 'Dennis Murphy', 100, 4.00, 0.00, '1980-03-17', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(78, 'Neil Campbell', 4, 'James Walker', 100, 6.00, 0.00, '1996-11-15', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(79, 'Craig Hunt', 5, 'Adam Adams', 100, 7.00, 0.00, '1986-04-26', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(80, 'Jeremy Stewart', 3, 'Tim Jackson', 100, 8.00, 0.00, '2009-04-09', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(81, 'Helena Cox', 5, 'Imogen Scott', 100, 6.00, 0.00, '1988-02-18', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(82, 'Rachel Thompson', 5, 'Will Powell', 100, 9.00, 0.00, '2009-07-08', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(83, 'Craig Davies', 2, 'Joe Cooper', 100, 1.00, 0.00, '2002-03-02', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(84, 'Summer Hill', 1, 'Lily Chapman', 100, 4.00, 0.00, '2011-09-30', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(85, 'Thomas Harris', 3, 'Sally Saunders', 100, 4.00, 0.00, '1995-05-08', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(86, 'Jack Kennedy', 2, 'Stephanie Collins', 100, 9.00, 0.00, '1979-08-20', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(87, 'Sonia Thomas', 3, 'Kevin Shaw', 100, 9.00, 0.00, '2000-12-22', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(88, 'Max Morris', 3, 'Ross Reid', 100, 2.00, 0.00, '2015-10-21', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(89, 'Tiffany Young', 2, 'Darren Allen', 100, 6.00, 0.00, '1970-06-12', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(90, 'Peter Clark', 1, 'Ella Stewart', 100, 7.00, 0.00, '1975-07-21', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(91, 'Carole Johnson', 4, 'Linda Wilkinson', 100, 2.00, 0.00, '1999-03-28', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(92, 'Anna Owen', 2, 'Ryan White', 100, 8.00, 0.00, '2013-10-20', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(93, 'Joanne King', 3, 'Naomi Griffiths', 100, 9.00, 0.00, '1984-03-03', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(94, 'Will Taylor', 4, 'Aiden Lee', 100, 3.00, 0.00, '1999-01-01', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(95, 'Daniel Ward', 4, 'Eva Anderson', 100, 8.00, 0.00, '1997-11-22', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(96, 'Mandy Carter', 2, 'Evie Lloyd', 100, 3.00, 0.00, '2017-07-25', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(97, 'Florence White', 2, 'Jayden Wright', 100, 6.00, 0.00, '1997-02-14', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(98, 'Suzanne Martin', 3, 'Muhammad James', 100, 8.00, 0.00, '1972-03-03', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(99, 'Hannah Clark', 2, 'Sophia Stewart', 100, 5.00, 0.00, '2018-07-15', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(100, 'Jason Griffiths', 1, 'Aaron Knight', 100, 3.00, 0.00, '2000-07-30', 0, 1, '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL);

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
(1, 1, 'beth.thompson', 'harley.kennedy@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sebastian', 'Robinson', '2010-01-08', 'Flat 76\nEmma Ports\nSouth Anthonychester\nEX12 2WH', '1990-03-05', '0teZqpbAvN', '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(2, 1, 'roberts.peter', 'jacob80@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Alexander', 'Walker', '1991-09-18', 'Flat 74l\nNeil Drive\nNew Leo\nG69 7EA', '1993-06-23', 'dIb9aYiYLM', '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL),
(3, 1, 'samuel.harrison', 'emma.palmer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Quentin', 'Davis', '2019-05-17', '200 Ward Mountain\nSarahhaven\nBL6 6YT', '1992-11-17', 'uoneNDq4Jr', '2023-04-11 13:54:41', '2023-04-11 13:54:41', NULL);

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
