-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2017 at 11:01 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngangia`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `path`, `seo_title`, `seo_description`, `isActive`, `order`, `level`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Thiết Bị Văn Phòng Hiện Đại', 'images/uploads/images/danhmuc/thiet_bi_van_phong_hien_dai.jpg', '<p>Mô tả ngắn 1</p>', 'thiet-bi-van-phong-hien-dai', 'tiêu đề seo', '<p>mô tả seo</p>', 1, 1, 0, 0, 1, '2017-12-24 07:51:01', '2017-12-25 15:10:37'),
(2, 'Máy Tính', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn 1</p>', 'may-tinh', 'Tiêu Đề SEO 1', '<p>M&ocirc; Tả SEO 1</p>', 1, 1, 1, 1, 1, '2017-12-24 07:53:55', '2017-12-24 08:36:21'),
(3, 'Máy In', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn 1</p>', 'may-in', 'Tiêu Đề SEO 1', '<p>M&ocirc; Tả SEO 1</p>', 1, 3, 1, 1, 1, '2017-12-24 07:59:07', '2017-12-24 08:36:52'),
(4, 'Máy Chiếu', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn 1</p>', 'may-chieu', 'Tiêu Đề SEO 1', '<p>M&ocirc; Tả Seo 1</p>', 1, 2, 1, 1, 1, '2017-12-24 08:00:07', '2017-12-24 08:36:34'),
(5, 'Máy Photocopy', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'may-photocopy', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 4, 1, 1, 1, '2017-12-24 08:37:40', '2017-12-24 08:37:49'),
(6, 'Bàn Văn Phòng', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ban-van-phong', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 5, 1, 1, 1, '2017-12-24 08:38:43', '2017-12-24 08:38:50'),
(7, 'Ghế Ngồi Văn Phòng', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ghe-ngoi-van-phong', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 6, 1, 1, 1, '2017-12-24 09:04:48', '2017-12-24 09:04:48'),
(8, 'Máy Tính Laptop', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'may-tinh-laptop', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 2, 2, 1, '2017-12-24 09:07:57', '2017-12-24 09:07:57'),
(9, 'Máy Tính PC', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'may-tinh-pc', 'Tiêu Đề SEO', '<p>M&ocirc; tả SEO</p>', 1, 2, 2, 2, 1, '2017-12-24 09:21:46', '2017-12-24 09:21:46'),
(10, 'Máy Chiếu Panasonic', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'may-chieu-panasonic', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 2, 4, 1, '2017-12-24 09:22:52', '2017-12-24 09:22:52'),
(11, 'Máy Chiếu Sony', '0', '<p>M&ocirc; Tả Ngắn</p>', 'may-chieu-sony', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 2, 2, 4, 1, '2017-12-24 09:23:40', '2017-12-24 09:23:40'),
(12, 'Canon', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'canon', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 2, 3, 1, '2017-12-24 09:24:21', '2017-12-24 09:24:41'),
(13, 'HP', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'hp', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 2, 2, 3, 1, '2017-12-24 09:25:15', '2017-12-24 09:25:15'),
(14, 'Canon', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'canon', 'Tiêu D(ề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 2, 5, 1, '2017-12-24 09:26:12', '2017-12-24 09:26:12'),
(15, 'Ricoh', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ricoh', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 2, 2, 5, 1, '2017-12-24 09:26:58', '2017-12-24 09:26:58'),
(16, 'Bàn Làm Việc Giám Đốc - Trưởng Phòng', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ban-lam-viec-giam-doc-truong-phong', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 2, 6, 1, '2017-12-24 09:27:49', '2017-12-24 09:27:49'),
(17, 'Bàn Làm Việc Nhân Viên', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ban-lam-viec-nhan-vien', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 2, 2, 6, 1, '2017-12-24 09:28:35', '2017-12-24 09:28:49'),
(18, 'Bàn Họp', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ban-hop', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 3, 2, 6, 1, '2017-12-24 09:29:42', '2017-12-24 09:29:42'),
(19, 'Ghế Ngồi Làm Việc Giám Đốc - Trưởng Phòng', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ghe-ngoi-lam-viec-giam-doc-truong-phong', 'Tiêu D(ề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 2, 7, 1, '2017-12-24 09:30:42', '2017-12-24 09:30:42'),
(20, 'Ghế Nhân Viên', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ghe-nhan-vien', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 2, 2, 7, 1, '2017-12-24 09:31:41', '2017-12-24 09:31:41'),
(21, 'Ghế Phòng Họp', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ghe-phong-hop', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 3, 2, 7, 1, '2017-12-24 09:32:20', '2017-12-24 09:32:20'),
(22, 'Thiết Bị Giáo Dục', 'images/uploads/images/danhmuc/thiet_bi_giao_duc.jpg', '<p>Mô Tả Ngắn </p>', 'thiet-bi-giao-duc', 'Tiêu D(ề SEO', '<p>Mô Tả SEO</p>', 1, 2, 0, 0, 1, '2017-12-24 09:34:49', '2017-12-25 15:17:07'),
(23, 'Bàn Ghế Học Sinh', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ban-ghe-hoc-sinh', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 1, 22, 1, '2017-12-24 09:36:43', '2017-12-24 09:36:43'),
(24, 'Phòng Máy Tính', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'phong-may-tinh', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 1, 22, 1, '2017-12-24 09:37:23', '2017-12-24 09:37:23'),
(25, 'Phòng LAB Ngoại Ngữ', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'phong-lab-ngoai-ngu', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 3, 1, 22, 1, '2017-12-24 09:38:07', '2017-12-24 09:38:20'),
(26, 'Phòng Thí Nghiệm Bộ Môn', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'phong-thi-nghiem-bo-mon', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 4, 1, 22, 1, '2017-12-24 09:38:56', '2017-12-24 09:38:56'),
(27, 'Thiết Bị Mầm Non', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngăn</p>', 'thiet-bi-mam-non', 'Tiêu Đề SEO', '<p>M&ocirc; Tả&nbsp;SEO</p>', 1, 5, 1, 22, 1, '2017-12-24 09:39:38', '2017-12-24 09:39:38'),
(28, 'Thư Viện Điện Tử - Thư Viện Số', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'thu-vien-dien-tu-thu-vien-so', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 3, 0, NULL, 1, '2017-12-24 09:40:46', '2017-12-24 09:40:46'),
(29, 'Thiết Bị Phòng Thí Nghiệm Kỹ Thuật', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'thiet-bi-phong-thi-nghiem-ky-thuat', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 4, 0, NULL, 1, '2017-12-24 09:41:35', '2017-12-24 09:41:35'),
(30, 'Thiết Bị Y Tế - Y Khoa - Nha Khoa', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'thiet-bi-y-te-y-khoa-nha-khoa', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 5, 0, NULL, 1, '2017-12-24 09:42:29', '2017-12-24 09:42:29'),
(31, 'Thiết Bị Dạy Nghề', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'thiet-bi-day-nghe', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 6, 0, NULL, 1, '2017-12-24 09:43:01', '2017-12-24 09:43:01'),
(32, '3M Dán Màn Hình Máy Tính', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', '3m-dan-man-hinh-may-tinh', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 7, 0, NULL, 1, '2017-12-24 09:43:41', '2017-12-24 09:43:41'),
(33, 'FPT', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'fpt', 'FPT', '<p>M&ocirc; Tả SEO</p>', 1, 1, 3, 9, 1, '2017-12-24 14:59:55', '2017-12-24 14:59:55'),
(34, 'VTB', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'vtb', 'VTB', '<p>M&ocirc; Tả SEO</p>', 1, 2, 3, 9, 1, '2017-12-24 15:01:15', '2017-12-24 15:01:15'),
(35, 'DELL', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'dell', 'DELL', '<p>M&ocirc; Tả SEO</p>', 1, 3, 3, 9, 1, '2017-12-24 15:02:36', '2017-12-24 15:02:36');

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2017-12-23 13:04:28', '2017-12-23 13:04:28'),
(2, 'User', '2017-12-23 13:04:28', '2017-12-23 13:04:28'),
(3, 'Loại Sản Phẩm', '2017-12-24 02:03:30', '2017-12-24 02:03:30'),
(4, 'Sản Phẩm', '2017-12-24 11:26:58', '2017-12-24 11:26:58');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_12_23_195635_create_entrust_setup_tables', 2),
(4, '2017_12_24_085328_create_categories_table', 3),
(5, '2017_12_24_182205_create_products_table', 4);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2017-12-23 13:06:50', '2017-12-23 13:06:50'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2017-12-23 13:06:50', '2017-12-23 13:06:50'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2017-12-23 13:06:50', '2017-12-23 13:06:50'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2017-12-23 13:06:50', '2017-12-23 13:06:50'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2017-12-23 13:06:50', '2017-12-23 13:06:50'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2017-12-23 13:06:50', '2017-12-23 13:06:50'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2017-12-23 13:06:51', '2017-12-23 13:06:51'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2017-12-23 13:06:51', '2017-12-23 13:06:51'),
(9, 'category-list', 'Xem Toàn Bộ Loại Sản Phẩm', 'Được Xem Toàn Bộ Loại Sản Phẩm', 3, '2017-12-24 02:04:45', '2017-12-24 02:04:45'),
(10, 'category-create', 'Tạo Loại Sản Phẩm Mới', 'Được Tạo Loại Sản Phẩm Mới', 3, '2017-12-24 02:04:45', '2017-12-24 02:04:45'),
(11, 'category-edit', 'Cập Nhật Loại Sản Phẩm', 'Được Cập Nhật Loại Sản Phẩm', 3, '2017-12-24 02:04:45', '2017-12-24 02:04:45'),
(12, 'category-delete', 'Xóa Loại Sản Phẩm', 'Được Xóa Loại Sản Phẩm', 3, '2017-12-24 02:04:45', '2017-12-24 02:04:45'),
(13, 'product-list', 'Xem Toàn Bộ Sản Phẩm', 'Được Xem Toàn Bộ Sản Phẩm', 4, '2017-12-24 11:27:53', '2017-12-24 11:27:53'),
(14, 'product-create', 'Tạo Sản Phẩm Mới', 'Được Tạo Sản Phẩm Mới', 4, '2017-12-24 11:27:53', '2017-12-24 11:27:53'),
(15, 'product-edit', 'Cập Nhật Sản Phẩm', 'Được Cập Nhật Sản Phẩm', 4, '2017-12-24 11:27:53', '2017-12-24 11:27:53'),
(16, 'product-delete', 'Xóa Sản Phẩm', 'Được Xóa Sản Phẩm', 4, '2017-12-24 11:27:53', '2017-12-24 11:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `path`, `isActive`, `image`, `description`, `seo_title`, `seo_description`, `order`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Asus', 'laptop-asus', 1, 'images/uploads/images/SanPham/ThietBiVanPhong/maytinh/laptop/ASUS_LABTOP.jpg', '<p>M&ocirc; Tả Sản Phẩm</p>', 'Laptop Asus', '<p>M&ocirc; Tả SEO</p>', 1, 1, 8, '2017-12-24 14:44:03', '2017-12-24 14:44:03'),
(2, 'Laptop Dell', 'laptop-dell', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/laptop/DELL_LAPTOP.jpg', '<p>M&ocirc; Tả Sản Phẩm</p>', 'Laptop Dell', '<p>M&ocirc; Tả SEO</p>', 2, 1, 8, '2017-12-24 14:49:26', '2017-12-24 14:52:29'),
(3, 'Laptop HP', 'laptop-hp', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/laptop/HP_LABTOP.jpg', '<p>M&ocirc; Tả Sản Phẩm</p>', 'Laptop HP', '<p>M&ocirc; Tả SEP</p>', 3, 1, 8, '2017-12-24 14:53:19', '2017-12-24 14:53:19'),
(4, 'Laptop Lenovo', 'laptop-lenovo', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/laptop/LENOVO_LABTOP.jpg', '<p>M&ocirc; Tả Sản Phẩm</p>', 'Laptop Lenovo', '<p>M&ocirc; Tả SEO</p>', 4, 1, 8, '2017-12-24 14:54:19', '2017-12-24 14:54:19'),
(5, 'FPT Elead E955', 'fpt-elead-e955', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_E955.jpg', '<p>FPT Elead E955</p>', 'FPT Elead E955', '<p>FPT Elead E955</p>', 1, 1, 33, '2017-12-24 15:05:23', '2017-12-24 15:05:23'),
(6, 'FPT Elead M354', 'fpt-elead-m354', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M354.jpg', '<p>FPT Elead M354</p>', 'FPT Elead M354', '<p>FPT Elead M354</p>', 2, 1, 33, '2017-12-24 15:05:51', '2017-12-24 15:06:01'),
(7, 'FPT Elead M525', 'fpt-elead-m525', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M525.jpg', '<p>FPT Elead M525</p>', 'FPT Elead M525', '<p>FPT Elead M525</p>', 3, 1, 33, '2017-12-24 15:06:39', '2017-12-24 15:06:39'),
(8, 'FPT Elead M525i', 'fpt-elead-m525i', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M525i.jpg', '<p>FPT Elead M525i</p>', 'FPT Elead M525i', '<p>FPT Elead M525i</p>', 4, 1, 33, '2017-12-24 15:07:03', '2017-12-24 15:07:11'),
(9, 'FPT Elead M539', 'fpt-elead-m539', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M539.jpg', '<p>FPT Elead M539</p>', 'FPT Elead M539', '<p>FPT Elead M539</p>', 5, 1, 33, '2017-12-24 15:07:45', '2017-12-24 15:07:45'),
(10, 'FPT Elead M540i', 'fpt-elead-m540i', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M540i.jpg', '<p>FPT Elead M540i</p>', 'FPT Elead M540i', '<p>FPT Elead M540i</p>', 6, 1, 33, '2017-12-24 15:08:09', '2017-12-24 15:08:09'),
(11, 'FPT Elead S878i', 'fpt-elead-s878i', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_S878i.jpg', '<p>FPT Elead S878i</p>', 'FPT Elead S878i', '<p>FPT Elead S878i</p>', 7, 1, 33, '2017-12-24 15:08:51', '2017-12-24 15:08:51'),
(12, 'FPT Elead S879', 'fpt-elead-s879', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_S879.jpg', '<p>FPT Elead S879</p>', 'FPT Elead S879', '<p>FPT Elead S879</p>', 9, 1, 33, '2017-12-24 15:09:13', '2017-12-24 15:09:13'),
(13, 'VTB PC 2.2L7', 'vtb-pc-22l7', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_2_2L7.png', '<p>VTB PC 2.2L7</p>', 'VTB PC 2.2L7', '<p>VTB PC 2.2L7</p>', 1, 1, 34, '2017-12-24 15:12:03', '2017-12-24 15:12:03'),
(14, 'VTB PC 301A', 'vtb-pc-301a', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_301A.png', '<p>VTB PC 301A</p>', 'VTB PC 301A', '<p>VTB PC 301A</p>', 2, 1, 34, '2017-12-24 15:12:30', '2017-12-24 15:12:30'),
(15, 'VTB PC 2660E', 'vtb-pc-2660e', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_2660E.png', '<p>VTB PC 2660E</p>', 'VTB PC 2660E', '<p>VTB PC 2660E</p>', 3, 1, 34, '2017-12-24 15:13:03', '2017-12-24 15:13:03'),
(16, 'VTB PC 2802A', 'vtb-pc-2802a', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_2802A.png', '<p>VTB PC 2802A</p>', 'VTB PC 2802A', '<p>VTB PC 2802A</p>', 4, 1, 34, '2017-12-24 15:13:29', '2017-12-24 15:13:29'),
(17, 'VTB PC 3001A', 'vtb-pc-3001a', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_3001A.png', '<p>VTB PC 3001A</p>', 'VTB PC 3001A', '<p>VTB PC 3001A</p>', 5, 1, 34, '2017-12-24 15:14:01', '2017-12-24 15:14:01'),
(18, 'VTB PC 3060E', 'vtb-pc-3060e', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_3060E.png', '<p>VTB PC 3060E</p>', 'VTB PC 3060E', '<p>VTB PC 3060E</p>', 6, 1, 34, '2017-12-24 15:14:26', '2017-12-24 15:14:26'),
(19, 'VTB PC 3061E', 'vtb-pc-3061e', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_3061E.png', '<p>VTB PC 3061E</p>', 'VTB PC 3061E', '<p>VTB PC 3061E</p>', 7, 1, 34, '2017-12-24 15:14:57', '2017-12-24 15:14:57'),
(20, 'VTB PC X27-L7G', 'vtb-pc-x27-l7g', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_X27_L7G.png', '<p>VTB PC X27-L7G</p>', 'VTB PC X27-L7G', '<p>VTB PC X27-L7G</p>', 8, 1, 34, '2017-12-24 15:15:24', '2017-12-24 15:15:24'),
(21, 'DELL 1', 'dell-1', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_1.JPG', '<p>DELL 1</p>', 'DELL 1', '<p>DELL 1</p>', 1, 1, 35, '2017-12-24 15:18:44', '2017-12-24 15:18:44'),
(22, 'DELL 990', 'dell-990', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_990.jpg', '<p>DELL 990</p>', 'DELL 990', '<p>DELL 990</p>', 2, 1, 35, '2017-12-24 15:19:36', '2017-12-24 15:19:36'),
(23, 'DELL 1700', 'dell-1700', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_1700.jpg', '<p>DELL 1700</p>', 'DELL 1700', '<p>DELL 1700</p>', 3, 1, 35, '2017-12-24 15:19:56', '2017-12-24 15:19:56'),
(24, 'DELL 3020_20sff', 'dell-302020sff', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_3020_20sff.jpg', '<p>DELL 3020_20sff</p>', 'DELL 3020_20sff', '<p>DELL 3020_20sff</p>', 4, 1, 35, '2017-12-24 15:20:30', '2017-12-24 15:20:30'),
(25, 'DELL 7010mt', 'dell-7010mt', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_7010mt.png', '<p>DELL 7010mt</p>', 'DELL 7010mt', '<p>DELL 7010mt</p>', 5, 1, 35, '2017-12-24 15:21:07', '2017-12-24 15:21:07'),
(26, 'DELL t5600', 'dell-t5600', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_t5600.jpg', '<p>DELL t5600</p>', 'DELL t5600', '<p>DELL t5600</p>', 6, 1, 35, '2017-12-24 15:21:34', '2017-12-24 15:21:34'),
(27, 'Dell Optiplex 790', 'dell-optiplex-790', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/Dell_optiplex_790.jpg', '<p>Dell Optiplex 790</p>', 'Dell Optiplex 790', '<p>Dell Optiplex 790</p>', 7, 1, 35, '2017-12-24 15:21:58', '2017-12-24 15:39:08'),
(28, 'Dell t5610', 'dell-t5610', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/Dell_t5610.jpg', '<p>Dell t5610</p>', 'Dell t5610', '<p>Dell t5610</p>', 8, 1, 35, '2017-12-24 15:22:32', '2017-12-24 15:22:32'),
(29, 'PANANSONIC PT LB412', 'panansonic-pt-lb412', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANANSONIC_PT_LB412.jpg', '<p>PANANSONIC PT LB412</p>', 'PANANSONIC PT LB412', '<p>PANANSONIC PT LB412</p>', 1, 1, 10, '2017-12-24 15:36:48', '2017-12-24 15:36:48'),
(30, 'PANASONIC PT D5000ES', 'panasonic-pt-d5000es', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_D5000ES.jpg', '<p>PANASONIC PT D5000ES</p>', 'PANASONIC PT D5000ES', '<p>PANASONIC PT D5000ES</p>', 2, 1, 10, '2017-12-24 15:37:17', '2017-12-24 15:37:17'),
(31, 'PANASONIC PT DX610ELS', 'panasonic-pt-dx610els', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_DX610ELS.jpg', '<p>PANASONIC PT DX610ELS</p>', 'PANASONIC PT DX610ELS', '<p>PANASONIC PT DX610ELS</p>', 3, 1, 10, '2017-12-24 15:37:48', '2017-12-24 15:37:48'),
(32, 'PANASONIC PT RW430', 'panasonic-pt-rw430', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_RW430.jpg', '<p>PANASONIC PT RW430</p>', 'PANASONIC PT RW430', '<p>PANASONIC PT RW430</p>', 4, 1, 10, '2017-12-24 15:38:16', '2017-12-24 15:38:16'),
(33, 'PANASONIC PT TX400A', 'panasonic-pt-tx400a', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_TX400A.jpg', '<p>PANASONIC PT TX400A</p>', 'PANASONIC PT TX400A', '<p>PANASONIC PT TX400A</p>', 5, 1, 10, '2017-12-24 15:38:42', '2017-12-24 15:38:42'),
(34, 'PANASONIC PT VW355NZ', 'panasonic-pt-vw355nz', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_VW355NZ.jpg', '<p>PANASONIC PT VW355NZ</p>', 'PANASONIC PT VW355NZ', '<p>PANASONIC PT VW355NZ</p>', 6, 1, 10, '2017-12-24 15:40:01', '2017-12-24 15:40:01'),
(35, 'PANASONIC PT VW535N', 'panasonic-pt-vw535n', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_VW535N.jpg', '<p>PANASONIC-PT-VW535N</p>', 'PANASONIC-PT-VW535N', '<p>PANASONIC-PT-VW535N</p>', 7, 1, 10, '2017-12-24 15:40:31', '2017-12-24 15:40:31'),
(36, 'PANASONIC PT VW540A', 'panasonic-pt-vw540a', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_VW540A.jpg', '<p>PANASONIC PT VW540A</p>', 'PANASONIC PT VW540A', '<p>PANASONIC PT VW540A</p>', 8, 1, 10, '2017-12-24 15:41:10', '2017-12-24 15:41:10'),
(37, 'MÁY CHIẾU SIÊU GẦN SONY VPL SW630', 'may-chieu-sieu-gan-sony-vpl-sw630', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/MAY_CHIEU_SIEU_GAN_SONY_VPL_SW630.jpg', '<p>M&Aacute;Y CHIẾU SI&Ecirc;U GẦN SONY VPL SW630</p>', 'MÁY CHIẾU SIÊU GẦN SONY VPL SW630', '<p>M&Aacute;Y CHIẾU SI&Ecirc;U GẦN SONY VPL SW630</p>', 1, 1, 11, '2017-12-24 15:44:29', '2017-12-24 15:44:29'),
(38, 'SONY VPL CH355', 'sony-vpl-ch355', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_CH355.jpeg', '<p>SONY VPL CH355</p>', 'SONY VPL CH355', '<p>SONY VPL CH355</p>', 2, 1, 11, '2017-12-24 15:45:05', '2017-12-24 15:45:05'),
(39, 'SONY VPL DW122', 'sony-vpl-dw122', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_DW122.jpg', '<p>SONY VPL DW122</p>', 'SONY VPL DW122', '<p>SONY VPL DW122</p>', 3, 1, 11, '2017-12-24 15:45:40', '2017-12-24 15:45:40'),
(40, 'SONY VPL DW240', 'sony-vpl-dw240', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_DW240.jpg', '<p>SONY VPL DW240</p>', 'SONY VPL DW240', '<p>SONY VPL DW240</p>', 4, 1, 11, '2017-12-24 15:46:06', '2017-12-24 15:46:06'),
(41, 'Sony Vpl Dx221', 'sony-vpl-dx221', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/sony_vpl_dx221.jpg', '<p>Sony Vpl Dx221</p>', 'Sony Vpl Dx221', '<p>Sony Vpl Dx221</p>', 5, 1, 11, '2017-12-24 15:46:44', '2017-12-24 15:46:44'),
(42, 'SONY VPL EW235', 'sony-vpl-ew235', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_EW235.jpg', '<p>SONY VPL EW235</p>', 'SONY VPL EW235', '<p>SONY VPL EW235</p>', 6, 1, 11, '2017-12-24 15:47:22', '2017-12-24 15:47:22'),
(43, 'SONY VPL EX225', 'sony-vpl-ex225', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_EX225.jpg', '<p>SONY VPL EX225</p>', 'SONY VPL EX225', '<p>SONY VPL EX225</p>', 7, 1, 11, '2017-12-24 15:47:51', '2017-12-24 15:47:51'),
(44, 'SONY VPL EX310', 'sony-vpl-ex310', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_EX310.jpeg', '<p>SONY VPL EX310</p>', 'SONY VPL EX310', '<p>SONY VPL EX310</p>', 8, 1, 11, '2017-12-24 15:48:25', '2017-12-24 15:48:25'),
(45, 'SONY VPL FH65', 'sony-vpl-fh65', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_FH65.png', '<p>SONY VPL FH65</p>', 'SONY VPL FH65', '<p>SONY VPL FH65</p>', 9, 1, 11, '2017-12-24 15:48:56', '2017-12-24 15:48:56'),
(46, 'SONY VPL FX30', 'sony-vpl-fx30', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_FX30.jpg', '<p>SONY VPL FX30</p>', 'SONY VPL FX30', '<p>SONY VPL FX30</p>', 10, 1, 11, '2017-12-24 15:49:20', '2017-12-24 15:49:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '<p>administer the website and manage users</p>', '2017-12-23 13:01:45', '2017-12-24 13:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$rG8VdWRLxK5QeV4VA2SM5uANYeHpYtwj2B3WWWyfzwl7gAa3zHkFu', NULL, '2017-12-23 11:59:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
