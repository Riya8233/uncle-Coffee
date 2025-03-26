-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2025 at 09:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rm`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `content`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Uncle Coffee', '<p><strong>Introduction</strong>\r\nThere’s nothing quite like the aroma of freshly brewed coffee filling the air, awakening your senses, and preparing you for the day ahead. At <strong>Uncle Coffee</strong>, we bring you an exquisite coffee experience that goes beyond the ordinary. Whether you\'re a coffee aficionado or just beginning your journey, our carefully curated blends promise to delight your taste buds and elevate your coffee rituals.</p><p><strong>The Story Behind Uncle Coffee</strong>\r\nEvery great cup of coffee has a story, and Uncle Coffee is no different. Born out of a passion for delivering <strong>authentic flavors</strong>, we source our coffee beans from the finest plantations, ensuring a rich and flavorful experience in every sip. Our mission is simple: to make <strong>premium-quality coffee</strong> accessible to everyone while preserving the art of coffee-making.</p><p><strong>Why Choose Uncle Coffee?</strong></p><ul><li><p><strong>Handpicked Coffee Beans:</strong> Our coffee is sourced from the best coffee-growing regions, ensuring superior quality and freshness.</p></li><li><p><strong>Expert Roasting:</strong> Each batch is carefully roasted to bring out the perfect balance of aroma, body, and taste.</p></li><li><p><strong>Variety of Flavors:</strong> From bold espressos to smooth lattes, we offer a wide range of options to suit every preference.</p></li><li><p><strong>Sustainability &amp; Ethical Sourcing:</strong> We believe in fair trade and eco-friendly practices, ensuring that our coffee is not only delicious but also responsibly sourced.</p></li></ul><p><strong>Our Signature Offerings</strong>\r\nAt Uncle Coffee, we take pride in offering a selection of coffee blends that cater to different moods and moments:</p><ul><li><p><strong>Classic Espresso:</strong> A rich, full-bodied espresso with a deep and bold flavor.</p></li><li><p><strong>Velvet Latte:</strong> A smooth and creamy delight, perfect for those who love a milder taste.</p></li><li><p><strong>Caramel Bliss:</strong> A hint of sweetness blended with premium coffee for a delightful treat.</p></li><li><p><strong>Cold Brew Magic:</strong> Slow-brewed for a refreshing and naturally sweet flavor.</p></li></ul><p><strong>Join the Uncle Coffee Experience</strong>\r\nWhether you prefer sipping your coffee at home, grabbing a cup on the go, or gifting a <strong>premium coffee experience</strong> to a loved one, Uncle Coffee has something for everyone. Visit our store, explore our online collection, or subscribe to our coffee plans for a <strong>never-ending supply of goodness</strong>.</p><p><strong>Follow Us!</strong>\r\nStay connected with us on <strong>Instagram, Facebook, and Twitter</strong> for updates, offers, and coffee inspiration. Share your Uncle Coffee moments with us using <strong>#UncleCoffee</strong> and be a part of our coffee-loving community!</p><p></p><p></p><p><span><strong>Final Sip</strong></span><span>\r\nUncle Coffee isn’t just a beverage; it’s an experience, a ritual, and a moment of pure indulgence. </span><span><strong>Join us in celebrating the magic of coffee—one cup at a time.</strong></span></p>', 'blog-images/1742758755-download.jfif', '2025-03-23 14:09:15', '2025-03-23 14:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ice Blended Frappe (IBF)', '2025-03-23 12:25:12', '2025-03-23 12:25:12'),
(2, 'Cold Brew', '2025-03-23 12:25:25', '2025-03-23 12:25:25'),
(3, 'Smoothies', '2025-03-23 12:27:15', '2025-03-23 12:27:15'),
(4, 'Chocolate Shakes', '2025-03-23 12:28:27', '2025-03-23 12:28:27'),
(5, 'Crazy Shakes', '2025-03-23 12:43:38', '2025-03-23 12:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'riyaben patel', 'riyaben@gmail.com', '9825714909', '202 maa krupa app katargam surat', '2025-02-25 14:05:19', '2025-02-25 14:05:19'),
(2, 'pauva', 'axitpatel3120@gmail.com', '1234567890', '202 maa krupa app katargam surat', '2025-02-25 14:06:19', '2025-02-25 14:06:19'),
(3, 'Pauva', 'ram@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Gujrat 395004', '2025-03-20 12:11:06', '2025-03-20 12:11:06'),
(4, 'Testing', 'riyaben@gmail.com', '9825714909', 'surat Surat Surat 395004', '2025-03-22 10:35:22', '2025-03-22 10:35:22'),
(5, 'Testing', 'riyaben@gmail.com', '9825714909', 'surat Surat Surat 395004', '2025-03-22 10:35:56', '2025-03-22 10:35:56'),
(6, 'Testing', 'admin@gmail.com', '1234567890', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 02:33:34', '2025-03-23 02:33:34'),
(7, 'Nasta', 'admin@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 02:43:45', '2025-03-23 02:43:45'),
(8, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', 'surat Surat Surat 395004', '2025-03-23 02:58:30', '2025-03-23 02:58:30'),
(9, 'Testing', 'riyapatel180904@gmail.com', '9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 03:36:36', '2025-03-23 03:36:36'),
(10, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 03:51:53', '2025-03-23 03:51:53'),
(11, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 04:05:53', '2025-03-23 04:05:53'),
(12, 'Testing', 'riyaben@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 04:12:57', '2025-03-23 04:12:57'),
(13, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 04:19:35', '2025-03-23 04:19:35'),
(14, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 04:24:29', '2025-03-23 04:24:29'),
(15, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 04:26:54', '2025-03-23 04:26:54'),
(16, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 04:45:18', '2025-03-23 04:45:18'),
(17, 'Testing', 'riyaben@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 04:51:40', '2025-03-23 04:51:40'),
(18, 'Testing', 'axxit@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 04:56:53', '2025-03-23 04:56:53'),
(19, 'Testing', 'axxit@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 05:01:01', '2025-03-23 05:01:01'),
(20, 'Testing', 'axxit@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 05:02:21', '2025-03-23 05:02:21'),
(21, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 05:03:36', '2025-03-23 05:03:36'),
(22, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 05:04:35', '2025-03-23 05:04:35'),
(23, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 05:07:13', '2025-03-23 05:07:13'),
(24, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 05:12:14', '2025-03-23 05:12:14'),
(25, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 11:38:08', '2025-03-23 11:38:08'),
(26, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 11:38:20', '2025-03-23 11:38:20'),
(27, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 11:53:37', '2025-03-23 11:53:37'),
(28, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:13:38', '2025-03-23 12:13:38'),
(29, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:14:43', '2025-03-23 12:14:43'),
(30, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:22:24', '2025-03-23 12:22:24'),
(31, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:34:31', '2025-03-23 12:34:31'),
(32, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:35:38', '2025-03-23 12:35:38'),
(33, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:37:31', '2025-03-23 12:37:31'),
(34, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:37:53', '2025-03-23 12:37:53'),
(35, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:45:04', '2025-03-23 12:45:04'),
(36, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:47:11', '2025-03-23 12:47:11'),
(37, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:49:31', '2025-03-23 12:49:31'),
(38, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:53:01', '2025-03-23 12:53:01'),
(39, 'Nasta', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:58:02', '2025-03-23 12:58:02'),
(40, 'Nasta', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 12:58:18', '2025-03-23 12:58:18'),
(41, 'Nasta', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 13:05:43', '2025-03-23 13:05:43'),
(42, 'Testing', 'axitpatel3120@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 13:07:11', '2025-03-23 13:07:11'),
(43, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 13:09:40', '2025-03-23 13:09:40'),
(44, 'Testing', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 13:09:59', '2025-03-23 13:09:59'),
(45, 'Nasta', 'axitpatel3120@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 13:10:43', '2025-03-23 13:10:43'),
(46, 'Nasta', 'axxit@gmail.com', '9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 13:14:52', '2025-03-23 13:14:52'),
(47, 'Nasta', 'axitpatel3120@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 13:17:45', '2025-03-23 13:17:45'),
(48, 'Nasta', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-23 13:26:23', '2025-03-23 13:26:23'),
(49, 'Riyaben Patel', 'riyapatel180904@gmail.com', '+9190163 10879', '202 maa krupa app katargam surat Surat Gujarat 395004', '2025-03-24 02:11:49', '2025-03-24 02:11:49'),
(50, 'Siddh', 'siddhkumbhani707@gmail.com', '7016000269', 'surat Surat Gujarat 395004', '2025-03-24 02:14:23', '2025-03-24 02:14:23'),
(51, 'Saumy', 'saumyhirpara3@gmail.comj', '9722897771', 'rail ni patri Surat Gujarat 395004', '2025-03-24 02:18:34', '2025-03-24 02:18:34'),
(52, 'Saumy', 'saumyhirpara3@gmail.comj', '9722897771', 'rail ni patri Surat Gujarat 395004', '2025-03-24 02:18:45', '2025-03-24 02:18:45'),
(53, 'Saumy Hirpara', 'saumyhirpara3@gmail.com', '9722897771', 'rail ni patri Surat Gujarat 395004', '2025-03-24 02:20:34', '2025-03-24 02:20:34'),
(54, 'Saumy Hirpara', 'saumyhirpara3@gmail.com', '9722897771', 'rail ni patri Surat Gujarat 395004', '2025-03-24 02:20:46', '2025-03-24 02:20:46'),
(55, 'Riyaben Patel', 'riyapatel180904@gmail.com', '+91 9825714909', '202 maa krupa app katargam surat Surat Surat 395004', '2025-03-26 13:50:23', '2025-03-26 13:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_chat_scripts`
--

