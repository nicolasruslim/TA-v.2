-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2015 at 04:11 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `belanjaharian`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(11) NOT NULL,
  `admin_username` varchar(30) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'nicolasruslim', 'bdb8e9d4cbc28178702646431b26eb51');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_product_size_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `customer_id`, `product_id`, `id_product_size_price`, `quantity`, `status`) VALUES
(76, 1, 6, 7, 1, 'orders'),
(77, 1, 20, 21, 1, 'orders'),
(82, 1, 14, 15, 1, 'orders'),
(85, 1, 2, 3, 20, 'orders'),
(86, 1, 13, 14, 3, 'orders'),
(91, 1, 6, 7, 3, 'orders'),
(92, 1, 2, 3, 3, 'orders'),
(93, 1, 20, 21, 4, 'orders'),
(94, 1, 15, 16, 3, 'orders'),
(95, 1, 23, 23, 2, 'orders'),
(96, 1, 6, 7, 1, 'orders'),
(97, 1, 20, 21, 1, 'orders'),
(98, 1, 2, 3, 2, 'cart'),
(99, 1, 1, 1, 4, 'cart'),
(100, 6, 1, 1, 0, 'cart'),
(101, 1, 6, 7, 1, 'cart'),
(102, 1, 20, 21, 1, 'cart'),
(103, 1, 1, 1, 10, 'cart'),
(104, 1, 6, 7, 1, 'cart'),
(105, 1, 20, 21, 1, 'cart'),
(106, 1, 39, 39, 3, 'cart');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
`city_id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Kota Bandung'),
(3, 'Kota Bogor'),
(4, 'Kota Jakarta'),
(5, 'Kota Bekasi');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_address` varchar(500) NOT NULL,
  `customer_hp` varchar(20) NOT NULL,
  `customer_birthdate` date NOT NULL,
  `illness` varchar(200) NOT NULL,
  `customer_username` varchar(30) NOT NULL,
  `customer_password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_hp`, `customer_birthdate`, `illness`, `customer_username`, `customer_password`) VALUES
(1, 'Nicolas Novian Ruslim', 'nicolasruslim1@gmail.com', 'Jalan Sekeloa Timur No. 62, Bandung', '087823297974', '1993-11-29', '', 'nicolasruslim', '93da7ff0080ed80c4176b99cf2ad459a'),
(2, 'Marsalita Irine', 'marsalitairine@gmail.com', 'Jember', '08123456788', '2015-08-11', '', 'marsalitairine', '90d840be792c6b4b8121d2785a136dc1'),
(6, 'Andy Suroso', 'andy@gmail.com', 'Medan', '08123123123', '2015-05-29', 'Jantung,Diabetes,Hipertensi,', 'andy', 'da41bceff97b1cf96078ffb249b3d66e'),
(7, 'C1-Jantung', 'c1@keranjang.co', 'sekeloa', '123456', '1970-02-05', 'Jantung,', 'c1', 'a9f7e97965d6cf799a529102a973b8b9'),
(8, 'C2-Diabetes', 'c2@keranjang.co', 'sekeloa', '123456', '1972-04-07', 'Diabetes,', 'c2', '9ab62b5ef34a985438bfdf7ee0102229'),
(9, 'C3-Hipertensi', 'c3@keranjang.co', 'sekeloa', '123456', '1971-05-08', 'Hipertensi,', 'c3', '0a3d72134fb3d6c024db4c510bc1605b'),
(10, 'C6-Hipertensi', 'c6@keranjang.co', 'sekeloa', '123456', '1969-06-09', 'Hipertensi,', 'c6', '5a34d1edaea4e32871b6f7503ad4727e'),
(11, 'C9-Hipertensi', 'c9@keranjang.co', 'sekeloa', '123456', '1969-05-08', 'Hipertensi,', 'c9', 'a3098322f75f2a3e66164d0fb830cf5f'),
(12, 'C12-Hipertensi', 'c12@keranjang.co', 'sekeloa', '123456', '1969-05-08', 'Hipertensi,', 'c12', '5c385d6d334ea0a9301bd28ea067aba7'),
(13, 'C15-Hipertensi', 'c15@keranjang.co', 'sekeloa', '123456', '1971-06-09', 'Hipertensi,', 'c15', 'd4e99aaa1f75eb02a66f89dc95ca6e3c'),
(14, 'C18-Hipertensi', 'c18@keranjang.co', 'sekeloa', '123456', '1980-09-09', 'Hipertensi,', 'c18', '856deecf45fa4ace6b5b49bd4ad54acf'),
(15, 'C21-Hipertensi', 'c21@keranjang.co', 'sekeloa', '123456', '1981-09-09', 'Hipertensi,', 'c21', 'a4157eabf48518bb189351bcf3b52e21'),
(16, 'C24-Hipertensi', 'c24@keranjang.co', 'sekeloa', '123456', '1987-10-11', 'Hipertensi,', 'c24', 'f13904a0edbe91cc85cfd7b824d9b801'),
(17, 'C27-Hipertensi', 'c27@keranjang.co', 'sekeloa', '123456', '1982-09-06', 'Hipertensi,', 'c27', 'f1852259718f260ca67402fd8acb42f8'),
(18, 'C30-Hipertensi', 'c30@keranjang.co', 'sekeloa', '123456', '1981-12-06', 'Hipertensi,', 'c30', 'd81fee4887336b1dba216cfff99bd9e6'),
(19, 'C4-Jantung', 'c4@keranjang.co', 'sekeloa', '123456', '1975-11-04', 'Jantung,', 'c4', 'cb7524d792327e4c443d619de5c71a7a'),
(20, 'C7-Jantung', 'c7@keranjang.co', 'sekeloa', '123456', '1976-11-05', 'Jantung,', 'c7', '4d3a21d8c684c09c19b93be911827fd5'),
(21, 'C10-Jantung', 'c10@keranjang.co', 'sekeloa', '123456', '1975-12-06', 'Jantung,', 'c10', '47cfc27c36f07700a44a24887ded7cec'),
(22, 'C13-Jantung', 'c13@keranjang.co', 'sekeloa', '123456', '1977-12-05', 'Jantung,', 'c13', 'd0a4f1984f1ee1f764a04b6536d96b1b'),
(23, 'C16-Jantung', 'c16@keranjang.co', 'sekeloa', '123456', '1979-12-05', 'Jantung,', 'c16', 'e77aa1b8a24da9674c86f83bb588777b'),
(24, 'C19-Jantung', 'c19@keranjang.co', 'sekeloa', '123456', '1976-01-04', 'Jantung,', 'c19', '647e24fdbfcbc54e7dbb98e11c45059b'),
(25, 'C22-Jantung', 'c22@keranjang.co', 'sekeloa', '123456', '1977-02-03', 'Jantung,', 'c22', '99ff292e23794ad843b5d75c459ed289'),
(26, 'C25-Jantung', 'c25@keranjang.co', 'sekeloa', '123456', '1975-03-02', 'Jantung,', 'c25', '5f7478e5278270a0851340d2deda3943'),
(27, 'C28-Jantung', 'c28@keranjang.co', 'sekeloa', '123456', '1978-04-01', 'Jantung,', 'c28', '074d5d17d831582ffcaf1edde78d2adb'),
(28, 'C5-Diabetes', 'c5@keranjang.co', 'sekeloa', '123456', '1976-05-01', 'Diabetes,', 'c5', '25ea1682e16466c0667abdc095920f6c'),
(29, 'C8-Diabetes', 'c8@keranjang.co', 'sekeloa', '123456', '1978-06-02', 'Diabetes,', 'c8', '7cd1d2b54911b95b06b1c423bd551f2f'),
(30, 'C11-Diabetes', 'c11@keranjang.co', 'sekeloa', '123456', '1981-08-07', 'Diabetes,', 'c11', 'a9f7e97965d6cf799a529102a973b8b9'),
(31, 'C14-Diabetes', 'c14@keranjang.co', 'sekeloa', '123456', '1982-10-18', 'Diabetes,', 'c14', '0ae79a56a8ffad7be7d27b4ab266a912'),
(32, 'C17-Diabetes', 'c17@keranjang.co', 'sekeloa', '123456', '1987-12-20', 'Diabetes,', 'c17', '4d41ca3ae901a60c9d82d1eb80b58661'),
(33, 'C20-Diabetes', 'c20@keranjang.co', 'sekeloa', '123456', '1984-11-27', 'Diabetes,', 'c20', '801886d15a07a0f786169c3fa4c54b34'),
(34, 'C23-Diabetes', 'c23@keranjang.co', 'sekeloa', '123456', '1985-09-30', 'Diabetes,', 'c23', 'de118786b5cddc3188d04a75e15d854e'),
(35, 'C26-Diabetes', 'c26@keranjang.co', 'sekeloa', '123456', '1983-10-30', 'Diabetes,', 'c26', '8557acbd605dce2d0a6106c47bcd2338'),
(36, 'C29-Diabetes', 'c29@keranjang.co', 'sekeloa', '123456', '1980-11-23', 'Diabetes,', 'c29', '081b16bcd52a14c866fe2ab1ae3c065a');

-- --------------------------------------------------------

--
-- Table structure for table `customer_illness`
--

CREATE TABLE IF NOT EXISTS `customer_illness` (
`customer_illness_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `illness_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_illness`
--

INSERT INTO `customer_illness` (`customer_illness_id`, `customer_id`, `illness_id`) VALUES
(69, 6, 1),
(70, 6, 2),
(71, 6, 3),
(72, 7, 1),
(73, 8, 2),
(74, 9, 3),
(75, 10, 3),
(76, 11, 3),
(77, 12, 3),
(78, 13, 3),
(79, 14, 3),
(80, 15, 3),
(81, 16, 3),
(82, 17, 3),
(83, 18, 3),
(84, 19, 1),
(85, 20, 1),
(86, 21, 1),
(87, 22, 1),
(88, 23, 1),
(89, 24, 1),
(90, 25, 1),
(91, 26, 1),
(92, 27, 1),
(93, 28, 2),
(94, 29, 2),
(95, 30, 2),
(96, 31, 2),
(97, 32, 2),
(98, 33, 2),
(99, 34, 2),
(100, 35, 2),
(101, 36, 2);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
`doctor_id` int(11) NOT NULL,
  `doctor_name` varchar(100) NOT NULL,
  `doctor_username` varchar(30) NOT NULL,
  `doctor_password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `doctor_username`, `doctor_password`) VALUES
(1, 'Gunawan Junaedi', 'gunawan', 'dc96b97c4ffbead46ca25ef5d4b77cbe');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
`guest_id` int(11) NOT NULL,
  `guest_ip` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `guest_ip`) VALUES
