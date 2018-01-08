-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2018 at 04:28 PM
-- Server version: 10.1.18-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ngangiacomvn_ngangia`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_user_id_foreign` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=67 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`, `path`, `seo_title`, `seo_description`, `isActive`, `order`, `level`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Thiết Bị Văn Phòng Hiện Đại', 'images/uploads/images/danhmuc/temp_category_level_0_thietbivanphong.jpg', '<p>Mô tả ngắn 1</p>', 'thiet-bi-van-phong-hien-dai', 'tiêu đề seo', '<p>mô tả seo</p>', 1, 1, 0, 0, 1, '2017-12-24 07:51:01', '2018-01-05 01:50:57'),
(2, 'Máy Tính', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn 1</p>', 'may-tinh', 'Tiêu Đề SEO 1', '<p>M&ocirc; Tả SEO 1</p>', 1, 1, 1, 1, 1, '2017-12-24 07:53:55', '2017-12-24 08:36:21'),
(3, 'Máy In', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn 1</p>', 'may-in', 'Tiêu Đề SEO 1', '<p>M&ocirc; Tả SEO 1</p>', 1, 3, 1, 1, 1, '2017-12-24 07:59:07', '2017-12-24 08:36:52'),
(4, 'Máy Chiếu', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn 1</p>', 'may-chieu', 'Tiêu Đề SEO 1', '<p>M&ocirc; Tả Seo 1</p>', 1, 2, 1, 1, 1, '2017-12-24 08:00:07', '2017-12-24 08:36:34'),
(5, 'Máy Photocopy', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'may-photocopy', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 4, 1, 1, 1, '2017-12-24 08:37:40', '2017-12-24 08:37:49'),
(6, 'Bàn Văn Phòng', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ban-van-phong', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 5, 1, 1, 1, '2017-12-24 08:38:43', '2017-12-24 08:38:50'),
(7, 'Ghế Ngồi Văn Phòng', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ghe-ngoi-van-phong', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 6, 1, 1, 1, '2017-12-24 09:04:48', '2017-12-24 09:04:48'),
(8, 'Máy Tính Laptop', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'may-tinh-laptop', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 2, 2, 1, '2017-12-24 09:07:57', '2017-12-24 09:07:57'),
(9, 'Máy Tính PC', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'may-tinh-pc', 'Tiêu Đề SEO', '<p>M&ocirc; tả SEO</p>', 1, 2, 2, 2, 1, '2017-12-24 09:21:46', '2017-12-24 09:21:46'),
(10, 'Máy Chiếu Panasonic', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'may-chieu-panasonic', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 2, 4, 1, '2017-12-24 09:22:52', '2017-12-24 09:22:52'),
(11, 'Máy Chiếu Sony', 'images/uploads/images/temp_list_product_banner.png', '<p>Mô Tả Ngắn</p>', 'may-chieu-sony', 'Tiêu Đề SEO', '<p>Mô Tả SEO</p>', 1, 2, 2, 4, 1, '2017-12-24 09:23:40', '2018-01-08 03:26:03'),
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
(22, 'Thiết Bị Giáo Dục', 'images/uploads/images/danhmuc/temp_category_level_0_thietbigiaoduc.jpg', '<p>Mô Tả Ngắn </p>', 'thiet-bi-giao-duc', 'Tiêu D(ề SEO', '<p>Mô Tả SEO</p>', 1, 2, 0, 0, 1, '2017-12-24 09:34:49', '2018-01-05 01:51:25'),
(23, 'Bàn Ghế Học Sinh', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'ban-ghe-hoc-sinh', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 1, 1, 22, 1, '2017-12-24 09:36:43', '2017-12-24 09:36:43'),
(24, 'Phòng Máy Tính', 'images/uploads/images/temp_list_product_banner.png', '<p>Ph&ograve;ng M&aacute;y T&iacute;nh</p>', 'phong-may-tinh', 'Phòng Máy Tính', '<p>Ph&ograve;ng M&aacute;y T&iacute;nh</p>', 1, 2, 1, 22, 1, '2017-12-24 09:37:23', '2018-01-08 06:56:10'),
(25, 'Phòng LAB Ngoại Ngữ', 'images/uploads/images/temp_list_product_banner.png', '<p>Ph&ograve;ng LAB Ngoại Ngữ</p>', 'phong-lab-ngoai-ngu', 'Phòng LAB Ngoại Ngữ', '<p>Ph&ograve;ng LAB Ngoại Ngữ</p>', 1, 3, 1, 22, 1, '2017-12-24 09:38:07', '2018-01-08 06:56:36'),
(26, 'Phòng Thí Nghiệm Bộ Môn', 'images/uploads/images/temp_list_product_banner.png', '<p>Ph&ograve;ng Th&iacute; Nghiệm Bộ M&ocirc;n</p>', 'phong-thi-nghiem-bo-mon', 'Phòng Thí Nghiệm Bộ Môn', '<p>Ph&ograve;ng Th&iacute; Nghiệm Bộ M&ocirc;n</p>', 1, 5, 1, 22, 1, '2017-12-24 09:38:56', '2018-01-08 06:56:58'),
(27, 'Thiết Bị Mầm Non', 'images/uploads/images/temp_list_product_banner.png', '<p>Thiết Bị Mầm Non</p>', 'thiet-bi-mam-non', 'Thiết Bị Mầm Non', '<p>Thiết Bị Mầm Non</p>', 1, 6, 1, 22, 1, '2017-12-24 09:39:38', '2018-01-08 06:57:21'),
(28, 'Thư Viện Điện Tử - Thư Viện Số', 'images/uploads/images/danhmuc/temp_category_level_0_thuviendientu.jpg', '<p>M&ocirc; Tả Ngắn</p>', 'thu-vien-dien-tu-thu-vien-so', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 3, 0, 0, 1, '2017-12-24 09:40:46', '2018-01-05 01:53:06'),
(29, 'Thiết Bị Phòng Thí Nghiệm Kỹ Thuật', 'images/uploads/images/danhmuc/temp_category_level_0_thietbiphongthinghiem.jpg', '<p>M&ocirc; Tả Ngắn</p>', 'thiet-bi-phong-thi-nghiem-ky-thuat', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 4, 0, 0, 1, '2017-12-24 09:41:35', '2018-01-05 01:53:22'),
(30, 'Thiết Bị Y Tế - Y Khoa - Nha Khoa', 'images/uploads/images/danhmuc/temp_category_level_0_thietbiyte.jpg', '<p>M&ocirc; Tả Ngắn</p>', 'thiet-bi-y-te-y-khoa-nha-khoa', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 5, 0, 0, 1, '2017-12-24 09:42:29', '2018-01-05 01:55:55'),
(31, 'Thiết Bị Dạy Nghề', 'images/uploads/images/danhmuc/temp_category_level_0_thietbidaynghe.jpg', '<p>M&ocirc; Tả Ngắn</p>', 'thiet-bi-day-nghe', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 6, 0, 0, 1, '2017-12-24 09:43:01', '2018-01-05 01:56:30'),
(32, '3M Dán Màn Hình Máy Tính', 'images/uploads/images/danhmuc/temp_category_level_0_danmanhinh.jpg', '<p>M&ocirc; Tả Ngắn</p>', '3m-dan-man-hinh-may-tinh', 'Tiêu Đề SEO', '<p>M&ocirc; Tả SEO</p>', 1, 7, 0, 0, 1, '2017-12-24 09:43:41', '2018-01-05 01:56:49'),
(33, 'FPT', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'fpt', 'FPT', '<p>M&ocirc; Tả SEO</p>', 1, 1, 3, 9, 1, '2017-12-24 14:59:55', '2017-12-24 14:59:55'),
(34, 'VTB', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'vtb', 'VTB', '<p>M&ocirc; Tả SEO</p>', 1, 2, 3, 9, 1, '2017-12-24 15:01:15', '2017-12-24 15:01:15'),
(35, 'DELL', 'images/uploads/images/temp_list_product_banner.png', '<p>M&ocirc; Tả Ngắn</p>', 'dell', 'DELL', '<p>M&ocirc; Tả SEO</p>', 1, 3, 3, 9, 1, '2017-12-24 15:02:36', '2017-12-24 15:02:36'),
(37, 'Ghế Chân Quỳ Nệm', 'images/uploads/images/temp_list_product_banner.png', '<p>Ghế Ch&acirc;n Quỳ Nệm</p>', 'ghe-chan-quy-nem', 'Ghế Chân Quỳ Nệm', '<p>Ghế Ch&acirc;n Quỳ Nệm</p>', 1, 1, 3, 21, 1, '2018-01-08 03:17:23', '2018-01-08 03:17:23'),
(38, 'Ghế Chân Quỳ Nỉ', 'images/uploads/images/temp_list_product_banner.png', '<p>Ghế Ch&acirc;n Quỳ Nỉ</p>', 'ghe-chan-quy-ni', 'Ghế Chân Quỳ Nỉ', '<p>Ghế Ch&acirc;n Quỳ Nỉ</p>', 1, 2, 3, 21, 1, '2018-01-08 03:18:11', '2018-01-08 03:18:11'),
(39, 'Ghế Hội Trường', 'images/uploads/images/temp_list_product_banner.png', '<p>Ghế Hội Trường</p>', 'ghe-hoi-truong', 'Ghế Hội Trường', '<p>Ghế Hội Trường</p>', 1, 1, 2, 7, 1, '2018-01-08 03:27:59', '2018-01-08 03:27:59'),
(40, 'GHẾ HT GỖ', 'images/uploads/images/temp_list_product_banner.png', '<p>GHẾ HT GỖ</p>', 'ghe-ht-go', 'GHẾ HT GỖ', '<p>GHẾ HT GỖ</p>', 1, 1, 3, 39, 1, '2018-01-08 03:28:44', '2018-01-08 03:28:44'),
(41, 'GHẾ HT', 'images/uploads/images/temp_list_product_banner.png', '<p>GHẾ HT</p>', 'ghe-ht', 'GHẾ HT', 'GHẾ HT', 1, 2, 3, 39, 1, '2018-01-08 03:29:12', '2018-01-08 03:29:31'),
(42, 'Tủ Hồ Sơ', 'images/uploads/images/temp_list_product_banner.png', '<p>Tủ Hồ Sơ</p>', 'tu-ho-so', 'Tủ Hồ Sơ', '<p>Tủ Hồ Sơ</p>', 1, 4, 2, 6, 1, '2018-01-08 04:07:08', '2018-01-08 04:07:08'),
(43, 'BÀN GHẾ - ĐỒ CHƠI  MẦM NON', 'images/uploads/images/temp_list_product_banner.png', '<p>B&Agrave;N GHẾ - ĐỒ CHƠI&nbsp; MẦM NON</p>', 'ban-ghe-do-choi-mam-non', 'BÀN GHẾ - ĐỒ CHƠI  MẦM NON', '<p>B&Agrave;N GHẾ - ĐỒ CHƠI&nbsp; MẦM NON</p>', 1, 1, 2, 23, 1, '2018-01-08 04:14:28', '2018-01-08 04:14:28'),
(44, 'BÀN GHẾ HỌC SINH TIỂU HỌC', 'images/uploads/images/temp_list_product_banner.png', '<p>B&Agrave;N GHẾ HỌC SINH TIỂU HỌC</p>', 'ban-ghe-hoc-sinh-tieu-hoc', 'BÀN GHẾ HỌC SINH TIỂU HỌC', '<p>B&Agrave;N GHẾ HỌC SINH TIỂU HỌC</p>', 1, 2, 2, 23, 1, '2018-01-08 04:15:16', '2018-01-08 04:15:16'),
(45, 'BÀN GHẾ  HỌC SINH TRUNG HỌC CƠ SỞ', 'images/uploads/images/temp_list_product_banner.png', '<p>B&Agrave;N GHẾ&nbsp; HỌC SINH TRUNG HỌC CƠ SỞ</p>', 'ban-ghe-hoc-sinh-trung-hoc-co-so', 'BÀN GHẾ  HỌC SINH TRUNG HỌC CƠ SỞ', '<p>B&Agrave;N GHẾ&nbsp; HỌC SINH TRUNG HỌC CƠ SỞ</p>', 1, 3, 2, 23, 1, '2018-01-08 04:15:39', '2018-01-08 04:15:39'),
(46, 'BÀN GHẾ HỌC SINH PTTH VÀ SINH VIÊN', 'images/uploads/images/temp_list_product_banner.png', '<p>B&Agrave;N GHẾ HỌC SINH PTTH V&Agrave; SINH VI&Ecirc;N</p>', 'ban-ghe-hoc-sinh-ptth-va-sinh-vien', 'BÀN GHẾ HỌC SINH PTTH VÀ SINH VIÊN', '<p>B&Agrave;N GHẾ HỌC SINH PTTH V&Agrave; SINH VI&Ecirc;N</p>', 1, 4, 2, 23, 1, '2018-01-08 04:16:04', '2018-01-08 04:16:04'),
(47, 'BÀN GHẾ MẦM NON', 'images/uploads/images/temp_list_product_banner.png', '<p>B&Agrave;N GHẾ MẦM NON</p>', 'ban-ghe-mam-non', 'BÀN GHẾ MẦM NON', '<p>B&Agrave;N GHẾ MẦM NON</p>', 1, 1, 3, 43, 1, '2018-01-08 04:16:35', '2018-01-08 04:16:35'),
(48, 'ĐỒ CHƠI MẦM NON', 'images/uploads/images/temp_list_product_banner.png', '<p>ĐỒ CHƠI MẦM NON</p>', 'do-choi-mam-non', 'ĐỒ CHƠI MẦM NON', '<p>ĐỒ CHƠI MẦM NON</p>', 1, 2, 3, 43, 1, '2018-01-08 04:17:00', '2018-01-08 04:17:00'),
(49, 'Phòng Học Dùng Chung', 'images/uploads/images/temp_list_product_banner.png', '<p>Ph&ograve;ng Học D&ugrave;ng Chung</p>', 'phong-hoc-dung-chung', 'Phòng Học Dùng Chung', '<p>Ph&ograve;ng Học D&ugrave;ng Chung</p>', 1, 4, 1, 22, 1, '2018-01-08 06:55:35', '2018-01-08 06:55:35'),
(50, 'BÀN THÍ NGHIỆM TRUNG TÂM', 'images/uploads/images/temp_list_product_banner.png', '<p>B&Agrave;N TH&Iacute; NGHIỆM TRUNG T&Acirc;M</p>', 'ban-thi-nghiem-trung-tam', 'BÀN THÍ NGHIỆM TRUNG TÂM', '<p>B&Agrave;N TH&Iacute; NGHIỆM TRUNG T&Acirc;M</p>', 1, 1, 2, 26, 1, '2018-01-08 07:02:17', '2018-01-08 07:02:17'),
(51, 'PHÒNG THÍ NGHIỆM LÝ HOÁ SINH', 'images/uploads/images/temp_list_product_banner.png', '<p>PH&Ograve;NG TH&Iacute; NGHIỆM L&Yacute; HO&Aacute; SINH</p>', 'phong-thi-nghiem-ly-hoa-sinh', 'PHÒNG THÍ NGHIỆM LÝ HOÁ SINH', '<p>PH&Ograve;NG TH&Iacute; NGHIỆM L&Yacute; HO&Aacute; SINH</p>', 1, 2, 2, 26, 1, '2018-01-08 07:03:06', '2018-01-08 07:03:06'),
(52, 'DỤNG CỤ PHÒNG THÍ NGHIỆM', 'images/uploads/images/temp_list_product_banner.png', '<p>DỤNG CỤ PH&Ograve;NG TH&Iacute; NGHIỆM</p>', 'dung-cu-phong-thi-nghiem', 'DỤNG CỤ PHÒNG THÍ NGHIỆM', '<p>DỤNG CỤ PH&Ograve;NG TH&Iacute; NGHIỆM</p>', 1, 1, 1, 29, 1, '2018-01-08 07:17:04', '2018-01-08 07:17:04'),
(53, 'THIẾT BỊ PHÒNG THÌ NGHIỆM', 'images/uploads/images/temp_list_product_banner.png', '<p>THIẾT BỊ PH&Ograve;NG TH&Igrave; NGHIỆM</p>', 'thiet-bi-phong-thi-nghiem', 'THIẾT BỊ PHÒNG THÌ NGHIỆM', '<p>THIẾT BỊ PH&Ograve;NG TH&Igrave; NGHIỆM</p>', 1, 2, 1, 29, 1, '2018-01-08 07:17:26', '2018-01-08 07:17:26'),
(54, 'KÍNH HIỂN VI', 'images/uploads/images/temp_list_product_banner.png', '<p>K&Iacute;NH HIỂN VI</p>', 'kinh-hien-vi', 'KÍNH HIỂN VI', '<p>K&Iacute;NH HIỂN VI</p>', 1, 1, 2, 53, 1, '2018-01-08 07:23:53', '2018-01-08 07:23:53'),
(55, 'CÂN KỸ THUẬT - CÂN PHÂN TÍCH', 'images/uploads/images/temp_list_product_banner.png', '<p>C&Acirc;N KỸ THUẬT - C&Acirc;N PH&Acirc;N T&Iacute;CH</p>', 'can-ky-thuat-can-phan-tich', 'CÂN KỸ THUẬT - CÂN PHÂN TÍCH', '<p>C&Acirc;N KỸ THUẬT - C&Acirc;N PH&Acirc;N T&Iacute;CH</p>', 1, 2, 2, 53, 1, '2018-01-08 07:24:15', '2018-01-08 07:24:15'),
(56, 'MÁY CẤT NƯỚC', 'images/uploads/images/temp_list_product_banner.png', '<p>M&Aacute;Y CẤT NƯỚC</p>', 'may-cat-nuoc', 'MÁY CẤT NƯỚC', '<p>M&Aacute;Y CẤT NƯỚC</p>', 1, 3, 2, 53, 1, '2018-01-08 07:24:51', '2018-01-08 07:24:51'),
(57, 'NỒI HẤP TIỆT TRÙNG', 'images/uploads/images/temp_list_product_banner.png', '<p>NỒI HẤP TIỆT TR&Ugrave;NG</p>', 'noi-hap-tiet-trung', 'NỒI HẤP TIỆT TRÙNG', '<p>NỒI HẤP TIỆT TR&Ugrave;NG</p>', 1, 4, 2, 53, 1, '2018-01-08 07:25:17', '2018-01-08 07:25:17'),
(58, 'TỦ SẤY', 'images/uploads/images/temp_list_product_banner.png', '<p>TỦ SẤY</p>', 'tu-say', 'TỦ SẤY', '<p>TỦ SẤY</p>', 1, 5, 2, 53, 1, '2018-01-08 07:25:48', '2018-01-08 07:25:48'),
(59, 'TỦ CẤY VI SINH', 'images/uploads/images/temp_list_product_banner.png', '<p>TỦ CẤY VI SINH</p>', 'tu-cay-vi-sinh', 'TỦ CẤY VI SINH', '<p>TỦ CẤY VI SINH</p>', 1, 6, 2, 53, 1, '2018-01-08 07:26:14', '2018-01-08 07:26:14'),
(60, 'MÁY LY TÂM', 'images/uploads/images/temp_list_product_banner.png', '<p>M&Aacute;Y LY T&Acirc;M</p>', 'may-ly-tam', 'MÁY LY TÂM', '<p>M&Aacute;Y LY T&Acirc;M</p>', 1, 7, 2, 53, 1, '2018-01-08 07:26:38', '2018-01-08 07:26:38'),
(61, 'TỦ HÚT KHÍ ĐỘC', 'images/uploads/images/temp_list_product_banner.png', '<p>TỦ H&Uacute;T KH&Iacute; ĐỘC</p>', 'tu-hut-khi-doc', 'TỦ HÚT KHÍ ĐỘC', '<p>TỦ H&Uacute;T KH&Iacute; ĐỘC</p>', 1, 8, 2, 53, 1, '2018-01-08 07:27:03', '2018-01-08 07:27:03'),
(62, 'TỦ ĐỰNG HOÁ CHẤT- KÍNH HIỂN VI', 'images/uploads/images/temp_list_product_banner.png', '<p>TỦ ĐỰNG HO&Aacute; CHẤT- K&Iacute;NH HIỂN VI</p>', 'tu-dung-hoa-chat-kinh-hien-vi', 'TỦ ĐỰNG HOÁ CHẤT- KÍNH HIỂN VI', '<p>TỦ ĐỰNG HO&Aacute; CHẤT- K&Iacute;NH HIỂN VI</p>', 1, 9, 2, 53, 1, '2018-01-08 07:27:25', '2018-01-08 07:27:25'),
(63, 'OLYMPUS', 'images/uploads/images/temp_list_product_banner.png', '<p>OLYMPUS</p>', 'olympus', 'OLYMPUS', '<p>OLYMPUS</p>', 1, 1, 3, 54, 1, '2018-01-08 07:27:49', '2018-01-08 07:27:49'),
(64, 'OPTICA', 'images/uploads/images/temp_list_product_banner.png', '<p>OPTICA</p>', 'optica', 'OPTICA', '<p>OPTICA</p>', 1, 2, 3, 54, 1, '2018-01-08 07:28:13', '2018-01-08 07:28:13'),
(65, 'Thiết Bị Y Tế', 'images/uploads/images/temp_list_product_banner.png', '<p>Thiết Bị Y Tế</p>', 'thiet-bi-y-te', 'Thiết Bị Y Tế', '<p>Thiết Bị Y Tế</p>', 1, 1, 1, 30, 1, '2018-01-08 07:57:41', '2018-01-08 07:57:41'),
(66, 'Thiết bị vật tư nha khoa', 'images/uploads/images/temp_list_product_banner.png', '<p>Thiết bị vật tư nha khoa</p>', 'thiet-bi-vat-tu-nha-khoa', 'Thiết bị vật tư nha khoa', '<p>Thiết bị vật tư nha khoa</p>', 1, 2, 1, 30, 1, '2018-01-08 07:58:00', '2018-01-08 07:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE IF NOT EXISTS `category_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_permissions_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

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

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

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

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`),
  KEY `permissions_category_permission_id_foreign` (`category_permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=17 ;

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

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
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

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `final_price` int(11) DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=211 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `path`, `isActive`, `image`, `description`, `seo_title`, `seo_description`, `price`, `sale`, `final_price`, `order`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Asus', 'laptop-asus', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/laptop/ASUS_LABTOP.jpg', '<p>Laptop Asus</p>', 'Laptop Asus', '<p>Laptop Asus</p>', '0', 0, 0, 1, 1, 8, '2017-12-24 14:44:03', '2018-01-05 04:00:46'),
(2, 'Laptop Dell', 'laptop-dell', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/laptop/DELL_LAPTOP.jpg', '<p>Laptop Dell</p>', 'Laptop Dell', '<p>Laptop Dell</p>', '0', 0, 0, 2, 1, 8, '2017-12-24 14:49:26', '2018-01-05 04:00:31'),
(3, 'Laptop HP', 'laptop-hp', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/laptop/HP_LABTOP.jpg', '<p>Laptop HP</p>', 'Laptop HP', '<p>Laptop HP</p>', '0', 0, 0, 3, 1, 8, '2017-12-24 14:53:19', '2018-01-05 04:00:16'),
(4, 'Laptop Lenovo', 'laptop-lenovo', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/laptop/LENOVO_LABTOP.jpg', '<p>M&ocirc; Tả Sản Phẩm</p>', 'Laptop Lenovo', '<p>M&ocirc; Tả SEO</p>', '0', 0, 0, 4, 1, 8, '2017-12-24 14:54:19', '2017-12-24 14:54:19'),
(5, 'FPT Elead E955', 'fpt-elead-e955', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_E955.jpg', '<p>FPT Elead E955</p>', 'FPT Elead E955', '<p>FPT Elead E955</p>', '0', 0, 0, 1, 1, 33, '2017-12-24 15:05:23', '2017-12-24 15:05:23'),
(6, 'FPT Elead M354', 'fpt-elead-m354', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M354.jpg', '<p>FPT Elead M354</p>', 'FPT Elead M354', '<p>FPT Elead M354</p>', '0', 0, 0, 2, 1, 33, '2017-12-24 15:05:51', '2017-12-24 15:06:01'),
(7, 'FPT Elead M525', 'fpt-elead-m525', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M525.jpg', '<p>FPT Elead M525</p>', 'FPT Elead M525', '<p>FPT Elead M525</p>', '0', 0, 0, 3, 1, 33, '2017-12-24 15:06:39', '2017-12-24 15:06:39'),
(8, 'FPT Elead M525i', 'fpt-elead-m525i', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M525i.jpg', '<p>FPT Elead M525i</p>', 'FPT Elead M525i', '<p>FPT Elead M525i</p>', '0', 0, 0, 4, 1, 33, '2017-12-24 15:07:03', '2017-12-24 15:07:11'),
(9, 'FPT Elead M539', 'fpt-elead-m539', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M539.jpg', '<p>FPT Elead M539</p>', 'FPT Elead M539', '<p>FPT Elead M539</p>', '0', 0, 0, 5, 1, 33, '2017-12-24 15:07:45', '2017-12-24 15:07:45'),
(10, 'FPT Elead M540i', 'fpt-elead-m540i', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_M540i.jpg', '<p>FPT Elead M540i</p>', 'FPT Elead M540i', '<p>FPT Elead M540i</p>', '0', 0, 0, 6, 1, 33, '2017-12-24 15:08:09', '2017-12-24 15:08:09'),
(11, 'FPT Elead S878i', 'fpt-elead-s878i', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_S878i.jpg', '<p>FPT Elead S878i</p>', 'FPT Elead S878i', '<p>FPT Elead S878i</p>', '0', 0, 0, 7, 1, 33, '2017-12-24 15:08:51', '2017-12-24 15:08:51'),
(12, 'FPT Elead S879', 'fpt-elead-s879', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/fpt/FPT_Elead_S879.jpg', '<p>FPT Elead S879</p>', 'FPT Elead S879', '<p>FPT Elead S879</p>', '0', 0, 0, 9, 1, 33, '2017-12-24 15:09:13', '2017-12-24 15:09:13'),
(13, 'VTB PC 2.2L7', 'vtb-pc-22l7', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_2_2L7.png', '<p>VTB PC 2.2L7</p>', 'VTB PC 2.2L7', '<p>VTB PC 2.2L7</p>', '0', 0, 0, 1, 1, 34, '2017-12-24 15:12:03', '2017-12-24 15:12:03'),
(14, 'VTB PC 301A', 'vtb-pc-301a', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_301A.png', '<p>VTB PC 301A</p>', 'VTB PC 301A', '<p>VTB PC 301A</p>', '0', 0, 0, 2, 1, 34, '2017-12-24 15:12:30', '2017-12-24 15:12:30'),
(15, 'VTB PC 2660E', 'vtb-pc-2660e', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_2660E.png', '<p>VTB PC 2660E</p>', 'VTB PC 2660E', '<p>VTB PC 2660E</p>', '0', 0, 0, 3, 1, 34, '2017-12-24 15:13:03', '2017-12-24 15:13:03'),
(16, 'VTB PC 2802A', 'vtb-pc-2802a', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_2802A.png', '<p>VTB PC 2802A</p>', 'VTB PC 2802A', '<p>VTB PC 2802A</p>', '0', 0, 0, 4, 1, 34, '2017-12-24 15:13:29', '2017-12-24 15:13:29'),
(17, 'VTB PC 3001A', 'vtb-pc-3001a', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_3001A.png', '<p>VTB PC 3001A</p>', 'VTB PC 3001A', '<p>VTB PC 3001A</p>', '0', 0, 0, 5, 1, 34, '2017-12-24 15:14:01', '2017-12-24 15:14:01'),
(18, 'VTB PC 3060E', 'vtb-pc-3060e', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_3060E.png', '<p>VTB PC 3060E</p>', 'VTB PC 3060E', '<p>VTB PC 3060E</p>', '0', 0, 0, 6, 1, 34, '2017-12-24 15:14:26', '2017-12-24 15:14:26'),
(19, 'VTB PC 3061E', 'vtb-pc-3061e', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_3061E.png', '<p>VTB PC 3061E</p>', 'VTB PC 3061E', '<p>VTB PC 3061E</p>', '0', 0, 0, 7, 1, 34, '2017-12-24 15:14:57', '2017-12-24 15:14:57'),
(20, 'VTB PC X27-L7G', 'vtb-pc-x27-l7g', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/vtb/VTB_PC_X27_L7G.png', '<p>VTB PC X27-L7G</p>', 'VTB PC X27-L7G', '<p>VTB PC X27-L7G</p>', '0', 0, 0, 8, 1, 34, '2017-12-24 15:15:24', '2017-12-24 15:15:24'),
(21, 'DELL 1', 'dell-1', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_1.JPG', '<p>DELL 1</p>', 'DELL 1', '<p>DELL 1</p>', '0', 0, 0, 1, 1, 35, '2017-12-24 15:18:44', '2017-12-24 15:18:44'),
(22, 'DELL 990', 'dell-990', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_990.jpg', '<p>DELL 990</p>', 'DELL 990', '<p>DELL 990</p>', '0', 0, 0, 2, 1, 35, '2017-12-24 15:19:36', '2017-12-24 15:19:36'),
(23, 'DELL 1700', 'dell-1700', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_1700.jpg', '<p>DELL 1700</p>', 'DELL 1700', '<p>DELL 1700</p>', '0', 0, 0, 3, 1, 35, '2017-12-24 15:19:56', '2017-12-24 15:19:56'),
(24, 'DELL 3020_20sff', 'dell-302020sff', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_3020_20sff.jpg', '<p>DELL 3020_20sff</p>', 'DELL 3020_20sff', '<p>DELL 3020_20sff</p>', '0', 0, 0, 4, 1, 35, '2017-12-24 15:20:30', '2017-12-24 15:20:30'),
(25, 'DELL 7010mt', 'dell-7010mt', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_7010mt.png', '<p>DELL 7010mt</p>', 'DELL 7010mt', '<p>DELL 7010mt</p>', '0', 0, 0, 5, 1, 35, '2017-12-24 15:21:07', '2017-12-24 15:21:07'),
(26, 'DELL t5600', 'dell-t5600', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/DELL_t5600.jpg', '<p>DELL t5600</p>', 'DELL t5600', '<p>DELL t5600</p>', '0', 0, 0, 6, 1, 35, '2017-12-24 15:21:34', '2017-12-24 15:21:34'),
(27, 'Dell Optiplex 790', 'dell-optiplex-790', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/Dell_optiplex_790.jpg', '<p>Dell Optiplex 790</p>', 'Dell Optiplex 790', '<p>Dell Optiplex 790</p>', '0', 0, 0, 7, 1, 35, '2017-12-24 15:21:58', '2017-12-24 15:39:08'),
(28, 'Dell t5610', 'dell-t5610', 1, 'images/uploads/images/sanpham/thietbivanphong/maytinh/pc/dell/Dell_t5610.jpg', '<p>Dell t5610</p>', 'Dell t5610', '<p>Dell t5610</p>', '0', 0, 0, 8, 1, 35, '2017-12-24 15:22:32', '2017-12-24 15:22:32'),
(29, 'PANANSONIC PT LB412', 'panansonic-pt-lb412', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANANSONIC_PT_LB412.jpg', '<p>PANANSONIC PT LB412</p>', 'PANANSONIC PT LB412', '<p>PANANSONIC PT LB412</p>', '0', 0, 0, 1, 1, 10, '2017-12-24 15:36:48', '2017-12-24 15:36:48'),
(30, 'PANASONIC PT D5000ES', 'panasonic-pt-d5000es', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_D5000ES.jpg', '<p>PANASONIC PT D5000ES</p>', 'PANASONIC PT D5000ES', '<p>PANASONIC PT D5000ES</p>', '0', 0, 0, 2, 1, 10, '2017-12-24 15:37:17', '2017-12-24 15:37:17'),
(31, 'PANASONIC PT DX610ELS', 'panasonic-pt-dx610els', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_DX610ELS.jpg', '<p>PANASONIC PT DX610ELS</p>', 'PANASONIC PT DX610ELS', '<p>PANASONIC PT DX610ELS</p>', '0', 0, 0, 3, 1, 10, '2017-12-24 15:37:48', '2017-12-24 15:37:48'),
(32, 'PANASONIC PT RW430', 'panasonic-pt-rw430', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_RW430.jpg', '<p>PANASONIC PT RW430</p>', 'PANASONIC PT RW430', '<p>PANASONIC PT RW430</p>', '0', 0, 0, 4, 1, 10, '2017-12-24 15:38:16', '2017-12-24 15:38:16'),
(33, 'PANASONIC PT TX400A', 'panasonic-pt-tx400a', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_TX400A.jpg', '<p>PANASONIC PT TX400A</p>', 'PANASONIC PT TX400A', '<p>PANASONIC PT TX400A</p>', '0', 0, 0, 5, 1, 10, '2017-12-24 15:38:42', '2017-12-24 15:38:42'),
(34, 'PANASONIC PT VW355NZ', 'panasonic-pt-vw355nz', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_VW355NZ.jpg', '<p>PANASONIC PT VW355NZ</p>', 'PANASONIC PT VW355NZ', '<p>PANASONIC PT VW355NZ</p>', '0', 0, 0, 6, 1, 10, '2017-12-24 15:40:01', '2017-12-24 15:40:01'),
(35, 'PANASONIC PT VW535N', 'panasonic-pt-vw535n', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_VW535N.jpg', '<p>PANASONIC-PT-VW535N</p>', 'PANASONIC-PT-VW535N', '<p>PANASONIC-PT-VW535N</p>', '0', 0, 0, 7, 1, 10, '2017-12-24 15:40:31', '2017-12-24 15:40:31'),
(36, 'PANASONIC PT VW540A', 'panasonic-pt-vw540a', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/panasonic/PANASONIC_PT_VW540A.jpg', '<p>PANASONIC PT VW540A</p>', 'PANASONIC PT VW540A', '<p>PANASONIC PT VW540A</p>', '0', 0, 0, 8, 1, 10, '2017-12-24 15:41:10', '2017-12-24 15:41:10'),
(37, 'MÁY CHIẾU SIÊU GẦN SONY VPL SW630', 'may-chieu-sieu-gan-sony-vpl-sw630', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/MAY_CHIEU_SIEU_GAN_SONY_VPL_SW630.jpg', '<p>M&Aacute;Y CHIẾU SI&Ecirc;U GẦN SONY VPL SW630</p>', 'MÁY CHIẾU SIÊU GẦN SONY VPL SW630', '<p>M&Aacute;Y CHIẾU SI&Ecirc;U GẦN SONY VPL SW630</p>', '0', 0, 0, 1, 1, 11, '2017-12-24 15:44:29', '2017-12-24 15:44:29'),
(38, 'SONY VPL CH355', 'sony-vpl-ch355', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_CH355.jpeg', '<p>SONY VPL CH355</p>', 'SONY VPL CH355', '<p>SONY VPL CH355</p>', '0', 0, 0, 2, 1, 11, '2017-12-24 15:45:05', '2017-12-24 15:45:05'),
(39, 'SONY VPL DW122', 'sony-vpl-dw122', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_DW122.jpg', '<p>SONY VPL DW122</p>', 'SONY VPL DW122', '<p>SONY VPL DW122</p>', '0', 0, 0, 3, 1, 11, '2017-12-24 15:45:40', '2017-12-24 15:45:40'),
(40, 'SONY VPL DW240', 'sony-vpl-dw240', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_DW240.jpg', '<p>SONY VPL DW240</p>', 'SONY VPL DW240', '<p>SONY VPL DW240</p>', '0', 0, 0, 4, 1, 11, '2017-12-24 15:46:06', '2017-12-24 15:46:06'),
(41, 'Sony Vpl Dx221', 'sony-vpl-dx221', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/sony_vpl_dx221.jpg', '<p>Sony Vpl Dx221</p>', 'Sony Vpl Dx221', '<p>Sony Vpl Dx221</p>', '0', 0, 0, 5, 1, 11, '2017-12-24 15:46:44', '2017-12-24 15:46:44'),
(42, 'SONY VPL EW235', 'sony-vpl-ew235', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_EW235.jpg', '<p>SONY VPL EW235</p>', 'SONY VPL EW235', '<p>SONY VPL EW235</p>', '0', 0, 0, 6, 1, 11, '2017-12-24 15:47:22', '2017-12-24 15:47:22'),
(43, 'SONY VPL EX225', 'sony-vpl-ex225', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_EX225.jpg', '<p>SONY VPL EX225</p>', 'SONY VPL EX225', '<p>SONY VPL EX225</p>', '0', 0, 0, 7, 1, 11, '2017-12-24 15:47:51', '2017-12-24 15:47:51'),
(44, 'SONY VPL EX310', 'sony-vpl-ex310', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_EX310.jpeg', '<p>SONY VPL EX310</p>', 'SONY VPL EX310', '<p>SONY VPL EX310</p>', '0', 0, 0, 8, 1, 11, '2017-12-24 15:48:25', '2017-12-24 15:48:25'),
(45, 'SONY VPL FH65', 'sony-vpl-fh65', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_FH65.png', '<p>SONY VPL FH65</p>', 'SONY VPL FH65', '<p>SONY VPL FH65</p>', '0', 0, 0, 9, 1, 11, '2017-12-24 15:48:56', '2017-12-24 15:48:56'),
(46, 'SONY VPL FX30', 'sony-vpl-fx30', 1, 'images/uploads/images/sanpham/thietbivanphong/maychieu/sony/SONY_VPL_FX30.jpg', '<p>SONY VPL FX30</p>', 'SONY VPL FX30', '<p>SONY VPL FX30</p>', '0', 0, 0, 10, 1, 11, '2017-12-24 15:49:20', '2017-12-24 15:49:20'),
(47, 'Canon lbp 7110cn', 'canon-lbp-7110cn', 1, 'images/uploads/images/sanpham/thietbivanphong/mayin/canon/Canon-lbp-7110cn.jpg', '<p>Canon lbp 7110cn</p>', 'Canon lbp 7110cn', '<p>Canon lbp 7110cn</p>', '0', 0, 0, 1, 1, 12, '2018-01-05 03:08:24', '2018-01-05 03:08:24'),
(48, 'Canon lbp 8780x', 'canon-lbp-8780x', 1, 'images/uploads/images/sanpham/thietbivanphong/mayin/canon/lbp8780x-2.jpg', '<p>Canon lbp 8780x</p>', 'Canon lbp 8780x', '<p>Canon lbp 8780x</p>', '0', 0, 0, 2, 1, 12, '2018-01-05 03:09:10', '2018-01-05 03:09:10'),
(49, 'Canon lbp 2900', 'canon-lbp-2900', 1, 'images/uploads/images/sanpham/thietbivanphong/mayin/canon/may-in-canon-lbp2900-in-laser.jpg', '<p>Canon lbp 2900</p>', 'Canon lbp 2900', '<p>Canon lbp 2900</p>', '0', 0, 0, 3, 1, 12, '2018-01-05 03:09:45', '2018-01-05 03:10:53'),
(50, 'Canon lbp 3300', 'canon-lbp-3300', 1, 'images/uploads/images/sanpham/thietbivanphong/mayin/canon/thay-trong-may-in-canon-lbp-3300.jpg', '<p>Canon lbp 3300</p>', 'Canon lbp 3300', '<p>Canon lbp 3300</p>', '0', 0, 0, 4, 1, 12, '2018-01-05 03:10:29', '2018-01-05 03:10:29'),
(51, 'HP Color Laserjet Pro CP1025', 'hp-color-laserjet-pro-cp1025', 1, 'images/uploads/images/sanpham/thietbivanphong/mayin/hp/HP-COLOR-LASERJET-PRO-CP1025.jpg', '<p>HP Color Laserjet Pro CP1025</p>', 'HP Color Laserjet Pro CP1025', '<p>HP Color Laserjet Pro CP1025</p>', '0', 0, 0, 1, 1, 13, '2018-01-05 03:31:45', '2018-01-05 03:31:45'),
(52, 'HP DeskJet Ink Advantage 2135 All In One', 'hp-deskjet-ink-advantage-2135-all-in-one', 1, 'images/uploads/images/sanpham/thietbivanphong/mayin/hp/HP-DeskJet-Ink-Advantage-2135-All-in-One.jpeg', '<p>HP DeskJet Ink Advantage 2135 All In One</p>', 'HP DeskJet Ink Advantage 2135 All In One', '<p>HP DeskJet Ink Advantage 2135 All In One</p>', '0', 0, 0, 2, 1, 13, '2018-01-05 03:32:29', '2018-01-05 03:34:09'),
(53, 'HP LaserJet Enterprise P3015', 'hp-laserjet-enterprise-p3015', 1, 'images/uploads/images/sanpham/thietbivanphong/mayin/hp/HP-LaserJet-Enterprise-P3015dn.jpg', '<p>HP LaserJet Enterprise P3015</p>', 'HP LaserJet Enterprise P3015', '<p>HP LaserJet Enterprise P3015</p>', '0', 0, 0, 3, 1, 13, '2018-01-05 03:33:08', '2018-01-05 03:33:59'),
(54, 'HP LaserJet Pro 400 MFP M425DW', 'hp-laserjet-pro-400-mfp-m425dw', 1, 'images/uploads/images/sanpham/thietbivanphong/mayin/hp/HP-LaserJet-Pro-400-MFP-M425dw.jpg', '<p>HP LaserJet Pro 400 MFP M425DW</p>', 'HP LaserJet Pro 400 MFP M425DW', '<p>HP LaserJet Pro 400 MFP M425DW</p>', '0', 0, 0, 4, 1, 13, '2018-01-05 03:33:48', '2018-01-05 03:33:48'),
(55, 'Canon IR2202N', 'canon-ir2202n', 1, 'images/uploads/images/sanpham/thietbivanphong/mayphotocopy/canon/Canon_iR2202N.jpg', '<p>Canon IR2202N</p>', 'Canon IR2202N', '<p>Canon IR2202N</p>', '0', 0, 0, 1, 1, 14, '2018-01-05 03:37:54', '2018-01-05 03:37:54'),
(56, 'Canon IR2420L', 'canon-ir2420l', 1, 'images/uploads/images/sanpham/thietbivanphong/mayphotocopy/canon/Canon_iR2420L.jpg', '<p>Canon IR2420L</p>', 'Canon IR2420L', '<p>Canon IR2420L</p>', '0', 0, 0, 2, 1, 14, '2018-01-05 03:38:42', '2018-01-05 03:38:42'),
(57, 'Canon IR2530', 'canon-ir2530', 1, 'images/uploads/images/sanpham/thietbivanphong/mayphotocopy/canon/Canon_iR2530.jpg', '<p>Canon IR2530</p>', 'Canon IR2530', '<p>Canon IR2530</p>', '0', 0, 0, 3, 1, 14, '2018-01-05 03:39:13', '2018-01-05 03:39:13'),
(58, 'Canon IR2520', 'canon-ir2520', 1, 'images/uploads/images/sanpham/thietbivanphong/mayphotocopy/canon/Canon-iR2520.jpg', '<p>Canon IR2520</p>', 'Canon IR2520', '<p>Canon IR2520</p>', '0', 0, 0, 4, 1, 14, '2018-01-05 03:39:37', '2018-01-05 03:39:37'),
(59, 'RICOCH 5001', 'ricoch-5001', 1, 'images/uploads/images/sanpham/thietbivanphong/mayphotocopy/ricoh/RICOCH%20_5001.jpg', '<p>RICOCH 5001</p>', 'RICOCH 5001', '<p>RICOCH 5001</p>', '0', 0, 0, 1, 1, 15, '2018-01-05 03:40:52', '2018-01-05 03:40:52'),
(60, 'RICOH MP 2852', 'ricoh-mp-2852', 1, 'images/uploads/images/sanpham/thietbivanphong/mayphotocopy/ricoh/RICOH_MP_2852.jpg', '<p>RICOH MP 2852</p>', 'RICOH MP 2852', '<p>RICOH MP 2852</p>', '0', 0, 0, 2, 1, 15, '2018-01-05 03:41:07', '2018-01-05 03:42:04'),
(61, 'RICOH MP 3352', 'ricoh-mp-3352', 1, 'images/uploads/images/sanpham/thietbivanphong/mayphotocopy/ricoh/RICOH_MP_3352.jpg', '<p>RICOH MP 3352</p>', 'RICOH MP 3352', '<p>RICOH MP 3352</p>', '0', 0, 0, 3, 1, 15, '2018-01-05 03:41:27', '2018-01-05 03:41:27'),
(62, 'RICOH MP 4054', 'ricoh-mp-4054', 1, 'images/uploads/images/sanpham/thietbivanphong/mayphotocopy/ricoh/RICOH_MP_4054.jpg', '<p>RICOH MP 4054</p>', 'RICOH MP 4054', '<p>RICOH MP 4054</p>', '0', 0, 0, 4, 1, 15, '2018-01-05 03:41:45', '2018-01-05 03:41:45'),
(63, 'BÀN GIÁM ĐỐC 01', 'ban-giam-doc-01', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/banlamviecgiamdoc/ban_giam_doc_01.jpg', '<p>B&Agrave;N GI&Aacute;M ĐỐC 01</p>', 'BÀN GIÁM ĐỐC 01', '<p>B&Agrave;N GI&Aacute;M ĐỐC 01</p>', '0', 0, 0, 1, 1, 16, '2018-01-05 03:45:11', '2018-01-05 03:45:11'),
(64, 'BÀN GIÁM ĐỐC 02', 'ban-giam-doc-02', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/banlamviecgiamdoc/ban_giam_doc_02.jpg', '<p>B&Agrave;N GI&Aacute;M ĐỐC 02</p>', 'BÀN GIÁM ĐỐC 02', '<p>B&Agrave;N GI&Aacute;M ĐỐC 02</p>', '0', 0, 0, 2, 1, 16, '2018-01-05 03:50:16', '2018-01-05 03:50:16'),
(65, 'BÀN GIÁM ĐỐC 03', 'ban-giam-doc-03', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/banlamviecgiamdoc/ban_giam_doc_03.jpg', '<p>B&Agrave;N GI&Aacute;M ĐỐC 03</p>', 'BÀN GIÁM ĐỐC 03', '<p>B&Agrave;N GI&Aacute;M ĐỐC 03</p>', '0', 0, 0, 3, 1, 16, '2018-01-05 03:50:42', '2018-01-05 03:50:42'),
(66, 'BÀN GIÁM ĐỐC 04', 'ban-giam-doc-04', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/banlamviecgiamdoc/ban_giam_doc_04.jpg', '<p>B&Agrave;N GI&Aacute;M ĐỐC 04</p>', 'BÀN GIÁM ĐỐC 04', '<p>B&Agrave;N GI&Aacute;M ĐỐC 04</p>', '0', 0, 0, 4, 1, 16, '2018-01-05 03:51:08', '2018-01-05 03:51:18'),
(67, 'BÀN NHÂN VIÊN 01', 'ban-nhan-vien-01', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/bannhanvien/ban_nhan_vien_01.jpg', '<p>B&Agrave;N NH&Acirc;N VI&Ecirc;N 01</p>', 'BÀN NHÂN VIÊN 01', '<p>B&Agrave;N NH&Acirc;N VI&Ecirc;N 01</p>', '0', 0, 0, 1, 1, 17, '2018-01-05 03:52:43', '2018-01-05 03:52:43'),
(68, 'BÀN NHÂN VIÊN 02', 'ban-nhan-vien-02', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/bannhanvien/ban_nhan_vien_02.jpg', '<p>B&Agrave;N NH&Acirc;N VI&Ecirc;N 02</p>', 'BÀN NHÂN VIÊN 02', '<p>B&Agrave;N NH&Acirc;N VI&Ecirc;N 02</p>', '0', 0, 0, 2, 1, 17, '2018-01-05 03:53:08', '2018-01-05 03:53:08'),
(69, 'BÀN NHÂN VIÊN 03', 'ban-nhan-vien-03', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/bannhanvien/ban_nhan_vien_03.jpg', '<p>B&Agrave;N NH&Acirc;N VI&Ecirc;N 03</p>', 'BÀN NHÂN VIÊN 03', '<p>B&Agrave;N NH&Acirc;N VI&Ecirc;N 03</p>', '0', 0, 0, 3, 1, 17, '2018-01-05 03:53:33', '2018-01-05 03:53:33'),
(70, 'BÀN NHÂN VIÊN 04', 'ban-nhan-vien-04', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/bannhanvien/ban_nhan_vien_04.jpg', '<p>B&Agrave;N NH&Acirc;N VI&Ecirc;N 04</p>', 'BÀN NHÂN VIÊN 04', '<p>B&Agrave;N NH&Acirc;N VI&Ecirc;N 04</p>', '0', 0, 0, 4, 1, 17, '2018-01-05 03:53:51', '2018-01-05 03:53:51'),
(71, 'GHÊ GIÁM ĐỐC 01', 'ghe-giam-doc-01', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghengoigiamdoc/ghe_ngoi_giam_doc_01.jpg', '<p>GH&Ecirc; GI&Aacute;M ĐỐC 01</p>', 'GHÊ GIÁM ĐỐC 01', '<p>GH&Ecirc; GI&Aacute;M ĐỐC 01</p>', '0', 0, 0, 1, 1, 19, '2018-01-05 03:56:13', '2018-01-05 03:56:13'),
(72, 'GHÊ GIÁM ĐỐC 02', 'ghe-giam-doc-02', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghengoigiamdoc/ghe_ngoi_giam_doc_02.jpg', '<p>GH&Ecirc; GI&Aacute;M ĐỐC 02</p>', 'GHÊ GIÁM ĐỐC 02', '<p>GH&Ecirc; GI&Aacute;M ĐỐC 02</p>', '0', 0, 0, 2, 1, 19, '2018-01-05 03:56:34', '2018-01-05 03:56:34'),
(73, 'GHÊ GIÁM ĐỐC 03', 'ghe-giam-doc-03', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghengoigiamdoc/ghe_ngoi_giam_doc_03.jpg', '<p>GH&Ecirc; GI&Aacute;M ĐỐC 03</p>', 'GHÊ GIÁM ĐỐC 03', '<p>GH&Ecirc; GI&Aacute;M ĐỐC 03</p>', '0', 0, 0, 3, 1, 19, '2018-01-05 03:56:52', '2018-01-05 03:57:00'),
(74, 'GHÊ GIÁM ĐỐC 04', 'ghe-giam-doc-04', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghengoigiamdoc/ghe_ngoi_giam_doc_04.jpg', '<p>GH&Ecirc; GI&Aacute;M ĐỐC 04</p>', 'GHÊ GIÁM ĐỐC 04', '<p>GH&Ecirc; GI&Aacute;M ĐỐC 04</p>', '0', 0, 0, 4, 1, 19, '2018-01-05 03:57:27', '2018-01-05 03:57:27'),
(75, 'GHẾ NHÂN VIÊN 01', 'ghe-nhan-vien-01', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghenhanvien/ghe_nhan_vien_01.jpg', '<p>GHẾ NH&Acirc;N VI&Ecirc;N 01</p>', 'GHẾ NHÂN VIÊN 01', '<p>GHẾ NH&Acirc;N VI&Ecirc;N 01</p>', '0', 0, 0, 1, 1, 20, '2018-01-05 03:58:50', '2018-01-05 03:58:50'),
(76, 'GHẾ NHÂN VIÊN 02', 'ghe-nhan-vien-02', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghenhanvien/ghe_nhan_vien_02.jpg', '<p>GHẾ NH&Acirc;N VI&Ecirc;N 02</p>', 'GHẾ NHÂN VIÊN 02', '<p>GHẾ NH&Acirc;N VI&Ecirc;N 02</p>', '0', 0, 0, 2, 1, 20, '2018-01-05 03:59:11', '2018-01-05 03:59:11'),
(77, 'GHẾ NHÂN VIÊN 03', 'ghe-nhan-vien-03', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghenhanvien/ghe_nhan_vien_03.jpg', '<p>GHẾ NH&Acirc;N VI&Ecirc;N 03</p>', 'GHẾ NHÂN VIÊN 03', '<p>GHẾ NH&Acirc;N VI&Ecirc;N 03</p>', '0', 0, 0, 3, 1, 20, '2018-01-05 03:59:31', '2018-01-05 03:59:31'),
(78, 'GHẾ NHÂN VIÊN 04', 'ghe-nhan-vien-04', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghenhanvien/ghe_nhan_vien_04.jpg', '<p>GHẾ NH&Acirc;N VI&Ecirc;N 04</p>', 'GHẾ NHÂN VIÊN 04', '<p>GHẾ NH&Acirc;N VI&Ecirc;N 04</p>', '0', 0, 0, 4, 1, 20, '2018-01-05 03:59:50', '2018-01-05 03:59:50'),
(79, 'GHÊ PHÒNG HỌP CQ01', 'ghe-phong-hop-cq01', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghephonghop/ghechanquynem/ghe_phong_hop_CQ01.jpg', '<p>GH&Ecirc; PH&Ograve;NG HỌP CQ01</p>', 'GHÊ PHÒNG HỌP CQ01', '<p>GH&Ecirc; PH&Ograve;NG HỌP CQ01</p>', '0', 0, 0, 1, 1, 37, '2018-01-08 03:21:03', '2018-01-08 03:21:03'),
(80, 'GHÊ PHÒNG HỌP CQ02', 'ghe-phong-hop-cq02', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghephonghop/ghechanquynem/ghe_phong_hop_CQ02.jpg', '<p>GH&Ecirc; PH&Ograve;NG HỌP CQ02</p>', 'GHÊ PHÒNG HỌP CQ02', '<p>GH&Ecirc; PH&Ograve;NG HỌP CQ02</p>', '0', 0, 0, 2, 1, 37, '2018-01-08 03:21:24', '2018-01-08 03:22:28'),
(81, 'GHÊ PHÒNG HỌP CQ03', 'ghe-phong-hop-cq03', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghephonghop/ghechanquynem/ghe_phong_hop_CQ03.png', '<p>GH&Ecirc; PH&Ograve;NG HỌP CQ03</p>', 'GHÊ PHÒNG HỌP CQ03', '<p>GH&Ecirc; PH&Ograve;NG HỌP CQ03</p>', '0', 0, 0, 3, 1, 37, '2018-01-08 03:21:42', '2018-01-08 03:22:17'),
(82, 'GHÊ PHÒNG HỌP CQ04', 'ghe-phong-hop-cq04', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghephonghop/ghechanquynem/ghe_phong_hop_CQ04.jpg', '<p>GH&Ecirc; PH&Ograve;NG HỌP CQ04</p>', 'GHÊ PHÒNG HỌP CQ04', '<p>GH&Ecirc; PH&Ograve;NG HỌP CQ04</p>', '0', 0, 0, 4, 1, 37, '2018-01-08 03:22:08', '2018-01-08 03:22:08'),
(83, 'GHỀ PHÒNG HỌP NỈ 01', 'ghe-phong-hop-ni-01', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghephonghop/ghechanquyni/ghe_phong_hop_ni_01.jpg', '<p>GHỀ PH&Ograve;NG HỌP NỈ 01</p>', 'GHỀ PHÒNG HỌP NỈ 01', '<p>GHỀ PH&Ograve;NG HỌP NỈ 01</p>', '0', 0, 0, 1, 1, 38, '2018-01-08 03:24:07', '2018-01-08 03:24:07'),
(84, 'GHỀ PHÒNG HỌP NỈ 02', 'ghe-phong-hop-ni-02', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghephonghop/ghechanquyni/ghe_phong_hop_ni_02.jpg', '<p>GHỀ PH&Ograve;NG HỌP NỈ 02</p>', 'GHỀ PHÒNG HỌP NỈ 02', '<p>GHỀ PH&Ograve;NG HỌP NỈ 02</p>', '0', 0, 0, 2, 1, 38, '2018-01-08 03:24:36', '2018-01-08 03:24:36'),
(85, 'GHỀ PHÒNG HỌP NỈ 03', 'ghe-phong-hop-ni-03', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghephonghop/ghechanquyni/ghe_phong_hop_ni_03.jpg', '<p>GHỀ PH&Ograve;NG HỌP NỈ 03</p>', 'GHỀ PHÒNG HỌP NỈ 03', '<p>GHỀ PH&Ograve;NG HỌP NỈ 03</p>', '0', 0, 0, 3, 1, 38, '2018-01-08 03:24:57', '2018-01-08 03:24:57'),
(86, 'GHỀ PHÒNG HỌP NỈ 04', 'ghe-phong-hop-ni-04', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghephonghop/ghechanquyni/ghe_phong_hop_ni_04.jpg', '<p>GHỀ PH&Ograve;NG HỌP NỈ 04</p>', 'GHỀ PHÒNG HỌP NỈ 04', '<p>GHỀ PH&Ograve;NG HỌP NỈ 04</p>', '0', 0, 0, 4, 1, 38, '2018-01-08 03:25:21', '2018-01-08 03:25:21'),
(87, 'GHÊ HT GỖ NỆM 01', 'ghe-ht-go-nem-01', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghehoitruong/ghehtgo/ghe_ht_go_nem_01.jpg', '<p>GH&Ecirc; HT GỖ NỆM 01</p>', 'GHÊ HT GỖ NỆM 01', '<p>GH&Ecirc; HT GỖ NỆM 01</p>', '0', 0, 0, 1, 1, 40, '2018-01-08 03:55:10', '2018-01-08 03:55:10'),
(88, 'GHÊ HT GỖ NỆM 02', 'ghe-ht-go-nem-02', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghehoitruong/ghehtgo/ghe_ht_go_nem_02.jpg', '<p>GH&Ecirc; HT GỖ NỆM 02</p>', 'GHÊ HT GỖ NỆM 02', '<p>GH&Ecirc; HT GỖ NỆM 02</p>', '0', 0, 0, 2, 1, 40, '2018-01-08 03:57:45', '2018-01-08 03:57:45'),
(89, 'GHÊ HT GỖ NỆM 03', 'ghe-ht-go-nem-03', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghehoitruong/ghehtgo/ghe_ht_go_nem_03.jpg', '<p>GH&Ecirc; HT GỖ NỆM 03</p>', 'GHÊ HT GỖ NỆM 03', '<p>GH&Ecirc; HT GỖ NỆM 03</p>', '0', 0, 0, 3, 1, 40, '2018-01-08 03:58:08', '2018-01-08 03:58:08'),
(90, 'GHÊ HT GỖ NỈ 04', 'ghe-ht-go-ni-04', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghehoitruong/ghehtgo/ghe_ht_go_nem_04.jpg', '<p>GH&Ecirc; HT GỖ NỈ 04</p>', 'GHÊ HT GỖ NỈ 04', '<p>GH&Ecirc; HT GỖ NỈ 04</p>', '0', 0, 0, 4, 1, 40, '2018-01-08 03:58:32', '2018-01-08 03:58:32'),
(91, 'GHÊ HT 01-NG', 'ghe-ht-01-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghehoitruong/gheht/ghe_ht_01-NG.jpg', '<p>GH&Ecirc; HT 01-NG</p>', 'GHÊ HT 01-NG', '<p>GH&Ecirc; HT 01-NG</p>', '0', 0, 0, 1, 1, 41, '2018-01-08 04:00:02', '2018-01-08 04:00:02'),
(92, 'GHÊ HT 02-NG', 'ghe-ht-02-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghehoitruong/gheht/ghe_ht_02-NG.jpg', '<p>GH&Ecirc; HT 02-NG</p>', 'GHÊ HT 02-NG', '<p>GH&Ecirc; HT 02-NG</p>', '0', 0, 0, 2, 1, 41, '2018-01-08 04:00:26', '2018-01-08 04:00:26'),
(93, 'GHÊ HT 03X-NG', 'ghe-ht-03x-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghehoitruong/gheht/ghe_ht_03X-NG.jpg', '<p>GH&Ecirc; HT 03X-NG</p>', 'GHÊ HT 03X-NG', '<p>GH&Ecirc; HT 03X-NG</p>', '0', 0, 0, 3, 1, 41, '2018-01-08 04:00:50', '2018-01-08 04:00:50'),
(94, 'GHÊ HT 04X-NG', 'ghe-ht-04x-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/ghengoivanphong/ghehoitruong/gheht/ghe_ht_04X-NG.jpg', '<p>GH&Ecirc; HT 04X-NG</p>', 'GHÊ HT 04X-NG', '<p>GH&Ecirc; HT 04X-NG</p>', '0', 0, 0, 4, 1, 41, '2018-01-08 04:01:38', '2018-01-08 04:01:38'),
(95, 'Bàn Phòng Họp 01-NG', 'ban-phong-hop-01-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/banhop/ban_phong_hop_01-NG.jpg', '<p>B&agrave;n Ph&ograve;ng Họp 01-NG</p>', 'Bàn Phòng Họp 01-NG', '<p>B&agrave;n Ph&ograve;ng Họp 01-NG</p>', '0', 0, 0, 1, 1, 18, '2018-01-08 04:05:36', '2018-01-08 04:05:36'),
(96, 'Bàn Phòng Họp 02-NG', 'ban-phong-hop-02-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/banhop/ban_phong_hop_02-NG.jpg', '<p>B&agrave;n Ph&ograve;ng Họp 02-NG</p>', 'Bàn Phòng Họp 02-NG', '<p>B&agrave;n Ph&ograve;ng Họp 02-NG</p>', '0', 0, 0, 2, 1, 18, '2018-01-08 04:06:02', '2018-01-08 04:06:02'),
(97, 'Bàn Phòng Họp 03-NG', 'ban-phong-hop-03-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/banhop/ban_phong_hop_03-NG.jpg', '<p>B&agrave;n Ph&ograve;ng Họp 03-NG</p>', 'Bàn Phòng Họp 03-NG', '<p>B&agrave;n Ph&ograve;ng Họp 03-NG</p>', '0', 0, 0, 3, 1, 18, '2018-01-08 04:06:33', '2018-01-08 04:06:33'),
(98, 'Tủ Hồ Sơ 1.6-NG', 'tu-ho-so-16-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/tuhoso/tu_ho_so_16-NG.jpg', '<p>Tủ Hồ Sơ 1.6-NG</p>', 'Tủ Hồ Sơ 1.6-NG', '<p>Tủ Hồ Sơ 1.6-NG</p>', '0', 0, 0, 1, 1, 42, '2018-01-08 04:10:19', '2018-01-08 04:10:19'),
(99, 'Tủ Hồ Sơ 2-NG', 'tu-ho-so-2-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/tuhoso/tu_ho_so_2-NG.jpg', '<p>Tủ Hồ Sơ 2-NG</p>', 'Tủ Hồ Sơ 2-NG', '<p>Tủ Hồ Sơ 2-NG</p>', '0', 0, 0, 2, 1, 42, '2018-01-08 04:11:00', '2018-01-08 04:11:00'),
(100, 'Tủ Hồ Sơ 3-NG', 'tu-ho-so-3-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/tuhoso/tu_ho_so_03-NG.jpg', '<p>Tủ Hồ Sơ 3-NG</p>', 'Tủ Hồ Sơ 3-NG', '<p>Tủ Hồ Sơ 3-NG</p>', '0', 0, 0, 3, 1, 42, '2018-01-08 04:11:34', '2018-01-08 04:11:34'),
(101, 'Tủ Hồ Sơ 4-NG', 'tu-ho-so-4-ng', 1, 'images/uploads/images/sanpham/thietbivanphong/banlamviec/tuhoso/tu_ho_so_04-NG.jpg', '<p>Tủ Hồ Sơ 4-NG</p>', 'Tủ Hồ Sơ 4-NG', '<p>Tủ Hồ Sơ 4-NG</p>', '0', 0, 0, 4, 1, 42, '2018-01-08 04:12:12', '2018-01-08 04:12:12'),
(102, 'BÀN GHẾ MẦM NON 01', 'ban-ghe-mam-non-01', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/banghemamnon/ban_ghe_mam_non_01.jpg', '<p>B&Agrave;N GHẾ MẦM NON 01</p>', 'BÀN GHẾ MẦM NON 01', '<p>B&Agrave;N GHẾ MẦM NON 01</p>', '0', 0, 0, 1, 1, 47, '2018-01-08 04:21:11', '2018-01-08 04:23:00'),
(103, 'BÀN GHẾ MẦM NON 04', 'ban-ghe-mam-non-04', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/banghemamnon/ban_ghe_mam_non_04.jpg', '<p>B&Agrave;N GHẾ MẦM NON 04</p>', 'BÀN GHẾ MẦM NON 04', '<p>B&Agrave;N GHẾ MẦM NON 04</p>', '0', 0, 0, 2, 1, 47, '2018-01-08 04:22:06', '2018-01-08 04:22:06'),
(104, 'BÀN GHẾ MẦM NON 06', 'ban-ghe-mam-non-06', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/banghemamnon/ban_ghe_mam_non_06.jpg', '<p>B&Agrave;N GHẾ MẦM NON 06</p>', 'BÀN GHẾ MẦM NON 06', '<p>B&Agrave;N GHẾ MẦM NON 06</p>', '0', 0, 0, 3, 1, 47, '2018-01-08 04:22:42', '2018-01-08 04:22:42'),
(105, 'BÀN GHẾ MẦM NON 05', 'ban-ghe-mam-non-05', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/banghemamnon/ban_ghe_mam_non_05.jpg', '<p>B&Agrave;N GHẾ MẦM NON 05</p>', 'BÀN GHẾ MẦM NON 05', '<p>B&Agrave;N GHẾ MẦM NON 05</p>', '0', 0, 0, 4, 1, 47, '2018-01-08 04:23:34', '2018-01-08 04:23:34'),
(106, 'Đồ Chơi 01', 'do-choi-01', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/dochoimamnon/342724261462.jpg', '<p>Đồ Chơi 01</p>', 'Đồ Chơi 01', '<p>Đồ Chơi 01</p>', '0', 0, 0, 1, 1, 48, '2018-01-08 04:24:23', '2018-01-08 04:24:23'),
(107, 'Đồ Chơi 02', 'do-choi-02', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/dochoimamnon/bo-lien-hoan-2-khoi-2-mang-1-1-254x203.jpg', '<p>Đồ Chơi 02</p>', 'Đồ Chơi 02', '<p>Đồ Chơi 02</p>', '0', 0, 0, 1, 1, 48, '2018-01-08 04:24:53', '2018-01-08 04:24:53'),
(108, 'Đồ Chơi 03', 'do-choi-03', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/dochoimamnon/bo-lien-hoan-nhap-khau8.jpg', '<p>Đồ Chơi 03</p>', 'Đồ Chơi 03', '<p>Đồ Chơi 03</p>', '0', 0, 0, 3, 1, 48, '2018-01-08 04:25:28', '2018-01-08 04:25:28'),
(109, 'Đồ Chơi 04', 'do-choi-04', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/dochoimamnon/Combination-Slide-for-Outdoor-and-Playschool-Activities.jpg', '<p>Đồ Chơi 04</p>', 'Đồ Chơi 04', '<p>Đồ Chơi 04</p>', '0', 0, 0, 4, 1, 48, '2018-01-08 04:25:47', '2018-01-08 04:25:47'),
(110, 'Đồ Chơi 05', 'do-choi-05', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/dochoimamnon/do-choi-mam-non-doi-voi-su-phat-trien-va-hinh-thanh-cua-tre-1.jpg', '<p>Đồ Chơi 05</p>', 'Đồ Chơi 05', '<p>Đồ Chơi 05</p>', '0', 0, 0, 5, 1, 48, '2018-01-08 04:26:07', '2018-01-08 04:26:17'),
(111, 'Đồ Chơi 06', 'do-choi-06', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghedochoimamnon/dochoimamnon/SS-image-2012-10-31-50907891ee585.jpg', '<p>Đồ Chơi 06</p>', 'Đồ Chơi 06', '<p>Đồ Chơi 06</p>', '0', 0, 0, 6, 1, 48, '2018-01-08 04:26:52', '2018-01-08 04:26:52'),
(112, 'BÀN GHẾ TIỂU HỌC 01-NG', 'ban-ghe-tieu-hoc-01-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhtieuhoc/ban_ghe_tieu_hoc_01-NG.jpg', '<p>B&Agrave;N GHẾ TIỂU HỌC 01-NG</p>', 'BÀN GHẾ TIỂU HỌC 01-NG', '<p>B&Agrave;N GHẾ TIỂU HỌC 01-NG</p>', '0', 0, 0, 1, 1, 44, '2018-01-08 04:32:33', '2018-01-08 04:32:33'),
(113, 'BÀN GHẾ TIỂU HỌC 02-NG', 'ban-ghe-tieu-hoc-02-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhtieuhoc/ban_ghe_tieu_hoc_02-NG.jpg', '<p>B&Agrave;N GHẾ TIỂU HỌC 02-NG</p>', 'BÀN GHẾ TIỂU HỌC 02-NG', '<p>B&Agrave;N GHẾ TIỂU HỌC 02-NG</p>', '0', 0, 0, 2, 1, 44, '2018-01-08 04:32:57', '2018-01-08 04:32:57'),
(114, 'BÀN GHẾ TIỂU HỌC 03-NG', 'ban-ghe-tieu-hoc-03-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhtieuhoc/ban_ghe_tieu_hoc_03-NG.jpg', '<p>B&Agrave;N GHẾ TIỂU HỌC 03-NG</p>', 'BÀN GHẾ TIỂU HỌC 03-NG', '<p>B&Agrave;N GHẾ TIỂU HỌC 03-NG</p>', '0', 0, 0, 3, 1, 44, '2018-01-08 04:33:22', '2018-01-08 04:33:22'),
(115, 'BÀN GHẾ TIỂU HỌC 04-NG', 'ban-ghe-tieu-hoc-04-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhtieuhoc/ban_ghe_tieu_hoc_04-NG.jpg', '<p>B&Agrave;N GHẾ TIỂU HỌC 04-NG</p>', 'BÀN GHẾ TIỂU HỌC 04-NG', '<p>B&Agrave;N GHẾ TIỂU HỌC 04-NG</p>', '0', 0, 0, 4, 1, 44, '2018-01-08 04:33:40', '2018-01-08 04:33:40'),
(116, 'BÀN GHẾ HỌC SINH THCS 01-NG', 'ban-ghe-hoc-sinh-thcs-01-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthcs/ban_ghe_hs_thcs_01-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH THCS 01-NG</p>', 'BÀN GHẾ HỌC SINH THCS 01-NG', '<p>B&Agrave;N GHẾ HỌC SINH THCS 01-NG</p>', '0', 0, 0, 1, 1, 45, '2018-01-08 04:34:19', '2018-01-08 04:34:19'),
(117, 'BÀN GHẾ HỌC SINH THCS 02-NG', 'ban-ghe-hoc-sinh-thcs-02-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthcs/ban_ghe_hs_thcs_02-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH THCS 02-NG</p>', 'BÀN GHẾ HỌC SINH THCS 02-NG', '<p>B&Agrave;N GHẾ HỌC SINH THCS 02-NG</p>', '0', 0, 0, 2, 1, 45, '2018-01-08 04:34:44', '2018-01-08 04:34:44'),
(118, 'BÀN GHẾ HỌC SINH THCS 03-NG', 'ban-ghe-hoc-sinh-thcs-03-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthcs/ban_ghe_hs_thcs_03-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH THCS 03-NG</p>', 'BÀN GHẾ HỌC SINH THCS 03-NG', '<p>B&Agrave;N GHẾ HỌC SINH THCS 03-NG</p>', '0', 0, 0, 3, 1, 45, '2018-01-08 04:35:04', '2018-01-08 04:35:04'),
(119, 'BÀN GHẾ HỌC SINH THCS 04-NG', 'ban-ghe-hoc-sinh-thcs-04-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthcs/ban_ghe_hs_thcs_04-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH THCS 04-NG</p>', 'BÀN GHẾ HỌC SINH THCS 04-NG', '<p>B&Agrave;N GHẾ HỌC SINH THCS 04-NG</p>', '0', 0, 0, 4, 1, 45, '2018-01-08 04:35:34', '2018-01-08 04:35:34'),
(120, 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 01- NG', 'ban-ghe-hoc-sinh-ptth-sinh-vien-01-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthptvasinhvien/ban_ghe_hs_thpt_sv_01-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 01- NG</p>', 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 01- NG', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 01- NG</p>', '0', 0, 0, 1, 1, 46, '2018-01-08 04:36:05', '2018-01-08 04:36:05'),
(121, 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 02- NG', 'ban-ghe-hoc-sinh-ptth-sinh-vien-02-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthptvasinhvien/ban_ghe_hs_thpt_sv_02-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 02- NG</p>', 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 02- NG', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 02- NG</p>', '0', 0, 0, 2, 1, 46, '2018-01-08 04:36:24', '2018-01-08 04:36:24'),
(122, 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 03- NG', 'ban-ghe-hoc-sinh-ptth-sinh-vien-03-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthptvasinhvien/ban_ghe_hs_thpt_sv_03-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 03- NG</p>', 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 03- NG', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 03- NG</p>', '0', 0, 0, 3, 1, 46, '2018-01-08 04:36:45', '2018-01-08 04:36:45'),
(123, 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 04- NG', 'ban-ghe-hoc-sinh-ptth-sinh-vien-04-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthptvasinhvien/ban_ghe_hs_thpt_sv_04-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 04- NG</p>', 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 04- NG', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 04- NG</p>', '0', 0, 0, 4, 1, 46, '2018-01-08 04:37:09', '2018-01-08 04:37:09'),
(124, 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 05- NG', 'ban-ghe-hoc-sinh-ptth-sinh-vien-05-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthptvasinhvien/ban_ghe_hs_thpt_sv_05-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 05- NG</p>', 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 05- NG', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 05- NG</p>', '0', 0, 0, 5, 1, 46, '2018-01-08 04:37:33', '2018-01-08 04:37:33'),
(125, 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 06- NG', 'ban-ghe-hoc-sinh-ptth-sinh-vien-06-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/banghehocsinh/banghehocsinhthptvasinhvien/ban_ghe_hs_thpt_sv_06-NG.jpg', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 06- NG</p>', 'BÀN GHẾ HỌC SINH PTTH SINH VIEN 06- NG', '<p>B&Agrave;N GHẾ HỌC SINH PTTH SINH VIEN 06- NG</p>', '0', 0, 0, 6, 1, 46, '2018-01-08 04:38:06', '2018-01-08 04:38:06'),
(126, 'Phòng máy tính 1A-NG', 'phong-may-tinh-1a-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongmaytinh/phong_may_tinh_1A-NG.jpg', '<p>Ph&ograve;ng m&aacute;y t&iacute;nh 1A-NG</p>', 'Phòng máy tính 1A-NG', '<p>Ph&ograve;ng m&aacute;y t&iacute;nh 1A-NG</p>', '0', 0, 0, 1, 1, 24, '2018-01-08 04:41:00', '2018-01-08 04:41:00'),
(127, 'Phòng máy tính 1B-NG', 'phong-may-tinh-1b-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongmaytinh/phong_may_tinh_1B-NG.jpg', '<p>Ph&ograve;ng m&aacute;y t&iacute;nh 1B-NG</p>', 'Phòng máy tính 1B-NG', '<p>Ph&ograve;ng m&aacute;y t&iacute;nh 1B-NG</p>', '0', 0, 0, 2, 1, 24, '2018-01-08 04:41:24', '2018-01-08 04:41:24'),
(128, 'Phòng máy tính 1D-NG', 'phong-may-tinh-1d-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongmaytinh/phong_may_tinh_1D-NG.jpg', '<p>Ph&ograve;ng m&aacute;y t&iacute;nh 1D-NG</p>', 'Phòng máy tính 1D-NG', '<p>Ph&ograve;ng m&aacute;y t&iacute;nh 1D-NG</p>', '0', 0, 0, 3, 1, 24, '2018-01-08 04:41:50', '2018-01-08 04:41:50'),
(129, 'Phòng máy tính 1E-NG', 'phong-may-tinh-1e-ng', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongmaytinh/phong_may_tinh_1E-NG.jpg', '<p>Ph&ograve;ng m&aacute;y t&iacute;nh 1E-NG</p>', 'Phòng máy tính 1E-NG', '<p>Ph&ograve;ng m&aacute;y t&iacute;nh 1E-NG</p>', '0', 0, 0, 4, 1, 24, '2018-01-08 04:42:12', '2018-01-08 04:42:12'),
(130, 'Phòng ngoại ngữ mầm non', 'phong-ngoai-ngu-mam-non', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phonglabngoaingu/phong_ngoai_ngu_mam_non.jpg', '<p>Ph&ograve;ng ngoại ngữ mầm non</p>', 'Phòng ngoại ngữ mầm non', '<p>Ph&ograve;ng ngoại ngữ mầm non</p>', '0', 0, 0, 1, 1, 25, '2018-01-08 04:48:37', '2018-01-08 04:48:37'),
(131, 'Phòng ngoại ngữ THCS-THPT', 'phong-ngoai-ngu-thcs-thpt', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phonglabngoaingu/phong_ngoai_ngu_THCS-THPT.jpg', '<p>Ph&ograve;ng ngoại ngữ THCS-THPT</p>', 'Phòng ngoại ngữ THCS-THPT', '<p>Ph&ograve;ng ngoại ngữ THCS-THPT</p>', '0', 0, 0, 2, 1, 25, '2018-01-08 04:49:08', '2018-01-08 04:49:08'),
(132, 'Phòng học dùng chung 1A', 'phong-hoc-dung-chung-1a', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phonghocdungchung/phong_hoc_dung_chung_1A.jpg', '<p>Ph&ograve;ng học d&ugrave;ng chung 1A</p>', 'Phòng học dùng chung 1A', '<p>Ph&ograve;ng học d&ugrave;ng chung 1A</p>', '0', 0, 0, 1, 1, 49, '2018-01-08 06:59:32', '2018-01-08 06:59:32'),
(133, 'Phòng học dùng chung 2A', 'phong-hoc-dung-chung-2a', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phonghocdungchung/phong_hoc_dung_chung_2A.jpg', '<p>Ph&ograve;ng học d&ugrave;ng chung 2A</p>', 'Phòng học dùng chung 2A', '<p>Ph&ograve;ng học d&ugrave;ng chung 2A</p>', '0', 0, 0, 2, 1, 49, '2018-01-08 07:00:02', '2018-01-08 07:00:02'),
(134, 'Phòng học dùng chung 3A', 'phong-hoc-dung-chung-3a', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phonghocdungchung/phong_hoc_dung_chung_3A.jpg', '<p>Ph&ograve;ng học d&ugrave;ng chung 3A</p>', 'Phòng học dùng chung 3A', '<p>Ph&ograve;ng học d&ugrave;ng chung 3A</p>', '0', 0, 0, 3, 1, 49, '2018-01-08 07:00:23', '2018-01-08 07:00:23'),
(135, 'Phòng học dùng chung 4A', 'phong-hoc-dung-chung-4a', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phonghocdungchung/phong_hoc_dung_chung_4A.jpg', '<p>Ph&ograve;ng học d&ugrave;ng chung 4A</p>', 'Phòng học dùng chung 4A', '<p>Ph&ograve;ng học d&ugrave;ng chung 4A</p>', '0', 0, 0, 4, 1, 49, '2018-01-08 07:00:57', '2018-01-08 07:00:57'),
(136, 'Bàn TN Trung Tâm 1T', 'ban-tn-trung-tam-1t', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongthinghiembomon/banthinghiemtrungtam/ban_thi_nghiem_trung_tam_1T.jpg', '<p>B&agrave;n TN Trung T&acirc;m 1T</p>', 'Bàn TN Trung Tâm 1T', '<p>B&agrave;n TN Trung T&acirc;m 1T</p>', '0', 0, 0, 1, 1, 50, '2018-01-08 07:05:08', '2018-01-08 07:05:08'),
(137, 'Bàn TN Trung Tâm 2B', 'ban-tn-trung-tam-2b', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongthinghiembomon/banthinghiemtrungtam/ban_thi_nghiem_trung_tam_2B.jpg', '<p>B&agrave;n TN Trung T&acirc;m 2B</p>', 'Bàn TN Trung Tâm 2B', '<p>B&agrave;n TN Trung T&acirc;m 2B</p>', '0', 0, 0, 2, 1, 50, '2018-01-08 07:05:31', '2018-01-08 07:05:31'),
(138, 'Bàn TN Trung Tâm 3A', 'ban-tn-trung-tam-3a', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongthinghiembomon/banthinghiemtrungtam/ban_thi_nghiem_trung_tam_3A.gif', '<p>B&agrave;n TN Trung T&acirc;m 3A</p>', 'Bàn TN Trung Tâm 3A', '<p>B&agrave;n TN Trung T&acirc;m 3A</p>', '0', 0, 0, 3, 1, 50, '2018-01-08 07:05:59', '2018-01-08 07:05:59'),
(139, 'Bàn TN Trung Tâm 3B', 'ban-tn-trung-tam-3b', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongthinghiembomon/banthinghiemtrungtam/ban_thi_nghiem_trung_tam_3B.jpg', '<p>B&agrave;n TN Trung T&acirc;m 3B</p>', 'Bàn TN Trung Tâm 3B', '<p>B&agrave;n TN Trung T&acirc;m 3B</p>', '0', 0, 0, 4, 1, 50, '2018-01-08 07:06:31', '2018-01-08 07:06:31'),
(140, 'Phòng thí nghiệm Hoá Sinh', 'phong-thi-nghiem-hoa-sinh', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongthinghiembomon/phongthinghiemlyhoasinh/Ph%C3%B2ng%20th%C3%AD%20nghi%E1%BB%87m%20Ho%C3%A1%20Sinh.jpg', '<p>Ph&ograve;ng th&iacute; nghiệm Ho&aacute; Sinh</p>', 'Phòng thí nghiệm Hoá Sinh', '<p>Ph&ograve;ng th&iacute; nghiệm Ho&aacute; Sinh</p>', '0', 0, 0, 1, 1, 51, '2018-01-08 07:08:03', '2018-01-08 07:08:03'),
(141, 'Phòng thí nghiệm Lý', 'phong-thi-nghiem-ly', 1, 'images/uploads/images/sanpham/thietbigiaoduc/phongthinghiembomon/phongthinghiemlyhoasinh/phong_thi_nghiem_ly.jpg', '<p>Ph&ograve;ng th&iacute; nghiệm L&yacute;</p>', 'Phòng thí nghiệm Lý', '<p>Ph&ograve;ng th&iacute; nghiệm L&yacute;</p>', '0', 0, 0, 2, 1, 51, '2018-01-08 07:10:20', '2018-01-08 07:10:20'),
(142, 'Cầu Tuột Liên Hoàn 1', 'cau-tuot-lien-hoan-1', 1, 'images/uploads/images/sanpham/thietbigiaoduc/thietbimamnon/cau_tuot.jpg', '<p>Cầu Tuột Li&ecirc;n Ho&agrave;n 1</p>', 'Cầu Tuột Liên Hoàn 1', '<p>Cầu Tuột Li&ecirc;n Ho&agrave;n 1</p>', '0', 0, 0, 1, 1, 27, '2018-01-08 07:12:45', '2018-01-08 07:12:45'),
(143, 'Cầu Tuột Liên Hoàn 2', 'cau-tuot-lien-hoan-2', 1, 'images/uploads/images/sanpham/thietbigiaoduc/thietbimamnon/cau_tuot_lien_hoan_.jpg', '<p>Cầu Tuột Li&ecirc;n Ho&agrave;n 2</p>', 'Cầu Tuột Liên Hoàn 2', '<p>Cầu Tuột Li&ecirc;n Ho&agrave;n 2</p>', '0', 0, 0, 2, 1, 27, '2018-01-08 07:13:04', '2018-01-08 07:13:21'),
(144, 'Cầu Tuột Liên Hoàn 3', 'cau-tuot-lien-hoan-3', 1, 'images/uploads/images/sanpham/thietbigiaoduc/thietbimamnon/cau_tuot_lien_hoan_AB.jpg', '<p>Cầu Tuột Li&ecirc;n Ho&agrave;n 3</p>', 'Cầu Tuột Liên Hoàn 3', '<p>Cầu Tuột Li&ecirc;n Ho&agrave;n 3</p>', '0', 0, 0, 3, 1, 27, '2018-01-08 07:13:38', '2018-01-08 07:14:30'),
(145, 'Trò Chơi Liên Hoàn 1', 'tro-choi-lien-hoan-1', 1, 'images/uploads/images/sanpham/thietbigiaoduc/thietbimamnon/tro_choi_lien_hoan.jpg', '<p>Tr&ograve; Chơi Li&ecirc;n Ho&agrave;n 1</p>', 'Trò Chơi Liên Hoàn 1', '<p>Tr&ograve; Chơi Li&ecirc;n Ho&agrave;n 1</p>', '0', 0, 0, 4, 1, 27, '2018-01-08 07:14:22', '2018-01-08 07:14:22'),
(146, 'Trò Chơi Liên Hoàn 2', 'tro-choi-lien-hoan-2', 1, 'images/uploads/images/sanpham/thietbigiaoduc/thietbimamnon/tro_choi_lien_hoan_1AB.jpg', '<p>Tr&ograve; Chơi Li&ecirc;n Ho&agrave;n 2</p>', 'Trò Chơi Liên Hoàn 2', '<p>Tr&ograve; Chơi Li&ecirc;n Ho&agrave;n 2</p>', '0', 0, 0, 5, 1, 27, '2018-01-08 07:15:10', '2018-01-08 07:15:10'),
(147, 'Cầu Tuột Liên Hoàn 4', 'cau-tuot-lien-hoan-4', 1, 'images/uploads/images/sanpham/thietbigiaoduc/thietbimamnon/tro_choi_lien_hoan_AB.jpg', '<p>Cầu Tuột Li&ecirc;n Ho&agrave;n 4</p>', 'Cầu Tuột Liên Hoàn 4', '<p>Cầu Tuột Li&ecirc;n Ho&agrave;n 4</p>', '0', 0, 0, 6, 1, 27, '2018-01-08 07:15:41', '2018-01-08 07:15:41'),
(148, 'Dụng cụ thuỷ tinh PTN 2', 'dung-cu-thuy-tinh-ptn-2', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/dungcuphongthinghiem/dung_cu_thuy_tinh_PTN_2.jpg', '<p>Dụng cụ thuỷ tinh PTN 2</p>', 'Dụng cụ thuỷ tinh PTN 2', '<p>Dụng cụ thuỷ tinh PTN 2</p>', '0', 0, 0, 1, 1, 52, '2018-01-08 07:20:14', '2018-01-08 07:20:14'),
(149, 'Dụng cụ thuỷ tinh PTN 3', 'dung-cu-thuy-tinh-ptn-3', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/dungcuphongthinghiem/dung_cu_thuy_tinh_PTN_3.jpg', '<p>Dụng cụ thuỷ tinh PTN 3</p>', 'Dụng cụ thuỷ tinh PTN 3', '<p>Dụng cụ thuỷ tinh PTN 3</p>', '0', 0, 0, 2, 1, 52, '2018-01-08 07:20:37', '2018-01-08 07:20:37'),
(150, 'Dụng cụ thuỷ tinh PTN 4', 'dung-cu-thuy-tinh-ptn-4', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/dungcuphongthinghiem/dung_cu_thuy_tinh_PTN_4.jpg', '<p>Dụng cụ thuỷ tinh PTN 4</p>', 'Dụng cụ thuỷ tinh PTN 4', '<p>Dụng cụ thuỷ tinh PTN 4</p>', '0', 0, 0, 3, 1, 52, '2018-01-08 07:20:57', '2018-01-08 07:21:42'),
(151, 'Dụng cụ thuỷ tinh PTN 5', 'dung-cu-thuy-tinh-ptn-5', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/dungcuphongthinghiem/dung_cu_thuy_tinh_PTN_5.jpg', '<p>Dụng cụ thuỷ tinh PTN 5</p>', 'Dụng cụ thuỷ tinh PTN 5', '<p>Dụng cụ thuỷ tinh PTN 5</p>', '0', 0, 0, 4, 1, 52, '2018-01-08 07:22:08', '2018-01-08 07:22:08'),
(152, 'Dụng cụ thuỷ tinh PTN 6', 'dung-cu-thuy-tinh-ptn-6', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/dungcuphongthinghiem/dung_cu_thuy_tinh_PTN_6.jpg', '<p>Dụng cụ thuỷ tinh PTN 6</p>', 'Dụng cụ thuỷ tinh PTN 6', '<p>Dụng cụ thuỷ tinh PTN 6</p>', '0', 0, 0, 5, 1, 52, '2018-01-08 07:22:30', '2018-01-08 07:22:30'),
(153, 'Dụng cụ thuỷ tinh PTN 7', 'dung-cu-thuy-tinh-ptn-7', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/dungcuphongthinghiem/dung_cu_thuy_tinh_PTN_7.jpg', '<p>Dụng cụ thuỷ tinh PTN 7</p>', 'Dụng cụ thuỷ tinh PTN 7', '<p>Dụng cụ thuỷ tinh PTN 7</p>', '0', 0, 0, 6, 1, 52, '2018-01-08 07:22:53', '2018-01-08 07:22:53'),
(154, 'KÍNH HIỂN VI OLYMPUS CX23', 'kinh-hien-vi-olympus-cx23', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/kinhhienvi/olympus/kinh_hien_vi_olympus_CX23.jpg', '<p>K&Iacute;NH HIỂN VI OLYMPUS CX23</p>', 'KÍNH HIỂN VI OLYMPUS CX23', '<p>K&Iacute;NH HIỂN VI OLYMPUS CX23</p>', '0', 0, 0, 1, 1, 63, '2018-01-08 07:32:15', '2018-01-08 07:32:15'),
(155, 'KÍNH HIỂN VI OLYMPUS CX31', 'kinh-hien-vi-olympus-cx31', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/kinhhienvi/olympus/kinh_hien_vi_olympus_CX31.jpg', '<p>K&Iacute;NH HIỂN VI OLYMPUS CX31</p>', 'KÍNH HIỂN VI OLYMPUS CX31', '<p>K&Iacute;NH HIỂN VI OLYMPUS CX31</p>', '0', 0, 0, 2, 1, 63, '2018-01-08 07:32:44', '2018-01-08 07:32:44'),
(156, 'KÍNH HIỂN VI OLYMPUS CX43', 'kinh-hien-vi-olympus-cx43', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/kinhhienvi/olympus/kinh_hien_vi_olympus_CX43.jpg', '<p>K&Iacute;NH HIỂN VI OLYMPUS CX43</p>', 'KÍNH HIỂN VI OLYMPUS CX43', '<p>K&Iacute;NH HIỂN VI OLYMPUS CX43</p>', '0', 0, 0, 3, 1, 63, '2018-01-08 07:33:07', '2018-01-08 07:33:07');
INSERT INTO `products` (`id`, `name`, `path`, `isActive`, `image`, `description`, `seo_title`, `seo_description`, `price`, `sale`, `final_price`, `order`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(157, 'KÍNH HIỂN VI OLYMPUS TỔNG HỢP', 'kinh-hien-vi-olympus-tong-hop', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/kinhhienvi/olympus/kinh_hien_vi_olympus_tong_hop.jpg', '<p>K&Iacute;NH HIỂN VI OLYMPUS TỔNG HỢP</p>', 'KÍNH HIỂN VI OLYMPUS TỔNG HỢP', '<p>K&Iacute;NH HIỂN VI OLYMPUS TỔNG HỢP</p>', '0', 0, 0, 4, 1, 63, '2018-01-08 07:33:34', '2018-01-08 07:33:34'),
(158, 'KÍNH HIỂN VI 2 MẮT OPTICA 1', 'kinh-hien-vi-2-mat-optica-1', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/kinhhienvi/optica/kinh_hien_vi_2_mat_OPTICA_1.jpg', '<p>K&Iacute;NH HIỂN VI 2 MẮT OPTICA 1</p>', 'KÍNH HIỂN VI 2 MẮT OPTICA 1', '<p>K&Iacute;NH HIỂN VI 2 MẮT OPTICA 1</p>', '0', 0, 0, 1, 1, 64, '2018-01-08 07:35:11', '2018-01-08 07:35:20'),
(159, 'KÍNH HIỂN VI 2 MẮT OPTICA 2', 'kinh-hien-vi-2-mat-optica-2', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/kinhhienvi/optica/kinh_hien_vi_2_mat_OPTICA_2.jpg', '<p>K&Iacute;NH HIỂN VI 2 MẮT OPTICA 2</p>', 'KÍNH HIỂN VI 2 MẮT OPTICA 2', '<p>K&Iacute;NH HIỂN VI 2 MẮT OPTICA 2</p>', '0', 0, 0, 2, 1, 64, '2018-01-08 07:35:52', '2018-01-08 07:35:52'),
(160, 'KÍNH HIỂN VI 3 MẮT OPTICA 1', 'kinh-hien-vi-3-mat-optica-1', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/kinhhienvi/optica/kinh_hien_vi_3_mat_OPTICA_1.jpg', '<p>K&Iacute;NH HIỂN VI 3 MẮT OPTICA 1</p>', 'KÍNH HIỂN VI 3 MẮT OPTICA 1', '<p>K&Iacute;NH HIỂN VI 3 MẮT OPTICA 1</p>', '0', 0, 0, 3, 1, 64, '2018-01-08 07:36:22', '2018-01-08 07:36:22'),
(161, 'KÍNH HIỂN VI 3 MẮT OPTICA 2', 'kinh-hien-vi-3-mat-optica-2', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/kinhhienvi/optica/kinh_hien_vi_3_mat_OPTICA_2.jpg', '<p>K&Iacute;NH HIỂN VI 3 MẮT OPTICA 2</p>', 'KÍNH HIỂN VI 3 MẮT OPTICA 2', '<p>K&Iacute;NH HIỂN VI 3 MẮT OPTICA 2</p>', '0', 0, 0, 4, 1, 64, '2018-01-08 07:36:44', '2018-01-08 07:36:44'),
(162, 'Cân phân tích Kern', 'can-phan-tich-kern', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/cankythuatphantich/can_phan_tich_Kern.jpg', '<p>C&acirc;n ph&acirc;n t&iacute;ch Kern</p>', 'Cân phân tích Kern', '<p>C&acirc;n ph&acirc;n t&iacute;ch Kern</p>', '0', 0, 0, 1, 1, 55, '2018-01-08 07:38:40', '2018-01-08 07:38:40'),
(163, 'Cân phân tích Ohaus', 'can-phan-tich-ohaus', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/cankythuatphantich/can_phan_tich_Ohaus.jpg', '<p>C&acirc;n ph&acirc;n t&iacute;ch Ohaus</p>', 'Cân phân tích Ohaus', '<p>C&acirc;n ph&acirc;n t&iacute;ch Ohaus</p>', '0', 0, 0, 2, 1, 55, '2018-01-08 07:39:07', '2018-01-08 07:39:07'),
(164, 'Cân Kỹ Thuật Ohaus', 'can-ky-thuat-ohaus', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/cankythuatphantich/can_ky_thuat_Ohaus_2.jpg', '<p>C&acirc;n Kỹ Thuật Ohaus</p>', 'Cân Kỹ Thuật Ohaus', '<p>C&acirc;n Kỹ Thuật Ohaus</p>', '0', 0, 0, 3, 1, 55, '2018-01-08 07:40:23', '2018-01-08 07:40:23'),
(165, 'Cân Kỹ Thuật Sartorius', 'can-ky-thuat-sartorius', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/cankythuatphantich/can_ky_thuat_Sartorius.jpg', '<p>C&acirc;n Kỹ Thuật Sartorius</p>', 'Cân Kỹ Thuật Sartorius', '<p>C&acirc;n Kỹ Thuật Sartorius</p>', '0', 0, 0, 4, 1, 55, '2018-01-08 07:40:49', '2018-01-08 07:40:49'),
(166, 'Máy cất nước Cole - Parmer', 'may-cat-nuoc-cole-parmer', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/maycatnuoc/may_cat_nuoc_Cole_Parmer.jpg', '<p>M&aacute;y cất nước Cole - Parmer</p>', 'Máy cất nước Cole - Parmer', '<p>M&aacute;y cất nước Cole - Parmer</p>', '0', 0, 0, 1, 1, 56, '2018-01-08 07:42:12', '2018-01-08 07:42:12'),
(167, 'Máy cất nước Lasany', 'may-cat-nuoc-lasany', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/maycatnuoc/may_cat_nuoc_Lasany.jpg', '<p>M&aacute;y cất nước Lasany</p>', 'Máy cất nước Lasany', '<p>M&aacute;y cất nước Lasany</p>', '0', 0, 0, 2, 1, 56, '2018-01-08 07:42:30', '2018-01-08 07:42:30'),
(168, 'Nồi hấp tiệt trùng Sturdy SA 232', 'noi-hap-tiet-trung-sturdy-sa-232', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/noihaptiettrung/noi_hap_tiet_trung_Sturdy_SA_232.png', '<p>Nồi hấp tiệt tr&ugrave;ng Sturdy SA 232</p>', 'Nồi hấp tiệt trùng Sturdy SA 232', '<p>Nồi hấp tiệt tr&ugrave;ng Sturdy SA 232</p>', '0', 0, 0, 1, 1, 57, '2018-01-08 07:44:10', '2018-01-08 07:44:10'),
(169, 'Nồi hấp tiệt trùng Sturdy SA 232X', 'noi-hap-tiet-trung-sturdy-sa-232x', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/noihaptiettrung/noi_hap_tiet_trung_Sturdy_SA_232X.jpg', '<p>Nồi hấp tiệt tr&ugrave;ng Sturdy SA 232X</p>', 'Nồi hấp tiệt trùng Sturdy SA 232X', '<p>Nồi hấp tiệt tr&ugrave;ng Sturdy SA 232X</p>', '0', 0, 0, 2, 1, 57, '2018-01-08 07:44:26', '2018-01-08 07:44:26'),
(170, 'Nồi hấp tiệt trùng Sturdy SA 252F', 'noi-hap-tiet-trung-sturdy-sa-252f', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/noihaptiettrung/noi_hap_tiet_trung_Sturdy_SA_252F.png', '<p>Nồi hấp tiệt tr&ugrave;ng Sturdy SA 252F</p>', 'Nồi hấp tiệt trùng Sturdy SA 252F', '<p>Nồi hấp tiệt tr&ugrave;ng Sturdy SA 252F</p>', '0', 0, 0, 3, 1, 57, '2018-01-08 07:44:44', '2018-01-08 07:44:44'),
(171, 'Nồi hấp tiệt trùng Sturdy SA 300VL', 'noi-hap-tiet-trung-sturdy-sa-300vl', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/noihaptiettrung/noi_hap_tiet_trung_Sturdy_SA_300VL.png', '<p>Nồi hấp tiệt tr&ugrave;ng Sturdy SA 300VL</p>', 'Nồi hấp tiệt trùng Sturdy SA 300VL', '<p>Nồi hấp tiệt tr&ugrave;ng Sturdy SA 300VL</p>', '0', 0, 0, 4, 1, 57, '2018-01-08 07:45:03', '2018-01-08 07:45:03'),
(172, 'Tủ sấy Digisystem Laboratory', 'tu-say-digisystem-laboratory', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tusay/tu_say_Digisystem_Laboratory.jpg', '<p>Tủ sấy Digisystem Laboratory</p>', 'Tủ sấy Digisystem Laboratory', '<p>Tủ sấy Digisystem Laboratory</p>', '0', 0, 0, 1, 1, 58, '2018-01-08 07:46:11', '2018-01-08 07:46:11'),
(173, 'Tủ sấy France Etuves XU032', 'tu-say-france-etuves-xu032', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tusay/tu_say_France_Etuves_XU032.jpg', '<p>Tủ sấy France Etuves XU032</p>', 'Tủ sấy France Etuves XU032', '<p>Tủ sấy France Etuves XU032</p>', '0', 0, 0, 2, 1, 58, '2018-01-08 07:46:42', '2018-01-08 07:46:42'),
(174, 'Tủ sấy Isolab', 'tu-say-isolab', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tusay/tu_say_Isolab.jpg', '<p>Tủ sấy Isolab</p>', 'Tủ sấy Isolab', '<p>Tủ sấy Isolab</p>', '0', 0, 0, 3, 1, 58, '2018-01-08 07:47:02', '2018-01-08 07:47:02'),
(175, 'Tủ sấy Memmert UN30', 'tu-say-memmert-un30', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tusay/tu_say_Memmert_UN30.jpg', '<p>Tủ sấy Memmert UN30</p>', 'Tủ sấy Memmert UN30', '<p>Tủ sấy Memmert UN30</p>', '0', 0, 0, 4, 1, 58, '2018-01-08 07:47:20', '2018-01-08 07:47:20'),
(176, 'Tủ cấy vi sinh Biobase 02', 'tu-cay-vi-sinh-biobase-02', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tucayvisinh/tu_cay_vi_sinh_Biobase_02.jpg', '<p>Tủ cấy vi sinh Biobase 02</p>', 'Tủ cấy vi sinh Biobase 02', '<p>Tủ cấy vi sinh Biobase 02</p>', '0', 0, 0, 1, 1, 59, '2018-01-08 07:48:15', '2018-01-08 07:48:15'),
(177, 'Tủ cấy vi sinh Esco', 'tu-cay-vi-sinh-esco', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tucayvisinh/tu_cay_vi_sinh_Esco.png', '<p>Tủ cấy vi sinh Esco</p>', 'Tủ cấy vi sinh Esco', '<p>Tủ cấy vi sinh Esco</p>', '0', 0, 0, 2, 1, 59, '2018-01-08 07:48:43', '2018-01-08 07:48:43'),
(178, 'Tủ cấy vi sinh HumanLab', 'tu-cay-vi-sinh-humanlab', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tucayvisinh/tu_cay_vi_sinh_HumanLab.png', '<p>Tủ cấy vi sinh HumanLab</p>', 'Tủ cấy vi sinh HumanLab', '<p>Tủ cấy vi sinh HumanLab</p>', '0', 0, 0, 3, 1, 59, '2018-01-08 07:49:02', '2018-01-08 07:49:02'),
(179, 'Tủ cấy vi sinh VN', 'tu-cay-vi-sinh-vn', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tucayvisinh/tu_cay_vi_sinh_VN.png', '<p>Tủ cấy vi sinh VN</p>', 'Tủ cấy vi sinh VN', '<p>Tủ cấy vi sinh VN</p>', '0', 0, 0, 4, 1, 59, '2018-01-08 07:49:31', '2018-01-08 07:49:31'),
(180, 'Máy ly tâm Benchmark Scientific', 'may-ly-tam-benchmark-scientific', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/maylytam/may_ly_tam_Benchmark_Scientific.jpg', '<p>M&aacute;y ly t&acirc;m Benchmark Scientific</p>', 'Máy ly tâm Benchmark Scientific', '<p>M&aacute;y ly t&acirc;m Benchmark Scientific</p>', '0', 0, 0, 1, 1, 60, '2018-01-08 07:50:38', '2018-01-08 07:50:38'),
(181, 'Máy ly tâm Biobase', 'may-ly-tam-biobase', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/maylytam/may_ly_tam_Biobase.png', '<p>M&aacute;y ly t&acirc;m Biobase</p>', 'Máy ly tâm Biobase', '<p>M&aacute;y ly t&acirc;m Biobase</p>', '0', 0, 0, 2, 1, 60, '2018-01-08 07:50:56', '2018-01-08 07:50:56'),
(182, 'Máy ly tâm Hettich Eba20', 'may-ly-tam-hettich-eba20', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/maylytam/may_ly_tam_Hettich_Eba20.png', '<p>M&aacute;y ly t&acirc;m Hettich Eba20</p>', 'Máy ly tâm Hettich Eba20', '<p>M&aacute;y ly t&acirc;m Hettich Eba20</p>', '0', 0, 0, 3, 1, 60, '2018-01-08 07:51:13', '2018-01-08 07:51:13'),
(183, 'Máy ly tâm Sigma', 'may-ly-tam-sigma', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/maylytam/may_ly_tam_Sigma.jpg', '<p>M&aacute;y ly t&acirc;m Sigma</p>', 'Máy ly tâm Sigma', '<p>M&aacute;y ly t&acirc;m Sigma</p>', '0', 0, 0, 4, 1, 60, '2018-01-08 07:51:29', '2018-01-08 07:51:29'),
(184, 'Tủ hút khí độc Biobase', 'tu-hut-khi-doc-biobase', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tuhutkhidoc/tu_hut_khi_doc_Biobase.jpg', '<p>Tủ h&uacute;t kh&iacute; độc Biobase</p>', 'Tủ hút khí độc Biobase', '<p>Tủ h&uacute;t kh&iacute; độc Biobase</p>', '0', 0, 0, 1, 1, 61, '2018-01-08 07:52:39', '2018-01-08 07:52:39'),
(185, 'Tủ hút khí độc Cryste', 'tu-hut-khi-doc-cryste', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tuhutkhidoc/tu_hut_khi_doc_Cryste.jpg', '<p>Tủ h&uacute;t kh&iacute; độc Cryste</p>', 'Tủ hút khí độc Cryste', '<p>Tủ h&uacute;t kh&iacute; độc Cryste</p>', '0', 0, 0, 2, 1, 61, '2018-01-08 07:52:55', '2018-01-08 07:52:55'),
(186, 'Tủ hút khí độc Esco', 'tu-hut-khi-doc-esco', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tuhutkhidoc/tu_hut_khi_doc_Esco.png', '<p>Tủ h&uacute;t kh&iacute; độc Esco</p>', 'Tủ hút khí độc Esco', '<p>Tủ h&uacute;t kh&iacute; độc Esco</p>', '0', 0, 0, 3, 1, 61, '2018-01-08 07:53:10', '2018-01-08 07:53:10'),
(187, 'Tủ hút khí độc Trung Quốc', 'tu-hut-khi-doc-trung-quoc', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tuhutkhidoc/tu_hut_khi_doc_trung_quoc.jpg', '<p>Tủ h&uacute;t kh&iacute; độc Trung Quốc</p>', 'Tủ hút khí độc Trung Quốc', '<p>Tủ h&uacute;t kh&iacute; độc Trung Quốc</p>', '0', 0, 0, 4, 1, 61, '2018-01-08 07:53:29', '2018-01-08 07:53:29'),
(188, 'Tủ đựng hoá chất - Kính hiển vi', 'tu-dung-hoa-chat-kinh-hien-vi', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tudunghoachatkinhhienvi/tu_dung_hoa_chat_kinh_hien_vi_1.jpg', '<p>Tủ đựng ho&aacute; chất - K&iacute;nh hiển vi</p>', 'Tủ đựng hoá chất - Kính hiển vi', '<p>Tủ đựng ho&aacute; chất - K&iacute;nh hiển vi</p>', '0', 0, 0, 1, 1, 62, '2018-01-08 07:56:14', '2018-01-08 07:56:14'),
(189, 'Tủ đựng hoá chất di động 01-NG', 'tu-dung-hoa-chat-di-dong-01-ng', 1, 'images/uploads/images/sanpham/thietbiphongthinghiemkythuat/thietbiphongthinghiem/tudunghoachatkinhhienvi/tu_dung_hoa_chat_di_dong.jpg', '<p>Tủ đựng ho&aacute; chất di động 01-NG</p>', 'Tủ đựng hoá chất di động 01-NG', '<p>Tủ đựng ho&aacute; chất di động 01-NG</p>', '0', 0, 0, 2, 1, 62, '2018-01-08 07:56:33', '2018-01-08 07:56:33'),
(190, 'Máy đo đường huyết', 'may-do-duong-huyet', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbiyte/may_do_duong_huyet.jpg', '<p>M&aacute;y đo đường huyết</p>', 'Máy đo đường huyết', '<p>M&aacute;y đo đường huyết</p>', '0', 0, 0, 1, 1, 65, '2018-01-08 08:00:17', '2018-01-08 08:00:17'),
(191, 'Máy hút dịch', 'may-hut-dich', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbiyte/may_hut_dich.jpg', '<p>M&aacute;y h&uacute;t dịch</p>', 'Máy hút dịch', '<p>M&aacute;y h&uacute;t dịch</p>', '0', 0, 0, 2, 1, 65, '2018-01-08 08:00:34', '2018-01-08 08:00:34'),
(192, 'Máy ly tâm máu', 'may-ly-tam-mau', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbiyte/may_ly_tam_mau.jpg', '<p>M&aacute;y ly t&acirc;m m&aacute;u</p>', 'Máy ly tâm máu', '<p>M&aacute;y ly t&acirc;m m&aacute;u</p>', '0', 0, 0, 3, 1, 65, '2018-01-08 08:00:49', '2018-01-08 08:00:49'),
(193, 'Máy siêu âm xách tay', 'may-sieu-am-xach-tay', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbiyte/may_sieu_am_xach_tay.jpg', '<p>M&aacute;y si&ecirc;u &acirc;m x&aacute;ch tay</p>', NULL, '<p>M&aacute;y si&ecirc;u &acirc;m x&aacute;ch tay</p>', '0', 0, 0, 4, 1, 65, '2018-01-08 08:01:17', '2018-01-08 08:01:17'),
(194, 'Máy siêu âm', 'may-sieu-am', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbiyte/may_sieu_am.jpg', '<p>M&aacute;y si&ecirc;u &acirc;m</p>', 'Máy siêu âm', '<p>M&aacute;y si&ecirc;u &acirc;m</p>', '0', 0, 0, 5, 1, 65, '2018-01-08 08:01:36', '2018-01-08 08:01:36'),
(195, 'Máy tạo Oxi', 'may-tao-oxi', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbiyte/may_tao_oxi.jpg', '<p>M&aacute;y tạo Oxi</p>', 'Máy tạo Oxi', '<p>M&aacute;y tạo Oxi</p>', '0', 0, 0, 6, 1, 65, '2018-01-08 08:01:55', '2018-01-08 08:01:55'),
(196, 'Máy xét nghiệm nước tiểu', 'may-xet-nghiem-nuoc-tieu', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbiyte/may_xet_nghiem_nuoc_tieu.jpg', '<p>M&aacute;y x&eacute;t nghiệm nước tiểu</p>', 'Máy xét nghiệm nước tiểu', '<p>M&aacute;y x&eacute;t nghiệm nước tiểu</p>', '0', 0, 0, 7, 1, 65, '2018-01-08 08:02:14', '2018-01-08 08:02:14'),
(197, 'Máy xông mũi', 'may-xong-mui', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbiyte/may_xong_mui.jpg', '<p>M&aacute;y x&ocirc;ng mũi</p>', 'Máy xông mũi', '<p>M&aacute;y x&ocirc;ng mũi</p>', '0', 0, 0, 8, 1, 65, '2018-01-08 08:02:36', '2018-01-08 08:02:36'),
(198, 'Dụng cụ nha khoa 1', 'dung-cu-nha-khoa-1', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbivattunhakhoa/dung_cu_nha_khoa_2.jpg', '<p>Dụng cụ nha khoa 1</p>', 'Dụng cụ nha khoa 1', '<p>Dụng cụ nha khoa 1</p>', '0', 0, 0, 1, 1, 66, '2018-01-08 08:03:57', '2018-01-08 08:03:57'),
(199, 'Dụng cụ nha khoa 2', 'dung-cu-nha-khoa-2', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbivattunhakhoa/dung_cu_nha_khoa_2.jpg', '<p>Dụng cụ nha khoa 2</p>', 'Dụng cụ nha khoa 2', '<p>Dụng cụ nha khoa 2</p>', '0', 0, 0, 2, 1, 66, '2018-01-08 08:04:18', '2018-01-08 08:04:18'),
(200, 'Ghế nha chuyên dụng', 'ghe-nha-chuyen-dung', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbivattunhakhoa/ghe_nha_chuyen_dung.jpg', '<p>Ghế nha chuy&ecirc;n dụng</p>', 'Ghế nha chuyên dụng', '<p>Ghế nha chuy&ecirc;n dụng</p>', '0', 0, 0, 3, 1, 66, '2018-01-08 08:04:33', '2018-01-08 08:04:33'),
(201, 'Máy chụp phim cầm tay', 'may-chup-phim-cam-tay', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbivattunhakhoa/may_chup_phim_cam_tay.jpg', '<p>M&aacute;y chụp phim cầm tay</p>', 'Máy chụp phim cầm tay', '<p>M&aacute;y chụp phim cầm tay</p>', '0', 0, 0, 4, 1, 66, '2018-01-08 08:04:50', '2018-01-08 08:04:50'),
(202, 'Máy khoan răng', 'may-khoan-rang', 1, 'images/uploads/images/sanpham/thietbiyteykhoanhakhoa/thietbivattunhakhoa/may_khoan_rang.jpg', '<p>M&aacute;y khoan răng</p>', 'Máy khoan răng', '<p>M&aacute;y khoan răng</p>', '0', 0, 0, 5, 1, 66, '2018-01-08 08:05:07', '2018-01-08 08:05:07'),
(203, 'Bàn thực hành tự động hoá', 'ban-thuc-hanh-tu-dong-hoa', 1, 'images/uploads/images/sanpham/theitbidaynghe/ban_thuc_hanh_tu_dong_hoa.jpg', '<p>B&agrave;n thực h&agrave;nh tự động ho&aacute;</p>', 'Bàn thực hành tự động hoá', '<p>B&agrave;n thực h&agrave;nh tự động ho&aacute;</p>', '0', 0, 0, 1, 1, 31, '2018-01-08 08:12:29', '2018-01-08 08:12:29'),
(204, 'Mô hình hệ thống điều khiển 3D', 'mo-hinh-he-thong-dieu-khien-3d', 1, 'images/uploads/images/sanpham/theitbidaynghe/mo_hinh_he_thong_dieu_khien_3d.jpg', '<p>M&ocirc; h&igrave;nh hệ thống điều khiển 3D</p>', 'Mô hình hệ thống điều khiển 3D', '<p>M&ocirc; h&igrave;nh hệ thống điều khiển 3D</p>', '0', 0, 0, 2, 1, 31, '2018-01-08 08:12:51', '2018-01-08 08:12:51'),
(205, 'Mô hình thực hành điện công nghiệp- Đo lường mạch điện', 'mo-hinh-thuc-hanh-dien-cong-nghiep-do-luong-mach-dien', 1, 'images/uploads/images/sanpham/theitbidaynghe/mo_hinh_thuc_hanh_dien_cong_nghiep-do_luong_mach_dien.jpg', '<p>M&ocirc; h&igrave;nh thực h&agrave;nh điện c&ocirc;ng nghiệp- Đo lường mạch điện</p>', 'Mô hình thực hành điện công nghiệp- Đo lường mạch điện', '<p>M&ocirc; h&igrave;nh thực h&agrave;nh điện c&ocirc;ng nghiệp- Đo lường mạch điện</p>', '0', 0, 0, 3, 1, 31, '2018-01-08 08:13:08', '2018-01-08 08:13:16'),
(206, 'Mô hình thực hành điện công nghiệp- Khí cụ điện', 'mo-hinh-thuc-hanh-dien-cong-nghiep-khi-cu-dien', 1, 'images/uploads/images/sanpham/theitbidaynghe/mo_hinh_thuc_hanh_dien_cong_nghiep_khi_cu_dien.jpg', '<p>M&ocirc; h&igrave;nh thực h&agrave;nh điện c&ocirc;ng nghiệp- Kh&iacute; cụ điện</p>', 'Mô hình thực hành điện công nghiệp- Khí cụ điện', '<p>M&ocirc; h&igrave;nh thực h&agrave;nh điện c&ocirc;ng nghiệp- Kh&iacute; cụ điện</p>', '0', 0, 0, 4, 1, 31, '2018-01-08 08:13:41', '2018-01-08 08:13:41'),
(207, 'Mô hình thực hành mạng nối tiếp', 'mo-hinh-thuc-hanh-mang-noi-tiep', 1, 'images/uploads/images/sanpham/theitbidaynghe/mo_hinh_thuc_hanh_mang_noi_tiep.png', '<p>M&ocirc; h&igrave;nh thực h&agrave;nh mạng nối tiếp</p>', 'Mô hình thực hành mạng nối tiếp', '<p>M&ocirc; h&igrave;nh thực h&agrave;nh mạng nối tiếp</p>', '0', 0, 0, 5, 1, 31, '2018-01-08 08:13:57', '2018-01-08 08:13:57'),
(208, 'Mô hình truyên nhận thông tin số', 'mo-hinh-truyen-nhan-thong-tin-so', 1, 'images/uploads/images/sanpham/theitbidaynghe/mo_hinh_truyen_nhan_thong_tin_so.png', '<p>M&ocirc; h&igrave;nh truy&ecirc;n nhận th&ocirc;ng tin số</p>', 'Mô hình truyên nhận thông tin số', '<p>M&ocirc; h&igrave;nh truy&ecirc;n nhận th&ocirc;ng tin số</p>', '0', 0, 0, 6, 1, 31, '2018-01-08 08:14:17', '2018-01-08 08:14:17'),
(209, 'Miếng dán màn hình máy tính 3M', 'mieng-dan-man-hinh-may-tinh-3m', 1, 'images/uploads/images/sanpham/danmanhinh3m/mieng_dan_man_hinh_may_tinh_3M.jpg', '<p>Miếng d&aacute;n m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh 3M</p>', 'Miếng dán màn hình máy tính 3M', '<p>Miếng d&aacute;n m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh 3M</p>', '0', 0, 0, 1, 1, 32, '2018-01-08 08:15:36', '2018-01-08 08:15:36'),
(210, 'Miếng dán màn hình máy tính 3M-1', 'mieng-dan-man-hinh-may-tinh-3m-1', 1, 'images/uploads/images/sanpham/danmanhinh3m/mieng_dan_man_hinh_may_tinh_3M_1.jpg', '<p>Miếng d&aacute;n m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh 3M-1</p>', 'Miếng dán màn hình máy tính 3M-1', '<p>Miếng d&aacute;n m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh 3M-1</p>', '0', 0, 0, 2, 1, 32, '2018-01-08 08:15:50', '2018-01-08 08:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '<p>administer the website and manage users</p>', '2017-12-23 13:01:45', '2017-12-24 13:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
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

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$rG8VdWRLxK5QeV4VA2SM5uANYeHpYtwj2B3WWWyfzwl7gAa3zHkFu', NULL, '2017-12-23 11:59:19', NULL);

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
