-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 06:02 PM
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
  `discounted_price` double(8,2) DEFAULT NULL,
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
(1, 'Mark Harris', 5, 'Isabel Price', 100, 4.00, NULL, '1971-08-18', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(2, 'Dean Taylor', 2, 'Tara Lewis', 100, 7.00, NULL, '1998-06-23', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(3, 'Poppy Davies', 1, 'Mason Hughes', 100, 2.00, NULL, '1988-12-16', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(4, 'Erin Russell', 2, 'Steve Evans', 100, 9.00, NULL, '2004-04-29', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(5, 'Noah Bennett', 4, 'Beth Morris', 100, 5.00, NULL, '2018-09-14', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(6, 'Wayne Williams', 2, 'Scott Marshall', 100, 7.00, NULL, '1971-08-18', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(7, 'Gordon Wright', 2, 'Anna Griffiths', 100, 6.00, NULL, '1988-11-14', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(8, 'Damien Parker', 1, 'Leanne Harris', 100, 6.00, NULL, '1986-04-07', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(9, 'Alexa Taylor', 2, 'Alfie Patel', 100, 9.00, NULL, '1989-03-20', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(10, 'Sally Powell', 3, 'Tanya Stewart', 100, 4.00, NULL, '1977-01-26', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(11, 'Owen Jackson', 1, 'Oliver Graham', 100, 4.00, NULL, '1970-01-08', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(12, 'Stacey Wright', 4, 'Neil Rogers', 100, 2.00, NULL, '1994-01-21', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(13, 'Ellie Jones', 1, 'Archie Davis', 100, 5.00, NULL, '2021-09-18', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(14, 'Bradley Stevens', 1, 'Eileen Campbell', 100, 7.00, NULL, '2004-11-29', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(15, 'Gavin Phillips', 2, 'Emma Baker', 100, 1.00, NULL, '2004-03-11', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(16, 'Mark Harrison', 3, 'Natasha Kennedy', 100, 9.00, NULL, '2018-01-28', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(17, 'Lucas Thompson', 2, 'Edward Bailey', 100, 3.00, NULL, '1976-04-06', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(18, 'Maisie Palmer', 3, 'Logan Ward', 100, 1.00, NULL, '1975-01-03', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(19, 'Shannon Holmes', 3, 'Isaac Smith', 100, 7.00, NULL, '1986-07-13', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(20, 'Yvonne Anderson', 2, 'Riley Campbell', 100, 6.00, NULL, '1999-07-06', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(21, 'Grace Kennedy', 2, 'Caroline Davis', 100, 3.00, NULL, '1986-09-13', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(22, 'Kieran Knight', 5, 'Ethan Anderson', 100, 7.00, NULL, '2013-02-11', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(23, 'Riley Hunt', 1, 'Harry Young', 100, 8.00, NULL, '1989-01-28', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(24, 'Candice Baker', 2, 'Charlie Ward', 100, 3.00, NULL, '1984-12-20', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(25, 'Karen Bailey', 3, 'Freya Bell', 100, 5.00, NULL, '1997-08-31', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(26, 'Harley White', 3, 'Christopher Thomas', 100, 3.00, NULL, '2021-02-19', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(27, 'Helena Hunt', 1, 'Will Matthews', 100, 6.00, NULL, '2019-11-20', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(28, 'Joseph Brown', 2, 'Carlie Reynolds', 100, 9.00, NULL, '2018-10-04', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(29, 'Oliver Murray', 3, 'Quentin Bailey', 100, 9.00, NULL, '1985-12-05', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(30, 'Duncan Thomas', 2, 'Yvonne Walker', 100, 7.00, NULL, '1997-04-29', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(31, 'Jake Price', 3, 'Alice Marshall', 100, 2.00, NULL, '2021-01-09', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(32, 'Alison Rose', 5, 'Scarlett Bailey', 100, 7.00, NULL, '1996-11-08', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(33, 'Hannah Clarke', 3, 'Ray Watson', 100, 2.00, NULL, '2006-09-24', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(34, 'Paula Adams', 1, 'Tara Ward', 100, 6.00, NULL, '2018-06-17', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(35, 'Adrian Clarke', 1, 'Nathan Wilkinson', 100, 9.00, NULL, '2014-12-07', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(36, 'Chelsea Graham', 1, 'Sofia Powell', 100, 2.00, NULL, '2010-12-19', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(37, 'Poppy White', 4, 'Lexi Turner', 100, 5.00, NULL, '1975-02-26', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(38, 'Charlotte James', 1, 'John Knight', 100, 9.00, NULL, '2010-05-08', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(39, 'Eleanor White', 2, 'Toby Holmes', 100, 9.00, NULL, '1990-05-23', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(40, 'Jonathan Clark', 5, 'Mason Wilkinson', 100, 2.00, NULL, '2012-05-30', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(41, 'Daniel Harrison', 5, 'Natasha Hill', 100, 5.00, NULL, '1976-07-09', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(42, 'Freddie Murphy', 5, 'Carrie Hunter', 100, 2.00, NULL, '1994-11-25', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(43, 'Sasha Smith', 3, 'Andrew Watson', 100, 3.00, NULL, '2003-08-11', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(44, 'Grant Mason', 4, 'Jim Richards', 100, 9.00, NULL, '2010-12-01', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(45, 'Mandy Walsh', 4, 'Rowena Griffiths', 100, 2.00, NULL, '2000-11-14', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(46, 'Alfie Saunders', 3, 'Amanda Ross', 100, 5.00, NULL, '2000-06-06', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(47, 'James Walsh', 3, 'Yvonne Wilkinson', 100, 6.00, NULL, '1972-10-06', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(48, 'Alfie Allen', 2, 'Scott Lloyd', 100, 9.00, NULL, '1974-12-07', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(49, 'Millie Cooper', 5, 'Brandon Morris', 100, 4.00, NULL, '1998-10-13', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(50, 'James Turner', 5, 'Harrison Martin', 100, 1.00, NULL, '2011-10-09', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(51, 'William Lee', 5, 'Damien Walsh', 100, 2.00, NULL, '2018-03-16', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(52, 'Adam Marshall', 3, 'Patrick Hill', 100, 5.00, NULL, '2018-05-22', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(53, 'Stefan Hill', 4, 'Jessica Baker', 100, 4.00, NULL, '1985-09-10', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(54, 'Frank Lewis', 4, 'Wayne Parker', 100, 8.00, NULL, '1989-07-10', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(55, 'Kevin Chapman', 5, 'Philip Hughes', 100, 8.00, NULL, '1986-03-10', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(56, 'Keeley Griffiths', 4, 'Caitlin Adams', 100, 6.00, NULL, '2012-07-11', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(57, 'Dominic Bennett', 4, 'Isabelle Stewart', 100, 6.00, NULL, '2010-06-26', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(58, 'David Saunders', 3, 'Sienna White', 100, 6.00, NULL, '1995-09-09', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(59, 'Julia Mason', 1, 'Jane Griffiths', 100, 3.00, NULL, '2007-07-11', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(60, 'Abigail White', 3, 'Abigail Clarke', 100, 9.00, NULL, '2013-10-30', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(61, 'Christopher Matthews', 4, 'Philip Wright', 100, 5.00, NULL, '1976-12-17', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(62, 'Lexi Green', 1, 'Damien Parker', 100, 4.00, NULL, '1987-03-22', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(63, 'Alfie Price', 5, 'Abigail White', 100, 8.00, NULL, '1972-03-15', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(64, 'Brandon Ellis', 5, 'Kieran Marshall', 100, 6.00, NULL, '1980-02-01', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(65, 'Stacey Thompson', 4, 'Karen Morris', 100, 1.00, NULL, '1970-12-20', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(66, 'Ava Murray', 1, 'Samantha Thompson', 100, 4.00, NULL, '1974-11-21', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(67, 'Colin Parker', 1, 'Sophie Simpson', 100, 4.00, NULL, '1999-02-17', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(68, 'Alexander Powell', 3, 'Zachary Matthews', 100, 4.00, NULL, '2016-07-06', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(69, 'Neil Patel', 4, 'Wayne Williams', 100, 5.00, NULL, '2005-05-29', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(70, 'Isabella Miller', 4, 'Megan Cox', 100, 4.00, NULL, '1996-08-13', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(71, 'Chelsea Rogers', 5, 'Erin Thomas', 100, 1.00, NULL, '2006-06-09', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(72, 'Kirsten Martin', 1, 'Lily Walsh', 100, 3.00, NULL, '2009-01-08', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(73, 'Dale Johnson', 3, 'Tim Matthews', 100, 2.00, NULL, '1991-05-14', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(74, 'Joel Mitchell', 5, 'Tom Young', 100, 8.00, NULL, '1998-04-20', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(75, 'Isaac Jones', 4, 'Rebecca Stevens', 100, 6.00, NULL, '1998-07-13', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(76, 'Justine Wilkinson', 2, 'Darren Marshall', 100, 4.00, NULL, '1992-11-21', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(77, 'Ava Thomas', 2, 'Zoe Chapman', 100, 6.00, NULL, '2023-02-12', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(78, 'Eva Williams', 5, 'Ruby Matthews', 100, 8.00, NULL, '2005-07-15', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(79, 'Isla Walsh', 1, 'Joseph Bennett', 100, 4.00, NULL, '1997-06-25', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(80, 'Kevin Walsh', 5, 'Harrison Hughes', 100, 3.00, NULL, '1990-11-10', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(81, 'Louis Williams', 5, 'Andrew Chapman', 100, 5.00, NULL, '2015-03-21', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(82, 'Isabel Roberts', 3, 'Max Ross', 100, 2.00, NULL, '1975-02-01', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(83, 'Alexandra Brown', 3, 'Ethan Butler', 100, 9.00, NULL, '2006-03-01', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(84, 'Wayne Hunter', 4, 'Cameron Marshall', 100, 8.00, NULL, '2015-11-27', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(85, 'Patrick Allen', 4, 'Megan Palmer', 100, 6.00, NULL, '1988-03-14', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(86, 'Craig Rogers', 4, 'Summer Gray', 100, 4.00, NULL, '2018-03-22', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(87, 'Dale Griffiths', 1, 'Jamie Bailey', 100, 9.00, NULL, '1985-03-02', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(88, 'Anthony Matthews', 1, 'Muhammad Russell', 100, 5.00, NULL, '2008-01-20', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(89, 'Beth Morgan', 4, 'Cameron Rogers', 100, 4.00, NULL, '1984-09-05', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(90, 'Jasmine Gray', 4, 'Pete Ward', 100, 7.00, NULL, '1971-11-06', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(91, 'Vanessa Holmes', 1, 'Lily Hunt', 100, 2.00, NULL, '1975-06-02', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(92, 'Lewis Lloyd', 3, 'Lucy Cooper', 100, 3.00, NULL, '1989-04-16', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(93, 'Vicky Thompson', 3, 'Rebecca Owen', 100, 8.00, NULL, '2011-03-30', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(94, 'Wendy Jackson', 3, 'Elliott Bell', 100, 1.00, NULL, '2004-12-18', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(95, 'William Griffiths', 2, 'Owen Robinson', 100, 9.00, NULL, '1972-06-22', 0, 1, '2023-03-27 00:23:57', '2023-03-27 00:23:57', NULL),
(96, 'Florence Hunter', 4, 'Nicole Powell', 100, 1.00, NULL, '2004-02-24', 0, 1, '2023-03-27 00:23:58', '2023-03-27 00:23:58', NULL),
(97, 'Zachary Scott', 1, 'Matthew Wilson', 100, 4.00, NULL, '1994-10-31', 0, 1, '2023-03-27 00:23:58', '2023-03-27 00:23:58', NULL),
(98, 'Andrew Griffiths', 2, 'Theresa Walsh', 100, 4.00, NULL, '1997-01-10', 0, 1, '2023-03-27 00:23:58', '2023-03-27 00:23:58', NULL),
(99, 'Mike Owen', 4, 'Stefan Stevens', 100, 9.00, NULL, '2017-03-06', 0, 1, '2023-03-27 00:23:58', '2023-03-27 00:23:58', NULL),
(100, 'Tina Bell', 4, 'Owen Evans', 100, 6.00, NULL, '2008-12-28', 0, 1, '2023-03-27 00:23:58', '2023-03-27 00:23:58', NULL);

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
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `used_date` date NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
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
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
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
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