CREATE TABLE `live_chat_scripts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `script_code` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `description`, `price`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Coffee', 'With Whipped Cream', 300.00, 'menus/1742757677-coffee (1).webp', 1, '2025-03-23 13:51:17', '2025-03-23 13:51:17'),
(2, 'Mocha/Caramel', 'With Whipped Cream', 325.00, 'menus/1742757712-Mocha Caramel (1).jpg', 1, '2025-03-23 13:51:53', '2025-03-23 13:51:53'),
(3, 'Salted Caramel', 'With Whipped Cream', 325.00, 'menus/1742757742-Salted Caramel (1).webp', 1, '2025-03-23 13:52:22', '2025-03-23 13:52:22'),
(4, 'Nutella/Biscoff', 'With Whipped Cream', 350.00, 'menus/1742757763-Nutella Biscoff (1).jpg', 1, '2025-03-23 13:52:43', '2025-03-23 13:52:43'),
(5, 'Spicy Cinnamon', 'With Whipped Cream', 325.00, 'menus/1742757883-Spicy Cinnamon (1).jpg', 1, '2025-03-23 13:54:44', '2025-03-23 23:46:24'),
(6, 'Cold Brew Black', 'Beans Are Ground Then Soaked In Room Temperature Water For Extended Period Of Time', 250.00, 'menus/1742757994-Cold Brew Black.webp', 2, '2025-03-23 13:56:34', '2025-03-23 13:56:34'),
(7, 'Thai Coconut Cold Brew Latte', 'Over Night kept Cold Brew Serve With Splash Coconut Milk', 275.00, 'menus/1742758027-Thai Coconut Cold Brew Latte.webp', 2, '2025-03-23 13:57:08', '2025-03-23 13:57:08'),
(9, 'Vegan Cold Brew Latte', 'Slowly Steeped Cold Brew Is Swirled With Essence Of Almond Milk', 275.00, 'menus/1742758061-Vegan Cold Brew Latte.webp', 2, '2025-03-23 13:57:41', '2025-03-23 13:57:41'),
(10, 'Pineapple / Sunrise Cold Brew', 'This Tangy Beverage Made Using Pineapple Juice / Orange Juice And CC signature Cold brew', 275.00, 'menus/1742758093-Pineapple  Sunrise Cold Brew.webp', 2, '2025-03-23 13:58:13', '2025-03-23 13:58:13'),
(11, 'Cold Brew Tonic', 'Mixture Of Ice And Tonic Top With Cc Signature Cold Brew', 275.00, 'menus/1742758150-Cold Brew Tonic.webp', 2, '2025-03-23 13:59:10', '2025-03-23 13:59:10'),
(12, 'Vietnamese Cold Brew Latte', 'Vietnamese Style Inspired Coffee Combines Concentrated Cold Brewed Coffee With Ice & Condensed Milk, For A Cold And Refreshing Drink', 300.00, 'menus/1742758187-Vietnamese Cold Brew Latte.webp', 2, '2025-03-23 13:59:47', '2025-03-23 13:59:47'),
(13, 'Espresso Tonic', 'Baristas Pull The Espresso Shot Directly On Top Of The Tonic Water And Ice Mixture', 350.00, 'menus/1742758209-IMG_5579.JPG', 2, '2025-03-23 14:00:10', '2025-03-23 14:00:10'),
(14, 'Strawberry/Kiwi', 'Ice-cream Blended Smoothies', 250.00, 'menus/1742758273-Strawberry Kiwi Smoothie.webp', 3, '2025-03-23 14:01:14', '2025-03-23 14:01:14'),
(15, 'Mango Smoothie / Lychee', 'Ice-cream Blended Smoothies', 250.00, 'menus/1742758292-Mango Smoothie  Lychee.webp', 3, '2025-03-23 14:01:32', '2025-03-23 14:01:32'),
(16, 'Guava / Blue Berry / Mango Berry', 'Ice-cream Blended Smoothies', 250.00, 'menus/1742758319-Guava Blue Berry Mango Berry.webp', 3, '2025-03-23 14:01:59', '2025-03-23 14:01:59'),
(17, 'Kitkat Shake Chocolate Shake', 'A Shake That Deserves A Break!! Blended Kitkat Shake Glazed Chocolate Sauce, Rimmed With', 300.00, 'menus/1742759004-Kitkat Shake Chocolate Shake.webp', 4, '2025-03-23 14:13:24', '2025-03-23 14:13:24'),
(18, 'Oreo Cookie Shake', 'Crunchy Oreo Cookie, Blended With Milk, Vanilla Ice Cream, Glazed Chocolate Sauce, Rimmed With Chocolate Sauce, Sugar And Coffee Powder, Topped With Oreo Cookie', 300.00, 'menus/1742759576-Oreo Cookie Shake.webp', 4, '2025-03-23 14:22:57', '2025-03-23 14:22:57'),
(19, 'M&m Shake', 'Crushed M&M Blended With Chocolate Ice Cream,Milk & Topped With Whipped Cream & M&M', 350.00, 'menus/1742759628-M&m Shake.jpg', 5, '2025-03-23 14:23:48', '2025-03-23 14:23:48'),
(20, 'Nutella Fantasy Shake', 'Yoy Will Go Nuts On Seeing, Start Having And Left Licking After This Shake', 550.00, 'menus/1742759663-Nutella Fantasy Shake.jpg', 5, '2025-03-23 14:24:23', '2025-03-23 14:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2024_11_30_165534_create_categories_table', 1),
(6, '2024_11_30_165540_create_orders_table', 1),
(7, '2024_11_30_165547_create_order_items_table', 1),
(8, '2024_11_30_165554_create_site_settings_table', 1),
(11, '2024_12_02_221650_create_blogs_table', 1),
(12, '2024_12_03_215710_create_restaurant_addresses_table', 1),
(13, '2024_12_03_215715_create_restaurant_phone_numbers_table', 1),
(14, '2024_12_03_215721_create_restaurant_working_hours_table', 1),
(15, '2024_12_03_223705_rename_restaurant_phonenumbers_table', 1),
(16, '2024_12_03_224414_rename_restaurant_workinghours_table', 1),
(17, '2024_12_05_213918_add_use_whatsapp_to_restaurant_phone_numbers_table', 1),
(18, '2024_12_05_231222_create_social_media_handles_table', 1),
(19, '2024_12_06_182927_create_live_chat_scripts_table', 1),
(20, '2024_12_08_161220_recreate_users_table', 1),
(21, '2024_12_11_212508_create_customers_table', 1),
(22, '2024_12_11_213333_edit_orders_table', 1),
(23, '2024_12_12_212054_rename_price_to_subtotal_in_order_items_table', 1),
(24, '2024_12_12_225521_make_customer_fields_nullable', 1),
(25, '2024_12_13_200343_update_order_items_table', 1),
(26, '2024_12_13_212418_alter_orders_table_add_payment_method_and_order_no', 1),
(27, '2024_12_23_073028_create_order_settings_table', 1),
(28, '2024_12_23_140957_add_fields_to_orders_table', 1),
(29, '2024_12_25_191851_update_site_settings_table', 1),
(30, '2024_12_27_163605_create_testimonies_table', 1),
(31, '2024_12_27_185121_create_terms_and_conditions_table', 1),
(32, '2024_12_27_193555_create_privacy_policies_table', 1),
(33, '2024_12_27_220756_create_table_bookings_table', 1),
(34, '2024_12_29_214054_add_status_online_pay_and_session_id_to_orders_table', 1),
(35, '2025_03_08_070837_modify_role_enum_in_users_table', 2),
(36, '2025_03_11_173428_add_otp_to_users_table', 3),
(37, '2025_03_11_180004_create_reviews_table', 4),
(38, '2025_03_12_155846_create_subscribers_table', 5),
(39, '2024_11_30_165529_create_menus_table', 6),
(40, '2024_11_30_172226_add_category_id_to_menus_table', 7),
(41, '2024_12_02_201208_move_timestamps_to_end_of_menus_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_type` enum('online','instore') NOT NULL,
  `created_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('pending','completed','cancelled') NOT NULL DEFAULT 'pending',
  `status_online_pay` enum('paid','unpaid') DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) NOT NULL,
  `additional_info` varchar(255) DEFAULT NULL,
  `delivery_fee` decimal(8,2) DEFAULT NULL,
  `delivery_distance` varchar(255) DEFAULT NULL,
  `price_per_mile` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `customer_id`, `order_type`, `created_by_user_id`, `updated_by_user_id`, `total_price`, `status`, `status_online_pay`, `session_id`, `payment_method`, `additional_info`, `delivery_fee`, `delivery_distance`, `price_per_mile`, `created_at`, `updated_at`) VALUES
(1, '2641079', 1, 'instore', 1, 1, 500.00, 'completed', NULL, NULL, 'Bank Transfer', 'nothning', NULL, NULL, NULL, '2025-02-25 14:05:19', '2025-02-25 14:05:19'),
(2, '3001096', 2, 'instore', 1, 1, 250.00, 'completed', NULL, NULL, 'Credit / Debit Card', 'nothiing', NULL, NULL, NULL, '2025-02-25 14:06:19', '2025-02-25 14:06:19'),
(3, '1115042', 4, 'online', NULL, NULL, 250.00, 'pending', 'unpaid', NULL, 'COD', 'testing', NULL, NULL, NULL, '2025-03-22 10:35:22', '2025-03-22 10:35:22'),
(4, '2367146', 5, 'online', NULL, NULL, 250.00, 'pending', 'unpaid', NULL, 'COD', 'testing', NULL, NULL, NULL, '2025-03-22 10:35:56', '2025-03-22 10:35:56'),
(5, '4264388', 6, 'online', NULL, NULL, 250.00, 'pending', 'unpaid', NULL, 'COD', 'TESTING', NULL, NULL, NULL, '2025-03-23 02:33:34', '2025-03-23 02:33:34'),
(6, '8032509', 7, 'online', NULL, NULL, 750.00, 'pending', 'paid', NULL, 'COD', 'testing', NULL, NULL, NULL, '2025-03-23 02:43:45', '2025-03-23 02:43:46'),
(7, '8736258', 8, 'online', NULL, NULL, 250.00, 'pending', 'paid', NULL, 'COD', 'testing', NULL, NULL, NULL, '2025-03-23 02:58:30', '2025-03-23 02:58:31'),
(8, '3532712', 9, 'online', NULL, NULL, 500.00, 'pending', 'paid', NULL, 'COD', 'nothing', NULL, NULL, NULL, '2025-03-23 03:36:36', '2025-03-23 03:36:37'),
(9, '9346775', 10, 'online', NULL, NULL, 750.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 03:51:53', '2025-03-23 03:51:53'),
(10, '2894841', 11, 'online', NULL, NULL, 750.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 04:05:53', '2025-03-23 04:05:53'),
(11, '9986992', 12, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testung', NULL, NULL, NULL, '2025-03-23 04:12:57', '2025-03-23 04:12:57'),
(12, '7947168', 13, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 04:19:35', '2025-03-23 04:19:35'),
(13, '5408306', 14, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 04:24:29', '2025-03-23 04:24:29'),
(14, '4945661', 15, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'TESTING', NULL, NULL, NULL, '2025-03-23 04:26:54', '2025-03-23 04:26:54'),
(15, '7035464', 16, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 04:45:18', '2025-03-23 04:45:18'),
(16, '4594668', 17, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testung', NULL, NULL, NULL, '2025-03-23 04:51:40', '2025-03-23 04:51:40'),
(17, '8675256', 18, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 04:56:53', '2025-03-23 04:56:53'),
(18, '1690995', 19, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'nothing', NULL, NULL, NULL, '2025-03-23 05:01:02', '2025-03-23 05:01:02'),
(19, '8500258', 20, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 05:02:21', '2025-03-23 05:02:21'),
(20, '7384149', 21, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'nothing', NULL, NULL, NULL, '2025-03-23 05:03:36', '2025-03-23 05:03:36'),
(21, '6755220', 22, 'online', NULL, NULL, 750.00, 'pending', 'unpaid', NULL, 'UPI', 'nothing', NULL, NULL, NULL, '2025-03-23 05:04:35', '2025-03-23 05:04:35'),
(22, '8747384', 23, 'online', NULL, NULL, 750.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 05:07:13', '2025-03-23 05:07:13'),
(23, '4540943', 24, 'online', NULL, NULL, 750.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 05:12:14', '2025-03-23 05:12:14'),
(24, '5428944', 25, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 11:38:09', '2025-03-23 11:38:09'),
(25, '8154123', 26, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 11:38:20', '2025-03-23 11:38:20'),
(26, '5732022', 27, 'online', NULL, NULL, 500.00, 'pending', 'paid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 11:53:38', '2025-03-23 11:58:29'),
(27, '3563124', 28, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 12:13:38', '2025-03-23 12:13:38'),
(28, '9484093', 29, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 12:14:43', '2025-03-23 12:14:43'),
(29, '5504798', 30, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 12:22:24', '2025-03-23 12:22:24'),
(30, '5476843', 31, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'UPI', 'testing', NULL, NULL, NULL, '2025-03-23 12:34:31', '2025-03-23 12:34:31'),
(31, '3095684', 32, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'stripe', 'testing', NULL, NULL, NULL, '2025-03-23 12:35:38', '2025-03-23 12:35:38'),
(32, '9245008', 33, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'stripe', 'testing', NULL, NULL, NULL, '2025-03-23 12:37:31', '2025-03-23 12:37:31'),
(33, '4248556', 34, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'stripe', 'testing', NULL, NULL, NULL, '2025-03-23 12:37:53', '2025-03-23 12:37:53'),
(34, '7017643', 35, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'stripe', 'testing', NULL, NULL, NULL, '2025-03-23 12:45:04', '2025-03-23 12:45:04'),
(35, '7959652', 36, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'upi', 'testing', NULL, NULL, NULL, '2025-03-23 12:47:11', '2025-03-23 12:47:11'),
(36, '3163669', 37, 'online', NULL, NULL, 500.00, 'pending', 'paid', NULL, 'upi', 'testing', NULL, NULL, NULL, '2025-03-23 12:49:31', '2025-03-23 12:49:59'),
(37, '5363322', 38, 'online', NULL, NULL, 250.00, 'pending', 'unpaid', NULL, 'upi', 'nothing', NULL, NULL, NULL, '2025-03-23 12:53:01', '2025-03-23 12:53:01'),
(38, '4994203', 39, 'online', NULL, NULL, 750.00, 'pending', 'unpaid', NULL, 'upi', 'testing', NULL, NULL, NULL, '2025-03-23 12:58:02', '2025-03-23 12:58:02'),
(39, '9224474', 40, 'online', NULL, NULL, 750.00, 'pending', 'unpaid', NULL, 'upi', 'testing', NULL, NULL, NULL, '2025-03-23 12:58:18', '2025-03-23 12:58:18'),
(40, '3412284', 41, 'online', NULL, NULL, 750.00, 'pending', 'paid', NULL, 'upi', 'testing', NULL, NULL, NULL, '2025-03-23 13:05:43', '2025-03-23 13:05:52'),
(41, '9909100', 42, 'online', NULL, NULL, 750.00, 'pending', 'paid', NULL, 'upi', 'nothing', NULL, NULL, NULL, '2025-03-23 13:07:11', '2025-03-23 13:07:17'),
(42, '6465393', 43, 'online', NULL, NULL, 750.00, 'pending', 'unpaid', NULL, 'stripe', 'testing', NULL, NULL, NULL, '2025-03-23 13:09:40', '2025-03-23 13:09:40'),
(43, '9233283', 44, 'online', NULL, NULL, 750.00, 'pending', 'unpaid', NULL, 'stripe', 'testing', NULL, NULL, NULL, '2025-03-23 13:09:59', '2025-03-23 13:09:59'),
(44, '2920378', 45, 'online', NULL, NULL, 750.00, 'pending', 'paid', NULL, 'upi', 'testing', NULL, NULL, NULL, '2025-03-23 13:10:43', '2025-03-23 13:10:51'),
(45, '3826526', 46, 'online', NULL, NULL, 750.00, 'pending', 'paid', NULL, 'upi', 'nothing', NULL, NULL, NULL, '2025-03-23 13:14:53', '2025-03-23 13:15:00'),
(46, '6611623', 47, 'online', NULL, NULL, 750.00, 'pending', 'paid', NULL, 'upi', 'nothing', NULL, NULL, NULL, '2025-03-23 13:17:45', '2025-03-23 13:17:51'),
(47, '1781577', 48, 'online', NULL, 1, 250.00, 'completed', 'paid', NULL, 'upi', 'testing', NULL, NULL, NULL, '2025-03-23 13:26:23', '2025-03-23 14:33:00'),
(48, '2778653', 49, 'online', NULL, NULL, 350.00, 'pending', 'paid', NULL, 'upi', 'ntg', NULL, NULL, NULL, '2025-03-24 02:11:49', '2025-03-24 02:12:03'),
(49, '8459418', 50, 'online', NULL, NULL, 300.00, 'pending', 'paid', NULL, 'upi', 'kn', NULL, NULL, NULL, '2025-03-24 02:14:23', '2025-03-24 02:14:35'),
(50, '5317811', 51, 'online', NULL, NULL, 350.00, 'pending', 'unpaid', NULL, 'upi', 'kasunai', NULL, NULL, NULL, '2025-03-24 02:18:34', '2025-03-24 02:18:34'),
(51, '5720332', 52, 'online', NULL, NULL, 350.00, 'pending', 'paid', NULL, 'upi', 'kasunai', NULL, NULL, NULL, '2025-03-24 02:18:45', '2025-03-24 02:18:57'),
(52, '8437455', 53, 'online', NULL, NULL, 700.00, 'pending', 'unpaid', NULL, 'upi', 'kasu nai', NULL, NULL, NULL, '2025-03-24 02:20:34', '2025-03-24 02:20:34'),
(53, '5983544', 54, 'online', NULL, NULL, 700.00, 'pending', 'paid', NULL, 'upi', 'kasu nai', NULL, NULL, NULL, '2025-03-24 02:20:46', '2025-03-24 02:20:56'),
(54, '8337930', 55, 'online', NULL, NULL, 500.00, 'pending', 'unpaid', NULL, 'cod', 'surat', NULL, NULL, NULL, '2025-03-26 13:50:24', '2025-03-26 13:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `menu_name`, `order_id`, `quantity`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 'Pauva', 1, 2, 500.00, '2025-02-25 14:05:19', '2025-02-25 14:05:19'),
(2, 'Pauva', 2, 1, 250.00, '2025-02-25 14:06:19', '2025-02-25 14:06:19'),
(3, 'Pauva', 3, 1, 250.00, '2025-03-22 10:35:22', '2025-03-22 10:35:22'),
(4, 'Pauva', 4, 1, 250.00, '2025-03-22 10:35:57', '2025-03-22 10:35:57'),
(5, 'Pauva', 5, 1, 250.00, '2025-03-23 02:33:34', '2025-03-23 02:33:34'),
(6, 'Pauva', 6, 1, 250.00, '2025-03-23 02:43:46', '2025-03-23 02:43:46'),
(7, 'Pauva', 6, 2, 500.00, '2025-03-23 02:43:46', '2025-03-23 02:43:46'),
(8, 'Pauva', 7, 1, 250.00, '2025-03-23 02:58:30', '2025-03-23 02:58:30'),
(9, 'Pauva', 8, 2, 500.00, '2025-03-23 03:36:36', '2025-03-23 03:36:36'),
(10, 'Pauva', 9, 1, 250.00, '2025-03-23 03:51:53', '2025-03-23 03:51:53'),
(11, 'Pauva', 9, 2, 500.00, '2025-03-23 03:51:53', '2025-03-23 03:51:53'),
(12, 'Pauva', 10, 1, 250.00, '2025-03-23 04:05:53', '2025-03-23 04:05:53'),
(13, 'Pauva', 10, 2, 500.00, '2025-03-23 04:05:53', '2025-03-23 04:05:53'),
(14, 'Pauva', 11, 1, 250.00, '2025-03-23 04:12:57', '2025-03-23 04:12:57'),
(15, 'Pauva', 11, 1, 250.00, '2025-03-23 04:12:57', '2025-03-23 04:12:57'),
(16, 'Pauva', 12, 1, 250.00, '2025-03-23 04:19:35', '2025-03-23 04:19:35'),
(17, 'Pauva', 12, 1, 250.00, '2025-03-23 04:19:35', '2025-03-23 04:19:35'),
(18, 'Pauva', 13, 1, 250.00, '2025-03-23 04:24:29', '2025-03-23 04:24:29'),
(19, 'Pauva', 13, 1, 250.00, '2025-03-23 04:24:29', '2025-03-23 04:24:29'),
(20, 'Pauva', 14, 1, 250.00, '2025-03-23 04:26:54', '2025-03-23 04:26:54'),
(21, 'Pauva', 14, 1, 250.00, '2025-03-23 04:26:54', '2025-03-23 04:26:54'),
(22, 'Pauva', 15, 1, 250.00, '2025-03-23 04:45:18', '2025-03-23 04:45:18'),
(23, 'Pauva', 15, 1, 250.00, '2025-03-23 04:45:18', '2025-03-23 04:45:18'),
(24, 'Pauva', 16, 1, 250.00, '2025-03-23 04:51:40', '2025-03-23 04:51:40'),
(25, 'Pauva', 16, 1, 250.00, '2025-03-23 04:51:40', '2025-03-23 04:51:40'),
(26, 'Pauva', 17, 1, 250.00, '2025-03-23 04:56:53', '2025-03-23 04:56:53'),
(27, 'Pauva', 17, 1, 250.00, '2025-03-23 04:56:53', '2025-03-23 04:56:53'),
(28, 'Pauva', 18, 1, 250.00, '2025-03-23 05:01:02', '2025-03-23 05:01:02'),
(29, 'Pauva', 18, 1, 250.00, '2025-03-23 05:01:02', '2025-03-23 05:01:02'),
(30, 'Pauva', 19, 1, 250.00, '2025-03-23 05:02:21', '2025-03-23 05:02:21'),
(31, 'Pauva', 19, 1, 250.00, '2025-03-23 05:02:21', '2025-03-23 05:02:21'),
(32, 'Pauva', 20, 1, 250.00, '2025-03-23 05:03:36', '2025-03-23 05:03:36'),
(33, 'Pauva', 20, 1, 250.00, '2025-03-23 05:03:36', '2025-03-23 05:03:36'),
(34, 'Pauva', 21, 1, 250.00, '2025-03-23 05:04:35', '2025-03-23 05:04:35'),
(35, 'Pauva', 21, 2, 500.00, '2025-03-23 05:04:36', '2025-03-23 05:04:36'),
(36, 'Pauva', 22, 1, 250.00, '2025-03-23 05:07:13', '2025-03-23 05:07:13'),
(37, 'Pauva', 22, 2, 500.00, '2025-03-23 05:07:13', '2025-03-23 05:07:13'),
(38, 'Pauva', 23, 1, 250.00, '2025-03-23 05:12:14', '2025-03-23 05:12:14'),
(39, 'Pauva', 23, 2, 500.00, '2025-03-23 05:12:14', '2025-03-23 05:12:14'),
(40, 'Pauva', 24, 2, 500.00, '2025-03-23 11:38:09', '2025-03-23 11:38:09'),
(41, 'Pauva', 25, 2, 500.00, '2025-03-23 11:38:20', '2025-03-23 11:38:20'),
(42, 'Pauva', 26, 2, 500.00, '2025-03-23 11:53:38', '2025-03-23 11:53:38'),
(43, 'Pauva', 27, 2, 500.00, '2025-03-23 12:13:38', '2025-03-23 12:13:38'),
(44, 'Pauva', 28, 2, 500.00, '2025-03-23 12:14:43', '2025-03-23 12:14:43'),
(45, 'Pauva', 29, 2, 500.00, '2025-03-23 12:22:25', '2025-03-23 12:22:25'),
(46, 'Pauva', 30, 2, 500.00, '2025-03-23 12:34:32', '2025-03-23 12:34:32'),
(47, 'Pauva', 31, 2, 500.00, '2025-03-23 12:35:38', '2025-03-23 12:35:38'),
(48, 'Pauva', 32, 2, 500.00, '2025-03-23 12:37:32', '2025-03-23 12:37:32'),
(49, 'Pauva', 33, 2, 500.00, '2025-03-23 12:37:53', '2025-03-23 12:37:53'),
(50, 'Pauva', 34, 2, 500.00, '2025-03-23 12:45:04', '2025-03-23 12:45:04'),
(51, 'Pauva', 35, 2, 500.00, '2025-03-23 12:47:11', '2025-03-23 12:47:11'),
(52, 'Pauva', 36, 2, 500.00, '2025-03-23 12:49:31', '2025-03-23 12:49:31'),
(53, 'Pauva', 37, 1, 250.00, '2025-03-23 12:53:01', '2025-03-23 12:53:01'),
(54, 'Pauva', 38, 3, 750.00, '2025-03-23 12:58:02', '2025-03-23 12:58:02'),
(55, 'Pauva', 39, 3, 750.00, '2025-03-23 12:58:18', '2025-03-23 12:58:18'),
(56, 'Pauva', 40, 3, 750.00, '2025-03-23 13:05:43', '2025-03-23 13:05:43'),
(57, 'Pauva', 41, 3, 750.00, '2025-03-23 13:07:11', '2025-03-23 13:07:11'),
(58, 'Pauva', 42, 3, 750.00, '2025-03-23 13:09:41', '2025-03-23 13:09:41'),
(59, 'Pauva', 43, 3, 750.00, '2025-03-23 13:09:59', '2025-03-23 13:09:59'),
(60, 'Pauva', 44, 3, 750.00, '2025-03-23 13:10:43', '2025-03-23 13:10:43'),
(61, 'Pauva', 45, 3, 750.00, '2025-03-23 13:14:53', '2025-03-23 13:14:53'),
(62, 'Pauva', 46, 3, 750.00, '2025-03-23 13:17:45', '2025-03-23 13:17:45'),
(63, 'Pauva', 47, 1, 250.00, '2025-03-23 13:26:24', '2025-03-23 13:26:24'),
(64, 'Espresso Tonic', 48, 1, 350.00, '2025-03-24 02:11:49', '2025-03-24 02:11:49'),
(65, 'Coffee', 49, 1, 300.00, '2025-03-24 02:14:23', '2025-03-24 02:14:23'),
(66, 'M&m Shake', 50, 1, 350.00, '2025-03-24 02:18:34', '2025-03-24 02:18:34'),
(67, 'M&m Shake', 51, 1, 350.00, '2025-03-24 02:18:45', '2025-03-24 02:18:45'),
(68, 'M&m Shake', 52, 2, 700.00, '2025-03-24 02:20:34', '2025-03-24 02:20:34'),
(69, 'M&m Shake', 53, 2, 700.00, '2025-03-24 02:20:46', '2025-03-24 02:20:46'),
(70, 'Cold Brew Black', 54, 2, 500.00, '2025-03-26 13:50:24', '2025-03-26 13:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_settings`
--

