-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 20, 2021 at 07:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `type_of_shipment` varchar(255) DEFAULT NULL,
  `type_of_payment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `date`, `status`, `number`, `shipping_address`, `type_of_shipment`, `type_of_payment`) VALUES
(1, 6, '2021-05-20 18:11:01', 'Ordered', 34, 'Sofia, Bulgaria', 'Fast Delivery', 'Pay Pal '),
(2, 3, '2021-05-20 18:29:32', 'Active', 3, 'Plovdiv, Bulgaria', 'Basic Shipment', 'Bank Statement'),
(3, 7, '2021-05-18 18:30:39', 'Inactive', 17, 'Westbahnhof, Ikea Center', 'Ordinary', 'Cash Money'),
(4, 4, '2021-05-20 18:30:30', 'active', 87, 'Graz, Austria', 'Ordinary', 'Bank Statement'),
(5, 4, '2021-05-04 07:22:32', 'active', 12, 'Barcelona, Spain', 'Fast Shipment', 'Bank Card');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `p_name` varchar(75) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(55) NOT NULL,
  `sub_category` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `p_name`, `price`, `image`, `description`, `category`, `sub_category`) VALUES
(1, 'Nike Performance', '50', 'https://images.pexels.com/photos/1537671/pexels-photo-1537671.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 'Gold Nike Performance shoe', 'shoes', 'sneaker'),
(2, 'Addidas Original Pharrel Williams', '769', 'https://images.pexels.com/photos/4462782/pexels-photo-4462782.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Pharrel Williams x human race special edition', 'shoes', 'sneaker'),
(3, 'Reebock Fly', '67', 'https://images.pexels.com/photos/1895019/pexels-photo-1895019.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Beige Reebock sport shoe, Fly edition 2020', 'shoes', 'sneaker'),
(4, 'Nike Sarah', '45', 'https://images.pexels.com/photos/2529158/pexels-photo-2529158.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Blue, white and black Nike sneaker', 'shoes', 'sneaker'),
(5, 'Green High Heel', '72', 'https://images.pexels.com/photos/3782786/pexels-photo-3782786.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Green and Brown Peep Toe Heeled Sandals', 'shoes', 'high heel'),
(6, 'Red High Heels', '69', 'https://images.pexels.com/photos/3076787/pexels-photo-3076787.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Red closed toed high heel with embelishment', 'shoes', 'high heel'),
(7, 'Bridal Heels', '128', 'https://images.pexels.com/photos/3389419/pexels-photo-3389419.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Off white bridal shoes. High heels with closed toes', 'shoes', 'high heel'),
(8, 'Snakeskin Bag', '34', 'https://images.pexels.com/photos/3373739/pexels-photo-3373739.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'Snakeskin print make-up bag, perfect to hold all your essentials. With zip', 'bag', 'make-up bag'),
(9, 'Skylar Handbag', '79', 'https://images.pexels.com/photos/6044266/pexels-photo-6044266.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Briefcase style handbag, vintage look, metal handles. From the 2021 \"Kang\" collection', 'bag', 'purse'),
(10, 'Leather Bag', '29', 'https://images.pexels.com/photos/5490229/pexels-photo-5490229.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Dark green leather make-up bag \"Rachel\"', 'bag', 'make-up bag'),
(11, 'Artem Bag', '31', 'https://images.pexels.com/photos/6786665/pexels-photo-6786665.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'The \"Artem\" Bag is a casual tote made of durable canvas. Always stylish in classic black', 'bag', 'tote'),
(12, 'Roseclay Clutch', '54', 'https://images.pexels.com/photos/5462562/pexels-photo-5462562.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Roseclay is an on trend leather clutch in brown. It holds your essentials and adds style to any outfit', 'bag', 'clutch'),
(13, 'Gonullu Tote', '12', 'https://images.pexels.com/photos/7500306/pexels-photo-7500306.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Perfect tote bag for a trip to the farmers market or to display your produce in your home. Made out of 100% recycled materials', 'bag', 'tote'),
(14, 'Karolina Purse', '95', 'https://images.pexels.com/photos/5706269/pexels-photo-5706269.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Medium sized, brown, genuine leather purse', 'bag', 'purse'),
(15, 'Frulia Backpack', '115', 'https://images.pexels.com/photos/2452345/pexels-photo-2452345.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Gray and brown Backpack, perfect for everyday use, durable and stylish', 'bag', 'backpack'),
(16, 'Beige clutch', '48', 'https://images.pexels.com/photos/5591743/pexels-photo-5591743.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Beige natural wicker handbag. Material sustainably sourced.', 'bag', 'clutch'),
(17, 'Matheus Backpack', '61', 'https://images.pexels.com/photos/2905238/pexels-photo-2905238.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Blue and brown backpack, several compartments inside as well as outside, perfect for traveling or going to work!', 'bag', 'backpack'),
(18, 'Adidas Backpack', '45', 'https://images.pexels.com/photos/1102874/pexels-photo-1102874.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Red sporty backpack by adidas, comes in red, blue and black.', 'bag', 'backpack'),
(19, 'Floral purse', '39', 'https://images.pexels.com/photos/904350/pexels-photo-904350.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'White and Blue Floral Flap Sling Bag, perfect summer purse!', 'bag', 'purse'),
(20, 'Claire beach tote', '45', 'https://images.pexels.com/photos/4846363/pexels-photo-4846363.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', 'Natural beach tote, woven out of straw. Cute and practical', 'bag', 'tote'),
(21, 'Trina make-up bag', '17', 'https://cdn.pixabay.com/photo/2020/03/06/19/33/brush-4908005_960_720.jpg', 'Black make-up bag, minimalistic and practical', 'bag', 'make-up bag'),
(22, 'Red vans', '36', 'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1543&q=80', 'Wine red vans sneakers', 'shoes', 'sneaker'),
(23, 'Thessos Flatforms', '67', 'https://images.unsplash.com/photo-1553808373-92b0bcc3af65?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80', 'Beige plattform elegant shoes with black and white platform sole', 'shoes', 'sneaker'),
(24, 'Fahima Sneakers', '78', 'https://images.unsplash.com/photo-1603808033192-082d6919d3e1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=358&q=80', 'Beige and off white shoes with a bright orange accent', 'shoes', 'sneaker'),
(25, 'Roscoe Oxfords', '128', 'https://images.unsplash.com/photo-1593032277892-a9af1e1957fd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80', 'Stunning pair of tan/oak wingtip oxfords, with a dainite rubber sole for traction and support over the traditional leather soles.', 'shoes', 'dress shoes'),
(26, 'Logan leather boot', '188', 'https://images.unsplash.com/photo-1581803274518-8d42d0c961de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80', 'Black dress shoes, ankle boots', 'shoes', 'dress shoes'),
(27, 'Nike super rep go', '98', 'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80', 'Bright green Nike sneakers with white soles and white Nike logo', 'shoes', 'sneaker'),
(28, 'Nike Motoc', '59', 'https://images.unsplash.com/photo-1576672843344-f01907a9d40c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=334&q=80', 'Brown Nike sneakers', 'shoes', 'sneaker'),
(29, 'Nike Street', '57', 'https://images.unsplash.com/photo-1606890657264-e5a411daf9ef?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80', 'Colorful Nike sneakers with slight platoe sole', 'shoes', 'sneaker'),
(30, 'Army belt', '34', 'https://cdn.pixabay.com/photo/2018/06/26/13/29/belt-buckle-3499410_960_720.jpg', 'Army belt with eagly buckle', 'belt', 'casual'),
(31, 'Trierweiler Belt', '49', 'https://images.unsplash.com/photo-1608461864721-b8f50c91c147?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80', 'Black leather belt with GG belt buckle', 'belt', 'classic'),
(32, 'Braided Asare Belt', '52', 'https://images.unsplash.com/photo-1573570135839-cd4339b6ce7f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80', 'Brown leather belt, braided', 'belt', 'classic'),
(33, 'Blue leather belt', '32', 'https://images.unsplash.com/photo-1549654929-e63d34779e41?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80', 'Blue classic minimalistic leather belt', 'belt', 'classic'),
(34, 'Deluvio Sunglasses', '56', 'https://images.unsplash.com/photo-1511499767150-a48a237f0083?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80', 'Gold frame, round glasses, UV protection at 100%', 'sunglasses', 'classic'),
(35, 'Ray Ban sunglasses', '78', 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80', 'Classic ray ban sunglasses, black frames, black lenses', 'sunglasses', 'classic'),
(36, 'Wendt Sunglasses', '35', 'https://images.unsplash.com/photo-1610136649349-0f646f318053?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', 'Half frame sunglasses, black metal frame', 'sunglasses', 'classic'),
(37, 'Wendt Sunglasses', '37', 'https://images.unsplash.com/photo-1582142366243-0b6a4aca0d99?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', 'Vintage style sunglasses with round lenses and gold metal frame. Lenses come in many different colors!', 'sunglasses', 'vintage'),
(38, 'Charlotte Sunglasses', '28', 'https://images.unsplash.com/photo-1577744486770-020ab432da65?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=375&q=80', 'Vintage style sunglasses, cateye shaped. Brown speckled frames.', 'sunglasses', 'vintage'),
(39, 'Montoya Sunglasses', '45', 'https://images.unsplash.com/photo-1606196480588-43eaeb825006?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80', 'Futuristic sunglasses with big orange lenses and black metal frame', 'sunglasses', 'modern'),
(40, 'Koval Sunglasses', '79', 'https://images.unsplash.com/photo-1566730301259-855bea8dee04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'Vintage style sunglasses with a rectangular shape and brown specled plastic frames', 'sunglasses', 'vintage'),
(41, 'Suarez Sunglasses', '81', 'https://images.unsplash.com/photo-1610904329458-2512c4748c8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60', 'Gold frame sunglasses in classic style', 'sunglasses', 'classic'),
(42, 'Theby Sunglasses', '98', 'https://images.unsplash.com/photo-1508296695146-257a814070b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80', 'Big sunglasses with blush frames and brown lenses', 'sunglasses', 'vintage'),
(43, 'Hao Sunglasses', '74', 'https://images.unsplash.com/photo-1590564310418-66304f55a2c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80', 'Gold metal frame sunglasses with dark lenses', 'sunglasses', 'modern'),
(44, 'Woolridge Sunglasses', '39', 'https://images.unsplash.com/photo-1562548726-43b650c82f8e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80', 'Pilot style sunglasses, gold frame, dark lenses', 'sunglasses', 'vintage'),
(45, 'CK Sunglasses', '49', 'https://images.unsplash.com/photo-1584036553516-bf83210aa16c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=328&q=80', 'Classic frames half metal half plastic, black, dark lenses', 'sunglasses', 'classic'),
(46, 'Dadkha Sunglasses', '76', 'https://images.unsplash.com/photo-1589642380614-4a8c2147b857?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80', 'Vintage style frames, ombre tinted lenses, gold frame', 'sunglasses', 'vintage'),
(47, 'Lloyd Sunglasses', '68', 'https://images.unsplash.com/photo-1618677366787-9727aacca7ea?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTUyfHxzdW5nbGFzc2VzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Vintage style circle frames, dark lenses can be folded up- perfect for wearers of presciption glasses!', 'sunglasses', 'vintage'),
(48, 'Mayer Hat', '68', 'https://images.unsplash.com/photo-1477064996809-dae46985eee7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80', 'Flat brim classig hat in camel with dark brown leather belt', 'hats', 'fedora'),
(49, 'Nardone Hat', '125', 'https://images.pexels.com/photos/3651597/pexels-photo-3651597.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Black fedora', 'hats', 'fedora'),
(50, 'Miko Hat', '145', 'https://images.pexels.com/photos/3681653/pexels-photo-3681653.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Black fedora, made from 100% recycled materials', 'hats', 'fedora'),
(51, 'Claire Hat', '173', 'https://images.pexels.com/photos/4992480/pexels-photo-4992480.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Camel colored fedora with light brown leather band', 'hats', 'fedora'),
(52, 'Jasmine Hat', '49', 'https://images.pexels.com/photos/5390335/pexels-photo-5390335.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940', 'Sun hat made of straw with a black ribbon', 'hats', 'sun hat'),
(53, 'Alex Hat', '34', 'https://images.unsplash.com/photo-1462019232381-59ab0219cab7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c3RyYXclMjBoYXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Straw sun hat with braided leather band', 'hats', 'sun hat'),
(54, 'Borik Hat', '99', 'https://images.unsplash.com/photo-1598769222566-ce6723008515?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80', 'Light brown fedora with slim black leather band', 'hats', 'fedora'),
(55, 'Eileen Hat', '115', 'https://images.unsplash.com/photo-1566331126664-f1cf3be4d5f4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'Light brown fedora with slim dark brown leather band', 'hats', 'fedora'),
(56, 'Sturzu Hat', '175', 'https://images.unsplash.com/photo-1604394282794-126394762f8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60', 'Caramel colored hat with large brim', 'hats', 'fedora'),
(57, 'Hudson Hat', '41', 'https://images.unsplash.com/photo-1593005661209-5d5a56a57e92?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80', 'Handwoven straw hat with beaded band', 'hats', 'sun hat'),
(58, 'Wilson Hat', '63', 'https://images.unsplash.com/photo-1504509670428-2c66853fd9f7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fGNvd2JveSUyMGhhdHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Large brimmed sun hat woven out of straw with black ribbon tied in a bow', 'hats', 'sun hat'),
(59, 'Brila Hat', '33', 'https://images.unsplash.com/photo-1522124900522-5202e3dc33dd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI2fHxjb3dib3klMjBoYXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60', 'Blue and beige hat with large flower', 'hats', 'sun hat');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `headline` varchar(75) NOT NULL,
  `text` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `date`, `headline`, `text`, `user_id`, `product_id`) VALUES
(1, '2021-05-01 10:27:44', 'Good quality, comfortable, stylish', 'These are really wonderful shoes. I bought them 3 montsh ago and wore them every day. I keep getting complements and the really fit my feet perfectly. Love them!', 1, 2),
(2, '2021-05-11 10:27:58', 'Perfect for a night out', 'Seriously fun shoes! I wore them for a night, and were comfortable enough to dance. Glad I bought them.', 2, 5),
(3, '2021-05-03 09:13:27', 'Very dissapointed!', 'I bought these shoes for my wedding day and they hurt me so badly. I got blisters within minutes. Luckily I had a spare pair of shoes with me that were much better. Do not buy these!', 2, 7),
(4, '2021-02-09 11:18:55', 'Great hat', 'I like this hat. Its comfy and cute and I feel really stylish wearing it.', 6, 59),
(5, '2020-10-30 11:18:55', 'ok', 'Bought these sunglasses for my wife for Christmas. She likes them, but I think they look a bit silly on her.', 3, 38),
(6, '2020-05-12 11:21:30', 'Hate it', 'This belt sucks. I bought it for a costume back for halloween, but it kept opening and that was super awkward when trick or treating with my kids. What a waste of money.', 5, 30),
(7, '2021-05-19 11:22:39', 'cute cute cute!', 'Love this bag. Fits everything it needs to fit.', 6, 11),
(8, '2020-02-06 11:22:39', 'Great Quality!', 'Love this cute purse. It adds a little something something to any blah outfit. highly recommend it!', 2, 19),
(9, '2021-05-19 11:25:09', 'Best Vans ever', 'Comfortable, look great and aren\'t your standard boring shoe. Recommended!', 4, 22),
(10, '2020-06-11 11:25:09', 'great backpack!', 'I bought it beginning of 2020 to take on my adventures. Really hope this pandemic is over quickly so I can make good use of it! Just wish it the straps were padded better.', 4, 17),
(11, '2021-04-08 19:23:07', 'Fullfills its purpose', 'The hat doesn\'t look as good in person as it does in the picture, but it still does what it should. Quality is ok!', 3, 50),
(12, '2021-05-19 00:23:07', 'Even better in person!', 'Love this belt. The color is more vibrant in person. Really beautifully made.', 6, 33);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `vat` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `order_id`, `product_id`, `amount`, `discount`, `vat`) VALUES
(1, 4, 38, '2', '10', '10'),
(3, 1, 7, '1', NULL, NULL),
(4, 3, 56, '1', NULL, NULL),
(5, 4, 51, '2', '10', NULL),
(6, 2, 7, '3', '10', '10'),
(7, 3, 46, '5', '10', '5'),
(8, 2, 3, '4', '10', '20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(6) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `gender`, `picture`, `address`, `email`, `password`, `role`) VALUES
(1, 'Francesco Bernulli', 'm', '', '123 N Campton Rd, 3434 Annaheim', 'frank@mail.com', '123123412341234', 'user'),
(2, 'Dora Explorer', 'f', '', 'Jungle Street 5, 2323 Treetown', 'dora@mail.com', '987987', 'user'),
(3, 'Earl Gray', 'm', '', 'Teapot St. 99, 2090 Brighton', 'earlyearl@mail.com', '123123', 'user'),
(4, 'Darcy Miller', 'f', '', '123 Southwest Ave, 2987 New Bermingshire', 'darcymiller@mail.com', '123123', 'user'),
(5, 'Sawyer Bland', 'm', '', 'Mill street 34, 3040 Bend', 'sawyer@mail.com', '123123', 'user'),
(6, 'Heidi Bland', 'f', '', 'Mill street 34, 3040 Bend', 'heidib@mail.com', '123123', 'user'),
(7, 'Valentin', 'm', 'avatar.png', 'Clementinengasse, 1150', 'vvvalvalchev@gmail.com', '0e867b705abbf1cc68193701f74e5ba2e70ace703488457cdfcd746b98836882', 'user'),
(8, 'Kassia', 'f', 'avatar.png', 'Clementinengasse 28', 'kassia@mail.bg', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
