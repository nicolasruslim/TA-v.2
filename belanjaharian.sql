-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2015 at 05:09 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_address`, `customer_hp`, `customer_birthdate`, `illness`, `customer_username`, `customer_password`) VALUES
(1, 'Nicolas Novian Ruslim', 'nicolasruslim1@gmail.com', 'Jalan Sekeloa Timur No. 62, Bandung', '087823297974', '1993-11-29', '', 'nicolasruslim', '93da7ff0080ed80c4176b99cf2ad459a'),
(2, 'Marsalita Irine', 'marsalitairine@gmail.com', 'Jember', '08123456788', '2015-08-11', '', 'marsalitairine', '90d840be792c6b4b8121d2785a136dc1'),
(6, 'Andy Suroso', 'andy@gmail.com', 'Medan', '08123123123', '2015-05-29', 'jantung,diabetes,hipertensi,', 'andy', 'da41bceff97b1cf96078ffb249b3d66e');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
`guest_id` int(11) NOT NULL,
  `guest_ip` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

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
(37, '127.0.0.1');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

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
(69, 'Crumbled Feta', 'Athenos', 'Athenos_-_Crumbled_Feta_', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_size_price`
--

CREATE TABLE IF NOT EXISTS `product_size_price` (
`id_product_size_price` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_size` varchar(50) NOT NULL,
  `product_price` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

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
(69, 69, '170 gr', 70000);

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
  `recipe_portion` int(5) NOT NULL,
  `recipe_composition` text NOT NULL,
  `recipe_howto` text NOT NULL,
  `recipe_difficulty` int(5) NOT NULL,
  `recipe_rating` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `recipe_name`, `recipe_image`, `id_recipe_type`, `recipe_description`, `recipe_portion`, `recipe_composition`, `recipe_howto`, `recipe_difficulty`, `recipe_rating`) VALUES
(1, 'Coconut Fish Curry', 'Coconut Fish Curry', 1, 'This colourful hake and prawn one-pot has Thai and Indian inspired flavours and is quick enough for midweek - ready in under 30 minutes', 4, '{"compositions":[     {"composition":"1 tbsp vegetable oil"},     {"composition":"1 onion, finely chopped"},     {"composition":"thumb-sized piece ginger, finely grated"},     {"composition":"3 garlic cloves, crushed"},     {"composition":"1 tsp shrimp paste"},     {"composition":"1 small red chilli"},          {"composition":"2 lemongrass stalks, split, then bruised with a rolling pin"},     {"composition":"1 heaped tbsp medium curry powder"},     {"composition":"1 heaped tbsp light muscovado sugar"},     {"composition":"small bunch coriander, stems finely chopped"},     {"composition":"150g coconut milk"},     {"composition":"450g skinless hake fillets, cut into rectangles, roughly credit card size"},     {"composition":"220g pack frozen raw whole prawns (we used Big & Juicy Tiger Prawns, which are sustainably fished)"},     {"composition":"1 lime, halved"},     {"composition":"cooked rice, to serve"} ]}', '{"howtos":[     {"howto":"Heat the oil in a wide, lidded frying pan, then soften the onion for 5 mins. Increase the heat a little, stir in the ginger, garlic, shrimp paste, chilli and lemongrass, and cook for 2 mins. Add the curry powder and sugar, and keep stirring. When the sugar starts to melt and everything starts to clump together, add the coriander stems, coconut milk and 2 tbsp water, then bring to a simmer."},     {"howto":"Add the fish to the sauce, tuck the prawns in here and there, then squeeze over half the lime. Pop on the lid and simmer for 5 mins more or until the hake is just cooked and flaking, and the prawns are pink through. Taste for seasoning, adding a squeeze more lime to the sauce if you like. Scatter over the coriander leaves and serve with rice."} ]}', 2, 0),
(2, 'Spicy Prawn Soup', 'Spicy Prawn Soup', 1, 'A quick and spicy wok-based soup means one pan, zero fuss and supper''s on the table in 20 minutes', 4, '{"compositions":[     {"composition":"1 tbsp sunflower oil"},     {"composition":"300g bag crunchy stir-fry vegetables"},     {"composition":"140g shiitake mushrooms, sliced"},     {"composition":"2 tbsp Thai green curry paste"},     {"composition":"400g can reduced-fat coconut milk"},     {"composition":"200ml vegetable or fish stock"},     {"composition":"300g medium straight-to-wok noodles"},     {"composition":"200g bag large, raw prawns"} ]}', '{"howtos":[    {"howto":"Heat a wok, add the oil, then stir-fry the veg and mushrooms for 2-3 mins. Take out and set aside, then tip the curry paste into the pan and fry for 1 min."},    {"howto":"Pour in the coconut milk and stock. Bring to the boil, drop in the noodles and prawns, then reduce the heat and simmer for 4 mins until the prawns are cooked through. Stir in the veg, then serve."}]}', 1, 0),
(3, 'Sushi rice bowl with beef, egg & chilli sauce', 'with beef, egg & chilli sauce', 4, 'Sticky and delicious, sushi rice is more versatile than you may think and is great in a stir fry.', 2, '{"compositions":[    {"composition":"140g sushi rice"},    {"composition":"250g/9oz rump steak, thinly sliced"},    {"composition":"1 garlic clove, chopped"},    {"composition":"1 tbsp soy sauce"},    {"composition":"good pinch sugar"},    {"composition":"2 tbsp sesame oil"},    {"composition":"2 eggs"},    {"composition":"1 large carrot, cut into long matchsticks"},    {"composition":"1 large courgette, cut into long matchsticks"},    {"composition":"2 tbsp sweet and spicy chilli sauce"}]}', '{"howtos":[\r\n    {"howto":"Boil the sushi rice in a large pan with plenty of water – it should take about 8-10 mins – until it is just cooked and still has a bite to it. Drain, place back in the pan, cover with a lid and set aside."},\r\n    {"howto":"Mix the steak with the garlic, soy sauce, sugar and a grind of black pepper. You will need 2 frying pans or 1 frying pan and a wok: divide the oil between the 2 pans and heat until just smoking. Fry the eggs to your liking, then set aside. In the other pan, brown the beef for 1-2 mins, then remove and keep warm. Tip the vegetables into the pan, stir-fry for 1 min, then push to one side, add the rice and cook for 1 min more to heat through."},\r\n    {"howto":"Divide the rice, veg and beef between 2 bowls. Slide the eggs on top and drizzle with the chilli sauce. Each person can then toss everything together, so the egg yolk mixes with the hot rice and sauce."}\r\n]}', 2, 4),
(4, 'Beef & bean hotpot', 'Beef & bean hotpot', 4, 'A hearty one pot meal to satisfy the whole family', 8, '{"compositions":[     {"composition":"750g lean minced beef"},     {"composition":"1 beef stock cube"},     {"composition":"2 large onions, roughly chopped"},     {"composition":"450g carrots, peeled and thickly sliced"},     {"composition":"1¼kg/2lb 12oz potato, peeled and cut into large chunks"},     {"composition":"2 400g cans baked beans"},     {"composition":"Worcestershire sauce or Tabasco sauce, to taste"},     {"composition":"large handful of parsley, roughly chopped"} ]}\r\n', '{"howtos":[\r\n    {"howto":"Heat a large non-stick pan, add the beef then fry over a medium-high heat until browned, stirring often and breaking up any lumps with a spoon. Crumble in the stock cube and mix well."},\r\n    {"howto":"Add the vegetables, stir to mix with the beef and pour in enough boiling water (about 1.3 litres) to cover. Bring to the boil, then lower the heat and stir well. Cover the pan and simmer gently for about 30 mins or until the vegetables are tender."},\r\n    {"howto":"Tip in the baked beans, sprinkle with Worcestershire sauce or Tabasco to taste, stir well and heat through. Taste for seasoning and sprinkle with parsley. Serve with extra Worcestershire sauce or Tabasco, for those who like a peppery hot taste."}\r\n]}', 2, 5),
(5, 'Smoky beef stew', 'Smoky beef stew', 4, 'Enjoy this simple stew for dinner, then pack into boxes to keep you going for lunches', 6, '{"compositions":[     {"composition":"1kg stewing beef, cut into large chunks"},     {"composition":"2 onions, chopped"},     {"composition":"800g (2 cans) chopped tomatoes"},     {"composition":"2 tsp each sweet paprika, ground cumin and mild chilli powder"},     {"composition":"2 tbsp red or white wine vinegar"},     {"composition":"2 tbsp caster sugar"},     {"composition":"400g can butter beans, rinsed and drained"} ]}', '{"howtos":[\r\n    {"howto":"Heat oven to 160C/ 140C fan/gas 3. Mix the beef, onions, tomatoes, spices, vinegar and sugar in a casserole dish. Cover and bake for 2½ hrs. Stir in the beans and bake for 30 mins more (with the lid off if the casserole is a little wet or lid on if good consistency), until the beef is tender."},\r\n    {"howto":"Cool, then freeze in 6-8 portions in small food bags or plastic containers. Defrost in microwave or overnight in fridge, then heat in the morning and transfer to a thermos container, or heat in the microwave at lunchtime."}\r\n]}', 3, 3),
(6, 'Pot-roast beef with French onion gravy', 'Pot-roast beef with French onion gravy', 4, 'Silverside and topside are cheaper and leaner cuts of meat, well-suited to slow-cooking. The stock and juices make a great sauce when combined with caramelised onions', 4, '{"compositions":[     {"composition":"1kg silverside or topside of beef, with no added fat"},     {"composition":"2 tbsp olive oil"},     {"composition":"8 young carrots, tops trimmed (but leave a little, if you like)"},     {"composition":"1 celery stick, finely chopped"},     {"composition":"200ml white wine"},     {"composition":"600ml rich beef stock"},     {"composition":"2 bay leaves"},     {"composition":"500g onions"},     {"composition":"a few thyme sprigs"},     {"composition":"1 tsp butter"},     {"composition":"1 tsp light brown or light muscovado sugar"},     {"composition":"2 tsp plain flour"} ]}', '{"howtos":[\r\n    {"howto":"Heat oven to 160C/140C fan/gas 3. Rub the meat with 1 tsp of the oil and plenty of seasoning. Heat a large flameproof casserole dish and brown the meat all over for about 10 mins. Meanwhile, add 2 tsp oil to a frying pan and fry the carrots and celery for 10 mins until turning golden."},\r\n    {"howto":"Lift the beef onto a plate, splash the wine into the hot casserole and boil for 2 mins. Pour in the stock, return the beef, then tuck in the carrots, celery and bay leaves, trying not to submerge the carrots too much. Cover and cook in the oven for 2 hrs. (I like to turn the beef halfway through cooking.)"},\r\n    {"howto":"Meanwhile, thinly slice the onions. Heat 1 tbsp oil in a pan and stir in the onions, thyme and some seasoning. Cover and cook gently for 20 mins until the onions are softened but not coloured. Remove the lid, turn up the heat, add the butter and sugar, then let the onions caramelise to a dark golden brown, stirring often. Remove the thyme sprigs, then set aside.)"},\r\n    {"howto":"When the beef is ready, it will be tender and easy to pull apart at the edges. Remove it from the casserole and snip off the strings. Reheat the onion pan, stir in the flour and cook for 1 min. Whisk the floury onions into the beefy juices in the casserole, to make a thick onion gravy. Taste for seasoning. Add the beef and carrots back to the casserole, or slice the beef and bring to the table on a platter, with the carrots to the side and the gravy spooned over.)"}\r\n]}', 4, 3),
(7, 'Chicken korma melts', 'Chicken korma melts', 3, 'Add a fresh flavour to chicken breasts with this Indian-inspired creamy topping - serve with rice and salad for a weeknight dinner', 4, '{"compositions":[     {"composition":"4 skinless chicken breast fillets"},     {"composition":"180g tub full-fat cream cheese"},     {"composition":"2 tbsp Korma paste"},     {"composition":"1 tbsp chopped coriander, plus extra to serve"},     {"composition":"juice ½ lemon"},     {"composition":"1 red chilli, deseeded and thinly sliced"},     {"composition":"8 cherry tomatoes, halved"},     {"composition":"rice and salad, or new potatoes and vegetables, to serve"} ]}', '{"howtos":[    {"howto":"Heat oven to 200C/180C fan/gas 6 and arrange the chicken in a large ovenproof dish. Beat the cheese, korma paste and the 1 tbsp coriander together with a squeeze of lemon. Squeeze the remaining lemon over the chicken and spread the curry mix on top. Scatter over the chilli and bake for 15 mins."},    {"howto":"Remove from the oven, add the tomatoes to the dish then return to cook for another 10 mins. Scatter with more coriander and serve with rice and salad or new potatoes and vegetables.)"}]}', 2, 4),
(8, 'Spring roast chicken', 'Spring roast chicken', 3, 'Cut the cost of a chicken dinner with thighs and be rewarded by juicy meat and crispy skin in this dish with asparagus, courgettes, peas and feta', 4, '{"compositions":[     {"composition":"8 chicken thighs, on the bone, skin on"},     {"composition":"2 tbsp olive oil"},     {"composition":"1 lemon, zested and cut into wedges"},     {"composition":"4 shallots, thickly sliced"},     {"composition":"4 rosemary sprigs"},     {"composition":"small pack tarragon"},     {"composition":"450g asparagus spears, trimmed"},     {"composition":"2 courgettes, thickly sliced on the diagonal"},     {"composition":"250g peas (preferably fresh, not frozen)"},     {"composition":"100g feta, crumbled"} ]}', '{"howtos":[    {"howto":"Heat oven to 200C/180C fan/gas 6. Put the chicken thighs in a large shallow roasting tin, season and toss with the olive oil, lemon zest and wedges, shallots, rosemary and tarragon. Arrange the chicken thighs, skin-side up, and roast for 40-50 mins until the skin is crisp and golden."},    {"howto":"Meanwhile, bring a large pan of water to the boil and cook the asparagus for 3 mins or until tender, adding the courgettes and peas for the final minute.)"},    {"howto":"Drain the vegetables and toss in with the chicken, coating well with the cooking juices. Crumble over the feta and serve.)"}]}', 3, 3),
(9, 'Wild garlic chicken Kiev', 'Wild garlic chicken Kiev', 3, 'This classic family favourite gets a gourmet makeover with a wild garlic butter filling and a crunchy panko breadcrumb coating', 4, '{"compositions":[     {"composition":"4 skinless chicken breasts"},     {"composition":"100g wild garlic butter, softened"},     {"composition":"50g plain flour, well seasoned"},     {"composition":"3 large eggs, beaten"},     {"composition":"125g panko or coarse dried breadcrumbs"},     {"composition":"sunflower oil, for frying"},     {"composition":"mixed leaves, to serve"},     {"composition":"lemon wedges, to serve"} ]}', '{"howtos":[    {"howto":"Slice a deep pocket in each chicken breast. To do this, insert a deep knife into the thickest end of the breast. Keep pushing down along the breast, about halfway into the fillet, being careful not to cut all the way through. Push your finger down into the hole to open it, then stuff with 25g wild garlic butter, making sure that it goes all the way into the pocket. Repeat the process with the remaining chicken breasts."},    {"howto":"Line up 3 shallow bowls and put the flour in the first, the beaten eggs in the second and the breadcrumbs in the third. Dredge each chicken breast in the flour, then coat in the eggs and lastly the breadcrumbs. Dip each one in the eggs for a second time, then coat again in the breadcrumbs. Transfer to a plate and repeat with the remaining stuffed chicken breasts. Cover the plate with cling film and chill for at least 1 hr.)"},    {"howto":"When you are ready to eat, heat oven to 180C/160C fan/gas 4. Fill a pan 2cm deep with oil and set over a medium-high heat. Once hot, fry the Kievs for 2-3 mins each side until golden brown, then transfer to a baking tray. Pop in the oven for 15 mins or until cooked through. Serve with salad leaves and a lemon wedge to squeeze over.)"}]}', 4, 3),
(10, 'Moroccan chicken one-pot', 'Moroccan chicken one-pot', 3, 'You don''t need a clay pot to whip up a fragrant, North Africa tagine - throw it all in a casserole dish and top with feta, mint and lemon', 6, '{"compositions":[     {"composition":"4 boneless, skinless chicken breasts"},     {"composition":"3 tbsp olive oil"},     {"composition":"2 onions, 1 roughly chopped, 1 sliced"},     {"composition":"100g tomatoes"},     {"composition":"100g ginger, roughly chopped"},     {"composition":"3 garlic cloves"},     {"composition":"1 tsp turmeric"},     {"composition":"1 tbsp each ground cumin, coriander and cinnamon"},     {"composition":"1 large butternut squash, deseeded and cut into big chunks"},     {"composition":"600ml chicken stock"},     {"composition":"2 tbsp brown sugar"},     {"composition":"2 tbsp red wine vinegar"},     {"composition":"100g dried cherries"},     {"composition":"1 small red onion, finely chopped"},     {"composition":"zest 1 lemon"},     {"composition":"handful mint leaves"},     {"composition":"100g feta cheese, crumbled"},     {"composition":"couscous and natural yogurt"} ]}', '{"howtos":[    {"howto":"Season the chicken. Heat 2 tbsp of the oil in a flameproof dish, then brown the chicken on all sides. Remove the chicken to a plate. Whizz the chopped onion, tomatoes, ginger and garlic into a rough paste. Fry the sliced onion in the remaining oil in the dish until softened, then add the spices and fry for 1 min more until fragrant. Add the paste and fry for another few mins to soften."},    {"howto":"Return the chicken to the dish with the squash, stock, sugar and vinegar. Bring to a simmer, then cook for 30 mins until the chicken is cooked through. Lift the chicken out and stir in the cherries, then continue simmering the sauce to thicken while you shred the chicken into bite-sized chunks. Stir the chicken back into the sauce and season.)"},    {"howto":"Mix the red onion, lemon zest, mint and feta. Scatter over the dish, then serve with some couscous and yogurt.)"}]}', 3, 3),
(11, 'Lemon & thyme butter-basted roast chicken & gravy', 'Lemon & thyme butter-basted roast chicken & gravy', 3, 'Smoothing butter under the bird''s skin helps to baste the chicken and herbs add a delicious flavour to the gravy', 4, '{"compositions":[     {"composition":"50g butter, softened"},     {"composition":"bunch fresh thyme or lemon thyme, leaves picked, stalks reserved, plus extra to serve"},     {"composition":"4 garlic cloves, 1 mashed, the other 3 left whole but squashed"},     {"composition":"2 lemons, halved"},     {"composition":"1 chicken, about 1½ kg"},     {"composition":"2 carrots, roughly chopped"},     {"composition":"2 bay leaves"},     {"composition":"1 tbsp plain flour"},     {"composition":"250ml chicken stock"},     {"composition":"600ml chicken stock"},     {"composition":"splash soy sauce (optional)"} ]}', '{"howtos":[    {"howto":"Heat oven to 200C/180C fan/gas 6. In a small bowl, mash the butter with one-third of the thyme leaves, the mashed garlic and the juice of half a lemon. Mix everything together with some seasoning and set aside."},    {"howto":"Use your hand to loosen the chicken skin away from the breast, then push most of the butter mix into the gap. Rub the rest of the butter all over the outside of the chicken, then stuff the cavity with the lemon halves, remaining thyme leaves and stalks, and the garlic.)"},    {"howto":"Scatter the chopped carrot, onion and bay leaves over the base of a small roasting tin. Sit the chicken on top, breast-side up, and roast on the middle shelf for 1 hr 30 mins, basting with the buttery juices after about 40 mins. When the chicken is dark golden, crispy-skinned and the juices run clear, remove from the oven and leave in the tin for 5 mins. Use a pair of tongs to pull the lemons, garlic and thyme out of the cavity and into the tin. Lift the chicken up, letting any juices dribble into the tin, and transfer the chicken to a serving platter to rest for at least another 15 mins.)"},    {"howto":"To make the gravy, squeeze the juice out of the cooked lemon halves and discard the skins. Place the tin on a low heat, stir in flour and sizzle until light brown. Gradually pour in the stock and cook for a few mins. If you like a darker gravy, add a splash of soy sauce to the tin. Strain the gravy into a jug and serve with the chicken.)"}]}', 3, 3),
(12, 'Broccoli & Stilton soup', 'Broccoli & Stilton soup', 2, 'A smooth blended vegetable soup with blue cheese that''s as good for a comforting meal as it is for a dinner party starter', 4, '{"compositions":[     {"composition":"2 tbsp rapeseed oil"},     {"composition":"1 onion, finely chopped"},     {"composition":"1 stick celery, sliced"},     {"composition":"1 leek, sliced"},     {"composition":"1 medium potato, diced"},     {"composition":"1 knob butter"},     {"composition":"1l low salt or homemade chicken or vegetable stock"},     {"composition":"1 head broccoli, roughly chopped"},     {"composition":"140g Stilton, or other blue cheese, crumbled"} ]}', '{"howtos":[    {"howto":"Heat the rapeseed oil in a large saucepan and then add the onions. Cook on a medium heat until soft. Add a splash of water if the onions start to catch."},    {"howto":"Add the celery, leek, potato and a knob of butter. Stir until melted, then cover with a lid. Allow to sweat for 5 minutes. Remove the lid.)"},    {"howto":"Pour in the stock and add any chunky bits of broccoli stalk. Cook for 10 – 15 minutes until all the vegetables are soft.)"},    {"howto":"Add the rest of the broccoli and cook for a further 5 minutes. Carefully transfer to a blender and blitz until smooth. Stir in the stilton, allowing a few lumps to remain. Season with black pepper and serve.)"}]}', 3, 4),
(13, 'Orecchiette with anchovies & purple sprouting broccoli', 'Orecchiette with anchovies & purple sprouting broccoli', 5, 'This humble southern Italian dish spiked with chilli and lemon juice is topped with fried breadcrumbs for added crunch', 2, '{"compositions":[     {"composition":"200g orecchiette"},     {"composition":"4 tbsp olive oil"},     {"composition":"6 anchovy fillets in oil, chopped (reserve 1 tbsp oil)"},     {"composition":"4 fat garlic cloves, thinly sliced"},     {"composition":"1 red chilli, thinly sliced"},     {"composition":"zest 1 lemon, plus juice ½"},     {"composition":"50g fresh breadcrumbs"},     {"composition":"1 head broccoli, roughly chopped"},     {"composition":"200g purple sprouting broccoli"} ]}', '{"howtos":[    {"howto":"Cook the orecchiette following pack instructions. Meanwhile, heat 3 tbsp of the olive oil and 1 tbsp of the oil from the anchovies in a frying pan. Add the garlic and chilli, and sizzle for 3-4 mins until the garlic is just starting to turn golden. Add the anchovies and lemon juice, and cook for 1-2 mins more until the anchovies melt into the sauce. Put the remaining olive oil, breadcrumbs and lemon zest in another frying pan, stir together and cook until crisp."},    {"howto":"When the pasta has 4-5 mins to go, add the broccoli to the pan. When cooked, drain, reserving a cup of the pasta water, then add to the frying pan with the garlic and anchovies. Stir and cook over a low heat for a further 2 mins, adding a splash of pasta water if it looks dry. Season, then serve in pasta bowls with the lemony crumbs sprinkled over the top.)"}]}', 2, 3),
(14, 'Spiced broccoli with paneer', 'Spiced broccoli with paneer', 5, 'Paneer cheese makes a great ingredient for vegetarian curries. This one is spiced up with garam masala', 2, '{"compositions":[     {"composition":"1 large head broccoli, broken into florets"},     {"composition":"1 tbsp olive oil"},     {"composition":"225g pack paneer, sliced"},     {"composition":"1 tsp garam masala"},     {"composition":"1 garlic clove, finely chopped"},     {"composition":"1 red chilli, deseeded and finely chopped"},     {"composition":"zest and juice 1 lemon"},     {"composition":"naan bread, to serve"}]}', '{"howtos":[    {"howto":"Cook the broccoli in a large pan of boiling salted water for 3-4 mins. Save a little of the cooking water, then drain broccoli and set aside in the colander."},    {"howto":"Heat the oil in a large frying pan over a medium heat. Season, then fry the paneer for 2-3 mins on each side until golden. Move the paneer to the edge of the pan and add the garam masala, garlic, chilli and reserved cooking water. Cook for 2 mins, then return broccoli to the pan, with the lemon zest and juice. Toss everything together to heat through and serve with warm naan breads.)"}]}', 2, 4),
(15, 'Thai spinach bites', 'Thai spinach bites', 5, 'These little Thai nibbles are ready in just 10 minutes', 4, '{"compositions":[     {"composition":"2 segmented and chopped limes"},     {"composition":"2cm piece chopped ginger"},     {"composition":"1 finely sliced shallot"},     {"composition":"½ chopped chilli"},     {"composition":"1 tbsp coriander leaves"},     {"composition":"2 tbsp peanuts"},     {"composition":"dash fish sauce"},     {"composition":"sprinkle sugar"},     {"composition":"8-12 baby spinach leaves"}]}', '{"howtos":[    {"howto":"Mix together limes, ginger, shallot, chilli, coriander leaves and peanuts. Season with a dash of fish sauce and a sprinkle of sugar."},    {"howto":"Lay the spinach leaves on a platter. Place a spoonful of the mix on each, then hand round and get everyone to roll them up before eating in one bite.)"}]}', 2, 3),
(16, 'Chickpea, tomato & spinach curry', 'Chickpea, tomato & spinach curry', 5, 'A superhealthy vegan curry which accounts for 2 of your 5-a-day - and less than 200 calories per serve', 6, '{"compositions":[     {"composition":"1 onion, chopped"},     {"composition":"2 garlic cloves, chopped"},     {"composition":"3cm/1¼ in piece ginger, grated"},     {"composition":"6 ripe tomatoes"},     {"composition":"½ tbsp oil"},     {"composition":"1 tsp ground cumin"},     {"composition":"2 tsp ground coriander"},     {"composition":"1 tsp turmeric"},     {"composition":"pinch chilli flakes"},     {"composition":"1 tsp yeast extract (we used Marmite)"},     {"composition":"4 tbsp red lentils"},     {"composition":"6 tbsp coconut cream"},     {"composition":"1 head of broccoli, broken into small florets"},     {"composition":"400g can chickpeas, drained"},     {"composition":"100g bag baby spinach leaves"},     {"composition":"1 lemon, halved"},     {"composition":"1 tbsp toasted sesame seed"},     {"composition":"1 tbsp chopped cashew, to mix with the sesame seeds"}]}', '{"howtos":[    {"howto":"Put the onion, garlic, ginger and tomatoes in a food processor or blender and whizz to a purée."},    {"howto":"Heat oil in a large pan. Add the spices, fry for a few secs and add purée and yeast extract. Bubble together for 2 mins, then add lentils and coconut cream. Cook until lentils are tender, then add the broccoli and cook for 4 mins. Stir in chickpeas and spinach, squeeze over lemon and swirl through sesame and cashew mixture. Serve with brown rice, if you like.)"}]}', 3, 3),
(17, 'Spinach with chilli & lemon crumbs', 'Spinach with chilli & lemon crumbs', 5, 'Wilt fresh greens then serve with crispy breadcrumbs, chilli and garlic for a low-fat, healthy side dish', 4, '{"compositions":[     {"composition":"25g butter"},     {"composition":"100g fresh breadcrumbs"},     {"composition":"zest 1 lemon"},     {"composition":"2 garlic cloves, crushed"},     {"composition":"1 red chilli, finely chopped"},     {"composition":"500g spinach"}]}', '{"howtos":[    {"howto":"Melt the butter in a large frying pan, then when it starts to foam, tip in the breadcrumbs, zest, garlic and chilli. Cook until golden and crunchy. Remove from the pan, season and set aside."},    {"howto":"Add the spinach to the pan and wilt, stirring. Season and serve with the crunchy crumbs sprinkled over the top.)"}]}', 2, 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe_customer_rating`
--

INSERT INTO `recipe_customer_rating` (`recipe_customer_rating_id`, `recipe_id`, `customer_id`, `rating`) VALUES
(6, 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_similarity`
--

CREATE TABLE IF NOT EXISTS `recipe_similarity` (
`recipe_similar_id` int(11) NOT NULL,
  `recipe_id1` int(11) NOT NULL,
  `recipe_id2` int(11) NOT NULL,
  `similarity` float NOT NULL
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
 ADD PRIMARY KEY (`recipe_customer_rating_id`);

--
-- Indexes for table `recipe_similarity`
--
ALTER TABLE `recipe_similarity`
 ADD PRIMARY KEY (`recipe_similar_id`);

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
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `guest_cart`
--
ALTER TABLE `guest_cart`
MODIFY `guest_cart_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guest_orders`
--
ALTER TABLE `guest_orders`
MODIFY `guest_orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `product_size_price`
--
ALTER TABLE `product_size_price`
MODIFY `id_product_size_price` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
MODIFY `id_product_type` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
MODIFY `recipe_customer_rating_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `recipe_similarity`
--
ALTER TABLE `recipe_similarity`
MODIFY `recipe_similar_id` int(11) NOT NULL AUTO_INCREMENT;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
