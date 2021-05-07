-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 07, 2021 lúc 01:44 PM
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
(12, 'Đỗ Xuân Hòa', '0353830798', 'hoadx.utt@gmail.com', NULL, '$2y$10$xn77pkS/tbYyZllEuI3eI.k2u8PBXFORPGO84Jdmj6IYIKas1QtUO', NULL, '1', '1', '1', '1', '1', NULL, '1', '1', '1', '1', '1', '1', '1', 2, NULL, NULL);

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
(14, 'Torano', 'public/media/brand/160920_02_43_07.png', NULL, NULL),
(15, 'Nike', 'public/media/brand/071020_01_30_59.png', NULL, NULL),
(16, 'Gucci', 'public/media/brand/071020_02_02_00.png', NULL, NULL),
(17, 'Adidas', 'public/media/brand/071020_02_13_01.png', NULL, NULL);

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
(23, 'T - SHIRT', '2020-09-15 18:52:55', '2020-09-15 18:52:55'),
(24, 'SƠ MI CỘC', '2020-09-15 18:53:19', '2020-09-15 18:53:19'),
(25, 'SƠ MI DÀI', '2020-09-15 18:54:22', '2020-09-15 18:54:22'),
(26, 'QUẦN SHORT', '2020-09-15 18:54:42', '2020-09-15 18:54:42'),
(27, 'QUẦN DÀI', '2020-09-15 18:54:55', '2020-09-15 18:54:55'),
(28, 'ÁO THU ĐÔNG', '2020-10-06 03:09:11', '2020-10-06 03:09:11'),
(29, 'ÁO BA LỖ', '2021-04-22 07:47:13', '2021-04-22 07:47:13');

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
(40, '14', 'Thanh toán khi nhận hàng', NULL, NULL, NULL, NULL, '228000', '10000', '0', '238000', '3', '0', 'May', '04-05-21', '2021', '542620', NULL, NULL);

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
(60, 40, '58', 'Áo polo thêu họa tiết Sailing Pazzini', 'Đen', 'XL', '2', '114000', '228000', NULL, NULL);

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
(6, 4, 'Style fashion 2021', 'Xu hướng thời trang 2021', 'public/media/post/1698199205185658.jpg', '<p>Trend</p>', '<p>Hôm nay mình sẽ cập nhật xu hướng thời trang 2021 với dàn mẫu khá hot cho các bạn nhé.</p>', NULL, NULL),
(9, 4, 'Summer Fashion', 'Thời trang mùa hè', 'public/media/post/1698200469258941.jpg', '<p>Summer Fashion<br></p>', '<p>Bạn hãy chọn cho mình những chiếc áo polo với chất liệu mát để thư giãn cho mùa hè 2021 nhé</p>', NULL, NULL);

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
(30, 22, 40, 14, 'Áo polo melange', 'TP007', '29', '<p>Áo POLO phối màu kẻ bo hàng xịn Torano</p>', 'Nâu', 'XL', '380000', '304000', NULL, NULL, 1, 1, 1, NULL, NULL, 1, 'public/media/product/1679792720690587.jpg', 'public/media/product/1679792721187189.jpg', 'public/media/product/1679792721369199.jpg', 1, NULL, NULL),
(31, 22, 39, 14, 'Áo polo họa tiết tropical fruit Torano', 'BSTP31072CV04SB', '30', '<p>Còn hàng</p>', 'Đen,Xám,Nâu,Trắng', 'XL,L,M,S', '330000', '165000', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1679796427063063.jpg', 'public/media/product/1679796427294347.jpg', 'public/media/product/1679796427494974.jpg', 1, NULL, NULL),
(32, 28, 61, 14, 'Áo khoác gió có mũ Pazzini CW015', 'AWCW01551PE00SB', '15', '<p>OK</p>', 'Xanh,Đen,Xám', 'XL,L,M,S', '600000', '530000', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'public/media/product/1679797147713347.jpg', 'public/media/product/1679797148394897.jpg', 'public/media/product/1679797149019207.jpg', 1, NULL, NULL),
(33, 28, 61, 14, 'Áo khoác Bomber gió bổ sườn Pazzini', 'AWCW01161PE00SB', '17', '<p>OK</p>', 'Xám,Đỏ tươi,Đỏ mận', 'XL,L,M,S', '500000', '400000', NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 'public/media/product/1679797407381164.jpg', 'public/media/product/1679797408236931.jpg', 'public/media/product/1679797408816632.jpg', 1, NULL, NULL),
(34, 28, 62, 14, 'Áo phông dài tay melange cổ tim Pazzini LTF19-01', 'AWTL00412CV02SB', '20', '<p>Áo len</p>', 'Xam,Trang,Xanh', 'XL,L,M,S', '250000', '190000', NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 'public/media/product/1679797781808610.jpg', 'public/media/product/1679797782204569.jpg', 'public/media/product/1679797782717157.jpg', 1, NULL, NULL),
(35, 25, 51, 14, 'Sơ mi dạ dài tay 2 túi Pazzini', 'AWTB01171CT12RB', '21', '<p>Sơ mi</p>', 'Đỏ Xanh,Xám Xanh', 'XL,L,M,S', '500000', '450000', NULL, NULL, NULL, 1, 1, 1, NULL, 1, 'public/media/product/1679798017731029.jpg', 'public/media/product/1679798018167989.jpg', 'public/media/product/1679798018608460.jpg', 1, NULL, NULL),
(36, 22, 40, 14, 'Áo polo kẻ ngang Torano TP037', 'BSTP03772CV08SB', '11', '<p>Polo</p>', 'Trắng Vàng', 'XL,L,M,S', '330000', '264000', NULL, NULL, 1, 1, 1, 1, 1, 1, 'public/media/product/1679798226640578.jpg', 'public/media/product/1679798226863154.jpg', 'public/media/product/1679798227089837.jpg', 1, NULL, NULL),
(37, 27, 60, 14, 'Quần Jogger gió đục lỗ sườn Torano', 'BWBW20103PE00SB', '12', '<p>Quần dài</p>', 'Xanh,Đen,Xám', 'XL,L,M,S', '460000', '380000', NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1679800314336612.jpg', 'public/media/product/1679800314652318.jpg', 'public/media/product/1679800315025006.jpg', 1, NULL, NULL),
(38, 22, 38, 14, 'Áo polo trơn thêu logo trước ngực Torano TP503', 'BSTP50372CV00SB', '15', '<p>Polo</p>', 'Vàng,Xám,Xanh', 'XL,L,M,S', '350000', '256000', NULL, 1, 1, NULL, 1, 1, NULL, NULL, 'public/media/product/1679800555077606.jpg', 'public/media/product/1679800555208429.jpg', 'public/media/product/1679800555350435.jpg', 1, NULL, NULL),
(39, 22, 38, 14, 'Áo Polo Basic phối bo kẻ Pazzini', 'SAPMTPS.S39.S', '10', '<p>Polo</p>', 'Xanh,Trắng,Đen', 'XL,L,M,S', '300000', '150000', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'public/media/product/1679800757178178.jpg', 'public/media/product/1679800757560545.jpg', 'public/media/product/1679800757861910.jpg', 1, NULL, NULL),
(40, 23, 42, 14, 'Áo phông ngắn tay họa tiết in logo Torano TS061', 'BSTS06112CT06SB', '11', '<p>Thun</p>', 'Trắng,Đen', 'XL,L,M,S', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'public/media/product/1679800933601715.jpg', 'public/media/product/1679800933868870.jpg', 'public/media/product/1679800934063995.jpg', 1, NULL, NULL),
(41, 24, 46, 14, 'Áo Sơ mi ngắn tay Pazzini họa tiết S01', 'SAPMTSH.S01.F', '37', '<p>Somi</p>', 'Trắng,Đen,Xanh', 'XL,L,M,S', '350000', '175000', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'public/media/product/1679801097830996.jpg', 'public/media/product/1679801098322424.jpg', 'public/media/product/1679801098546567.jpg', 1, NULL, NULL),
(42, 23, 42, 14, 'Áo phông ngắn tay họa tiết The Hope Torano', 'BSTS06012CT06SB', '10', '<p>Phông</p>', 'Trắng,Đen', 'XL,L,M', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679801306004849.jpg', 'public/media/product/1679801306178268.jpg', 'public/media/product/1679801306360104.jpg', 1, NULL, NULL),
(43, 23, 42, 14, 'Áo phông ngắn tay họa tiết Cupid Torano', 'BSTS85212CT06AB', '15', '<p>Phông</p>', 'Đen', 'XL,L,M', '290000', '145000', NULL, NULL, 1, 1, 1, 1, NULL, 1, 'public/media/product/1679801448343082.jpg', 'public/media/product/1679801449625614.jpg', 'public/media/product/1679801450592637.jpg', 1, NULL, NULL),
(44, 23, 43, 14, 'Áo phông ngắn tay kẻ ngang Torano TS022', 'BSTS02212CT07SB', '12', '<p>OK</p>', 'Kẻ đen,Kẻ đỏ', 'XL,L,M', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679801629355162.jpg', 'public/media/product/1679801629644875.jpg', 'public/media/product/1679801629930671.jpg', 1, NULL, NULL),
(45, 23, 43, 14, 'Áo phông ngắn tay kẻ ngang Torano TS020', 'BSTS02012CT07SB', '29', '<p>OK</p>', 'Kẻ vàng,Kẻ xanh,Kẻ đỏ', 'L,M', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679801785121953.jpg', 'public/media/product/1679801785350123.jpg', 'public/media/product/1679801785556997.jpg', 1, NULL, NULL),
(46, 23, 44, 14, 'Áo phông ngắn tay bo phối họa tiết Torano', 'BSTS61212CT00SB', '16', '<p>OK</p>', 'Đen,Xanh,Trắng', 'XL,L,M', '200000', '100000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679802036045625.jpg', 'public/media/product/1679802036318507.jpg', 'public/media/product/1679802036583711.jpg', 1, NULL, NULL),
(47, 23, 44, 14, 'Áo phông ngắn tay trơn cổ tim Torano TS102', 'BSTS10222CV00SB', '37', '<p>OK</p>', 'Xanh,Đen,Trắng', 'L,M,S', '150000', '75000', NULL, NULL, 1, 1, 1, NULL, 1, NULL, 'public/media/product/1679802168063842.jpg', 'public/media/product/1679802168379944.jpg', 'public/media/product/1679802168665920.jpg', 1, NULL, NULL),
(48, 23, 42, 14, 'Áo phông ngắn tay họa tiết in logo Torano TS103', 'BSTS10312CT06SB', '12', '<p>OK</p>', 'Đen, Trắng', 'XL,L,M', '220000', '110000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679802316663720.jpg', 'public/media/product/1679802317212243.jpg', 'public/media/product/1679802317993745.jpg', 1, NULL, NULL),
(49, 23, 42, 14, 'Áo phông ngắn tay họa tiết TS069', 'BSTS06912CT05SB', '14', '<p>OK</p>', 'Xám,Trắng', 'XL,L,M', '200000', '100000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679802450682262.jpg', 'public/media/product/1679802450991544.jpg', 'public/media/product/1679802451235010.jpg', 1, NULL, NULL),
(50, 23, 42, 14, 'Áo phông ngắn tay họa tiết Sunset Beach Torano', 'BSTS27712CT06SB', '18', '<p>OK</p>', 'Xanh,Xám', 'XL,L,M', '300000', '150000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679804251882211.jpg', 'public/media/product/1679804252196914.jpg', 'public/media/product/1679804252384299.jpg', 1, NULL, NULL),
(51, 23, 42, 14, 'Áo phông ngắn tay họa tiết Biker Torano', 'BSTS50312CT06SB', '29', '<p>OK</p>', 'Trắng,Xám', 'XL,L,M', '200000', '100000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679804405420060.jpg', 'public/media/product/1679804405546500.jpg', 'public/media/product/1679804405667501.jpg', 1, NULL, NULL),
(52, 23, 42, 14, 'Áo phông ngắn tay họa tiết Biker Torano', 'BSTS50312CT06SB', '11', '<p>OK</p>', 'Trắng,Xám', 'XL,L,M', '200000', '100000', NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679804406125594.jpg', 'public/media/product/1679804406254227.jpg', 'public/media/product/1679804406379984.jpg', 1, NULL, NULL),
(53, 22, 39, 14, 'Áo polo họa tiết tropical leaf Torano', 'BSTP08372CV05SB', '17', '<p>OK</p>', 'Xanh,Đen,Trắng', 'XL,L,M', '350000', '245000', NULL, NULL, 1, 1, 1, 1, NULL, 1, 'public/media/product/1679804587717303.jpg', 'public/media/product/1679804587865326.jpg', 'public/media/product/1679804587964180.jpg', 1, NULL, NULL),
(54, 22, 39, 14, 'Áo polo họa tiết Baseball Torano', 'BSTP05872CV04SB', '19', '<p>OK</p>', 'Trắng,Cam,Đen', 'XL,L,M', '350000', '280000', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 'public/media/product/1679804774190908.jpg', 'public/media/product/1679804774575625.jpg', 'public/media/product/1679804774925390.jpg', 1, NULL, NULL),
(55, 22, 40, 14, 'Áo polo kẻ ngang in logo Torano TP097', 'BSTP09772CX07SB', '12', '<p>OK</p>', 'Xanh,Đỏ,Xám', 'XL,L,M,S', '350000', '280000', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 'public/media/product/1679804964376690.jpg', 'public/media/product/1679804964520413.jpg', 'public/media/product/1679804964670218.jpg', 1, NULL, NULL),
(56, 25, 50, 14, 'Sơ mi dài tay họa tiết Torano TB150', 'BATB15071BA21SB', '19', '<p>OK</p>', 'Xanh', 'XL,L,M', '450000', '380000', NULL, NULL, 1, 1, NULL, NULL, NULL, 1, 'public/media/product/1679805157245579.jpg', 'public/media/product/1679805157593836.jpg', 'public/media/product/1679805157927576.jpg', 1, NULL, NULL),
(57, 22, 39, 14, 'Áo polo họa tiết active Squarebox Torano', 'BSTP00472CX04SB', '14', '<p>OK</p>', 'Xanh nhạt,Xanh đậm,Đen', 'XL,L,M', '350000', '245000', NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 'public/media/product/1679805380251515.jpg', 'public/media/product/1679805380563385.jpg', 'public/media/product/1679805380796987.jpg', 1, NULL, NULL),
(58, 22, 39, 14, 'Áo polo thêu họa tiết Sailing Pazzini', 'SAPMTPS.S27.F', '47', '<p>OK</p>', 'Đen,Trắng,Xanh', 'XL,S', '380000', '114000', NULL, 1, 1, 1, 1, NULL, NULL, NULL, 'public/media/product/1679805507673440.jpg', 'public/media/product/1679805508104918.jpg', 'public/media/product/1679805508506834.jpg', 1, NULL, NULL);

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
(40, '40', 'Hòa', '0353830798', 'hoadx.utt@gmail.com', 'HN', 'HN', NULL, NULL);

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
(1, '0353830798', '0353830798', 'hoadx.utt@gmail.com', 'Trường Đại học Công nghệ GTVT', '54 Triều Khúc, Thanh Xuân, Hà Nội', 'facebook.com', 'youtube.com', 'instragram.com', 'twitter.com', NULL, NULL);

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
(61, 28, 'Áo gió', NULL, NULL),
(62, 28, 'Áo len', NULL, NULL),
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
  `avatar` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `avatar`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 'Tuấn Anh', '0347777977', 'tuananh@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$dXvR02s/Ut9bgZgy5YxuOuUNl9wQkk11CEdt7HkV.QBagl572GS0C', NULL, '2021-04-25 03:41:08', '2021-04-25 03:41:08'),
(14, 'Hòa', '0353830798', 'hoadx.utt@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$vhsKEm8dpET4VNJV7PBU0O0w8Gh6bjAnf5TIXyv7KIRux9t7zMpAK', NULL, '2021-04-25 04:00:23', '2021-04-25 04:00:23'),
(15, 'Chuyên', '0346820222', 'chuyen@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$VU/gkiPW0ixFIfY2DqRNdOAhDqxTE3LRHo4InX1y.7o4558GXqEgG', NULL, '2021-04-25 04:01:43', '2021-04-25 04:01:43'),
(16, 'Khánh', '0346666888', 'khanh@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$IxQjkiPXS/B9bdE9G.98IeHqIiDZE29CcFSLhQV0cVPz7JDqhEUQO', NULL, '2021-04-27 22:43:00', '2021-04-27 22:43:00');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
