-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Feb 26, 2022 at 03:27 AM
-- Server version: 8.0.1-dmr
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce-ptit`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_account`
--

CREATE TABLE `accounts_account` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) COLLATE utf8_vietnamese_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone_number` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `accounts_account`
--

INSERT INTO `accounts_account` (`id`, `password`, `first_name`, `last_name`, `username`, `email`, `phone_number`, `date_joined`, `last_login`, `is_admin`, `is_staff`, `is_active`, `is_superadmin`) VALUES
(1, 'pbkdf2_sha256$320000$dQ2xcc7tKplrlOaE5cORRf$bWto+Q8zddkDy5jb30yysNGBq2qm/oiNoN0hvb47opk=', 'Hòa', 'Nguyễn', 'hoaf13', 'hoaf1306@gmail.com', '', '2022-02-23 11:39:42.191843', '2022-02-26 03:01:35.962965', 1, 1, 1, 1),
(2, 'pbkdf2_sha256$320000$UYkEbaWn9wN6PKFaOYCe1Q$SeX3v+C+Ql0Q+p6+UcQTNzBuyx8YTAEuhkeirwceDRw=', '', '', 'test', '', '', '2022-02-26 03:02:46.125421', '2022-02-26 03:02:46.125486', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add account', 1, 'add_account'),
(2, 'Can change account', 1, 'change_account'),
(3, 'Can delete account', 1, 'delete_account'),
(4, 'Can view account', 1, 'view_account'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cart item', 7, 'add_cartitem'),
(26, 'Can change cart item', 7, 'change_cartitem'),
(27, 'Can delete cart item', 7, 'delete_cartitem'),
(28, 'Can view cart item', 7, 'view_cartitem'),
(29, 'Can add cart', 8, 'add_cart'),
(30, 'Can change cart', 8, 'change_cart'),
(31, 'Can delete cart', 8, 'delete_cart'),
(32, 'Can view cart', 8, 'view_cart'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add variation', 10, 'add_variation'),
(38, 'Can change variation', 10, 'change_variation'),
(39, 'Can delete variation', 10, 'delete_variation'),
(40, 'Can view variation', 10, 'view_variation'),
(41, 'Can add review rating', 11, 'add_reviewrating'),
(42, 'Can change review rating', 11, 'change_reviewrating'),
(43, 'Can delete review rating', 11, 'delete_reviewrating'),
(44, 'Can view review rating', 11, 'view_reviewrating'),
(45, 'Can add product', 12, 'add_product'),
(46, 'Can change product', 12, 'change_product'),
(47, 'Can delete product', 12, 'delete_product'),
(48, 'Can view product', 12, 'view_product'),
(49, 'Can add payment', 13, 'add_payment'),
(50, 'Can change payment', 13, 'change_payment'),
(51, 'Can delete payment', 13, 'delete_payment'),
(52, 'Can view payment', 13, 'view_payment'),
(53, 'Can add order product', 14, 'add_orderproduct'),
(54, 'Can change order product', 14, 'change_orderproduct'),
(55, 'Can delete order product', 14, 'delete_orderproduct'),
(56, 'Can view order product', 14, 'view_orderproduct'),
(57, 'Can add order', 15, 'add_order'),
(58, 'Can change order', 15, 'change_order'),
(59, 'Can delete order', 15, 'delete_order'),
(60, 'Can view order', 15, 'view_order');

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart`
--

