-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 23, 2021 lúc 04:08 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `blog`, `order`, `other`, `report`, `role`, `return`, `contact`, `comment`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Mai Công Chuyên', '0349982248', 'chuyendaik99@gmail.com', NULL, '$2y$10$ponFE9YSBCU/4oTxfJMQZOEjwg4QwBTAYNbzAUb84NeqVtnzOXDU6', NULL, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, '2020-01-04 12:28:45'),
(12, 'Đỗ Xuân Hòa', '0353830798', 'hoadx.utt@gmail.com', NULL, '$2y$10$xn77pkS/tbYyZllEuI3eI.k2u8PBXFORPGO84Jdmj6IYIKas1QtUO', NULL, '1', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', 2, NULL, NULL),
(14, 'Hòa 2', '0353830798', 'hoa@gmail.com', NULL, '$2y$10$kk/izfk4pAGrO35NOZX7fOZ8hFwuDxdAiLcz04GWljMRquqNBPLTm', NULL, '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(14, 'Torano', 'media/brand/180721_05_25_58.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(22, 'POLO', '2020-09-15 18:52:34', '2020-09-15 18:52:34'),
(23, 'ÁO THUN', '2020-09-15 18:52:55', '2020-09-15 18:52:55'),
(24, 'SƠ MI CỘC', '2020-09-15 18:53:19', '2020-09-15 18:53:19'),
(25, 'SƠ MI DÀI', '2020-09-15 18:54:22', '2020-09-15 18:54:22'),
(26, 'QUẦN SHORT', '2020-09-15 18:54:42', '2020-09-15 18:54:42'),
(27, 'QUẦN DÀI', '2020-09-15 18:54:55', '2020-09-15 18:54:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(5, 'Tuấn Anh', '0347777977', 'tuananh@gmail.com', 'Shop của bạn nhiều quần áo đẹp quá', NULL, NULL),
(6, 'Chuyên', '0346820222', 'chuyen@gmail.com', 'Nhiều mẫu mã ưng ý, giá cả hợp lý', NULL, NULL),
(7, 'Khánh', '0345666888', 'khanh@gmail.com', 'Perfect!', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(4, 'FIRSTORDER', '50000', NULL, NULL),
(5, 'FREESHIP', '10000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2020_01_04_184258_create_categories_table', 2),
(6, '2020_01_04_184506_create_subcategories_table', 2),
(7, '2020_01_04_184544_create_brands_table', 2),
(8, '2020_01_09_211343_create_coupons_table', 3),
(9, '2020_01_09_222125_create_newslaters_table', 4),
(10, '2020_01_11_192542_create_products_table', 5),
(11, '2020_01_17_192520_create_post_category_table', 6),
(12, '2020_01_17_192619_create_posts_table', 6),
(13, '2020_01_24_192923_create_wishlists_table', 7),
(14, '2020_02_01_193132_create_settings_table', 8),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 9),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 9),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9),
(18, '2016_06_01_000004_create_oauth_clients_table', 9),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9),
(20, '2020_02_06_192506_create_orders_table', 10),
(21, '2020_02_06_192627_create_orders_details_table', 10),
(22, '2020_02_06_192704_create_shipping_table', 10),
(23, '2020_02_11_195424_create_seo_table', 11),
(24, '2020_02_15_195532_create_sitesetting_table', 12),
(25, '2020_02_20_191513_create_contact_table', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newslaters`
--

INSERT INTO `newslaters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(4, 'chuyen@gmail.com', '2021-04-26 15:04:16', NULL),
(5, 'hoadx.utt@gmail.com', '2021-04-28 05:57:22', NULL),
(6, 'khanh@gmail.com', '2021-04-28 05:57:48', NULL),
(7, 'chuyendaik99@gmail.com', '2021-04-28 05:57:55', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
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
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'YsTOBdBJGrnS1EJpmhsQivXouyuFhDxIBeoEwJWF', 'http://localhost', 1, 0, 0, '2020-02-04 13:02:43', '2020-02-04 13:02:43'),
(2, NULL, 'Laravel Password Grant Client', 'pJ5V9FuM0OuvrMO4wwN99XjCPlBvwBy0FwygbehB', 'http://localhost', 0, 1, 0, '2020-02-04 13:02:44', '2020-02-04 13:02:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-02-04 13:02:44', '2020-02-04 13:02:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `return_order`, `month`, `date`, `year`, `status_code`, `created_at`, `updated_at`) VALUES
(31, '13', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '834000', '10000', '0', '844000', '3', '2', 'April', '25-04-21', '2021', '753099', NULL, NULL),
(32, '13', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '718000', '10000', '0', '728000', '3', '0', 'April', '25-04-21', '2021', '508929', NULL, NULL),
(33, '15', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '540000', '10000', '0', '550000', '3', '0', 'April', '25-04-21', '2021', '154701', NULL, NULL),
(34, '14', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '280000', '10000', '0', '290000', '3', '0', 'April', '26-04-21', '2021', '279845', NULL, NULL),
(35, '15', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '359000', '10000', '0', '369000', '3', '0', 'April', '27-04-21', '2021', '197214', NULL, NULL),
(36, '15', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '114000', '10000', '0', '124000', '3', '0', 'April', '27-04-21', '2021', '276920', NULL, NULL),
(37, '16', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '569000', '10000', '0', '579000', '3', '0', 'April', '28-04-21', '2021', '766528', NULL, NULL),
(38, '16', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '0', '10000', '0', '10000', '4', '0', 'April', '28-04-21', '2021', '111600', NULL, NULL),
(39, '14', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '494000', '10000', '0', '504000', '3', '0', 'April', '28-04-21', '2021', '940435', NULL, NULL),
(40, '14', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '228000', '10000', '0', '238000', '3', '0', 'May', '04-05-21', '2021', '542620', NULL, NULL),
(41, '13', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '255000', '10000', '0', '265000', '3', '0', 'May', '09-05-21', '2021', '741389', NULL, NULL),
(44, '25', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '359000', '10000', '0', '369000', '3', '0', 'May', '11-05-21', '2021', '176351', NULL, NULL),
(45, '27', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '145000', '10000', '0', '155000', '3', '0', 'May', '11-05-21', '2021', '991164', NULL, NULL),
(46, '30', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '380000', '10000', '0', '390000', '3', '0', 'May', '15-05-21', '2021', '624250', NULL, NULL),
(47, '30', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '280000', '10000', '0', '290000', '3', '0', 'May', '15-05-21', '2021', '560035', NULL, NULL),
(48, '31', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '520000', '10000', '0', '530000', '3', '0', 'July', '11-07-21', '2021', '939812', NULL, NULL),
(49, '32', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '4974000', '10000', '0', '4984000', '3', '0', 'July', '11-07-21', '2021', '644216', NULL, NULL),
(52, '13', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '538000', '10000', '0', '548000', '3', '0', 'July', '12-07-21', '2021', '898175', NULL, NULL),
(53, '15', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '625000', '10000', '0', '635000', '3', '0', 'July', '12-07-21', '2021', '968391', NULL, NULL),
(54, '15', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '149000', '10000', '0', '209000', '3', '0', 'July', '12-07-21', '2021', '605909', NULL, NULL),
(55, '14', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '104000', '10000', '0', '124000', '3', '0', 'July', '12-07-21', '2021', '255546', NULL, NULL),
(56, '15', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '252000', '10000', '0', '262000', '2', '0', 'July', '13-07-21', '2021', '125158', NULL, NULL),
(57, '15', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '175000', '10000', '0', '185000', '4', '0', 'July', '13-07-21', '2021', '504384', NULL, NULL),
(58, '13', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '252000', '10000', '0', '262000', '0', '0', 'July', '14-07-21', '2021', '345879', NULL, NULL),
(59, '13', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '252000', '10000', '0', '262000', '3', '0', 'July', '15-07-21', '2021', '486030', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(34, 29, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '2', '114000', '228000', NULL, NULL),
(35, 29, '40', 'Áo phông ngắn tay họa tiết in logo Torano TS061', 'Trắng', 'XL', '1', '110000', '110000', NULL, NULL),
(36, 29, '49', 'Áo phông ngắn tay họa tiết TS069', 'Xám', 'XL', '1', '100000', '100000', NULL, NULL),
(37, 30, '56', 'Sơ mi dài tay họa tiết Torano TB150', 'Xanh', 'XL', '1', '380000', '380000', NULL, NULL),
(38, 30, '53', 'Áo polo họa tiết tropical leaf Torano', 'Xanh', 'XL', '1', '245000', '245000', NULL, NULL),
(39, 30, '30', 'Áo polo melange', 'Nâu', 'XL', '1', '304000', '304000', NULL, NULL),
(40, 30, '41', 'Áo Sơ mi ngắn tay Pazzini họa tiết S01', 'Trắng', 'XL', '1', '175000', '175000', NULL, NULL),
(41, 31, '51', 'Áo phông ngắn tay họa tiết Biker Torano', 'Trắng', 'XL', '1', '100000', '100000', NULL, NULL),
(42, 31, '50', 'Áo phông ngắn tay họa tiết Sunset Beach Torano', 'Xanh', 'XL', '1', '150000', '150000', NULL, NULL),
(43, 31, '36', 'Áo polo kẻ ngang Torano TP037', 'Trắng Vàng', 'XL', '1', '264000', '264000', NULL, NULL),
(44, 31, '40', 'Áo phông ngắn tay họa tiết in logo Torano TS061', 'Trắng', 'XL', '2', '110000', '220000', NULL, NULL),
(45, 31, '51', 'Áo phông ngắn tay họa tiết Biker Torano', NULL, NULL, '1', '100000', '100000', NULL, NULL),
(46, 32, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '2', '114000', '228000', NULL, NULL),
(47, 32, '53', 'Áo polo họa tiết tropical leaf Torano', 'Xanh', 'XL', '2', '245000', '490000', NULL, NULL),
(48, 33, '55', 'Áo polo kẻ ngang in logo Torano TP097', 'Xanh', 'XL', '1', '280000', '280000', NULL, NULL),
(49, 33, '45', 'Áo phông ngắn tay kẻ ngang Torano TS020', 'Kẻ vàng', 'L', '1', '110000', '110000', NULL, NULL),
(50, 33, '50', 'Áo phông ngắn tay họa tiết Sunset Beach Torano', 'Xanh', 'XL', '1', '150000', '150000', NULL, NULL),
(51, 34, '55', 'Áo polo kẻ ngang in logo Torano TP097', 'Xanh', 'XL', '1', '280000', '280000', NULL, NULL),
(52, 35, '57', 'Áo polo họa tiết active Squarebox Torano', 'Xanh nhạt', 'XL', '1', '245000', '245000', NULL, NULL),
(53, 35, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '1', '114000', '114000', NULL, NULL),
(54, 36, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '1', '114000', '114000', NULL, NULL),
(55, 37, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '1', '114000', '114000', NULL, NULL),
(56, 37, '54', 'Áo polo họa tiết Baseball Torano', 'Trắng', 'XL', '1', '280000', '280000', NULL, NULL),
(57, 37, '41', 'Áo Sơ mi ngắn tay Pazzini họa tiết S01', 'Trắng', 'XL', '1', '175000', '175000', NULL, NULL),
(58, 39, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '1', '114000', '114000', NULL, NULL),
(59, 39, '56', 'Sơ mi dài tay họa tiết Torano TB150', NULL, NULL, '1', '380000', '380000', NULL, NULL),
(60, 40, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '2', '114000', '228000', NULL, NULL),
(61, 41, '43', 'Áo phông ngắn tay họa tiết Cupid Torano', 'Đen', 'XL', '1', '145000', '145000', NULL, NULL),
(62, 41, '48', 'Áo phông ngắn tay họa tiết in logo Torano TS103', 'Đen', 'XL', '1', '110000', '110000', NULL, NULL),
(63, 44, '57', 'Áo polo họa tiết active Squarebox Torano', 'Xanh nhạt', 'XL', '1', '245000', '245000', NULL, NULL),
(64, 44, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '1', '114000', '114000', NULL, NULL),
(65, 45, '43', 'Áo phông ngắn tay họa tiết Cupid Torano', 'Đen', 'XL', '1', '145000', '145000', NULL, NULL),
(66, 46, '55', 'Áo polo kẻ ngang in logo Torano TP097', 'Xanh', 'XL', '1', '280000', '280000', NULL, NULL),
(67, 46, '46', 'Áo phông ngắn tay bo phối họa tiết Torano', 'Đen', 'XL', '1', '100000', '100000', NULL, NULL),
(68, 47, '54', 'Áo polo họa tiết Baseball Torano', 'Trắng', 'XL', '1', '280000', '280000', NULL, NULL),
(69, 48, '53', 'Áo polo họa tiết tropical leaf Torano', 'Xanh', 'XL', '1', '245000', '245000', NULL, NULL),
(70, 48, '48', 'Áo phông ngắn tay họa tiết in logo Torano TS103', 'Đen', 'XL', '1', '110000', '110000', NULL, NULL),
(71, 48, '31', 'Áo polo họa tiết tropical fruit Torano', 'Đen', 'XL', '1', '165000', '165000', NULL, NULL),
(72, 49, '69', 'Áo polo phối cổ Tri-color thêu tay TP278', 'Đen', 'M', '1', '252000', '252000', NULL, NULL),
(73, 49, '69', 'Áo polo phối cổ Tri-color thêu tay TP278', 'Trắng', 'L', '1', '252000', '252000', NULL, NULL),
(74, 49, '56', 'Sơ mi dài tay họa tiết Torano TB150', 'Xanh', 'L', '1', '380000', '380000', NULL, NULL),
(75, 49, '66', 'Áo polo trơn thêu logo trước ngực TP381 (TP301)', 'Xám', 'L', '10', '269000', '2690000', NULL, NULL),
(76, 49, '54', 'Áo polo họa tiết Baseball Torano', 'Trắng', 'L', '5', '280000', '1400000', NULL, NULL),
(77, 52, '66', 'Áo polo trơn thêu logo trước ngực TP381 (TP301)', 'Xám', 'L', '1', '269000', '269000', NULL, NULL),
(78, 52, '66', 'Áo polo trơn thêu logo trước ngực TP381 (TP301)', 'Trắng', 'L', '1', '269000', '269000', NULL, NULL),
(79, 53, '56', 'Sơ mi dài tay họa tiết Torano TB150', 'Xanh', 'XL', '1', '380000', '380000', NULL, NULL),
(80, 53, '57', 'Áo polo họa tiết active Squarebox Torano', 'Xanh nhạt', 'XL', '1', '245000', '245000', NULL, NULL),
(81, 54, '68', 'Áo thun in hình NYC Vintage TS706', 'Trắng', 'M', '1', '199000', '199000', NULL, NULL),
(82, 55, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '1', '114000', '114000', NULL, NULL),
(83, 56, '69', 'Áo polo phối cổ Tri-color thêu tay TP278', 'Đen', 'M', '1', '252000', '252000', NULL, NULL),
(84, 57, '67', 'Áo polo họa tiết The Garden Torano TP038', 'Xanh', 'S', '1', '175000', '175000', NULL, NULL),
(85, 58, '69', 'Áo polo phối cổ Tri-color thêu tay TP278', 'Đen', 'M', '1', '252000', '252000', NULL, NULL),
(86, 59, '69', 'Áo polo phối cổ Tri-color thêu tay TP278', 'Đen', 'M', '1', '252000', '252000', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_vn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_vn` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_vn`, `post_image`, `details_en`, `details_vn`, `created_at`, `updated_at`) VALUES
(11, 4, 'Style fashion 2021', 'Tại sao áo POLO trở thành vũ khí lợi hại của phái mạnh?', 'media/post/1705599683307172.jpg', '<p>Fashion</p>', '<p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">1. Áo polo là gì?</span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; font-weight: 700;\">Áo thun polo</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">&nbsp;được may bằng chất vải thun co giãn, với khả năng thấm hút mồ hôi cực tốt, đem đến cho người dùng sự thoải mái, dễ chịu và thông thoáng trong quá trình sử dụng.</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Khác biệt hoàn toàn với áo thun cổ tròn, khi mặc áo thun polo sẽ giúp bạn có được vẻ đẹp sang trọng, lịch sự từ đó toát lên được nét trẻ trung, năng động cho người mặc.&nbsp;</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Đây cũng chính là điều khác biệt mà&nbsp;</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; font-weight: 700;\">áo polo</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">&nbsp;có được, cũng chính ưu điểm nổi bật này mà ngày nay rất nhiều người lựa chọn kiểu áo nào làm phong cách riêng cho chính mình.&nbsp;</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">2. Các kiểu dáng áo Polo</span></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">2.1. Áo Polo kiểu dáng classic-fit</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; font-weight: 700;\">Classic-Fit</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">&nbsp;là kiểu dáng áo thun mang phong cách cổ điển, kiểu dáng áo suông không ôm body và dĩ nhiên không có bất kỳ một chi tiết bó sát cơ thể nào</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Đây được xem là kiểu dáng với thiết kế rộng rãi, thoáng mát giúp cho người mặc cảm thấy thoải mái, dễ chịu và đặc biệt là không gây cảm giác gò bó, khó chịu trong suốt quá trình sử dụng, rất thích hợp để mặc khi chơi thể thao và những công việc vận động nhiều</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 12px; text-align: center;\">Về thiết kế áo polo được cắt rộng từ phần nách chạy dọc xuống cho đến phần eo, thiết kế này giúp cho người mặc cảm thấy thoải mái hơn trong quá trình vận động. Vì là kiểu dáng áo polo cổ đoeẻm nên Classic-Fit phù hợp với hầu hết dáng người của nam giới.</span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Với những người cao to, có cân nặng quá khổ thì đây được xem là trang phục lý tưởng mà bạn không thể bỏ qua khi lựa chọn. Chính những chiếc áo polo Classic-Fit sẽ giúp bạn che đi những khuyết điểm trên thân hình của mình, giúp bạn trở nên gọn gàng, cân đối và năng động hơn.</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><em style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(232, 239, 245); font-size: 16px; background-color: rgb(70, 85, 104);\"><span style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px;\">Vậy nên nếu bạn là người có thân hình cao to hãy chọn kiểu dáng&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">áo polo Classic-Fit</span>&nbsp;này nhé.&nbsp;</span></em></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">2.2. Áo polo kiểu dáng Regular-fit</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><em style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; color: rgb(232, 239, 245); font-size: 16px; background-color: rgb(70, 85, 104);\"><span style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px;\"></span></em></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Được cách tân từ chính kiểu áo polo Classic-Fit chính vì thế mà&nbsp;</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; font-weight: 700;\">Áo polo kiểu dáng Regular-Fit</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">&nbsp;hiện đại hơn rất nhiều. Nếu Classic- Fit không có đường eo mà chỉ là kiểu áo suông thì Regular-Fit lại trái ngược hoàn toàn.&nbsp;</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Với vòng eo được bóp gọn cùng với đó là nách và ngực được cắt rộng bằng kiểu Classic- Fit. Mặc dù là kiểu ôm dáng tuy nhiên người mặc vẫn cảm thấy thoải mái, thông thoáng khi mặc.</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/62336/cl8a3029%20copy.jpg\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: 1000px; width: 800px;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Nếu bạn là người có thân hình cân đối với chiều cao và cân nặng lý tưởng thì đây là kiểu áo thời thượng mà bạn không nên bỏ qua cho mình trong quá trình sử dụng.</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Kiểu dáng&nbsp;</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; font-weight: 700;\">Regular-Fit</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">&nbsp;sẽ giúp bạn tôn lên vóc dáng của mình, với cơ thể cân đối, mạnh mẽ. Với những người có dáng người hơi đầy đặn một chút có thể chọn ngay kiểu áo này cho mình. Bởi những đường may hoàn hảo của kiểu dáng Regular-Fit sẽ phần nào giúp bạn che đi những khuyết điểm của cơ thể, giúp bạn trở nên gọn gàng, tinh tế hơn khi mặc</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Chính những ưu điểm nổi trội mà&nbsp;</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; font-weight: 700;\">áo polo Regular-Fit</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">&nbsp;đem lại mà hiện nay kiểu dáng này được xem là sự lựa chọn phổ biến của nhiều người. Giúp người mặc trở nên năng động, trẻ trung và nổi bật hơn trong mắt người nhìn.&nbsp;</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">2.3. Áo Polo kiểu dáng Slim-fit</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px; font-weight: 700;\">Slim-Fit</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">&nbsp;chính là cái tên được sử dụng để mô tả kiểu dáng áo polo ôm sát body của người mặc cụ thể là phần eo, ngực và vai</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Đây chính là kiểu áo hoàn hảo làm nổi bật lên những vóc dáng cơ thể có body “chuẩn đét” với cơ bắp cuồn cuộn, ngực 6 múi, tất cả các vòng đều hoàn hảo và không có bất kỳ vòng nào phô trương quá mức.</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/62336/tp077%20(2).jpg\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: 1000px; width: 800px;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Đối với những anh chàng có thân hình gầy được khuyên nên lựa chọn&nbsp;<span style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; font-weight: 700;\">áo polo Slim-Fit</span>. Bởi những đường may ôm gọn phần eo, ngực và vai sẽ giúp cho bạn có được vóc dáng thon gọn và đầy đặn hơn.&nbsp;</span><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">Từ đó giúp cho những người gầy không còn cảm giác tự tin về thân hình của mình&nbsp; nữa. Kiểu dáng Slim-Fit chủ yếu phù hợp với những người trẻ, có cơ thể cân đối với những số đo cơ thể hoàn hảo</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">3. Tại sao Áo Polo trở thành vũ khí lợi hại của các đấng mày râu?</span></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\">3.1.&nbsp;</span></span></span>LỊCH LÃM NƠI CÔNG SỞ</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: arial, helvetica, sans-serif; margin: 0px; padding: 0px;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\">Thời trang nơi công sở luôn là chủ đề mà nhiều bạn quan tâm với những mẫu áo sơ mi hay áo thun polo có cổ cao cấp được nhiều quý ông lựa chọn. Set đồ là sự kết hợp trẻ trung, thanh lịch lại không kém phần lịch sự. Khi&nbsp;</span></span><a href=\"https://owen.vn/ao/polo.html\" style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px; color: rgb(40, 40, 40); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; font-size: 15px;\"><span style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">diện áo polo công sở&nbsp;</span></a><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\">bạn nên kết hợp với quần âu cho đúng chuẩn soái ca, hoặc 1 chiếc áo thun polo cùng áo brazer.</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/62336/175665542_2218377938296536_5015723642279347676_n.jpg\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; max-width: 100%; width: 800px; height: auto !important;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">3.2.&nbsp;SÀNH ĐIỆU VÀ TRẺ TRUNG KHI ĐI HẸN HÒ, DU LỊCH</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\">Khoác trên mình chiếc áo thun nam Polo bạn sẽ là chàng trai đầy nam tính và lịch thiệp. Đảm bảo, các nàng sẽ đổ gục với vẻ bề ngoài trong bộ&nbsp; áo Polo ấy.</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\">Áo thun hàng hiệu nam phối với quần Jeans, đi giày lười, mix thêm đồng hồ làm phụ kiện sẽ là set đồ thích hợp mỗi khi đi hẹn hò cùng nàng vào những ngày cuối tuần. Bạn có thể mặc đi xem phim, cà phê hay dạo công viên cũng rất hợp.</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/62336/179230755_2223907111076952_7950669694129210383_n.jpg\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; max-width: 100%; width: 800px; height: auto !important;\"></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">3.3.&nbsp;NĂNG ĐỘNG KHI CHƠI THỂ THAO</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\">Không như áo sơ mi, chỉ để diện đi công sở hay đi sự kiện. Chiếc áo thun nam hàng hiệu Polo còn được tận dụng tối đa trong những buổi chơi thể thao bất tận. Trải qua nhiều giai đoạn phát triển của ngành thời trang, chiếc áo Polo đã được ứng dụng, trở thành&nbsp;</span></span><a href=\"https://owen.vn/ao/polo.html\" style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px; color: rgb(40, 40, 40); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; font-size: 15px;\"><span style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">item thời trang cực hot trong tất cả các mùa&nbsp;</span></a><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\">mà bạn nam hoàn toàn có thể diện mỗi khi đi đâu vui chơi.</span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/62336/175647292_2219891181478545_2975244098284085815_n.jpg\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; max-width: 100%; width: 800px; height: auto !important;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\"></span></span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; font-family: Owen, Arial, sans-serif; margin: 0px; padding: 0px;\">Tinh tế trong cách chọn đồ và phối đồ cùng áo thun nam Polo sẽ giúp phái mạnh ghi điểm trong mắt người đối diện. Vì thế, hãy là người đàn ông có gu thời trang thật thông minh để tăng thêm giá trị đích thực cho bản thân.</span></span></span></p>', NULL, NULL);
INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_vn`, `post_image`, `details_en`, `details_vn`, `created_at`, `updated_at`) VALUES
(13, 4, 'Style fashion 2021', 'Hướng dẫn chọn size quần áo cho nam giới', 'media/post/1705600744496700.jpg', '<p>Fashion</p>', '<p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Với nam giới thường không quan tâm tới số đo hay size áo chuẩn, thông thường họ theo quan điểm thử đồ nào vừa thì sẽ chọn size đấy. Tuy nhiên, để sở hữu những bộ trang phục chuẩn form thì những thông số sau đây sẽ giúp cánh mày râu có thể chọn được những chiếc áo vừa in và hơn nữa sẽ không bị lung túng khi mua hàng online.</span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Khi nhìn vào bảng này, các bạn hãy logic 1 chút nhé. Đừng máy móc và áp đặt quá. Ví dụ: bạn là nam, cao 1m78, nhưng chỉ nặng 50 kg. Tức là chiều cao fải là size L trở lên và cân nặng lại thuộc size S. Khi đó bạn nên lựa chọn theo chiều cao, tức là mặc áo size L. Vì mặc áo vừa chiều dài như thế tốt hơn là mặc áo vừa người nhưng lại quá ngắn? Khi đó, nếu các bạn muốn sửa hay muốn bóp vào 1 chút thì cũng có thể mang ra ngoài hiệu may, bóp vào tuỳ theo ý muốn của mình. Rõ ràng là áo rộng thì có thể sửa nhỏ lại được, còn áo nhỏ thì không thể sửa to ra được.</span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">Cách xác định size quần áo cho bạn</span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">Cách 1:</span>&nbsp;Dựa vào chiều cao và cân nặng</span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Giả sử các bạn lưỡng lự giữa 2 size áo thì tốt nhất các bạn nên chọn size lớn.</span></p><table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border-spacing: 0px; width: 1175px; color: rgb(37, 42, 43);\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 140px; height: 42px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">SIZE SOMI</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 361px; height: 42px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">THÔNG SỐ CƠ THỂ</span></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 140px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">S</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 361px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">1m60 – 1m70 or 48kg – 53kg</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 140px; height: 27px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">M</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 361px; height: 27px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">1m68 – 1m74 or 54kg – 60kg</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 140px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">L</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 361px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">1m75 – 1m80 or 61kg – 66kg</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 140px; height: 6px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">XL</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 361px; height: 6px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">1m75 - 1m80 or 67kg – 72kg</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 140px; height: 6px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">XXL</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); text-align: center; width: 361px; height: 6px;\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0); text-indent: 10px;\">1m71 - 1m85 or 73kg – 80kg</em></td></tr></tbody></table><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">Cách 2:</span>&nbsp;Dựa theo số đo cơ thể</span></p><table align=\"left\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border-spacing: 0px; width: 1175px; color: rgb(37, 42, 43);\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 170px; height: 47px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">THÔNG SỐ</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 76px; height: 47px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">S</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 47px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">M</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 83px; height: 47px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">L</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 47px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">XL</span></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 170px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Ngang Vai</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 76px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">43</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">45</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 83px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">47</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">49</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 170px; height: 27px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Ngang ngực</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 76px; height: 27px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">49</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 27px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">51</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 83px; height: 27px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">53</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 27px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">55</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 170px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Ngang lai</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 76px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">47,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">49,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 83px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">51,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 28px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">53,5</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 170px; height: 6px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Dài áo</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 76px; height: 6px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">65,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 6px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">67,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 83px; height: 6px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">69,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 6px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">71,5</em></span></p></td></tr></tbody></table><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">Cách 3:&nbsp;</span>Dựa trên vòng bụng, chiều cao</span></p><table align=\"left\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border-spacing: 0px; width: 1175px; color: rgb(37, 42, 43);\"><tbody style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 47px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">CỠ SỐ VÒNG BỤNG</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 47px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">VÒNG BỤNG</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 47px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">CỠ SỐ CHIỀU CAO</span></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 47px;\"><p align=\"center\" style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">CHIỀU CAO</span></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 27px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;26</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 27px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">65 – 67,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 27px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;26</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 27px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">155 – 157</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 27px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;27</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 27px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">67,5 – 70</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 27px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;27</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 27px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">158 – 160</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 28px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;28</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 28px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">70 – 72,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 28px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;28</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 28px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">161 – 163</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;29</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">72,5 – 75</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;29</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">164 – 166</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;30</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">77 – 77,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;30</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">167 – 169</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;31</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">77,5 – 80</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;31</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">170 – 172</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;32</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">80 – 82,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;32</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">173 – 175</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;33</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">82,5 – 85 &nbsp;&nbsp;</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;33</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">176 – 178</em></span></p></td></tr><tr style=\"box-sizing: border-box; margin: 0px; padding: 0px;\"><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 10px 10px 0px; border-top: 1px solid rgb(221, 221, 221); width: 92px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;34</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 171px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">85 – 87,5</em></span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px; border-top: 1px solid rgb(221, 221, 221); width: 84px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;34</span></p></td><td style=\"box-sizing: border-box; margin: 0px; padding: 10px 0px 10px 10px; border-top: 1px solid rgb(221, 221, 221); width: 152px; height: 6px;\"><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><em style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">179 – 181</em></span></p></td></tr></tbody></table><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">&nbsp;</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">Cách 4:</span>&nbsp;Nhờ tư vấn từ bộ phận&nbsp;<span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\">Chăm Sóc Khách Hàng</span></span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 700;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 400; text-align: justify;\">Quý khách hàng có thể gọi điện đến bộ phận chăm sóc khách hàng của&nbsp;</span><a href=\"http://torano.vn/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; font-weight: 400; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Torano</span></a><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 400; text-align: justify;\">: 093.173.3469 hoặc có thể qua trực tiếp các cửa hàng của&nbsp;</span><a href=\"http://torano.vn/\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; font-weight: 400; text-align: justify;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0);\">Torano</span></a><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; font-weight: 400; text-align: justify;\">&nbsp;để được tư vấn chuẩn xác về size của sản phầm, cũng như có những lựa chọn phù hợp với vóc dáng của mình hơn</span><br></span></span></p>', NULL, NULL);
INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_vn`, `post_image`, `details_en`, `details_vn`, `created_at`, `updated_at`) VALUES
(14, 4, 'Style fashion 2021', 'Đôi điều về Quần Kaki (Chinos)', 'media/post/1705600876430088.jpg', '<p>Fashion</p>', '<p><a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">Quần kaki</a><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif;\">&nbsp;hay&nbsp;</span><a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">quần chinos</a><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif;\">&nbsp;khi bạn chọn mua quần cần chú trọng đến việc chọn lựa màu sắc. Với những ngày đi làm công sở, bạn nên mặc&nbsp;</span><a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; background-color: rgb(255, 255, 255); color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">quần kaki</a><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif;\">&nbsp;tối màu để tạo độ lịch thiếp chốn văn phòng cũng như ra ngoài gặp gỡ đối tác.</span></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/19899/172702455_2214183585382638_5096770054778722213_n.jpg\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; max-width: 100%; width: 800px; height: auto !important;\"></a></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">Còn khi đi chơi, dã ngoại có thể thoải mái mặc&nbsp;<a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">quần kaki</a>&nbsp;sáng màu để tránh gây nhàm chán.</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/19899/172578477_2214183748715955_5120644134864711504_n.jpg\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: 533px; width: 800px;\"></a></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">Với kiểu dáng rộng rãi và đặc biệt ít nhăn, một chiếc quần dáng suông đem đến ấn tượng phóng khoáng, khỏe mạnh và thậm chí hơi bụi bặm với vài sợi vải tước ở phần gấu. Tuy nhiên, nếu muốn chọn&nbsp;<a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">quần kaki</a>&nbsp;cho phong cách công sở, bạn nên chọn quần với phom hơi ôm tạo dáng đứng, ống quần không quá rộng để tránh trông lòa xòa.</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">Một chiếc&nbsp;<a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">quần kaki</a>&nbsp;hoàn hảo cần phải có 4 túi. Bạn sẽ gặp rắc rối nếu quần có nhiều hay ít túi hơn, thiết kế vừa trẻ trung vừa tạo thuận tiện cho người sử dụng mà hầu như phần túi ít có sự cách điệu nhưng vẫn đảm bảo sựu khỏe khoắn mà lịch thiệp.</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(0, 0, 0); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/19899/img_1186_50135960471_o.jpg\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: 1200px; width: 800px;\"></a></p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">Đừng bao giờ xắn gấu quần cao nếp gấp gấu quần giúp chiếc&nbsp;<a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">quần kaki</a>&nbsp;trông lịch sự và chỉn chu hơn. Chiều dài xắn gấu có thể trải từ 3 tới 5cm, và đặc biệt lí tưởng với các chàng trai chân dài. Và có một lời khuyên các bạn không mặc quần kaki dài quá, chỉ tới mắt cá chân là đẹp, hãy thử và nhờ thợ may cắt đi một chút là bạn đã có chiếc quần hoàn hảo.</p><p style=\"box-sizing: border-box; font-family: Quicksand, sans-serif; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6em;\">Một lưu ý khá quan trọng giúp bạn chọn được&nbsp;<a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">quần kaki</a>&nbsp;ưng ý: Nếu chiếc quần may bằng chất liệu nylon hay rayon (tơ nhận tạo) hay vải chống nhăn thì đó không phải là&nbsp;<a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">quần kaki</a>&nbsp;đúng nghĩa.&nbsp;<a href=\"http://torano.vn/c65297/kaki\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(37, 42, 43); outline: none; transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s;\">Quần kaki</a>&nbsp;đúng nghĩa phải là loại 100% cotton</span></p><p><br></p>', NULL, NULL),
(15, 4, 'Style fashion 2021', 'Bí quyết lựa chọn short kaki nam cho mùa hè', 'media/post/1705603025370792.jpg', '<p>Fashion</p>', '<p><a href=\"http://torano.vn/c105849/short-kaki\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; outline: none;\">Quần short kaki nam</a><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif;\">&nbsp;là món đồ thời trang mang đến cảm giác thân thiện và thoải mái nhất với đấng mày râu, đặc biệt là và những ngày nóng bức hay những kì nghỉ. Bạn đã có bao nhiêu chiếc&nbsp;</span><a href=\"http://torano.vn/c105849/short-kaki\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); background-color: rgb(255, 255, 255); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; outline: none;\">quần short kaki</a><span style=\"color: rgb(37, 42, 43); font-family: Quicksand, sans-serif;\">&nbsp;trong tủ quần áo của mình?</span></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><a href=\"http://torano.vn/c105849/short-kaki\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/19900/175323494_2215814281886235_1340008555583685486_n.jpg\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; max-width: 100%; height: 532px; width: 800px;\"></a></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">Nhưng trước khi rước về tủ của mình trước hết các bạn cũng nên lưu ý những điểm sau khi lựa chọn và phối đồ với&nbsp;<a href=\"http://torano.vn/c105849/short-kaki\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\">quần short kaki nam</a>:</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">1. Điểm đầu tiên và quan trọng nhất cần lưu ý chính là chiều dài của quần. Độ dài hoàn hảo của chiếc&nbsp;<a href=\"http://torano.vn/c105849/short-kaki\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\">quần short nam</a>&nbsp;nên dừng ở khoảng 3-5 cm trên đầu gối. Không nên dài hơn hoặc ngắn hơn. Khi mặc vào bạn cũng phải cảm thấy thật thoải mái, có thể di chuyển dễ dàng. Chiếc quần quá bó và quá chật sẽ dễ gây phản cảm với người đối diện.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6em;\">2.&nbsp;<a href=\"http://torano.vn/c65296/short\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\">Quần short</a>&nbsp;được may bằng bất cứ chất liệu nào cũng không phải là món đồ dành cho môi trường công sở, trừ khi bạn làm việc tại công ty về sáng tạo và công việc của bạn hoàn toàn không phải gặp gỡ hay giao tiếp với ai. Nếu bạn thích phong cách an toàn,&nbsp;<a href=\"http://torano.vn/c105849/short-kaki\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\">quần short kaki</a>&nbsp;nam màu trơn và trung tính như màu nâu nhạt, xanh navy, đen sẽ là những lựa chọn hàng đầu.</span></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><a href=\"http://torano.vn/c105849/short-kaki\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6em;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/19900/170876991_2211030819031248_1201418250245246635_n.jpg\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; max-width: 100%; height: 532px; width: 800px;\"></span></a></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">3. Ngoài ra, hãy chọn kiểu&nbsp;<a href=\"http://torano.vn/c65296/short\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\">quần short</a>&nbsp;cho những ngày cuối tuần hoặc cho những chuyến đi chơi dã ngoại. Quần với họa tiết hoa sẽ phù hợp hơn cho những chuyến đi biển.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">4. Còn nếu muốn bộ trang phục của mình bớt tẻ nhạt, bạn có thể thử nghiệm với những họa tiết nhỏ hoặc quần kẻ sọc.</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.6em;\"></span></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\">5.&nbsp;<a href=\"http://torano.vn/c105849/short-kaki\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\">Quần short kaki nam</a>&nbsp;sẽ phù hợp nhất khi được phối cùng&nbsp;<a href=\"http://torano.vn/c105814/ao-phong-khong-co\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\">áo thun</a>,&nbsp;<a href=\"http://torano.vn/c105813/ao-phong-co-co\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\">áo polo</a>, cũng cả&nbsp;<a href=\"http://torano.vn/c65282/somi-ngan-tay\" style=\"box-sizing: border-box; color: rgb(37, 42, 43); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\">áo sơ mi cộc tay</a>&nbsp;và chỉ nên có một trong hai món trang phục có họa tiết (quần hoặc áo họa tiết).</p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43); text-align: center;\"><a href=\"http://torano.vn/c105849/short-kaki\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); transition: opacity 0.15s linear 0s, color 0.15s linear 0s, background 0.15s linear 0s; margin: 0px; padding: 0px; outline: none;\"><img alt=\"\" src=\"https://storage.googleapis.com/cdn.nhanh.vn/store/2071/artCT/19900/168014755_2204165256384471_1624496623646402923_n.jpg\" style=\"box-sizing: border-box; border: 0px; margin: 0px; padding: 0px; max-width: 100%; height: 800px; width: 800px;\"></a></p><p style=\"box-sizing: border-box; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: Quicksand, sans-serif; padding: 0px; line-height: 21px; color: rgb(37, 42, 43);\"><br></p><p><br></p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_vn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_vn`, `created_at`, `updated_at`) VALUES
(4, 'Style Fashion', 'Định hướng phong cách thời trang', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(30) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(30, 22, 40, 14, 'Áo polo melange', 'TP007', '29', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Nâu', 'XL', '380000', '304000', NULL, NULL, 1, 1, 1, NULL, NULL, 1, 'media/product/1679792720690587.jpg', 'media/product/1679792721187189.jpg', 'media/product/1679792721369199.jpg', 1, NULL, NULL),
(31, 22, 39, 14, 'Áo polo họa tiết tropical fruit Torano', 'BSTP31072CV04SB', '29', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen,Xám,Nâu,Trắng', 'XL,L,M,S', '330000', '165000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'media/product/1679796427063063.jpg', 'media/product/1679796427294347.jpg', 'media/product/1679796427494974.jpg', 1, NULL, NULL),
(35, 25, 51, 14, 'Sơ mi dạ dài tay 2 túi Pazzini', 'AWTB01171CT12RB', '21', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đỏ Xanh,Xám Xanh', 'XL,L,M,S', '500000', '450000', NULL, NULL, NULL, 1, 1, 1, NULL, 1, 'media/product/1679798017731029.jpg', 'media/product/1679798018167989.jpg', 'media/product/1679798018608460.jpg', 1, NULL, NULL),
(36, 22, 40, 14, 'Áo polo kẻ ngang Torano TP037', 'BSTP03772CV08SB', '11', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng Vàng', 'XL,L,M,S', '330000', '264000', NULL, NULL, 1, 1, 1, 1, 1, 1, 'media/product/1679798226640578.jpg', 'media/product/1679798226863154.jpg', 'media/product/1679798227089837.jpg', 1, NULL, NULL),
(37, 27, 60, 14, 'Quần Jogger gió đục lỗ sườn Torano', 'BWBW20103PE00SB', '12', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Đen,Xám', 'XL,L,M,S', '460000', '380000', NULL, 1, 1, 1, 1, 1, 1, 1, 'media/product/1679800314336612.jpg', 'media/product/1679800314652318.jpg', 'media/product/1679800315025006.jpg', 1, NULL, NULL),
(38, 22, 38, 14, 'Áo polo trơn thêu logo trước ngực Torano TP503', 'BSTP50372CV00SB', '15', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Vàng,Xám,Xanh', 'XL,L,M,S', '350000', '256000', NULL, 1, 1, NULL, 1, 1, NULL, NULL, 'media/product/1679800555077606.jpg', 'media/product/1679800555208429.jpg', 'media/product/1679800555350435.jpg', 1, NULL, NULL),
(39, 22, 38, 14, 'Áo Polo Basic phối bo kẻ Pazzini', 'SAPMTPS.S39.S', '10', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Trắng,Đen', 'XL,L,M,S', '300000', '150000', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'media/product/1679800757178178.jpg', 'media/product/1679800757560545.jpg', 'media/product/1679800757861910.jpg', 1, NULL, NULL),
(40, 23, 42, 14, 'Áo phông ngắn tay họa tiết in logo Torano TS061', 'BSTS06112CT06SB', '11', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng,Đen', 'XL,L,M,S', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'media/product/1679800933601715.jpg', 'media/product/1679800933868870.jpg', 'media/product/1679800934063995.jpg', 1, NULL, NULL),
(41, 24, 46, 14, 'Áo Sơ mi ngắn tay Pazzini họa tiết S01', 'SAPMTSH.S01.F', '37', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng,Đen,Xanh', 'XL,L,M,S', '350000', '175000', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'media/product/1679801097830996.jpg', 'media/product/1679801098322424.jpg', 'media/product/1679801098546567.jpg', 1, NULL, NULL),
(42, 23, 42, 14, 'Áo phông ngắn tay họa tiết The Hope Torano', 'BSTS06012CT06SB', '10', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng,Đen', 'XL,L,M', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'media/product/1679801306004849.jpg', 'media/product/1679801306178268.jpg', 'media/product/1679801306360104.jpg', 1, NULL, NULL),
(43, 23, 42, 14, 'Áo phông ngắn tay họa tiết Cupid Torano', 'BSTS85212CT06AB', '13', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen', 'XL,L,M', '290000', '145000', NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1679801448343082.jpg', 'media/product/1679801449625614.jpg', 'media/product/1679801450592637.jpg', 1, NULL, NULL),
(44, 23, 43, 14, 'Áo phông ngắn tay kẻ ngang Torano TS022', 'BSTS02212CT07SB', '12', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Kẻ đen,Kẻ đỏ', 'XL,L,M', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'media/product/1679801629355162.jpg', 'media/product/1679801629644875.jpg', 'media/product/1679801629930671.jpg', 1, NULL, NULL),
(45, 23, 43, 14, 'Áo phông ngắn tay kẻ ngang Torano TS020', 'BSTS02012CT07SB', '29', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Kẻ vàng,Kẻ xanh,Kẻ đỏ', 'L,M', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'media/product/1679801785121953.jpg', 'media/product/1679801785350123.jpg', 'media/product/1679801785556997.jpg', 1, NULL, NULL),
(46, 23, 44, 14, 'Áo phông ngắn tay bo phối họa tiết Torano', 'BSTS61212CT00SB', '15', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen,Xanh,Trắng', 'XL,L,M', '200000', '100000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'media/product/1679802036045625.jpg', 'media/product/1679802036318507.jpg', 'media/product/1679802036583711.jpg', 1, NULL, NULL),
(47, 23, 44, 14, 'Áo phông ngắn tay trơn cổ tim Torano TS102', 'BSTS10222CV00SB', '37', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Đen,Trắng', 'L,M,S', '150000', '90000', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'media/product/1679802168063842.jpg', 'media/product/1679802168379944.jpg', 'media/product/1679802168665920.jpg', 1, NULL, NULL),
(48, 23, 42, 14, 'Áo phông ngắn tay họa tiết in logo Torano TS103', 'BSTS10312CT06SB', '10', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen, Trắng', 'XL,L,M', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'media/product/1679802316663720.jpg', 'media/product/1679802317212243.jpg', 'media/product/1679802317993745.jpg', 1, NULL, NULL),
(49, 23, 42, 14, 'Áo phông ngắn tay họa tiết TS069', 'BSTS06912CT05SB', '14', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xám,Trắng', 'XL,L,M', '200000', '100000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'media/product/1679802450682262.jpg', 'media/product/1679802450991544.jpg', 'media/product/1679802451235010.jpg', 1, NULL, NULL),
(50, 23, 42, 14, 'Áo phông ngắn tay họa tiết Sunset Beach Torano', 'BSTS27712CT06SB', '18', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Xám', 'XL,L,M', '300000', '150000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'media/product/1679804251882211.jpg', 'media/product/1679804252196914.jpg', 'media/product/1679804252384299.jpg', 1, NULL, NULL),
(51, 23, 42, 14, 'Áo phông ngắn tay họa tiết Biker Torano', 'BSTS50312CT06SB', '29', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng,Xám', 'XL,L,M', '200000', '100000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'media/product/1679804405420060.jpg', 'media/product/1679804405546500.jpg', 'media/product/1679804405667501.jpg', 1, NULL, NULL),
(53, 22, 39, 14, 'Áo polo họa tiết tropical leaf Torano', 'BSTP08372CV05SB', '16', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Đen,Trắng', 'XL,L,M', '350000', '245000', NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1679804587717303.jpg', 'media/product/1679804587865326.jpg', 'media/product/1679804587964180.jpg', 1, NULL, NULL),
(54, 22, 39, 14, 'Áo polo họa tiết Baseball Torano', 'BSTP05872CV04SB', '13', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng,Cam,Đen', 'XL,L,M', '350000', '280000', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 'media/product/1679804774190908.jpg', 'media/product/1679804774575625.jpg', 'media/product/1679804774925390.jpg', 1, NULL, NULL),
(55, 22, 40, 14, 'Áo polo kẻ ngang in logo Torano TP097', 'BSTP09772CX07SB', '11', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Đỏ,Xám', 'XL,L,M,S', '350000', '280000', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 'media/product/1679804964376690.jpg', 'media/product/1679804964520413.jpg', 'media/product/1679804964670218.jpg', 1, NULL, NULL),
(56, 25, 50, 14, 'Sơ mi dài tay họa tiết Torano TB150', 'BATB15071BA21SB', '17', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano</p><p><br></p>', 'Xanh', 'XL,L,M', '450000', '380000', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 'media/product/1679805157245579.jpg', 'media/product/1679805157593836.jpg', 'media/product/1679805157927576.jpg', 1, NULL, NULL),
(57, 22, 39, 14, 'Áo polo họa tiết active Squarebox Torano', 'BSTP00472CX04SB', '12', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh nhạt,Xanh đậm,Đen', 'XL,L,M', '350000', '245000', NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 'media/product/1679805380251515.jpg', 'media/product/1679805380563385.jpg', 'media/product/1679805380796987.jpg', 1, NULL, NULL),
(58, 22, 39, 14, 'Áo polo thêu họa tiết Sailing Pazzini', 'SAPMTPS.S27.F', '45', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen,Trắng,Xanh', 'XL,S', '380000', '114000', NULL, 1, 1, 1, 1, NULL, NULL, NULL, 'media/product/1679805507673440.jpg', 'media/product/1679805508104918.jpg', 'media/product/1679805508506834.jpg', 1, NULL, NULL),
(66, 22, 38, 14, 'Áo polo trơn thêu logo trước ngực TP381 (TP301)', '8243788562', '18', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xám,Trắng', 'M,L,XL,XXL', '330000', '269000', NULL, NULL, NULL, 1, 1, 1, NULL, 1, 'media/product/1704979135566185.jpg', 'media/product/1704979136578301.jpg', 'media/product/1704979136967910.jpg', 1, NULL, NULL),
(67, 22, 39, 14, 'Áo polo họa tiết The Garden Torano TP038', '9015658470', '20', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Xám,Trắng', 'S,M,L,XL', '350000', '175000', NULL, NULL, 1, 1, 1, 1, NULL, 1, 'media/product/1704979502201129.jpg', 'media/product/1704979502600212.jpg', 'media/product/1704979503045585.jpg', 1, NULL, NULL),
(69, 22, 40, 14, 'Áo polo phối cổ Tri-color thêu tay TP278', '3154350877', '22', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen,Trắng,Vàng', 'M,L,XL', '360000', '252000', NULL, 1, 1, NULL, 1, 1, NULL, NULL, 'media/product/1704980235701541.jpg', 'media/product/1704980236091143.jpg', 'media/product/1704980236407591.jpg', 1, NULL, NULL),
(71, 23, 44, 14, 'Áo thun trơn basic cotton TS306', '3830192161', '30', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Đen,Trắng', 'M,L,XL', '169000', '99000', NULL, NULL, 1, NULL, NULL, 1, NULL, 1, 'media/product/1705597384936926.jpg', 'media/product/1705597385428366.jpg', 'media/product/1705597385628883.jpg', 1, NULL, NULL),
(72, 23, 41, 14, 'Áo thun in ngực Division TS708', '4014008342', '30', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh', 'M,L,XL', '250000', '199000', NULL, 1, NULL, 1, NULL, 1, NULL, 1, 'media/product/1705597524748164.jpg', 'media/product/1705597524972645.jpg', 'media/product/1705597525188461.jpg', 1, NULL, NULL),
(73, 24, 48, 14, 'Sơ mi ngắn tay đũi TB282', '7467929767', '20', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng,Đen,Xanh', 'M,L,XL', '390000', '351000', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 'media/product/1705597902410273.jpg', 'media/product/1705597902622227.jpg', 'media/product/1705597902839364.jpg', 1, NULL, NULL),
(74, 24, 47, 14, 'Sơ mi ngắn tay kẻ TB283', '1555512334', '20', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano</p>', 'Trắng Xanh,Trắng Nâu', 'M,L,XL', '390000', '351000', NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 'media/product/1705598121088648.jpg', 'media/product/1705598121305782.jpg', 'media/product/1705598121515762.jpg', 1, NULL, NULL),
(75, 24, 46, 14, 'Sơ mi ngắn tay họa tiết The Birds TB280', '8326790559', '30', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng', 'M,L,XL', '350000', '315000', NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 'media/product/1705603500154629.jpg', 'media/product/1705603500629811.jpg', 'media/product/1705603501043170.jpg', 1, NULL, NULL),
(76, 24, 46, 14, 'Sơ mi ngắn tay họa tiết The Flowers TB279', '6130811462', '30', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng,Xám', 'M,L,XL', '350000', '315000', NULL, NULL, NULL, 1, 1, 1, NULL, 1, 'media/product/1705603622890483.jpg', 'media/product/1705603623332245.jpg', 'media/product/1705603623744842.jpg', 1, NULL, NULL),
(77, 24, 46, 14, 'Sơ mi ngắn tay họa tiết The Leaves TB278', '8131327323', '20', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng', '39,40,41,42', '350000', '315000', NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 'media/product/1705603754754909.jpg', 'media/product/1705603755271000.jpg', 'media/product/1705603755689366.jpg', 1, NULL, NULL),
(78, 24, 45, 14, 'Sơ mi ngắn tay trơn Bamboo hiệu ứng TB288', '9451842833', '30', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Trắng', '38,39,40,41,42', '390000', '351000', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'media/product/1705603957357347.jpg', 'media/product/1705603957785961.jpg', 'media/product/1705603958242955.jpg', 1, NULL, NULL),
(79, 25, 51, 14, 'Sơ mi dài tay dạ 2 túi thêu logo Torano TB182', '2681000248', '30', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xám', '38,39,40,41', '450000', '240000', NULL, NULL, 1, 1, NULL, 1, NULL, NULL, 'media/product/1705604114268745.jpg', 'media/product/1705604114752519.jpg', 'media/product/1705604115167385.jpg', 1, NULL, NULL),
(80, 27, 57, 14, 'Quần âu slim-fit điều chỉnh cạp trơn BT041', '2292583280', '10', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen,Xám', '29,30,31,32', '480000', '384000', NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 'media/product/1705604341637221.jpg', 'media/product/1705604342287527.jpg', 'media/product/1705604342622401.jpg', 1, NULL, NULL),
(81, 27, 57, 14, 'Quần âu gấu L\'v Torano BT021', '4813364641', '10', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen, Xám', '29,30,31,32,33', '450000', '225000', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'media/product/1705604480699215.jpg', 'media/product/1705604481574428.jpg', 'media/product/1705604482077704.jpg', 1, NULL, NULL),
(82, 27, 58, 14, 'Quần kaki Wrinkless BK058/2', '2976482768', '20', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen,Trắng,Xám', '29,30,31,32,33', '450000', '360000', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'media/product/1705604642854457.jpg', 'media/product/1705604643557776.jpg', 'media/product/1705604644279178.jpg', 1, NULL, NULL),
(83, 27, 58, 14, 'Quần Kaki dài basic BK060-W8898', '7440564314', '10', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Đen,Xám', '29,30,31,32,33', '380000', '299000', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'media/product/1705604798957760.jpg', 'media/product/1705604799643622.jpg', 'media/product/1705604800263144.jpg', 1, NULL, NULL),
(84, 27, 58, 14, 'Quần Kaki dài basic cạp phối chun sườn Torano BK049', '9150918098', '10', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Den,Trắng', '29,30,31,32', '450000', '315000', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'media/product/1705605204536278.jpg', 'media/product/1705605205177313.jpg', 'media/product/1705605205745792.jpg', 1, NULL, NULL),
(85, 27, 58, 14, 'Quần Kaki dài basic cạp phối chun sườn Torano BK049', '3804390918', '10', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Den,Trắng', '29,30,31,32', '450000', '315000', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'media/product/1705605204555608.jpg', 'media/product/1705605205192429.jpg', 'media/product/1705605205771366.jpg', 1, NULL, NULL),
(86, 27, 59, 14, 'Quần Jeans basic Regular BJ047/2', '4331195596', '20', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xanh,Đen,Xám', '29,30,31,32,33', '480000', '384000', NULL, NULL, NULL, 1, NULL, 1, NULL, 1, 'media/product/1705605346292355.jpg', 'media/product/1705605346807386.jpg', 'media/product/1705605347091278.jpg', 1, NULL, NULL),
(87, 27, 59, 14, 'Quần Jeans basic Slim BJ037', '5201895928', '20', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Đen', '29,30,31,32,33', '520000', '424000', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'media/product/1705605557227400.jpg', 'media/product/1705605557830432.jpg', 'media/product/1705605558209005.jpg', 1, NULL, NULL),
(88, 26, 53, 14, 'Quần short kaki basic BK009', '8781914202', '20', '<p>Sản phẩm chất lượng, chính hãng, độc quyền tại Torano<br></p>', 'Xám,Be', '29,30,31,32,33', '350000', '175000', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'media/product/1705605746908182.jpg', 'media/product/1705605747339689.jpg', 'media/product/1705605747784670.jpg', 1, NULL, NULL),
(89, 26, 54, NULL, 'Quần short đũi chun cạp BI004', '2384394147', '05', '<p>Thoải mái</p>', 'Xanh,Đen,Trắng', '29,30,31,32', '350000', '315000', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 'media/product/1705605874091403.jpg', 'media/product/1705605874564788.jpg', 'media/product/1705605874924079.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Bán hàng', 'Đồ án', 'UTT', 'Đồ án tốt nghiệp', 'UTT Google', 'UTT Google', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adderss` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `adderss`, `logo`, `created_at`, `updated_at`) VALUES
(1, '0', '10000', 'utt', 'utt@gmail.com', '0349982248', 'thuy an', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(9, '9', 'Mai Công Chuyên', '0349982238', 'c@example.com', 'Hanoi', 'Hanoi', NULL, NULL),
(10, '10', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(11, '11', 'Lê Văn A', '0972834785', 'levana@gmail.com', 'Thanh Xuân Bắc, Khương Trung', 'Hà Nội', NULL, NULL),
(12, '12', 'Lê Văn A', '0972834785', 'levana@gmail.com', 'Thanh Xuân Bắc, Khương Trung', 'Hà Nội', NULL, NULL),
(13, '13', 'Lê Văn Test', '0349982238', 'jeff22@example.com', 'Test', 'Thái Bình', NULL, NULL),
(14, '14', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(15, '15', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(16, '16', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(17, '17', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(18, '18', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(19, '19', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(20, '20', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(21, '21', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(22, '22', 'Lê Văn A', '0972834785', 'levana@gmail.com', 'Thanh Xuân Bắc, Khương Trung', 'Hà Nội', NULL, NULL),
(23, '23', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(24, '24', 'Mai Công Chuyên', '0986272700', 'chuyendaik99@gmail.com', 'Thái Bình', 'Thái Bình', NULL, NULL),
(25, '25', 'Đỗ Xuân Hòa', '0353830798', 'hoadx.utt@gmail.com', 'phố Lụa', 'Hà Nội', NULL, NULL),
(26, '26', 'Đỗ Xuân Hòa', '0353830798', 'hoadx.utt@gmail.com', 'phố Lụa', 'Hà Nội', NULL, NULL),
(27, '27', 'Đỗ Xuân Hòa', '0353830798', 'hoadx.utt@gmail.com', 'phố Lụa', 'Hà Nội', NULL, NULL),
(28, '28', 'Hòa', '0353830798', 'hoadx.utt@gmail.com', 'HN', 'HN', NULL, NULL),
(29, '29', 'Đỗ Xuân Hòa', '0353830798', 'hoadx.utt@gmail.com', 'phố Lụa', 'Hà Nội', NULL, NULL),
(30, '30', 'Chuyên', '0356868686', 'chuyendaik99@gmail.com', 'Văn Điển', 'Hà Nội', NULL, NULL),
(31, '31', 'Tuấn Anh', '0347777977', 'tuananh@gmail.com', 'Vạn Phúc, Hà Đông', 'Hà Nội', NULL, NULL),
(32, '32', 'Tuấn Anh', '0347777977', 'tuananh@gmail.com', 'Vạn Phúc, Hà Đông', 'Hà Nội', NULL, NULL),
(33, '33', 'Chuyên', '0346820222', 'chuyen@gmail.com', 'Văn Điển', 'Hà Nội', NULL, NULL),
(34, '34', 'Hòa', '0353830798', 'hoadx.utt@gmail.com', 'HN', 'HN', NULL, NULL),
(35, '35', 'Khánh', '0389666688', 'khanh@gmail.com', 'Vạn Phúc, Hà Đông', 'Hà Nội', NULL, NULL),
(36, '36', 'Hòa', '0353830798', 'hoadx.utt@gmail.com', 'HN', 'HN', NULL, NULL),
(37, '37', 'Khánh', '0345666888', 'khanh@gmail.com', 'phố Lụa', 'Hà Nội', NULL, NULL),
(38, '38', 'Khánh', '0345666888', 'khanh@gmail.com', 'phố Lụa', 'Hà Nội', NULL, NULL),
(39, '39', 'Đỗ Xuân Hòa', '0353830798', 'hoadx.utt@gmail.com', 'phố Lụa', 'Hà Nội', NULL, NULL),
(40, '40', 'Hòa', '0353830798', 'hoadx.utt@gmail.com', 'HN', 'HN', NULL, NULL),
(41, '41', 'Tuấn Anh', '0347777977', 'tuananh@gmail.com', 'Vạn Phúc, Hà Đông', 'Hà Nội', NULL, NULL),
(42, '44', 'chuyenmc', '0349982249', 'chuyenmc1999@gmail.com', 'Thuỵ An', 'Hà Nội', NULL, NULL),
(43, '45', 'Chuyên', '0356868688', 'tuananhcc@gmail.com', 'Văn Điển', 'Hà Nội', NULL, NULL),
(44, '46', 'Bùi Thanh Thư', '0345678900', 'thubt@gmail.com', 'phố Lụa', 'Hà Nội', NULL, NULL),
(45, '47', 'Bùi Thanh Thư', '0345678900', 'thubt@gmail.com', 'phố Lụa', 'Hà Nội', NULL, NULL),
(46, '48', 'Lương Thế Vinh', '123', 'vinhlt@gmail.com', 'Quỳnh Phụ', 'Thái Bình', NULL, NULL),
(47, '49', 'Đinh Tiến Giang', '0323455655', 'giangdt@lqa.com', 'Thanh Sơn', 'Phú Thọ', NULL, NULL),
(48, '52', 'Tuấn Anh', '0347777977', 'tuananh@gmail.com', 'Vạn Phúc, Hà Đông', 'Hà Nội', NULL, NULL),
(49, '53', 'Chuyên', '0346820222', 'chuyen@gmail.com', 'Văn Điển, Thanh Trì', 'Hà Nội', NULL, NULL),
(50, '54', 'Chuyên', '0346820222', 'chuyen@gmail.com', 'Văn Điển, Thanh Trì', 'Hà Nội', NULL, NULL),
(51, '55', 'Hòa', '0353830798', 'hoadx.utt@gmail.com', 'Vạn Phúc, Hà Đông', 'Hà Nội', NULL, NULL),
(52, '56', 'Đỗ Xuân Hòa', '0353830798', 'hoadx.utt@gmail.com', 'Vạn Phúc, Hà Đông', 'Hà Nội', NULL, NULL),
(53, '57', 'Chuyên', '0346820222', 'chuyen@gmail.com', 'Văn Điển, Thanh Trì', 'Hà Nội', NULL, NULL),
(54, '58', 'Tuấn Anh', '0347777977', 'tuananh@gmail.com', 'Vạn Phúc, Hà Đông', 'Hà Nội', NULL, NULL),
(55, '59', 'Tuấn Anh', '0347777977', 'tuananh@gmail.com', 'Vạn Phúc, Hà Đông', 'Hà Nội', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '0353830798', '0353830798', 'hoadx.utt@gmail.com', 'Torano Shop', '1165 Giải Phóng, Hoàng Mai, Hà Nội', 'facebook.com', 'youtube.com', 'instragram.com', 'twitter.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(38, 22, 'Polo Trơn', NULL, NULL),
(39, 22, 'Polo Họa Tiết', NULL, NULL),
(40, 22, 'Polo Kẻ', NULL, NULL),
(41, 23, 'Áo thun Melange', NULL, NULL),
(42, 23, 'Áo thun họa tiết', NULL, NULL),
(43, 23, 'Áo thun kẻ', NULL, NULL),
(44, 23, 'Áo thun trơn', NULL, NULL),
(45, 24, 'Sơ mi ngắn tay trơn', NULL, NULL),
(46, 24, 'Sơ mi ngắn tay họa tiết', NULL, NULL),
(47, 24, 'Sơ mi ngắn tay kẻ', NULL, NULL),
(48, 24, 'Sơ mi ngắn tay đũi', NULL, NULL),
(49, 25, 'Sơ mi dài tay đũi', NULL, NULL),
(50, 25, 'Sơ mi dài tay họa tiết', NULL, NULL),
(51, 25, 'Sơ mi dài tay kẻ', NULL, NULL),
(52, 25, 'Sơ mi dài tay trơn', NULL, NULL),
(53, 26, 'Quần short kaki', NULL, NULL),
(54, 26, 'Quần short đũi', NULL, NULL),
(55, 26, 'Quần short gió', NULL, NULL),
(56, 26, 'Quần short Jean', NULL, NULL),
(57, 27, 'Quần Âu cao cấp', NULL, NULL),
(58, 27, 'Quần Kaki', NULL, NULL),
(59, 27, 'Quần Jean', NULL, NULL),
(60, 27, 'Quần Jogger', NULL, NULL),
(63, 28, 'Áo da', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `address`, `avatar`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `city`) VALUES
(13, 'Tuấn Anh', '0347777977', 'tuananh@gmail.com', 'Vạn Phúc, Hà Đông', NULL, NULL, NULL, NULL, '$2y$10$dXvR02s/Ut9bgZgy5YxuOuUNl9wQkk11CEdt7HkV.QBagl572GS0C', NULL, '2021-04-25 03:41:08', '2021-04-25 03:41:08', 'Hà Nội'),
(14, 'Hòa', '0353830798', 'hoadx.utt@gmail.com', 'Vạn Phúc, Hà Đông', NULL, NULL, NULL, NULL, '$2y$10$vhsKEm8dpET4VNJV7PBU0O0w8Gh6bjAnf5TIXyv7KIRux9t7zMpAK', NULL, '2021-04-25 04:00:23', '2021-04-25 04:00:23', 'Hà Nội'),
(15, 'Chuyên', '0346820222', 'chuyen@gmail.com', 'Văn Điển, Thanh Trì', NULL, NULL, NULL, NULL, '$2y$10$VU/gkiPW0ixFIfY2DqRNdOAhDqxTE3LRHo4InX1y.7o4558GXqEgG', NULL, '2021-04-25 04:01:43', '2021-04-25 04:01:43', 'Hà Nội'),
(16, 'Khánh', '0346666888', 'khanh@gmail.com', 'Vạn Phúc, Hà Đông', NULL, NULL, NULL, NULL, '$2y$10$IxQjkiPXS/B9bdE9G.98IeHqIiDZE29CcFSLhQV0cVPz7JDqhEUQO', NULL, '2021-04-27 22:43:00', '2021-04-27 22:43:00', 'Hà Nội'),
(24, 'Dân', '0909089789', 'dan@gmail.com', 'Thường Tín, HN', NULL, NULL, NULL, NULL, '$2y$10$x5bRvxiFnSEAIFKaFNnAKeQtxJR38n69F8fU2ClM1WIUtz86vxdB6', NULL, '2021-05-11 06:22:50', '2021-05-11 06:22:50', 'Hà Nội'),
(25, 'chuyenmc', '0349982249', 'chuyenmc1999@gmail.com', 'Thuỵ An', NULL, NULL, NULL, NULL, '$2y$10$IYiCXpyTBbSyUDbokomrWuwyIizZ/nwFj1zipRbW3f7vDnyNSIxJ.', NULL, '2021-05-11 06:56:47', '2021-05-11 06:56:47', 'Thái Bình'),
(27, 'Chuyên', '0356868688', 'tuananhcc@gmail.com', 'Văn Điển', NULL, NULL, NULL, NULL, '$2y$10$01MQZ5sZOQwM25o13mvvFOAWBkB.mGM3rM587u.WKw8uu4XCSi0l6', NULL, '2021-05-11 08:41:24', '2021-05-11 08:41:24', 'Hà Nội'),
(30, 'Bùi Thanh Thư', '0345678900', 'thubt@gmail.com', 'phố Lụa', NULL, NULL, NULL, NULL, '$2y$10$kkKnVBdV4gjZroIEupZ97uHzU0MmWnps2CoaAYLR9jLYegCm7dhg6', NULL, '2021-05-15 06:02:32', '2021-05-15 06:02:32', 'Hà Nội'),
(31, 'Lương Thế Vinh', '0909789654', 'vinhlt@gmail.com', 'Quỳnh Phụ', NULL, NULL, NULL, NULL, '$2y$10$bq3KIJUFIS2yI1UL/ZGQ0ueMn6J5nmEdXLtqFS.KHBHI.rvDuMEOW', NULL, '2021-07-11 01:46:43', '2021-07-11 01:46:43', 'Thái Bình'),
(32, 'Đinh Tiến Giang', '0323455655', 'giangdt@lqa.com', 'Thanh Sơn', NULL, NULL, NULL, NULL, '$2y$10$i0VVEdpYjVxQIWgdoqplFeGwl84pKkEbp8z.utLcmyN3HT5lAX9Yq', NULL, '2021-07-11 02:41:29', '2021-07-11 02:41:29', 'Phú Thọ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(10, 3, 25, NULL, NULL),
(11, 3, 23, NULL, NULL),
(12, 3, 19, NULL, NULL),
(13, 3, 24, NULL, NULL),
(14, 6, 29, NULL, NULL),
(15, 7, 59, NULL, NULL),
(16, 6, 59, NULL, NULL),
(17, 9, 59, NULL, NULL),
(18, 9, 57, NULL, NULL),
(19, 9, 56, NULL, NULL),
(20, 12, 59, NULL, NULL),
(21, 12, 58, NULL, NULL),
(22, 13, 51, NULL, NULL),
(23, 15, 58, NULL, NULL),
(24, 15, 56, NULL, NULL),
(25, 15, 54, NULL, NULL),
(26, 15, 51, NULL, NULL),
(27, 15, 52, NULL, NULL),
(28, 15, 53, NULL, NULL),
(29, 15, 55, NULL, NULL),
(30, 15, 57, NULL, NULL),
(31, 13, 58, NULL, NULL),
(32, 13, 56, NULL, NULL),
(33, 13, 54, NULL, NULL),
(34, 13, 52, NULL, NULL),
(35, 13, 57, NULL, NULL),
(36, 13, 55, NULL, NULL),
(37, 13, 53, NULL, NULL),
(38, 14, 51, NULL, NULL),
(39, 14, 58, NULL, NULL),
(40, 14, 56, NULL, NULL),
(41, 14, 54, NULL, NULL),
(42, 14, 52, NULL, NULL),
(43, 14, 57, NULL, NULL),
(44, 14, 55, NULL, NULL),
(45, 14, 53, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newslaters`
--
ALTER TABLE `newslaters`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
