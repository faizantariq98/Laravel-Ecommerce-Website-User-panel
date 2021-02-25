-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 12:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakerys`
--

CREATE TABLE `bakerys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bakerys`
--

INSERT INTO `bakerys` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Bread Dawn Plain', 'bakerys\\December2020\\x1orvmlK35PBs1KCZ48f.jpg', 3781, '2020-11-10 05:49:00', '2020-12-01 04:58:32'),
(4, 'Dawn Bread (small)', 'bakerys\\December2020\\KH4104DA9LpSSpUzxIcb.jpg', 60, '2020-12-01 05:46:17', '2020-12-01 05:46:17'),
(5, 'Dawn Buns', 'bakerys\\December2020\\rhnWnzVwWcuuq2AJeKKG.jpg', 40, '2020-12-01 05:55:38', '2020-12-01 05:55:38'),
(6, 'Dawn Buns(pack of 4)', 'bakerys\\December2020\\K7Iul0fuPI9JcQkr8qch.jpg', 75, '2020-12-01 05:56:17', '2020-12-01 05:56:17'),
(7, 'biscuits', 'bakerys\\December2020\\8NcP5L0JMON2oVSXZ1J6.jpg', 690, '2020-12-08 03:42:18', '2020-12-08 03:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-11-01 07:11:05', '2020-11-01 07:11:05'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-11-01 07:11:05', '2020-11-01 07:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `cleanings`
--

CREATE TABLE `cleanings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coffees`
--

CREATE TABLE `coffees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coffees`
--

INSERT INTO `coffees` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'nescafe', 0x636f66666565735c4e6f76656d626572323032305c6c64786356727375386c654859515a6479774c512e6a7067, 700, '2020-11-09 04:58:04', '2020-11-09 04:58:04'),
(2, 'Nescafe 3 in 1', 0x636f66666565735c446563656d626572323032305c796144596d6c4b70775776494b616868625744392e6a7067, 35, '2020-12-01 07:37:00', '2020-12-01 07:38:19');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(82, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(86, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(87, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(88, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(92, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(93, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(112, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 31, 'jamname', 'text', 'Jamname', 1, 1, 1, 1, 1, 1, '{}', 2),
(114, 31, 'jamimage', 'image', 'Jamimage', 1, 1, 1, 1, 1, 1, '{}', 3),
(115, 31, 'jamprice', 'number', 'Jamprice', 1, 1, 1, 1, 1, 1, '{}', 4),
(116, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(117, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(118, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(122, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(123, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(130, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(134, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(135, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(136, 36, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(140, 36, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(141, 36, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(142, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(146, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(147, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(160, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(164, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(165, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(172, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(176, 42, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(177, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(202, 48, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(203, 48, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(204, 48, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(205, 48, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(206, 48, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(207, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(208, 49, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(209, 49, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(210, 49, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(211, 49, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(212, 49, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(213, 49, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(214, 50, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(215, 50, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(216, 50, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(217, 50, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(218, 50, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(219, 50, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(220, 51, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(221, 51, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(222, 51, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(223, 51, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(224, 51, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(225, 51, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(226, 52, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(227, 52, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(228, 52, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(229, 52, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(230, 52, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(231, 52, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(232, 53, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(233, 53, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(234, 53, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(235, 53, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(236, 53, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(237, 53, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(244, 55, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(245, 55, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(246, 55, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(247, 55, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(248, 55, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(249, 55, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(250, 56, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(251, 56, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(252, 56, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(253, 56, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(254, 56, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(255, 56, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(256, 57, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(257, 57, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(258, 57, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(259, 57, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(260, 57, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(261, 57, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(262, 58, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(263, 58, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(264, 58, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(265, 58, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(266, 58, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(267, 58, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(268, 32, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(269, 32, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(270, 32, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(271, 42, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(272, 42, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(273, 42, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(274, 35, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(275, 35, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(276, 35, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(277, 36, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(278, 36, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(279, 36, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(280, 37, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(281, 37, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(282, 37, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(283, 26, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(284, 26, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(285, 26, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(286, 25, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(287, 25, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(288, 25, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(289, 40, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(290, 40, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 3),
(291, 40, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-11-01 07:10:52', '2020-11-01 07:10:52'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-11-01 07:10:52', '2020-11-01 07:10:52'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-11-01 07:10:52', '2020-11-01 07:10:52'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2020-11-01 07:11:04', '2020-11-01 07:11:04'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-11-01 07:11:06', '2020-11-01 07:11:06'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-11-01 07:11:09', '2020-11-01 07:11:09'),
(25, 'sweets', 'sweets', 'Sweet', 'Sweets', 'voyager-bomb', 'App\\Models\\sweet', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 10:42:17', '2020-12-08 04:33:17'),
(26, 'spices', 'spices', 'Spice', 'Spices', 'voyager-bag', 'App\\Models\\spice', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 10:48:53', '2020-12-08 04:31:49'),
(31, 'jams', 'jams', 'Jam', 'Jams', 'voyager-company', 'App\\Models\\Jam', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-06 11:05:15', '2020-11-06 11:05:15'),
(32, 'pickles', 'pickles', 'Pickle', 'Pickles', 'voyager-dot', 'App\\Models\\pickle', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 11:13:33', '2020-12-08 04:23:39'),
(35, 'rices', 'rices', 'Rice', 'Rice', 'voyager-barbell', 'App\\Models\\rice', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 11:51:50', '2020-12-08 04:29:45'),
(36, 'sauces', 'sauces', 'Sauce', 'Sauces', 'voyager-meh', 'App\\Models\\sauce', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 11:55:19', '2020-12-08 04:30:30'),
(37, 'snacks', 'snacks', 'Snack', 'Snacks', 'voyager-rum', 'App\\Models\\snack', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 11:57:43', '2020-12-08 04:31:00'),
(40, 'utensils', 'utensils', 'Utensil', 'Utensils', 'voyager-puzzle', 'App\\Models\\utensil', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 12:08:14', '2020-12-08 04:33:52'),
(42, 'repellents', 'repellents', 'Repellent', 'Repellents', 'voyager-truck', 'App\\Models\\repellent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 12:17:54', '2020-12-08 04:26:43'),
(48, 'bakerys', 'bakerys', 'Bakery', 'Bakeries', 'voyager-bread', 'App\\Models\\Bakery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 03:40:35', '2020-12-08 03:40:35'),
(49, 'cleanings', 'cleanings', 'Cleaning', 'Cleanings', NULL, 'App\\Models\\Cleaning', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 03:44:11', '2020-12-08 03:44:11'),
(50, 'coffees', 'coffees', 'Coffee', 'Coffees', NULL, 'App\\Models\\Coffee', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 03:46:30', '2020-12-08 03:46:30'),
(51, 'detergents', 'detergents', 'Detergent', 'Detergents', NULL, 'App\\Models\\detergent', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 03:47:28', '2020-12-08 03:47:28'),
(52, 'dishwashs', 'dishwashs', 'Dishwash', 'Dishwashes', NULL, 'App\\Models\\dishwash', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 03:48:50', '2020-12-08 03:48:50'),
(53, 'driedfruits', 'driedfruits', 'Driedfruit', 'Driedfruits', NULL, 'App\\Models\\Driedfruit', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 03:49:44', '2020-12-08 03:49:44'),
(55, 'floors', 'floors', 'Floor', 'Floors', NULL, 'App\\Models\\floor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-12-08 03:52:11', '2020-12-08 04:36:33'),
(56, 'honeys', 'honeys', 'Honey', 'Honeys', NULL, 'App\\Models\\honey', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 03:53:22', '2020-12-08 03:53:22'),
(57, 'oils', 'oils', 'Oil', 'Oil', NULL, 'App\\Models\\oil', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 03:55:14', '2020-12-08 03:55:14'),
(58, 'pastas', 'pastas', 'Pasta', 'Pastas', NULL, 'App\\Models\\pasta', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-12-08 03:57:33', '2020-12-08 03:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `detergents`
--

CREATE TABLE `detergents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detergents`
--

INSERT INTO `detergents` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'surfexcel 1kg', 0x646574657267656e74735c446563656d626572323032305c4762536a346876496f6f6155306b4d564464374b2e6a7067, 769, '2020-12-02 03:06:05', '2020-12-02 03:06:05');

-- --------------------------------------------------------

--
-- Table structure for table `dishwashs`
--

CREATE TABLE `dishwashs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driedfruits`
--

CREATE TABLE `driedfruits` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driedfruits`
--