CREATE TABLE `carts_cart` (
  `id` bigint(20) NOT NULL,
  `cart_id` varchar(250) COLLATE utf8_vietnamese_ci NOT NULL,
  `date_added` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `carts_cart`
--

INSERT INTO `carts_cart` (`id`, `cart_id`, `date_added`) VALUES
(1, '04dfvepjduo1ys6s17jwvo1mbw9ozo0z', '2022-02-24 04:04:38.925605'),
(2, 'xet8myhko81qitvgcvxf05zu3wdqaiyv', '2022-02-25 09:04:16.054986'),
(3, 's3112lali3wcstkjdrwwtak1rn78wgds', '2022-02-25 09:21:28.383217'),
(4, 'gxedcp7yxz89fphj0dq6p2mnueg115xd', '2022-02-26 02:58:43.526854');

-- --------------------------------------------------------

--
-- Table structure for table `carts_cartitem`
--

CREATE TABLE `carts_cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `carts_cartitem`
--

INSERT INTO `carts_cartitem` (`id`, `quantity`, `is_active`, `cart_id`, `product_id`, `user_id`) VALUES
(1, 1, 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `carts_cartitem_variations`
--

CREATE TABLE `carts_cartitem_variations` (
  `id` bigint(20) NOT NULL,
  `cartitem_id` bigint(20) NOT NULL,
  `variation_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `carts_cartitem_variations`
--

INSERT INTO `carts_cartitem_variations` (`id`, `cartitem_id`, `variation_id`) VALUES
(1, 1, 1),
(2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category_category`
--

CREATE TABLE `category_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `description` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `category_image` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `category_category`
--

INSERT INTO `category_category` (`id`, `category_name`, `slug`, `description`, `category_image`) VALUES
(1, 'Áo Sơ Mi', 'ao-so-mi', 'Các loại áo sơ mi', ''),
(2, 'Giày dép', 'giay-dep', '', 'photos/categories/O1CN01MUD3xW1kYoVy8SpCl_640554696.jpg'),
(3, 'Quần Short', 'qun-short', '', ''),
(4, 'Quần Jean', 'qun-jean', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_vietnamese_ci,
  `object_repr` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-02-24 04:03:12.773586', '1', 'Quần Áo', 1, '[{\"added\": {}}]', 9, 1),
(2, '2022-02-24 04:04:28.682801', '1', 'Áo Sơ Mi Len', 1, '[{\"added\": {}}]', 12, 1),
(3, '2022-02-24 05:09:13.055122', '2', 'Giày dép', 1, '[{\"added\": {}}]', 9, 1),
(4, '2022-02-24 10:36:35.226356', '1', 'Trắng', 1, '[{\"added\": {}}]', 10, 1),
(5, '2022-02-24 10:36:46.204817', '2', 'Đen', 1, '[{\"added\": {}}]', 10, 1),
(6, '2022-02-24 10:37:30.746384', '3', 'M', 1, '[{\"added\": {}}]', 10, 1),
(7, '2022-02-24 10:37:42.055690', '4', 'S', 1, '[{\"added\": {}}]', 10, 1),
(8, '2022-02-25 09:23:00.025686', '1', 'Áo Sơ Mi Trơn Simwood Denim 1497', 2, '[{\"changed\": {\"fields\": [\"Product name\", \"Images\"]}}]', 12, 1),
(9, '2022-02-25 09:24:36.748705', '1', 'Áo Sơ Mi', 2, '[{\"changed\": {\"fields\": [\"Category name\", \"Slug\", \"Description\", \"Category image\"]}}]', 9, 1),
(10, '2022-02-25 09:25:19.097512', '1', 'Áo Sơ Mi Trơn Simwood Denim 1497', 2, '[{\"changed\": {\"fields\": [\"Price\", \"Stock\"]}}]', 12, 1),
(11, '2022-02-25 09:26:37.650070', '2', 'Áo Sơ Mi Simwood Denim 1479', 1, '[{\"added\": {}}]', 12, 1),
(12, '2022-02-25 09:27:45.134999', '3', 'Áo Sơ Mi Cộc Tay Bentino 1472', 1, '[{\"added\": {}}]', 12, 1),
(13, '2022-02-25 09:29:16.087321', '4', 'Áo Sơ Mi stripes blue 1447', 1, '[{\"added\": {}}]', 12, 1),
(14, '2022-02-25 09:31:27.232032', '4', 'Áo Sơ Mi stripes blue 1447', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(15, '2022-02-25 09:31:58.674079', '1', 'Áo Sơ Mi Trơn Simwood Denim 1497', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 12, 1),
(16, '2022-02-25 09:44:54.224271', '3', 'Quần Short', 1, '[{\"added\": {}}]', 9, 1),
(17, '2022-02-25 09:45:00.096599', '4', 'Quần Jean', 1, '[{\"added\": {}}]', 9, 1),
(18, '2022-02-25 09:46:09.564129', '5', 'Quần Jean Returner 1481', 1, '[{\"added\": {}}]', 12, 1),
(19, '2022-02-25 09:47:06.292255', '6', 'Quần Jean Simwood Denim 1474', 1, '[{\"added\": {}}]', 12, 1),
(20, '2022-02-25 09:47:24.115352', '5', 'Quần Jean Returner 1481', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 12, 1),
(21, '2022-02-25 09:48:39.080967', '7', 'Quần bơi họa tiết Q - 0668', 1, '[{\"added\": {}}]', 12, 1),
(22, '2022-02-25 09:50:32.209718', '8', 'Giày da trắng nam G - 0997', 1, '[{\"added\": {}}]', 12, 1),
(23, '2022-02-25 09:51:06.288372', '9', 'Giày da nam G - 2004', 1, '[{\"added\": {}}]', 12, 1),
(24, '2022-02-26 03:02:46.128965', '2', '', 1, '[{\"added\": {}}]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'accounts', 'account'),
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(8, 'carts', 'cart'),
(7, 'carts', 'cartitem'),
(9, 'category', 'category'),
(5, 'contenttypes', 'contenttype'),
(15, 'orders', 'order'),
(14, 'orders', 'orderproduct'),
(13, 'orders', 'payment'),
(6, 'sessions', 'session'),
(12, 'store', 'product'),
(11, 'store', 'reviewrating'),
(10, 'store', 'variation');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2022-02-23 11:38:30.123372'),
(2, 'contenttypes', '0001_initial', '2022-02-23 11:38:30.163720'),
(3, 'admin', '0001_initial', '2022-02-23 11:38:30.234770'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-23 11:38:30.239527'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-23 11:38:30.244991'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-23 11:38:30.313085'),
(7, 'auth', '0001_initial', '2022-02-23 11:38:30.455986'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-02-23 11:38:30.485555'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-02-23 11:38:30.492747'),
(10, 'auth', '0004_alter_user_username_opts', '2022-02-23 11:38:30.499345'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-02-23 11:38:30.505935'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-02-23 11:38:30.512463'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-02-23 11:38:30.528708'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-02-23 11:38:30.543116'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-02-23 11:38:30.556577'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-02-23 11:38:30.596182'),
(17, 'auth', '0011_update_proxy_permissions', '2022-02-23 11:38:30.605257'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-02-23 11:38:30.612988'),
(19, 'sessions', '0001_initial', '2022-02-23 11:38:30.642214'),
(20, 'category', '0001_initial', '2022-02-23 16:32:29.468482'),
(21, 'store', '0001_initial', '2022-02-23 16:32:29.754767'),
(22, 'carts', '0001_initial', '2022-02-23 16:32:30.052290'),
(23, 'orders', '0001_initial', '2022-02-23 16:32:30.595352'),
(24, 'store', '0002_alter_product_description', '2022-02-25 09:30:38.060661');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_vietnamese_ci NOT NULL,
  `session_data` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5ie3sepbjh9wkbncslvw76v32yvkcyw0', '.eJxVjEEOwiAQRe_C2pBCGdq6dO8ZyAwzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uzMur0uxHGh5Qd8B3LrepYy7rMpHdFH7Tpa2V5Xg737yBjy98ave09ees8Oy9JAC101AMDCkww2UipY4fYGwOU4oiDMyLoB2dHEVbvD-TsOFg:1nNnKx:ux4VHCV-NOuZNVsd-Nosx8zbAazZQgtCeDzUbcAUTsQ', '2022-03-12 03:01:35.970349'),
('s3112lali3wcstkjdrwwtak1rn78wgds', '.eJxVjEEOwiAQRe_C2pBCGdq6dO8ZyAwzSNVAUtqV8e7apAvd_vfef6mA25rD1mQJM6uzMur0uxHGh5Qd8B3LrepYy7rMpHdFH7Tpa2V5Xg737yBjy98ave09ees8Oy9JAC101AMDCkww2UipY4fYGwOU4oiDMyLoB2dHEVbvD-TsOFg:1nNWgD:MX6cV7kDuKpAh9Ig-2CqD9q6Kz1XPqZmbQO1WmNEL9g', '2022-03-11 09:14:25.082898');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` bigint(20) NOT NULL,
  `order_number` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `address_line_1` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `address_line_2` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `order_note` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `order_total` double NOT NULL,
  `tax` double NOT NULL,
  `status` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `ip` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `is_ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderproduct`
--

CREATE TABLE `orders_orderproduct` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderproduct_variations`
--

CREATE TABLE `orders_orderproduct_variations` (
  `id` bigint(20) NOT NULL,
  `orderproduct_id` bigint(20) NOT NULL,
  `variation_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_payment`
--

CREATE TABLE `orders_payment` (
  `id` bigint(20) NOT NULL,
  `payment_id` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `amount_paid` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `description` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `product_name`, `slug`, `description`, `price`, `images`, `stock`, `is_available`, `created_date`, `modified_date`, `category_id`) VALUES
(1, 'Áo Sơ Mi Trơn Simwood Denim 1497', 'ao-s-mi-len', 'ÁO SƠ MI TRƠN SIMWOOD DENIM 1497\r\n\r\nKIỂU DÁNG: Slim Fit\r\n\r\nÁo phom slimfit ôm vừa vặn, chuẩn dáng, không gò bó, thoải mái khi mặc.\r\n\r\nCHẤT LIỆU: 48% Bamboo; 49% Polyester; 3% Spandex\r\n\r\nChất vải mềm mịn, thoáng mát và giữ phom dáng cực tốt, co giãn nhẹ luôn thoải mái, chống tia cực tím tác động lên da.\r\n\r\nĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Thiết kế basic trơn dễ mặc.\r\n\r\n- Cổ áo và tay áo chắc chắn, lên form đẹp hơn.\r\n\r\n- Màu sắc nhã nhặn, dễ dàng phối với bất kì loại áo nào để có một look đồ thanh lịch, thời trang.\r\n\r\n- Diện đi làm, đi chơi đều phù hợp.\r\n\r\nHƯỚNG DẪN BẢO QUẢN\r\n\r\n- Không ngâm trong chất tẩy rửa quá lâu sẽ làm phai, bạc màu vải.\r\n\r\n- Phân loại trước khi giặt để tránh tình trạng phai màu từ quần áo khác sang.\r\n\r\n- Phơi áo tại nơi thông thoáng, nhiều gió, tránh phơi trực tiếp dưới ánh mặt trời.\r\n\r\n- Không là với nhiệt độ cao.', 450000, 'photos/products/Áo_Sơ_Mi_Trơn_Simwood_Denim_1497.jpg', 8000, 1, '2022-02-24 04:04:28.681979', '2022-02-25 09:31:58.672961', 1),
(2, 'Áo Sơ Mi Simwood Denim 1479', 'ao-s-mi-simwood-denim-1479', 'SƠ MI KAKI SIMWOOD DENIM 1479\r\n\r\nKIỂU DÁNG: Regular fit\r\nSơ mi phom regular fit ôm vừa phải, tôn dáng, mặc rất thoải mái và dễ chịu.\r\n\r\nCHẤT LIỆU: 100% cotton\r\nChất vải có độ dày vừa phải, mềm mát, thoáng khí. Cấu trúc bề mặt vải chắc chắn, bền bỉ, ít nhăn và không xù lông trong quá trình sử dụng.\r\n\r\nĐẶC ĐIỂM NỔI BẬT\r\n- Thiết kế hai túi ngực với viền túi bản to trẻ trung, khỏe khoắn\r\n- Phối khuy màu nổi bật, tinh tế trên nền vải chính\r\n- Có thể diện đơn hoặc mặc khoác ngoài.', 465000, 'photos/products/Áo_Sơ_Mi_Simwood_Denim_1479.jpg', 123, 1, '2022-02-25 09:26:37.648109', '2022-02-25 09:26:37.648176', 1),
(3, 'Áo Sơ Mi Cộc Tay Bentino 1472', 'ao-s-mi-cc-tay-bentino-1472', '', 395000, 'photos/products/Áo_Sơ_Mi_Cộc_Tay_Bentino_1472.jpg', 236, 1, '2022-02-25 09:27:45.133746', '2022-02-25 09:27:45.133795', 1),
(4, 'Áo Sơ Mi stripes blue 1447', 'ao-s-mi-stripes-blue-1447', 'Mô tả\r\nSƠ MI KẺ SỌC STRIPES BLUE 1447\r\n\r\nKIỂU DÁNG: Slim Fit\r\nSơ mi phom ôm chuẩn dáng, tôn dáng người mặc.\r\n\r\nCHẤT LIỆU: 100% cotton\r\nChất vải mịn thoáng, thân thiện với làn da, không nhăn khi sử dụng. \r\n\r\nĐẶC ĐIỂM NỔI BẬT\r\n- Họa tiết sọc dọc phối ba màu: xanh, trắng, xám cùng sự kết hợp giữa sọc dọc bản to và bản nhí tạo nên nền vải màu sắc trang nhã, tươi mát.\r\n- Cổ áo hai khuy và tay áo may chắc chắn, cứng cáp giữ áo luôn chuẩn phom\r\n- Diện cùng quần âu, kaki tạo nên một bản phối hoàn hảo.\r\n\r\nHƯỚNG DẪN BẢO QUẢN\r\n\"- Lần giặt đầu tiên chỉ xả nước lạnh ( không dùng nước nóng hay nước giặt) rồi phơi khô để sợi vải và màu áo không bị xù \r\n- Tốt nhất nên giặt tay, nhiệt độ thích hợp là từ 30 - 40 độ giúp áo được giặt sạch mà không lo hư tổn\r\n- Nếu giặt máy, nên chọn chế độ giặt nhẹ, phù hợp với chất vải \r\n- Không nên sử dụng chất giặt tẩy. \r\n- Không nên ngâm chung với trang phục ra bị màu. \r\n- Khi phơi lộn trái và không phơi trực tiếp dưới ánh nắng mặt trời', 195000, 'photos/products/Áo_Sơ_Mi_stripes_blue_1447.jpg', 45, 1, '2022-02-25 09:29:16.086167', '2022-02-25 09:31:27.229919', 1),
(5, 'Quần Jean Returner 1481', 'qun-jean-returner-1481', 'Mô tả\r\nQUẦN JEAN RETURNER 1481\r\n\r\nKIỂU DÁNG: Skinny\r\n\r\nQuần jeans phom ôm chân vừa phải mang lại cảm giác tự tin, thoải mái khi mặc, tạo cảm giác chân dài và thon gọn hơn.\r\n\r\nCHẤT LIỆU: 97% cotton, 3% elastane \r\n\r\nChất vải dày dặn vừa phải nhưng vẫn đảm bảo độ mềm mịn, co giãn nhẹ mặc êm và thoải mái. Vải được xử lý qua các công đoạn wash nên giữ màu khá tốt.\r\n\r\nĐẶC ĐIỂM NỔI BẬT\r\n\r\n- Quần được xử lý bằng công nghệ wash màu hiện đại, nên bền bỉ, không lo bạc, phai màu sau thời gian sử dụng.\r\n\r\n- Chữ thêu trong lưng quần rõ nét, cẩn thận.\r\n\r\n- Đường may cắt đúp tỉ mỉ, cẩn thận, chắc chắn.\r\n\r\n- Tone màu ghi trẻ trung, năng động, dễ phối với mọi kiểu dáng áo.\r\n\r\nHƯỚNG DẪN BẢO QUẢN\r\n\r\n- Lưu ý với lần giặt đầu tiên này bạn không nên sử dụng xà phòng.\r\n\r\n- Luôn luôn lộn ngược mặt trái và giặt bằng nước lạnh trong những lần giặt tiếp theo \r\n\r\n- Khi phơi quần jeans cũng nên lộn ngược mặt trái và phơi ở nơi thoáng mát, không nên phơi trực tiếp dưới ánh nắng.', 695000, 'photos/products/Quần_Jean_Returner_1481.jpg', 45, 1, '2022-02-25 09:46:09.560919', '2022-02-25 09:47:24.113036', 4),
(6, 'Quần Jean Simwood Denim 1474', 'qun-jean-simwood-denim-1474', '', 595000, 'photos/products/Quần_Jean_Simwood_Denim_1474.jpg', 12, 1, '2022-02-25 09:47:06.289537', '2022-02-25 09:47:06.289570', 4),
(7, 'Quần bơi họa tiết Q - 0668', 'qun-bi-ha-tit-q-0668', '', 48000, 'photos/products/Quần_bơi_họa_tiết_Q_-_0668.jpg', 12, 1, '2022-02-25 09:48:39.079757', '2022-02-25 09:48:39.079798', 3),
(8, 'Giày da trắng nam G - 0997', 'giay-da-trng-nam-g-0997', '', 450000, 'photos/products/Giày_da_trắng_nam_G_-_0997.jpg', 20, 1, '2022-02-25 09:50:32.208597', '2022-02-25 09:50:32.208638', 2),
(9, 'Giày da nam G - 2004', 'giay-da-nam-g-2004', '', 780000, 'photos/products/Giầy_Da_Nam_G_2004.jpg', 75, 1, '2022-02-25 09:51:06.287234', '2022-02-25 09:51:06.287272', 2);

-- --------------------------------------------------------

--
-- Table structure for table `store_reviewrating`
--

CREATE TABLE `store_reviewrating` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `review` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `rating` double NOT NULL,
  `ip` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_variation`
--

CREATE TABLE `store_variation` (
  `id` bigint(20) NOT NULL,
  `variation_category` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `variation_value` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `store_variation`
--

INSERT INTO `store_variation` (`id`, `variation_category`, `variation_value`, `is_active`, `created_date`, `product_id`) VALUES
(1, 'color', 'Trắng', 1, '2022-02-24 10:36:35.225152', 1),
(2, 'color', 'Đen', 1, '2022-02-24 10:36:46.201523', 1),
(3, 'size', 'M', 1, '2022-02-24 10:37:30.744017', 1),
(4, 'size', 'S', 1, '2022-02-24 10:37:42.045724', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_account`
--
ALTER TABLE `accounts_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` (`cart_id`),
  ADD KEY `carts_cartitem_product_id_acd010e4_fk_store_product_id` (`product_id`),
  ADD KEY `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_cartitem_variations_cartitem_id_variation_id_5f8efaf5_uniq` (`cartitem_id`,`variation_id`),
  ADD KEY `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` (`variation_id`);

--
-- Indexes for table `category_category`
--
ALTER TABLE `category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_payment_id_46928ccc_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_order_user_id_e9b59eb1_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` (`order_id`),
  ADD KEY `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` (`payment_id`),
  ADD KEY `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` (`product_id`),
  ADD KEY `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_orderproduct_vari_orderproduct_id_variatio_8c028ee7_uniq` (`orderproduct_id`,`variation_id`),
  ADD KEY `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` (`variation_id`);

--
-- Indexes for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_payment_user_id_cfa9f321_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk_category_category_id` (`category_id`);

--
-- Indexes for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_reviewrating_product_id_2e1974d6_fk_store_product_id` (`product_id`),
  ADD KEY `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `store_variation`
--
ALTER TABLE `store_variation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_variation_product_id_e4f08cbc_fk_store_product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_account`
--
ALTER TABLE `accounts_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `carts_cart`
--
ALTER TABLE `carts_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_category`
--
ALTER TABLE `category_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_payment`
--
ALTER TABLE `orders_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_variation`
--
ALTER TABLE `store_variation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD CONSTRAINT `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `carts_cartitem_product_id_acd010e4_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `carts_cartitem_variations`
--
ALTER TABLE `carts_cartitem_variations`
  ADD CONSTRAINT `carts_cartitem_varia_cartitem_id_8be23372_fk_carts_car` FOREIGN KEY (`cartitem_id`) REFERENCES `carts_cartitem` (`id`),
  ADD CONSTRAINT `carts_cartitem_varia_variation_id_ef9f9ee3_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_payment_id_46928ccc_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_order_user_id_e9b59eb1_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD CONSTRAINT `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_orderproduct_payment_id_492ed997_fk_orders_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `orders_payment` (`id`),
  ADD CONSTRAINT `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_orderproduct_variations`
--
ALTER TABLE `orders_orderproduct_variations`
  ADD CONSTRAINT `orders_orderproduct__orderproduct_id_0f116a3b_fk_orders_or` FOREIGN KEY (`orderproduct_id`) REFERENCES `orders_orderproduct` (`id`),
  ADD CONSTRAINT `orders_orderproduct__variation_id_5dfd0e51_fk_store_var` FOREIGN KEY (`variation_id`) REFERENCES `store_variation` (`id`);

--
-- Constraints for table `orders_payment`
--
ALTER TABLE `orders_payment`
  ADD CONSTRAINT `orders_payment_user_id_cfa9f321_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk_category_category_id` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`);

--
-- Constraints for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD CONSTRAINT `store_reviewrating_product_id_2e1974d6_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `store_variation`
--
ALTER TABLE `store_variation`
  ADD CONSTRAINT `store_variation_product_id_e4f08cbc_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