CREATE TABLE `order_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price_per_mile` decimal(8,2) NOT NULL,
  `distance_limit_in_miles` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_settings`
--

INSERT INTO `order_settings` (`id`, `price_per_mile`, `distance_limit_in_miles`, `created_at`, `updated_at`) VALUES
(1, 250.00, 250000000, '2025-03-02 14:05:45', '2025-03-02 14:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<strong>What type of data do you collect?</strong> (e.g., name, email, phone number, payment information, location data, etc.)<strong>How do you collect data?</strong> (e.g., through website forms, app usage, cookies, third-party services, etc.)<strong>What do you do with the collected data?</strong> (e.g., order processing, marketing, customer support, analytics, etc.)<strong>Do you share data with third parties?</strong> (e.g., payment processors, shipping partners, marketing services, etc.)<strong>Do you have users from specific countries or regions?</strong> (to comply with local privacy laws like GDPR or CCPA)<strong>Contact information</strong> for privacy-related inquiries.', '2025-02-25 13:36:39', '2025-02-25 13:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_addresses`
--

CREATE TABLE `restaurant_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_addresses`
--

INSERT INTO `restaurant_addresses` (`id`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Prithviraj Rd, C Scheme, Ashok Nagar, Jaipur, Rajasthan 302005', '2025-03-02 14:20:56', '2025-03-23 14:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_phone_numbers`
--

CREATE TABLE `restaurant_phone_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `use_whatsapp` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_phone_numbers`
--

INSERT INTO `restaurant_phone_numbers` (`id`, `phone_number`, `use_whatsapp`, `created_at`, `updated_at`) VALUES
(1, '+919016310879', 0, '2025-03-08 01:46:21', '2025-03-23 14:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_working_hours`
--

CREATE TABLE `restaurant_working_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `working_hours` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_working_hours`
--

INSERT INTO `restaurant_working_hours` (`id`, `working_hours`, `created_at`, `updated_at`) VALUES
(1, 'Mon to Sat 12-12', '2025-03-02 14:04:14', '2025-03-02 14:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `ordered_food` varchar(255) NOT NULL,
  `favorite_food` varchar(255) NOT NULL,
  `food_rating` int(11) NOT NULL,
  `restaurant_rating` int(11) NOT NULL,
  `staff_rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `customer_name`, `ordered_food`, `favorite_food`, `food_rating`, `restaurant_rating`, `staff_rating`, `created_at`, `updated_at`) VALUES
(1, 'testing', 'nothing', 'nothing', 5, 5, 5, '2025-03-11 13:05:13', '2025-03-11 13:05:13'),
(2, '5', '5', '5', 5, 5, 5, '2025-03-11 13:27:46', '2025-03-11 13:27:46'),
(3, 'axit', 'nothing', 'nothing', 5, 5, 5, '2025-03-11 13:28:57', '2025-03-11 13:28:57'),
(4, 'nothing', 'nothing', 'nothing', 5, 5, 5, '2025-03-23 02:15:09', '2025-03-23 02:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('llVwT23Mtm6IcE6VId7aNlDKzATGrJo0yYMliBq5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWjlMQWd1OHRRcHd0UUthM0M5VWwzSjFFdWt4OUVGaEs1R3phejNpVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vZmZlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjg6ImN1c3RvbWVyIjthOjE6e2k6MTI7YTo1OntzOjI6ImlkIjtzOjI6IjEyIjtzOjQ6Im5hbWUiO3M6MjY6IlZpZXRuYW1lc2UgQ29sZCBCcmV3IExhdHRlIjtzOjU6InByaWNlIjtzOjY6IjMwMC4wMCI7czo3OiJpbWdfc3JjIjtzOjc4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3RvcmFnZS9tZW51cy8xNzQyNzU4MTg3LVZpZXRuYW1lc2UgQ29sZCBCcmV3IExhdHRlLndlYnAiO3M6ODoicXVhbnRpdHkiO3M6MToiMiI7fX1zOjU6InN0YXRlIjtzOjQwOiJTaVQ1cEtYTWdqVUJNOWEwbGlCYzNkZk93b0djck9QbmYzYkRmZnZ6Ijt9', 1743016767),
('zyqNkHtxS6M6u6oiKvhZzKmKzHjUw4eUgXj5YZlO', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMzl0ZDRvMGRWRFBRMzRrMWo0Ym1RREx0M1J3Tk1jM1ZxaFU1VENnQSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNDoicGF5bWVudF9vcHRpb24iO3M6MzoiY29kIjt9', 1743016874);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `currency_code` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `country`, `currency_symbol`, `currency_code`, `created_at`, `updated_at`) VALUES
(1, 'India', '&#8377;', 'INR', '2025-02-24 07:14:34', '2025-03-08 02:00:09'),
(2, 'India', '&#8377;', 'INR', '2025-02-24 07:14:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media_handles`
--

CREATE TABLE `social_media_handles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `handle` varchar(255) NOT NULL,
  `social_media` enum('facebook','instagram','youtube','tiktok') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'pauva', 'axitpatel3120@gmail.com', '2025-03-12 11:09:49', '2025-03-12 11:09:49'),
(2, 'pauva', 'ram@gmail.com', '2025-03-12 11:34:29', '2025-03-12 11:34:29'),
(3, 'pauva', 'riya@gmail.com', '2025-03-12 12:46:48', '2025-03-12 12:46:48'),
(4, 'admin', 'admin@gmail.com', '2025-03-12 12:49:46', '2025-03-12 12:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `table_bookings`
--

CREATE TABLE `table_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `persons` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_bookings`
--

INSERT INTO `table_bookings` (`id`, `name`, `email`, `phone`, `date`, `time`, `persons`, `created_at`, `updated_at`) VALUES
(1, 'nasta', 'axitpatel3120@gmail.com', '9825714909', '2025-02-26', '2:50', 250, '2025-02-25 14:07:49', '2025-02-25 14:07:49'),
(2, 'Nasta', 'riyabenpatel@gmail.com', '9825714909', '2025-02-05', '1:19 AM', 8, '2025-02-25 14:19:53', '2025-02-25 14:19:53'),
(3, 'Admin', 'vgu24ons2bca0208@onlinevgu.com', '47852963214', '2025-03-03', '11:52 PM', 7, '2025-03-12 12:52:31', '2025-03-12 12:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<p><strong style=\"font-size:0.875rem;\">Terms and Conditions for Uncle Coffee Restaurant Management System</strong></p><p><strong>Effective Date: 2 January 2025</strong></p><p>Welcome to the Uncle Coffee Restaurant Management System (\"System\"). By accessing or using our system, you agree to comply with and be bound by the following Terms and Conditions. If you do not agree with these terms, please do not use the System.</p><p><strong>1. General</strong></p><p>These Terms and Conditions govern the use of the Uncle Coffee Restaurant Management System, which provides services related to reservations, order placement, payment processing, and other related functionalities. We reserve the right to modify, update, or change these Terms and Conditions at any time, and any such changes will be effective immediately upon posting on this page.</p><p><strong>2. User Registration and Account</strong></p><p>To use certain features of the System, you may be required to register for an account. You agree to provide accurate, current, and complete information during the registration process and to keep this information updated. You are responsible for maintaining the confidentiality of your account credentials, and you agree to notify us immediately of any unauthorized use of your account.</p><p><strong>3. Reservations and Orders</strong></p><ul>\r\n<li><strong>Reservations</strong>: By making a reservation, you confirm that you are authorized to book for the specified party size and time. Reservations are subject to availability, and we may modify or cancel a reservation due to unforeseen circumstances.</li>\r\n<li><strong>Orders</strong>: When placing an order through the System, you agree to provide accurate details of your order, including any special dietary needs or allergies. All orders are subject to availability of the menu items.</li>\r\n<li><strong>Payment</strong>: Payment for orders and reservations may be processed through our System. You agree to provide valid payment details and authorize us to process payments for services rendered.</li>\r\n</ul><p><strong>4. Use of the System</strong></p><p>You agree to use the Uncle Coffee Restaurant Management System only for lawful purposes and in accordance with these Terms and Conditions. You may not use the System:</p><ul>\r\n<li>To place fraudulent or unauthorized orders.</li>\r\n<li>To violate the rights of others, including intellectual property rights.</li>\r\n<li>To engage in any form of spamming, hacking, or other illegal activities.</li>\r\n</ul><p><strong>5. Cancellation and Refunds</strong></p><ul>\r\n<li><strong>Reservation Cancellations</strong>: You may cancel or modify your reservation according to the cancellation policy specified by the restaurant. Failure to cancel in advance may result in a cancellation fee.</li>\r\n<li><strong>Order Cancellations</strong>: Orders may be modified or canceled depending on the restaurant’s policy. Once an order is completed and payment is processed, cancellations may not be possible.</li>\r\n<li><strong>Refunds</strong>: In the event of an error or issue with your order, we will assess the situation and, if applicable, provide a refund according to our refund policy.</li>\r\n</ul><p><strong>6. Intellectual Property</strong></p><p>All content, designs, logos, text, and software used in the [Restaurant Name] Restaurant Management System are the property of Uncle Coffee or its licensors and are protected by copyright, trademark, and other intellectual property laws. You may not use, copy, or distribute any materials from the System without prior written consent.</p><p><strong>7. Privacy and Data Protection</strong></p><p>Your use of the System is also governed by our Privacy Policy, which describes how we collect, use, and protect your personal data. By using the System, you agree to the terms of our Privacy Policy.</p><p><strong>8. Limitation of Liability</strong></p><p>Uncle Coffee will not be liable for any direct, indirect, incidental, special, or consequential damages resulting from your use or inability to use the System, including any damages related to your reservations, orders, or payments, except where required by law.</p><p><strong>9. Indemnification</strong></p><p>You agree to indemnify, defend, and hold harmless Uncle Coffee and its employees, agents, and affiliates from any claims, losses, damages, or expenses arising from your use of the System, violation of these Terms and Conditions, or infringement of any third-party rights.</p><p><strong>10. Third-Party Services</strong></p><p>The System may contain links to third-party websites or services that are not owned or controlled by Uncle Coffee. We are not responsible for the content, privacy practices, or services of any third-party websites or services.</p><p><strong>11. Contact Us</strong></p><p>If you have any questions about these Terms and Conditions, please contact us at:</p><ul>\r\n<li>Email: riyapatel180904@gmail.com</li>\r\n<li>Phone: 9016310879</li>\r\n<li>Address: Prithviraj Rd, C Scheme, Ashok Nagar, Jaipur, Rajasthan 302005</li>\r\n</ul><p><br /></p>', '2025-03-23 11:58:32', '2025-03-23 11:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `testimonies`
--

CREATE TABLE `testimonies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonies`
--

INSERT INTO `testimonies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Riya Patel', 'The Uncle Coffee Restaurant Management System has significantly improved how we manage our day-to-day operations. It’s incredibly easy to use, and tasks like handling reservations, processing orders, and managing payments have become much more efficient. We’ve noticed a reduction in errors, and our customers appreciate the faster, more seamless service. It’s definitely made a positive impact on both our staff’s workflow and overall customer satisfaction.', '2025-03-23 12:09:59', '2025-03-23 12:09:59'),
(2, 'Axit Patel', 'Implementing the Uncle Coffee Restaurant Management System has truly transformed our restaurant operations. From simplifying reservations to streamlining order management, everything is now more organized and efficient. The system\'s user-friendly interface makes it easy for our team to get up to speed quickly. Our ability to provide timely service has improved, and it’s become an indispensable tool for handling peak hours and busy days.', '2025-03-23 12:11:41', '2025-03-23 12:11:41'),
(3, 'Darshan Ramani', 'Since we started using the Uncle Coffee Restaurant Management System, we’ve seen a noticeable improvement in our customer satisfaction levels. The system allows us to process orders and reservations faster, which means quicker service for our guests. We can now manage high-volume periods without issues, and our customers have responded positively to the enhanced efficiency. It’s been an excellent investment in both service quality and operational ease.', '2025-03-23 12:13:36', '2025-03-23 12:13:36'),
(4, 'Saumy Hirpara', 'The Uncle Coffee Restaurant Management System is one of the best investments we’ve made for our business. It’s incredibly user-friendly, and our staff was able to get comfortable with it very quickly. The system allows us to efficiently manage reservations, keep track of orders, and even streamline the billing process. It’s been a huge time-saver for our team, and the increased organization has made a noticeable difference in our daily operations.', '2025-03-23 12:14:27', '2025-03-23 12:14:27'),
(5, 'Siddh Kumbhani', 'We’ve been using the Uncle Coffee Restaurant Management System for several months now, and it has been a fantastic experience. Not only is the system reliable and packed with features that improve our workflow, but the support team is always available and quick to assist with any questions. The system runs smoothly, allowing us to focus more on delivering great service to our customers. It’s made managing our restaurant operations much simpler and more efficient.', '2025-03-23 12:15:06', '2025-03-23 12:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','global_admin','user') NOT NULL DEFAULT 'admin',
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `notice` text DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `activation_token` varchar(60) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `two_factor_auth` tinyint(4) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `email`, `password`, `role`, `status`, `notice`, `phone_number`, `address`, `profile_picture`, `activation_token`, `remember_token`, `two_factor_auth`, `email_verified_at`, `created_at`, `updated_at`, `otp`, `otp_expires_at`) VALUES
(1, 'Riya', 'D', 'Patel', 'riya@gmail.com', '$2y$12$zrKVThxyqUie2PrZxy3LauppPgFSJt5YrNo.oHwTkPfKhtI4408r.', 'global_admin', 1, NULL, '+919825714909', 'Surat', 'fFoeobCTOOHQEOn4z54KK1roy00VEfhQJf2zx0I5.jpg', NULL, NULL, 0, '2025-02-24 07:18:01', '2025-02-24 07:18:01', '2025-03-23 14:31:02', NULL, NULL),
(2, 'Riya Ben', 'Dhrupal Kumar', 'Patel', 'riyaben@gmail.com', '$2y$12$FaojPTtt8RNE2NPGyEuvp.t/.4MuHEBczTSMS3C5GBUI7tj.1PgZm', 'admin', 0, 'change_password_to_activate_account', NULL, NULL, NULL, 'LmV8PKFDThPwOypIVfxAfTDLhafMiD6ASK8m5UVZcO7Vljmq0OONiaXJd3zE', NULL, 0, NULL, '2025-02-25 14:20:46', '2025-02-25 14:24:20', NULL, NULL),
(3, 'Riya Ben', 'Dhrupal Bhai', 'Patel', 'riyapatel8233@gmail.com', '$2y$12$y2eMdC3YR7.K8A1ufrKrjOHyy8gMDtR49TxyxNkGwwp9LXet/qMqy', 'admin', 0, 'change_password_to_activate_account', NULL, NULL, NULL, 'hkwlHtJeKKLZYE4TzTxgz5NZ9FgVYuXE2LTerHB8E5BasK9YLgoJQBwJLEhJ', NULL, 0, NULL, '2025-02-25 14:41:25', '2025-02-25 14:43:42', NULL, NULL),
(4, 'vgu24ons2bca0208', NULL, 'vgu24ons2bca0208', 'vgu24ons2bca0208@onlinevgu.com', '$2y$12$dJwTumKuD08HwJzXmZKbUuFv0FM.zlsYRiCvQHgCla7K/oi8c0ge6', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-09 10:24:37', '2025-03-09 10:24:37', NULL, NULL),
(6, 'axit patel', NULL, 'axit patel', 'axitpatel3120@gmail.com', '$2y$12$ynXIf3esUjDr9D4enP.eWeJIr4qjRbBorRGWlg5.SvH6azlrIdPC.', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-11 12:01:49', '2025-03-11 12:01:49', NULL, NULL),
(7, 'test', NULL, 'test', 'test@gmail.com', '$2y$12$wuvF97nye2/3ec519GUIfOVjlPWvpI5Dmt5ZdPn3quzshRzgoR6OO', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-11 12:16:48', '2025-03-11 12:16:48', NULL, NULL),
(9, 'nojis32705', NULL, 'nojis32705', 'nojis32705@dwriters.com', '$2y$12$/HpJ2AOdKxFmvTad2M.lOeJx5LkzDfs.0R3tDfQxchXY8ue1Y2LAK', 'user', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-11 12:22:26', '2025-03-11 12:24:13', NULL, NULL),
(10, 'axxit', NULL, 'axxit', 'axxit@gmail.com', '$2y$12$zrKVThxyqUie2PrZxy3LauppPgFSJt5YrNo.oHwTkPfKhtI4408r.', 'user', 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-22 10:15:15', '2025-03-22 10:17:06', NULL, NULL),
(11, 'hdkabra96', NULL, 'hdkabra96', 'hdkabra96@gmail.com', '$2y$12$/HzrZSIzfZuM/l8FsGOLfeKonUAMUVXTR2j5dYPBtcZY/dqwSWhje', 'user', 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2025-03-24 04:00:43', '2025-03-24 04:00:43', '445813', '2025-03-24 04:05:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_chat_scripts`
--
ALTER TABLE `live_chat_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_created_by_user_id_foreign` (`created_by_user_id`),
  ADD KEY `orders_updated_by_user_id_foreign` (`updated_by_user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `order_settings`
--
ALTER TABLE `order_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_addresses`
--
ALTER TABLE `restaurant_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_phone_numbers`
--
ALTER TABLE `restaurant_phone_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant_working_hours`
--
ALTER TABLE `restaurant_working_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media_handles`
--
ALTER TABLE `social_media_handles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_unique` (`email`);

--
-- Indexes for table `table_bookings`
--
ALTER TABLE `table_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonies`
--
ALTER TABLE `testimonies`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_chat_scripts`
--
ALTER TABLE `live_chat_scripts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `order_settings`
--
ALTER TABLE `order_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_addresses`
--
ALTER TABLE `restaurant_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_phone_numbers`
--
ALTER TABLE `restaurant_phone_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `restaurant_working_hours`
--
ALTER TABLE `restaurant_working_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media_handles`
--
ALTER TABLE `social_media_handles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_bookings`
--
ALTER TABLE `table_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonies`
--
ALTER TABLE `testimonies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_created_by_user_id_foreign` FOREIGN KEY (`created_by_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_updated_by_user_id_foreign` FOREIGN KEY (`updated_by_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
