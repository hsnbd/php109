-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2017 at 05:08 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php109`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `home` ()  BEGIN
SELECT * FROM categories ORDER BY name ASC;

SELECT * FROM subcategories ORDER BY name ASC;

SELECT * FROM slider ORDER BY id DESC;


SELECT p.id, p.title, p.price, p.vat, p.discount,p.picture1,p.picture2,p.picture3,p.default_picture,c.name cname, sc.name scname
FROM products p, subcategories sc, categories c
WHERE p.subcategoriesid = sc.id AND
sc.categoriesid = c.id
ORDER BY p.id desc LIMIT 12;

SELECT p.id, p.title, p.price, p.vat, p.discount,p.picture1,p.picture2,p.picture3,p.default_picture,c.name cname, sc.name scname
FROM products p, subcategories sc, categories c
WHERE p.subcategoriesid = sc.id AND
sc.categoriesid = c.id
ORDER BY p.discount desc LIMIT 12;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', '2017-06-01 08:03:58', '2017-06-01 08:03:58'),
(2, 'Fruits', '2017-06-01 08:04:02', '2017-06-01 08:04:02'),
(3, 'Women''s ware', '2017-06-07 08:30:34', '2017-06-07 08:30:34'),
(4, 'Men''s Ware', '2017-06-07 08:40:22', '2017-06-07 08:40:22'),
(5, 'Mobile', '2017-06-07 09:15:17', '2017-06-07 09:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countriesid` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `countriesid`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2017-06-05 01:36:43', '2017-06-05 01:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', '2017-06-05 01:36:33', '2017-06-05 01:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `code` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discout` double(5,2) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `citiesid` tinyint(3) UNSIGNED NOT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(10) UNSIGNED NOT NULL,
  `reviewsid` tinyint(3) UNSIGNED NOT NULL,
  `customersid` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `reviewsid` tinyint(3) UNSIGNED NOT NULL,
  `customersid` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(127, '2014_10_12_000000_create_users_table', 1),
(128, '2014_10_12_100000_create_password_resets_table', 1),
(129, '2017_05_22_164716_create_units_table', 1),
(130, '2017_05_22_165048_create_categories_table', 1),
(131, '2017_05_22_165222_create_countries_table', 1),
(132, '2017_05_22_165341_create_cities_table', 1),
(133, '2017_05_22_172318_create_subcategories_table', 1),
(134, '2017_05_22_172543_create_shipping_table', 1),
(135, '2017_05_22_172631_create_coupons_table', 1),
(136, '2017_05_22_175445_create-products_table', 1),
(137, '2017_05_23_005619_create_customers_table', 1),
(138, '2017_05_23_005839_create_sales_table', 1),
(139, '2017_05_23_012108_create_slider_table', 1),
(140, '2017_05_23_012230_create_salesdetails_table', 1),
(141, '2017_05_23_012328_create_reviews_table', 1),
(142, '2017_05_23_013906_create_likes_table', 1),
(143, '2017_05_23_013939_create_dislikes_table', 1),
(144, '2017_05_25_082538_create_size_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `vat` double(4,2) NOT NULL,
  `discount` double(6,2) NOT NULL,
  `unitsid` tinyint(3) UNSIGNED DEFAULT NULL,
  `subcategoriesid` tinyint(3) UNSIGNED NOT NULL,
  `weight` double(8,2) NOT NULL,
  `size` smallint(6) DEFAULT NULL,
  `stock` double(10,2) NOT NULL,
  `picture1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_picture` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `vat`, `discount`, `unitsid`, `subcategoriesid`, `weight`, `size`, `stock`, `picture1`, `picture2`, `picture3`, `default_picture`, `created_at`, `updated_at`) VALUES
(1, 'ASUS X540S - 15.6" HD LED - Intel Celeron N3050 - Intel HD Graphics - Windows 10', 'KEY FEATURES\r\nFor queries, please contact our expert @0301-8226675\r\nIntel Celeron N3050 1.6 GHz\r\n15.6" HD LED (1366 x 768)\r\n2GB DDR3L 1600 MHz SDRAM + 500GB HDD 5400 RPM\r\nVGA Web Camera\r\n802.11 b/g/n/ac WiFi and Bluetooth® 4.0\r\n3-in-1 card reader (SD/ SDHC/ SDXC)\r\nWHAT''S IN THE BOX?\r\n1 x Laptop1 x Charger1 x Power Cord', 26999.00, 10.00, 20.00, 2, 3, 4.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 08:20:58', '2017-06-07 08:20:58'),
(3, 'i-Life Zednote 14 Convertible - Intel Quad Core x5-Z8300 - 32GB SSD - Windows 10 - Silver', 'Key Features\r\nFor queries, please contact Daraz Expert @0301-8226675\r\n1-Year Manufacturer''s Warranty\r\n14" HD Touch - 1366 x 768 pixels\r\nIntel Atom Quad Core x5-Z8300 processor\r\n32GB SSD & 2GB RAM\r\nIntel HD Graphics', 26400.00, 10.00, 20.00, 2, 3, 4.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 08:26:16', '2017-06-07 08:26:16'),
(4, 'DELL Inspiron 15 7559 - 15.6" Full HD IPS Display - 6th Gen Core i7-6700HQ - Windows 10 - Black', 'Key Features\r\n6th Gen Core i7 6700HQ 2.6 GHz w/ Turbo\r\n15.6" Full HD IPS (1920 x 1080 pixels)\r\n4GB GTX 960M GDDR5 GPU\r\n8GB RAM + 1TB HDD with 8GB SSD Hybrid Drive\r\nUS English Chiclet Styled Backlit Keyboard\r\nWindows 10 Home (64-Bit)', 98999.00, 10.00, 33.00, 2, 3, 4.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 3, '2017-06-07 08:27:34', '2017-06-07 08:27:34'),
(5, 'Lenovo Ideapad 110 - Celeron N3060 - 4GB RAM - Black', 'Key Features\r\n1-Year Lenovo Warranty\r\n15.6" HD LED Backlit Display (1366 x 768 pixels)\r\nIntel Celeron N3060 (1.60GHz 1333MHz 1MB) CPU\r\n500 GB SATA HDD + 4GB DDR3L RAM\r\n1 USB 2.0 , 1 USB 3.0 , HDMI, 4 in 1 Card Reader\r\nComes with Dolby Audio', 28300.00, 10.00, 6.00, 2, 3, 4.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 08:28:50', '2017-06-07 08:28:50'),
(6, 'HP EliteBook Folio 1020 G1 Special Edition - 12.5" WQHD - Core M-5Y51 CPU - 256GB M.2 SSD - Platinum', 'Key Features\r\nFor queries, please contact our expert @0310-2435656\r\nIntel Core M-5Y51 Processor (4M Cache, 1.1 GHz up to 2.60 GHz)\r\n8GB LPDDR3 RAM - 256GB M.2 SSD\r\n12.5" BrightView WQHD Display (2560 x 1440 pixels)\r\nUS English / Japanese Chiclet Styled Backlit Keyboard\r\nmicroSD Media Card Slot', 45999.00, 10.00, 60.00, 2, 3, 4.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 08:30:09', '2017-06-07 08:30:09'),
(7, 'Gul Ahmed Yellow Festive Collection 2017 Gypsy 2 Pc Embroidered Blended Chiffon-GT # 07 Unstitched', 'Hand Woven Banarsi Dupatta - 2.5 meters \r\nEmbroidered Shirt Front – 0.6 meters \r\nPrinted Back & Sleeves – 1.15 meters \r\nEmbroidered Bunches \r\nLaces \r\nEmbroidered Side Panel \r\nDyed Bottom - 1.5 meters \r\n3 Piece Dress', 2990.00, 10.00, 0.00, 1, 4, 10.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 08:32:00', '2017-06-07 08:32:00'),
(8, 'Gul Ahmed Lavender Festive Collection 2017 Eid Festive 3 Pc', 'Hand Woven Banarsi Dupatta - 2.5 meters \r\nEmbroidered Shirt Front – 0.6 meters \r\nPrinted Back & Sleeves – 1.15 meters \r\nEmbroidered Bunches \r\nLaces \r\nEmbroidered Side Panel \r\nDyed Bottom - 1.5 meters \r\n3 Piece Dress\r\nKEY FEATURES\r\nMain Name: Festive Collection 2017\r\nCollection: Eid Festive\r\nSub-collection: 3 Pc Premium Embroidered Chiffon\r\nPieces Count: 3 piece', 6990.00, 10.00, 0.00, 1, 4, 0.00, 1, 12.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 08:34:00', '2017-06-07 08:34:00'),
(9, 'Gul Ahmed Orange Festive Collection 2017 Gypsy 1 Pc', 'Hand Woven Banarsi Dupatta - 2.5 meters \r\nEmbroidered Shirt Front – 0.6 meters \r\nPrinted Back & Sleeves – 1.15 meters \r\nEmbroidered Bunches \r\nLaces \r\nEmbroidered Side Panel \r\nDyed Bottom - 1.5 meters \r\n1 Piece Dress', 1990.00, 10.00, 0.00, 1, 4, 4.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 08:35:16', '2017-06-07 08:35:16'),
(10, 'Gul Ahmed Orange Festive Collection 2017 Gypsy 2 Pc', 'Hand Woven Banarsi Dupatta - 2.5 meters \r\nEmbroidered Shirt Front – 0.6 meters \r\nPrinted Back & Sleeves – 1.15 meters \r\nEmbroidered Bunches \r\nLaces \r\nEmbroidered Side Panel \r\nDyed Bottom - 1.5 meters \r\n3 Piece Dress', 39990.00, 10.00, 0.00, 1, 4, 0.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 08:37:00', '2017-06-07 08:37:00'),
(12, 'Gul Ahmed Cream Kurta Printed - KE-1225', 'Gul Ahmed Cream Kurta Printed - KE-1225Gul Ahmed Cream Kurta Printed - KE-1225Gul Ahmed Cream Kurta Printed - KE-1225Gul Ahmed Cream Kurta Printed - KE-1225', 2450.00, 10.00, 0.00, 1, 5, 10.00, 2, 10.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 08:41:25', '2017-06-07 08:41:25'),
(13, 'Gul Ahmed Coral Kurta Plain - KP-1260', 'Gul Ahmed Coral Kurta Plain - KP-1260Gul Ahmed Coral Kurta Plain - KP-1260Gul Ahmed Coral Kurta Plain - KP-1260Gul Ahmed Coral Kurta Plain - KP-1260Gul Ahmed Coral Kurta Plain - KP-1260', 2450.00, 10.00, 0.00, 1, 5, 10.00, 2, 10.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 08:42:33', '2017-06-07 08:42:33'),
(14, 'Gul Ahmed Brown Kurta Embroidery - KE-1193', 'Gul Ahmed Brown Kurta Embroidery - KE-1193Gul Ahmed Brown Kurta Embroidery - KE-1193Gul Ahmed Brown Kurta Embroidery - KE-1193Gul Ahmed Brown Kurta Embroidery - KE-1193', 2450.00, 10.00, 0.00, 1, 5, 10.00, 2, 10.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 08:43:25', '2017-06-07 08:43:25'),
(15, 'The Shopkeeper Silver - GSM Smart Watch + Camera SIm Card DZ-09SL', 'The Shopkeeper Silver GSM Smart Watch + Camera Sim Card DZ-09SL\r\nSpecifications:\r\n1. Applicable Gender: Neutral\r\n2. Power Supply: Built-in Battery\r\n3. Material: Rubber Band (Watchband) & Alloy (Watchcase)\r\n4. Band Length: 8.07" / 20.5cm\r\n5. Band Width: 0.83" / 2.1cm\r\n6. Color: Silver\r\n7. Dial Shape: Rectangle\r\n8. CPU: MTK6260A\r\n9. Memory: 128M + 64M: Maximum Support 32 gb TF Card \r\n10. Display: 1.5 inch TFT High-Definition LCD\r\n11. Resolution: 240 x 240 Pixels \r\n12. Touch Screen: OGS Capacitance Screen \r\n13. Bluetooth Version: 3.0\r\n14. Camera: 1.3 Million Pixels \r\n15. Battery: 380mAh\r\n16. Standby Time: More than 7 Days \r\n17. Continuous Use Time: More than 2 Days', 1098.00, 20.00, 45.00, 2, 6, 4.00, 1, 100.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 08:45:23', '2017-06-07 08:45:23'),
(16, 'Moonlight DZ09 GSM Smart Watch with TF Card Option', 'Key Features\r\nGSM 850/900/1800/1900 MHz\r\nSingle Micro SIM Card \r\nMicro SD card slot\r\nVoice recording\r\nBluetooth Call \r\nBluetooth SMS/IM Notified', 1099.00, 10.00, 69.00, 2, 6, 4.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 09:12:31', '2017-06-07 09:12:31'),
(17, 'Khushal Khan W08 - GSM & Bluetooth Smart Watch - Black', 'W08 - GSM & Bluetooth Smart Watch - Black\r\n\r\nGSM 850/900/1800/1900 MHz , Single Micro SIM Card \r\nBluetooth Dialer, Call Reminder, Bluetooth Call \r\nBluetooth SMS/IM Message Notified \r\n1.56" TFT LCD Touch Screen 240*240 pixels \r\n2.0M Camera, Video Recording Support \r\nAnti-loss Technology to bind phone\r\nKEY FEATURES\r\nGSM 850/900/1800/1900 MHz , Single Micro SIM Card \r\nBluetooth Dialer, Call Reminder, Bluetooth Call \r\nBluetooth SMS/IM Message Notified \r\n1.56" TFT LCD Touch Screen 240*240 pixels \r\n2.0M Camera, Video Recording Support \r\nAnti-loss Technology to bind phone', 1649.00, 10.00, 67.00, 2, 6, 4.00, 1, 20.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 09:14:16', '2017-06-07 09:14:16'),
(18, 'Gul Ahmed Light Grey Cotton Casual Shirt For Men - Cm-Yd-1904', 'Light Grey Cotton Casual Shirt For Men - Cm-Yd-1904\r\nKEY FEATURES\r\nColor: Light Grey\r\nMaterial: 100% Cotton\r\nCasual Wear\r\nRegular Fit\r\nWHAT''S IN THE BOX?', 2450.00, 10.00, 0.00, 1, 7, 0.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 3, '2017-06-07 09:18:20', '2017-06-07 09:18:20'),
(19, 'Gul Ahmed Pink Cotton Casual Shirt For Men', 'Pink Cotton Casual Shirt For Men\r\nKEY FEATURES\r\nPink\r\nCotton\r\nButton down collar\r\nSkin friendly \r\nGood quality\r\nWHAT''S IN THE BOX?\r\n1 x Pink Cotton Casual Shirt For Men', 2450.00, 10.00, 0.00, 1, 7, 10.00, 2, 20.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 09:20:26', '2017-06-07 09:20:26'),
(20, 'Gul Ahmed Pink & Blue Checkered Cotton Casual Shirt For Men', 'Pink & Blue Checkered Cotton Casual Shirt For Men\r\nKEY FEATURES\r\nPink & Blue\r\nCheckered\r\nCotton\r\nButton down collar\r\nGood quality\r\nWHAT''S IN THE BOX?\r\n1 x Pink & Blue Checkered Cotton Casual Shirt For Me', 2450.00, 10.00, 0.00, 1, 7, 10.00, 2, 10.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 09:23:05', '2017-06-07 09:23:05'),
(21, 'Nokia 130 - 1.8" - Black - Dual Sim', 'Key Features\r\nBrand Warranty\r\nScreen: 1.8 inches (~21.1% screen-to-body ratio)\r\nSim: Dual Sim\r\nRadio: FM Radio', 3199.00, 10.00, 9.00, 2, 9, 10.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 3, '2017-06-07 09:25:11', '2017-06-07 09:25:11'),
(22, 'Nokia 105 - 1.45" - Dual Sim - Black', 'Key Features\r\nBrand Warranty\r\nMemory: 4MB RAM , 2000 Contacts\r\nScreen: 1.45 inches (128 x 128 pixels)\r\nCamera: No\r\nBattery: 800 mAh\r\nDual Sim: Yes', 2699.00, 10.00, 2.00, 2, 9, 10.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 09:27:02', '2017-06-07 09:27:02'),
(23, 'Nokia 150 - Dual Sim - Black', 'Key Features\r\nBrand Warranty\r\nBattery	stand-by up to 600 hrs, Talk-time up to 22 hrs\r\n1020 mAh, (Removable Li-Ion)  \r\nConnectivity	Bluetooth V3.0, USB (microUSB), GPRS, EDGE  \r\nDisplay Size	2.4 Inches, 240 x 320 pixels 167 PPI      \r\nBrowser	WAP 2.0/xHTML', 3999.00, 10.00, 6.00, 2, 9, 10.00, 1, 20.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 09:28:20', '2017-06-07 09:28:20'),
(24, 'Samsung Galaxy J1 Mini Prime - 4" - 8GB - 1GB RAM - 5MP - Gold', 'Key Features\r\nBrand Warranty\r\nScreen: 4.0 inches (~59.4% screen-to-body ratio)\r\nMemory: 8 GB, 1 GB RAM\r\nProcessor: Quad-core 1.5 GHz - J106F/DS, 1.2 GHz - J106B/DS, J106H/DS\r\nOS: Android OS, v6.0 (Marshmallow)\r\nCamera: 5 MP, f/2.2, LED flash', 9199.00, 10.00, 4.00, 2, 8, 10.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 09:30:28', '2017-06-07 09:30:28'),
(25, 'Samsung Galaxy J1 J120F - 4.5" - 8GB - 1GB RAM - 5MP Camera - Gold', 'Key Features\r\nBrand WarrantyScreen Size & Type: 4.5" TFT capacitive touchscreen, 16M colorsStorage + Memory Support: 8GB HDD, microSD up to 128GBCamera (Back + Front): 5MP (Back) + 2MP (Front)Processor + RAM:Quad-core 1.3 GHz Cortex-A7 , 1GB RAMOperating System: Android OS, v5.1.', 11699.00, 10.00, 31.00, 2, 8, 10.00, 2, 100.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 09:31:40', '2017-06-07 09:31:40'),
(26, 'Samsung Galaxy J1 J120F - 4.5" - 8GB - 1GB RAM - 5MP Camera - White', 'Key Features\r\nBrand WarrantyScreen Size & Type: 4.5" TFT capacitive touchscreen, 16M colorsStorage + Memory Support: 8GB HDD, microSD up to 128GBCamera (Back + Front): 5MP (back) + 2MP (front)Processor + RAM:Quad-core 1.3 GHz Cortex-A7 , 1GB RAMOperating System: Android OS, v5.1.1', 11699.00, 10.00, 31.00, 2, 8, 10.00, 2, 10.00, 'jpg', 'jpg', 'jpg', 3, '2017-06-07 09:33:15', '2017-06-07 09:33:15'),
(27, 'Electrotech P15 - Wireless Deep Bass Stereo Headphones - Blue', 'Key Features\r\nComfortable Wear\r\nBluetooth Connection\r\nTF card supported\r\nStylish\r\nBuilt In Mic', 1294.00, 10.00, 57.00, 2, 10, 10.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 09:36:58', '2017-06-07 09:36:58'),
(28, 'Electrotech P15 -Wireless Bluetooth Stereo Bass Headphones - Red', 'Key Features\r\nComfortable Wear\r\nBluetooth Connection\r\nTF card supported\r\nStylish\r\nBuilt In Mic', 1294.00, 10.00, 57.00, 2, 10, 10.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 2, '2017-06-07 09:38:05', '2017-06-07 09:38:05'),
(29, 'Electrotech S460 - Wireless Bluetooth with FM & SD Card Headphone - White', 'Key Features\r\nBluetooth Version: 2.1\r\nStereo headphone with Mic\r\nHigh definition sound gives you the best sonic sound experience\r\nSupport for TF card/MP3/FM/Hands-free calls\r\nExternal audio line connects the computer\r\nCharge via the Micro USB/ USB2.0 charging port', 1175.00, 10.00, 36.00, 2, 10, 10.00, 1, 10.00, 'jpg', 'jpg', 'jpg', 1, '2017-06-07 09:40:51', '2017-06-07 09:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `customersid` tinyint(3) UNSIGNED NOT NULL,
  `productsid` tinyint(3) UNSIGNED NOT NULL,
  `rating` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messege` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `customersid` tinyint(3) UNSIGNED NOT NULL,
  `shippingid` tinyint(3) UNSIGNED NOT NULL,
  `cdiscount` double(4,2) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salesdetail`
--

CREATE TABLE `salesdetail` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `salesid` tinyint(3) UNSIGNED NOT NULL,
  `productsid` tinyint(3) UNSIGNED NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `vat` double(4,2) NOT NULL,
  `discount` double(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'M', '2017-06-04 13:18:27', '2017-06-04 13:18:27'),
(2, 'L', '2017-06-07 08:38:40', '2017-06-07 08:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoriesid` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `categoriesid`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 1, '2017-06-01 08:04:13', '2017-06-01 08:04:13'),
(2, 'Apple', 2, '2017-06-01 08:04:18', '2017-06-01 08:04:18'),
(3, 'Laptop', 1, '2017-06-07 08:18:44', '2017-06-07 08:18:44'),
(4, '3 Pices', 3, '2017-06-07 08:30:46', '2017-06-07 08:30:46'),
(5, 'Kurta', 4, '2017-06-07 08:40:34', '2017-06-07 08:40:34'),
(6, 'Watch', 1, '2017-06-07 08:43:56', '2017-06-07 08:43:56'),
(7, 'Shirt', 4, '2017-06-07 09:14:56', '2017-06-07 09:14:56'),
(8, 'Samsung', 5, '2017-06-07 09:15:30', '2017-06-07 09:15:30'),
(9, 'Nokia', 5, '2017-06-07 09:15:43', '2017-06-07 09:15:43'),
(10, 'HeadPhone', 1, '2017-06-07 09:35:25', '2017-06-07 09:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dozzen', '2017-06-05 01:36:56', '2017-06-05 01:36:56'),
(2, 'Pices', '2017-06-07 08:19:54', '2017-06-07 08:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_countriesid_foreign` (`countriesid`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD KEY `customers_citiesid_foreign` (`citiesid`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dislikes_reviewsid_foreign` (`reviewsid`),
  ADD KEY `dislikes_customersid_foreign` (`customersid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_reviewsid_foreign` (`reviewsid`),
  ADD KEY `likes_customersid_foreign` (`customersid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD KEY `products_unitsid_foreign` (`unitsid`),
  ADD KEY `products_subcategoriesid_foreign` (`subcategoriesid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_customersid_foreign` (`customersid`),
  ADD KEY `reviews_productsid_foreign` (`productsid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salesdetail`
--
ALTER TABLE `salesdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salesdetail_salesid_foreign` (`salesid`),
  ADD KEY `salesdetail_productsid_foreign` (`productsid`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipping_contact_unique` (`contact`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider_url_unique` (`url`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_name_categoriesid_unique` (`name`,`categoriesid`),
  ADD KEY `subcategories_categoriesid_foreign` (`categoriesid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`);

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
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salesdetail`
--
ALTER TABLE `salesdetail`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_countriesid_foreign` FOREIGN KEY (`countriesid`) REFERENCES `countries` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_citiesid_foreign` FOREIGN KEY (`citiesid`) REFERENCES `cities` (`id`);

--
-- Constraints for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD CONSTRAINT `dislikes_customersid_foreign` FOREIGN KEY (`customersid`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `dislikes_reviewsid_foreign` FOREIGN KEY (`reviewsid`) REFERENCES `reviews` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_customersid_foreign` FOREIGN KEY (`customersid`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `likes_reviewsid_foreign` FOREIGN KEY (`reviewsid`) REFERENCES `reviews` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_subcategoriesid_foreign` FOREIGN KEY (`subcategoriesid`) REFERENCES `subcategories` (`id`),
  ADD CONSTRAINT `products_unitsid_foreign` FOREIGN KEY (`unitsid`) REFERENCES `units` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_customersid_foreign` FOREIGN KEY (`customersid`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `reviews_productsid_foreign` FOREIGN KEY (`productsid`) REFERENCES `products` (`id`);

--
-- Constraints for table `salesdetail`
--
ALTER TABLE `salesdetail`
  ADD CONSTRAINT `salesdetail_productsid_foreign` FOREIGN KEY (`productsid`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `salesdetail_salesid_foreign` FOREIGN KEY (`salesid`) REFERENCES `sales` (`id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_categoriesid_foreign` FOREIGN KEY (`categoriesid`) REFERENCES `categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
