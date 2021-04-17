-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2021 at 04:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eCommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_Id` int(11) NOT NULL,
  `customer_Id` int(11) NOT NULL,
  `address` varchar(95) NOT NULL,
  `street` varchar(30) NOT NULL,
  `street_number` int(3) NOT NULL,
  `district` int(4) NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(70) NOT NULL,
  `address_type` varchar(8) NOT NULL,
  `primary_address` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` bigint(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_Id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `primary_address` int(11) DEFAULT NULL,
  `primary_phone` int(11) DEFAULT NULL,
  `primary_email` int(11) DEFAULT NULL,
  `primary_payment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_Id`, `first_name`, `last_name`, `gender`, `primary_address`, `primary_phone`, `primary_email`, `primary_payment`) VALUES
(1, 'Ringo', 'Ritson', 'M', NULL, NULL, NULL, NULL),
(2, 'Janessa', 'Abendroth', 'F', NULL, NULL, NULL, NULL),
(3, 'Rickie', 'Philson', 'M', NULL, NULL, NULL, NULL),
(4, 'Bren', 'Martinho', 'M', NULL, NULL, NULL, NULL),
(5, 'Penny', 'Jumeau', 'M', NULL, NULL, NULL, NULL),
(6, 'Robinet', 'Kos', 'F', NULL, NULL, NULL, NULL),
(7, 'Christabella', 'Chooter', 'F', NULL, NULL, NULL, NULL),
(8, 'Boniface', 'Setchfield', 'M', NULL, NULL, NULL, NULL),
(9, 'Dorie', 'Iddison', 'M', NULL, NULL, NULL, NULL),
(10, 'Oralle', 'Snell', 'F', NULL, NULL, NULL, NULL),
(11, 'Mark', 'Scough', 'M', NULL, NULL, NULL, NULL),
(12, 'Peterus', 'Sloat', 'M', NULL, NULL, NULL, NULL),
(13, 'Wallis', 'Tustin', 'F', NULL, NULL, NULL, NULL),
(14, 'Renaldo', 'Pigram', 'M', NULL, NULL, NULL, NULL),
(15, 'Elias', 'Menico', 'M', NULL, NULL, NULL, NULL),
(16, 'Abby', 'Pacht', 'M', NULL, NULL, NULL, NULL),
(17, 'Anatollo', 'Best', 'M', NULL, NULL, NULL, NULL),
(18, 'Corey', 'Mutlow', 'M', NULL, NULL, NULL, NULL),
(19, 'Dorita', 'Tolman', 'F', NULL, NULL, NULL, NULL),
(20, 'Moise', 'Newart', 'M', NULL, NULL, NULL, NULL),
(21, 'Ruggiero', 'Hartas', 'M', NULL, NULL, NULL, NULL),
(22, 'Marylynne', 'Dibdale', 'F', NULL, NULL, NULL, NULL),
(23, 'Edwina', 'Duddy', 'F', NULL, NULL, NULL, NULL),
(24, 'Indira', 'Lunck', 'F', NULL, NULL, NULL, NULL),
(25, 'Sax', 'Copley', 'M', NULL, NULL, NULL, NULL),
(26, 'George', 'Hedworth', 'M', NULL, NULL, NULL, NULL),
(27, 'Laura', 'Geistmann', 'F', NULL, NULL, NULL, NULL),
(28, 'Claybourne', 'Southouse', 'M', NULL, NULL, NULL, NULL),
(29, 'Bobine', 'Picken', 'F', NULL, NULL, NULL, NULL),
(30, 'Dolf', 'Aldwinckle', 'M', NULL, NULL, NULL, NULL),
(31, 'Donovan', 'Tennant', 'M', NULL, NULL, NULL, NULL),
(32, 'Rawley', 'Perche', 'M', NULL, NULL, NULL, NULL),
(33, 'Gray', 'Tissiman', 'F', NULL, NULL, NULL, NULL),
(34, 'Gerry', 'Epperson', 'F', NULL, NULL, NULL, NULL),
(35, 'Blanca', 'Perchard', 'F', NULL, NULL, NULL, NULL),
(36, 'Haroun', 'Crowche', 'M', NULL, NULL, NULL, NULL),
(37, 'Kathlin', 'Popplestone', 'F', NULL, NULL, NULL, NULL),
(38, 'Gearard', 'Ensor', 'M', NULL, NULL, NULL, NULL),
(39, 'Logan', 'Haye', 'M', NULL, NULL, NULL, NULL),
(40, 'Renard', 'Ganning', 'M', NULL, NULL, NULL, NULL),
(41, 'Gilli', 'Vallentin', 'F', NULL, NULL, NULL, NULL),
(42, 'Marline', 'Simeonov', 'F', NULL, NULL, NULL, NULL),
(43, 'Karlotta', 'Harriott', 'F', NULL, NULL, NULL, NULL),
(44, 'Shurlock', 'Rizzardini', 'M', NULL, NULL, NULL, NULL),
(45, 'Beau', 'McAndrew', 'M', NULL, NULL, NULL, NULL),
(46, 'Hollyanne', 'Perrigo', 'F', NULL, NULL, NULL, NULL),
(47, 'Quincy', 'Spall', 'M', NULL, NULL, NULL, NULL),
(48, 'Chilton', 'Freebury', 'M', NULL, NULL, NULL, NULL),
(49, 'Lesli', 'Darch', 'F', NULL, NULL, NULL, NULL),
(50, 'Marvin', 'Daltry', 'M', NULL, NULL, NULL, NULL),
(51, 'Ringo', 'Ritson', 'M', NULL, NULL, NULL, NULL),
(52, 'Janessa', 'Abendroth', 'F', NULL, NULL, NULL, NULL),
(53, 'Rickie', 'Philson', 'M', NULL, NULL, NULL, NULL),
(54, 'Bren', 'Martinho', 'M', NULL, NULL, NULL, NULL),
(55, 'Penny', 'Jumeau', 'M', NULL, NULL, NULL, NULL),
(56, 'Robinet', 'Kos', 'F', NULL, NULL, NULL, NULL),
(57, 'Christabella', 'Chooter', 'F', NULL, NULL, NULL, NULL),
(58, 'Boniface', 'Setchfield', 'M', NULL, NULL, NULL, NULL),
(59, 'Dorie', 'Iddison', 'M', NULL, NULL, NULL, NULL),
(60, 'Oralle', 'Snell', 'F', NULL, NULL, NULL, NULL),
(61, 'Mark', 'Scough', 'M', NULL, NULL, NULL, NULL),
(62, 'Peterus', 'Sloat', 'M', NULL, NULL, NULL, NULL),
(63, 'Wallis', 'Tustin', 'F', NULL, NULL, NULL, NULL),
(64, 'Renaldo', 'Pigram', 'M', NULL, NULL, NULL, NULL),
(65, 'Elias', 'Menico', 'M', NULL, NULL, NULL, NULL),
(66, 'Abby', 'Pacht', 'M', NULL, NULL, NULL, NULL),
(67, 'Anatollo', 'Best', 'M', NULL, NULL, NULL, NULL),
(68, 'Corey', 'Mutlow', 'M', NULL, NULL, NULL, NULL),
(69, 'Dorita', 'Tolman', 'F', NULL, NULL, NULL, NULL),
(70, 'Moise', 'Newart', 'M', NULL, NULL, NULL, NULL),
(71, 'Ruggiero', 'Hartas', 'M', NULL, NULL, NULL, NULL),
(72, 'Marylynne', 'Dibdale', 'F', NULL, NULL, NULL, NULL),
(73, 'Edwina', 'Duddy', 'F', NULL, NULL, NULL, NULL),
(74, 'Indira', 'Lunck', 'F', NULL, NULL, NULL, NULL),
(75, 'Sax', 'Copley', 'M', NULL, NULL, NULL, NULL),
(76, 'George', 'Hedworth', 'M', NULL, NULL, NULL, NULL),
(77, 'Laura', 'Geistmann', 'F', NULL, NULL, NULL, NULL),
(78, 'Claybourne', 'Southouse', 'M', NULL, NULL, NULL, NULL),
(79, 'Bobine', 'Picken', 'F', NULL, NULL, NULL, NULL),
(80, 'Dolf', 'Aldwinckle', 'M', NULL, NULL, NULL, NULL),
(81, 'Donovan', 'Tennant', 'M', NULL, NULL, NULL, NULL),
(82, 'Rawley', 'Perche', 'M', NULL, NULL, NULL, NULL),
(83, 'Gray', 'Tissiman', 'F', NULL, NULL, NULL, NULL),
(84, 'Gerry', 'Epperson', 'F', NULL, NULL, NULL, NULL),
(85, 'Blanca', 'Perchard', 'F', NULL, NULL, NULL, NULL),
(86, 'Haroun', 'Crowche', 'M', NULL, NULL, NULL, NULL),
(87, 'Kathlin', 'Popplestone', 'F', NULL, NULL, NULL, NULL),
(88, 'Gearard', 'Ensor', 'M', NULL, NULL, NULL, NULL),
(89, 'Logan', 'Haye', 'M', NULL, NULL, NULL, NULL),
(90, 'Renard', 'Ganning', 'M', NULL, NULL, NULL, NULL),
(91, 'Gilli', 'Vallentin', 'F', NULL, NULL, NULL, NULL),
(92, 'Marline', 'Simeonov', 'F', NULL, NULL, NULL, NULL),
(93, 'Karlotta', 'Harriott', 'F', NULL, NULL, NULL, NULL),
(94, 'Shurlock', 'Rizzardini', 'M', NULL, NULL, NULL, NULL),
(95, 'Beau', 'McAndrew', 'M', NULL, NULL, NULL, NULL),
(96, 'Hollyanne', 'Perrigo', 'F', NULL, NULL, NULL, NULL),
(97, 'Quincy', 'Spall', 'M', NULL, NULL, NULL, NULL),
(98, 'Chilton', 'Freebury', 'M', NULL, NULL, NULL, NULL),
(99, 'Lesli', 'Darch', 'F', NULL, NULL, NULL, NULL),
(100, 'Marvin', 'Daltry', 'M', NULL, NULL, NULL, NULL),
(101, 'Ringo', 'Ritson', 'M', NULL, NULL, NULL, NULL),
(102, 'Janessa', 'Abendroth', 'F', NULL, NULL, NULL, NULL),
(103, 'Rickie', 'Philson', 'M', NULL, NULL, NULL, NULL),
(104, 'Bren', 'Martinho', 'M', NULL, NULL, NULL, NULL),
(105, 'Penny', 'Jumeau', 'M', NULL, NULL, NULL, NULL),
(106, 'Robinet', 'Kos', 'F', NULL, NULL, NULL, NULL),
(107, 'Christabella', 'Chooter', 'F', NULL, NULL, NULL, NULL),
(108, 'Boniface', 'Setchfield', 'M', NULL, NULL, NULL, NULL),
(109, 'Dorie', 'Iddison', 'M', NULL, NULL, NULL, NULL),
(110, 'Oralle', 'Snell', 'F', NULL, NULL, NULL, NULL),
(111, 'Mark', 'Scough', 'M', NULL, NULL, NULL, NULL),
(112, 'Peterus', 'Sloat', 'M', NULL, NULL, NULL, NULL),
(113, 'Wallis', 'Tustin', 'F', NULL, NULL, NULL, NULL),
(114, 'Renaldo', 'Pigram', 'M', NULL, NULL, NULL, NULL),
(115, 'Elias', 'Menico', 'M', NULL, NULL, NULL, NULL),
(116, 'Abby', 'Pacht', 'M', NULL, NULL, NULL, NULL),
(117, 'Anatollo', 'Best', 'M', NULL, NULL, NULL, NULL),
(118, 'Corey', 'Mutlow', 'M', NULL, NULL, NULL, NULL),
(119, 'Dorita', 'Tolman', 'F', NULL, NULL, NULL, NULL),
(120, 'Moise', 'Newart', 'M', NULL, NULL, NULL, NULL),
(121, 'Ruggiero', 'Hartas', 'M', NULL, NULL, NULL, NULL),
(122, 'Marylynne', 'Dibdale', 'F', NULL, NULL, NULL, NULL),
(123, 'Edwina', 'Duddy', 'F', NULL, NULL, NULL, NULL),
(124, 'Indira', 'Lunck', 'F', NULL, NULL, NULL, NULL),
(125, 'Sax', 'Copley', 'M', NULL, NULL, NULL, NULL),
(126, 'George', 'Hedworth', 'M', NULL, NULL, NULL, NULL),
(127, 'Laura', 'Geistmann', 'F', NULL, NULL, NULL, NULL),
(128, 'Claybourne', 'Southouse', 'M', NULL, NULL, NULL, NULL),
(129, 'Bobine', 'Picken', 'F', NULL, NULL, NULL, NULL),
(130, 'Dolf', 'Aldwinckle', 'M', NULL, NULL, NULL, NULL),
(131, 'Donovan', 'Tennant', 'M', NULL, NULL, NULL, NULL),
(132, 'Rawley', 'Perche', 'M', NULL, NULL, NULL, NULL),
(133, 'Gray', 'Tissiman', 'F', NULL, NULL, NULL, NULL),
(134, 'Gerry', 'Epperson', 'F', NULL, NULL, NULL, NULL),
(135, 'Blanca', 'Perchard', 'F', NULL, NULL, NULL, NULL),
(136, 'Haroun', 'Crowche', 'M', NULL, NULL, NULL, NULL),
(137, 'Kathlin', 'Popplestone', 'F', NULL, NULL, NULL, NULL),
(138, 'Gearard', 'Ensor', 'M', NULL, NULL, NULL, NULL),
(139, 'Logan', 'Haye', 'M', NULL, NULL, NULL, NULL),
(140, 'Renard', 'Ganning', 'M', NULL, NULL, NULL, NULL),
(141, 'Gilli', 'Vallentin', 'F', NULL, NULL, NULL, NULL),
(142, 'Marline', 'Simeonov', 'F', NULL, NULL, NULL, NULL),
(143, 'Karlotta', 'Harriott', 'F', NULL, NULL, NULL, NULL),
(144, 'Shurlock', 'Rizzardini', 'M', NULL, NULL, NULL, NULL),
(145, 'Beau', 'McAndrew', 'M', NULL, NULL, NULL, NULL),
(146, 'Hollyanne', 'Perrigo', 'F', NULL, NULL, NULL, NULL),
(147, 'Quincy', 'Spall', 'M', NULL, NULL, NULL, NULL),
(148, 'Chilton', 'Freebury', 'M', NULL, NULL, NULL, NULL),
(149, 'Lesli', 'Darch', 'F', NULL, NULL, NULL, NULL),
(150, 'Marvin', 'Daltry', 'M', NULL, NULL, NULL, NULL),
(151, 'Ringo', 'Ritson', 'M', NULL, NULL, NULL, NULL),
(152, 'Janessa', 'Abendroth', 'F', NULL, NULL, NULL, NULL),
(153, 'Rickie', 'Philson', 'M', NULL, NULL, NULL, NULL),
(154, 'Bren', 'Martinho', 'M', NULL, NULL, NULL, NULL),
(155, 'Penny', 'Jumeau', 'M', NULL, NULL, NULL, NULL),
(156, 'Robinet', 'Kos', 'F', NULL, NULL, NULL, NULL),
(157, 'Christabella', 'Chooter', 'F', NULL, NULL, NULL, NULL),
(158, 'Boniface', 'Setchfield', 'M', NULL, NULL, NULL, NULL),
(159, 'Dorie', 'Iddison', 'M', NULL, NULL, NULL, NULL),
(160, 'Oralle', 'Snell', 'F', NULL, NULL, NULL, NULL),
(161, 'Mark', 'Scough', 'M', NULL, NULL, NULL, NULL),
(162, 'Peterus', 'Sloat', 'M', NULL, NULL, NULL, NULL),
(163, 'Wallis', 'Tustin', 'F', NULL, NULL, NULL, NULL),
(164, 'Renaldo', 'Pigram', 'M', NULL, NULL, NULL, NULL),
(165, 'Elias', 'Menico', 'M', NULL, NULL, NULL, NULL),
(166, 'Abby', 'Pacht', 'M', NULL, NULL, NULL, NULL),
(167, 'Anatollo', 'Best', 'M', NULL, NULL, NULL, NULL),
(168, 'Corey', 'Mutlow', 'M', NULL, NULL, NULL, NULL),
(169, 'Dorita', 'Tolman', 'F', NULL, NULL, NULL, NULL),
(170, 'Moise', 'Newart', 'M', NULL, NULL, NULL, NULL),
(171, 'Ruggiero', 'Hartas', 'M', NULL, NULL, NULL, NULL),
(172, 'Marylynne', 'Dibdale', 'F', NULL, NULL, NULL, NULL),
(173, 'Edwina', 'Duddy', 'F', NULL, NULL, NULL, NULL),
(174, 'Indira', 'Lunck', 'F', NULL, NULL, NULL, NULL),
(175, 'Sax', 'Copley', 'M', NULL, NULL, NULL, NULL),
(176, 'George', 'Hedworth', 'M', NULL, NULL, NULL, NULL),
(177, 'Laura', 'Geistmann', 'F', NULL, NULL, NULL, NULL),
(178, 'Claybourne', 'Southouse', 'M', NULL, NULL, NULL, NULL),
(179, 'Bobine', 'Picken', 'F', NULL, NULL, NULL, NULL),
(180, 'Dolf', 'Aldwinckle', 'M', NULL, NULL, NULL, NULL),
(181, 'Donovan', 'Tennant', 'M', NULL, NULL, NULL, NULL),
(182, 'Rawley', 'Perche', 'M', NULL, NULL, NULL, NULL),
(183, 'Gray', 'Tissiman', 'F', NULL, NULL, NULL, NULL),
(184, 'Gerry', 'Epperson', 'F', NULL, NULL, NULL, NULL),
(185, 'Blanca', 'Perchard', 'F', NULL, NULL, NULL, NULL),
(186, 'Haroun', 'Crowche', 'M', NULL, NULL, NULL, NULL),
(187, 'Kathlin', 'Popplestone', 'F', NULL, NULL, NULL, NULL),
(188, 'Gearard', 'Ensor', 'M', NULL, NULL, NULL, NULL),
(189, 'Logan', 'Haye', 'M', NULL, NULL, NULL, NULL),
(190, 'Renard', 'Ganning', 'M', NULL, NULL, NULL, NULL),
(191, 'Gilli', 'Vallentin', 'F', NULL, NULL, NULL, NULL),
(192, 'Marline', 'Simeonov', 'F', NULL, NULL, NULL, NULL),
(193, 'Karlotta', 'Harriott', 'F', NULL, NULL, NULL, NULL),
(194, 'Shurlock', 'Rizzardini', 'M', NULL, NULL, NULL, NULL),
(195, 'Beau', 'McAndrew', 'M', NULL, NULL, NULL, NULL),
(196, 'Hollyanne', 'Perrigo', 'F', NULL, NULL, NULL, NULL),
(197, 'Quincy', 'Spall', 'M', NULL, NULL, NULL, NULL),
(198, 'Chilton', 'Freebury', 'M', NULL, NULL, NULL, NULL),
(199, 'Lesli', 'Darch', 'F', NULL, NULL, NULL, NULL),
(200, 'Marvin', 'Daltry', 'M', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `email_Id` int(11) NOT NULL,
  `customer_Id` int(11) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `email_type` varchar(10) NOT NULL,
  `primary_email` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item_catalog`
--

CREATE TABLE `item_catalog` (
  `item_Id` bigint(20) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL,
  `vendor_Id` bigint(20) NOT NULL,
  `manufacturer_Id` varchar(10) NOT NULL,
  `color_Id` int(11) DEFAULT NULL,
  `size_Id` int(11) DEFAULT NULL,
  `unit_Id` int(11) DEFAULT NULL,
  `price_per_unit` int(11) DEFAULT NULL,
  `weight_per_unit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_catalog`
--

INSERT INTO `item_catalog` (`item_Id`, `item_name`, `vendor_Id`, `manufacturer_Id`, `color_Id`, `size_Id`, `unit_Id`, `price_per_unit`, `weight_per_unit`) VALUES
(1, 'Geoffrey', 1, '5820796187', 1, 1, 1, 34, 86),
(2, 'Dale', 2, '4788857111', 2, 2, 2, 73, 10),
(3, 'Lockwood', 3, '1824093845', 3, 3, 3, 50, 52),
(4, 'Montague', 4, '1026087007', 4, 4, 4, 21, 81),
(5, 'Gayle', 5, '1118115945', 5, 5, 5, 30, 88),
(6, 'Wolfie', 6, '4983275053', 6, 6, 6, 60, 1),
(7, 'Adoree', 7, '5539724607', 7, 7, 7, 53, 52),
(8, 'Nissie', 8, '6878339502', 8, 8, 8, 10, 18),
(9, 'Roze', 9, '5031311215', 9, 9, 9, 1, 79),
(10, 'Bradney', 10, '9297521509', 10, 10, 10, 14, 43),
(11, 'Hilliary', 11, '2001668325', 11, 11, 11, 43, 21),
(12, 'Michal', 12, '3767653044', 12, 12, 12, 32, 55),
(13, 'Dierdre', 13, '7092377382', 13, 13, 13, 2, 1),
(14, 'Elspeth', 14, '5577759056', 14, 14, 14, 98, 40),
(15, 'Antony', 15, '2768898252', 15, 15, 15, 88, 74),
(16, 'Fedora', 16, '2510115979', 16, 16, 16, 20, 21),
(17, 'Marigold', 17, '6823541628', 17, 17, 17, 22, 47),
(18, 'Ewan', 18, '5699174230', 18, 18, 18, 73, 28),
(19, 'Amie', 19, '3167735600', 19, 19, 19, 17, 95),
(20, 'Karlee', 20, '0534467164', 20, 20, 20, 95, 64),
(21, 'Kay', 21, '8686246249', 21, 21, 21, 1, 42),
(22, 'Codi', 22, '8410296330', 22, 22, 22, 61, 44),
(23, 'Alison', 23, '0265203694', 23, 23, 23, 14, 96),
(24, 'Kristofor', 24, '3033941281', 24, 24, 24, 14, 74),
(25, 'Zebadiah', 25, '9137238159', 25, 25, 25, 96, 29),
(26, 'Jereme', 26, '9524142058', 26, 26, 26, 95, 60),
(27, 'Elsa', 27, '8294779121', 27, 27, 27, 5, 24),
(28, 'Hiram', 28, '9258945549', 28, 28, 28, 63, 89),
(29, 'Melina', 29, '5363661179', 29, 29, 29, 38, 62),
(30, 'Vaughn', 30, '4076462807', 30, 30, 30, 73, 21),
(31, 'Burg', 31, '0477408524', 31, 31, 31, 60, 36),
(32, 'Pavia', 32, '8383385382', 32, 32, 32, 5, 74),
(33, 'Jean', 33, '8514011138', 33, 33, 33, 15, 65),
(34, 'Moyna', 34, '7049461237', 34, 34, 34, 82, 33),
(35, 'Alanah', 35, '0660256371', 35, 35, 35, 45, 65),
(36, 'Thomasina', 36, '1115402099', 36, 36, 36, 64, 38),
(37, 'Christel', 37, '2477401564', 37, 37, 37, 31, 27),
(38, 'Kayle', 38, '3419334567', 38, 38, 38, 95, 4),
(39, 'Vikki', 39, '1328271145', 39, 39, 39, 2, 45),
(40, 'Charley', 40, '8253706588', 40, 40, 40, 1, 82),
(41, 'Glynis', 41, '9199419289', 41, 41, 41, 100, 41),
(42, 'Dicky', 42, '3076181920', 42, 42, 42, 60, 8),
(43, 'Stacey', 43, '0485277891', 43, 43, 43, 28, 7),
(44, 'Salvador', 44, '7605824963', 44, 44, 44, 74, 16),
(45, 'Winslow', 45, '6018635542', 45, 45, 45, 87, 11),
(46, 'Abbey', 46, '5795774367', 46, 46, 46, 17, 100),
(47, 'Preston', 47, '2542521085', 47, 47, 47, 9, 86),
(48, 'Jasun', 48, '3174022320', 48, 48, 48, 30, 94),
(49, 'Angel', 49, '3588644288', 49, 49, 49, 41, 77),
(50, 'Lorens', 50, '4515514326', 50, 50, 50, 68, 34),
(51, 'Geoffrey', 1, '5820796187', 1, 1, 1, 34, 86),
(52, 'Dale', 2, '4788857111', 2, 2, 2, 73, 10),
(53, 'Lockwood', 3, '1824093845', 3, 3, 3, 50, 52),
(54, 'Montague', 4, '1026087007', 4, 4, 4, 21, 81),
(55, 'Gayle', 5, '1118115945', 5, 5, 5, 30, 88),
(56, 'Wolfie', 6, '4983275053', 6, 6, 6, 60, 1),
(57, 'Adoree', 7, '5539724607', 7, 7, 7, 53, 52),
(58, 'Nissie', 8, '6878339502', 8, 8, 8, 10, 18),
(59, 'Roze', 9, '5031311215', 9, 9, 9, 1, 79),
(60, 'Bradney', 10, '9297521509', 10, 10, 10, 14, 43),
(61, 'Hilliary', 11, '2001668325', 11, 11, 11, 43, 21),
(62, 'Michal', 12, '3767653044', 12, 12, 12, 32, 55),
(63, 'Dierdre', 13, '7092377382', 13, 13, 13, 2, 1),
(64, 'Elspeth', 14, '5577759056', 14, 14, 14, 98, 40),
(65, 'Antony', 15, '2768898252', 15, 15, 15, 88, 74),
(66, 'Fedora', 16, '2510115979', 16, 16, 16, 20, 21),
(67, 'Marigold', 17, '6823541628', 17, 17, 17, 22, 47),
(68, 'Ewan', 18, '5699174230', 18, 18, 18, 73, 28),
(69, 'Amie', 19, '3167735600', 19, 19, 19, 17, 95),
(70, 'Karlee', 20, '0534467164', 20, 20, 20, 95, 64),
(71, 'Kay', 21, '8686246249', 21, 21, 21, 1, 42),
(72, 'Codi', 22, '8410296330', 22, 22, 22, 61, 44),
(73, 'Alison', 23, '0265203694', 23, 23, 23, 14, 96),
(74, 'Kristofor', 24, '3033941281', 24, 24, 24, 14, 74),
(75, 'Zebadiah', 25, '9137238159', 25, 25, 25, 96, 29),
(76, 'Jereme', 26, '9524142058', 26, 26, 26, 95, 60),
(77, 'Elsa', 27, '8294779121', 27, 27, 27, 5, 24),
(78, 'Hiram', 28, '9258945549', 28, 28, 28, 63, 89),
(79, 'Melina', 29, '5363661179', 29, 29, 29, 38, 62),
(80, 'Vaughn', 30, '4076462807', 30, 30, 30, 73, 21),
(81, 'Burg', 31, '0477408524', 31, 31, 31, 60, 36),
(82, 'Pavia', 32, '8383385382', 32, 32, 32, 5, 74),
(83, 'Jean', 33, '8514011138', 33, 33, 33, 15, 65),
(84, 'Moyna', 34, '7049461237', 34, 34, 34, 82, 33),
(85, 'Alanah', 35, '0660256371', 35, 35, 35, 45, 65),
(86, 'Thomasina', 36, '1115402099', 36, 36, 36, 64, 38),
(87, 'Christel', 37, '2477401564', 37, 37, 37, 31, 27),
(88, 'Kayle', 38, '3419334567', 38, 38, 38, 95, 4),
(89, 'Vikki', 39, '1328271145', 39, 39, 39, 2, 45),
(90, 'Charley', 40, '8253706588', 40, 40, 40, 1, 82),
(91, 'Glynis', 41, '9199419289', 41, 41, 41, 100, 41),
(92, 'Dicky', 42, '3076181920', 42, 42, 42, 60, 8),
(93, 'Stacey', 43, '0485277891', 43, 43, 43, 28, 7),
(94, 'Salvador', 44, '7605824963', 44, 44, 44, 74, 16),
(95, 'Winslow', 45, '6018635542', 45, 45, 45, 87, 11),
(96, 'Abbey', 46, '5795774367', 46, 46, 46, 17, 100),
(97, 'Preston', 47, '2542521085', 47, 47, 47, 9, 86),
(98, 'Jasun', 48, '3174022320', 48, 48, 48, 30, 94),
(99, 'Angel', 49, '3588644288', 49, 49, 49, 41, 77),
(100, 'Lorens', 50, '4515514326', 50, 50, 50, 68, 34),
(101, 'Geoffrey', 1, '5820796187', 1, 1, 1, 34, 86),
(102, 'Dale', 2, '4788857111', 2, 2, 2, 73, 10),
(103, 'Lockwood', 3, '1824093845', 3, 3, 3, 50, 52),
(104, 'Montague', 4, '1026087007', 4, 4, 4, 21, 81),
(105, 'Gayle', 5, '1118115945', 5, 5, 5, 30, 88),
(106, 'Wolfie', 6, '4983275053', 6, 6, 6, 60, 1),
(107, 'Adoree', 7, '5539724607', 7, 7, 7, 53, 52),
(108, 'Nissie', 8, '6878339502', 8, 8, 8, 10, 18),
(109, 'Roze', 9, '5031311215', 9, 9, 9, 1, 79),
(110, 'Bradney', 10, '9297521509', 10, 10, 10, 14, 43),
(111, 'Hilliary', 11, '2001668325', 11, 11, 11, 43, 21),
(112, 'Michal', 12, '3767653044', 12, 12, 12, 32, 55),
(113, 'Dierdre', 13, '7092377382', 13, 13, 13, 2, 1),
(114, 'Elspeth', 14, '5577759056', 14, 14, 14, 98, 40),
(115, 'Antony', 15, '2768898252', 15, 15, 15, 88, 74),
(116, 'Fedora', 16, '2510115979', 16, 16, 16, 20, 21),
(117, 'Marigold', 17, '6823541628', 17, 17, 17, 22, 47),
(118, 'Ewan', 18, '5699174230', 18, 18, 18, 73, 28),
(119, 'Amie', 19, '3167735600', 19, 19, 19, 17, 95),
(120, 'Karlee', 20, '0534467164', 20, 20, 20, 95, 64),
(121, 'Kay', 21, '8686246249', 21, 21, 21, 1, 42),
(122, 'Codi', 22, '8410296330', 22, 22, 22, 61, 44),
(123, 'Alison', 23, '0265203694', 23, 23, 23, 14, 96),
(124, 'Kristofor', 24, '3033941281', 24, 24, 24, 14, 74),
(125, 'Zebadiah', 25, '9137238159', 25, 25, 25, 96, 29),
(126, 'Jereme', 26, '9524142058', 26, 26, 26, 95, 60),
(127, 'Elsa', 27, '8294779121', 27, 27, 27, 5, 24),
(128, 'Hiram', 28, '9258945549', 28, 28, 28, 63, 89),
(129, 'Melina', 29, '5363661179', 29, 29, 29, 38, 62),
(130, 'Vaughn', 30, '4076462807', 30, 30, 30, 73, 21),
(131, 'Burg', 31, '0477408524', 31, 31, 31, 60, 36),
(132, 'Pavia', 32, '8383385382', 32, 32, 32, 5, 74),
(133, 'Jean', 33, '8514011138', 33, 33, 33, 15, 65),
(134, 'Moyna', 34, '7049461237', 34, 34, 34, 82, 33),
(135, 'Alanah', 35, '0660256371', 35, 35, 35, 45, 65),
(136, 'Thomasina', 36, '1115402099', 36, 36, 36, 64, 38),
(137, 'Christel', 37, '2477401564', 37, 37, 37, 31, 27),
(138, 'Kayle', 38, '3419334567', 38, 38, 38, 95, 4),
(139, 'Vikki', 39, '1328271145', 39, 39, 39, 2, 45),
(140, 'Charley', 40, '8253706588', 40, 40, 40, 1, 82),
(141, 'Glynis', 41, '9199419289', 41, 41, 41, 100, 41),
(142, 'Dicky', 42, '3076181920', 42, 42, 42, 60, 8),
(143, 'Stacey', 43, '0485277891', 43, 43, 43, 28, 7),
(144, 'Salvador', 44, '7605824963', 44, 44, 44, 74, 16),
(145, 'Winslow', 45, '6018635542', 45, 45, 45, 87, 11),
(146, 'Abbey', 46, '5795774367', 46, 46, 46, 17, 100),
(147, 'Preston', 47, '2542521085', 47, 47, 47, 9, 86),
(148, 'Jasun', 48, '3174022320', 48, 48, 48, 30, 94),
(149, 'Angel', 49, '3588644288', 49, 49, 49, 41, 77),
(150, 'Lorens', 50, '4515514326', 50, 50, 50, 68, 34),
(151, 'Geoffrey', 1, '5820796187', 1, 1, 1, 34, 86),
(152, 'Dale', 2, '4788857111', 2, 2, 2, 73, 10),
(153, 'Lockwood', 3, '1824093845', 3, 3, 3, 50, 52),
(154, 'Montague', 4, '1026087007', 4, 4, 4, 21, 81),
(155, 'Gayle', 5, '1118115945', 5, 5, 5, 30, 88),
(156, 'Wolfie', 6, '4983275053', 6, 6, 6, 60, 1),
(157, 'Adoree', 7, '5539724607', 7, 7, 7, 53, 52),
(158, 'Nissie', 8, '6878339502', 8, 8, 8, 10, 18),
(159, 'Roze', 9, '5031311215', 9, 9, 9, 1, 79),
(160, 'Bradney', 10, '9297521509', 10, 10, 10, 14, 43),
(161, 'Hilliary', 11, '2001668325', 11, 11, 11, 43, 21),
(162, 'Michal', 12, '3767653044', 12, 12, 12, 32, 55),
(163, 'Dierdre', 13, '7092377382', 13, 13, 13, 2, 1),
(164, 'Elspeth', 14, '5577759056', 14, 14, 14, 98, 40),
(165, 'Antony', 15, '2768898252', 15, 15, 15, 88, 74),
(166, 'Fedora', 16, '2510115979', 16, 16, 16, 20, 21),
(167, 'Marigold', 17, '6823541628', 17, 17, 17, 22, 47),
(168, 'Ewan', 18, '5699174230', 18, 18, 18, 73, 28),
(169, 'Amie', 19, '3167735600', 19, 19, 19, 17, 95),
(170, 'Karlee', 20, '0534467164', 20, 20, 20, 95, 64),
(171, 'Kay', 21, '8686246249', 21, 21, 21, 1, 42),
(172, 'Codi', 22, '8410296330', 22, 22, 22, 61, 44),
(173, 'Alison', 23, '0265203694', 23, 23, 23, 14, 96),
(174, 'Kristofor', 24, '3033941281', 24, 24, 24, 14, 74),
(175, 'Zebadiah', 25, '9137238159', 25, 25, 25, 96, 29),
(176, 'Jereme', 26, '9524142058', 26, 26, 26, 95, 60),
(177, 'Elsa', 27, '8294779121', 27, 27, 27, 5, 24),
(178, 'Hiram', 28, '9258945549', 28, 28, 28, 63, 89),
(179, 'Melina', 29, '5363661179', 29, 29, 29, 38, 62),
(180, 'Vaughn', 30, '4076462807', 30, 30, 30, 73, 21),
(181, 'Burg', 31, '0477408524', 31, 31, 31, 60, 36),
(182, 'Pavia', 32, '8383385382', 32, 32, 32, 5, 74),
(183, 'Jean', 33, '8514011138', 33, 33, 33, 15, 65),
(184, 'Moyna', 34, '7049461237', 34, 34, 34, 82, 33),
(185, 'Alanah', 35, '0660256371', 35, 35, 35, 45, 65),
(186, 'Thomasina', 36, '1115402099', 36, 36, 36, 64, 38),
(187, 'Christel', 37, '2477401564', 37, 37, 37, 31, 27),
(188, 'Kayle', 38, '3419334567', 38, 38, 38, 95, 4),
(189, 'Vikki', 39, '1328271145', 39, 39, 39, 2, 45),
(190, 'Charley', 40, '8253706588', 40, 40, 40, 1, 82),
(191, 'Glynis', 41, '9199419289', 41, 41, 41, 100, 41),
(192, 'Dicky', 42, '3076181920', 42, 42, 42, 60, 8),
(193, 'Stacey', 43, '0485277891', 43, 43, 43, 28, 7),
(194, 'Salvador', 44, '7605824963', 44, 44, 44, 74, 16),
(195, 'Winslow', 45, '6018635542', 45, 45, 45, 87, 11),
(196, 'Abbey', 46, '5795774367', 46, 46, 46, 17, 100),
(197, 'Preston', 47, '2542521085', 47, 47, 47, 9, 86),
(198, 'Jasun', 48, '3174022320', 48, 48, 48, 30, 94),
(199, 'Angel', 49, '3588644288', 49, 49, 49, 41, 77),
(200, 'Lorens', 50, '4515514326', 50, 50, 50, 68, 34);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_Id` int(11) NOT NULL,
  `customer_Id` int(11) NOT NULL,
  `cart_Id` int(11) DEFAULT NULL,
  `payment_Id` int(11) NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ship_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ship_method` varchar(30) DEFAULT NULL,
  `fullfillment_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cancellation_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_Id` int(11) NOT NULL,
  `customer_Id` int(11) NOT NULL,
  `cc_number` varchar(254) NOT NULL,
  `cc_type` varchar(20) NOT NULL,
  `cc_exp_month` int(11) NOT NULL,
  `cc_exp_year` int(11) NOT NULL,
  `cc_sec_code` int(11) NOT NULL,
  `primary_payment_method` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_Id`, `customer_Id`, `cc_number`, `cc_type`, `cc_exp_month`, `cc_exp_year`, `cc_sec_code`, `primary_payment_method`) VALUES
