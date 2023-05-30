-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 11:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(57, 32, 24, 'grapes', 150, 1, 'blue grapes.png'),
(58, 32, 36, 'Chicken leg pieces', 200, 1, 'chicken leg pieces.png'),
(59, 32, 37, 'Chicken', 500, 1, 'chicken.png'),
(60, 32, 28, 'Strawberry', 120, 1, 'strawberry.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 36, 'anu', 'ganga@gmail.com', '234567890', 'hiii');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 36, 'ANU PRIYA', '1549874563', 'anu143467@gmail.com', 'cash on delivery', 'flat no. jrg 654554 jrg Andra pradesh India - 534447', ', grapes ( 1 )', 150, '01-May-2023', 'pending'),
(13, 32, 'anu', '1234567890', 'anu143467@gmail.com', 'credit card', 'flat no. jrg 654554 jrg Andra pradesh India - 123456', ', Banana ( 1 ), apple ( 1 ), Strawberry ( 1 ), grapes ( 1 ), Water melon ( 1 )', 670, '03-May-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(24, 'grapes', 'fruits', 'Organic', 150, 'blue grapes.png'),
(25, 'apple', 'fruits', 'organic', 300, 'apple.png'),
(26, 'Water melon', 'fruits', 'Fresh organic', 50, 'watermelon.png'),
(27, 'Banana', 'fruits', 'Organic fresh banana', 50, 'banana.png'),
(28, 'Strawberry', 'fruits', 'Organic fruits', 120, 'strawberry.png'),
(29, 'Capsicum', 'vegitables', 'Organic vegetables', 100, 'capsicum.png'),
(30, 'Broccoli', 'vegitables', 'Organic leafy vegetables', 70, 'broccoli.png'),
(31, 'Cabbage', 'vegitables', 'Organic ', 40, 'cabbage.png'),
(32, 'Cauliflower', 'vegitables', 'Organic', 50, 'cauliflower.png'),
(33, 'Mirchi', 'vegitables', 'Organic ', 40, 'red papper.png'),
(34, 'Carrot', 'vegitables', 'Organic', 80, 'carrot.png'),
(35, 'Lichi', 'fruits', 'Organic', 50, 'lichi.png'),
(36, 'Chicken leg pieces', 'meat', 'Fresh', 200, 'chicken leg pieces.png'),
(37, 'Chicken', 'meat', 'Fresh ', 500, 'chicken.png'),
(38, 'Beef', 'meat', 'Fresh', 200, 'beaf steak.png'),
(39, 'Salmon fish', 'fish', 'Fresh', 300, 'salmon fish.png'),
(40, 'Semon', 'fish', 'Fresh', 350, 'semon fish.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'admin',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(32, 'ganga', 'ganga@gmail.com', '71934b60ae13ac658efc35ed4055a934', 'user', 'WhatsApp Image 2023-04-17 at 14.30.02.jpg'),
(33, 'admin', 'admin01@gmail.com', '89a4b5bd7d02ad1e342c960e6a98365c', 'user', 'pink flowers.jpg'),
(34, 'admin1', 'admin1@gmail.com', '89a4b5bd7d02ad1e342c960e6a98365c', 'user', 'anu1.jpg'),
(35, 'admin123', 'admin123@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', 'nana.jpg'),
(36, 'admin', 'admin2@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user', 'TINKU.jpg'),
(37, '', '', '', 'admin', ''),
(38, 'anu', '12@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin', 'BG.jpeg'),
(39, 'nagesh', 'nagesh@gmail.com', '9fdc8b3f3027472d64e26a8e88fa2727', 'admin', 'nana.jpg'),
(40, 'lucky', 'lucky@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', 'profile1.jpg'),
(41, 'aswin', 'ashwin@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', '6.jpg'),
(42, 'user ashwin', 'asdf@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin', '9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
