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
(1, 'RadiantGlow', 3, 'A luminous foundation that gives your skin a radiant and natural glow. It provides medium coverage with a dewy finish, leaving your complexion looking fresh and illuminated throughout the day.', '/images/products/53495985-3afe-4711-b4ad-3ba8c8cd4f17.jpg', '.jpg', 30, 20.00, 4.50, '1984-06-03', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:34:02', NULL),
(2, 'Running Shoes', 5, 'lightweight and breathable running shoes are designed to provide optimal support and cushioning for runners.', '/images/products/5841972f-0893-4b8d-a814-4bd8dee2852b.webp', '.webp', 130, 100.00, 0.00, '2009-08-26', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:34:09', NULL),
(3, 'VelvetLuxe Lipstick', 3, 'A luxurious lipstick with a velvety smooth texture that glides effortlessly on the lips', '/images/products/af18187c-5f25-4913-9fed-af5f8a72c2cb.webp', '.webp', 45, 20.00, 0.00, '2009-10-27', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:34:18', NULL),
(4, 'Smartwatches', 4, 'Multi-functional wearable devices that offer features beyond timekeeping. Smartwatches can track fitness metrics, monitor heart rate, receive notifications, and even make phone calls or send messages', '/images/products/aeada348-a1cb-476c-af3b-21c5af782688.jpeg', '.jpeg', 28, 200.00, 0.00, '1988-09-30', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:34:23', NULL),
(5, 'Classic Margherita Pizza', 2, 'A timeless Italian pizza featuring a thin crust topped with rich tomato sauce, fresh mozzarella cheese, and fragrant basil leaves. ', '/images/products/704b81af-2604-4d98-9c5b-f7175a36e0e8.webp', '.webp', 10, 10.00, 0.00, '2012-06-10', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:37:15', NULL),
(6, 'Chocolate Lava Cake', 2, 'A decadent dessert that features a warm and gooey chocolate cake with a molten chocolate center.', '/images/products/4b90a973-99cb-4542-89f2-050194e73d18.jpg', '.jpg', 26, 10.00, 0.00, '2012-12-21', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:37:23', NULL),
(8, 'WaterColour Paints', 1, 'Watercolour paints from the industries leading manufacturers. Professional and students grades, in pots, tubes and pans', '/images/products/25456191-14d4-4537-b84d-717f47635777.webp', '.webp', 106, 15.00, 0.00, '1983-02-06', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:37:29', NULL),
(9, 'Graphite Pencils Set', 1, 'A set of high-quality graphite pencils that come in different hardness levels (ranging from 2H to 8B) to provide a range of shading and line options. These pencils are ideal for creating detailed drawings and achieving various tonal values.', '/images/products/020f347d-3d45-4c98-918f-f800d2ae320e.jpg', '.jpg', 20, 10.00, 0.00, '1982-06-15', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:37:35', NULL),
(10, 'Colored Pencil Set', 1, 'A collection of vibrant colored pencils that allow artists to add depth and richness to their drawings. These pencils come in a wide range of colors, providing versatility for creating colorful and expressive artwork.', '/images/products/ebab4b2f-3c79-4d1e-99e0-4655886adf44.jpg', '.jpg', 100, 10.50, 0.00, '1978-03-20', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:37:42', NULL),
(11, 'Eyeshadow Palette', 3, 'Unlock the magic of mesmerizing eyes with this enchanting eyeshadow palette.', '/images/products/f8e6481a-a0ed-4390-a81e-c7cafe9377ce.jpg', '.jpg', 40, 25.00, 0.00, '1985-10-13', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:37:52', NULL),
(12, 'BlushBloom Cheek Tint', 3, 'Add a natural flush of color to your cheeks with the BlushBloom Cheek Tint', '/images/products/aa771d8c-b65b-47a0-8862-a083ec8a34fc.jpg', '.jpg', 20, 23.00, 0.00, '1975-11-24', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:38:03', NULL),
(15, 'LashRevive Mascara', 3, 'This volumizing and lengthening mascara instantly lifts and defines your lashes, creating a dramatic and eye-opening effect', '/images/products/75b7af93-afb3-4478-912b-916955705392.avif', '.avif', 143, 23.00, 0.00, '2000-01-06', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:38:13', NULL),
(16, 'Minty Mojito Cooler', 2, 'A cool and invigorating beverage inspired by the classic mojito cocktail. This non-alcoholic version features a blend of fresh mint leaves, lime juice, and a touch of sweetness. Served over ice, it offers a refreshing burst of flavors.\r\n', '/images/products/193dc52f-a867-40c5-801c-ffd30eb6a474.jpg', '.jpg', 129, 10.00, 0.00, '1974-07-27', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:38:21', NULL),
(20, 'Ink Pens Set', 1, 'A set of high-quality ink pens with different tip sizes (such as fine, medium, and bold) that offer precision and control for detailed drawings. Ink pens are commonly used for creating illustrations, pen and ink sketches, and intricate line work.', '/images/products/27893cc2-2c0c-4971-8a4c-7ff6b8fe1389.jpg', '.jpg', 115, 7.09, 0.00, '2005-07-20', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:38:30', NULL),
(23, 'Tropical Paradise Punch', 2, 'A tropical-themed punch bursting with exotic fruit flavors. This vibrant beverage combines the juices of pineapple, mango, and passion fruit, creating a delightful and thirst-quenching drink reminiscent of a sunny beach getaway.', '/images/products/5b9a05a2-e2c7-4dd9-8687-e4adc6b6350b.jpg', '.jpg', 119, 3.50, 0.00, '2017-02-27', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:38:42', NULL),
(25, 'Sketchbook', 1, 'A durable and portable sketchbook with acid-free paper that provides a smooth surface for drawing. It allows artists to practice their skills, experiment with different techniques, and record their creative ideas on the go.', '/images/products/2ef9ece6-e8f1-4a8f-b9f0-cd841d494c34.jpg', '.jpg', 149, 9.00, 0.00, '2006-12-08', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:20:22', NULL),
(33, 'Adjustable Dumbbell Set', 5, 'A set of dumbbells that can be adjusted to different weights, providing versatility for strength training workouts. ', '/images/products/110cd8c5-f766-4d6f-bdf6-625aa9695b96.webp', '.webp', 52, 79.00, 0.00, '1974-10-22', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:38:52', NULL),
(34, 'Energizing Matcha Fusion', 2, 'A revitalizing and antioxidant-rich drink that blends premium Japanese matcha green tea with a hint of citrus and a touch of sweetness. This beverage provides a smooth and earthy flavor while delivering a natural energy boost.', NULL, NULL, 20, 6.00, 0.00, '1976-11-09', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:25:50', NULL),
(36, 'Yoga Mat', 5, 'A durable and non-slip mat designed specifically for yoga and other floor exercises. ', '/images/products/13ba15b4-b66b-486f-bad7-37721ab6444f.jpeg', '.jpeg', 108, 7.00, 0.00, '1989-02-26', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:26:13', NULL),
(37, 'Wireless Noise-Canceling Headphones', 4, 'These headphones offer a seamless wireless audio experience while effectively blocking out external noise', '/images/products/d074eacf-0794-4329-9a10-f784aa37cc6e.avif', '.avif', 59, 59.00, 0.00, '1986-09-21', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:39:10', NULL),
(42, 'Fitness Tracker', 4, 'A wearable device that tracks your physical activity, heart rate, sleep patterns, and more. It helps you monitor your fitness goals, set targets, and stay motivated.', '/images/products/9559162e-05bd-4dab-a9b3-7cc00930043d.png', '.png', 73, 109.00, 0.00, '2003-12-07', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:39:18', NULL),
(43, 'Sports Water Bottle', 5, 'A durable and leak-proof water bottle designed specifically for athletes and sports enthusiasts. These bottles are often made from BPA-free materials and feature a convenient sip or straw mechanism for easy hydration during workouts or outdoor activities', '/images/products/cb8def75-17fc-4243-960d-da6446252899.avif', '.avif', 79, 8.00, 0.00, '1993-10-04', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:27:19', NULL),
(44, 'Sports Compression Gear', 5, 'Compression clothing such as compression sleeves, leggings, or shirts designed to improve blood circulation, reduce muscle fatigue, and enhance performance during physical activities.', '/images/products/b634209a-1fa7-4b02-b528-5618d0329597.jpg', '.jpg', 103, 29.00, 0.00, '2007-05-18', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:39:39', NULL),
(48, 'Ultra HD Smart TV', 4, 'A high-resolution smart television with built-in streaming capabilities, providing access to various entertainment platforms like Netflix, Hulu, and YouTube. ', '/images/products/07ca3b96-8884-426c-952f-243af63f7f7a.jpeg', '.jpeg', 126, 409.00, 0.00, '1997-06-24', 0, 1, '2023-05-06 01:32:56', '2023-05-14 14:39:45', NULL);

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