(1, 54, '5602225132521489', 'china-unionpay', 1, 1, 1, 1),
(2, 52, '3535681885065347', 'jcb', 3, 3, 3, 3),
(3, 94, '4936766164477947922', 'switch', 4, 4, 4, 4),
(4, 22, '3583407216236592', 'jcb', 5, 5, 5, 5),
(5, 62, '3541569974244182', 'jcb', 6, 6, 6, 6),
(6, 56, '5602245374418319', 'bankcard', 7, 7, 7, 7),
(7, 6, '6331100904440299', 'switch', 8, 8, 8, 8),
(8, 38, '3552612623572524', 'jcb', 9, 9, 9, 9),
(9, 8, '4175002738522223', 'visa-electron', 10, 10, 10, 10),
(10, 18, '5560519333379667', 'diners-club-us-ca', 11, 11, 11, 11),
(11, 58, '6762317621888153715', 'maestro', 12, 12, 12, 12),
(12, 99, '6304635290899270', 'laser', 13, 13, 13, 13),
(13, 46, '6331100812602844896', 'switch', 14, 14, 14, 14),
(14, 36, '6304391439124312791', 'laser', 15, 15, 15, 15),
(15, 18, '3583451117997639', 'jcb', 16, 16, 16, 16),
(16, 85, '348996507036143', 'americanexpress', 17, 17, 17, 17),
(17, 47, '3565292216085922', 'jcb', 18, 18, 18, 18),
(18, 94, '4026212238050242', 'visa-electron', 20, 20, 20, 20),
(19, 100, '676785623442683352', 'solo', 21, 21, 21, 21),
(20, 66, '6333919978149130433', 'switch', 22, 22, 22, 22),
(21, 81, '4041370057887', 'visa', 23, 23, 23, 23),
(22, 89, '4917406355106231', 'visa-electron', 24, 24, 24, 24),
(23, 19, '6761249075804459', 'maestro', 25, 25, 25, 25),
(24, 86, '4936523848110605103', 'switch', 26, 26, 26, 26),
(25, 86, '3532089359292749', 'jcb', 27, 27, 27, 27),
(26, 83, '3586050327877834', 'jcb', 28, 28, 28, 28),
(27, 15, '4913237027972526', 'visa-electron', 29, 29, 29, 29),
(28, 88, '3535082137477226', 'jcb', 30, 30, 30, 30),
(29, 33, '5422008163728910', 'diners-club-us-ca', 31, 31, 31, 31),
(30, 8, '3566720630820994', 'jcb', 32, 32, 32, 32),
(31, 59, '3534552972304819', 'jcb', 33, 33, 33, 33),
(32, 85, '5010127937642963', 'mastercard', 34, 34, 34, 34),
(33, 37, '490574719460124724', 'switch', 35, 35, 35, 35),
(34, 83, '5602243662993176', 'bankcard', 36, 36, 36, 36),
(35, 16, '3548071920403106', 'jcb', 37, 37, 37, 37),
(36, 80, '4026670267652446', 'visa-electron', 38, 38, 38, 38),
(37, 29, '675943079575254928', 'maestro', 39, 39, 39, 39),
(38, 64, '337941291046174', 'americanexpress', 40, 40, 40, 40),
(39, 82, '3555046571924824', 'jcb', 41, 41, 41, 41),
(40, 20, '6304210707887513394', 'laser', 42, 42, 42, 42),
(41, 14, '3572703624466778', 'jcb', 43, 43, 43, 43),
(42, 80, '201447692478183', 'diners-club-enroute', 44, 44, 44, 44),
(43, 15, '5602244542286393', 'bankcard', 45, 45, 45, 45),
(44, 82, '6762261798726186663', 'maestro', 46, 46, 46, 46),
(45, 79, '4905983650755643', 'switch', 47, 47, 47, 47),
(46, 23, '3543252581045197', 'jcb', 48, 48, 48, 48),
(47, 49, '633315043190746634', 'switch', 49, 49, 49, 49),
(48, 66, '3577782139597132', 'jcb', 50, 50, 50, 50),
(49, 76, '3547922662180305', '1', 1, 1, 1, 1),
(50, 66, '3585556888625652', '2', 2, 2, 2, 2),
(51, 54, '372301530534322', '3', 3, 3, 3, 3),
(52, 92, '6304306635724496', '4', 4, 4, 4, 4),
(53, 20, '3539653414424978', '5', 5, 5, 5, 5),
(54, 3, '4017956460791086', '6', 6, 6, 6, 6),
(55, 84, '4917704175106120', '7', 7, 7, 7, 7),
(56, 89, '3548270524675024', '8', 8, 8, 8, 8),
(57, 61, '5424628362665577', '9', 9, 9, 9, 9),
(58, 77, '30266461590433', '10', 10, 10, 10, 10),
(59, 76, '3562319323645513', '11', 11, 11, 11, 11),
(60, 92, '3584365912981227', '12', 12, 12, 12, 12),
(61, 53, '4913130294441731', '13', 13, 13, 13, 13),
(62, 47, '3533842275683725', '14', 14, 14, 14, 14),
(63, 5, '3532731422751009', '15', 15, 15, 15, 15),
(64, 2, '3536185401441635', '16', 16, 16, 16, 16),
(65, 16, '3587705901074608', '17', 17, 17, 17, 17),
(66, 53, '5038646436234412766', '18', 18, 18, 18, 18),
(67, 95, '3560377889229934', '19', 19, 19, 19, 19),
(68, 33, '201992351246140', '20', 20, 20, 20, 20),
(69, 28, '5313948195124004', '21', 21, 21, 21, 21),
(70, 72, '3546205737586347', '22', 22, 22, 22, 22),
(71, 92, '3530113718569944', '23', 23, 23, 23, 23),
(72, 62, '3582668483563312', '24', 24, 24, 24, 24),
(73, 67, '5100145429661243', '25', 25, 25, 25, 25),
(74, 14, '3569885533815271', '26', 26, 26, 26, 26),
(75, 47, '30551928539465', '27', 27, 27, 27, 27),
(76, 99, '3543892050839735', '28', 28, 28, 28, 28),
(77, 55, '3548363376889585', '29', 29, 29, 29, 29),
(78, 42, '3574173558195124', '30', 30, 30, 30, 30),
(79, 40, '3556675534784062', '31', 31, 31, 31, 31),
(80, 80, '3532975600139962', '32', 32, 32, 32, 32),
(81, 46, '5048378415029019', '33', 33, 33, 33, 33),
(82, 74, '3556469500133334', '34', 34, 34, 34, 34),
(83, 72, '345817843969438', '35', 35, 35, 35, 35),
(84, 86, '337941743482928', '36', 36, 36, 36, 36),
(85, 13, '6381372813538476', '37', 37, 37, 37, 37),
(86, 60, '5602250244437291', '38', 38, 38, 38, 38),
(87, 4, '4911325388472011635', '39', 39, 39, 39, 39),
(88, 37, '4905070241543562277', '40', 40, 40, 40, 40),
(89, 19, '3574339491850345', '41', 41, 41, 41, 41),
(90, 67, '3548853315915814', '42', 42, 42, 42, 42),
(91, 51, '6304882053843846884', '43', 43, 43, 43, 43),
(92, 71, '490584766794687189', '44', 44, 44, 44, 44),
(93, 76, '3542938350248159', '45', 45, 45, 45, 45),
(94, 47, '3551828468534947', '46', 46, 46, 46, 46),
(95, 49, '5002357543059902', '47', 47, 47, 47, 47),
(96, 90, '56101088744417648', '48', 48, 48, 48, 48),
(97, 2, '3537292862176772', '49', 49, 49, 49, 49),
(98, 63, '560221096238017515', '50', 50, 50, 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `phone_Id` int(11) NOT NULL,
  `customer_Id` int(11) NOT NULL,
  `country_code` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `extention` int(11) DEFAULT NULL,
  `phone_type` varchar(8) DEFAULT NULL,
  `primary_phone` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_Id`),
  ADD KEY `customer_Id` (`customer_Id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_Id`),
  ADD KEY `primary_phone` (`primary_phone`),
  ADD KEY `primary_email` (`primary_email`),
  ADD KEY `primary_payment` (`primary_payment`),
  ADD KEY `primary_address` (`primary_address`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`email_Id`),
  ADD KEY `customer_Id` (`customer_Id`);

--
-- Indexes for table `item_catalog`
--
ALTER TABLE `item_catalog`
  ADD PRIMARY KEY (`item_Id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_Id`),
  ADD KEY `customer_Id` (`customer_Id`),
  ADD KEY `payment_Id` (`payment_Id`),
  ADD KEY `cart_Id` (`cart_Id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_Id`),
  ADD KEY `customer_Id` (`customer_Id`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_Id`),
  ADD KEY `customer_Id` (`customer_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `email_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_catalog`
--
ALTER TABLE `item_catalog`
  MODIFY `item_Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `phone_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`customer_Id`) REFERENCES `customer` (`customer_Id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_details` (`order_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item_catalog` (`item_Id`) ON DELETE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`primary_phone`) REFERENCES `phone` (`phone_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`primary_email`) REFERENCES `email` (`email_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`primary_payment`) REFERENCES `payment` (`payment_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_ibfk_4` FOREIGN KEY (`primary_address`) REFERENCES `address` (`address_Id`) ON DELETE CASCADE;

--
-- Constraints for table `email`
--
ALTER TABLE `email`
  ADD CONSTRAINT `email_ibfk_1` FOREIGN KEY (`customer_Id`) REFERENCES `customer` (`customer_Id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`customer_Id`) REFERENCES `customer` (`customer_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`payment_Id`) REFERENCES `payment` (`payment_Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`cart_Id`) REFERENCES `cart` (`cart_id`) ON DELETE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_Id`) REFERENCES `customer` (`customer_Id`) ON DELETE CASCADE;

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`customer_Id`) REFERENCES `customer` (`customer_Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
