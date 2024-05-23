-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2024 lúc 08:51 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thang_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `img`) VALUES
(1, 'Máy ảnh', 'Máy ảnh là một thiết bị được sử dụng để ghi lại hình ảnh bằng cách sử dụng ánh sáng. Có nhiều loại máy ảnh khác nhau, từ máy ảnh kỹ thuật số tiên tiến đến các máy ảnh phim truyền thống.', '2024-04-11 02:27:09', '2024-04-11 02:27:09', '/img/product-1.jpg'),
(2, 'Áo ấm', 'Một chiếc áo ấm là một chiếc áo dày dặn thường được làm từ các loại vải mềm mại và cách nhiệt như len, cashmere, hoặc các loại vải tổng hợp. Nó được thiết kế để cung cấp sự thoải mái và ấm áp trong thời tiết lạnh giá.', '2024-04-11 02:27:09', '2024-04-11 02:27:09', '/img/product-2.jpg'),
(3, 'Đèn trang trí', 'Đèn trang trí không chỉ là nguồn ánh sáng mà còn là một phần của nghệ thuật trang trí nội thất. Chúng có thể là điểm nhấn độc đáo, làm tôn lên vẻ đẹp của không gian sống và làm cho căn phòng trở nên sinh động và ấm áp.', '2024-04-11 02:27:09', '2024-04-11 02:27:09', '/img/product-3.jpg'),
(4, 'Giày Nike', 'Giày Nike thường có các thiết kế đa dạng và độc đáo, từ các dòng giày thể thao như Air Max, Air Force, đến các dòng giày chạy như Nike Zoom và React. Thiết kế của chúng thường phản ánh sự đột phá và sáng tạo, với các đường nét tinh tế và hài hòa.', '2024-04-11 02:27:09', '2024-04-11 02:27:09', '/img/product-4.jpg'),
(5, 'Flycam', 'Flycam, hay còn được gọi là máy bay không người lái (UAV), là một thiết bị bay không người lái được điều khiển từ xa để thực hiện các nhiệm vụ chụp hình, quay phim hoặc giám sát từ không gian không thể tiếp cận được bằng phương tiện truyền thống. ', '2024-04-11 02:27:09', '2024-04-11 02:27:09', '/img/product-5.jpg'),
(21, 'Đồng hồ', ' Đồng hồ không chỉ là một công cụ đo thời gian mà còn là biểu tượng của phong cách và đẳng cấp.', '2024-04-21 02:09:55', '2024-04-21 02:10:04', '/img/product-6.jpg'),
(23, 'Áo thời trang nữ', 'Áo thời trang nữ thường có các thiết kế đa dạng và độc đáo để phản ánh phong cách và cá tính của người mặc.', NULL, NULL, '/img/product-7.jpg'),
(25, 'Ghế ngồi', 'Ghế xoay văn phòng thường có thiết kế đơn giản nhưng tinh tế, với một lớp đệm êm ái bọc bên trong lớp vải hoặc da cao cấp. Thiết kế này thường đi kèm với tựa lưng cao hoặc trung bình để hỗ trợ lưng và cổ, giúp người sử dụng ngồi thoải mái trong thời gian dài.', '2024-05-07 09:35:03', '2024-05-07 09:35:03', '/img/product-9.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `jobs`
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
-- Cấu trúc bảng cho bảng `job_batches`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '0001_01_01_000000_create_users_table', 1),
(16, '0001_01_01_000001_create_cache_table', 1),
(17, '0001_01_01_000002_create_jobs_table', 1),
(18, '2024_03_31_092512_create_categories_table', 1),
(19, '2024_03_31_092524_create_products_table', 1),
(20, '2024_03_31_092535_create_orders_table', 1),
(21, '2024_03_31_092542_create_order_items_table', 1),
(22, '2024_04_11_135613_delete_role_users', 2),
(23, '2024_04_12_002921_delete_role_users', 3),
(24, '2024_04_12_010248_delete_role_user', 4),
(25, '2024_04_15_014853_add_role_users', 5),
(26, '2024_04_30_090434_add_views_products', 6),
(27, '2024_04_30_100958_add_img_categories', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2', 'corporis', 1, '2024-04-11 02:27:09', '2024-04-21 02:29:06'),
(2, '4', 'omnis', 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(3, '0', 'a', 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(4, '8', 'sit', 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(5, '9', 'eos', 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(6, '8', 'et', 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(7, '1', 'molestias', 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(8, '5', 'ipsam', 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(9, '7', 'totam', 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(10, '8', 'aliquid', 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(2, 3, 1, 8, 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(3, 3, 1, 7, 3, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(4, 3, 1, 4, 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(5, 3, 1, 6, 3, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(6, 3, 1, 5, 8, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(7, 3, 1, 7, 2, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(8, 3, 1, 8, 2, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(9, 3, 1, 6, 4, '2024-04-11 02:27:09', '2024-04-11 02:27:09'),
(10, 3, 1, 0, 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `img`, `name`, `description`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`, `view`) VALUES
(1, '/img/product-1.jpg', 'Máy ảnh', 'Máy ảnh là một thiết bị được sử dụng để ghi lại hình ảnh bằng cách sử dụng ánh sáng. Có nhiều loại máy ảnh khác nhau, từ máy ảnh kỹ thuật số tiên tiến đến các máy ảnh phim truyền thống.', 50, 6, 1, '2024-04-11 02:27:09', '2024-04-21 01:47:10', 1),
(2, '/img/product-2.jpg', 'Áo ấm', '\nMột chiếc áo ấm là một chiếc áo dày dặn thường được làm từ các loại vải mềm mại và cách nhiệt như len, cashmere, hoặc các loại vải tổng hợp. Nó được thiết kế để cung cấp sự thoải mái và ấm áp trong thời tiết lạnh giá.', 250, 2, 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09', 2),
(3, '/img/product-3.jpg', 'Đèn trang trí', 'Đèn trang trí không chỉ là nguồn ánh sáng mà còn là một phần của nghệ thuật trang trí nội thất. Chúng có thể là điểm nhấn độc đáo, làm tôn lên vẻ đẹp của không gian sống và làm cho căn phòng trở nên sinh động và ấm áp.', 150, 6, 2, '2024-04-11 02:27:09', '2024-04-11 02:27:09', 3),
(4, '/img/product-4.jpg', 'Giày Nike', 'Giày Nike thường có các thiết kế đa dạng và độc đáo, từ các dòng giày thể thao như Air Max, Air Force, đến các dòng giày chạy như Nike Zoom và React. Thiết kế của chúng thường phản ánh sự đột phá và sáng tạo, với các đường nét tinh tế và hài hòa.', 350, 7, 3, '2024-04-11 02:27:09', '2024-04-11 02:27:09', 4),
(5, '/img/product-5.jpg', 'Flycam', '\nFlycam, hay còn được gọi là máy bay không người lái (UAV), là một thiết bị bay không người lái được điều khiển từ xa để thực hiện các nhiệm vụ chụp hình, quay phim hoặc giám sát từ không gian không thể tiếp cận được bằng phương tiện truyền thống. ', 450, 1, 4, '2024-04-11 02:27:09', '2024-04-11 02:27:09', 5),
(6, '/img/product-6.jpg', 'Đồng hồ', ' Đồng hồ không chỉ là một công cụ đo thời gian mà còn là biểu tượng của phong cách và đẳng cấp.', 250, 4, 5, '2024-04-11 02:27:09', '2024-04-11 02:27:09', 6),
(7, '/img/product-7.jpg', 'Áo thời trang', 'Áo thời trang nữ thường có các thiết kế đa dạng và độc đáo để phản ánh phong cách và cá tính của người mặc.', 150, 8, 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09', 7),
(8, '/img/product-8.jpg', 'Kem dưỡng', 'Kem dưỡng thường được làm từ các thành phần chăm sóc da tự nhiên hoặc hợp chất hóa học được thiết kế để cung cấp độ ẩm, dưỡng chất và bảo vệ cho làn da. ', 10, 7, 21, '2024-04-11 02:27:09', '2024-04-11 02:27:09', 8),
(9, '/img/product-9.jpg', 'Ghế văn phòng', 'Ghế xoay văn phòng thường có thiết kế đơn giản nhưng tinh tế, với một lớp đệm êm ái bọc bên trong lớp vải hoặc da cao cấp. Thiết kế này thường đi kèm với tựa lưng cao hoặc trung bình để hỗ trợ lưng và cổ, giúp người sử dụng ngồi thoải mái trong thời gian ', 350, 8, 1, '2024-04-11 02:27:09', '2024-04-11 02:27:09', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
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
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oGeE3rZKe91I3U5Q9DCOASQYuRtdG0I3APFx7TVM', 22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZHlucWIzQTVEMEs2eVNlcFplbVNIZ2hibURWeUU0eEFTSkFUcEJBWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjQ6ImNhcnQiO2E6MTp7aTozO2E6NTp7czoyOiJpZCI7aTozO3M6MzoiaW1nIjtzOjE4OiIvaW1nL3Byb2R1Y3QtMy5qcGciO3M6NDoibmFtZSI7czoxNjoixJDDqG4gdHJhbmcgdHLDrSI7czo1OiJwcmljZSI7ZDoxNTA7czo4OiJxdWFudGl0eSI7czoxOiIyIjt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIyO30=', 1716346901);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'thang', 'ngongocthang@gmail.com', '2024-04-11 02:27:09', '$2y$12$c0Wp9pO980EvLZEHN1GHIuzg95IrLfrTy6IC1VsJofx3X85HrV8py', 'yAA939ECvL', '2024-04-11 02:27:09', '2024-04-20 21:11:29', 'user'),
(2, 'Lolita Harber', 'reynolds.hailey@example.net', '2024-04-11 02:27:09', '$2y$12$GdDJ3NN0ytBivr60Y4xcoO5WoHxKyW373AajCFcCmsly1PQo.mnre', 'duue6gUJ6e', '2024-04-11 02:27:09', '2024-04-20 21:16:39', 'user'),
(3, 'Miss Candice Stokes', 'willms.nels@example.com', '2024-04-11 02:27:09', '$2y$12$GdDJ3NN0ytBivr60Y4xcoO5WoHxKyW373AajCFcCmsly1PQo.mnre', '3BPSKRSKYE', '2024-04-11 02:27:09', '2024-04-11 02:27:09', 'user'),
(4, 'Prof. Eriberto O\'Reilly V', 'donnelly.maybell@example.org', '2024-04-11 02:27:09', '$2y$12$GdDJ3NN0ytBivr60Y4xcoO5WoHxKyW373AajCFcCmsly1PQo.mnre', 'Lus1dK7gfL', '2024-04-11 02:27:09', '2024-04-11 02:27:09', 'user'),
(5, 'Antonietta Little', 'bashirian.jordane@example.com', '2024-04-11 02:27:09', '$2y$12$GdDJ3NN0ytBivr60Y4xcoO5WoHxKyW373AajCFcCmsly1PQo.mnre', 'TecP0HRHHv', '2024-04-11 02:27:09', '2024-04-11 02:27:09', 'user'),
(6, 'Destinee Heidenreich', 'perry08@example.net', '2024-04-11 02:27:09', '$2y$12$GdDJ3NN0ytBivr60Y4xcoO5WoHxKyW373AajCFcCmsly1PQo.mnre', 'HAINKSk7v3', '2024-04-11 02:27:09', '2024-04-11 02:27:09', 'user'),
(7, 'Maegan Wisoky', 'icrist@example.org', '2024-04-11 02:27:09', '$2y$12$GdDJ3NN0ytBivr60Y4xcoO5WoHxKyW373AajCFcCmsly1PQo.mnre', 'Pkz8LlCP8v', '2024-04-11 02:27:09', '2024-04-11 02:27:09', 'user'),
(8, 'Pattie O\'Keefe II', 'hayes.beatrice@example.net', '2024-04-11 02:27:09', '$2y$12$GdDJ3NN0ytBivr60Y4xcoO5WoHxKyW373AajCFcCmsly1PQo.mnre', 'k8YquFIkjJ', '2024-04-11 02:27:09', '2024-04-11 02:27:09', 'user'),
(9, 'Floyd Spinka', 'leffler.magnolia@example.org', '2024-04-11 02:27:09', '$2y$12$GdDJ3NN0ytBivr60Y4xcoO5WoHxKyW373AajCFcCmsly1PQo.mnre', '1PTZE8FDkh', '2024-04-11 02:27:09', '2024-04-11 02:27:09', 'user'),
(10, 'Ms. Kelli Mohr', 'dietrich.justine@example.com', '2024-04-11 02:27:09', '$2y$12$GdDJ3NN0ytBivr60Y4xcoO5WoHxKyW373AajCFcCmsly1PQo.mnre', 'a2Nxv8oLJY', '2024-04-11 02:27:09', '2024-04-11 02:27:09', 'user'),
(22, 'thang', 'admin@gmail.com', NULL, '$2y$12$q/t0V.E317wUNbAT09oQAubXNjHdhvPr9DMsWcPU4Vd7tZN7ThzBq', NULL, '2024-04-14 00:46:17', '2024-04-14 00:46:17', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
