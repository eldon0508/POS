-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2023 at 04:01 PM
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
(1, 'Matilda Miller', 1, 'Carlie Price', 100, 1.00, 0.00, '2017-07-15', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(2, 'Joseph King', 3, 'Amy Harris', 100, 1.00, 0.00, '1988-02-01', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(3, 'Mohammed Ross', 4, 'Yvonne Thompson', 100, 4.00, 0.00, '1981-09-27', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(4, 'Grant Anderson', 1, 'Ben Adams', 100, 4.00, 0.00, '1995-04-22', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(5, 'Leah Hughes', 2, 'Heather Khan', 100, 2.00, 0.00, '1971-09-04', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(6, 'Frank Knight', 3, 'Tyler Edwards', 100, 9.00, 0.00, '1997-01-11', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(7, 'Dominic Thompson', 1, 'Elizabeth Rose', 100, 8.00, 0.00, '2004-05-28', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(8, 'Jamie Brown', 3, 'Neil Brown', 100, 7.00, 0.00, '2003-03-14', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(9, 'Nick Johnson', 5, 'Sally Wright', 100, 9.00, 0.00, '1989-04-19', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(10, 'Grace Martin', 3, 'Ben Walsh', 100, 8.00, 0.00, '2014-07-04', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(11, 'Jasmine Robertson', 1, 'Lucy Knight', 100, 2.00, 0.00, '1974-01-30', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(12, 'Patrick Allen', 5, 'Olivia Graham', 100, 8.00, 0.00, '1995-09-02', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(13, 'Dave Patel', 3, 'Mia Phillips', 100, 1.00, 0.00, '2001-01-05', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(14, 'Mark Campbell', 5, 'Pete Clark', 100, 5.00, 0.00, '1997-10-14', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(15, 'Tara Ross', 5, 'Donna Davis', 100, 1.00, 0.00, '1970-03-14', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(16, 'Barry Thomas', 3, 'Yvette Brown', 100, 6.00, 0.00, '2007-11-04', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(17, 'Stephen Knight', 2, 'Matilda Murphy', 100, 3.00, 0.00, '1974-05-12', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(18, 'Charlie Graham', 5, 'Lizzie Saunders', 100, 4.00, 0.00, '1975-05-23', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(19, 'Ray Wilkinson', 3, 'Francesca Turner', 100, 2.00, 0.00, '2004-11-12', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(20, 'Emily Kennedy', 2, 'John Miller', 100, 4.00, 0.00, '2021-12-18', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(21, 'Jake Brown', 1, 'Edward Richardson', 100, 8.00, 0.00, '2001-05-07', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(22, 'Karlie Mitchell', 5, 'Quentin Richardson', 100, 6.00, 0.00, '1974-04-28', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(23, 'Jake Patel', 2, 'Harley Matthews', 100, 8.00, 0.00, '1970-03-09', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(24, 'Colin Wood', 4, 'Lindsay Roberts', 100, 1.00, 0.00, '2013-10-27', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(25, 'Henry Graham', 5, 'Carmen Holmes', 100, 1.00, 0.00, '1988-04-13', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(26, 'Laura Phillips', 2, 'Chloe Simpson', 100, 6.00, 0.00, '2007-04-09', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(27, 'Francesca Stewart', 3, 'Rebecca Bell', 100, 9.00, 0.00, '1982-10-13', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(28, 'Christian Young', 5, 'Eileen Walsh', 100, 5.00, 0.00, '1996-08-29', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(29, 'Christian Hunter', 5, 'Tim Powell', 100, 8.00, 0.00, '1989-06-10', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(30, 'Yvette Watson', 4, 'Jasmine Wood', 100, 4.00, 0.00, '1996-07-09', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(31, 'Sofia Allen', 2, 'Ruby Simpson', 100, 2.00, 0.00, '2005-07-24', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(32, 'Eva Kelly', 5, 'Samantha King', 100, 2.00, 0.00, '1976-11-01', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(33, 'Chelsea White', 3, 'Colin Adams', 100, 6.00, 0.00, '1978-03-25', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(34, 'Eileen Mitchell', 5, 'Keith Allen', 100, 3.00, 0.00, '2006-10-04', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(35, 'Colin Fox', 2, 'Harvey Robinson', 100, 1.00, 0.00, '2008-03-29', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(36, 'Mohammed Jackson', 5, 'Megan Hunter', 100, 9.00, 0.00, '1999-07-13', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(37, 'Rosie Clark', 5, 'Elliott Hill', 100, 8.00, 0.00, '2002-04-20', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(38, 'Lee Edwards', 4, 'Leanne Wright', 100, 8.00, 0.00, '1980-11-07', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(39, 'Jamie Hughes', 1, 'Isaac Griffiths', 100, 4.00, 0.00, '2001-04-11', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(40, 'Poppy Smith', 1, 'Lee Murray', 100, 4.00, 0.00, '2000-02-21', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(41, 'Sabrina White', 5, 'Pete King', 100, 6.00, 0.00, '1975-03-03', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(42, 'Patrick Richardson', 5, 'Sean Evans', 100, 7.00, 0.00, '2003-08-15', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(43, 'Abigail Morgan', 4, 'Megan Harris', 100, 5.00, 0.00, '1982-08-11', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(44, 'Scarlett Cox', 1, 'Muhammad Smith', 100, 8.00, 0.00, '1977-10-25', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(45, 'Keith Saunders', 3, 'Samantha Russell', 100, 1.00, 0.00, '1975-12-24', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(46, 'Lucy Wood', 5, 'Ray Clark', 100, 3.00, 0.00, '1989-03-27', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(47, 'Lauren Adams', 5, 'Kieran Ellis', 100, 2.00, 0.00, '2009-09-12', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(48, 'Harley Hunt', 3, 'Imogen Campbell', 100, 9.00, 0.00, '1992-12-15', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(49, 'Ray Green', 5, 'Ken Khan', 100, 3.00, 0.00, '1999-09-28', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(50, 'Adele Mason', 5, 'Gordon Wilson', 100, 8.00, 0.00, '2021-06-22', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(51, 'Ian Shaw', 3, 'Grace Simpson', 100, 6.00, 0.00, '1985-10-07', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(52, 'Wayne Gray', 2, 'Amber Knight', 100, 4.00, 0.00, '2014-12-08', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(53, 'Theresa Bell', 2, 'Theo Matthews', 100, 7.00, 0.00, '2017-09-11', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(54, 'Jordan Davies', 3, 'Stephen Clark', 100, 4.00, 0.00, '2005-07-19', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(55, 'Donna Hunt', 2, 'Thomas Reid', 100, 1.00, 0.00, '2007-02-15', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(56, 'Alan Murray', 5, 'Abigail Hunter', 100, 9.00, 0.00, '1986-06-04', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(57, 'Roxanne Richardson', 5, 'Carlie Stevens', 100, 8.00, 0.00, '1976-06-24', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(58, 'Karl White', 2, 'Yasmine Thompson', 100, 4.00, 0.00, '1978-08-03', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(59, 'Alexandra Khan', 2, 'Adele Allen', 100, 8.00, 0.00, '1972-10-22', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(60, 'Jessica Shaw', 4, 'Ryan Harris', 100, 9.00, 0.00, '2007-11-20', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(61, 'Summer Martin', 2, 'Teagan Allen', 100, 2.00, 0.00, '2021-07-15', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(62, 'Zach Clark', 4, 'Zachary Harrison', 100, 1.00, 0.00, '1984-12-27', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(63, 'Freya Martin', 4, 'Lola Walker', 100, 9.00, 0.00, '1979-04-13', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(64, 'Matthew Cooper', 3, 'Alice Griffiths', 100, 1.00, 0.00, '2006-01-04', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(65, 'William Morris', 3, 'Tyler Bennett', 100, 7.00, 0.00, '1981-01-28', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(66, 'Imogen Wright', 5, 'Jodie Hughes', 100, 5.00, 0.00, '1991-09-21', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(67, 'Thomas Wright', 5, 'Lola Butler', 100, 4.00, 0.00, '1977-01-16', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(68, 'Damien Marshall', 4, 'Poppy Cook', 100, 1.00, 0.00, '2017-01-09', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(69, 'Caroline Wilson', 4, 'William Kelly', 100, 1.00, 0.00, '2001-02-02', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(70, 'Danielle Collins', 3, 'Ethan Campbell', 100, 7.00, 0.00, '1983-11-17', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(71, 'Chris Griffiths', 5, 'Lindsay Stewart', 100, 4.00, 0.00, '2008-11-17', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(72, 'Summer Lewis', 4, 'Jeremy Hunter', 100, 6.00, 0.00, '1994-08-08', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(73, 'Jamie Phillips', 3, 'Julia Moore', 100, 7.00, 0.00, '2006-03-18', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(74, 'Isla Holmes', 4, 'Selina Rogers', 100, 9.00, 0.00, '1972-07-17', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(75, 'Alex Baker', 1, 'Suzanne Watson', 100, 3.00, 0.00, '1993-04-05', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(76, 'Jacob Morris', 5, 'Lee Adams', 100, 2.00, 0.00, '2016-03-27', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(77, 'Sabrina Hughes', 3, 'Molly Rose', 100, 5.00, 0.00, '1982-10-22', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(78, 'Ellie Bailey', 1, 'Karlie Graham', 100, 5.00, 0.00, '1976-07-01', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(79, 'Sophie Bennett', 4, 'Tina Taylor', 100, 5.00, 0.00, '1978-08-09', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(80, 'Kimberly Robertson', 3, 'Tanya Ward', 100, 1.00, 0.00, '2004-06-15', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(81, 'Yvette Robinson', 5, 'Jack Hunt', 100, 2.00, 0.00, '1999-10-23', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(82, 'Heather Patel', 2, 'Kelly Knight', 100, 2.00, 0.00, '2012-09-20', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(83, 'Bruce Smith', 5, 'Harrison Baker', 100, 9.00, 0.00, '2010-04-07', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(84, 'Gordon Davis', 1, 'Lee Ward', 100, 5.00, 0.00, '2006-12-20', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(85, 'Jayden Hughes', 2, 'Peter Patel', 100, 1.00, 0.00, '1987-04-21', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(86, 'Matilda Clark', 4, 'Anthony Harrison', 100, 1.00, 0.00, '1995-05-21', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(87, 'Luke Phillips', 3, 'Dennis Hall', 100, 6.00, 0.00, '1993-07-10', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(88, 'Pauline Saunders', 3, 'Charles Mason', 100, 3.00, 0.00, '1972-02-23', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(89, 'Harrison Holmes', 1, 'Elliott Davies', 100, 5.00, 0.00, '1983-10-13', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(90, 'Graham Taylor', 5, 'Poppy Price', 100, 2.00, 0.00, '2018-03-18', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(91, 'Adele Wilkinson', 2, 'Joe White', 100, 2.00, 0.00, '1980-07-07', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(92, 'Linda Ellis', 2, 'Justine Lewis', 100, 8.00, 0.00, '1993-03-01', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(93, 'Gavin Robinson', 5, 'Ben Wright', 100, 1.00, 0.00, '1980-01-29', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(94, 'Theo Hill', 3, 'Mason Rose', 100, 6.00, 0.00, '1980-12-17', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(95, 'Sofia James', 5, 'Elizabeth Lee', 100, 5.00, 0.00, '2022-06-25', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(96, 'Faye James', 3, 'Stephanie Adams', 100, 1.00, 0.00, '2010-01-25', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(97, 'Yvonne Palmer', 5, 'Lexi Collins', 100, 5.00, 0.00, '1974-08-01', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(98, 'Duncan Russell', 1, 'Rosie Carter', 100, 7.00, 0.00, '2019-10-07', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(99, 'Grace Richardson', 2, 'Graham Knight', 100, 3.00, 0.00, '2014-03-23', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL),
(100, 'Sally Marshall', 1, 'Sean Thompson', 100, 1.00, 0.00, '1999-02-12', 0, 1, '2023-04-03 12:59:16', '2023-04-03 12:59:16', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `email`, `password`, `first_name`, `last_name`, `dob`, `address`, `join_date`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'lee77', 'selina.hunter@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Joseph', 'Clarke', '2008-07-29', '46 Brown Union\nElizabethshire\nBS6 9HE', '2006-03-29', 'LT1NIG1sAa', '2023-03-27 00:23:57', '2023-03-27 00:23:57'),
(2, 1, 'melissa76', 'alexa.collins@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hannah', 'Jackson', '1989-09-24', '9 Stewart Light\nStephenview\nNG34 9HJ', '1982-05-28', 'Lln6y56TkZ', '2023-03-27 00:23:57', '2023-03-27 00:23:57'),
(3, 1, 'hhall', 'jonathan.allen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Victoria', 'Simpson', '1977-02-16', 'Flat 01\nHunt Haven\nPhoebeside\nTW4 7JP', '1973-11-12', 'ZVocUaOsWV', '2023-03-27 00:23:57', '2023-03-27 00:23:57');

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