(1, '1270'),
(2, '1270'),
(3, '1270'),
(4, '127.0.0.1'),
(5, '127.0.0.1'),
(6, '127.0.0.1'),
(7, '127.0.0.1'),
(8, '127.0.0.1'),
(9, '127.0.0.1'),
(10, '127.0.0.1'),
(11, '127.0.0.1'),
(12, '127.0.0.1'),
(13, '127.0.0.1'),
(14, '127.0.0.1'),
(15, '127.0.0.1'),
(16, '127.0.0.1'),
(17, '127.0.0.1'),
(18, '127.0.0.1'),
(19, '127.0.0.1'),
(20, '127.0.0.1'),
(21, '127.0.0.1'),
(22, '127.0.0.1'),
(23, '127.0.0.1'),
(24, '127.0.0.1'),
(25, '127.0.0.1'),
(26, '127.0.0.1'),
(27, '127.0.0.1'),
(28, '127.0.0.1'),
(29, '127.0.0.1'),
(30, '127.0.0.1'),
(31, '127.0.0.1'),
(32, '127.0.0.1'),
(33, '127.0.0.1'),
(34, '127.0.0.1'),
(35, '127.0.0.1'),
(36, '127.0.0.1'),
(37, '127.0.0.1'),
(38, '127.0.0.1'),
(39, '127.0.0.1'),
(40, '127.0.0.1'),
(41, '127.0.0.1'),
(42, '127.0.0.1'),
(43, '127.0.0.1'),
(44, '127.0.0.1'),
(45, '127.0.0.1'),
(46, '127.0.0.1'),
(47, '127.0.0.1'),
(48, '127.0.0.1'),
(49, '127.0.0.1'),
(50, '127.0.0.1'),
(51, '127.0.0.1'),
(52, '127.0.0.1'),
(53, '127.0.0.1'),
(54, '127.0.0.1'),
(55, '127.0.0.1'),
(56, '127.0.0.1'),
(57, '127.0.0.1'),
(58, '127.0.0.1'),
(59, '127.0.0.1'),
(60, '127.0.0.1'),
(61, '127.0.0.1'),
(62, '127.0.0.1'),
(63, '127.0.0.1'),
(64, '127.0.0.1'),
(65, '192.168.1.123'),
(66, '192.168.1.118'),
(67, '127.0.0.1'),
(68, '192.168.1.115'),
(69, '127.0.0.1'),
(70, '127.0.0.1'),
(71, '127.0.0.1'),
(72, '127.0.0.1'),
(73, '127.0.0.1'),
(74, '127.0.0.1'),
(75, '127.0.0.1'),
(76, '127.0.0.1'),
(77, '127.0.0.1'),
(78, '127.0.0.1'),
(79, '127.0.0.1'),
(80, '127.0.0.1'),
(81, '127.0.0.1'),
(82, '127.0.0.1'),
(83, '127.0.0.1'),
(84, '127.0.0.1'),
(85, '127.0.0.1'),
(86, '127.0.0.1'),
(87, '127.0.0.1'),
(88, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `guest_cart`
--

CREATE TABLE IF NOT EXISTS `guest_cart` (
`guest_cart_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `id_product_size_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_cart`
--

INSERT INTO `guest_cart` (`guest_cart_id`, `guest_id`, `product_id`, `id_product_size_price`, `quantity`, `status`) VALUES
(1, 48, 2, 3, 3, 'cart');

-- --------------------------------------------------------

--
-- Table structure for table `guest_orders`
--

CREATE TABLE IF NOT EXISTS `guest_orders` (
`guest_orders_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `orders_detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `illness`
--

CREATE TABLE IF NOT EXISTS `illness` (
`illness_id` int(11) NOT NULL,
  `illness_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `illness`
--

INSERT INTO `illness` (`illness_id`, `illness_name`) VALUES
(1, 'Jantung'),
(2, 'Diabetes'),
(3, 'Hipertensi');

-- --------------------------------------------------------

--
-- Table structure for table `illness_prohibition`
--

CREATE TABLE IF NOT EXISTS `illness_prohibition` (
`illness_prohibition_id` int(11) NOT NULL,
  `illness_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `illness_prohibition`
--

INSERT INTO `illness_prohibition` (`illness_prohibition_id`, `illness_id`, `recipe_id`) VALUES
(1, 2, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `illness_recommendation`
--

CREATE TABLE IF NOT EXISTS `illness_recommendation` (
`illness_recommendation_id` int(11) NOT NULL,
  `illness_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `illness_recommendation`
--

INSERT INTO `illness_recommendation` (`illness_recommendation_id`, `illness_id`, `recipe_id`) VALUES
(1, 1, 35);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`orders_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `orders_detail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `customer_id`, `orders_detail`) VALUES
(6, 1, '6,7,1,20,21,1,'),
(7, 1, '6,7,1,20,21,1,14,15,1,'),
(8, 1, '6,7,1,20,21,1,14,15,1,2,3,20,'),
(9, 1, '6,7,1,20,21,1,14,15,1,2,3,20,13,14,3,6,7,3,2,3,3,20,21,4,15,16,3,23,23,2,6,7,1,20,21,1,');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_brand` varchar(50) NOT NULL,
  `product_image` varchar(150) NOT NULL,
  `product_type_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_brand`, `product_image`, `product_type_id`) VALUES
(1, 'Apple Fuji', 'Fresho', 'Fresho - Apple Fuji', 1),
(2, 'Banana - Yelakki Semi Ripe (Grade A)', 'Fresho', 'Fresho - Banana - Yelakki Semi Ripe (Grade A)', 1),
(3, 'Beans - French Ring (Grade A)', 'Fresho', 'Fresho - Beans - French Ring (Grade A)', 2),
(4, 'Cabbage Small - Grade A', 'Fresho', 'Fresho - Cabbage Small - Grade A', 2),
(5, 'Capsicum Hybrid Green - Grade A', 'Fresho', 'Fresho - Capsicum Hybrid Green - Grade A', 2),
(6, 'Carrot Local - Grade A', 'Fresho', 'Fresho - Carrot Local - Grade A', 2),
(7, 'Cauliflower(medium) - Grade A', 'Fresho', 'Fresho - Cauliflower(medium) - Grade A', 2),
(8, 'Chilly Green Big - Grade A', 'Fresho', 'Fresho - Chilly Green Big - Grade A', 2),
(9, 'Coriander Hybrid - Grade A', 'Fresho', 'Fresho - Coriander Hybrid - Grade A', 2),
(10, 'Cucumber Hybrid - Grade A', 'Fresho', 'Fresho - Cucumber Hybrid - Grade A', 2),
(11, 'Fresh Ginger - Grade A', 'Fresho', 'Fresho - Fresh Ginger - Grade A', 2),
(12, 'Ladies Finger - Grade A', 'Fresho', 'Fresho - Ladies Finger - Grade A', 2),
(13, 'Lemon - Grade A', 'Fresho', 'Fresho - Lemon - Grade A', 1),
(14, 'Onion - Medium', 'Fresho', 'Fresho - Onion - Medium', 2),
(15, 'Papaya Local (Medium) - Grade A', 'Fresho', 'Fresho - Papaya Local (Medium) - Grade A', 1),
(16, 'Pomegranate - Kesar', 'Fresho', 'Fresho - Pomegranate - Kesar', 1),
(17, 'Potato', 'Fresho', 'Fresho - Potato', 2),
(18, 'Spinach', 'Fresho', 'Fresho - Spinach', 2),
(19, 'Tomato Hybrid - Grade A', 'Fresho', 'Fresho - Tomato Hybrid - Grade A', 1),
(20, 'Tomato Local - Grade A', 'Fresho', 'Fresho - Tomato Local - Grade A', 1),
(22, 'Manggo - Banganapalli', 'Fresho', 'Fresho_-_Manggo_-_Banganapalli', 1),
(23, 'Watermelon Kiran', 'Fresho', 'Fresho_-_Watermelon_Kiran', 1),
(24, 'Chicken Breast - Boneless', 'Fresho Meats', 'Fresho_Meats_-_Chicken_Breast_-_Boneless', 3),
(25, 'White Prawns - Medium', 'Fresho Meats', 'Fresho_Meats_-_White_Prawns_-_Medium', 3),
(26, 'Chicken - Liver', 'Fresho Meats', 'Chicken_-_Liver', 3),
(27, 'Mackerel Fish (Large) - 2 Pieces', 'Fresho Meats', 'Fresho_Meats_-_Mackerel_Fish_Large_-_2_Pieces', 3),
(28, 'Tuna Fish - Steak/Slice', 'Fresho Meats', 'Fresho_Meats_-_Tuna_Fish_-_Steak_or_Slice', 3),
(29, 'Chicken Drumstick - Without Skin', 'Fresho Meats', 'Fresho_Meats_-_Chicken_Drumstick_-_Without_Skin', 3),
(30, 'Chicken Mixed - Boneless', 'Fresho Meats', 'Fresho_Meats_-_Chicken_Mixed_-_Boneless', 3),
(31, 'Chicken Wings', 'Fresho Meats', 'Fresho_Meats_-_Chicken_Wings', 3),
(32, 'Mutton Shoulder - Boneless', 'Fresho Meats', 'Fresho_Meats_-_Mutton_Shoulder_-_Boneless', 3),
(33, 'Mutton - Leg Pieces', 'Fresho Meats', 'Fresho_Meats_-_Mutton_-_Leg_Pieces', 3),
(34, 'Mutton - Mince', 'Fresho Meats', 'Fresho_Meats_-_Mutton_-_Mince', 3),
(35, 'Coconut Oil', 'Sunco', 'Sunco_-_Coconut_Oil', 4),
(36, 'Gula Tebu Kuning', 'Gulaku', 'Gulaku_-_Gula_Tebu_Kuning', 4),
(37, 'Gula Tebu Premium Putih', 'Gulaku', 'Gulaku_-_Gula_Tebu_Premium_Putih', 4),
(38, 'Garam Beryodium', 'Miwon', 'Miwon_-_Garam_Beryodium', 4),
(39, 'Garam Beryodium Botol', 'Miwon', 'Miwon_-_Garam_Beryodium_-_Botol', 4),
(40, 'Garlic', 'Fresho', 'Fresho_-_Garlic', 2),
(41, 'Terasi Udang', 'ABC', 'ABC_-_Terasi_Udang', 4),
(42, 'Red Chilli', 'BB Royal', 'BB_Royal_-_Red_Chilli', 4),
(43, 'Lemongrass', 'Fresho', 'Fresho_-_Lemongrass', 4),
(44, 'Curry Powder', 'MDH', 'MDH_-_Curry_Powder', 4),
(45, 'Brown Sugar', 'Arya Organik', 'Arya_Organic_-_Brown_Sugar', 4),
(46, 'Coconut Milk Powder', 'Maggi', 'Maggi_-_Coconut_Milk_Powder', 4),
(47, 'Hake Fillets', 'Fresho Meats', 'Fresho_Meats_-_Hake_Fillets', 3),
(48, 'Sweet Lime', 'Fresho', 'Fresho_-_Sweet_Lime', 1),
(49, 'Sunflower Oil - Premium Refined', 'Safal', 'Safal_-_Sunflower_Oil_-_Premium_Refined', 4),
(50, 'Shiitake Mushrooms', 'Le Gourmetz', 'Le_Gourmetz_-_Shiitake_Mushrooms', 2),
(51, 'Paste - Massaman Curry', 'Real Thai', 'Real_Thai_-_Paste_-_Massaman_Curry', 4),
(52, 'Straight To Wok Medium Noodles', 'Amoy', 'Amoy_-_Straight_To_Wok_Medium_Noodles', 6),
(53, 'Canola Oil', 'Borges', 'Borges_-_Canola_Oil', 4),
(54, 'Celery', 'Fresho', 'Fresho_-_Celery', 2),
(55, 'Leeks', 'Fresho', 'Fresho_-_Leeks', 2),
(56, 'Mentega', 'Blue Band', 'Blue_Band_-_Mentega', 4),
(57, 'Kaldu Ayam', 'Royco', 'Royco_-_Kaldu_Ayam', 4),
(58, 'Broccoli', 'Fresho', 'Fresho_-_Broccoli', 2),
(59, 'Stilton Cheese', 'Cooper Thornhill', 'Cooper_Thornhill_-_Stilton_Cheese', 5),
(60, 'Cream Cheese', 'La Cremella', 'La_Cremella_-_Cream_Cheese', 5),
(61, 'Korma Paste', 'Pataks', 'Pataks_-_Korma_Paste', 4),
(62, 'Cherry Tomato', 'Kraft Seeds', 'Kraft_Seeds_-_Cherry_Tomato', 2),
(63, 'Rosemary', 'Naturesmith', 'Naturesmith_-_Rosemary', 4),
(64, 'Organic Tarragon', 'Spicely Organics', 'Spicely_Organics_-_Organic_Tarragon', 4),
(65, 'Asparagus', 'Fresho', 'Fresho_-_Asparagus', 2),
(66, 'Courgettes', 'Sainburry', 'Sainburry_-_Courgettes', 2),
(67, 'Green Peas - Peeled', 'Fresho', 'Fresho_-_Green_Peas_-_Peeled', 2),
(68, 'Feta', 'Athenos', 'Athenos_-_Feta_', 5),
(69, 'Crumbled Feta', 'Athenos', 'Athenos_-_Crumbled_Feta_', 5),
(70, 'Diced Beef', 'Fresho Meats', 'diced_beef', 3),
(71, 'Sushi Rice', 'Blue Dragon', 'Blue_Dragon_-_Sushi_Rice', 4),
(72, 'Sirloin Steak', 'Tesco', 'Tesco_-_Sirloin_Steak', 3),
(73, 'Soy Sauce', 'Sedaap', 'Sedaap_-_Soy_Sauce', 4),
(74, 'Sesame Oil', 'Turn Organic', 'Turn_Organic_-_Sesame_Oil', 4),
(75, 'Eggs', 'Fresh', 'Fresh_-_Eggs', 3),
(76, 'Sweet and Spicy Chilli Sauce', 'Indofood', 'Indofood_-_Sweet_and_Spicy_Sauce_Chilli_Sauce', 4),
(77, 'Habanero and Tabasco Pepper', 'American Garden', 'American_Garden_-_Habanero_and_Tabasco_Pepper', 4),
(78, 'Parsley', 'Fresho', 'Fresho_-_Parsley', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_size_price`
--

CREATE TABLE IF NOT EXISTS `product_size_price` (
`id_product_size_price` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_price` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_size_price`
--

INSERT INTO `product_size_price` (`id_product_size_price`, `product_id`, `product_size`, `product_price`) VALUES
(1, 1, '1 kg', 38000),
(2, 1, '500 gr', 23000),
(3, 2, '1 kg', 10000),
(4, 3, '1 kg', 6000),
(5, 4, '1 pc', 5000),
(6, 5, '1 kg', 6000),
(7, 6, '1 kg', 7500),
(8, 7, '1 pc approx. 450 to 600 gr', 3500),
(9, 8, '250 gr', 2600),
(10, 9, '250 gr', 3500),
(11, 10, '1 kg', 2000),
(12, 11, '250 gr', 5000),
(13, 12, '1 kg', 8000),
(14, 13, '500 gr', 8000),
(15, 14, '1 kg', 5000),
(16, 15, '1 pc approx. 900 gr to 1 kg', 5000),
(17, 16, '1 kg', 30000),
(18, 17, '1 kg', 6000),
(19, 18, '500 gr', 5000),
(20, 19, '1 kg', 3200),
(21, 20, '1 kg', 2600),
(22, 22, '1 kg', 45000),
(23, 23, '2 kg', 25000),
(24, 24, '500 gr', 40000),
(25, 25, '500 gr', 45000),
(26, 26, '500 gr', 10000),
(27, 27, '500 gr', 29000),
(28, 28, '500 gr', 48000),
(29, 29, '500 gr', 29000),
(30, 30, '500 gr', 45000),
(31, 31, '500 gr', 18000),
(32, 32, '500 gr', 68000),
(33, 33, '500 gr', 56000),
(34, 34, '500 gr', 69000),
(35, 35, '1000 ml', 19000),
(36, 36, '1 Kg', 15600),
(37, 37, '1 Kg', 15500),
(38, 38, '500 gr', 6000),
(39, 39, '300 gr', 7000),
(40, 40, '100 gr', 2500),
(41, 41, '20 pcs', 4500),
(42, 42, '200 gr', 7800),
(43, 43, '5 stalks', 6000),
(44, 44, '100 gr', 10000),
(45, 45, '500 gr', 14000),
(46, 46, '100 gr', 16000),
(47, 47, '500 gr', 26000),
(48, 48, '500 gr', 7000),
(49, 49, '1 Litre', 16000),
(50, 50, '35 gr', 20000),
(51, 51, '227 gr', 35000),
(52, 52, '1 pc - 150 gr', 7500),
(53, 53, '1 litre', 50000),
(54, 54, '500 gr', 7000),
(55, 55, '100 gr', 2500),
(56, 56, '200 gr', 6000),
(57, 57, '100 gr', 4700),
(58, 58, '200 gr', 10000),
(59, 59, '200 gr', 100000),
(60, 60, '200 gr', 35000),
(61, 61, '290 gr', 50000),
(62, 62, '25 pcs', 15000),
(63, 63, '25 gr', 12000),
(64, 64, '3 gr', 15000),
(65, 65, '100 gr', 8000),
(66, 66, '1 pc - 200 gr', 7000),
(67, 67, '250 gr', 6000),
(68, 68, '226 gr', 50000),
(69, 69, '170 gr', 70000),
(70, 70, '500 gr', 45000),
(71, 71, '500 gr', 27000),
(72, 72, '300 gr', 45000),
(73, 73, '135 ml', 7500),
(74, 74, '460 gr', 40000),
(75, 75, '6 pcs', 7000),
(76, 76, '140 ml', 3600),
(77, 77, '454 gr', 20000),
(78, 78, '100 gr', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE IF NOT EXISTS `product_type` (
`id_product_type` int(10) NOT NULL,
  `product_type_name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id_product_type`, `product_type_name`) VALUES
(1, 'buah'),
(2, 'sayur, umbi, jamur'),
(3, 'ayam, daging, ikan, telur'),
(4, 'bahan memasak'),
(5, 'susu dan olahan susu'),
(6, 'makanan'),
(7, 'minuman');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE IF NOT EXISTS `recipe` (
`recipe_id` int(11) NOT NULL,
  `recipe_name` varchar(100) NOT NULL,
  `recipe_image` varchar(150) NOT NULL,
  `id_recipe_type` int(10) DEFAULT NULL,
  `recipe_description` text NOT NULL,
  `recipe_portion` varchar(20) NOT NULL,
  `recipe_composition` text NOT NULL,
  `recipe_howto` text NOT NULL,
  `recipe_difficulty` int(5) NOT NULL,
  `recipe_rating` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `recipe_name`, `recipe_image`, `id_recipe_type`, `recipe_description`, `recipe_portion`, `recipe_composition`, `recipe_howto`, `recipe_difficulty`, `recipe_rating`) VALUES
(1, 'Coconut Fish Curry', 'Coconut Fish Curry', 1, 'This colourful hake and prawn one-pot has Thai and Indian inspired flavours and is quick enough for midweek - ready in under 30 minutes', '4', '{"compositions":[     {"composition":"1 tbsp vegetable oil"},     {"composition":"1 onion, finely chopped"},     {"composition":"thumb-sized piece ginger, finely grated"},     {"composition":"3 garlic cloves, crushed"},     {"composition":"1 tsp shrimp paste"},     {"composition":"1 small red chilli"},          {"composition":"2 lemongrass stalks, split, then bruised with a rolling pin"},     {"composition":"1 heaped tbsp medium curry powder"},     {"composition":"1 heaped tbsp light muscovado sugar"},     {"composition":"small bunch coriander, stems finely chopped"},     {"composition":"150g coconut milk"},     {"composition":"450g skinless hake fillets, cut into rectangles, roughly credit card size"},     {"composition":"220g pack frozen raw whole prawns (we used Big & Juicy Tiger Prawns, which are sustainably fished)"},     {"composition":"1 lime, halved"},     {"composition":"cooked rice, to serve"} ]}', '{"howtos":[     {"howto":"Heat the oil in a wide, lidded frying pan, then soften the onion for 5 mins. Increase the heat a little, stir in the ginger, garlic, shrimp paste, chilli and lemongrass, and cook for 2 mins. Add the curry powder and sugar, and keep stirring. When the sugar starts to melt and everything starts to clump together, add the coriander stems, coconut milk and 2 tbsp water, then bring to a simmer."},     {"howto":"Add the fish to the sauce, tuck the prawns in here and there, then squeeze over half the lime. Pop on the lid and simmer for 5 mins more or until the hake is just cooked and flaking, and the prawns are pink through. Taste for seasoning, adding a squeeze more lime to the sauce if you like. Scatter over the coriander leaves and serve with rice."} ]}', 2, 0),
(2, 'Spicy Prawn Soup', 'Spicy Prawn Soup', 1, 'A quick and spicy wok-based soup means one pan, zero fuss and supper''s on the table in 20 minutes', '4', '{"compositions":[     {"composition":"1 tbsp sunflower oil"},     {"composition":"300g bag crunchy stir-fry vegetables"},     {"composition":"140g shiitake mushrooms, sliced"},     {"composition":"2 tbsp Thai green curry paste"},     {"composition":"400g can reduced-fat coconut milk"},     {"composition":"200ml vegetable or fish stock"},     {"composition":"300g medium straight-to-wok noodles"},     {"composition":"200g bag large, raw prawns"} ]}', '{"howtos":[    {"howto":"Heat a wok, add the oil, then stir-fry the veg and mushrooms for 2-3 mins. Take out and set aside, then tip the curry paste into the pan and fry for 1 min."},    {"howto":"Pour in the coconut milk and stock. Bring to the boil, drop in the noodles and prawns, then reduce the heat and simmer for 4 mins until the prawns are cooked through. Stir in the veg, then serve."}]}', 1, 0),
(3, 'Sushi rice bowl with beef, egg & chilli sauce', 'with beef, egg & chilli sauce', 4, 'Sticky and delicious, sushi rice is more versatile than you may think and is great in a stir fry.', '2', '{"compositions":[    {"composition":"140g sushi rice"},    {"composition":"250g/9oz rump steak, thinly sliced"},    {"composition":"1 garlic clove, chopped"},    {"composition":"1 tbsp soy sauce"},    {"composition":"good pinch sugar"},    {"composition":"2 tbsp sesame oil"},    {"composition":"2 eggs"},    {"composition":"1 large carrot, cut into long matchsticks"},    {"composition":"1 large courgette, cut into long matchsticks"},    {"composition":"2 tbsp sweet and spicy chilli sauce"}]}', '{"howtos":[\r\n    {"howto":"Boil the sushi rice in a large pan with plenty of water – it should take about 8-10 mins – until it is just cooked and still has a bite to it. Drain, place back in the pan, cover with a lid and set aside."},\r\n    {"howto":"Mix the steak with the garlic, soy sauce, sugar and a grind of black pepper. You will need 2 frying pans or 1 frying pan and a wok: divide the oil between the 2 pans and heat until just smoking. Fry the eggs to your liking, then set aside. In the other pan, brown the beef for 1-2 mins, then remove and keep warm. Tip the vegetables into the pan, stir-fry for 1 min, then push to one side, add the rice and cook for 1 min more to heat through."},\r\n    {"howto":"Divide the rice, veg and beef between 2 bowls. Slide the eggs on top and drizzle with the chilli sauce. Each person can then toss everything together, so the egg yolk mixes with the hot rice and sauce."}\r\n]}', 2, 4),
(4, 'Beef & bean hotpot', 'Beef & bean hotpot', 4, 'A hearty one pot meal to satisfy the whole family', '8', '{"compositions":[     {"composition":"750g lean minced beef"},     {"composition":"1 beef stock cube"},     {"composition":"2 large onions, roughly chopped"},     {"composition":"450g carrots, peeled and thickly sliced"},     {"composition":"1¼kg/2lb 12oz potato, peeled and cut into large chunks"},     {"composition":"2 400g cans baked beans"},     {"composition":"Worcestershire sauce or Tabasco sauce, to taste"},     {"composition":"large handful of parsley, roughly chopped"} ]}\r\n', '{"howtos":[\r\n    {"howto":"Heat a large non-stick pan, add the beef then fry over a medium-high heat until browned, stirring often and breaking up any lumps with a spoon. Crumble in the stock cube and mix well."},\r\n    {"howto":"Add the vegetables, stir to mix with the beef and pour in enough boiling water (about 1.3 litres) to cover. Bring to the boil, then lower the heat and stir well. Cover the pan and simmer gently for about 30 mins or until the vegetables are tender."},\r\n    {"howto":"Tip in the baked beans, sprinkle with Worcestershire sauce or Tabasco to taste, stir well and heat through. Taste for seasoning and sprinkle with parsley. Serve with extra Worcestershire sauce or Tabasco, for those who like a peppery hot taste."}\r\n]}', 2, 5),
(5, 'Smoky beef stew', 'Smoky beef stew', 4, 'Enjoy this simple stew for dinner, then pack into boxes to keep you going for lunches', '6', '{"compositions":[     {"composition":"1kg stewing beef, cut into large chunks"},     {"composition":"2 onions, chopped"},     {"composition":"800g (2 cans) chopped tomatoes"},     {"composition":"2 tsp each sweet paprika, ground cumin and mild chilli powder"},     {"composition":"2 tbsp red or white wine vinegar"},     {"composition":"2 tbsp caster sugar"},     {"composition":"400g can butter beans, rinsed and drained"} ]}', '{"howtos":[\r\n    {"howto":"Heat oven to 160C/ 140C fan/gas 3. Mix the beef, onions, tomatoes, spices, vinegar and sugar in a casserole dish. Cover and bake for 2½ hrs. Stir in the beans and bake for 30 mins more (with the lid off if the casserole is a little wet or lid on if good consistency), until the beef is tender."},\r\n    {"howto":"Cool, then freeze in 6-8 portions in small food bags or plastic containers. Defrost in microwave or overnight in fridge, then heat in the morning and transfer to a thermos container, or heat in the microwave at lunchtime."}\r\n]}', 3, 3),
(6, 'Pot-roast beef with French onion gravy', 'Pot-roast beef with French onion gravy', 4, 'Silverside and topside are cheaper and leaner cuts of meat, well-suited to slow-cooking. The stock and juices make a great sauce when combined with caramelised onions', '4', '{"compositions":[     {"composition":"1kg silverside or topside of beef, with no added fat"},     {"composition":"2 tbsp olive oil"},     {"composition":"8 young carrots, tops trimmed (but leave a little, if you like)"},     {"composition":"1 celery stick, finely chopped"},     {"composition":"200ml white wine"},     {"composition":"600ml rich beef stock"},     {"composition":"2 bay leaves"},     {"composition":"500g onions"},     {"composition":"a few thyme sprigs"},     {"composition":"1 tsp butter"},     {"composition":"1 tsp light brown or light muscovado sugar"},     {"composition":"2 tsp plain flour"} ]}', '{"howtos":[\r\n    {"howto":"Heat oven to 160C/140C fan/gas 3. Rub the meat with 1 tsp of the oil and plenty of seasoning. Heat a large flameproof casserole dish and brown the meat all over for about 10 mins. Meanwhile, add 2 tsp oil to a frying pan and fry the carrots and celery for 10 mins until turning golden."},\r\n    {"howto":"Lift the beef onto a plate, splash the wine into the hot casserole and boil for 2 mins. Pour in the stock, return the beef, then tuck in the carrots, celery and bay leaves, trying not to submerge the carrots too much. Cover and cook in the oven for 2 hrs. (I like to turn the beef halfway through cooking.)"},\r\n    {"howto":"Meanwhile, thinly slice the onions. Heat 1 tbsp oil in a pan and stir in the onions, thyme and some seasoning. Cover and cook gently for 20 mins until the onions are softened but not coloured. Remove the lid, turn up the heat, add the butter and sugar, then let the onions caramelise to a dark golden brown, stirring often. Remove the thyme sprigs, then set aside.)"},\r\n    {"howto":"When the beef is ready, it will be tender and easy to pull apart at the edges. Remove it from the casserole and snip off the strings. Reheat the onion pan, stir in the flour and cook for 1 min. Whisk the floury onions into the beefy juices in the casserole, to make a thick onion gravy. Taste for seasoning. Add the beef and carrots back to the casserole, or slice the beef and bring to the table on a platter, with the carrots to the side and the gravy spooned over.)"}\r\n]}', 4, 3),
(7, 'Chicken korma melts', 'Chicken korma melts', 3, 'Add a fresh flavour to chicken breasts with this Indian-inspired creamy topping - serve with rice and salad for a weeknight dinner', '4', '{"compositions":[     {"composition":"4 skinless chicken breast fillets"},     {"composition":"180g tub full-fat cream cheese"},     {"composition":"2 tbsp Korma paste"},     {"composition":"1 tbsp chopped coriander, plus extra to serve"},     {"composition":"juice ½ lemon"},     {"composition":"1 red chilli, deseeded and thinly sliced"},     {"composition":"8 cherry tomatoes, halved"},     {"composition":"rice and salad, or new potatoes and vegetables, to serve"} ]}', '{"howtos":[    {"howto":"Heat oven to 200C/180C fan/gas 6 and arrange the chicken in a large ovenproof dish. Beat the cheese, korma paste and the 1 tbsp coriander together with a squeeze of lemon. Squeeze the remaining lemon over the chicken and spread the curry mix on top. Scatter over the chilli and bake for 15 mins."},    {"howto":"Remove from the oven, add the tomatoes to the dish then return to cook for another 10 mins. Scatter with more coriander and serve with rice and salad or new potatoes and vegetables.)"}]}', 2, 4),
(8, 'Spring roast chicken', 'Spring roast chicken', 3, 'Cut the cost of a chicken dinner with thighs and be rewarded by juicy meat and crispy skin in this dish with asparagus, courgettes, peas and feta', '4', '{"compositions":[     {"composition":"8 chicken thighs, on the bone, skin on"},     {"composition":"2 tbsp olive oil"},     {"composition":"1 lemon, zested and cut into wedges"},     {"composition":"4 shallots, thickly sliced"},     {"composition":"4 rosemary sprigs"},     {"composition":"small pack tarragon"},     {"composition":"450g asparagus spears, trimmed"},     {"composition":"2 courgettes, thickly sliced on the diagonal"},     {"composition":"250g peas (preferably fresh, not frozen)"},     {"composition":"100g feta, crumbled"} ]}', '{"howtos":[    {"howto":"Heat oven to 200C/180C fan/gas 6. Put the chicken thighs in a large shallow roasting tin, season and toss with the olive oil, lemon zest and wedges, shallots, rosemary and tarragon. Arrange the chicken thighs, skin-side up, and roast for 40-50 mins until the skin is crisp and golden."},    {"howto":"Meanwhile, bring a large pan of water to the boil and cook the asparagus for 3 mins or until tender, adding the courgettes and peas for the final minute.)"},    {"howto":"Drain the vegetables and toss in with the chicken, coating well with the cooking juices. Crumble over the feta and serve.)"}]}', 3, 3),
(9, 'Wild garlic chicken Kiev', 'Wild garlic chicken Kiev', 3, 'This classic family favourite gets a gourmet makeover with a wild garlic butter filling and a crunchy panko breadcrumb coating', '4', '{"compositions":[     {"composition":"4 skinless chicken breasts"},     {"composition":"100g wild garlic butter, softened"},     {"composition":"50g plain flour, well seasoned"},     {"composition":"3 large eggs, beaten"},     {"composition":"125g panko or coarse dried breadcrumbs"},     {"composition":"sunflower oil, for frying"},     {"composition":"mixed leaves, to serve"},     {"composition":"lemon wedges, to serve"} ]}', '{"howtos":[    {"howto":"Slice a deep pocket in each chicken breast. To do this, insert a deep knife into the thickest end of the breast. Keep pushing down along the breast, about halfway into the fillet, being careful not to cut all the way through. Push your finger down into the hole to open it, then stuff with 25g wild garlic butter, making sure that it goes all the way into the pocket. Repeat the process with the remaining chicken breasts."},    {"howto":"Line up 3 shallow bowls and put the flour in the first, the beaten eggs in the second and the breadcrumbs in the third. Dredge each chicken breast in the flour, then coat in the eggs and lastly the breadcrumbs. Dip each one in the eggs for a second time, then coat again in the breadcrumbs. Transfer to a plate and repeat with the remaining stuffed chicken breasts. Cover the plate with cling film and chill for at least 1 hr.)"},    {"howto":"When you are ready to eat, heat oven to 180C/160C fan/gas 4. Fill a pan 2cm deep with oil and set over a medium-high heat. Once hot, fry the Kievs for 2-3 mins each side until golden brown, then transfer to a baking tray. Pop in the oven for 15 mins or until cooked through. Serve with salad leaves and a lemon wedge to squeeze over.)"}]}', 4, 3),
(10, 'Moroccan chicken one-pot', 'Moroccan chicken one-pot', 3, 'You don''t need a clay pot to whip up a fragrant, North Africa tagine - throw it all in a casserole dish and top with feta, mint and lemon', '6', '{"compositions":[     {"composition":"4 boneless, skinless chicken breasts"},     {"composition":"3 tbsp olive oil"},     {"composition":"2 onions, 1 roughly chopped, 1 sliced"},     {"composition":"100g tomatoes"},     {"composition":"100g ginger, roughly chopped"},     {"composition":"3 garlic cloves"},     {"composition":"1 tsp turmeric"},     {"composition":"1 tbsp each ground cumin, coriander and cinnamon"},     {"composition":"1 large butternut squash, deseeded and cut into big chunks"},     {"composition":"600ml chicken stock"},     {"composition":"2 tbsp brown sugar"},     {"composition":"2 tbsp red wine vinegar"},     {"composition":"100g dried cherries"},     {"composition":"1 small red onion, finely chopped"},     {"composition":"zest 1 lemon"},     {"composition":"handful mint leaves"},     {"composition":"100g feta cheese, crumbled"},     {"composition":"couscous and natural yogurt"} ]}', '{"howtos":[    {"howto":"Season the chicken. Heat 2 tbsp of the oil in a flameproof dish, then brown the chicken on all sides. Remove the chicken to a plate. Whizz the chopped onion, tomatoes, ginger and garlic into a rough paste. Fry the sliced onion in the remaining oil in the dish until softened, then add the spices and fry for 1 min more until fragrant. Add the paste and fry for another few mins to soften."},    {"howto":"Return the chicken to the dish with the squash, stock, sugar and vinegar. Bring to a simmer, then cook for 30 mins until the chicken is cooked through. Lift the chicken out and stir in the cherries, then continue simmering the sauce to thicken while you shred the chicken into bite-sized chunks. Stir the chicken back into the sauce and season.)"},    {"howto":"Mix the red onion, lemon zest, mint and feta. Scatter over the dish, then serve with some couscous and yogurt.)"}]}', 3, 3),
(11, 'Lemon & thyme butter-basted roast chicken & gravy', 'Lemon & thyme butter-basted roast chicken & gravy', 3, 'Smoothing butter under the bird''s skin helps to baste the chicken and herbs add a delicious flavour to the gravy', '4', '{"compositions":[     {"composition":"50g butter, softened"},     {"composition":"bunch fresh thyme or lemon thyme, leaves picked, stalks reserved, plus extra to serve"},     {"composition":"4 garlic cloves, 1 mashed, the other 3 left whole but squashed"},     {"composition":"2 lemons, halved"},     {"composition":"1 chicken, about 1½ kg"},     {"composition":"2 carrots, roughly chopped"},     {"composition":"2 bay leaves"},     {"composition":"1 tbsp plain flour"},     {"composition":"250ml chicken stock"},     {"composition":"600ml chicken stock"},     {"composition":"splash soy sauce (optional)"} ]}', '{"howtos":[    {"howto":"Heat oven to 200C/180C fan/gas 6. In a small bowl, mash the butter with one-third of the thyme leaves, the mashed garlic and the juice of half a lemon. Mix everything together with some seasoning and set aside."},    {"howto":"Use your hand to loosen the chicken skin away from the breast, then push most of the butter mix into the gap. Rub the rest of the butter all over the outside of the chicken, then stuff the cavity with the lemon halves, remaining thyme leaves and stalks, and the garlic.)"},    {"howto":"Scatter the chopped carrot, onion and bay leaves over the base of a small roasting tin. Sit the chicken on top, breast-side up, and roast on the middle shelf for 1 hr 30 mins, basting with the buttery juices after about 40 mins. When the chicken is dark golden, crispy-skinned and the juices run clear, remove from the oven and leave in the tin for 5 mins. Use a pair of tongs to pull the lemons, garlic and thyme out of the cavity and into the tin. Lift the chicken up, letting any juices dribble into the tin, and transfer the chicken to a serving platter to rest for at least another 15 mins.)"},    {"howto":"To make the gravy, squeeze the juice out of the cooked lemon halves and discard the skins. Place the tin on a low heat, stir in flour and sizzle until light brown. Gradually pour in the stock and cook for a few mins. If you like a darker gravy, add a splash of soy sauce to the tin. Strain the gravy into a jug and serve with the chicken.)"}]}', 3, 3),
(12, 'Broccoli & Stilton soup', 'Broccoli & Stilton soup', 2, 'A smooth blended vegetable soup with blue cheese that''s as good for a comforting meal as it is for a dinner party starter', '4', '{"compositions":[     {"composition":"2 tbsp rapeseed oil"},     {"composition":"1 onion, finely chopped"},     {"composition":"1 stick celery, sliced"},     {"composition":"1 leek, sliced"},     {"composition":"1 medium potato, diced"},     {"composition":"1 knob butter"},     {"composition":"1l low salt or homemade chicken or vegetable stock"},     {"composition":"1 head broccoli, roughly chopped"},     {"composition":"140g Stilton, or other blue cheese, crumbled"} ]}', '{"howtos":[    {"howto":"Heat the rapeseed oil in a large saucepan and then add the onions. Cook on a medium heat until soft. Add a splash of water if the onions start to catch."},    {"howto":"Add the celery, leek, potato and a knob of butter. Stir until melted, then cover with a lid. Allow to sweat for 5 minutes. Remove the lid.)"},    {"howto":"Pour in the stock and add any chunky bits of broccoli stalk. Cook for 10 – 15 minutes until all the vegetables are soft.)"},    {"howto":"Add the rest of the broccoli and cook for a further 5 minutes. Carefully transfer to a blender and blitz until smooth. Stir in the stilton, allowing a few lumps to remain. Season with black pepper and serve.)"}]}', 3, 4),
(13, 'Orecchiette with anchovies & purple sprouting broccoli', 'Orecchiette with anchovies & purple sprouting broccoli', 5, 'This humble southern Italian dish spiked with chilli and lemon juice is topped with fried breadcrumbs for added crunch', '2', '{"compositions":[     {"composition":"200g orecchiette"},     {"composition":"4 tbsp olive oil"},     {"composition":"6 anchovy fillets in oil, chopped (reserve 1 tbsp oil)"},     {"composition":"4 fat garlic cloves, thinly sliced"},     {"composition":"1 red chilli, thinly sliced"},     {"composition":"zest 1 lemon, plus juice ½"},     {"composition":"50g fresh breadcrumbs"},     {"composition":"1 head broccoli, roughly chopped"},     {"composition":"200g purple sprouting broccoli"} ]}', '{"howtos":[    {"howto":"Cook the orecchiette following pack instructions. Meanwhile, heat 3 tbsp of the olive oil and 1 tbsp of the oil from the anchovies in a frying pan. Add the garlic and chilli, and sizzle for 3-4 mins until the garlic is just starting to turn golden. Add the anchovies and lemon juice, and cook for 1-2 mins more until the anchovies melt into the sauce. Put the remaining olive oil, breadcrumbs and lemon zest in another frying pan, stir together and cook until crisp."},    {"howto":"When the pasta has 4-5 mins to go, add the broccoli to the pan. When cooked, drain, reserving a cup of the pasta water, then add to the frying pan with the garlic and anchovies. Stir and cook over a low heat for a further 2 mins, adding a splash of pasta water if it looks dry. Season, then serve in pasta bowls with the lemony crumbs sprinkled over the top.)"}]}', 2, 3),
(14, 'Spiced broccoli with paneer', 'Spiced broccoli with paneer', 5, 'Paneer cheese makes a great ingredient for vegetarian curries. This one is spiced up with garam masala', '2', '{"compositions":[     {"composition":"1 large head broccoli, broken into florets"},     {"composition":"1 tbsp olive oil"},     {"composition":"225g pack paneer, sliced"},     {"composition":"1 tsp garam masala"},     {"composition":"1 garlic clove, finely chopped"},     {"composition":"1 red chilli, deseeded and finely chopped"},     {"composition":"zest and juice 1 lemon"},     {"composition":"naan bread, to serve"}]}', '{"howtos":[    {"howto":"Cook the broccoli in a large pan of boiling salted water for 3-4 mins. Save a little of the cooking water, then drain broccoli and set aside in the colander."},    {"howto":"Heat the oil in a large frying pan over a medium heat. Season, then fry the paneer for 2-3 mins on each side until golden. Move the paneer to the edge of the pan and add the garam masala, garlic, chilli and reserved cooking water. Cook for 2 mins, then return broccoli to the pan, with the lemon zest and juice. Toss everything together to heat through and serve with warm naan breads.)"}]}', 2, 4),
(15, 'Thai spinach bites', 'Thai spinach bites', 5, 'These little Thai nibbles are ready in just 10 minutes', '4', '{"compositions":[     {"composition":"2 segmented and chopped limes"},     {"composition":"2cm piece chopped ginger"},     {"composition":"1 finely sliced shallot"},     {"composition":"½ chopped chilli"},     {"composition":"1 tbsp coriander leaves"},     {"composition":"2 tbsp peanuts"},     {"composition":"dash fish sauce"},     {"composition":"sprinkle sugar"},     {"composition":"8-12 baby spinach leaves"}]}', '{"howtos":[    {"howto":"Mix together limes, ginger, shallot, chilli, coriander leaves and peanuts. Season with a dash of fish sauce and a sprinkle of sugar."},    {"howto":"Lay the spinach leaves on a platter. Place a spoonful of the mix on each, then hand round and get everyone to roll them up before eating in one bite.)"}]}', 2, 3),
(16, 'Chickpea, tomato & spinach curry', 'Chickpea, tomato & spinach curry', 5, 'A superhealthy vegan curry which accounts for 2 of your 5-a-day - and less than 200 calories per serve', '6', '{"compositions":[     {"composition":"1 onion, chopped"},     {"composition":"2 garlic cloves, chopped"},     {"composition":"3cm/1¼ in piece ginger, grated"},     {"composition":"6 ripe tomatoes"},     {"composition":"½ tbsp oil"},     {"composition":"1 tsp ground cumin"},     {"composition":"2 tsp ground coriander"},     {"composition":"1 tsp turmeric"},     {"composition":"pinch chilli flakes"},     {"composition":"1 tsp yeast extract (we used Marmite)"},     {"composition":"4 tbsp red lentils"},     {"composition":"6 tbsp coconut cream"},     {"composition":"1 head of broccoli, broken into small florets"},     {"composition":"400g can chickpeas, drained"},     {"composition":"100g bag baby spinach leaves"},     {"composition":"1 lemon, halved"},     {"composition":"1 tbsp toasted sesame seed"},     {"composition":"1 tbsp chopped cashew, to mix with the sesame seeds"}]}', '{"howtos":[    {"howto":"Put the onion, garlic, ginger and tomatoes in a food processor or blender and whizz to a purée."},    {"howto":"Heat oil in a large pan. Add the spices, fry for a few secs and add purée and yeast extract. Bubble together for 2 mins, then add lentils and coconut cream. Cook until lentils are tender, then add the broccoli and cook for 4 mins. Stir in chickpeas and spinach, squeeze over lemon and swirl through sesame and cashew mixture. Serve with brown rice, if you like.)"}]}', 3, 3),
(17, 'Spinach with chilli & lemon crumbs', 'Spinach with chilli & lemon crumbs', 5, 'Wilt fresh greens then serve with crispy breadcrumbs, chilli and garlic for a low-fat, healthy side dish', '4', '{"compositions":[     {"composition":"25g butter"},     {"composition":"100g fresh breadcrumbs"},     {"composition":"zest 1 lemon"},     {"composition":"2 garlic cloves, crushed"},     {"composition":"1 red chilli, finely chopped"},     {"composition":"500g spinach"}]}', '{"howtos":[    {"howto":"Melt the butter in a large frying pan, then when it starts to foam, tip in the breadcrumbs, zest, garlic and chilli. Cook until golden and crunchy. Remove from the pan, season and set aside."},    {"howto":"Add the spinach to the pan and wilt, stirring. Season and serve with the crunchy crumbs sprinkled over the top.)"}]}', 2, 3),
(18, 'Crab linguine with chilli & parsley', 'Crab linguine with chilli & parsley', 1, 'Keep it simple with this restaurant-style dish that takes a few good-quality ingredients and lets them shine', '4', '{"compositions":[     {"composition":"400g linguine"},     {"composition":"4 tbsp extra-virgin olive oil"},     {"composition":"1 red chilli, deseeded and chopped"},     {"composition":"2 garlic cloves, finely chopped"},     {"composition":"1 whole cooked crab, picked, or about 100g/4oz brown crabmeat and 200g/7oz fresh white crabmeat"},     {"composition":"small squeeze of lemon"},          {"composition":"large handful flat-leaf parsley leaves, very finely chopped"} ]}', '{"howtos":[     {"howto":"Bring a large pan of salted water to the boil and add the linguine. Give it a good stir and boil for 1 min less than the pack says. Stir well occasionally so it doesn’t stick."},     {"howto":"While the pasta cooks, gently heat 3 tbsp of olive oil with the chilli and garlic in a pan large enough to hold all the pasta comfortably."},     {"howto":"Cook the chilli and garlic very gently until they start to sizzle, then turn up the heat and add the white wine. Simmer everything until the wine and olive oil come together. Then take off the heat and add the brown crabmeat, using a wooden spatula or spoon to mash it into the olive oil to make a thick sauce."},     {"howto":"When the pasta has had its cooking time, taste a strand – it should have a very slight bite. When it’s ready, turn off the heat. Place the sauce on a very low heat and use a pair of kitchen tongs to lift the pasta from the water into the sauce.\r\nOff the heat, add the white crabmeat and parsley to the pasta with a sprinkling of sea salt. Stir everything together really well, adding a drop of pasta water if it’s starting to get claggy. Taste for seasoning and, if it needs a slight lift, add a small squeeze of lemon. Serve immediately twirled into pasta bowls and drizzled with the remaining oil."} ]}', 4, 4),
(19, 'Crab cakes with dill mayonnaise', 'Crab cakes with dill mayonnaise', 1, 'Little fish favourites, perfect for dipping at parties or as a smart starter', '4', '{"compositions":[     {"composition":"250g potatoes, diced"},     {"composition":"300g white crabmeat"},     {"composition":"1 tbsp capers, drained and finely chopped"},     {"composition":"2 spring onions, finely chopped"},     {"composition":"zest and juice 1 lemon, plus extra wedges to serve"},     {"composition":"small bunch dill, finely chopped"},          {"composition":"4 tbsp good-quality mayonnaise"},          {"composition":"2 tbsp plain flour"},          {"composition":"1 egg, lightly beaten"},          {"composition":"85g dried breadcrumbs"},          {"composition":"sunflower oil, for shallow frying"} ]}', '{"howtos":[     {"howto":"Boil the potatoes in a large pan of salted water for about 15 mins, drain, then return to the pan and leave to steam dry for about 5 mins. Mash, then leave to cool."},     {"howto":"In a large bowl mix the crabmeat, capers, spring onions, lemon zest and half the juice with half the dill. Stir in the mashed potato with some seasoning, then shape into 12 neat round patties. Transfer these to a plate and put in the fridge for 20 mins to firm up."},     {"howto":"To make the dill mayonnaise, mix the mayo with the remaining lemon juice and dill. Put this in the fridge for later."},     {"howto":"Put the flour, egg and breadcrumbs on 3 separate plates. Dust the crab cakes all over with the flour, then dip into the egg and finally coat with breadcrumbs."},     {"howto":"Add enough sunflower oil to a shallow frying pan to come about 1cm up the side. Heat the oil, then carefully slide the crab cakes in; you might have to do this in batches. Cook for about 3 mins on each side until they are crisp and golden. Drain on kitchen paper. At this point you can pop the crab cakes into the oven to keep warm – or serve right away with dill mayonnaise and extra lemon wedges."} ]}', 3, 4),
(20, 'Crab & avocado tostadas', 'Crab & avocado tostadas', 1, 'Use a corn tortilla as a base then top with storecupboard crabmeat, guacamole-style Mexican dip and salad', '2', '{"compositions":[     {"composition":"1 small red onion, sliced into thin rings"},     {"composition":"juice 2 limes, plus wedges to serve"},     {"composition":"pinch of caster sugar"},     {"composition":"170g can white crabmeat in brine, drained"},     {"composition":"2 spring onions, finely sliced"},     {"composition":"1 red chilli, deseeded and chopped"},          {"composition":"1 really ripe avocado, peeled, stoned and chopped"},          {"composition":"1 small garlic clove, crushed"},          {"composition":"2 corn tortillas"},          {"composition":"handful mixed salad leaves"} ]}', '{"howtos":[     {"howto":"Put the onion in a bowl and cover with half the lime juice and a good pinch each of sugar and salt. Leave to soften while you get everything else ready."},     {"howto":"Mix together the crabmeat, spring onions and half the chilli. Season with black pepper and set aside. Mash the avocado with the remaining lime juice, garlic and some seasoning. You can leave it quite chunky or mash it until smooth. Stir in the rest of the chilli."},     {"howto":"Bend each tortilla in half and toast in a toaster for 1 min. Put on 2 plates and top with the salad leaves, then mashed avocado. Finish with the crabmeat and drained pickled onion. Serve with lime wedges for squeezing over."} ]}', 3, 3),
(21, 'Crunchy crab parcels', 'Crunchy crab parcels', 1, 'The combination of crispy filo pastry & crabmeat makes this a wonderfully indulgent dish', '30', '{"compositions":[     {"composition":"1 small potato, cut into quarters"},     {"composition":"85g butter"},     {"composition":"50ml single cream"},     {"composition":"2 spring onions, plus extra for serving"},     {"composition":"300g mixed white and brown crabmeat"},     {"composition":"12 sheets filo pastry"} ]}', '{"howtos":[     {"howto":"Boil the potato for 15 mins until soft. Meanwhile, place 25g of the butter and all of the cream in a heavy-based pan and bring to the boil. Slice the spring onions, separating the green and white parts, then add the white slices to the boiling liquid and cook for 1-2 mins to soften. Pass the cooked potato through a ricer or sieve to a really fine mash, then add to the pan and mix everything together. Set aside to cool."},     {"howto":"Add the crabmeat and sliced green bits of spring onion to the potato mixture and stir together. Melt the remaining butter. Unwrap the filo pastry and cover with a clean, damp tea towel to prevent it drying out. Brush melted butter over one sheet, place another on top and brush again with butter. Then add a final sheet of filo."},     {"howto":"Cut the filo sheets lengthways into 3 long strips. Then cut each strip in half across the middle. Place a teaspoon of the crab onto the bottom right-hand corner of each filo strip. Fold the filo over to make a triangle, then fold again, rolling up the strip. When the mixture is enclosed and you have a neat triangle shape, place on a baking sheet and brush with more butter. Can be made ahead up to this point and frozen for up to 1 month."},     {"howto":"Heat oven to 200C/fan 180C/gas 6. Cook the rolls for 15-20 mins until golden and crisp. To serve, pile the parcels up on a plate or bowl, then scatter over with extra sliced spring onion, if you like."} ]}', 4, 4),
(22, 'Crab & corn cakes with chilli dipping sauce', 'Crab & corn cakes with chilli dipping sauce', 1, 'Throw out the takeaway menu and make these easy snacks at home', '10', '{"compositions":[     {"composition":"1 egg"},     {"composition":"4 tbsp plain flour"},     {"composition":"1 small garlic clove, crushed"},     {"composition":"1 tbsp chopped coriander stalks (use the leaves for the main course)"},     {"composition":"340g can sweetcorn, well drained"},     {"composition":"170g can white crabmeat, well drained and flaked"},     {"composition":"2 spring onions, finely sliced"},     {"composition":"sunflower or vegetable oil, for frying"} ]}', '{"howtos":[     {"howto":"Tip the egg, flour, garlic and coriander stalks into a food processor with a third of the corn. Whizz to a smooth paste. Mix with the remaining corn, crab, half the spring onions and some seasoning."},     {"howto":"Stir together the sauce ingredients. Cover a tray with kitchen paper. Heat 5cm depth oil in a large, heavy saucepan – it’s ready when a cube of bread browns in 30-40 secs. Drop in dessertspoons of the corn mix, then fry for 2-3 mins, turning, until golden and crisp. Lift onto kitchen paper. Keep warm. Repeat with the remaining mix. Serve the hot cakes sprinkled with the last of the spring onion and the dipping sauce alongside."} ]}', 3, 4),
(23, 'Crab cakes with sweet chilli & ginger dipping sauce', 'Crab cakes with sweet chilli & ginger dipping sauce', 1, 'An easy help-yourself starter with the zest and spice of ginger and chilli', '4', '{"compositions":[     {"composition":"75g French beans, finely sliced"},     {"composition":"200g fresh white crabmeat"},     {"composition":"1 red chilli, deseeded and finely chopped"},     {"composition":"1 garlic clove, crushed"},     {"composition":"4 spring onions, trimmed and finely chopped"},     {"composition":"1 tbsp freshly grated ginger"},     {"composition":"grated zest 1 lime"},     {"composition":"1 tbsp chopped coriander"},     {"composition":"75g fresh white breadcrumbs"},     {"composition":"1 tbsp mayonnaise"},     {"composition":"1 egg, beaten"},     {"composition":"sunflower oil, for frying"},     {"composition":"5 garlic cloves, roughly chopped"},     {"composition":"2 red chillies, roughly chopped"},     {"composition":"6cm piece ginger, peeled and roughly chopped"},     {"composition":"2 dried kaffir lime leaves"},     {"composition":"1 stalk lemongrass, trimmed and roughly chopped"},     {"composition":"2 tbsp chopped coriander"},     {"composition":"175g caster sugar"},     {"composition":"50ml rice wine vinegar"},     {"composition":"1 tbsp fish sauce or lime juice"},     {"composition":"1 tbsp soy sauce"} ]}', '{"howtos":[     {"howto":"To make the dipping sauce, blend the garlic, chillies, ginger, lime leaves, lemongrass and coriander in a food processor until very finely chopped. Tip the sugar into a small saucepan, add 3 tbsp water and heat gently to dissolve. Continue to cook for another min or so until the syrup starts to thicken slightly."},     {"howto":"Add the chilli and ginger mixture, and continue to cook for a further 2-3 mins. Then stir in the rice vinegar, fish sauce and soy sauce. Remove from the heat and leave to cool to room temperature."},     {"howto":"Cook the beans in a small pan of boiling salted water for 1-2 mins until tender. Drain and refresh under cold running water, then leave to dry on kitchen paper. Mix the crab with the cooked beans and all the remaining ingredients, apart from the sunflower oil. Season with salt and freshly ground black pepper and shape into 8 small patties."},     {"howto":"Heat 1-2 tbsp sunflower oil in a frying pan and cook 4 crab cakes at a time until golden brown on both sides. Remove from the pan and keep warm while you cook the remainder. Serve with the sweet chilli dipping sauce."} ]}', 3, 3),
(24, 'Simple seafood chowder', 'Simple seafood chowder', 1, 'A chunky, creamy soup with salmon and smoked haddock, mixed shellfish and potatoes - a hearty meal', '4', '{"compositions":[     {"composition":"1 tbsp vegetable oil"},     {"composition":"1 large onion, chopped"},     {"composition":"100g streaky bacon, chopped"},     {"composition":"1 tbsp plain flour"},     {"composition":"600ml fish stock, made from 1 fish stock cube"},     {"composition":"225g new potatoes, halved"},     {"composition":"pinch mace"},     {"composition":"pinch cayenne pepper"},     {"composition":"300ml milk"},     {"composition":"320g pack fish pie mix (salmon, haddock and smoked haddock)"},     {"composition":"4 tbsp single cream"},     {"composition":"250g pack cooked mixed shellfish"},     {"composition":"small bunch parsley, chopped"},     {"composition":"crusty bread, to serve"} ]}', '{"howtos":[     {"howto":"Heat the oil in a large saucepan over a medium heat, then add the onion and bacon. Cook for 8-10 mins until the onion is soft and the bacon is cooked. Stir in the flour, then cook for a further 2 mins."},     {"howto":"Pour in the fish stock and bring it up to a gentle simmer. Add the potatoes, cover, then simmer for 10-12 mins until the potatoes are cooked through."},     {"howto":"Add the mace, cayenne pepper and some seasoning, then stir in the milk."},     {"howto":"Tip the fish pie mix into the pan, gently simmer for 4 mins. Add the cream and shellfish, then simmer for 1 min more. Check the seasoning. Sprinkle with the parsley and serve with some crusty bread."} ]}', 3, 3),
(25, 'Asparagus & tuna salad', 'Asparagus & tuna salad', 1, 'Give the bistro classic, niçoise salad, a seasonal twist by swapping green beans for tender asparagus', '2', '{"compositions":[     {"composition":"8 baby new potatoes"},     {"composition":"2 medium eggs"},     {"composition":"125g pack asparagus, woody ends removed"},     {"composition":"185g can tuna, drained and flaked into very large chunks"},     {"composition":"small handful small black olives, halved"},     {"composition":"1 romaine lettuce, leaves torn into chunks"},     {"composition":"crusty bread, to serve"},     {"composition":"1 shallot, finely chopped"},     {"composition":"1 tsp English mustard powder"},     {"composition":"2 tbsp white wine vinegar"},     {"composition":"1 tbsp extra-virgin olive oil, or use the oil from the tuna can (if bought in oil)"},     {"composition":"pinch of sugar"} ]}', '{"howtos":[     {"howto":"Boil the potatoes for 8-12 mins until tender. Drain, cool a little under cold running water, then drain again well and set aside to finish cooling."},     {"howto":"Put the eggs in a pan of cold water and bring to the boil. As soon as the water is boiling, add the asparagus for 2 mins. Drain well and rinse everything under cold water to cool. Again drain asparagus well."},     {"howto":"Once cool enough to handle, peel the eggs and halve or quarter. Whisk the dressing ingredients with 1 tbsp water and some seasoning."},     {"howto":"Tip the potatoes, asparagus, tuna, olives and lettuce into a bowl. Drizzle over the dressing and toss well to coat, then add the eggs and serve with crusty bread."} ]}', 2, 3),
(26, 'Tuna pasta with rocket & parsley pesto', 'Tuna pasta with rocket & parsley pesto', 1, 'Whizz up a quick homemade pesto with parsley and lemon juice, then serve spooned through hot pasta with fish, tomatoes and green beans', '4', '{"compositions":[     {"composition":"400g dried pasta"},     {"composition":"140g frozen fine green beans"},     {"composition":"200g cherry tomatoes, halved"},     {"composition":"large pack parsley, roughly chopped"},     {"composition":"100g bag rocket"},     {"composition":"185g can tuna in sunflower oil, drained but reserve the oil"},     {"composition":"zest and juice 1 lemon"},     {"composition":"185g can tuna in spring water, drained"},     {"composition":"2 tbsp soured cream or cream cheese"} ]}', '{"howtos":[     {"howto":"Cook the pasta in a large pan of salted boiling water, adding the green beans and cherry tomatoes for the final 3 mins of cooking time. Drain, reserving a mug of cooking water."},     {"howto":"Whizz the parsley, half the rocket, 3 tbsp of oil from the tuna, the lemon zest and juice, and some seasoning with enough of the reserved water in a food processor to form a spoonable pesto dressing."},     {"howto":"Tip the pasta and veg back into the pan and add the pesto, both cans of tuna and the soured cream or cream cheese, stirring through until hot. Remove from the heat and toss the rest of the rocket through the pasta."} ]}', 3, 3),
(27, 'Tuna, olive & rocket pizzas', 'Tuna, olive & rocket pizzas', 1, 'A simple storecupboard standby supper for the whole family - top your pizza bases with salty seafood and a garnish of rocket and red onion', '2', '{"compositions":[     {"composition":"145g pack pizza base mix (or same weight of bread mix)"},     {"composition":"2 tbsp tomato purée"},     {"composition":"185g can tuna in oil, drained, oil reserved"},     {"composition":"plain flour, for dusting"},     {"composition":"1 tbsp caper"},     {"composition":"125g pack value mozzarella"},     {"composition":"10 pitted black kalamata olives"},     {"composition":"1 small red onion, halved and thinly sliced"},     {"composition":"small handful rocket"} ]}', '{"howtos":[     {"howto":"Heat oven to 240C/220C fan/gas 9. Tip the pizza mix into a bowl and make up following pack instructions. Cover the bowl with a cloth and leave for a few mins."},     {"howto":"Meanwhile, mix the tomato purée with 4 tbsp water, 1 tbsp oil from the tuna and some seasoning."},     {"howto":"Knead the dough for a few mins on a floured surface, then halve and put each piece, spaced apart, on a large oiled baking tray. Press with an oiled hand to make thin flat pizzas – they don’t have to be perfectly round."},     {"howto":"Spread with the tomato purée mixture, then top with the tuna, capers, cheese and olives. Bake for 10-12 mins. Serve scattered with the onion and rocket."} ]}', 3, 3),
(28, 'Spicy tuna & cottage cheese jacket', 'Spicy tuna & cottage cheese jacket', 1, 'For a low-fat energy lunch try a carbohydrate-heavy baked potato with a light and nutritious filling', '1', '{"compositions":[     {"composition":"225g can tuna, drained"},     {"composition":"½ red chilli, chopped"},     {"composition":"1 spring onion, sliced"},     {"composition":"handful halved cherry tomatoes"},     {"composition":"½ small bunch coriander, chopped"},     {"composition":"1 medium-sized jacket potato"},     {"composition":"150g low-fat cottage cheese"} ]}', '{"howtos":[     {"howto":"Preheat the oven to 180C/Gas 4/fan oven 160C. Prick the potato several times with a fork and put it straight onto a shelf in the hottest part of the oven. Bake for approximately 1 hour, or until it is soft inside."},     {"howto":"Mix tuna with chilli, spring onion, cherry tomatoes and coriander. Split jacket potato and fill with the tuna mix and cottage cheese."} ]}', 2, 3),
(29, 'Sweet jacket potato with piri-piri prawns', 'Sweet jacket potato with piri-piri prawns', 1, 'Treat yourself to a special solo supper of spiced shellfish, sweet red peppers and paprika mayonnaise on a baked potato', '1', '{"compositions":[     {"composition":"1 large sweet potato"},     {"composition":"2½ tsp olive oil"},     {"composition":"1 garlic clove, crushed"},     {"composition":"1 small red pointed pepper, sliced into rings"},     {"composition":"pinch of chilli flakes"},     {"composition":"½ tsp sweet paprika"}, {"composition":"1 tbsp red wine vinegar"},     {"composition":"1 tbsp tomato ketchup"},     {"composition":"100g raw king prawns"},     {"composition":"few sprigs parsley, chopped"},     {"composition":"2 tbsp light mayonnaise"} ]}', '{"howtos":[     {"howto":"Heat oven to 200C/180C fan/gas 6. Put the sweet potato on a baking tray, rub all over with a little of the oil and season with salt. Bake for 45 mins until really soft."},     {"howto":"Meanwhile, heat the remaining oil in a frying pan. Add the garlic and pepper and cook for 2 mins, making sure the garlic doesn’t burn. Add the chilli flakes, half the paprika, the vinegar, ketchup, 1 tbsp water and prawns to the pan, then bubble for 2 mins until the prawns are cooked through. Stir through the parsley, saving a little to sprinkle over at the end."},     {"howto":"Mix the remaining paprika into the mayonnaise. Once the potato is cooked, split it down the centre, pile in the prawn mixture and dollop the paprika mayo on top. Scatter over the remaining parsley and serve."} ]}', 3, 4),
(30, 'Sweet potato & lentil soup', 'Sweet potato & lentil soup', 2, 'Satisfying and simple to make, homemade soup is a great supper or take-to-work lunch', '6', '{"compositions":[     {"composition":"2 tsp medium curry powder"},     {"composition":"3 tbsp olive oil"},     {"composition":"2 onions, grated"},     {"composition":"1 eating apple, peeled, cored and grated"},     {"composition":"3 garlic cloves, crushed"},     {"composition":"20g pack coriander, stalks chopped"}, {"composition":"thumb-size piece fresh root ginger, grated"},     {"composition":"800g sweet potatoes"},     {"composition":"1.2l vegetable stock"},     {"composition":"100g red lentils"},     {"composition":"300ml milk"},     {"composition":"juice 1 lime"} ]}', '{"howtos":[     {"howto":"Put the curry powder into a large saucepan, then toast over a medium heat for 2 mins. Add the olive oil, stirring as the spice sizzles in the pan. Tip in the onions, apple, garlic, coriander stalks and ginger, season, then gently cook for 5 mins, stirring every so often."},     {"howto":"Meanwhile, peel, then grate the sweet potatoes. Tip into the pan with the stock, lentils, milk and seasoning, then simmer, covered, for 20 mins. Blend until smooth using a stick blender. Stir in the lime juice, check the seasoning and serve, topped with roughly-chopped coriander leaves."} ]}', 3, 3),
(31, 'Sweet potato & chicken curry', 'Sweet potato & chicken curry', 3, 'Chicken thighs are good value and tasty, just right for this healthy, versatile curry', '4', '{"compositions":[     {"composition":"500g sweet potatoes, peeled and cut into bite-size pieces"},     {"composition":"1 tbsp olive oil"},     {"composition":"4 skinless chicken thigh fillets, each cut into large chunks"},     {"composition":"1 large red onion, cut into wedges"},     {"composition":"2 tbsp rogan josh curry paste"},     {"composition":"2 large tomatoes, roughly chopped"}, {"composition":"125g spinach"} ]}', '{"howtos":[     {"howto":"Cook the sweet potatoes in boiling, salted water for 5-7 mins until just tender. Drain well, then set aside. Meanwhile, heat the oil in a large frying pan, then add the chicken and onion. Cook for 5-6 mins until the chicken is browned and cooked through. Stir in the curry paste, cook for 1 min, add the tomatoes, then cook for another min."},     {"howto":"Pour in 100ml boiling water and mix well. Simmer for 5 mins, add the spinach, then cook for 2 mins until wilted. Fold in the potatoes and heat through. Serve with rice and naan breads."} ]}', 3, 4),
(32, 'Sweet potato & pineapple korma', 'Sweet potato & pineapple korma', 5, 'An easy to prepare vegetarian curry with a sweet twist', '2', '{"compositions":[     {"composition":"2 tbsp Korma paste"},     {"composition":"2 sweet potatoes, peeled and cut into large chunks"},     {"composition":"400g tin coconut milk"},     {"composition":"400g tin pineapples chunks"} ]}', '{"howtos":[     {"howto":"Heat korma paste and toss with sweet potatoes, peeled and cut into large chunks."},     {"howto":"Pour in coconut milk and water then cook for about 15 mins or until the sweet potato is tender. Tip in pineapple chunks simmer for 2 mins, then season. Scatter with coriander and serve with naan bread."} ]}', 2, 3);
INSERT INTO `recipe` (`recipe_id`, `recipe_name`, `recipe_image`, `id_recipe_type`, `recipe_description`, `recipe_portion`, `recipe_composition`, `recipe_howto`, `recipe_difficulty`, `recipe_rating`) VALUES
(33, 'Sweet potato falafels with coleslaw', 'Sweet potato falafels with coleslaw', 5, 'Pittas bursting with homemade falafels and salad make a low-fat lunch or light supper for less than a pound per serving', '4', '{"compositions":[     {"composition":"1 large or 2 small sweet potatoes, about 700g/1lb 9oz in total"},     {"composition":"1 tsp ground cumin"},     {"composition":"2 garlic cloves, chopped"},     {"composition":"2 tsp ground coriander"},     {"composition":"handful coriander leaves, chopped"},     {"composition":"juice ½ lemon"},     {"composition":"100g plain or gram flour"},     {"composition":"1 tbsp olive oil"},     {"composition":"4 wholemeal pitta breads"},     {"composition":"4 tbsp reduced-fat houmous"},     {"composition":"2 tbsp red wine vinegar"},     {"composition":"1 tbsp golden caster sugar"},     {"composition":"1 small onion, finely sliced"},     {"composition":"1 medium carrot, grated"},     {"composition":"¼ each white and red cabbage, shredded"} ]}', '{"howtos":[     {"howto":"Heat korma paste and toss with sweet potatoes, peeled and cut into large chunks."},     {"howto":"Meanwhile, stir the vinegar and sugar together in a large bowl until the sugar has dissolved, toss through the onion, carrot and cabbage, then leave to marinate for 15 mins. To serve, toast the pittas, then split. Fill with salad, a dollop of houmous and the falafels."} ]}', 3, 3),
(34, 'Moroccan spiced cauliflower & almond soup', 'Moroccan spiced cauliflower & almond soup', 2, 'Satisfying and comforting soup is the ultimate meal in a bowl, like this smooth and spicy North African blend', '4', '{"compositions":[     {"composition":"1 large cauliflower"},     {"composition":"2 tbsp olive oil"},     {"composition":"½ tsp each ground cinnamon, cumin and coriander"},     {"composition":"2 tbsp harissa paste, plus extra drizzle"},     {"composition":"1l hot vegetable or chicken stock"},     {"composition":"50g toasted flaked almonds, plus extra to serve"} ]}', '{"howtos":[     {"howto":"Cut the cauliflower into small florets. Fry olive oil, ground cinnamon, cumin and coriander and harissa paste for 2 mins in a large pan. Add the cauliflower, stock and almonds. Cover and cook for 20 mins until the cauliflower is tender. Blend soup until smooth, then serve with an extra drizzle of harissa and a sprinkle of toasted almonds."} ]}', 3, 4),
(35, 'Spicy cauliflower', 'Spicy cauliflower', 5, 'This superhealthy curry side dish is a Punjabi staple. Deliciously spicy, it''s also a good source of vitamin C', '8', '{"compositions":[     {"composition":"6 tbsp vegetable oil"},     {"composition":"large piece ginger, finely chopped"},     {"composition":"2 tsp chilli flakes"},     {"composition":"2 tbsp cumin seeds"},     {"composition":"2 tsp turmeric"},     {"composition":"1¼kg (after trimming and removing leaves) cauliflower, broken into pieces"},     {"composition":"small bunch coriander, chopped"} ]}', '{"howtos":[     {"howto":"Heat the oil in a big pan or wok with a lid, then add the ginger and spices. Swirl everything around for a few secs until the spices are aromatic. Reduce the heat, then stir in the cauliflower and some seasoning. Put the lid on and cook for 10 mins or until softened, stirring occasionally. Sprinkle over the coriander before serving."} ]}', 2, 3),
(36, 'Cauliflower & potato curry', 'Cauliflower & potato curry', 5, 'Add some spice to your midweek meal with this one-pan vegetarian main course', '4', '{"compositions":[     {"composition":"2 tbsp vegetable oil"},     {"composition":"1 large onion, chopped"},     {"composition":"large piece ginger, grated"},     {"composition":"3 garlic cloves, finely chopped"},     {"composition":"½ tsp turmeric"},     {"composition":"1 tsp ground cumin"},     {"composition":"1 tsp curry powder, or to taste"},     {"composition":"227g can chopped tomatoes"},     {"composition":"½ tsp sugar"},     {"composition":"1 cauliflower, cut into florets"},     {"composition":"2 potatoes, cut into chunks"},     {"composition":"1 small green chilli, halved lengthways"},     {"composition":"squeeze lemon juice"},     {"composition":"handful coriander, roughly chopped, to serve"},     {"composition":"naan bread and natural yogurt, to serve"} ]}', '{"howtos":[     {"howto":"Heat the oil in a saucepan. Cook the onion for 10 mins until soft, then add the ginger, garlic, turmeric, cumin and curry powder. Cook for 1 min more. Stir in the tomatoes and sugar. Add the cauliflower, potatoes and split chilli, seasoning to taste. Cover with a lid and gently cook for a good 30 mins, stirring occasionally, until the vegetables are tender – add a drop of water if you need to, but it is meant to be a dry curry."}, {"howto":"When the vegetables are cooked, remove the chilli, if you like, stir in a squeeze of lemon juice and scatter with coriander. Serve with your choice of Indian bread and a dollop of yogurt."} ]}', 3, 3),
(37, 'Cauliflower vinaigrette', 'Cauliflower vinaigrette', 5, 'Forget memories of mushy cauliflower from school. This punchy salad goes brilliantly with cold meats', '8', '{"compositions":[     {"composition":"1 small cauliflower, cut into florets"},     {"composition":"1 Romanesco cauliflower, cut into florets"},     {"composition":"1 small red onion, very finely chopped"},     {"composition":"small handful capers, rinsed"},     {"composition":"handful flat-leaf parsley, chopped"},     {"composition":"6 tbsp olive oil"},     {"composition":"2 tbsp red wine vinegar"},     {"composition":"1 tbsp Dijon mustard"} ]}', '{"howtos":[     {"howto":"Make the dressing by whisking all the ingredients together with some seasoning in a large bowl, then set aside."}, {"howto":"Bring a large pan of water to the boil, cook the cauliflower for 5-7 mins until just cooked, then drain well. While the cauliflower is still hot, toss it with the dressing and leave to cool. Just before serving, add the red onion, capers and parsley."} ]}', 3, 3),
(38, 'Warm cauliflower salad', 'Warm cauliflower salad', 5, 'Cauliflower is often overlooked, but try it roasted in this winter salad for a plateful of crunchy goodness', '4', '{"compositions":[     {"composition":"1 cauliflower, broken into florets"},     {"composition":"2 tbsp olive oil"},     {"composition":"1 red onion, thinly sliced"},     {"composition":"3 tbsp sherry vinegar"},     {"composition":"1½ tbsp honey"},     {"composition":"3 tbsp raisins"},     {"composition":"small bunch dill, snipped"},     {"composition":"3 tbsp toasted, flaked almonds"},     {"composition":"50g baby spinach"} ]}', '{"howtos":[     {"howto":"Heat oven to 200C/180C fan/gas 6. Toss the cauliflower with the olive oil, season and roast for 15 mins. Stir in the red onion and carry on roasting for 15-20 mins more until tender."}, {"howto":"While the cauliflower is roasting, mix the vinegar, honey and raisins with some seasoning."}, {"howto":"When the cauliflower is done, stir in the dressing, dill, almonds and spinach, and serve."} ]}', 3, 3),
(39, 'Cauliflower & carrot salad', 'Cauliflower & carrot salad', 5, 'Keep this healthy salad in the fridge to serve with cold meats or cheese', '4', '{"compositions":[     {"composition":"1 small or ½ large cauliflower"},     {"composition":"2 carrots, grated"},     {"composition":"1 red onion, finely chopped"},     {"composition":"2 tsp capers"},     {"composition":"2 tbsp chopped parsley"},     {"composition":"1 tbsp white wine vinegar"},     {"composition":"1 tsp Dijon mustard"},     {"composition":"2 tbsp olive oil"},     {"composition":"1 tbsp mayonnaise"} ]}', '{"howtos":[     {"howto":"Break cauliflower into florets, cutting any larger ones into thin slices. Mix with carrots, red onion, capers and chopped parsley. Whisk white wine vinegar with Dijon mustard, season, then whisk in olive oil and mayonnaise."}, {"howto":"Pour over the salad and mix well. Can be stored in the fridge for up to 3 days."} ]}', 3, 4),
(40, 'Lemonade', 'Lemonade', 6, 'Ideal as a refreshing picnic drink', '1 litre', '{"compositions":[     {"composition":"4 unwaxed lemons, each cut into 8"},     {"composition":"175g golden caster sugar"},     {"composition":"large handful of ice cubes, plus extra for serving"} ]}', '{"howtos":[     {"howto":"Blitz the lemons in a food processor or blender with half of the sugar, some ice cubes and 500ml/18fl oz water. Strain the juice into a jug and reserve."}, {"howto":"Tip the lemon pulp back into the food processor. Add the rest of the sugar, more ice cubes and 500ml/18fl oz water and blitz again. Strain this into the jug with the reserved juice (discard the pulp). Serve with lots of ice."} ]}', 1, 3),
(41, 'Heart helper smoothie', 'Heart helper smoothie', 6, 'Blend beetroot, apple, blueberries and ginger to create a smooth and nutritious drink with depth and zing', '1', '{"compositions":[     {"composition":"2 small raw beetroots, peeled and roughly chopped"},     {"composition":"1 small apple peeled, quartered and cored"},     {"composition":"50g blueberries"},     {"composition":"1 tbsp grated ginger"},     {"composition":"300ml water"} ]}', '{"howtos":[     {"howto":"Put the beetroot, apple, blueberries and ginger in a blender, top up with water then blitz until smooth."} ]}', 1, 4),
(42, 'Honeydew melon, cucumber & lime juice', 'Honeydew melon, cucumber & lime juice', 6, 'This zingy bright green drink is full of fresh ingredients to make you feel refreshed and energised', '1', '{"compositions":[     {"composition":"¼ large honeydew melon"},     {"composition":"½ cucumber, cut into large pieces"},     {"composition":"1 lime, zest and pith removed"} ]}', '{"howtos":[     {"howto":"Take the melon, remove the seeds, then cut the flesh away from the outer skin and chop into chunks. Put the melon, cucumber and lime through your juicer following the manufacturer’s instructions. Pour into a tall glass and serve."} ]}', 2, 4),
(43, 'Blueberry milkshakes', 'Blueberry milkshakes', 6, 'The perfect use for overripe berries- enjoy in retro glasses with colourful straws for added fun factor', '2', '{"compositions":[     {"composition":"100g blueberries"},     {"composition":"2 tbsp maple syrup or honey"},     {"composition":"2 tsp vanilla extract"},     {"composition":"200ml milk"},     {"composition":"2 large scoops vanilla ice cream"} ]}', '{"howtos":[     {"howto":"In a blender, whizz blueberries, maple syrup or honey, vanilla extract, milk and ice cream. Pour into milkshake glasses and enjoy with a straw."} ]}', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_composition`
--

CREATE TABLE IF NOT EXISTS `recipe_composition` (
`composition_id` int(11) NOT NULL,
  `composition_name` varchar(50) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recipe_composition_amount` varchar(100) NOT NULL,
  `id_product_size_price` int(11) DEFAULT NULL,
  `product_amount` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_composition`
--

INSERT INTO `recipe_composition` (`composition_id`, `composition_name`, `recipe_id`, `product_id`, `recipe_composition_amount`, `id_product_size_price`, `product_amount`) VALUES
(1, 'Onion,finely chopped', 1, 14, '1 pc', 15, 1),
(2, 'Carrot', 2, 6, '100 gr', 7, 1),
(3, 'Tomato', 2, 20, '2 pcs', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_customer_also_like`
--

CREATE TABLE IF NOT EXISTS `recipe_customer_also_like` (
`recipe_cal_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `recipe_id1` int(11) NOT NULL,
  `recipe_id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_customer_rating`
--

CREATE TABLE IF NOT EXISTS `recipe_customer_rating` (
`recipe_customer_rating_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rating` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=576 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_customer_rating`
--

INSERT INTO `recipe_customer_rating` (`recipe_customer_rating_id`, `recipe_id`, `customer_id`, `rating`) VALUES
(6, 2, 1, 3),
(7, 41, 1, 5),
(11, 15, 1, 5),
(13, 1, 7, 4),
(14, 2, 7, 5),
(15, 3, 7, 5),
(16, 4, 7, 3),
(17, 5, 7, 3),
(18, 6, 7, 3),
(19, 7, 7, 4),
(20, 8, 7, 2),
(21, 9, 7, 3),
(22, 10, 7, 5),
(23, 11, 7, 1),
(24, 12, 7, 3),
(25, 13, 7, 3),
(26, 14, 7, 4),
(27, 15, 7, 3),
(28, 16, 7, 4),
(29, 17, 7, 4),
(30, 18, 7, 3),
(31, 19, 7, 5),
(32, 20, 7, 2),
(33, 21, 7, 2),
(34, 22, 7, 5),
(35, 23, 7, 4),
(36, 24, 7, 5),
(37, 25, 7, 3),
(38, 26, 7, 4),
(39, 27, 7, 4),
(40, 28, 7, 4),
(41, 29, 7, 3),
(42, 30, 7, 3),
(43, 31, 7, 5),
(44, 32, 7, 2),
(45, 33, 7, 3),
(46, 34, 7, 4),
(47, 35, 7, 5),
(48, 36, 7, 5),
(49, 37, 7, 4),
(50, 38, 7, 3),
(51, 39, 7, 4),
(52, 40, 7, 4),
(53, 41, 7, 2),
(54, 42, 7, 4),
(55, 43, 7, 5),
(56, 1, 8, 3),
(57, 2, 8, 2),
(58, 3, 8, 4),
(59, 4, 8, 4),
(60, 5, 8, 3),
(61, 6, 8, 5),
(62, 7, 8, 4),
(63, 8, 8, 5),
(64, 9, 8, 3),
(65, 10, 8, 2),
(66, 11, 8, 5),
(67, 12, 8, 1),
(68, 13, 8, 2),
(69, 14, 8, 2),
(70, 15, 8, 1),
(71, 16, 8, 1),
(72, 17, 8, 4),
(73, 18, 8, 5),
(74, 19, 8, 5),
(75, 20, 8, 2),
(76, 21, 8, 5),
(77, 22, 8, 5),
(78, 23, 8, 3),
(79, 24, 8, 5),
(80, 25, 8, 2),
(81, 26, 8, 4),
(82, 27, 8, 5),
(83, 28, 8, 5),
(84, 29, 8, 4),
(85, 30, 8, 2),
(86, 31, 8, 4),
(87, 32, 8, 2),
(88, 33, 8, 3),
(89, 34, 8, 3),
(90, 35, 8, 4),
(91, 36, 8, 4),
(92, 37, 8, 1),
(93, 38, 8, 1),
(94, 39, 8, 1),
(95, 40, 8, 5),
(96, 41, 8, 3),
(97, 42, 8, 4),
(98, 43, 8, 4),
(99, 1, 9, 5),
(100, 2, 9, 4),
(101, 3, 9, 4),
(102, 4, 9, 4),
(103, 5, 9, 3),
(104, 6, 9, 5),
(105, 7, 9, 3),
(106, 8, 9, 4),
(107, 9, 9, 4),
(108, 10, 9, 3),
(109, 11, 9, 5),
(110, 12, 9, 4),
(111, 13, 9, 4),
(112, 14, 9, 3),
(113, 15, 9, 4),
(114, 16, 9, 4),
(115, 17, 9, 3),
(116, 18, 9, 4),
(117, 19, 9, 4),
(118, 20, 9, 3),
(119, 21, 9, 3),
(120, 22, 9, 4),
(121, 23, 9, 4),
(122, 24, 9, 4),
(123, 25, 9, 5),
(124, 26, 9, 4),
(125, 27, 9, 5),
(126, 28, 9, 5),
(127, 29, 9, 5),
(128, 30, 9, 3),
(129, 31, 9, 5),
(130, 32, 9, 3),
(131, 33, 9, 4),
(132, 34, 9, 4),
(133, 35, 9, 4),
(134, 36, 9, 5),
(135, 37, 9, 4),
(136, 38, 9, 4),
(137, 39, 9, 4),
(138, 40, 9, 5),
(139, 41, 9, 5),
(140, 42, 9, 5),
(141, 43, 9, 5),
(142, 1, 10, 4),
(143, 2, 10, 4),
(144, 3, 10, 4),
(145, 4, 10, 3),
(146, 5, 10, 3),
(147, 6, 10, 3),
(148, 7, 10, 3),
(149, 8, 10, 4),
(150, 9, 10, 5),
(151, 10, 10, 2),
(152, 11, 10, 3),
(153, 12, 10, 3),
(154, 13, 10, 3),
(155, 14, 10, 2),
(156, 15, 10, 2),
(157, 16, 10, 2),
(158, 17, 10, 2),
(159, 18, 10, 3),
(160, 19, 10, 4),
(161, 20, 10, 3),
(162, 21, 10, 3),
(163, 22, 10, 4),
(164, 23, 10, 3),
(165, 24, 10, 4),
(166, 25, 10, 3),
(167, 26, 10, 3),
(168, 27, 10, 4),
(169, 28, 10, 3),
(170, 29, 10, 3),
(171, 30, 10, 2),
(172, 31, 10, 2),
(173, 32, 10, 2),
(174, 33, 10, 3),
(175, 34, 10, 2),
(176, 35, 10, 2),
(177, 36, 10, 3),
(178, 37, 10, 3),
(179, 38, 10, 3),
(180, 39, 10, 3),
(181, 40, 10, 3),
(182, 41, 10, 3),
(183, 42, 10, 3),
(184, 43, 10, 5),
(185, 1, 32, 3),
(186, 2, 32, 2),
(187, 3, 32, 4),
(188, 4, 32, 4),
(189, 5, 32, 4),
(190, 6, 32, 4),
(191, 7, 32, 3),
(192, 8, 32, 3),
(193, 9, 32, 5),
(194, 10, 32, 2),
(195, 11, 32, 2),
(196, 12, 32, 2),
(197, 20, 32, 2),
(198, 13, 32, 3),
(199, 14, 32, 3),
(200, 15, 32, 1),
(201, 16, 32, 3),
(202, 17, 32, 3),
(203, 18, 32, 5),
(204, 19, 32, 5),
(205, 21, 32, 4),
(206, 22, 32, 4),
(207, 23, 32, 4),
(208, 24, 32, 4),
(209, 25, 32, 2),
(210, 26, 32, 2),
(211, 27, 32, 5),
(212, 28, 32, 5),
(213, 29, 32, 3),
(214, 30, 32, 5),
(215, 31, 32, 4),
(216, 32, 32, 5),
(217, 33, 32, 5),
(218, 34, 32, 3),
(219, 35, 32, 5),
(220, 36, 32, 4),
(221, 37, 32, 2),
(222, 38, 32, 1),
(223, 39, 32, 2),
(224, 40, 32, 3),
(225, 41, 32, 3),
(226, 42, 32, 5),
(227, 43, 32, 5),
(228, 1, 14, 4),
(229, 2, 14, 2),
(230, 3, 14, 5),
(231, 4, 14, 4),
(232, 5, 14, 3),
(233, 6, 14, 5),
(234, 7, 14, 3),
(235, 8, 14, 4),
(236, 9, 14, 4),
(237, 10, 14, 4),
(238, 11, 14, 3),
(239, 12, 14, 5),
(240, 13, 14, 5),
(241, 14, 14, 5),
(242, 15, 14, 3),
(243, 16, 14, 3),
(244, 17, 14, 3),
(245, 18, 14, 3),
(246, 19, 14, 3),
(247, 20, 14, 3),
(248, 21, 14, 3),
(249, 22, 14, 4),
(250, 23, 14, 4),
(251, 24, 14, 4),
(252, 25, 14, 3),
(253, 26, 14, 3),
(254, 27, 14, 3),
(255, 28, 14, 3),
(256, 29, 14, 3),
(257, 30, 14, 3),
(258, 31, 14, 4),
(259, 32, 14, 4),
(260, 33, 14, 3),
(261, 34, 14, 3),
(262, 35, 14, 4),
(263, 36, 14, 4),
(264, 37, 14, 3),
(265, 38, 14, 3),
(266, 39, 14, 3),
(267, 40, 14, 3),
(268, 41, 14, 3),
(269, 42, 14, 4),
(270, 43, 14, 5),
(271, 1, 24, 2),
(272, 2, 24, 4),
(273, 3, 24, 5),
(274, 4, 24, 5),
(275, 5, 24, 3),
(276, 6, 24, 3),
(277, 7, 24, 4),
(278, 8, 24, 5),
(279, 9, 24, 4),
(280, 10, 24, 4),
(281, 11, 24, 2),
(282, 12, 24, 4),
(283, 13, 24, 3),
(284, 14, 24, 4),
(285, 15, 24, 5),
(286, 16, 24, 4),
(287, 17, 24, 3),
(288, 18, 24, 2),
(289, 19, 24, 3),
(290, 20, 24, 2),
(291, 21, 24, 4),
(292, 22, 24, 3),
(293, 23, 24, 2),
(294, 24, 24, 5),
(295, 25, 24, 4),
(296, 26, 24, 2),
(297, 27, 24, 3),
(298, 28, 24, 2),
(299, 29, 24, 4),
(300, 30, 24, 3),
(301, 31, 24, 4),
(302, 32, 24, 5),
(303, 33, 24, 4),
(304, 34, 24, 5),
(305, 35, 24, 3),
(306, 36, 24, 3),
(307, 37, 24, 4),
(308, 38, 24, 3),
(309, 39, 24, 3),
(310, 40, 24, 3),
(311, 41, 24, 5),
(312, 42, 24, 5),
(313, 43, 23, 5),
(314, 1, 33, 2),
(315, 2, 33, 3),
(316, 3, 33, 4),
(317, 4, 33, 1),
(318, 5, 33, 1),
(319, 6, 33, 5),
(320, 7, 33, 3),
(321, 8, 33, 3),
(322, 9, 33, 5),
(323, 10, 33, 2),
(324, 11, 33, 3),
(325, 12, 33, 2),
(326, 13, 33, 3),
(327, 14, 33, 4),
(328, 15, 33, 3),
(329, 16, 33, 2),
(330, 17, 33, 3),
(331, 18, 33, 4),
(332, 19, 33, 5),
(333, 20, 33, 3),
(334, 21, 33, 5),
(335, 22, 33, 3),
(336, 23, 33, 5),
(337, 24, 33, 3),
(338, 25, 33, 2),
(339, 26, 33, 3),
(340, 27, 33, 5),
(341, 28, 33, 5),
(342, 29, 33, 5),
(343, 30, 33, 2),
(344, 31, 33, 4),
(345, 32, 33, 1),
(346, 33, 33, 5),
(347, 34, 33, 3),
(348, 35, 33, 5),
(349, 36, 33, 4),
(350, 37, 33, 3),
(351, 38, 33, 3),
(352, 39, 33, 5),
(353, 40, 33, 5),
(354, 41, 33, 3),
(355, 42, 33, 4),
(356, 43, 33, 5),
(357, 1, 26, 4),
(358, 2, 26, 2),
(359, 3, 26, 4),
(360, 4, 26, 3),
(361, 5, 26, 3),
(362, 6, 26, 2),
(363, 7, 26, 2),
(364, 8, 26, 4),
(365, 9, 26, 4),
(366, 10, 26, 3),
(367, 11, 35, 5),
(368, 12, 35, 1),
(369, 13, 35, 2),
(370, 14, 35, 4),
(371, 15, 35, 3),
(372, 16, 35, 2),
(373, 17, 35, 3),
(374, 18, 35, 3),
(375, 19, 35, 4),
(376, 20, 35, 1),
(377, 21, 17, 4),
(378, 22, 17, 4),
(379, 23, 17, 4),
(380, 24, 17, 3),
(381, 25, 17, 2),
(382, 26, 17, 3),
(383, 27, 17, 5),
(384, 28, 17, 3),
(385, 29, 7, 3),
(386, 30, 17, 2),
(387, 31, 27, 4),
(388, 32, 27, 3),
(389, 33, 27, 2),
(390, 34, 27, 2),
(391, 35, 27, 2),
(392, 36, 27, 3),
(393, 37, 27, 2),
(394, 38, 27, 2),
(395, 39, 27, 4),
(396, 40, 27, 2),
(397, 15, 36, 1),
(398, 16, 36, 1),
(399, 17, 36, 1),
(400, 18, 36, 1),
(401, 19, 36, 2),
(402, 20, 36, 1),
(403, 21, 36, 2),
(404, 22, 36, 2),
(405, 23, 36, 1),
(406, 24, 36, 1),
(407, 6, 18, 5),
(408, 7, 18, 5),
(409, 8, 18, 4),
(410, 9, 18, 3),
(411, 10, 18, 4),
(412, 11, 18, 5),
(413, 12, 18, 3),
(414, 13, 18, 2),
(415, 23, 16, 2),
(416, 24, 16, 4),
(417, 25, 16, 1),
(418, 26, 17, 3),
(419, 11, 26, 5),
(420, 12, 26, 2),
(421, 13, 26, 2),
(422, 14, 26, 2),
(423, 15, 26, 3),
(424, 16, 26, 3),
(425, 17, 26, 3),
(426, 18, 26, 4),
(427, 19, 26, 4),
(428, 20, 26, 4),
(429, 21, 26, 4),
(430, 22, 26, 4),
(431, 23, 26, 3),
(432, 24, 26, 4),
(433, 25, 26, 2),
(434, 26, 26, 5),
(435, 27, 26, 4),
(436, 28, 26, 3),
(437, 29, 26, 2),
(438, 30, 26, 3),
(439, 31, 26, 4),
(440, 32, 26, 2),
(441, 33, 26, 2),
(442, 34, 26, 3),
(443, 35, 26, 2),
(444, 36, 26, 3),
(445, 37, 26, 3),
(446, 38, 26, 3),
(447, 39, 26, 3),
(448, 40, 26, 5),
(449, 41, 26, 3),
(450, 42, 26, 5),
(451, 43, 26, 5),
(452, 1, 35, 1),
(453, 2, 35, 5),
(454, 3, 35, 5),
(455, 4, 35, 2),
(456, 5, 35, 5),
(457, 6, 35, 5),
(458, 7, 35, 5),
(459, 8, 35, 5),
(460, 9, 35, 5),
(461, 10, 35, 5),
(462, 21, 35, 4),
(463, 22, 35, 4),
(464, 23, 35, 4),
(465, 24, 35, 3),
(466, 25, 35, 3),
(467, 26, 35, 4),
(468, 27, 35, 5),
(469, 28, 35, 5),
(470, 29, 35, 4),
(471, 30, 35, 2),
(472, 31, 35, 3),
(473, 32, 35, 2),
(474, 33, 35, 4),
(475, 34, 35, 1),
(476, 35, 35, 2),
(477, 36, 35, 1),
(478, 37, 35, 1),
(479, 38, 35, 1),
(480, 39, 35, 1),
(481, 40, 35, 5),
(482, 41, 35, 3),
(483, 42, 35, 4),
(484, 43, 35, 4),
(485, 31, 17, 3),
(486, 32, 17, 1),
(487, 33, 17, 2),
(488, 34, 17, 2),
(489, 35, 17, 3),
(490, 36, 17, 2),
(491, 37, 17, 2),
(492, 38, 17, 1),
(493, 39, 17, 1),
(494, 40, 17, 4),
(495, 41, 17, 4),
(496, 42, 17, 4),
(497, 43, 17, 5),
(498, 1, 28, 4),
(499, 2, 28, 2),
(500, 3, 28, 4),
(501, 4, 28, 4),
(502, 5, 28, 3),
(503, 6, 28, 4),
(504, 7, 28, 2),
(505, 8, 28, 3),
(506, 9, 28, 2),
(507, 10, 28, 3),
(508, 11, 28, 4),
(509, 12, 28, 4),
(510, 13, 28, 2),
(511, 14, 28, 3),
(512, 15, 28, 1),
(513, 16, 28, 1),
(514, 17, 28, 1),
(515, 18, 28, 2),
(516, 19, 28, 3),
(517, 20, 28, 2),
(518, 21, 28, 2),
(519, 22, 28, 3),
(520, 31, 28, 3),
(521, 32, 28, 3),
(522, 33, 28, 2),
(523, 34, 28, 2),
(524, 35, 28, 2),
(525, 36, 28, 3),
(526, 37, 28, 1),
(527, 38, 28, 2),
(528, 39, 28, 3),
(529, 40, 28, 4),
(530, 41, 28, 2),
(531, 42, 28, 3),
(532, 43, 28, 4),
(533, 1, 19, 3),
(534, 2, 19, 4),
(535, 3, 19, 4),
(536, 4, 19, 5),
(537, 5, 19, 4),
(538, 6, 19, 5),
(539, 7, 19, 3),
(540, 8, 19, 4),
(541, 9, 19, 4),
(542, 10, 19, 2),
(543, 11, 19, 3),
(544, 12, 19, 4),
(545, 13, 19, 3),
(546, 14, 19, 4),
(547, 15, 19, 2),
(548, 16, 19, 4),
(549, 17, 19, 2),
(550, 18, 19, 2),
(551, 19, 19, 5),
(552, 20, 19, 2),
(553, 21, 19, 4),
(554, 22, 19, 5),
(555, 23, 19, 5),
(556, 24, 19, 3),
(557, 25, 19, 3),
(558, 26, 19, 3),
(559, 27, 19, 4),
(560, 28, 19, 5),
(561, 29, 19, 5),
(562, 30, 19, 4),
(563, 31, 19, 4),
(564, 32, 19, 3),
(565, 33, 19, 4),
(566, 34, 19, 3),
(567, 35, 19, 3),
(568, 36, 19, 5),
(569, 37, 19, 3),
(570, 38, 19, 3),
(571, 39, 19, 3),
(572, 40, 19, 4),
(573, 41, 19, 5),
(574, 42, 19, 5),
(575, 43, 19, 4);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_customer_rating_prediction`
--

CREATE TABLE IF NOT EXISTS `recipe_customer_rating_prediction` (
`recipe_customer_rating_prediction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `rating_prediction` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_recommendation_top5`
--

CREATE TABLE IF NOT EXISTS `recipe_recommendation_top5` (
`recipe_recommendation_top5_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `recipe_recommended_1` int(11) NOT NULL,
  `recipe_recommended_2` int(11) NOT NULL,
  `recipe_recommended_3` int(11) NOT NULL,
  `recipe_recommended_4` int(11) NOT NULL,
  `recipe_recommended_5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `recipe_type`
--

CREATE TABLE IF NOT EXISTS `recipe_type` (
`id_recipe_type` int(10) NOT NULL,
  `recipe_type_name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_type`
--

INSERT INTO `recipe_type` (`id_recipe_type`, `recipe_type_name`) VALUES
(1, 'seafood'),
(2, 'sup'),
(3, 'ayam'),
(4, 'daging'),
(5, 'sayur'),
(6, 'minuman');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(200) NOT NULL,
  `supplier_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`cart_id`), ADD KEY `product_id` (`product_id`), ADD KEY `id_product_size_price` (`id_product_size_price`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
 ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_illness`
--
ALTER TABLE `customer_illness`
 ADD PRIMARY KEY (`customer_illness_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
 ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
 ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `guest_cart`
--
ALTER TABLE `guest_cart`
 ADD PRIMARY KEY (`guest_cart_id`);

--
-- Indexes for table `guest_orders`
--
ALTER TABLE `guest_orders`
 ADD PRIMARY KEY (`guest_orders_id`);

--
-- Indexes for table `illness`
--
ALTER TABLE `illness`
 ADD PRIMARY KEY (`illness_id`);

--
-- Indexes for table `illness_prohibition`
--
ALTER TABLE `illness_prohibition`
 ADD PRIMARY KEY (`illness_prohibition_id`);

--
-- Indexes for table `illness_recommendation`
--
ALTER TABLE `illness_recommendation`
 ADD PRIMARY KEY (`illness_recommendation_id`), ADD KEY `illness_id` (`illness_id`), ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`orders_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`), ADD KEY `product_type_id` (`product_type_id`);

--
-- Indexes for table `product_size_price`
--
ALTER TABLE `product_size_price`
 ADD PRIMARY KEY (`id_product_size_price`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
 ADD PRIMARY KEY (`id_product_type`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
 ADD PRIMARY KEY (`recipe_id`), ADD KEY `id_recipe_type` (`id_recipe_type`);

--
-- Indexes for table `recipe_composition`
--
ALTER TABLE `recipe_composition`
 ADD PRIMARY KEY (`composition_id`), ADD KEY `recipe_id` (`recipe_id`), ADD KEY `product_id` (`product_id`), ADD KEY `id_product_size_price` (`id_product_size_price`);

--
-- Indexes for table `recipe_customer_also_like`
--
ALTER TABLE `recipe_customer_also_like`
 ADD PRIMARY KEY (`recipe_cal_id`);

--
-- Indexes for table `recipe_customer_rating`
--
ALTER TABLE `recipe_customer_rating`
 ADD PRIMARY KEY (`recipe_customer_rating_id`), ADD KEY `recipe_id` (`recipe_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `recipe_customer_rating_prediction`
--
ALTER TABLE `recipe_customer_rating_prediction`
 ADD PRIMARY KEY (`recipe_customer_rating_prediction_id`);

--
-- Indexes for table `recipe_recommendation_top5`
--
ALTER TABLE `recipe_recommendation_top5`
 ADD PRIMARY KEY (`recipe_recommendation_top5_id`);

--
-- Indexes for table `recipe_type`
--
ALTER TABLE `recipe_type`
 ADD PRIMARY KEY (`id_recipe_type`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `customer_illness`
--
ALTER TABLE `customer_illness`
MODIFY `customer_illness_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `guest_cart`
--
ALTER TABLE `guest_cart`
MODIFY `guest_cart_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `guest_orders`
--
ALTER TABLE `guest_orders`
MODIFY `guest_orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `illness`
--
ALTER TABLE `illness`
MODIFY `illness_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `illness_prohibition`
--
ALTER TABLE `illness_prohibition`
MODIFY `illness_prohibition_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `illness_recommendation`
--
ALTER TABLE `illness_recommendation`
MODIFY `illness_recommendation_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `product_size_price`
--
ALTER TABLE `product_size_price`
MODIFY `id_product_size_price` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
MODIFY `id_product_type` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `recipe_composition`
--
ALTER TABLE `recipe_composition`
MODIFY `composition_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `recipe_customer_also_like`
--
ALTER TABLE `recipe_customer_also_like`
MODIFY `recipe_cal_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recipe_customer_rating`
--
ALTER TABLE `recipe_customer_rating`
MODIFY `recipe_customer_rating_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=576;
--
-- AUTO_INCREMENT for table `recipe_customer_rating_prediction`
--
ALTER TABLE `recipe_customer_rating_prediction`
MODIFY `recipe_customer_rating_prediction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recipe_recommendation_top5`
--
ALTER TABLE `recipe_recommendation_top5`
MODIFY `recipe_recommendation_top5_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `recipe_type`
--
ALTER TABLE `recipe_type`
MODIFY `id_recipe_type` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_product_size_price`) REFERENCES `product_size_price` (`id_product_size_price`),
ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `illness_recommendation`
--
ALTER TABLE `illness_recommendation`
ADD CONSTRAINT `illness_recommendation_ibfk_1` FOREIGN KEY (`illness_id`) REFERENCES `illness` (`illness_id`),
ADD CONSTRAINT `illness_recommendation_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id_product_type`);

--
-- Constraints for table `product_size_price`
--
ALTER TABLE `product_size_price`
ADD CONSTRAINT `product_size_price_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`id_recipe_type`) REFERENCES `recipe_type` (`id_recipe_type`);

--
-- Constraints for table `recipe_composition`
--
ALTER TABLE `recipe_composition`
ADD CONSTRAINT `recipe_composition_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`),
ADD CONSTRAINT `recipe_composition_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
ADD CONSTRAINT `recipe_composition_ibfk_3` FOREIGN KEY (`id_product_size_price`) REFERENCES `product_size_price` (`id_product_size_price`);

--
-- Constraints for table `recipe_customer_rating`
--
ALTER TABLE `recipe_customer_rating`
ADD CONSTRAINT `recipe_customer_rating_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`),
ADD CONSTRAINT `recipe_customer_rating_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
