-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Erstellungszeit: 17. Nov 2022 um 18:55
-- Server-Version: 5.7.36
-- PHP-Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `am-sportactiv`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `about_id` int(11) NOT NULL AUTO_INCREMENT,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL,
  PRIMARY KEY (`about_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'Our Story', '\r\n\r\nSuccess is not final, failure is not fatal: it is the courage to continue that counts. - Winston Churchill\r\n\r\n\r\n\r\n', '\r\n\r\n\r\nA&M Sportactiv  is a family-owned company  and inspired by the belief that the best sports products should be accessible to everyone.\r\n\r\nEver-evolving and high performance design, the best quality at the lowest possible price, and expert advice that customers of all ages, backgrounds and skill levels can access in-store or online, from anywhere, at any time, is what makes us who we are. And weâ€™re pretty proud of that.\r\n\r\n');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_image` text,
  `admin_job` varchar(255) NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_about` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_country`, `admin_image`, `admin_job`, `admin_contact`, `admin_about`) VALUES
(11, 'Aymen', 'aymendaboussi1992@gmail.com', 'Qwertykey123', 'tunesien', 'Aymen.jpg', 'Fullstack Web-Entwickler', '001774046740', '      bla bla bla bla bla bla bla bla bla bla bla bla   ');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bundle_product_relation`
--

DROP TABLE IF EXISTS `bundle_product_relation`;
CREATE TABLE IF NOT EXISTS `bundle_product_relation` (
  `rel_id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_title` varchar(255) NOT NULL,
  `bundle_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  PRIMARY KEY (`rel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(11) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL,
  PRIMARY KEY (`cat_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Frauen', 'no', ''),
(2, 'Herren', 'no', ''),
(3, 'Kinder', '', ''),
(4, 'Accessoire', 'no', ''),
(5, '% SALE %', 'no', ''),
(6, 'ECODESIGN', 'no', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_email` text NOT NULL,
  `contact_desc` text NOT NULL,
  `contact_heading` varchar(255) NOT NULL,
  PRIMARY KEY (`contact_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_desc`, `contact_heading`) VALUES
(1, 'a.daboussi92@gmail.com', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(11) NOT NULL,
  `coupon_used` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(13, 'Mariam', 'Mariam@gmail.com', 'Qwertykey123', 'Deutchland', 'Beliefeld', '017740467**', '******', 'm.jpg', '::1', '941730733');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(16, 2, 207, 1715523401, 3, 'Small', '2017-02-20 09:21:42', 'pending'),
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 09:21:42', 'pending'),
(18, 2, 300, 1715523401, 1, 'Medium', '2017-02-20 09:21:42', 'pending'),
(19, 2, 150, 1068059025, 1, 'Medium', '2017-02-20 09:26:47', 'pending'),
(20, 2, 288, 909940689, 3, 'Large', '2017-02-27 12:06:32', 'complete'),
(21, 2, 400, 909940689, 2, 'Meduim', '2017-02-27 12:06:37', 'complete'),
(22, 6, 60, 999310984, 1, 'Small (3 pieces)', '2021-05-14 00:20:15', 'Complete'),
(23, 7, 10, 334642094, 1, 'Small (3 pieces)', '2021-05-20 19:39:06', 'Complete'),
(24, 7, 40, 724100346, 1, 'Small (3 pieces)', '2021-05-16 01:23:26', 'Complete'),
(25, 7, 50, 1708867829, 1, 'Small (3 pieces)', '2021-05-20 12:30:04', 'pending'),
(26, 11, 120, 124055521, 3, 'Small (3 pieces)', '2021-05-22 12:16:05', 'Complete');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `enquiry_types`
--

DROP TABLE IF EXISTS `enquiry_types`;
CREATE TABLE IF NOT EXISTS `enquiry_types` (
  `enquiry_id` int(11) NOT NULL AUTO_INCREMENT,
  `enquiry_title` varchar(255) NOT NULL,
  PRIMARY KEY (`enquiry_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Nike', 'no', ''),
(3, 'Adidas', 'no', ''),
(4, 'New Balance', 'no', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `payment_date` text NOT NULL,
  PRIMARY KEY (`payment_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(11) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_cat_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_psp_price` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `product_features` varchar(255) NOT NULL,
  `product_video` text,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_keywords`, `product_label`, `status`, `product_features`, `product_video`) VALUES
(2, 4, 2, 2, '2022-11-16 17:51:45', 'Laufjacke wasserabweisend winddicht Kiprun Warm Regul Herren limitierte Auflage', 'Laufjacke-wasserabweisend-winddicht-Kiprun-Warm-Regul', 'laufjacke-wasserabweisend-winddicht-kiprun-warm-regul-herren-limitierte-auflage (2).jpg', 'laufjacke-wasserabweisend-winddicht-kiprun-warm-regul-herren-limitierte-auflage (5).jpg', 'laufjacke-wasserabweisend-winddicht-kiprun-warm-regul-herren-limitierte-auflage (6).jpg', 69, 0, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'weddings', 'Laufjacke', 'product', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n'),
(3, 4, 2, 2, '2022-11-16 18:39:07', 'Funktionsshirt Fussball langarm Keepdry 500 WÃ¤rmekomfort Damen/Herren schwarz', 'Funktionsshirt-Fussball-langarm ', 'funktionsshirt-fussball-langarm-keepdry-500-warmekomfort-damenherren-schwarz.jpg', 'funktionsshirt-fussball-langarm-keepdry-500-warmekomfort-damenherren-schwarz (4).jpg', 'funktionsshirt-fussball-langarm-keepdry-500-warmekomfort-damenherren-schwarz (2).jpg', 9, 0, '\r\n\r\nUnser Entwicklungsteam hat dieses Modell fÃ¼r anspruchsvolle Sportler entworfen, die ihre Leistung steigern und daher hÃ¶here BedÃ¼rfnisse haben.\r\n\r\nEmpfohlen fÃ¼r Temperaturen von 7 bis 20 Â°C. Die warme FunktionsunterwÃ¤sche Keepdry leitet die Feuchtigkeit ab und speichert die KÃ¶rperwÃ¤rme fÃ¼r lÃ¤nger dauernde KÃ¶rperaktivitÃ¤t.\r\n\r\n', 'Funktionsshirt', 'Funktionsshirt', 'product', '\r\n\r\n', '\r\n\r\n');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL,
  PRIMARY KEY (`p_cat_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'FUSSBALL', 'no', ''),
(5, 'FITNESS', 'no', ''),
(6, ' LAUFEN', 'no', ''),
(7, 'OUTDOOR', 'no', ''),
(9, ' WANDERN - TREKKING', 'no', ''),
(10, 'FAHRRAD WELT', 'no', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_title` varchar(255) NOT NULL,
  `store_image` text,
  `store_desc` varchar(255) NOT NULL,
  `store_button` text NOT NULL,
  `store_urly` text NOT NULL,
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_title` varchar(255) NOT NULL,
  `manufacturer_top` varchar(255) NOT NULL,
  `manufacturer_image` text,
  `tmp_name` varchar(255) NOT NULL,
  PRIMARY KEY (`manufacturer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `terms`
--

DROP TABLE IF EXISTS `terms`;
CREATE TABLE IF NOT EXISTS `terms` (
  `term_id` int(11) NOT NULL AUTO_INCREMENT,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL,
  PRIMARY KEY (`term_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`wishlist_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Daten für Tabelle `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(2, 2, 8),
(5, 7, 6),
(6, 7, 9),
(8, 11, 7);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
