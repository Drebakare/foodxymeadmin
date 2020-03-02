-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 07:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodxyme`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `idaddress` int(100) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `region_id` int(11) NOT NULL,
  `complete_address` text NOT NULL,
  `delivery_instruction` text DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`idaddress`, `user_id`, `region_id`, `complete_address`, `delivery_instruction`, `active`, `created_at`, `updated_at`) VALUES
(1, 3, 15, 'Obafemi Awolowo University, Nigeria', 'adfasfs', 1, '2020-02-28 11:48:03', '2020-02-28 11:48:03'),
(2, 6, 1, 'Obafemi Awolowo University, Nigeria', 'Fajuyi', 1, '2020-02-28 13:47:11', '2020-02-28 13:47:11'),
(3, 2, 1, 'Obafemi Awolowo University, Nigeria', 'fads', 1, '2020-02-28 13:51:14', '2020-02-28 13:51:14'),
(4, 1, 1, 'OAU', 'computer', 1, '2020-02-29 17:07:32', '2020-02-29 17:07:32'),
(5, 9, 15, 'I yana cele', 'get to I ya na sele', 1, '2020-02-29 21:28:07', '2020-02-29 21:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `api_authentication`
--

CREATE TABLE `api_authentication` (
  `idapi` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_authentication`
--

