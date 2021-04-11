-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 03:23 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nsone`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price_normaly` float NOT NULL,
  `price_promo` float NOT NULL,
  `users_count` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `best_seller` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price_normaly`, `price_promo`, `users_count`, `discount`, `best_seller`) VALUES
(1, 'bayi', 19000, 14900, 938, NULL, 0),
(2, 'Pelajar', 48900, 23450, 4168, NULL, 0),
(3, 'Personal', 58900, 38900, 10017, NULL, 1),
(4, 'bisnis', 109900, 65900, 3552, 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(11) NOT NULL,
  `item_quota` varchar(30) NOT NULL,
  `item_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`id`, `id_product`, `item_quota`, `item_name`) VALUES
(1, 1, '0.5X RESOURCE POWER', ''),
(2, 1, '500 MB', 'Disk space'),
(3, 1, 'Unlimited', 'bandwith'),
(5, 1, 'Unlimited', 'database'),
(6, 1, '1', 'domain'),
(7, 1, 'instant', 'backup'),
(11, 1, 'Unlimited SSL', 'gratis selamanya'),
(12, 2, '1X RESOURCE POWER', ''),
(13, 2, 'Unlimited', 'Disk space'),
(14, 2, 'Unlimited', 'bandwith'),
(15, 2, 'Unlimited', 'POP Email'),
(16, 2, 'Unlimited', 'Database'),
(17, 2, '10', 'Addon Domains'),
(18, 2, 'instant ', 'Backup'),
(19, 2, 'Domain Gratis', 'Selamanya'),
(21, 2, 'Unlimited ', 'SSL Gratis Selamanya'),
(22, 3, '2X RESOURCE POWER', ''),
(23, 3, 'Unlimited', 'Disk space'),
(24, 3, 'Unlimited', 'POP Email'),
(26, 3, 'Unlimited', 'Database'),
(27, 3, 'Unlimited', 'Addon Domains'),
(30, 3, 'instant ', 'Backup'),
(31, 3, 'Domain Gratis', 'Selamanya'),
(32, 3, 'Unlimited SSL', ' Gratis Selamanya'),
(33, 3, 'Private', 'Name Server'),
(34, 3, 'SpamAssasin', 'Mail Protection'),
(35, 4, '3X RESOURCE POWER', ''),
(36, 4, 'Unlimited', 'Disk space'),
(37, 4, 'Unlimited', 'Bandwith'),
(38, 4, 'Unlimited', 'POP Email'),
(39, 4, 'Unlimited', 'Databases'),
(40, 4, 'Unlimited', 'Addon Domains'),
(41, 4, 'MagicAuto', 'Backup & Restore'),
(42, 4, 'Domain Gratis', 'Selamanya'),
(43, 4, 'Unlimited SSL', 'Gratis Selamanya'),
(44, 4, 'Private', 'NameServer'),
(45, 4, 'Prioritas', 'Layanan Support'),
(46, 4, '', '<i class=\"fas fa-star mr-1 text-primary\"></i><i class=\"fas fa-star mr-1 text-primary\"></i><i class=\"fas fa-star mr-1 text-primary\"></i><i class=\"fas fa-star mr-1 text-primary\"></i><i class=\"fas fa-star mr-1 text-primary\"></i>'),
(47, 4, 'SpamExpert', 'Pro Mail Protection');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