INSERT INTO `driedfruits` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Almonds (500mg)', 0x64726965646672756974735c446563656d626572323032305c656d4d4a773958533045576d73524335507068752e6a7067, 500, '2020-12-01 08:11:26', '2020-12-01 08:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'dettol', 0x666c6f6f72735c446563656d626572323032305c6239634f414a6161593577724330666d6243524d2e6a7067, 3, '2020-12-08 04:37:10', '2020-12-08 04:37:10');

-- --------------------------------------------------------

--
-- Table structure for table `frontusers`
--

CREATE TABLE `frontusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontusers`
--

INSERT INTO `frontusers` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abc', 'abc@yahoo.com', NULL, '$2y$10$xCg5DBh7F3x0IDQ0SJg06uAbowA010EuqMgiCDCsS1IJl/UfNi4ou', NULL, '2020-11-01 06:55:10', '2020-11-01 06:55:10'),
(2, 'fatima tahir', 'fatima_tahir1@hotmail.com', NULL, '$2y$10$a4vDpBl/pzZW8nBYpORBoeqe3kRGgecU33.GZBC1EQfVdcPRB0zQK', NULL, '2020-11-01 06:56:27', '2020-11-01 06:56:27'),
(3, 'hamza', 'hamza@gmail.com', NULL, '$2y$10$a5z4X5OqcfnAryavFi4DCOkli63YzHmnHnu.mM7dJsKmQJSRvu4YS', NULL, '2020-11-02 03:12:58', '2020-11-02 03:12:58'),
(4, 'faizan', 'faizan@yahoo.com', NULL, '$2y$10$ATn63717VWY1oNZvKLple.2CanHnnZOvOsTB0yPkI6vlHpo4C2yq2', NULL, '2020-12-01 01:34:25', '2020-12-01 01:34:25'),
(5, 'qwerty', 'qwerty@gmail.com', NULL, '$2y$10$0TRk/4Ei1B6hsj3LjAdq8ei/tgfIylAzCZ6PhKrNs4SS45Q4WuiJu', NULL, '2020-12-04 07:28:13', '2020-12-04 07:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `honeys`
--

CREATE TABLE `honeys` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `honeys`
--

INSERT INTO `honeys` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'National Apple Jam', 0x686f6e6579735c446563656d626572323032305c45514b366f59544c516342714f63344458536f552e6a7067, 220, '2020-12-01 11:51:17', '2020-12-01 11:51:17'),
(2, 'honey', 0x686f6e6579735c446563656d626572323032305c434862717136547a766d45696a4642796573504e2e6a7067, 123, '2020-12-08 04:35:54', '2020-12-08 04:35:54');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-11-01 07:10:54', '2020-11-01 07:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-11-01 07:10:54', '2020-11-01 07:10:54', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 11, '2020-11-01 07:10:54', '2020-11-06 12:37:40', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 10, '2020-11-01 07:10:54', '2020-11-06 12:37:40', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 9, '2020-11-01 07:10:54', '2020-11-06 12:37:44', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 15, '2020-11-01 07:10:55', '2020-11-06 12:37:41', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-11-01 07:10:55', '2020-11-06 09:24:58', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-11-01 07:10:55', '2020-11-06 09:24:58', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-11-01 07:10:55', '2020-11-06 12:37:30', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-11-01 07:10:55', '2020-11-06 12:37:41', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 16, '2020-11-01 07:10:55', '2020-11-06 12:37:41', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 14, '2020-11-01 07:11:05', '2020-11-06 12:37:41', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 12, '2020-11-01 07:11:08', '2020-11-06 12:37:41', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 13, '2020-11-01 07:11:10', '2020-11-06 12:37:41', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-11-01 07:11:13', '2020-11-06 12:37:41', 'voyager.hooks', NULL),
(21, 1, 'Sweets', '', '_self', 'I', NULL, NULL, 5, '2020-11-06 10:42:17', '2020-11-06 12:36:53', 'voyager.sweets.index', NULL),
(22, 1, 'Spices', '', '_self', 'voyager-bag', NULL, NULL, 6, '2020-11-06 10:48:53', '2020-11-06 12:37:15', 'voyager.spices.index', NULL),
(27, 1, 'Pickles', '', '_self', 'voyager-dot', NULL, NULL, 7, '2020-11-06 11:13:33', '2020-11-06 12:37:29', 'voyager.pickles.index', NULL),
(29, 1, 'Rice', '', '_self', 'voyager-barbell', NULL, NULL, 17, '2020-11-06 11:51:50', '2020-11-06 12:37:41', 'voyager.rices.index', NULL),
(30, 1, 'Sauces', '', '_self', 'voyager-meh', NULL, NULL, 18, '2020-11-06 11:55:19', '2020-11-06 12:37:41', 'voyager.sauces.index', NULL),
(31, 1, 'Snacks', '', '_self', 'voyager-rum', NULL, NULL, 19, '2020-11-06 11:57:43', '2020-11-06 12:37:41', 'voyager.snacks.index', NULL),
(34, 1, 'Utensils', '', '_self', 'voyager-puzzle', NULL, NULL, 22, '2020-11-06 12:08:14', '2020-11-06 12:37:41', 'voyager.utensils.index', NULL),
(36, 1, 'Repellents', '', '_self', 'voyager-truck', NULL, NULL, 24, '2020-11-06 12:17:54', '2020-11-06 12:37:41', 'voyager.repellents.index', NULL),
(41, 1, 'Bakeries', '', '_self', 'voyager-bread', NULL, NULL, 28, '2020-12-08 03:40:35', '2020-12-08 03:40:35', 'voyager.bakerys.index', NULL),
(42, 1, 'Cleanings', '', '_self', NULL, NULL, NULL, 29, '2020-12-08 03:44:12', '2020-12-08 03:44:12', 'voyager.cleanings.index', NULL),
(43, 1, 'Coffees', '', '_self', NULL, NULL, NULL, 30, '2020-12-08 03:46:31', '2020-12-08 03:46:31', 'voyager.coffees.index', NULL),
(44, 1, 'Detergents', '', '_self', NULL, NULL, NULL, 31, '2020-12-08 03:47:28', '2020-12-08 03:47:28', 'voyager.detergents.index', NULL),
(45, 1, 'Dishwashes', '', '_self', NULL, NULL, NULL, 32, '2020-12-08 03:48:51', '2020-12-08 03:48:51', 'voyager.dishwashs.index', NULL),
(46, 1, 'Driedfruits', '', '_self', NULL, NULL, NULL, 33, '2020-12-08 03:49:44', '2020-12-08 03:49:44', 'voyager.driedfruits.index', NULL),
(48, 1, 'Floors', '', '_self', NULL, NULL, NULL, 34, '2020-12-08 03:52:12', '2020-12-08 03:52:12', 'voyager.floors.index', NULL),
(49, 1, 'Honeys', '', '_self', NULL, NULL, NULL, 35, '2020-12-08 03:53:22', '2020-12-08 03:53:22', 'voyager.honeys.index', NULL),
(50, 1, 'Oil', '', '_self', NULL, NULL, NULL, 36, '2020-12-08 03:55:14', '2020-12-08 03:55:14', 'voyager.oils.index', NULL),
(51, 1, 'Pastas', '', '_self', NULL, NULL, NULL, 37, '2020-12-08 03:57:33', '2020-12-08 03:57:33', 'voyager.pastas.index', NULL);

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
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_11_01_113355_create_frontusers_table', 1),
(10, '2014_10_12_000000_create_users_table', 2),
(11, '2016_01_01_000000_add_voyager_user_fields', 2),
(12, '2016_01_01_000000_create_data_types_table', 2),
(13, '2016_05_19_173453_create_menu_table', 2),
(14, '2016_10_21_190000_create_roles_table', 2),
(15, '2016_10_21_190000_create_settings_table', 2),
(16, '2016_11_30_135954_create_permission_table', 2),
(17, '2016_11_30_141208_create_permission_role_table', 2),
(18, '2016_12_26_201236_data_types__add__server_side', 2),
(19, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(20, '2017_01_14_005015_create_translations_table', 2),
(21, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(22, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(23, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(24, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(25, '2017_08_05_000000_add_group_to_settings_table', 2),
(26, '2017_11_26_013050_add_user_role_relationship', 2),
(27, '2017_11_26_015000_create_user_roles_table', 2),
(28, '2018_03_11_000000_add_user_settings', 2),
(29, '2018_03_14_000000_add_details_to_data_types_table', 2),
(30, '2018_03_16_000000_make_settings_value_nullable', 2),
(31, '2016_01_01_000000_create_pages_table', 3),
(32, '2016_01_01_000000_create_posts_table', 3),
(33, '2016_02_15_204651_create_categories_table', 3),
(34, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oils`
--

CREATE TABLE `oils` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oils`
--

INSERT INTO `oils` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'dalda 1L', 0x6f696c735c446563656d626572323032305c7258364b57746a49356237543865445255376b512e6a7067, 260, '2020-12-02 02:40:07', '2020-12-02 02:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-11-01 07:11:10', '2020-11-01 07:11:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pastas`
--

CREATE TABLE `pastas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pastas`
--

INSERT INTO `pastas` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'kolson spaghettis large', 0x7061737461735c446563656d626572323032305c385a57626543555975706a66635932656f6f62312e6a7067, 120, '2020-12-01 12:24:27', '2020-12-01 12:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-11-01 07:10:55', '2020-11-01 07:10:55'),
(2, 'browse_bread', NULL, '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(3, 'browse_database', NULL, '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(4, 'browse_media', NULL, '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(5, 'browse_compass', NULL, '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(6, 'browse_menus', 'menus', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(7, 'read_menus', 'menus', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(8, 'edit_menus', 'menus', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(9, 'add_menus', 'menus', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(10, 'delete_menus', 'menus', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(11, 'browse_roles', 'roles', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(12, 'read_roles', 'roles', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(13, 'edit_roles', 'roles', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(14, 'add_roles', 'roles', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(15, 'delete_roles', 'roles', '2020-11-01 07:10:56', '2020-11-01 07:10:56'),
(16, 'browse_users', 'users', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(17, 'read_users', 'users', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(18, 'edit_users', 'users', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(19, 'add_users', 'users', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(20, 'delete_users', 'users', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(21, 'browse_settings', 'settings', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(22, 'read_settings', 'settings', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(23, 'edit_settings', 'settings', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(24, 'add_settings', 'settings', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(25, 'delete_settings', 'settings', '2020-11-01 07:10:57', '2020-11-01 07:10:57'),
(26, 'browse_categories', 'categories', '2020-11-01 07:11:05', '2020-11-01 07:11:05'),
(27, 'read_categories', 'categories', '2020-11-01 07:11:05', '2020-11-01 07:11:05'),
(28, 'edit_categories', 'categories', '2020-11-01 07:11:05', '2020-11-01 07:11:05'),
(29, 'add_categories', 'categories', '2020-11-01 07:11:05', '2020-11-01 07:11:05'),
(30, 'delete_categories', 'categories', '2020-11-01 07:11:05', '2020-11-01 07:11:05'),
(31, 'browse_posts', 'posts', '2020-11-01 07:11:08', '2020-11-01 07:11:08'),
(32, 'read_posts', 'posts', '2020-11-01 07:11:08', '2020-11-01 07:11:08'),
(33, 'edit_posts', 'posts', '2020-11-01 07:11:08', '2020-11-01 07:11:08'),
(34, 'add_posts', 'posts', '2020-11-01 07:11:08', '2020-11-01 07:11:08'),
(35, 'delete_posts', 'posts', '2020-11-01 07:11:08', '2020-11-01 07:11:08'),
(36, 'browse_pages', 'pages', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(37, 'read_pages', 'pages', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(38, 'edit_pages', 'pages', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(39, 'add_pages', 'pages', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(40, 'delete_pages', 'pages', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(41, 'browse_hooks', NULL, '2020-11-01 07:11:14', '2020-11-01 07:11:14'),
(72, 'browse_sweets', 'sweets', '2020-11-06 10:42:17', '2020-11-06 10:42:17'),
(73, 'read_sweets', 'sweets', '2020-11-06 10:42:17', '2020-11-06 10:42:17'),
(74, 'edit_sweets', 'sweets', '2020-11-06 10:42:17', '2020-11-06 10:42:17'),
(75, 'add_sweets', 'sweets', '2020-11-06 10:42:17', '2020-11-06 10:42:17'),
(76, 'delete_sweets', 'sweets', '2020-11-06 10:42:17', '2020-11-06 10:42:17'),
(77, 'browse_spices', 'spices', '2020-11-06 10:48:53', '2020-11-06 10:48:53'),
(78, 'read_spices', 'spices', '2020-11-06 10:48:53', '2020-11-06 10:48:53'),
(79, 'edit_spices', 'spices', '2020-11-06 10:48:53', '2020-11-06 10:48:53'),
(80, 'add_spices', 'spices', '2020-11-06 10:48:53', '2020-11-06 10:48:53'),
(81, 'delete_spices', 'spices', '2020-11-06 10:48:53', '2020-11-06 10:48:53'),
(97, 'browse_jams', 'jams', '2020-11-06 11:05:15', '2020-11-06 11:05:15'),
(98, 'read_jams', 'jams', '2020-11-06 11:05:15', '2020-11-06 11:05:15'),
(99, 'edit_jams', 'jams', '2020-11-06 11:05:15', '2020-11-06 11:05:15'),
(100, 'add_jams', 'jams', '2020-11-06 11:05:15', '2020-11-06 11:05:15'),
(101, 'delete_jams', 'jams', '2020-11-06 11:05:15', '2020-11-06 11:05:15'),
(102, 'browse_pickles', 'pickles', '2020-11-06 11:13:33', '2020-11-06 11:13:33'),
(103, 'read_pickles', 'pickles', '2020-11-06 11:13:33', '2020-11-06 11:13:33'),
(104, 'edit_pickles', 'pickles', '2020-11-06 11:13:33', '2020-11-06 11:13:33'),
(105, 'add_pickles', 'pickles', '2020-11-06 11:13:33', '2020-11-06 11:13:33'),
(106, 'delete_pickles', 'pickles', '2020-11-06 11:13:33', '2020-11-06 11:13:33'),
(112, 'browse_rices', 'rices', '2020-11-06 11:51:50', '2020-11-06 11:51:50'),
(113, 'read_rices', 'rices', '2020-11-06 11:51:50', '2020-11-06 11:51:50'),
(114, 'edit_rices', 'rices', '2020-11-06 11:51:50', '2020-11-06 11:51:50'),
(115, 'add_rices', 'rices', '2020-11-06 11:51:50', '2020-11-06 11:51:50'),
(116, 'delete_rices', 'rices', '2020-11-06 11:51:50', '2020-11-06 11:51:50'),
(117, 'browse_sauces', 'sauces', '2020-11-06 11:55:19', '2020-11-06 11:55:19'),
(118, 'read_sauces', 'sauces', '2020-11-06 11:55:19', '2020-11-06 11:55:19'),
(119, 'edit_sauces', 'sauces', '2020-11-06 11:55:19', '2020-11-06 11:55:19'),
(120, 'add_sauces', 'sauces', '2020-11-06 11:55:19', '2020-11-06 11:55:19'),
(121, 'delete_sauces', 'sauces', '2020-11-06 11:55:19', '2020-11-06 11:55:19'),
(122, 'browse_snacks', 'snacks', '2020-11-06 11:57:43', '2020-11-06 11:57:43'),
(123, 'read_snacks', 'snacks', '2020-11-06 11:57:43', '2020-11-06 11:57:43'),
(124, 'edit_snacks', 'snacks', '2020-11-06 11:57:43', '2020-11-06 11:57:43'),
(125, 'add_snacks', 'snacks', '2020-11-06 11:57:43', '2020-11-06 11:57:43'),
(126, 'delete_snacks', 'snacks', '2020-11-06 11:57:43', '2020-11-06 11:57:43'),
(137, 'browse_utensils', 'utensils', '2020-11-06 12:08:14', '2020-11-06 12:08:14'),
(138, 'read_utensils', 'utensils', '2020-11-06 12:08:14', '2020-11-06 12:08:14'),
(139, 'edit_utensils', 'utensils', '2020-11-06 12:08:14', '2020-11-06 12:08:14'),
(140, 'add_utensils', 'utensils', '2020-11-06 12:08:14', '2020-11-06 12:08:14'),
(141, 'delete_utensils', 'utensils', '2020-11-06 12:08:14', '2020-11-06 12:08:14'),
(147, 'browse_repellents', 'repellents', '2020-11-06 12:17:54', '2020-11-06 12:17:54'),
(148, 'read_repellents', 'repellents', '2020-11-06 12:17:54', '2020-11-06 12:17:54'),
(149, 'edit_repellents', 'repellents', '2020-11-06 12:17:54', '2020-11-06 12:17:54'),
(150, 'add_repellents', 'repellents', '2020-11-06 12:17:54', '2020-11-06 12:17:54'),
(151, 'delete_repellents', 'repellents', '2020-11-06 12:17:54', '2020-11-06 12:17:54'),
(172, 'browse_bakerys', 'bakerys', '2020-12-08 03:40:35', '2020-12-08 03:40:35'),
(173, 'read_bakerys', 'bakerys', '2020-12-08 03:40:35', '2020-12-08 03:40:35'),
(174, 'edit_bakerys', 'bakerys', '2020-12-08 03:40:35', '2020-12-08 03:40:35'),
(175, 'add_bakerys', 'bakerys', '2020-12-08 03:40:35', '2020-12-08 03:40:35'),
(176, 'delete_bakerys', 'bakerys', '2020-12-08 03:40:35', '2020-12-08 03:40:35'),
(177, 'browse_cleanings', 'cleanings', '2020-12-08 03:44:12', '2020-12-08 03:44:12'),
(178, 'read_cleanings', 'cleanings', '2020-12-08 03:44:12', '2020-12-08 03:44:12'),
(179, 'edit_cleanings', 'cleanings', '2020-12-08 03:44:12', '2020-12-08 03:44:12'),
(180, 'add_cleanings', 'cleanings', '2020-12-08 03:44:12', '2020-12-08 03:44:12'),
(181, 'delete_cleanings', 'cleanings', '2020-12-08 03:44:12', '2020-12-08 03:44:12'),
(182, 'browse_coffees', 'coffees', '2020-12-08 03:46:30', '2020-12-08 03:46:30'),
(183, 'read_coffees', 'coffees', '2020-12-08 03:46:30', '2020-12-08 03:46:30'),
(184, 'edit_coffees', 'coffees', '2020-12-08 03:46:30', '2020-12-08 03:46:30'),
(185, 'add_coffees', 'coffees', '2020-12-08 03:46:30', '2020-12-08 03:46:30'),
(186, 'delete_coffees', 'coffees', '2020-12-08 03:46:30', '2020-12-08 03:46:30'),
(187, 'browse_detergents', 'detergents', '2020-12-08 03:47:28', '2020-12-08 03:47:28'),
(188, 'read_detergents', 'detergents', '2020-12-08 03:47:28', '2020-12-08 03:47:28'),
(189, 'edit_detergents', 'detergents', '2020-12-08 03:47:28', '2020-12-08 03:47:28'),
(190, 'add_detergents', 'detergents', '2020-12-08 03:47:28', '2020-12-08 03:47:28'),
(191, 'delete_detergents', 'detergents', '2020-12-08 03:47:28', '2020-12-08 03:47:28'),
(192, 'browse_dishwashs', 'dishwashs', '2020-12-08 03:48:51', '2020-12-08 03:48:51'),
(193, 'read_dishwashs', 'dishwashs', '2020-12-08 03:48:51', '2020-12-08 03:48:51'),
(194, 'edit_dishwashs', 'dishwashs', '2020-12-08 03:48:51', '2020-12-08 03:48:51'),
(195, 'add_dishwashs', 'dishwashs', '2020-12-08 03:48:51', '2020-12-08 03:48:51'),
(196, 'delete_dishwashs', 'dishwashs', '2020-12-08 03:48:51', '2020-12-08 03:48:51'),
(197, 'browse_driedfruits', 'driedfruits', '2020-12-08 03:49:44', '2020-12-08 03:49:44'),
(198, 'read_driedfruits', 'driedfruits', '2020-12-08 03:49:44', '2020-12-08 03:49:44'),
(199, 'edit_driedfruits', 'driedfruits', '2020-12-08 03:49:44', '2020-12-08 03:49:44'),
(200, 'add_driedfruits', 'driedfruits', '2020-12-08 03:49:44', '2020-12-08 03:49:44'),
(201, 'delete_driedfruits', 'driedfruits', '2020-12-08 03:49:44', '2020-12-08 03:49:44'),
(207, 'browse_floors', 'floors', '2020-12-08 03:52:11', '2020-12-08 03:52:11'),
(208, 'read_floors', 'floors', '2020-12-08 03:52:11', '2020-12-08 03:52:11'),
(209, 'edit_floors', 'floors', '2020-12-08 03:52:11', '2020-12-08 03:52:11'),
(210, 'add_floors', 'floors', '2020-12-08 03:52:11', '2020-12-08 03:52:11'),
(211, 'delete_floors', 'floors', '2020-12-08 03:52:11', '2020-12-08 03:52:11'),
(212, 'browse_honeys', 'honeys', '2020-12-08 03:53:22', '2020-12-08 03:53:22'),
(213, 'read_honeys', 'honeys', '2020-12-08 03:53:22', '2020-12-08 03:53:22'),
(214, 'edit_honeys', 'honeys', '2020-12-08 03:53:22', '2020-12-08 03:53:22'),
(215, 'add_honeys', 'honeys', '2020-12-08 03:53:22', '2020-12-08 03:53:22'),
(216, 'delete_honeys', 'honeys', '2020-12-08 03:53:22', '2020-12-08 03:53:22'),
(217, 'browse_oils', 'oils', '2020-12-08 03:55:14', '2020-12-08 03:55:14'),
(218, 'read_oils', 'oils', '2020-12-08 03:55:14', '2020-12-08 03:55:14'),
(219, 'edit_oils', 'oils', '2020-12-08 03:55:14', '2020-12-08 03:55:14'),
(220, 'add_oils', 'oils', '2020-12-08 03:55:14', '2020-12-08 03:55:14'),
(221, 'delete_oils', 'oils', '2020-12-08 03:55:14', '2020-12-08 03:55:14'),
(222, 'browse_pastas', 'pastas', '2020-12-08 03:57:33', '2020-12-08 03:57:33'),
(223, 'read_pastas', 'pastas', '2020-12-08 03:57:33', '2020-12-08 03:57:33'),
(224, 'edit_pastas', 'pastas', '2020-12-08 03:57:33', '2020-12-08 03:57:33'),
(225, 'add_pastas', 'pastas', '2020-12-08 03:57:33', '2020-12-08 03:57:33'),
(226, 'delete_pastas', 'pastas', '2020-12-08 03:57:33', '2020-12-08 03:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickles`
--

CREATE TABLE `pickles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickles`
--

INSERT INTO `pickles` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Shan Pickle', 0x7069636b6c65735c446563656d626572323032305c4e6d476f31334a6b624e4865706b42716a344b582e6a7067, 630, '2020-12-01 12:14:18', '2020-12-01 12:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-01 07:11:08', '2020-11-01 07:11:08'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-01 07:11:08', '2020-11-01 07:11:08'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-01 07:11:08', '2020-11-01 07:11:08'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-01 07:11:09', '2020-11-01 07:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repellents`
--

CREATE TABLE `repellents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rices`
--

CREATE TABLE `rices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rices`
--

INSERT INTO `rices` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'basmati', 0x72696365735c446563656d626572323032305c61374f305675594868426d7241787355647435312e6a7067, 80, '2020-12-03 03:00:28', '2020-12-03 03:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-11-01 07:10:55', '2020-11-01 07:10:55'),
(2, 'user', 'Normal User', '2020-11-01 07:10:55', '2020-11-01 07:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `sauces`
--

CREATE TABLE `sauces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sauces`
--

INSERT INTO `sauces` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Mitchel\'s Ketchup', 0x7361756365735c446563656d626572323032305c6b6d544155685372766a55535a5642436a6f4c6d2e6a7067, 240, '2020-12-02 02:08:01', '2020-12-02 02:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `snacks`
--

CREATE TABLE `snacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `snacks`
--

INSERT INTO `snacks` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Kolson slanty', 0x736e61636b735c446563656d626572323032305c6b633945536d66466463744164474a37666c4d4f2e6a7067, 50, '2020-12-02 02:24:41', '2020-12-02 02:24:41');

-- --------------------------------------------------------

--
-- Table structure for table `spices`
--

CREATE TABLE `spices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spices`
--

INSERT INTO `spices` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'shan nihari masala', 0x7370696365735c446563656d626572323032305c476445667a454747624d716e46467056394d536f2e6a7067, 65, '2020-12-01 11:28:33', '2020-12-01 11:28:33'),
(2, 'rfuysfuys', 0x7370696365735c446563656d626572323032305c6b6f446b575239716764435551565339757878642e6a7067, 3, '2020-12-08 04:34:23', '2020-12-08 04:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `sweets`
--

CREATE TABLE `sweets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sweets`
--

INSERT INTO `sweets` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Ding Dong Bubble(60 pcs)', 0x7377656574735c446563656d626572323032305c7079657756706c6a554e4d4e3147526c68664b6d2e6a7067, 110, '2020-12-01 10:32:55', '2020-12-01 10:32:55'),
(2, 'Freshup (60 pcs)', 0x7377656574735c446563656d626572323032305c346453744c78355a355248556f6a4f54587651762e6a7067, 110, '2020-12-01 10:34:46', '2020-12-01 10:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-11-01 07:11:10', '2020-11-01 07:11:10'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-11-01 07:11:11', '2020-11-01 07:11:11'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-11-01 07:11:12', '2020-11-01 07:11:12'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-11-01 07:11:13', '2020-11-01 07:11:13'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-11-01 07:11:13', '2020-11-01 07:11:13'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-11-01 07:11:13', '2020-11-01 07:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$7Fmt0CG4tsUpFrPenM.OhuzHH0huYrcqsuIXEwiKHFO18/ordQ58K', 'PWEGKOmmWWJNHbVSUhCh7WZhJnwnmXsLSHEQAkjdzZWfRB5tSPxGA7EtkTTy', NULL, '2020-11-01 07:11:06', '2020-11-01 07:11:06'),
(3, 1, 'faizan', 'faizan@email.com', 'users/default.png', NULL, '$2y$10$mjw43Q07RxqgsAtvGajZWeW0TqWd9SZXDA8YSDSwIq05XbQ//Y4Ae', NULL, NULL, '2020-11-02 11:38:04', '2020-11-02 11:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utensils`
--

CREATE TABLE `utensils` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longblob NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `utensils`
--

INSERT INTO `utensils` (`id`, `name`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'vim', 0x7574656e73696c735c446563656d626572323032305c5156517a6772464a375a6c6d4f6a4f533334624e2e6a7067, 456, '2020-12-03 03:20:12', '2020-12-03 03:20:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bakerys`
--
ALTER TABLE `bakerys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cleanings`
--
ALTER TABLE `cleanings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coffees`
--
ALTER TABLE `coffees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `detergents`
--
ALTER TABLE `detergents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dishwashs`
--
ALTER TABLE `dishwashs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driedfruits`
--
ALTER TABLE `driedfruits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontusers`
--
ALTER TABLE `frontusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `frontusers_email_unique` (`email`);

--
-- Indexes for table `honeys`
--
ALTER TABLE `honeys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oils`
--
ALTER TABLE `oils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pastas`
--
ALTER TABLE `pastas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `pickles`
--
ALTER TABLE `pickles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repellents`
--
ALTER TABLE `repellents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rices`
--
ALTER TABLE `rices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sauces`
--
ALTER TABLE `sauces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `snacks`
--
ALTER TABLE `snacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spices`
--
ALTER TABLE `spices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sweets`
--
ALTER TABLE `sweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `utensils`
--
ALTER TABLE `utensils`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakerys`
--
ALTER TABLE `bakerys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cleanings`
--
ALTER TABLE `cleanings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coffees`
--
ALTER TABLE `coffees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `detergents`
--
ALTER TABLE `detergents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishwashs`
--
ALTER TABLE `dishwashs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driedfruits`
--
ALTER TABLE `driedfruits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `frontusers`
--
ALTER TABLE `frontusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `honeys`
--
ALTER TABLE `honeys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `oils`
--
ALTER TABLE `oils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pastas`
--
ALTER TABLE `pastas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `pickles`
--
ALTER TABLE `pickles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repellents`
--
ALTER TABLE `repellents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rices`
--
ALTER TABLE `rices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sauces`
--
ALTER TABLE `sauces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `snacks`
--
ALTER TABLE `snacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spices`
--
ALTER TABLE `spices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sweets`
--
ALTER TABLE `sweets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `utensils`
--
ALTER TABLE `utensils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