INSERT INTO `api_authentication` (`idapi`, `name`, `token`, `created_at`, `updated_at`) VALUES
(1, 'token', 'HdFDjada4da', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appstockcategory`
--

CREATE TABLE `appstockcategory` (
  `idappstockcategory` int(11) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appstockcategory`
--

INSERT INTO `appstockcategory` (`idappstockcategory`, `name`) VALUES
(1, 'Main Meal'),
(2, 'Swallow'),
(3, 'Soup'),
(4, 'Standard Meal'),
(5, 'Protein'),
(6, 'Extras'),
(7, 'Drinks'),
(8, 'Snacks'),
(9, 'Pizza'),
(10, 'Ice Cream'),
(11, 'Meal Supplements');

-- --------------------------------------------------------

--
-- Table structure for table `audit_trails`
--

CREATE TABLE `audit_trails` (
  `id` int(10) UNSIGNED NOT NULL,
  `task` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_trails`
--

INSERT INTO `audit_trails` (`id`, `task`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ayobami Babalola just created a user account with FoodXyme', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bankcodes`
--

CREATE TABLE `bankcodes` (
  `idbankcodes` int(11) NOT NULL,
  `bank_codes` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bankcodes`
--

INSERT INTO `bankcodes` (`idbankcodes`, `bank_codes`, `bank_name`) VALUES
(1, '058', 'GTBank PLC'),
(2, '044', 'Access Bank'),
(3, '033', 'United Bank for Africa'),
(4, '232', 'Sterling Bank'),
(5, '035', 'Wema Bank'),
(6, '221', 'Stanbic IBTC Bank'),
(7, '050', 'Ecobank Plc'),
(8, '011', 'First Bank of Nigeria'),
(9, '032', 'Union Bank'),
(10, '057', 'Zenith Bank');

-- --------------------------------------------------------

--
-- Table structure for table `bankdetails`
--

CREATE TABLE `bankdetails` (
  `idbankdetails` int(40) NOT NULL,
  `vendor_id` int(40) UNSIGNED NOT NULL,
  `account_number` varchar(199) NOT NULL,
  `bank_code` varchar(40) NOT NULL,
  `beneficiary_name` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bikemen`
--

CREATE TABLE `bikemen` (
  `idbikemen` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `region_id` int(10) UNSIGNED NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `home_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bikemenreviews`
--

CREATE TABLE `bikemenreviews` (
  `idbikemenreviews` int(10) UNSIGNED NOT NULL,
  `bike_man_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cartsummaries`
--

CREATE TABLE `cartsummaries` (
  `idcartsummaries` int(10) UNSIGNED NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `idcartdetails` int(10) UNSIGNED NOT NULL,
  `cart_summaries_id` int(10) UNSIGNED NOT NULL,
  `order_summaries_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `idcategories` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`idcategories`, `name`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Restaurants', 'Get your food from any restaurant you wish', 'https://user-images.githubusercontent.com/17219534/71551256-43cc5100-29e3-11ea-9b79-199c4f622134.png', NULL, NULL),
(2, 'Supermarket', 'Groceries and everyday essentials', 'https://user-images.githubusercontent.com/17219534/71551277-a6255180-29e3-11ea-8944-948f8649eafc.png', NULL, NULL),
(3, 'Bar', 'Get any alcoholic beverages and non-alcoholic drinks', 'https://user-images.githubusercontent.com/17219534/71551251-213a3800-29e3-11ea-9a55-eca7cabd10f8.png', NULL, NULL),
(4, 'Pharmacy', 'Medication and personal care', 'https://user-images.githubusercontent.com/17219534/71551269-7118ff00-29e3-11ea-8f39-3dfb798556df.png', NULL, NULL),
(5, 'Logistics', 'Movement of things from any location to the point of consumption', 'https://user-images.githubusercontent.com/17219534/71551278-a7567e80-29e3-11ea-92dc-3087f4487c3b.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `idcities` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`idcities`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ile-Ife', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `idcredits` int(40) NOT NULL,
  `user_id` int(40) UNSIGNED NOT NULL,
  `amount` int(40) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `idcustomers` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` int(200) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`idcustomers`, `name`, `address`, `phone_number`, `user_id`, `amount`) VALUES
(1, 'Ayobami Babalola', 'Obafemi Awolowo University, Nigeria', '08135373563', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `idfavourites` int(40) NOT NULL,
  `customer_id` int(40) UNSIGNED NOT NULL,
  `vendor_id` int(40) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `idgeneralsettings` int(40) NOT NULL,
  `service_charge` int(40) NOT NULL,
  `minAmount` int(40) NOT NULL,
  `maxAmount` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`idgeneralsettings`, `service_charge`, `minAmount`, `maxAmount`) VALUES
(1, 4, 0, 1000),
(2, 3, 1001, 10000),
(3, 2, 10001, 999999999);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_24_134405_create_roles_table', 1),
(9, '2019_12_25_000000_create_users_table', 1),
(10, '2019_12_26_000000_create_categories_table', 1),
(11, '2019_12_26_000000_create_cities_table', 1),
(12, '2019_12_26_000001_create_regions_table', 1),
(13, '2019_12_26_130351_create_vendors_table', 1),
(14, '2019_12_26_130445_create_customers_table', 1),
(15, '2019_12_26_130658_create_bikemen_table', 1),
(16, '2019_12_26_142704_create_withdrawals_table', 1),
(17, '2019_12_26_143249_create_subregions_table', 1),
(18, '2019_12_26_143510_create_bikemenreviews_table', 1),
(19, '2019_12_26_144107_create_vendorsreviews_table', 1),
(20, '2019_12_26_144438_create_pricebreakdowns_table', 1),
(21, '2019_12_26_144734_create_audit_trails_table', 1),
(22, '2019_12_26_151313_create_ordersummaries_table', 1),
(23, '2019_12_26_155252_create_cart_summary_table', 1),
(24, '2019_12_26_155346_create_cart_details_table', 1),
(25, '2019_12_26_155732_create_trackings_table', 1),
(26, '2019_12_26_159110_create_stockcategories_table', 1),
(27, '2019_12_26_160204_create_transactions_table', 1),
(28, '2019_12_26_160313_create_stockdetails_table', 1),
(29, '2019_12_26_160413_create_orderdetails_table', 1),
(30, '2019_12_27_095159_create_api_authentication_table', 1),
(31, '2019_12_27_174913_change_open_at_to_vendors_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `idnewsletter` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`idnewsletter`, `email`, `created_at`, `updated_at`) VALUES
(1, 'sdas@dadss.com', '2020-02-28 21:40:12', '2020-02-28 21:40:12'),
(2, 'ballla@fdj.com', '2020-02-29 22:53:06', '2020-02-29 22:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('27a173c61564078a375837eef69ada1081221dff914eb23c9b5909c03f5d963a3395cb1d816c9b6d', 3, 1, 'authToken', '[]', 0, '2020-01-07 19:01:36', '2020-01-07 19:01:36', '2021-01-07 20:01:36'),
('36324f992be0c8165fa25f13edd44047ce51b6e3c779c2b7e06ce27c779f6665062fbda109042287', 4, 1, 'authToken', '[]', 0, '2020-01-07 19:04:07', '2020-01-07 19:04:07', '2021-01-07 20:04:07'),
('7e1249f89b5d9f6a44630422594e50fc804810d3fef3c91493f17e96eae284178462d2909e28eeef', 2, 1, 'authToken', '[]', 0, '2020-01-07 19:00:04', '2020-01-07 19:00:04', '2021-01-07 20:00:04'),
('a48168898ad0a44396340d98a0ef22a0062402976a8edadf9c47204097913a8d3e5cfcc0ff68d98a', 7, 1, 'authToken', '[]', 0, '2020-01-07 19:07:23', '2020-01-07 19:07:23', '2021-01-07 20:07:23'),
('a923a1bd57b76668fd230691b55b87885a2addf2ad2f97b2d046ff8d71020129be32ea265d2c8b3f', 5, 1, 'authToken', '[]', 0, '2020-01-07 19:04:49', '2020-01-07 19:04:49', '2021-01-07 20:04:49'),
('fb0502dc3ef07c116d11fbf112b483320e8caeb90020950244de918d1087d9b53d8f515ed0ace5e7', 6, 1, 'authToken', '[]', 0, '2020-01-07 19:05:58', '2020-01-07 19:05:58', '2021-01-07 20:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'foodXyme Personal Access Client', 'cMaUvdkjb7toICabpGzwHF9RjCZbo1iHmBnBGvWC', 'http://localhost', 1, 0, 0, '2020-01-07 15:50:50', '2020-01-07 15:50:50'),
(2, NULL, 'foodXyme Password Grant Client', 'WCgvfsg9JuLRnZbWYBOj3l237LvlLAPUNVJfvt1H', 'http://localhost', 0, 1, 0, '2020-01-07 15:50:50', '2020-01-07 15:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-01-07 15:49:18', '2020-01-07 15:49:18'),
(2, 3, '2020-01-07 15:49:43', '2020-01-07 15:49:43'),
(3, 1, '2020-01-07 15:50:21', '2020-01-07 15:50:21'),
(4, 1, '2020-01-07 15:50:50', '2020-01-07 15:50:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `idorderdetails` int(10) UNSIGNED NOT NULL,
  `order_summaries_id` int(10) UNSIGNED NOT NULL,
  `stock_details_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`idorderdetails`, `order_summaries_id`, `stock_details_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 149, 1, 100, NULL, NULL),
(2, 1, 161, 1, 1400, NULL, NULL),
(3, 1, 160, 1, 700, NULL, NULL),
(4, 1, 171, 1, 100, NULL, NULL),
(5, 1, 172, 1, 100, NULL, NULL),
(6, 2, 250, 1, 600, NULL, NULL),
(7, 3, 184, 1, 950, NULL, NULL),
(8, 4, 184, 1, 950, NULL, NULL),
(9, 5, 320, 1, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderprotein`
--

CREATE TABLE `orderprotein` (
  `idorderprotein` int(200) NOT NULL,
  `stock_id` int(40) UNSIGNED NOT NULL,
  `qty` int(40) NOT NULL,
  `price` int(200) NOT NULL,
  `order_detail_id` int(40) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderprotein`
--

INSERT INTO `orderprotein` (`idorderprotein`, `stock_id`, `qty`, `price`, `order_detail_id`, `created_at`, `updated_at`) VALUES
(1, 250, 1, 100, 6, '2020-02-29 21:29:32', '2020-02-29 21:29:32'),
(2, 250, 1, 100, 6, '2020-02-29 21:29:32', '2020-02-29 21:29:32');

-- --------------------------------------------------------

--
-- Table structure for table `ordersummaries`
--

CREATE TABLE `ordersummaries` (
  `idordersummaries` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `bikeman_id` int(10) UNSIGNED DEFAULT NULL,
  `from_region_id` int(10) UNSIGNED NOT NULL,
  `to_region_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `vendor_fee` int(200) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `service_charge` int(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordersummaries`
--

INSERT INTO `ordersummaries` (`idordersummaries`, `user_id`, `vendor_id`, `bikeman_id`, `from_region_id`, `to_region_id`, `status`, `vendor_fee`, `total_amount`, `service_charge`, `created_at`, `updated_at`) VALUES
(1, 1, 3, NULL, 1, 1, 0, 2400, 2576, 96, '2020-02-29 16:08:28', '2020-02-29 16:08:28'),
(2, 9, 6, NULL, 15, 7, 0, 600, 730, 30, '2020-02-29 20:29:31', '2020-02-29 20:29:31'),
(3, 9, 8, NULL, 15, 1, 0, 950, 1208, 38, '2020-02-29 20:35:56', '2020-02-29 20:35:56'),
(4, 9, 8, NULL, 15, 1, 1, 950, 1208, 38, '2020-02-29 20:41:08', '2020-02-29 20:42:18'),
(5, 9, 1, NULL, 15, 1, 1, 100, 324, 4, '2020-02-29 21:33:48', '2020-02-29 21:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricebreakdowns`
--

CREATE TABLE `pricebreakdowns` (
  `idpricebreakdowns` int(10) UNSIGNED NOT NULL,
  `from_region_id` int(10) UNSIGNED NOT NULL,
  `to_region_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_fee` int(11) NOT NULL,
  `charges` int(200) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricebreakdowns`
--

INSERT INTO `pricebreakdowns` (`idpricebreakdowns`, `from_region_id`, `to_region_id`, `description`, `delivery_fee`, `charges`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, 80, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(3, 1, 2, NULL, 150, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(4, 1, 3, NULL, 150, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(5, 1, 4, NULL, 180, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(6, 1, 5, NULL, 180, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(7, 1, 6, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(8, 1, 7, NULL, 220, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(9, 1, 8, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(10, 1, 9, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(11, 1, 10, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(12, 1, 11, NULL, 270, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(13, 1, 12, NULL, 300, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(14, 1, 13, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(15, 1, 14, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(16, 1, 15, NULL, 220, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(17, 1, 16, NULL, 300, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(18, 1, 17, NULL, 350, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(19, 1, 18, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(20, 1, 19, NULL, 230, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(21, 1, 20, NULL, 220, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(22, 1, 21, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(23, 1, 22, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(24, 1, 23, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(25, 1, 24, NULL, 270, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(26, 1, 25, NULL, 150, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(27, 1, 26, NULL, 300, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(28, 1, 27, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(29, 1, 28, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(30, 1, 29, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(31, 1, 30, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(32, 1, 31, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(33, 1, 32, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(34, 1, 33, NULL, 250, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(35, 1, 34, NULL, 230, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(36, 1, 35, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(37, 1, 36, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(38, 1, 37, NULL, 170, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(39, 1, 38, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(40, 1, 39, NULL, 200, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(41, 1, 40, NULL, 100, 0, '2020-02-26 13:39:10', '2020-02-26 13:39:10'),
(42, 7, 1, NULL, 220, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(43, 7, 2, NULL, 180, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(44, 7, 3, NULL, 180, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(45, 7, 4, NULL, 180, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(46, 7, 5, NULL, 100, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(47, 7, 6, NULL, 100, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(48, 7, 7, NULL, 80, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(49, 7, 8, NULL, 80, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(50, 7, 9, NULL, 100, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(51, 7, 10, NULL, 180, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(52, 7, 11, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(53, 7, 12, NULL, 220, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(54, 7, 13, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(55, 7, 14, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(56, 7, 15, NULL, 100, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(57, 7, 16, NULL, 180, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(58, 7, 17, NULL, 200, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(59, 7, 18, NULL, 180, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(60, 7, 19, NULL, 100, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(61, 7, 20, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(62, 7, 21, NULL, 100, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(63, 7, 22, NULL, 100, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(64, 7, 23, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(65, 7, 24, NULL, 200, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(66, 7, 25, NULL, 200, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(67, 7, 26, NULL, 180, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(68, 7, 27, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(69, 7, 28, NULL, 200, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(70, 7, 29, NULL, 100, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(71, 7, 30, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(72, 7, 31, NULL, 170, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(73, 7, 32, NULL, 250, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(74, 7, 33, NULL, 250, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(75, 7, 34, NULL, 220, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(76, 7, 35, NULL, 200, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(77, 7, 36, NULL, 180, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(78, 7, 37, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(79, 7, 38, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(80, 7, 39, NULL, 150, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(81, 7, 40, NULL, 200, 0, '2020-02-26 14:27:06', '2020-02-26 14:27:06'),
(82, 5, 1, NULL, 180, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(83, 5, 2, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(84, 5, 3, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(85, 5, 4, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(86, 5, 5, NULL, 80, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(87, 5, 6, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(88, 5, 7, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(89, 5, 8, NULL, 130, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(90, 5, 9, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(91, 5, 10, NULL, 170, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(92, 5, 11, NULL, 180, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(93, 5, 12, NULL, 250, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(94, 5, 13, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(95, 5, 14, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(96, 5, 15, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(97, 5, 16, NULL, 180, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(98, 5, 17, NULL, 250, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(99, 5, 18, NULL, 200, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(100, 5, 19, NULL, 130, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(101, 5, 20, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(102, 5, 21, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(103, 5, 22, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(104, 5, 23, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(105, 5, 24, NULL, 250, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(106, 5, 25, NULL, 200, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(107, 5, 26, NULL, 200, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(108, 5, 27, NULL, 100, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(109, 5, 28, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(110, 5, 29, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(111, 5, 30, NULL, 180, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(112, 5, 31, NULL, 120, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(113, 5, 32, NULL, 220, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(114, 5, 33, NULL, 250, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(115, 5, 34, NULL, 200, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(116, 5, 35, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(117, 5, 36, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(118, 5, 37, NULL, 130, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(119, 5, 38, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(120, 5, 39, NULL, 150, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(121, 5, 40, NULL, 200, 0, '2020-02-26 15:09:47', '2020-02-26 15:09:47'),
(122, 2, 1, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(123, 2, 2, NULL, 80, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(124, 2, 3, NULL, 80, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(125, 2, 4, NULL, 100, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(126, 2, 5, NULL, 100, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(127, 2, 6, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(128, 2, 7, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(129, 2, 8, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(130, 2, 9, NULL, 200, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(131, 2, 10, NULL, 200, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(132, 2, 11, NULL, 220, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(133, 2, 12, NULL, 270, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(134, 2, 13, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(135, 2, 14, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(136, 2, 15, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(137, 2, 16, NULL, 200, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(138, 2, 17, NULL, 250, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(139, 2, 18, NULL, 250, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(140, 2, 19, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(141, 2, 20, NULL, 180, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(142, 2, 21, NULL, 200, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(143, 2, 22, NULL, 250, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(144, 2, 23, NULL, 130, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(145, 2, 24, NULL, 250, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(146, 2, 25, NULL, 180, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(147, 2, 26, NULL, 200, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(148, 2, 27, NULL, 120, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(149, 2, 28, NULL, 120, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(150, 2, 29, NULL, 180, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(151, 2, 30, NULL, 200, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(152, 2, 31, NULL, 100, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(153, 2, 32, NULL, 200, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(154, 2, 33, NULL, 200, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(155, 2, 34, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(156, 2, 35, NULL, 100, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(157, 2, 36, NULL, 100, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(158, 2, 37, NULL, 80, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(159, 2, 38, NULL, 230, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(160, 2, 39, NULL, 230, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(161, 2, 40, NULL, 150, 0, '2020-02-26 15:25:44', '2020-02-26 15:25:44'),
(162, 10, 1, NULL, 150, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(163, 10, 2, NULL, 200, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(164, 10, 3, NULL, 220, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(165, 10, 4, NULL, 220, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(166, 10, 5, NULL, 180, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(167, 10, 6, NULL, 180, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(168, 10, 7, NULL, 150, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(169, 10, 8, NULL, 150, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(170, 10, 9, NULL, 120, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(171, 10, 10, NULL, 80, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(172, 10, 11, NULL, 100, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(173, 10, 12, NULL, 120, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(174, 10, 13, NULL, 200, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(175, 10, 14, NULL, 200, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(176, 10, 15, NULL, 200, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(177, 10, 16, NULL, 250, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(178, 10, 17, NULL, 280, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(179, 10, 18, NULL, 120, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(180, 10, 19, NULL, 180, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(181, 10, 20, NULL, 200, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(182, 10, 21, NULL, 150, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(183, 10, 22, NULL, 100, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(184, 10, 23, NULL, 220, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(185, 10, 24, NULL, 250, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(186, 10, 25, NULL, 120, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(187, 10, 26, NULL, 150, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(188, 10, 27, NULL, 200, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(189, 10, 28, NULL, 250, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(190, 10, 29, NULL, 150, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(191, 10, 30, NULL, 100, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(192, 10, 31, NULL, 250, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(193, 10, 32, NULL, 350, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(194, 10, 33, NULL, 400, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(195, 10, 34, NULL, 300, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(196, 10, 35, NULL, 220, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(197, 10, 36, NULL, 250, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(198, 10, 37, NULL, 250, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(199, 10, 38, NULL, 80, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(200, 10, 39, NULL, 80, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(201, 10, 40, NULL, 130, 0, '2020-02-29 01:29:27', '2020-02-29 01:29:27'),
(202, 40, 1, NULL, 100, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(203, 40, 2, NULL, 150, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(204, 40, 3, NULL, 180, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(205, 40, 4, NULL, 200, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(206, 40, 5, NULL, 200, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(207, 40, 6, NULL, 200, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(208, 40, 7, NULL, 180, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(209, 40, 8, NULL, 200, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(210, 40, 9, NULL, 130, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(211, 40, 10, NULL, 100, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(212, 40, 11, NULL, 150, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(213, 40, 12, NULL, 180, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(214, 40, 13, NULL, 220, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(215, 40, 14, NULL, 220, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(216, 40, 15, NULL, 250, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(217, 40, 16, NULL, 270, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(218, 40, 17, NULL, 300, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(219, 40, 18, NULL, 100, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(220, 40, 19, NULL, 220, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(221, 40, 20, NULL, 220, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(222, 40, 21, NULL, 200, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(223, 40, 22, NULL, 220, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(224, 40, 23, NULL, 220, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(225, 40, 24, NULL, 220, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(226, 40, 25, NULL, 100, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(227, 40, 26, NULL, 220, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(228, 40, 27, NULL, 220, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(229, 40, 28, NULL, 250, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(230, 40, 29, NULL, 200, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(231, 40, 30, NULL, 200, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(232, 40, 31, NULL, 200, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(233, 40, 32, NULL, 350, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(234, 40, 33, NULL, 300, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(235, 40, 34, NULL, 230, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(236, 40, 35, NULL, 180, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(237, 40, 36, NULL, 180, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(238, 40, 37, NULL, 180, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(239, 40, 38, NULL, 150, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(240, 40, 39, NULL, 150, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18'),
(241, 40, 40, NULL, 80, 0, '2020-02-29 01:38:18', '2020-02-29 01:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `idregions` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`idregions`, `name`, `description`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'campus', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(2, 'maintenance', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(3, 'ede road', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(4, 'parakin', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(5, 'mayfair', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(6, 'AP', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(7, 'lagere', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(8, 'eleyele', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(9, 'sabo', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(10, 'oauthc', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(11, 'fajuyi', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(12, 'opa', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(13, 'omole estate', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(14, 'oke ola', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(15, 'our lady junction', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(16, 'famia', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(17, 'ondo road', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(18, 'road 7', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(19, 'arubidi', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(20, 'iyana-cele', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(21, 'aderemi', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(22, 'Enuwa', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(23, 'olorunsogo', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(24, 'iloro', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(25, 'oau quarters', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(26, 'ilode', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(27, 'ajigbona', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(28, 'ajebandele', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(29, 'iremo', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(30, 'moore', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(31, 'aserifa', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(32, 'oui', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(33, 'moro', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(34, 'oodua Fm', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(35, 'sanctuary of hope', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(36, 'damico', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(37, 'oduduwa estate', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(38, 'phase 2', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(39, 'phase 1', NULL, 1, '2020-02-26 12:58:27', '2020-02-26 12:58:27'),
(40, 'staff club', NULL, 1, '2020-02-26 13:06:40', '2020-02-26 13:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `idroles` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`idroles`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Customer', NULL, NULL),
(2, 'Vendor', NULL, NULL),
(3, 'Bikeman', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stockcategories`
--

CREATE TABLE `stockcategories` (
  `idstockcategories` int(10) UNSIGNED NOT NULL,
  `app_category_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(40) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stockcategories`
--

INSERT INTO `stockcategories` (`idstockcategories`, `app_category_id`, `vendor_id`, `icon`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL, NULL),
(2, 2, 4, NULL, NULL, NULL),
(3, 3, 4, NULL, NULL, NULL),
(4, 4, 4, NULL, NULL, NULL),
(5, 5, 4, NULL, NULL, NULL),
(6, 6, 4, NULL, NULL, NULL),
(7, 7, 4, NULL, NULL, NULL),
(8, 8, 4, NULL, NULL, NULL),
(9, 9, 4, NULL, NULL, NULL),
(10, 10, 4, NULL, NULL, NULL),
(11, 11, 4, NULL, NULL, NULL),
(12, 1, 2, NULL, NULL, NULL),
(13, 2, 2, NULL, NULL, NULL),
(14, 3, 2, NULL, NULL, NULL),
(15, 4, 2, NULL, NULL, NULL),
(16, 5, 2, NULL, NULL, NULL),
(17, 7, 2, NULL, NULL, NULL),
(18, 11, 2, NULL, NULL, NULL),
(19, 1, 3, NULL, NULL, NULL),
(20, 2, 3, NULL, NULL, NULL),
(21, 3, 3, NULL, NULL, NULL),
(22, 5, 3, NULL, NULL, NULL),
(23, 7, 3, NULL, NULL, NULL),
(24, 11, 3, NULL, NULL, NULL),
(25, 1, 6, NULL, NULL, NULL),
(26, 2, 6, NULL, NULL, NULL),
(27, 3, 6, NULL, NULL, NULL),
(28, 5, 6, NULL, NULL, NULL),
(29, 7, 6, NULL, NULL, NULL),
(30, 11, 6, NULL, NULL, NULL),
(31, 2, 7, NULL, '2020-02-28 20:56:15', '2020-02-28 20:56:15'),
(32, 3, 7, NULL, '2020-02-28 20:56:15', '2020-02-28 20:56:15'),
(33, 5, 7, NULL, '2020-02-28 20:56:15', '2020-02-28 20:56:15'),
(34, 11, 7, NULL, '2020-02-28 20:56:15', '2020-02-28 20:56:15'),
(35, 1, 5, NULL, '2020-02-28 20:59:18', '2020-02-28 20:59:18'),
(36, 2, 5, NULL, '2020-02-28 20:59:18', '2020-02-28 20:59:18'),
(37, 3, 5, NULL, '2020-02-28 20:59:18', '2020-02-28 20:59:18'),
(38, 5, 5, NULL, '2020-02-28 20:59:18', '2020-02-28 20:59:18'),
(39, 7, 5, NULL, '2020-02-28 20:59:18', '2020-02-28 20:59:18'),
(40, 11, 5, NULL, '2020-02-28 20:59:18', '2020-02-28 20:59:18'),
(41, 1, 8, NULL, '2020-02-28 21:02:04', '2020-02-28 21:02:04'),
(42, 2, 8, NULL, '2020-02-28 21:02:04', '2020-02-28 21:02:04'),
(43, 3, 8, NULL, '2020-02-28 21:02:04', '2020-02-28 21:02:04'),
(44, 4, 8, NULL, '2020-02-28 21:02:04', '2020-02-28 21:02:04'),
(45, 5, 8, NULL, '2020-02-28 21:02:04', '2020-02-28 21:02:04'),
(46, 7, 8, NULL, '2020-02-28 21:02:04', '2020-02-28 21:02:04'),
(47, 11, 8, NULL, '2020-02-28 21:02:04', '2020-02-28 21:02:04'),
(48, 1, 1, NULL, '2020-02-28 21:03:42', '2020-02-28 21:03:42'),
(49, 2, 1, NULL, '2020-02-28 21:03:42', '2020-02-28 21:03:42'),
(50, 3, 1, NULL, '2020-02-28 21:03:42', '2020-02-28 21:03:42'),
(51, 5, 1, NULL, '2020-02-28 21:03:42', '2020-02-28 21:03:42'),
(52, 7, 1, NULL, '2020-02-28 21:03:42', '2020-02-28 21:03:42'),
(53, 11, 1, NULL, '2020-02-28 21:03:42', '2020-02-28 21:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `stockdetails`
--

CREATE TABLE `stockdetails` (
  `idstockdetails` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stockprice` int(11) NOT NULL,
  `stock_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stockdetails`
--

INSERT INTO `stockdetails` (`idstockdetails`, `vendor_id`, `description`, `name`, `status`, `image`, `stockprice`, `stock_category_id`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, 'Fried Rice +package', 'Available', NULL, 500, 1, NULL, NULL),
(2, 4, NULL, 'Jollof Rice +package', 'Available', NULL, 500, 1, NULL, NULL),
(3, 4, NULL, 'Fried + Jollof Rice + package', 'Available', NULL, 500, 1, NULL, NULL),
(4, 4, NULL, 'Rice + Beans + package', 'Available', NULL, 500, 1, NULL, NULL),
(5, 4, NULL, 'Beans Pottage + package', 'Available', NULL, 450, 1, NULL, NULL),
(6, 4, NULL, 'Yam Pottage + package', 'Available', NULL, 450, 1, NULL, NULL),
(7, 4, NULL, 'Spaghetti + package', 'Available', NULL, 450, 1, NULL, NULL),
(8, 4, NULL, 'Ofada + sauce +  package', 'Available', NULL, 800, 1, NULL, NULL),
(9, 4, NULL, 'Country Yam + package', 'Available', NULL, 350, 1, NULL, NULL),
(10, 4, NULL, 'Country Noodles + package', 'Available', NULL, 1000, 1, NULL, NULL),
(11, 4, NULL, 'Semo', 'Available', NULL, 150, 2, NULL, NULL),
(12, 4, NULL, 'Eba', 'Available', NULL, 150, 2, NULL, NULL),
(13, 4, NULL, 'Pounded Yam', 'Available', NULL, 200, 2, NULL, NULL),
(14, 4, NULL, 'Amala', 'Available', NULL, 150, 2, NULL, NULL),
(15, 4, NULL, 'Chicken chili sauce + package', 'Available', NULL, 500, 3, NULL, NULL),
(16, 4, NULL, 'Ofada sauce + package', 'Available', NULL, 400, 3, NULL, NULL),
(17, 4, NULL, 'Efo + package', 'Available', NULL, 300, 3, NULL, NULL),
(18, 4, NULL, 'Egusi + package', 'Available', NULL, 300, 3, NULL, NULL),
(19, 4, NULL, 'Ewedu + package', 'Available', NULL, 200, 3, NULL, NULL),
(20, 4, NULL, 'Meat Pie', 'Available', NULL, 350, 8, NULL, NULL),
(21, 4, NULL, 'Chicken Pie', 'Available', NULL, 350, 8, NULL, NULL),
(22, 4, NULL, 'Saussage rolls', 'Available', NULL, 150, 8, NULL, NULL),
(23, 4, NULL, 'Doughnut', 'Available', NULL, 150, 8, NULL, NULL),
(24, 4, NULL, 'Cup cake', 'Available', NULL, 100, 8, NULL, NULL),
(25, 4, NULL, 'Love Cake', 'Available', NULL, 700, 8, NULL, NULL),
(26, 4, NULL, 'Croissant', 'Available', NULL, 350, 8, NULL, NULL),
(27, 4, NULL, 'Scotch Egg', 'Available', NULL, 150, 8, NULL, NULL),
(28, 4, NULL, 'Big Snail', 'Available', NULL, 1500, 5, NULL, NULL),
(29, 4, NULL, 'Small Snail', 'Available', NULL, 1000, 5, NULL, NULL),
(30, 4, NULL, 'Gizzard', 'Available', NULL, 500, 5, NULL, NULL),
(31, 4, NULL, 'Beef', 'Available', NULL, 300, 5, NULL, NULL),
(32, 4, NULL, 'Assorted Beef', 'Available', NULL, 300, 5, NULL, NULL),
(33, 4, NULL, 'Ponmo', 'Available', NULL, 300, 5, NULL, NULL),
(34, 4, NULL, 'Bokoto', 'Available', NULL, 400, 5, NULL, NULL),
(35, 4, NULL, 'Pepe Chicken', 'Available', NULL, 800, 5, NULL, NULL),
(36, 4, NULL, 'Roasted Chicken', 'Available', NULL, 800, 5, NULL, NULL),
(37, 4, NULL, '9CS Chicken', 'Available', NULL, 400, 5, NULL, NULL),
(38, 4, NULL, '2PCS Chicken', 'Available', NULL, 800, 5, NULL, NULL),
(39, 4, NULL, '4PCS Chicken', 'Available', NULL, 1500, 5, NULL, NULL),
(40, 4, NULL, 'Asun', 'Available', NULL, 600, 5, NULL, NULL),
(41, 4, NULL, 'Croaker Fish', 'Available', NULL, 2000, 5, NULL, NULL),
(42, 4, NULL, 'King Size Croaker FIsh', 'Available', NULL, 2500, 5, NULL, NULL),
(43, 4, NULL, 'Cat Fish', 'Available', NULL, 1000, 5, NULL, NULL),
(44, 4, NULL, 'Fresh Fish', 'Available', NULL, 700, 5, NULL, NULL),
(45, 4, NULL, 'Flakky Fish', 'Available', NULL, 1000, 5, NULL, NULL),
(46, 4, NULL, '1 litre', 'Available', NULL, 800, 10, NULL, NULL),
(47, 4, NULL, '1/2 litre', 'Available', NULL, 400, 10, NULL, NULL),
(48, 4, NULL, '1/4 litre', 'Available', NULL, 250, 10, NULL, NULL),
(49, 4, NULL, 'Sugar Cone', 'Available', NULL, 250, 10, NULL, NULL),
(50, 4, NULL, 'Plain Cone', 'Available', NULL, 250, 10, NULL, NULL),
(51, 4, NULL, 'Large Pizza', 'Available', NULL, 3200, 9, NULL, NULL),
(52, 4, NULL, 'Medium Pizza', 'Available', NULL, 2700, 9, NULL, NULL),
(53, 4, NULL, 'Large Vegetarian Pizza', 'Available', NULL, 3200, 9, NULL, NULL),
(54, 4, NULL, 'Large Beef Pizza', 'Available', NULL, 3200, 9, NULL, NULL),
(55, 4, NULL, 'Large Pepper relling Pizza', 'Available', NULL, 3200, 9, NULL, NULL),
(56, 4, NULL, 'Large Chicken Pizza', 'Available', NULL, 3200, 9, NULL, NULL),
(57, 4, NULL, 'Magreta Pizza', 'Available', NULL, 1500, 9, NULL, NULL),
(58, 4, NULL, 'Medium Vegetarian Pizza', 'Available', NULL, 2700, 9, NULL, NULL),
(59, 4, NULL, 'Medium Pepper Relling Pizza', 'Available', NULL, 2700, 9, NULL, NULL),
(60, 4, NULL, 'Medium Chicken Pizza', 'Available', NULL, 2700, 9, NULL, NULL),
(61, 4, NULL, 'Medium Beef Pizza', 'Available', NULL, 2700, 9, NULL, NULL),
(62, 4, NULL, 'Milk Shake', 'Available', NULL, 600, 7, NULL, NULL),
(63, 4, NULL, 'Small Water', 'Available', NULL, 100, 7, NULL, NULL),
(64, 4, NULL, 'Big Water', 'Available', NULL, 200, 7, NULL, NULL),
(65, 4, NULL, 'Pet Water', 'Available', NULL, 200, 7, NULL, NULL),
(66, 4, NULL, '5 Alive & Others', 'Available', NULL, 600, 7, NULL, NULL),
(67, 4, NULL, 'Happy Hour', 'Available', NULL, 400, 7, NULL, NULL),
(68, 4, NULL, 'Ice Tea', 'Available', NULL, 400, 7, NULL, NULL),
(69, 4, NULL, 'Energy Drinks', 'Available', NULL, 500, 7, NULL, NULL),
(70, 4, NULL, 'Chapman Take Away', 'Available', NULL, 350, 7, NULL, NULL),
(71, 4, NULL, 'Chapman Take In', 'Available', NULL, 300, 7, NULL, NULL),
(72, 4, NULL, 'Small Farm Fresh', 'Available', NULL, 750, 7, NULL, NULL),
(73, 4, NULL, 'Big Farm Fresh', 'Available', NULL, 1300, 7, NULL, NULL),
(74, 4, NULL, '5 Alive Pet', 'Available', NULL, 250, 7, NULL, NULL),
(75, 4, NULL, '5 Alive Pupy BIg', 'Available', NULL, 600, 7, NULL, NULL),
(76, 4, NULL, 'Cedaar Yoghurt', 'Available', NULL, 600, 7, NULL, NULL),
(77, 4, NULL, 'Fruit Salad + Package', 'Available', NULL, 500, 6, NULL, NULL),
(78, 4, NULL, 'Chicken Vegetable Salad + Package', 'Available', NULL, 500, 6, NULL, NULL),
(79, 4, NULL, 'Burger + Package', 'Available', NULL, 700, 6, NULL, NULL),
(80, 4, NULL, 'Salad + Package', 'Available', NULL, 350, 6, NULL, NULL),
(81, 4, NULL, 'Double Chicken Burger + Package', 'Available', NULL, 1100, 6, NULL, NULL),
(82, 4, NULL, 'Beef', 'Available', NULL, 300, 11, NULL, NULL),
(83, 4, NULL, 'Assorted Beef', 'Available', NULL, 300, 11, NULL, NULL),
(84, 4, NULL, 'Bokoto', 'Available', NULL, 400, 11, NULL, NULL),
(85, 4, NULL, 'Ponmo', 'Available', NULL, 300, 11, NULL, NULL),
(86, 4, NULL, 'Moin-Moin', 'Available', NULL, 200, 11, NULL, NULL),
(87, 4, NULL, 'Plantain', 'Available', NULL, 100, 11, NULL, NULL),
(88, 4, NULL, 'Salad', 'Available', NULL, 250, 11, NULL, NULL),
(89, 4, NULL, 'Extra Rice', 'Available', NULL, 200, 11, NULL, NULL),
(90, 4, NULL, 'Chicken and Chips + package', 'Available', NULL, 1400, 6, NULL, NULL),
(91, 4, NULL, 'Chips + package', 'Available', NULL, 600, 6, NULL, NULL),
(92, 2, NULL, 'Fried Rice + Package', 'Available', NULL, 400, 12, NULL, NULL),
(93, 2, NULL, 'Jollof Rice + Package', 'Available', NULL, 300, 12, NULL, NULL),
(94, 2, NULL, 'White Rice + Package', 'Available', NULL, 300, 12, NULL, NULL),
(95, 2, NULL, 'Jollof Rice and Fried Rice + Package', 'Available', NULL, 400, 12, NULL, NULL),
(96, 2, NULL, 'Vegetable Spagetti + Package', 'Finished', NULL, 400, 12, NULL, NULL),
(97, 2, NULL, 'Yam Pottage + Package', 'Finished', NULL, 400, 12, NULL, NULL),
(98, 2, NULL, 'Fufu', 'Available', NULL, 50, 13, NULL, NULL),
(99, 2, NULL, 'Eba', 'Available', NULL, 50, 13, NULL, NULL),
(100, 2, NULL, 'Pounded Yam', 'Finished', NULL, 100, 13, NULL, NULL),
(101, 2, NULL, 'Amala', 'Available', NULL, 50, 13, NULL, NULL),
(102, 2, NULL, 'Semo', 'Available', NULL, 50, 13, NULL, NULL),
(103, 2, NULL, 'Plate of Egusi + package', 'Available', NULL, 100, 14, NULL, NULL),
(104, 2, NULL, 'Plate of Vegetable Soup + Pakage', 'Available', NULL, 100, 14, NULL, NULL),
(105, 2, NULL, 'Plate of Oha Soup + Package', 'Finished', NULL, 100, 14, NULL, NULL),
(106, 2, NULL, 'Plate of Bitter Leaf Soup + Package', 'Finished', NULL, 100, 14, NULL, NULL),
(107, 2, NULL, 'Plate of Mixed Okro + Package', 'Finished', NULL, 100, 14, NULL, NULL),
(108, 2, NULL, 'Plate of White Soup + Package', 'Finished', NULL, 100, 14, NULL, NULL),
(109, 2, NULL, 'Plate of Ogbono Soup + Package', 'Finished', NULL, 100, 14, NULL, NULL),
(110, 2, NULL, 'Plate of Edikai kong + Package', 'Finished', NULL, 100, 14, NULL, NULL),
(111, 2, NULL, 'Plate of Ewedu and Stew + Package', 'Available', NULL, 100, 14, NULL, NULL),
(112, 2, NULL, 'Plate of Ogu Sauce + Package', 'Finished', NULL, 100, 14, NULL, NULL),
(113, 2, NULL, 'Plate of Ofe Owere + Package', 'Finished', NULL, 100, 14, NULL, NULL),
(114, 2, NULL, 'Yam and Egg + Package', 'Available', NULL, 600, 15, NULL, NULL),
(115, 2, NULL, 'Yam and Fish Sauce + Package', 'Available', NULL, 600, 15, NULL, NULL),
(116, 2, NULL, 'Fried Plantain and Egg + Package', 'Available', NULL, 600, 15, NULL, NULL),
(117, 2, NULL, 'Spring Roll and Samosa + Package', 'Available', NULL, 500, 15, NULL, NULL),
(118, 2, NULL, 'Goat Meat', 'Available', NULL, 400, 16, NULL, NULL),
(119, 2, NULL, 'Chicken', 'Available', NULL, 350, 16, NULL, NULL),
(120, 2, NULL, 'Gizzard', 'Available', NULL, 250, 16, NULL, NULL),
(121, 2, NULL, 'Assorted', 'Available', NULL, 100, 16, NULL, NULL),
(122, 2, NULL, 'Moin-Moin', 'Available', NULL, 100, 16, NULL, NULL),
(123, 2, NULL, 'Fried Plantain', 'Available', NULL, 50, 18, NULL, NULL),
(124, 2, NULL, 'Moin-Moin', 'Available', NULL, 100, 18, NULL, NULL),
(125, 2, NULL, 'Fried Beef', 'Available', NULL, 100, 18, NULL, NULL),
(126, 2, NULL, 'Fried Fish', 'Available', NULL, 100, 18, NULL, NULL),
(127, 2, NULL, 'Chicken', 'Available', NULL, 350, 18, NULL, NULL),
(128, 2, NULL, 'Goat Meat', 'Available', NULL, 400, 18, NULL, NULL),
(129, 2, NULL, 'Egg', 'Available', NULL, 50, 18, NULL, NULL),
(130, 2, NULL, 'Assorted', 'Available', NULL, 100, 18, NULL, NULL),
(131, 2, NULL, 'Beans', 'Available', NULL, 50, 18, NULL, NULL),
(132, 2, NULL, 'Plain Spaghetti', 'Available', NULL, 50, 18, NULL, NULL),
(133, 2, NULL, 'Table Water', 'Available', NULL, 100, 17, NULL, NULL),
(134, 2, NULL, 'Cocacola', 'Available', NULL, 100, 17, NULL, NULL),
(135, 2, NULL, 'Fanta', 'Available', NULL, 100, 17, NULL, NULL),
(136, 2, NULL, 'Fanta', 'Available', NULL, 100, 17, NULL, NULL),
(137, 2, NULL, 'Sprite', 'Available', NULL, 100, 17, NULL, NULL),
(138, 2, NULL, 'Maltina', 'Available', NULL, 150, 17, NULL, NULL),
(139, 2, NULL, 'Cway Peach', 'Available', NULL, 150, 17, NULL, NULL),
(140, 2, NULL, 'pure water', 'Available', NULL, 10, 17, NULL, NULL),
(141, 3, NULL, 'Jollof Rice + package', 'Available', NULL, 300, 19, NULL, NULL),
(142, 3, NULL, 'White Rice + package', 'Available', NULL, 300, 19, NULL, NULL),
(143, 3, NULL, 'Fried RIce + package', 'Available', NULL, 300, 19, NULL, NULL),
(144, 3, NULL, 'Bread(100) and Beans(100)+package', 'Available', NULL, 300, 19, NULL, NULL),
(145, 3, NULL, 'Bread(150) and Beans(150) + package', 'Available', NULL, 400, 19, NULL, NULL),
(146, 3, NULL, 'Eba', 'Available', NULL, 50, 20, NULL, NULL),
(147, 3, NULL, 'Amala', 'Available', NULL, 50, 20, NULL, NULL),
(148, 3, NULL, 'Fufu', 'Available', NULL, 50, 20, NULL, NULL),
(149, 3, NULL, 'Pounded Yam', 'Available', NULL, 100, 20, NULL, NULL),
(150, 3, NULL, 'Semo', 'Available', NULL, 100, 20, NULL, NULL),
(151, 3, NULL, 'plate of Efo Riro + package', 'Available', NULL, 100, 21, NULL, NULL),
(152, 3, NULL, 'plate of Egusi +package', 'Available', NULL, 100, 21, NULL, NULL),
(153, 3, NULL, 'Okro soup + package', 'Available', NULL, 100, 21, NULL, NULL),
(154, 3, NULL, 'Ewedu + package', 'Available', NULL, 100, 21, NULL, NULL),
(155, 3, NULL, 'Gbegiri + package', 'Available', NULL, 100, 21, NULL, NULL),
(156, 3, NULL, 'Medium Chicken', 'Available', NULL, 500, 22, NULL, NULL),
(157, 3, NULL, 'Big Chicken', 'Available', NULL, 700, 22, NULL, NULL),
(158, 3, NULL, 'Meduim Goat Meat', 'Available', NULL, 500, 22, NULL, NULL),
(159, 3, NULL, 'Big Goat Meat', 'Available', NULL, 700, 22, NULL, NULL),
(160, 3, NULL, 'Fresh Fish(half)', 'Available', NULL, 700, 22, NULL, NULL),
(161, 3, NULL, 'Fresh Fish(Full)', 'Available', NULL, 1400, 22, NULL, NULL),
(162, 3, NULL, 'Meat', 'Available', NULL, 50, 24, NULL, NULL),
(163, 3, NULL, 'Fish(Titus)', 'Available', NULL, 150, 24, NULL, NULL),
(164, 3, NULL, 'Ponmo', 'Available', NULL, 200, 24, NULL, NULL),
(165, 3, NULL, 'Chicken', 'Available', NULL, 500, 24, NULL, NULL),
(166, 3, NULL, 'Goat Meat', 'Available', NULL, 500, 24, NULL, NULL),
(167, 3, NULL, 'Fresh Fish(Full)', 'Available', NULL, 1400, 24, NULL, NULL),
(168, 3, NULL, 'Fresh Fish(half)', 'Available', NULL, 700, 24, NULL, NULL),
(169, 3, NULL, 'Assorted Meat', 'Available', NULL, 100, 24, NULL, NULL),
(170, 3, NULL, 'Egg', 'Available', NULL, 100, 24, NULL, NULL),
(171, 3, NULL, 'Cocacola', 'Available', NULL, 100, 23, NULL, NULL),
(172, 3, NULL, 'Fanta', 'Available', NULL, 100, 23, NULL, NULL),
(173, 3, NULL, 'Sprite', 'Available', NULL, 100, 23, NULL, NULL),
(174, 3, NULL, 'Puppy (Big)', 'Available', NULL, 400, 23, NULL, NULL),
(175, 3, NULL, 'Puupy (Small)', 'Available', NULL, 150, 23, NULL, NULL),
(176, 3, NULL, 'Fearless', 'Available', NULL, 250, 23, NULL, NULL),
(177, 3, NULL, 'Power Horse', 'Available', NULL, 250, 23, NULL, NULL),
(178, 3, NULL, 'Maltina (Can)', 'Available', NULL, 150, 23, NULL, NULL),
(179, 3, NULL, 'Maltina (plastic)', 'Available', NULL, 150, 23, NULL, NULL),
(180, 3, NULL, 'Nutri Choco', 'Available', NULL, 200, 23, NULL, NULL),
(181, 3, NULL, 'Hollandia Yoghourt', 'Available', NULL, 500, 23, NULL, NULL),
(182, 3, NULL, 'Chivita', 'Available', NULL, 400, 23, NULL, NULL),
(183, 3, NULL, 'Pure Water', 'Available', NULL, 10, 23, NULL, NULL),
(184, 8, NULL, 'Rice with Chicken + Package', 'Available', NULL, 950, 44, NULL, NULL),
(185, 8, NULL, 'Rice with Beef + Package', 'Available', NULL, 600, 44, NULL, NULL),
(186, 8, NULL, 'Ofada with Sauce + Package', 'Available', NULL, 700, 41, NULL, NULL),
(187, 8, NULL, 'Spagetti + Package', 'Available', NULL, 400, 41, NULL, NULL),
(188, 8, NULL, 'Amala', 'Available', NULL, 50, 42, NULL, NULL),
(189, 8, NULL, 'Fufu', 'Available', NULL, 50, 42, NULL, NULL),
(190, 8, NULL, 'Semo', 'Available', NULL, 50, 42, NULL, NULL),
(191, 8, NULL, 'Pounded Yam', 'Available', NULL, 100, 42, NULL, NULL),
(192, 8, NULL, 'Plate of Vegetable + Package', 'Available', NULL, 100, 43, NULL, NULL),
(193, 8, NULL, 'Plate of Egusi + Package', 'Available', NULL, 100, 43, NULL, NULL),
(194, 8, NULL, 'Plate of Gbegiri + Package', 'Available', NULL, 100, 43, NULL, NULL),
(195, 8, NULL, 'Plate of Ewedu + Package', 'Available', NULL, 100, 43, NULL, NULL),
(196, 8, NULL, 'Goat Meat', 'Available', NULL, 500, 45, NULL, NULL),
(197, 8, NULL, 'Chicken', 'Available', NULL, 400, 45, NULL, NULL),
(198, 8, NULL, 'Fish', 'Available', NULL, 200, 45, NULL, NULL),
(199, 8, NULL, 'Turkey', 'Available', NULL, 300, 45, NULL, NULL),
(200, 8, NULL, 'Beef', 'Available', NULL, 100, 47, NULL, NULL),
(201, 8, NULL, 'Ponmo', 'Available', NULL, 100, 47, NULL, NULL),
(202, 8, NULL, 'Fish', 'Available', NULL, 200, 47, NULL, NULL),
(203, 8, NULL, 'Turkey', 'Available', NULL, 300, 47, NULL, NULL),
(204, 8, NULL, 'Chicken', 'Available', NULL, 400, 47, NULL, NULL),
(205, 8, NULL, 'Goat Meat', 'Available', NULL, 500, 47, NULL, NULL),
(206, 8, NULL, 'Plantain', 'Available', NULL, 100, 47, NULL, NULL),
(207, 8, NULL, 'Moin-Moin', 'Available', NULL, 150, 47, NULL, NULL),
(208, 8, NULL, 'Bottle Water', 'Available', NULL, 100, 46, NULL, NULL),
(209, 8, NULL, 'Coca-cola', 'Available', NULL, 150, 46, NULL, NULL),
(210, 8, NULL, 'Fanta', 'Available', NULL, 150, 46, NULL, NULL),
(211, 8, NULL, 'Sprite', 'Available', NULL, 150, 46, NULL, NULL),
(212, 5, NULL, 'Jollof Rice + Package', 'Available', NULL, 300, 35, NULL, NULL),
(213, 5, NULL, 'Fried Rice + Package', 'Available', NULL, 300, 35, NULL, NULL),
(214, 5, NULL, 'White Rice + Package', 'Available', NULL, 300, 35, NULL, NULL),
(215, 5, NULL, 'Pottage + Package', 'Available', NULL, 300, 35, NULL, NULL),
(216, 5, NULL, 'Fufu', 'Available', NULL, 50, 36, NULL, NULL),
(217, 5, NULL, 'Eba', 'Available', NULL, 50, 36, NULL, NULL),
(218, 5, NULL, 'Amala', 'Available', NULL, 100, 36, NULL, NULL),
(219, 5, NULL, 'Pounded Yam', 'Available', NULL, 100, 36, NULL, NULL),
(220, 5, NULL, 'Semo', 'Available', NULL, 100, 36, NULL, NULL),
(221, 5, NULL, 'Plate of Vegetable + Package', 'Available', NULL, 100, 37, NULL, NULL),
(222, 5, NULL, 'Plate of Egusi + Package', 'Available', NULL, 100, 37, NULL, NULL),
(223, 5, NULL, 'Plate of Ewedu + Package', 'Available', NULL, 100, 37, NULL, NULL),
(224, 5, NULL, 'Bread and Beans + package', 'Available', NULL, 300, 35, NULL, NULL),
(225, 5, NULL, 'Bread and Beans + package', 'Available', NULL, 400, 35, NULL, NULL),
(226, 5, NULL, 'Chicken', 'Available', NULL, 500, 38, NULL, NULL),
(227, 5, NULL, 'Brama Pish', 'Available', NULL, 200, 38, NULL, NULL),
(228, 5, NULL, 'Aquake Fish', 'Available', NULL, 200, 38, NULL, NULL),
(229, 5, NULL, 'Chicken', 'Available', NULL, 500, 40, NULL, NULL),
(230, 5, NULL, 'Brama Fish', 'Available', NULL, 200, 40, NULL, NULL),
(231, 5, NULL, 'Aquake Fish', 'Available', NULL, 200, 40, NULL, NULL),
(232, 5, NULL, 'Beef', 'Available', NULL, 100, 40, NULL, NULL),
(233, 5, NULL, 'Titus Fish', 'Available', NULL, 100, 40, NULL, NULL),
(234, 5, NULL, 'Plantain', 'Available', NULL, 50, 40, NULL, NULL),
(235, 5, NULL, 'Moin-Moin', 'Available', NULL, 100, 40, NULL, NULL),
(236, 5, NULL, 'Bottle Water', 'Available', NULL, 50, 39, NULL, NULL),
(237, 5, NULL, 'Coca-Cola', 'Available', NULL, 100, 39, NULL, NULL),
(238, 5, NULL, 'Fanta', 'Available', NULL, 100, 39, NULL, NULL),
(239, 5, NULL, 'Sprite', 'Available', NULL, 100, 39, NULL, NULL),
(240, 5, NULL, '7up', 'Available', NULL, 100, 39, NULL, NULL),
(241, 5, NULL, 'Charpman', 'Available', NULL, 100, 39, NULL, NULL),
(242, 5, NULL, 'Smoove', 'Available', NULL, 100, 39, NULL, NULL),
(243, 5, NULL, 'Fairless', 'Available', NULL, 250, 39, NULL, NULL),
(244, 5, NULL, 'Hollandia Youghurt', 'Available', NULL, 500, 39, NULL, NULL),
(245, 6, NULL, 'White Rice + package', 'Available', NULL, 300, 25, NULL, NULL),
(246, 6, NULL, 'Jollof Rice + package', 'Available', NULL, 300, 25, NULL, NULL),
(247, 6, NULL, 'Fried Rice + package', 'Available', NULL, 300, 25, NULL, NULL),
(248, 6, NULL, 'Jollof and Fried rice + package', 'Available', NULL, 300, 25, NULL, NULL),
(249, 6, NULL, 'Bread and Beans + package', 'Available', NULL, 300, 25, NULL, NULL),
(250, 6, NULL, 'Bread and Beans + package', 'Available', NULL, 400, 25, NULL, NULL),
(251, 6, NULL, 'Eba', 'Available', NULL, 50, 26, NULL, NULL),
(252, 6, NULL, 'Amala (White)', 'Available', NULL, 50, 26, NULL, NULL),
(253, 6, NULL, 'Amala Black', 'Available', NULL, 100, 26, NULL, NULL),
(254, 6, NULL, 'Semo', 'Available', NULL, 50, 26, NULL, NULL),
(255, 6, NULL, 'Fufu', 'Available', NULL, 50, 26, NULL, NULL),
(256, 6, NULL, 'Wheat', 'Available', NULL, 100, 26, NULL, NULL),
(257, 6, NULL, 'Pounded Yam', 'Available', NULL, 100, 26, NULL, NULL),
(258, 6, NULL, 'Plate of Egusi + Package', 'Available', NULL, 100, 27, NULL, NULL),
(259, 6, NULL, 'Plate of Vegetable + Package', 'Available', NULL, 100, 27, NULL, NULL),
(260, 6, NULL, 'plate of Ogbono + package', 'Available', NULL, 100, 27, NULL, NULL),
(261, 6, NULL, 'plate of Ewedu + package', 'Available', NULL, 100, 27, NULL, NULL),
(262, 6, NULL, 'Plate of Okro + package', 'Available', NULL, 100, 27, NULL, NULL),
(263, 6, NULL, 'Gbegiri', 'Available', NULL, 100, 27, NULL, NULL),
(264, 6, NULL, 'Goat Meat', 'Available', NULL, 500, 28, NULL, NULL),
(265, 6, NULL, 'Bush Meat', 'Available', NULL, 500, 28, NULL, NULL),
(266, 6, NULL, 'Bokoto', 'Available', NULL, 300, 28, NULL, NULL),
(267, 6, NULL, 'Stock Fish', 'Available', NULL, 200, 28, NULL, NULL),
(268, 6, NULL, 'Goat Meat', 'Available', NULL, 500, 30, NULL, NULL),
(269, 6, NULL, 'Bush Meat', 'Available', NULL, 500, 30, NULL, NULL),
(270, 6, NULL, 'Bokoto', 'Available', NULL, 300, 30, NULL, NULL),
(271, 6, NULL, 'Stock Fish', 'Available', NULL, 200, 30, NULL, NULL),
(272, 6, NULL, 'Ponmo', 'Available', NULL, 100, 30, NULL, NULL),
(273, 6, NULL, 'Titus Fish', 'Available', NULL, 100, 30, NULL, NULL),
(274, 6, NULL, 'Meat', 'Available', NULL, 100, 30, NULL, NULL),
(275, 6, NULL, 'Spaghetti', 'Available', NULL, 50, 30, NULL, NULL),
(276, 6, NULL, 'Plantain', 'Available', NULL, 50, 30, NULL, NULL),
(277, 6, NULL, 'Beans', 'Available', NULL, 50, 30, NULL, NULL),
(278, 6, NULL, 'Coca-cola', 'Available', NULL, 100, 29, NULL, NULL),
(279, 6, NULL, 'Fanta', 'Available', NULL, 100, 29, NULL, NULL),
(280, 6, NULL, 'Sprite', 'Available', NULL, 100, 29, NULL, NULL),
(281, 6, NULL, 'Maltina', 'Available', NULL, 150, 29, NULL, NULL),
(282, 6, NULL, 'Bottle Water', 'Available', NULL, 50, 29, NULL, NULL),
(283, 6, NULL, 'Pure water', 'Available', NULL, 10, 29, NULL, NULL),
(284, 7, NULL, 'Pounded Yam', 'Available', NULL, 100, 31, NULL, NULL),
(285, 7, NULL, 'Amala', 'Available', NULL, 100, 31, NULL, NULL),
(286, 7, NULL, 'Fufu', 'Available', NULL, 50, 31, NULL, NULL),
(287, 7, NULL, 'Plate of Vegetable + Package', 'Available', NULL, 100, 32, NULL, NULL),
(288, 7, NULL, 'Plate of Egusi + Package', 'Available', NULL, 100, 32, NULL, NULL),
(289, 7, NULL, 'plate of Ewedu + package', 'Available', NULL, 100, 32, NULL, NULL),
(290, 7, NULL, 'plate of Okro + package', 'Available', NULL, 100, 32, NULL, NULL),
(291, 7, NULL, 'Plate of Gbegiri + package', 'Available', NULL, 100, 32, NULL, NULL),
(292, 7, NULL, 'Ogufe', 'Available', NULL, 700, 33, NULL, NULL),
(293, 7, NULL, 'Bokoto', 'Available', NULL, 500, 33, NULL, NULL),
(294, 7, NULL, 'Fish', 'Available', NULL, 500, 33, NULL, NULL),
(295, 7, NULL, 'Titus Fish', 'Available', NULL, 300, 33, NULL, NULL),
(296, 7, NULL, 'Ponmo', 'Available', NULL, 150, 33, NULL, NULL),
(297, 7, NULL, 'Meat', 'Available', NULL, 150, 33, NULL, NULL),
(298, 7, NULL, 'Ogufe', 'Available', NULL, 700, 34, NULL, NULL),
(299, 7, NULL, 'Bokoto', 'Available', NULL, 500, 34, NULL, NULL),
(300, 7, NULL, 'Fish', 'Available', NULL, 500, 34, NULL, NULL),
(301, 7, NULL, 'Titus Fish', 'Available', NULL, 300, 34, NULL, NULL),
(302, 7, NULL, 'Ponmo', 'Available', NULL, 150, 34, NULL, NULL),
(303, 7, NULL, 'Meat', 'Available', NULL, 150, 34, NULL, NULL),
(304, 1, NULL, 'White Rice + package', 'Available', NULL, 350, 48, NULL, NULL),
(305, 1, NULL, 'Fried rice + package', 'Available', NULL, 450, 48, NULL, NULL),
(306, 1, NULL, 'Jollof Rice + package', 'Available', NULL, 450, 48, NULL, NULL),
(307, 1, NULL, 'Fufu', 'Available', NULL, 100, 49, NULL, NULL),
(308, 1, NULL, 'Eba', 'Available', NULL, 100, 49, NULL, NULL),
(309, 1, NULL, 'Semo', 'Available', NULL, 150, 49, NULL, NULL),
(310, 1, NULL, 'Pounded Yam', 'Available', NULL, 150, 49, NULL, NULL),
(311, 1, NULL, 'Plate of Egusi + Package', 'Available', NULL, 100, 50, NULL, NULL),
(312, 1, NULL, 'Plate of Vegetable + Package', 'Available', NULL, 100, 50, NULL, NULL),
(313, 1, NULL, 'Plate of Ewedu + package', 'Available', NULL, 100, 50, NULL, NULL),
(314, 1, NULL, 'Beef', 'Available', NULL, 100, 51, NULL, NULL),
(315, 1, NULL, 'Goat Meat', 'Available', NULL, 500, 51, NULL, NULL),
(316, 1, NULL, 'Chicken', 'Available', NULL, 500, 51, NULL, NULL),
(317, 1, NULL, 'Fish', 'Available', NULL, 200, 51, NULL, NULL),
(318, 1, NULL, 'active', 'Available', NULL, 500, 52, NULL, NULL),
(319, 1, NULL, 'Hollandia Youghurt', 'Available', NULL, 600, 52, NULL, NULL),
(320, 1, NULL, 'Water', 'Available', NULL, 100, 52, NULL, NULL),
(321, 1, NULL, 'Pepsi', 'Available', NULL, 200, 52, NULL, NULL),
(322, 1, NULL, 'Coca-cola', 'Available', NULL, 200, 52, NULL, NULL),
(323, 1, NULL, 'Fanta', 'Available', NULL, 200, 52, NULL, NULL),
(324, 1, NULL, 'Vita Milk', 'Available', NULL, 400, 52, NULL, NULL),
(325, 1, NULL, 'Hivit', 'Available', NULL, 200, 52, NULL, NULL),
(326, 1, NULL, 'Frutta', 'Available', NULL, 200, 52, NULL, NULL),
(327, 1, NULL, 'Malt', 'Available', NULL, 200, 52, NULL, NULL),
(328, 1, NULL, 'Chicken', 'Available', NULL, 500, 53, NULL, NULL),
(329, 1, NULL, 'Goat Meat', 'Available', NULL, 500, 53, NULL, NULL),
(330, 1, NULL, 'Fish', 'Available', NULL, 200, 53, NULL, NULL),
(331, 1, NULL, 'Ponmo', 'Available', NULL, 100, 53, NULL, NULL),
(332, 1, NULL, 'Egg', 'Available', NULL, 100, 53, NULL, NULL),
(333, 1, NULL, 'Plantain', 'Available', NULL, 100, 53, NULL, NULL),
(334, 1, NULL, 'Beef', 'Available', NULL, 100, 53, NULL, NULL),
(335, 1, NULL, 'Beans', 'Available', NULL, 100, 53, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subregions`
--

CREATE TABLE `subregions` (
  `idsubregions` int(10) UNSIGNED NOT NULL,
  `region_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trackings`
--

CREATE TABLE `trackings` (
  `idtrackings` int(10) UNSIGNED NOT NULL,
  `cart_summaries_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `idtransactions` int(10) UNSIGNED NOT NULL,
  `order_summaries_id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`idtransactions`, `order_summaries_id`, `reference`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Y0NnXpxhkEt9poiA', 0, NULL, NULL),
(2, 2, 'k942S5zfgZPItola', 0, NULL, NULL),
(3, 3, 'VHmSUPZhQKOvuc7W', 0, NULL, NULL),
(4, 4, 'A8fXBDFH4e7coRhx', 1, NULL, NULL),
(5, 5, 'bVMIiHTaM0En5dEX', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'choices@gmail.com', '$2y$10$Q..SrXHUG3s9e4XvIQ9Y2ObnVZj3ZANDq6IhZbsqASrlC588biRUO', 2, '2020-02-27 20:59:31', '2020-02-27 20:59:31'),
(2, 'bistrol@gmail.com', '$2y$10$LqzxejQ0Sx323xAJrNSUM.tzZv8P2wfTjelxu/6dCqgXYnLbu7Pgu', 2, '2020-02-28 03:58:36', '2020-02-28 03:58:36'),
(3, 'hisgrace@gmail.com', '$2y$10$nj1deONee4zBjNT4O4sAFecMuQ3uXjWx4EG7ABCMLABnKO6ozWv7S', 2, '2020-02-28 04:10:50', '2020-02-28 04:10:50'),
(4, 'countrykitchen@gmail.com', '$2y$10$./TkLM34ASVNs273WD4jOe2uq.b.93XApnvSSSwnksWrmNrf76QF2', 2, '2020-02-28 04:27:08', '2020-02-28 04:27:08'),
(5, 'pic@gmail.com', '$2y$10$IWZMMmYRNZz9hTZNAtQXTud2oqM7d/pQM3qlnn5Vo4acjMXEqe8XO', 2, '2020-02-28 04:33:25', '2020-02-28 04:33:25'),
(6, 'mummybukky@gmail.com', '$2y$10$9fM5HzWUdKtq3BCDySlKNOkZOS6leWQ7g4qul0XmlSfNg9hQpbZr2', 2, '2020-02-28 04:42:01', '2020-02-28 04:42:01'),
(7, 'staffclub@gmail.com', '$2y$10$ryVIDrT1mL9ni4CBgRdTDe9OirE/RVTCxoxSm92O7iPocBm7THKem', 2, '2020-02-28 04:53:24', '2020-02-28 04:53:24'),
(8, 'hfhk@gmail.com', '$2y$10$UE1aJJCdqhFC33NJAGdkYusEuewu/U2o6SpDpTV/sjuBLyrF.Pgt.', 2, '2020-02-28 04:56:49', '2020-02-28 04:56:49'),
(9, 'babalolaisaac@gmail.com', '$2y$10$SI9Fj.otFzZBFBfDMPVgAeURD6uQ1Ev5YkpWgbRVRga4jar1Y5Nje', 1, '2020-02-29 19:26:54', '2020-02-29 19:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `vendorgallery`
--

CREATE TABLE `vendorgallery` (
  `idvendorgallery` int(11) NOT NULL,
  `vendor_id` int(40) UNSIGNED NOT NULL,
  `images` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendorgallery`
--

INSERT INTO `vendorgallery` (`idvendorgallery`, `vendor_id`, `images`, `created_at`) VALUES
(1, 4, 'country1.jpg', '2020-02-29 01:26:21'),
(2, 4, 'country2.jpg', '2020-02-29 01:26:50'),
(3, 4, 'country3.jpg', '2020-02-29 01:26:50'),
(4, 4, 'country4.jpg', '2020-02-29 01:26:50'),
(5, 1, 'choice1.jpg', '2020-02-29 07:37:58'),
(6, 1, 'choice2.jpg', '2020-02-29 07:37:58'),
(7, 1, 'choice3.jpg', '2020-02-29 07:37:58'),
(8, 1, 'choice4.jpg', '2020-02-29 07:37:58'),
(9, 1, 'choice5.jpg', '2020-02-29 07:37:58'),
(10, 1, 'choice6.jpg', '2020-02-29 07:37:58'),
(15, 8, 'hfh1.jpg', '2020-02-29 07:50:39'),
(16, 8, 'hfh2.jpg', '2020-02-29 07:50:39'),
(17, 8, 'hfh3.jpg', '2020-02-29 07:50:39'),
(18, 8, 'hfh4.jpg', '2020-02-29 07:50:39'),
(19, 3, 'hisgrace1.jpg', '2020-02-29 08:04:56'),
(20, 3, 'hisgrace2.jpg', '2020-02-29 08:04:56'),
(21, 3, 'hisgrace3.jpg', '2020-02-29 08:04:56'),
(22, 3, 'hisgrace4.jpg', '2020-02-29 08:04:56'),
(23, 3, 'hisgrace5.jpg', '2020-02-29 08:04:56'),
(24, 2, 'bistrol1.jpg', '2020-02-29 08:18:11'),
(25, 2, 'bistrol2.jpg', '2020-02-29 08:18:11'),
(26, 2, 'bistrol3.jpg', '2020-02-29 08:18:11'),
(27, 2, 'bistrol4.jpg', '2020-02-29 08:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `vendorpercentage`
--

CREATE TABLE `vendorpercentage` (
  `idvendorpercentage` int(11) NOT NULL,
  `vendor_id` int(40) UNSIGNED NOT NULL,
  `percentage` int(40) NOT NULL,
  `minAmount` int(200) NOT NULL,
  `maxAmount` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendorpercentage`
--

INSERT INTO `vendorpercentage` (`idvendorpercentage`, `vendor_id`, `percentage`, `minAmount`, `maxAmount`) VALUES
(1, 1, 7, 0, 1000),
(2, 1, 6, 1001, 10000),
(3, 1, 5, 10001, 999999999),
(4, 6, 7, 0, 1000),
(5, 6, 6, 1001, 10000),
(6, 6, 5, 10001, 999999999),
(7, 5, 7, 0, 1000),
(8, 5, 6, 1001, 10000),
(9, 5, 5, 10001, 999999999),
(10, 8, 7, 0, 1000),
(11, 8, 6, 1001, 10000),
(12, 8, 5, 10001, 999999999),
(13, 2, 7, 0, 1000),
(14, 2, 6, 1001, 10000),
(15, 2, 5, 10001, 999999999),
(16, 3, 7, 0, 1000),
(17, 3, 6, 1001, 10000),
(18, 3, 5, 10001, 999999999),
(19, 7, 7, 0, 1000),
(20, 7, 6, 1001, 10000),
(21, 7, 5, 10001, 999999999);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `idvendors` int(10) UNSIGNED NOT NULL,
  `manager_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrangement` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `popular_vendor` int(11) NOT NULL DEFAULT 1,
  `close_status` int(40) NOT NULL DEFAULT 0,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `region_id` int(10) UNSIGNED NOT NULL,
  `rating` decimal(8,1) DEFAULT NULL,
  `open_at` time NOT NULL,
  `close_at` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`idvendors`, `manager_name`, `store_name`, `address`, `logo`, `image`, `phone_number`, `arrangement`, `status`, `popular_vendor`, `close_status`, `description`, `user_id`, `category_id`, `region_id`, `rating`, `open_at`, `close_at`, `created_at`, `updated_at`) VALUES
(1, 'manager', 'Choices', 'Mayfair', 'choice6.jpg', 'bannerchoice.jpg', '081337044204', 2, 2, 1, 0, NULL, 1, 1, 1, NULL, '07:00:00', '22:00:00', NULL, NULL),
(2, 'manager', 'Bistrol', 'New Market, OAU', 'bistrol1.jpg', '', '08037582688', 3, 2, 1, 0, NULL, 2, 1, 1, NULL, '07:00:00', '21:00:00', NULL, NULL),
(3, 'manager', 'His Grace', 'New Market, OAU', 'hisgrace1.jpg', '', '090000000000', 5, 2, 0, 0, NULL, 3, 1, 1, NULL, '07:00:00', '21:00:00', NULL, NULL),
(4, 'Eniola', 'Country Kitchen', 'Mayfair Round about', 'country1.jpg', '', '08166409904', 4, 2, 1, 0, NULL, 4, 1, 5, NULL, '09:00:00', '22:00:00', NULL, NULL),
(5, 'Mr Seun', 'PIC', 'New Market, OAU', NULL, '', '08130605299', 8, 2, 0, 1, NULL, 5, 1, 1, NULL, '10:00:00', '20:00:00', NULL, NULL),
(6, 'mummy bukky', 'Mummy Bukky', 'Lagere', 'mamabuk1.jpg', '', '090000000000', 6, 2, 0, 0, NULL, 6, 1, 7, NULL, '07:00:00', '21:00:00', NULL, NULL),
(7, 'manager', 'Staff Club', 'Staff Club, OAU', NULL, '', '090000000000', 7, 2, 0, 1, NULL, 7, 1, 40, NULL, '13:00:00', '18:00:00', NULL, NULL),
(8, 'Mr Abiola', 'Home From Home Kitchen', 'New Market, OAU', 'hfh1.jpg', '', '07068442038', 1, 2, 1, 0, NULL, 8, 1, 1, NULL, '07:00:00', '22:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendorslikes`
--

CREATE TABLE `vendorslikes` (
  `idvendorlikes` int(11) NOT NULL,
  `vendor_review_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vendorsreviews`
--

CREATE TABLE `vendorsreviews` (
  `idvendorsreviews` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_region`
--

CREATE TABLE `vendor_region` (
  `idvendorregion` int(40) NOT NULL,
  `region_id` int(40) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_region`
--

INSERT INTO `vendor_region` (`idvendorregion`, `region_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-26 17:12:53', '2020-02-26 17:12:53'),
(2, 7, '2020-02-26 17:12:53', '2020-02-26 17:12:53'),
(3, 5, '2020-02-26 17:12:53', '2020-02-26 17:12:53'),
(4, 2, '2020-02-26 17:12:53', '2020-02-26 17:12:53'),
(5, 10, '2020-02-26 17:12:53', '2020-02-26 17:12:53'),
(6, 40, '2020-02-26 17:12:53', '2020-02-26 17:12:53'),
(7, 38, '2020-02-26 17:12:53', '2020-02-26 17:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `idwithdrawals` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`idaddress`),
  ADD KEY `address_ibfk_1` (`user_id`);

--
-- Indexes for table `api_authentication`
--
ALTER TABLE `api_authentication`
  ADD PRIMARY KEY (`idapi`);

--
-- Indexes for table `appstockcategory`
--
ALTER TABLE `appstockcategory`
  ADD PRIMARY KEY (`idappstockcategory`);

--
-- Indexes for table `audit_trails`
--
ALTER TABLE `audit_trails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_trails_user_id_foreign` (`user_id`);

--
-- Indexes for table `bankcodes`
--
ALTER TABLE `bankcodes`
  ADD PRIMARY KEY (`idbankcodes`);

--
-- Indexes for table `bankdetails`
--
ALTER TABLE `bankdetails`
  ADD PRIMARY KEY (`idbankdetails`);

--
-- Indexes for table `bikemen`
--
ALTER TABLE `bikemen`
  ADD PRIMARY KEY (`idbikemen`),
  ADD KEY `bikemen_user_id_foreign` (`user_id`),
  ADD KEY `bikemen_region_id_foreign` (`region_id`);

--
-- Indexes for table `bikemenreviews`
--
ALTER TABLE `bikemenreviews`
  ADD PRIMARY KEY (`idbikemenreviews`),
  ADD KEY `bikemenreviews_bike_man_id_foreign` (`bike_man_id`),
  ADD KEY `bikemenreviews_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `cartsummaries`
--
ALTER TABLE `cartsummaries`
  ADD PRIMARY KEY (`idcartsummaries`),
  ADD UNIQUE KEY `cartsummaries_reference_unique` (`reference`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`idcartdetails`),
  ADD KEY `cart_details_cart_summaries_id_foreign` (`cart_summaries_id`),
  ADD KEY `cart_details_order_summaries_id_foreign` (`order_summaries_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idcategories`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`idcities`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`idcredits`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`idcustomers`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`idfavourites`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`idgeneralsettings`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`idnewsletter`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`idorderdetails`),
  ADD KEY `orderdetails_order_summaries_id_foreign` (`order_summaries_id`),
  ADD KEY `orderdetails_stock_details_id_foreign` (`stock_details_id`);

--
-- Indexes for table `orderprotein`
--
ALTER TABLE `orderprotein`
  ADD PRIMARY KEY (`idorderprotein`),
  ADD KEY `stock_id` (`stock_id`),
  ADD KEY `order_detail_id` (`order_detail_id`);

--
-- Indexes for table `ordersummaries`
--
ALTER TABLE `ordersummaries`
  ADD PRIMARY KEY (`idordersummaries`),
  ADD KEY `ordersummaries_user_id_foreign` (`user_id`),
  ADD KEY `ordersummaries_vendor_id_foreign` (`vendor_id`),
  ADD KEY `ordersummaries_bikeman_id_foreign` (`bikeman_id`),
  ADD KEY `ordersummaries_from_region_id_foreign` (`from_region_id`),
  ADD KEY `ordersummaries_to_region_id_foreign` (`to_region_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pricebreakdowns`
--
ALTER TABLE `pricebreakdowns`
  ADD PRIMARY KEY (`idpricebreakdowns`),
  ADD KEY `pricebreakdowns_from_region_id_foreign` (`from_region_id`),
  ADD KEY `pricebreakdowns_to_region_id_foreign` (`to_region_id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`idregions`),
  ADD KEY `regions_city_id_foreign` (`city_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idroles`);

--
-- Indexes for table `stockcategories`
--
ALTER TABLE `stockcategories`
  ADD PRIMARY KEY (`idstockcategories`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `app_category_id` (`app_category_id`);

--
-- Indexes for table `stockdetails`
--
ALTER TABLE `stockdetails`
  ADD PRIMARY KEY (`idstockdetails`),
  ADD KEY `stockdetails_vendor_id_foreign` (`vendor_id`),
  ADD KEY `stockdetails_stock_category_id_foreign` (`stock_category_id`);

--
-- Indexes for table `subregions`
--
ALTER TABLE `subregions`
  ADD PRIMARY KEY (`idsubregions`),
  ADD KEY `subregions_region_id_foreign` (`region_id`);

--
-- Indexes for table `trackings`
--
ALTER TABLE `trackings`
  ADD PRIMARY KEY (`idtrackings`),
  ADD KEY `trackings_cart_summaries_id_foreign` (`cart_summaries_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`idtransactions`),
  ADD KEY `transactions_cart_summaries_id_foreign` (`order_summaries_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `vendorgallery`
--
ALTER TABLE `vendorgallery`
  ADD PRIMARY KEY (`idvendorgallery`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendorpercentage`
--
ALTER TABLE `vendorpercentage`
  ADD PRIMARY KEY (`idvendorpercentage`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`idvendors`),
  ADD KEY `vendors_category_id_foreign` (`category_id`),
  ADD KEY `vendors_region_id_foreign` (`region_id`);

--
-- Indexes for table `vendorslikes`
--
ALTER TABLE `vendorslikes`
  ADD PRIMARY KEY (`idvendorlikes`),
  ADD KEY `vendor_review_id` (`vendor_review_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `vendorsreviews`
--
ALTER TABLE `vendorsreviews`
  ADD PRIMARY KEY (`idvendorsreviews`),
  ADD KEY `vendorsreviews_vendor_id_foreign` (`vendor_id`),
  ADD KEY `vendorsreviews_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `vendor_region`
--
ALTER TABLE `vendor_region`
  ADD PRIMARY KEY (`idvendorregion`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`idwithdrawals`),
  ADD KEY `withdrawals_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `idaddress` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `api_authentication`
--
ALTER TABLE `api_authentication`
  MODIFY `idapi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appstockcategory`
--
ALTER TABLE `appstockcategory`
  MODIFY `idappstockcategory` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `audit_trails`
--
ALTER TABLE `audit_trails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bankcodes`
--
ALTER TABLE `bankcodes`
  MODIFY `idbankcodes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bankdetails`
--
ALTER TABLE `bankdetails`
  MODIFY `idbankdetails` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bikemen`
--
ALTER TABLE `bikemen`
  MODIFY `idbikemen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bikemenreviews`
--
ALTER TABLE `bikemenreviews`
  MODIFY `idbikemenreviews` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cartsummaries`
--
ALTER TABLE `cartsummaries`
  MODIFY `idcartsummaries` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `idcartdetails` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idcategories` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `idcities` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `idcredits` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `idcustomers` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `idfavourites` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `idgeneralsettings` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `idnewsletter` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `idorderdetails` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orderprotein`
--
ALTER TABLE `orderprotein`
  MODIFY `idorderprotein` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ordersummaries`
--
ALTER TABLE `ordersummaries`
  MODIFY `idordersummaries` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pricebreakdowns`
--
ALTER TABLE `pricebreakdowns`
  MODIFY `idpricebreakdowns` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `idregions` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `idroles` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stockcategories`
--
ALTER TABLE `stockcategories`
  MODIFY `idstockcategories` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `stockdetails`
--
ALTER TABLE `stockdetails`
  MODIFY `idstockdetails` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `subregions`
--
ALTER TABLE `subregions`
  MODIFY `idsubregions` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trackings`
--
ALTER TABLE `trackings`
  MODIFY `idtrackings` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `idtransactions` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vendorgallery`
--
ALTER TABLE `vendorgallery`
  MODIFY `idvendorgallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `vendorpercentage`
--
ALTER TABLE `vendorpercentage`
  MODIFY `idvendorpercentage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `idvendors` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vendorslikes`
--
ALTER TABLE `vendorslikes`
  MODIFY `idvendorlikes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendorsreviews`
--
ALTER TABLE `vendorsreviews`
  MODIFY `idvendorsreviews` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor_region`
--
ALTER TABLE `vendor_region`
  MODIFY `idvendorregion` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `idwithdrawals` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `audit_trails`
--
ALTER TABLE `audit_trails`
  ADD CONSTRAINT `audit_trails_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bikemen`
--
ALTER TABLE `bikemen`
  ADD CONSTRAINT `bikemen_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`idregions`),
  ADD CONSTRAINT `bikemen_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `bikemenreviews`
--
ALTER TABLE `bikemenreviews`
  ADD CONSTRAINT `bikemenreviews_bike_man_id_foreign` FOREIGN KEY (`bike_man_id`) REFERENCES `bikemen` (`idbikemen`),
  ADD CONSTRAINT `bikemenreviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`idcustomers`);

--
-- Constraints for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `cart_details_cart_summaries_id_foreign` FOREIGN KEY (`cart_summaries_id`) REFERENCES `cartsummaries` (`idcartsummaries`),
  ADD CONSTRAINT `cart_details_order_summaries_id_foreign` FOREIGN KEY (`order_summaries_id`) REFERENCES `ordersummaries` (`idordersummaries`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`idcustomers`),
  ADD CONSTRAINT `favourites_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`idvendors`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_order_summaries_id_foreign` FOREIGN KEY (`order_summaries_id`) REFERENCES `ordersummaries` (`idordersummaries`),
  ADD CONSTRAINT `orderdetails_stock_details_id_foreign` FOREIGN KEY (`stock_details_id`) REFERENCES `stockdetails` (`idstockdetails`);

--
-- Constraints for table `orderprotein`
--
ALTER TABLE `orderprotein`
  ADD CONSTRAINT `orderprotein_ibfk_1` FOREIGN KEY (`stock_id`) REFERENCES `stockdetails` (`idstockdetails`),
  ADD CONSTRAINT `orderprotein_ibfk_2` FOREIGN KEY (`order_detail_id`) REFERENCES `orderdetails` (`idorderdetails`);

--
-- Constraints for table `ordersummaries`
--
ALTER TABLE `ordersummaries`
  ADD CONSTRAINT `ordersummaries_bikeman_id_foreign` FOREIGN KEY (`bikeman_id`) REFERENCES `bikemen` (`idbikemen`),
  ADD CONSTRAINT `ordersummaries_from_region_id_foreign` FOREIGN KEY (`from_region_id`) REFERENCES `regions` (`idregions`),
  ADD CONSTRAINT `ordersummaries_to_region_id_foreign` FOREIGN KEY (`to_region_id`) REFERENCES `regions` (`idregions`),
  ADD CONSTRAINT `ordersummaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ordersummaries_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`idvendors`);

--
-- Constraints for table `pricebreakdowns`
--
ALTER TABLE `pricebreakdowns`
  ADD CONSTRAINT `pricebreakdowns_from_region_id_foreign` FOREIGN KEY (`from_region_id`) REFERENCES `regions` (`idregions`),
  ADD CONSTRAINT `pricebreakdowns_to_region_id_foreign` FOREIGN KEY (`to_region_id`) REFERENCES `regions` (`idregions`);

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`idcities`);

--
-- Constraints for table `stockcategories`
--
ALTER TABLE `stockcategories`
  ADD CONSTRAINT `stockcategories_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`idvendors`),
  ADD CONSTRAINT `stockcategories_ibfk_2` FOREIGN KEY (`app_category_id`) REFERENCES `appstockcategory` (`idappstockcategory`);

--
-- Constraints for table `stockdetails`
--
ALTER TABLE `stockdetails`
  ADD CONSTRAINT `stockdetails_stock_category_id_foreign` FOREIGN KEY (`stock_category_id`) REFERENCES `stockcategories` (`idstockcategories`),
  ADD CONSTRAINT `stockdetails_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`idvendors`);

--
-- Constraints for table `subregions`
--
ALTER TABLE `subregions`
  ADD CONSTRAINT `subregions_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`idregions`);

--
-- Constraints for table `trackings`
--
ALTER TABLE `trackings`
  ADD CONSTRAINT `trackings_cart_summaries_id_foreign` FOREIGN KEY (`cart_summaries_id`) REFERENCES `cartsummaries` (`idcartsummaries`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_cart_summaries_id_foreign` FOREIGN KEY (`order_summaries_id`) REFERENCES `ordersummaries` (`idordersummaries`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`idroles`);

--
-- Constraints for table `vendorgallery`
--
ALTER TABLE `vendorgallery`
  ADD CONSTRAINT `vendorgallery_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`idvendors`);

--
-- Constraints for table `vendorpercentage`
--
ALTER TABLE `vendorpercentage`
  ADD CONSTRAINT `vendorpercentage_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`idvendors`);

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`idcategories`),
  ADD CONSTRAINT `vendors_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`idregions`);

--
-- Constraints for table `vendorslikes`
--
ALTER TABLE `vendorslikes`
  ADD CONSTRAINT `vendorslikes_ibfk_1` FOREIGN KEY (`vendor_review_id`) REFERENCES `vendorsreviews` (`idvendorsreviews`),
  ADD CONSTRAINT `vendorslikes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vendorsreviews`
--
ALTER TABLE `vendorsreviews`
  ADD CONSTRAINT `vendorsreviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`idcustomers`),
  ADD CONSTRAINT `vendorsreviews_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`idvendors`);

--
-- Constraints for table `vendor_region`
--
ALTER TABLE `vendor_region`
  ADD CONSTRAINT `vendor_region_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`idregions`);

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
