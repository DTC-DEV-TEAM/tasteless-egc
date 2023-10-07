-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 01:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gc_redemption_system_external`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `created_at`, `updated_at`, `method_type`, `parameters`, `responses`) VALUES
(1, 'redemption_code', 'g_c_lists', 'list', NULL, NULL, NULL, NULL, 'redemption_code', '<p>redemption_code_list</p>', NULL, NULL, NULL, 'get', 'a:0:{}', 'a:18:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"campaign_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:17:\"email_template_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:4:\"name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:5:\"phone\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:13:\"email_is_sent\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:9:\"id_number\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:7:\"id_type\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:25:\"customer_reference_number\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:19:\"qr_reference_number\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:11;a:4:{s:4:\"name\";s:14:\"invoice_number\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:12;a:4:{s:4:\"name\";s:6:\"redeem\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:13;a:4:{s:4:\"name\";s:12:\"uploaded_img\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:14;a:4:{s:4:\"name\";s:6:\"status\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"0\";}i:15;a:4:{s:4:\"name\";s:12:\"cashier_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:16;a:4:{s:4:\"name\";s:21:\"cashier_date_transact\";s:4:\"type\";s:23:\"date_format:Y-m-d H:i:s\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:17;a:4:{s:4:\"name\";s:8:\"is_fetch\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}'),
(2, 'qr_creation', 'qr_creations', 'list', NULL, NULL, NULL, NULL, 'qr_creation', 'Campaign information', NULL, NULL, NULL, 'get', 'a:0:{}', 'a:11:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"bigint\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:11:\"campaign_id\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:2;a:4:{s:4:\"name\";s:14:\"gc_description\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:3;a:4:{s:4:\"name\";s:8:\"gc_value\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:4;a:4:{s:4:\"name\";s:13:\"number_of_gcs\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:5;a:4:{s:4:\"name\";s:12:\"batch_number\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:6;a:4:{s:4:\"name\";s:11:\"batch_group\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:7;a:4:{s:4:\"name\";s:16:\"id_store_concept\";s:4:\"type\";s:7:\"integer\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:8;a:4:{s:4:\"name\";s:10:\"created_by\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:9;a:4:{s:4:\"name\";s:10:\"updated_by\";s:4:\"type\";s:3:\"int\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}i:10;a:4:{s:4:\"name\";s:10:\"created_at\";s:4:\"type\";s:8:\"datetime\";s:8:\"subquery\";N;s:4:\"used\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_apikey`
--

INSERT INTO `cms_apikey` (`id`, `screetkey`, `hit`, `status`, `created_at`, `updated_at`) VALUES
(2, '84aad301b67368285f7b6f17eed0a064', 0, 'active', '2023-06-01 16:55:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2023-05-14 21:57:25', NULL),
(2, 'QR Reference Number', 'send_qr', 'QR Reference Number Link', '<p><br></p><p>fdaffa<img src=\"http://127.0.0.1:8080/uploads/7/2023-06/fbbcb75b65fb6e6773cc1cb8ed4d10c8.png\" style=\"width: 215.511px; height: 215.511px;\"><br></p>', '[qr_code]', 'Dam', 'dam@digits.ph', 'dam@digits.ph', '2023-05-16 17:31:37', '2023-06-20 00:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(11) NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Redeem Code at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>AdminGCLists1ControllerGetIndex</td><td>AdminGCListsControllerGetIndex</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-file-text</td></tr></tbody></table>', 1, '2023-05-14 21:59:49', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-14 22:20:49', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-14 22:21:00', NULL),
(4, '192.168.7.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://192.168.7.110:8000/admin/login', 'admin@crudbooster.com login with IP Address 192.168.7.110', '', 1, '2023-05-14 23:57:08', NULL),
(5, '192.168.7.27', 'Mozilla/5.0 (Linux; Android 12; M2101K6G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Mobile Safari/537.36', 'http://192.168.7.110:8000/admin/login', 'admin@crudbooster.com login with IP Address 192.168.7.27', '', 1, '2023-05-14 23:58:47', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2023-05/patrick.jpg</td></tr><tr><td>password</td><td>$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-05-15 02:05:54', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-05-15 02:05:54', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-15 02:06:07', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-15 02:06:18', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Patwick at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>Patwick</td></tr><tr><td>password</td><td>$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-05-15 02:06:33', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-15 02:06:38', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-15 02:06:43', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31 at Redeem Code', '', 1, '2023-05-15 02:07:41', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 60,59,58,57,56,55,54,53,52,51,30,29,28,27,26,25,24,23,22,21 at Redeem Code', '', 1, '2023-05-15 02:07:44', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 70,69,68,67,66,65,64,63,62,61,20,19,18,17,16,15,14,13,12,11 at Redeem Code', '', 1, '2023-05-15 02:07:48', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 80,79,78,77,76,75,74,73,72,71,10,9,8,7,6,5,4,3,2,1 at Redeem Code', '', 1, '2023-05-15 02:07:51', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.35', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 90,89,88,87,86,85,84,83,82,81 at Redeem Code', '', 1, '2023-05-15 02:08:03', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-15 16:07:19', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Submaster Module at Menu Management', '', 1, '2023-05-15 16:45:36', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 4110,4109,4108,4107,4106,4105,4104,4103,4102,4101,4100,4099,4098,4097,4096,4095,4094,4093,4092,4091 at Redeem Code', '', 1, '2023-05-15 17:14:07', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Redemption Code at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Redeem Code</td><td>Redemption Code</td></tr></tbody></table>', 1, '2023-05-15 18:00:34', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Redemption Code History at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-history</td><td>fa fa-folder</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-05-15 18:07:50', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Redemption Code at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-file-text</td><td>fa fa-credit-card-alt</td></tr></tbody></table>', 1, '2023-05-15 18:08:26', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Redemption Code at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-credit-card-alt</td><td>fa fa-credit-card</td></tr></tbody></table>', 1, '2023-05-15 18:08:46', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data Redemption Codes at Statistic Builder', '', 1, '2023-05-15 18:53:36', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/statistic_builder/edit-save/1', 'Update data Dashboard at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Redemption Codes</td><td>Dashboard</td></tr><tr><td>slug</td><td>redemption-codes</td><td></td></tr></tbody></table>', 1, '2023-05-15 18:56:33', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Dashboard at Menu Management', '', 1, '2023-05-15 22:21:27', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12 at Redemption Code', '', 1, '2023-05-16 00:06:48', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 11,10,9,8,7,6,5,4,3,2,1 at Redemption Code', '', 1, '2023-05-16 00:06:52', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 41,40,39,38,37,36,35,34,33,32 at Redemption Code', '', 1, '2023-05-16 00:11:01', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42 at Redemption Code', '', 1, '2023-05-16 00:11:06', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,75,74,73,72 at Redemption Code', '', 1, '2023-05-16 00:14:47', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 71,70,69,68,67,66,65,64,63,62 at Redemption Code', '', 1, '2023-05-16 00:14:51', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10 at Redemption Code', '', 1, '2023-05-16 01:19:07', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 9,8,7,6,5,4,3,2,1 at Redemption Code', '', 1, '2023-05-16 01:19:10', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-16 02:41:11', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-16 15:56:18', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>light-blue</td><td>normal</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-16 15:56:35', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/email_templates/add-save', 'Add New Data QR Reference Number at Email Templates', '', 1, '2023-05-16 17:31:37', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/email_templates/edit-save/2', 'Update data QR Reference Number at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>description</td><td>Sending qr code in email</td><td>[qr_code]</td></tr><tr><td>from_name</td><td></td><td></td></tr><tr><td>from_email</td><td></td><td></td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-16 17:42:51', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 57,56,55,54,53,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37 at Redemption Code', '', 1, '2023-05-16 18:42:21', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 36,35,34,33,32,31,30 at Redemption Code', '', 1, '2023-05-16 18:42:25', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 3,2 at Redemption Code', '', 1, '2023-05-16 18:54:23', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 10,9 at Redemption Code', '', 1, '2023-05-16 18:57:27', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/id_types/edit-save/15', 'Update data  at Valid IDs', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-16 20:45:24', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 16,15,14,13,12,10,9,8,7,6,4,3,1 at Redemption Code', '', 1, '2023-05-17 00:32:49', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 19,18,17 at Redemption Code', '', 1, '2023-05-17 01:07:44', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 21,20 at Redemption Code', '', 1, '2023-05-17 01:09:03', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 35,34,31,30,29,28,27,26,25,24,23 at Redemption Code', '', 1, '2023-05-17 01:27:51', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-17 02:39:37', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-17 16:48:55', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80 at Redemption Code', '', 1, '2023-05-17 18:54:23', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 79 at Redemption Code', '', 1, '2023-05-17 19:18:43', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59 at Redemption Code', '', 1, '2023-05-17 19:18:51', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-18 16:01:33', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 300,299,298,296,295,294,293,292,291,290,289,286,285,284,283,282,281,280,277,276 at Redemption Code', '', 1, '2023-05-18 16:46:06', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 297,288,287,279,278,274,273,272,271,269,267,265,263,262,261,260,259,258,257,256 at Redemption Code', '', 1, '2023-05-18 17:01:23', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/delete/95', 'Delete data Prof. Conner Dietrich at Redemption Code', '', 1, '2023-05-18 17:41:43', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 15 at Redemption Code', '', 1, '2023-05-18 21:32:19', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/g_c_lists/delete/13', 'Delete data Dejon Powlowski at Redemption Code', '', 1, '2023-05-18 23:40:08', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-19 00:24:04', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data QR Creation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-arrow-circle-o-up</td><td>fa fa-envelope</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-05-19 00:26:57', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.42', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-19 01:17:15', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-21 16:48:12', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 18,19,20,21,22 at Redemption Code', '', 1, '2023-05-21 18:25:49', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-21 19:02:55', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-21 19:53:29', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-21 19:54:01', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-21 19:54:48', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-21 19:55:27', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-21 19:57:04', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-21 19:57:40', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 33,35 at Redemption Code', '', 1, '2023-05-21 21:19:31', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-21 22:06:13', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/32', 'Delete data Prof. Angie Larson at Redemption Code', '', 1, '2023-05-21 22:07:18', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/40', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-21 22:12:14', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/41', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-21 22:12:44', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 36,42,43 at Redemption Code', '', 1, '2023-05-21 22:13:41', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/44', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-21 22:23:12', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-21 23:40:44', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 9,12,16,23,24,27,28,29,30,31,46,47,48,49,50 at Redemption Code', '', 1, '2023-05-22 00:02:54', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 51,52,53,54,55 at Redemption Code', '', 1, '2023-05-22 00:04:01', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/56', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-22 00:06:54', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/57', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-22 00:26:40', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 1,2,3,4,5,6,7,8,9,10 at Redemption Code', '', 1, '2023-05-22 00:54:39', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-22 15:39:15', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/32', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-22 18:16:20', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 34,35 at Redemption Code', '', 1, '2023-05-22 18:24:48', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 36 at Redemption Code', '', 1, '2023-05-22 18:26:55', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 31,33,37 at Redemption Code', '', 1, '2023-05-22 18:27:22', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 38,39,40 at Redemption Code', '', 1, '2023-05-22 18:54:40', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 41,42,43 at Redemption Code', '', 1, '2023-05-22 19:30:35', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/44', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-22 19:33:48', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/78', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-22 21:08:05', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/71', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-22 21:08:08', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/57', 'Delete data PATRICK LESTER PUNZALAN at Redemption Code', '', 1, '2023-05-22 21:08:10', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/28', 'Delete data Prof. Conrad Raynor II at Redemption Code', '', 1, '2023-05-22 21:08:28', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-22 21:23:01', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-22 22:28:48', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-22 22:37:12', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/delete/11', 'Delete data 11 at QR Creation', '', 1, '2023-05-22 22:38:14', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-22 22:48:47', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/delete/12', 'Delete data 12 at QR Creation', '', 1, '2023-05-22 22:48:52', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/11', 'Delete data Random Person at Redemption Code', '', 1, '2023-05-22 23:24:57', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/12', 'Delete data Random Person at Redemption Code', '', 1, '2023-05-22 23:25:17', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/delete/13', 'Delete data Random Person at Redemption Code', '', 1, '2023-05-22 23:29:28', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/users/delete-image', 'Delete the image of Patwick at Users Management', '', 1, '2023-05-22 23:34:28', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Patwick at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2023-05/user_icon.png</td></tr><tr><td>password</td><td>$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-05-22 23:35:05', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-22 23:35:10', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-22 23:35:15', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Patrick Punzalan at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Patwick</td><td>Patrick Punzalan</td></tr><tr><td>password</td><td>$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-05-22 23:58:45', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/action-selected', 'Delete data 9,2,1 at QR Creation', '', 1, '2023-05-23 00:20:13', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 2,5,8 at Redemption Code', '', 1, '2023-05-23 00:20:17', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-23 00:21:08', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-23 00:21:43', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 19,20 at Redemption Code', '', 1, '2023-05-23 01:17:44', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 14,15,16,17,18,23 at Redemption Code', '', 1, '2023-05-23 01:21:49', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-23 01:48:11', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-23 01:57:53', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-23 02:13:20', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-23 17:03:38', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18 at Redemption Code', '', 1, '2023-05-23 21:41:53', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 19,20,21,22,23,24,25,26,27 at Redemption Code', '', 1, '2023-05-23 21:42:12', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 28,29,30,31,32,33,34,35,36 at Redemption Code', '', 1, '2023-05-23 21:45:03', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 57 at Redemption Code', '', 1, '2023-05-23 21:50:39', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 58,59,60,61,62,63,64,65,66,67 at Redemption Code', '', 1, '2023-05-23 21:50:42', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 68 at Redemption Code', '', 1, '2023-05-23 21:52:48', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 69,70,71,72,73,74,75,76 at Redemption Code', '', 1, '2023-05-23 21:52:52', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 79,80,81,82,83,84,85,86,87 at Redemption Code', '', 1, '2023-05-23 21:54:12', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107 at Redemption Code', '', 1, '2023-05-23 22:00:23', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 108,109,110,111,112,113,114,115 at Redemption Code', '', 1, '2023-05-23 22:00:26', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 116,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138 at Redemption Code', '', 1, '2023-05-23 22:28:09', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158 at Redemption Code', '', 1, '2023-05-23 22:28:12', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 159,160,161 at Redemption Code', '', 1, '2023-05-23 22:28:14', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 162,163 at Redemption Code', '', 1, '2023-05-23 22:29:19', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 164,165,166,167,168 at Redemption Code', '', 1, '2023-05-23 22:35:13', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 169,170 at Redemption Code', '', 1, '2023-05-23 22:35:54', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 171,172,173,174,175,176,177,178,179 at Redemption Code', '', 1, '2023-05-23 22:36:19', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 180,181,182,183,184,185,186,187,188 at Redemption Code', '', 1, '2023-05-23 22:39:54', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 225,226 at Redemption Code', '', 1, '2023-05-23 22:48:20', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/action-selected', 'Delete data 3,2,1 at QR Creation', '', 1, '2023-05-23 23:20:19', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 231,232,233 at Redemption Code', '', 1, '2023-05-23 23:22:05', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-23 23:22:14', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 240,241 at Redemption Code', '', 1, '2023-05-23 23:24:45', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 242,243 at Redemption Code', '', 1, '2023-05-23 23:32:05', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 246,247 at Redemption Code', '', 1, '2023-05-23 23:37:54', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 266,267 at Redemption Code', '', 1, '2023-05-23 23:44:07', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 268,269,270,271 at Redemption Code', '', 1, '2023-05-23 23:50:06', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 274,275 at Redemption Code', '', 1, '2023-05-23 23:50:44', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 276,277 at Redemption Code', '', 1, '2023-05-23 23:55:21', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 285,286,287 at Redemption Code', '', 1, '2023-05-24 00:06:13', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 288,289,290 at Redemption Code', '', 1, '2023-05-24 00:10:01', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 1,2,3,4,5,6,7,8,9 at Redemption Code', '', 1, '2023-05-24 00:34:24', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 11,12 at Redemption Code', '', 1, '2023-05-24 01:23:29', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 13,14,15,16,17,18,19,20,21,22,23 at Redemption Code', '', 1, '2023-05-24 01:42:37', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-24 01:58:15', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-24 15:45:06', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 17:28:28', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/users/delete-image', 'Delete the image of Patrick Punzalan at Users Management', '', 1, '2023-05-24 18:02:40', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Patrick Punzalan at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2023-05/my_photo.PNG</td></tr><tr><td>password</td><td>$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-05-24 18:03:10', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-24 18:03:15', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-24 18:03:21', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:38:00', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/delete/1', 'Delete data 1 at Valid IDs', '', 1, '2023-05-24 18:38:43', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:39:45', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:39:59', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:04', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:08', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:13', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:19', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:25', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:28', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:33', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:40', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:50', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:40:55', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:41:00', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-24 18:41:06', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 18:42:17', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/edit-save/1', 'Update data  at Valid IDs', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>ACTIVE</td><td></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-24 18:46:18', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/edit-save/1', 'Update data  at Valid IDs', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>ACTIVE</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-24 18:46:42', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/edit-save/1', 'Update data  at Valid IDs', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>ACTIVE</td><td></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-24 18:46:56', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 1,2,9,10,11,12,13 at Redemption Code', '', 1, '2023-05-24 19:16:38', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 20,21,28,29,88,89,90 at Redemption Code', '', 1, '2023-05-24 19:58:35', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 115,116,117,124,125,126,127,128,129,130,131 at Redemption Code', '', 1, '2023-05-24 21:12:51', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 135,136,137,147,148,149,150,151,152 at Redemption Code', '', 1, '2023-05-24 21:17:45', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 156,157,158,159,160,161,165,166,167 at Redemption Code', '', 1, '2023-05-24 21:20:43', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/action-selected', 'Delete data 2,1 at QR Creation', '', 1, '2023-05-24 21:23:42', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:28:49', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:29:33', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/action-selected', 'Delete data 8,7,6,5,4,3 at QR Creation', '', 1, '2023-05-24 21:30:58', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:31:31', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:31:59', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:35:36', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:38:38', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/action-selected', 'Delete data 17,16,15,14,13,12,11,10,9 at QR Creation', '', 1, '2023-05-24 21:38:45', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:44:38', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:45:13', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:45:32', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/action-selected', 'Delete data 24,23,22,21,20,19,18 at QR Creation', '', 1, '2023-05-24 21:45:59', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:46:37', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:47:28', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 21:48:29', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/add-save', 'Add New Data  at QR Creation', '', 1, '2023-05-24 22:04:34', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/action-selected', 'Delete data 36,35,34,33,32,31,30,29,28,27,26,25 at QR Creation', '', 1, '2023-05-24 23:24:53', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/action-selected', 'Delete data 39,38,37 at QR Creation', '', 1, '2023-05-24 23:40:09', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202 at Redemption Code', '', 1, '2023-05-24 23:51:32', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304 at Redemption Code', '', 1, '2023-05-24 23:52:55', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/users/delete-image', 'Delete the image of Patrick Punzalan at Users Management', '', 1, '2023-05-25 00:14:13', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Patrick Punzalan at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2023-05/patrick.jpg</td></tr><tr><td>password</td><td>$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-05-25 00:14:37', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-25 02:00:27', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-25 02:00:33', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-25 16:57:37', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 2,110,111,112,113,114,115,116 at Redemption Code', '', 1, '2023-05-25 18:13:54', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/qr_creations/action-selected', 'Delete data 42,41,40 at QR Creation', '', 1, '2023-05-25 18:14:01', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-28 15:43:08', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:00', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:06', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:10', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:15', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:19', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:23', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:26', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:30', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:34', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/id_types/add-save', 'Add New Data  at Valid IDs', '', 1, '2023-05-28 17:08:54', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-29 01:45:23', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-29 01:46:58', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-29 02:10:29', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-29 15:34:44', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 3,2,1 at Redemption Code', '', 1, '2023-05-29 23:45:38', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-30 16:19:48', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-30 16:20:07', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-30 16:20:51', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-30 16:38:58', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-30 17:14:17', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Email Testing', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>html_email</td><td><h3 style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">QR Code Redemption Successful</h3><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Dear Patrick Lester Punzalan,</p><p><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"></p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">We are delighted to inform you that your QR code has been successfully redeemed.</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Redemption Details:</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Campaign ID: Holiday Promo 2023</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Redeemed On: May 31, 2023</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">If you have any questions or need further assistance, please don\'t hesitate to contact our customer support team.</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Thank you again for choosing our service.</p><p><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"></p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Best regards,</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">BPG Department</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Digits Trading Corp.</p></td><td><h3 style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif;\">QR Code Redemption Successful</h3><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Dear Patrick Lester Punzalan,</p><p><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"></p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">We are delighted to inform you that your QR code has been successfully redeemed.</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Redemption Details:</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Campaign ID: Holiday Promo 2023</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Redeemed On: May 31, 2023</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">If you have any questions or need further assistance, please don\'t hesitate to contact our customer support team.</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Thank you again for choosing our service.</p><p><img src=\"http://127.0.0.1:8000/uploads/1/2023-05/58aa9f26a1aadf8ad8e87762df637729.jpg\"><br style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"></p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Best regards,</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">BPG Department</p><p style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Digits Trading Corp.</p></td></tr></tbody></table>', 1, '2023-05-30 18:15:56', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-30 22:29:38', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/delete/1', 'Delete data 1 at Email Testing', '', 1, '2023-05-30 22:42:25', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-30 22:42:44', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-30 22:59:01', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/delete/1', 'Delete data 1 at Email Testing', '', 1, '2023-05-30 22:59:11', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/delete/3', 'Delete data  at Email Testing', '', 1, '2023-05-30 23:14:58', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-30 23:15:44', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/delete/1', 'Delete data 1 at Email Testing', '', 1, '2023-05-30 23:28:41', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-30 23:29:42', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/delete/1', 'Delete data 1 at Email Testing', '', 1, '2023-05-30 23:31:44', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-30 23:35:53', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-30 23:37:29', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/delete/1', 'Delete data 1 at Email Testing', '', 1, '2023-05-31 00:04:43', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-31 00:09:27', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Email Testing', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 00:09:42', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Email Testing', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>html_email</td><td><p>Dear, {{ $name }}</p></td><td><p>Dear, {{ $name }}</p><p><br></p><p>GC Description: {{ gc_description }}</p><p>Redemption Period: {{ gc_value }}</p></td></tr><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 00:29:30', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Email Testing', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>html_email</td><td><p>Dear, {{ $name }}</p><p><br></p><p>GC Description: {{ gc_description }}</p><p>Redemption Period: {{ gc_value }}</p></td><td><p>Dear, {{ $name }}</p><p><br></p><p>{{ $qr_code }}</p><p>GC Description: {{ $gc_description }}</p><p>Redemption Period: {{ $gc_value }}</p></td></tr><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 00:32:29', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Email Testing', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>html_email</td><td><p>Dear, {{ $name }}</p><p><br></p><p>{{ $qr_code }}</p><p>GC Description: {{ $gc_description }}</p><p>Redemption Period: {{ $gc_value }}</p></td><td><p>Dear, {{ $name }}</p><p><br></p><p><br></p><p>&lt;a href=\"{{ $qr_code }}\" download=\"qr_code.png\"&gt; &lt;img src=\"{{ $qrCodeApiUrl }}\" alt=\"QR Code\"&gt; &lt;/a&gt;</p><p><br></p><p>GC Description: {{ $gc_description }}</p><p>Redemption Period: {{ $gc_value }}</p><p><br></p><p><br></p></td></tr><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 00:35:21', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-31 00:57:28', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Email Testing', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>html_email</td><td><p><br></p><p>{{ $name }}</p><p>&lt;a href=\"{{ $qrCodeApiUrl }}\" download=\"qr_code.png\"&gt; &lt;img src=\"{{ $qrCodeApiUrl }}\" alt=\"QR Code\"&gt; &lt;/a&gt;<br></p></td><td><p><br></p><p>{{ $name }}</p><p>{{ qr_code}}</p></td></tr><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 01:18:38', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Email Testing', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>html_email</td><td><p><br></p><p>{{ $name }}</p><p>{{ qr_code}}</p></td><td><p><br></p><p>{{ $name }}</p><p>{{ $qr_code }}</p></td></tr><tr><td>created_by</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 01:21:08', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-31 16:37:55', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-31 18:10:27', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Testing', '', 1, '2023-05-31 18:15:20', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-05-31 18:29:50', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-05-31 18:29:59', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Email Creation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Email Testing</td><td>Email Creation</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-05-31 19:26:25', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>QR Code Template</td><td></td></tr><tr><td>subject_of_the_email</td><td>QR Testing</td><td></td></tr><tr><td>html_email</td><td><h3 style=\"color: rgb(0, 0, 0);\">QR Code Redemption</h3><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><div id=\"qr-code-download\"><div id=\"download_qr\"><p>QR Information</p><p>[qr_code]</p></div></div><p>Campaign ID: [campaign_id_qr]</p><p>GC Description: [qr_description]</p><p><br></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td><td><h3 style=\"color: rgb(0, 0, 0);\">QR Code Redemption</h3><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><div id=\"qr-code-download\"><div id=\"download_qr\"><p>QR Information</p><p>[qr_code]</p></div></div><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p><br></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 21:35:51', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Creation', '', 1, '2023-05-31 21:41:16', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/2', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>TESTING</td><td></td></tr><tr><td>subject_of_the_email</td><td>QR CODE REDEMPTION TESTING</td><td></td></tr><tr><td>html_email</td><td><h4><b>QR CODE REDEMPTION</b></h4><h4><br></h4><h5>Dear [name],</h5><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p><br></p><p>Qr Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p><br></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td><td><h4><b>QR CODE REDEMPTION</b></h4><h5>Dear [name],</h5><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>Qr Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 21:44:03', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/2', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>TESTING</td><td></td></tr><tr><td>subject_of_the_email</td><td>QR CODE REDEMPTION TESTING</td><td></td></tr><tr><td>html_email</td><td><h4><b>QR CODE REDEMPTION</b></h4><h5>Dear [name],</h5><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>Qr Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td><td><h4><b>QR CODE REDEMPTION</b></h4><h5>Dear [name],</h5><p><br></p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p><br></p><p>Qr Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p><br></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 21:53:46', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/2', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>TESTING</td><td></td></tr><tr><td>subject_of_the_email</td><td>QR CODE REDEMPTION TESTING</td><td></td></tr><tr><td>html_email</td><td><h4><b>QR CODE REDEMPTION</b></h4><h5>Dear [name],</h5><p><br></p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p><br></p><p>Qr Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p><br></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td><td><h4><b>QR CODE REDEMPTION!</b></h4><p><br></p><h4>Dear [name],</h4><p><br></p><h4>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</h4><p><br></p><h4>Qr Information:</h4><h4>[qr_code]</h4><h4>Campaign ID: [campaign_id]</h4><h4>GC Description: [gc_description]</h4><h4><br></h4><h4>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</h4><h4>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</h4><h4><br></h4><h4>Best regards,</h4><h4>BPG Department</h4><h4>Digits Trading Corp.</h4></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 21:58:12', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/2', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>TESTING</td><td></td></tr><tr><td>subject_of_the_email</td><td>QR CODE REDEMPTION TESTING</td><td></td></tr><tr><td>html_email</td><td><h4><b>QR CODE REDEMPTION!</b></h4><p><br></p><h4>Dear [name],</h4><p><br></p><h4>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</h4><p><br></p><h4>Qr Information:</h4><h4>[qr_code]</h4><h4>Campaign ID: [campaign_id]</h4><h4>GC Description: [gc_description]</h4><h4><br></h4><h4>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</h4><h4>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</h4><h4><br></h4><h4>Best regards,</h4><h4>BPG Department</h4><h4>Digits Trading Corp.</h4></td><td><h4><b>QR CODE REDEMPTION!</b></h4><h4>Dear [name],</h4><h4>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</h4><h4>Qr Information:</h4><h4>[qr_code]</h4><h4>Campaign ID: [campaign_id]</h4><h4>GC Description: [gc_description]</h4><h4>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</h4><h4>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</h4><h4>Best regards,</h4><h4>BPG Department</h4><h4>Digits Trading Corp.</h4></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 22:00:49', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/2', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>TESTING</td><td></td></tr><tr><td>subject_of_the_email</td><td>QR CODE REDEMPTION TESTING</td><td></td></tr><tr><td>html_email</td><td><h4><b>QR CODE REDEMPTION!</b></h4><h4>Dear [name],</h4><h4>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</h4><h4>Qr Information:</h4><h4>[qr_code]</h4><h4>Campaign ID: [campaign_id]</h4><h4>GC Description: [gc_description]</h4><h4>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</h4><h4>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</h4><h4>Best regards,</h4><h4>BPG Department</h4><h4>Digits Trading Corp.</h4></td><td><h4><b>QR CODE REDEMPTION!</b></h4><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>Qr Information:<br>[qr_code]<br>Campaign ID: [campaign_id]<br>GC Description: [gc_description]</p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p>Best regards,<br>BPG Department<br>Digits Trading Corp.</p><p><br></p><p><br></p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 22:04:27', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Creation', '', 1, '2023-05-31 22:24:25', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Testing1</td><td></td></tr><tr><td>subject_of_the_email</td><td>test</td><td></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 23:03:45', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>QR Code Template</td><td></td></tr><tr><td>subject_of_the_email</td><td>QR Testing</td><td></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 23:41:05', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/edit-save/2', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>TESTING</td><td></td></tr><tr><td>subject_of_the_email</td><td>QR CODE REDEMPTION TESTING</td><td></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-05-31 23:41:14', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Email Creation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-list-alt</td><td>fa fa-envelope</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-05-31 23:50:45', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data QR Creation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-envelope</td><td>fa fa-qrcode</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2023-05-31 23:51:04', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Redemption Code at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2023-06-01 00:41:46', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Redemption Code History at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2023-06-01 00:41:55', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/menu_management/edit-save/1', 'Update data Redemption Code at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2023-06-01 00:59:48', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Email Creation', '', 1, '2023-06-01 01:01:17', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-01 16:07:45', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-01 16:09:57', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-01 16:10:14', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-01 16:10:55', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-01 16:11:22', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-03 21:59:16', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-04 16:57:27', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-04 17:07:23', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-04 17:15:17', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/1', 'Update data Redemption Code at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2023-06-04 18:07:03', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/8', 'Update data Store Concept at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-cog</td><td>fa fa-circle-o</td></tr><tr><td>parent_id</td><td>2</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-06-04 18:33:14', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 18:39:31', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/delete/1', 'Delete data 1 at Store Concept', '', 1, '2023-06-04 18:41:33', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 18:41:55', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/edit-save/1', 'Update data  at Store Concept', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status</td><td>ACTIVE</td><td></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-04 18:42:00', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:19', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:24', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:27', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:31', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:34', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:36', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:39', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:41', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:44', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/add-save', 'Add New Data  at Store Concept', '', 1, '2023-06-04 19:27:47', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-04 21:21:52', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/store_concepts/edit/10', 'Try edit the data 10 at Store Concept', '', 1, '2023-06-04 21:54:26', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'http://127.0.0.1:1000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-04 23:09:50', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'http://127.0.0.1:5000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-04 23:21:22', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'http://127.0.0.1:8080/admin/menu_management/edit-save/3', 'Update data Valid IDs at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-06-05 00:18:38', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-05 18:21:22', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'http://127.0.0.1:8080/admin/email_testings/add-save', 'Add New Data  at Email Creation', '', 1, '2023-06-05 20:40:21', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'http://127.0.0.1:8080/admin/email_testings/edit-save/1', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Testing Mail</td><td></td></tr><tr><td>subject_of_the_email</td><td>Summer Promo</td><td></td></tr><tr><td>html_email</td><td><h3 style=\"color: rgb(0, 0, 0);\">QR Code Redemption</h3><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><div id=\"qr-code-download\"><div id=\"download_qr\"><p>QR Information</p><p>[qr_code]</p></div></div><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.<br></p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td><td><h3 style=\"color: rgb(0, 0, 0);\">QR Code Redemption</h3><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><div id=\"qr-code-download\"><div id=\"download_qr\"><p>[qr_code]<br></p></div></div><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.<br></p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td></tr><tr><td>updated_by</td><td></td><td>1</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-05 20:52:43', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.37', 'http://127.0.0.1:8080/admin/email_testings/add-save', 'Add New Data  at Email Creation', '', 1, '2023-06-05 23:05:02', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-06 17:13:01', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/qr_creations/edit-save/1', 'Update data  at QR Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status_id</td><td>1</td><td>2</td></tr><tr><td>campaign_id</td><td>Summer Sale 2023</td><td></td></tr><tr><td>gc_description</td><td>Summer sale</td><td></td></tr><tr><td>gc_value</td><td>500</td><td></td></tr><tr><td>number_of_gcs</td><td>1</td><td></td></tr><tr><td>batch_number</td><td>1</td><td></td></tr><tr><td>batch_group</td><td>1</td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>upload_limit</td><td></td><td></td></tr><tr><td>upload_limit_control</td><td></td><td></td></tr><tr><td>title_of_the_email</td><td></td><td>fad</td></tr><tr><td>subject_of_the_email</td><td></td><td>fda</td></tr><tr><td>html_email</td><td></td><td><p>fda</p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-06 19:14:36', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/qr_creations/edit-save/1', 'Update data  at QR Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status_id</td><td>1</td><td>2</td></tr><tr><td>campaign_id</td><td>Summer Sale 2023</td><td></td></tr><tr><td>gc_description</td><td>Summer sale</td><td></td></tr><tr><td>gc_value</td><td>500</td><td></td></tr><tr><td>number_of_gcs</td><td>1</td><td></td></tr><tr><td>batch_number</td><td>1</td><td></td></tr><tr><td>batch_group</td><td>1</td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>upload_limit</td><td></td><td></td></tr><tr><td>upload_limit_control</td><td></td><td></td></tr><tr><td>title_of_the_email</td><td>fad</td><td>21</td></tr><tr><td>subject_of_the_email</td><td>fda</td><td>21</td></tr><tr><td>html_email</td><td><p>fda</p></td><td><p>21</p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-06 19:15:28', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/qr_creations/edit-save/1', 'Update data  at QR Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status_id</td><td>1</td><td>2</td></tr><tr><td>campaign_id</td><td>Summer Sale 2023</td><td></td></tr><tr><td>gc_description</td><td>Summer sale</td><td></td></tr><tr><td>gc_value</td><td>500</td><td></td></tr><tr><td>number_of_gcs</td><td>1</td><td></td></tr><tr><td>batch_number</td><td>1</td><td></td></tr><tr><td>batch_group</td><td>1</td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>upload_limit</td><td></td><td></td></tr><tr><td>upload_limit_control</td><td></td><td></td></tr><tr><td>html_email</td><td><p>21</p></td><td><p>test</p><p>test</p><p>test</p><p><br></p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-06 19:16:04', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/qr_creations/edit-save/1', 'Update data  at QR Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status_id</td><td>1</td><td>2</td></tr><tr><td>campaign_id</td><td>Summer Sale 2023</td><td></td></tr><tr><td>gc_description</td><td>Summer sale</td><td></td></tr><tr><td>gc_value</td><td>500</td><td></td></tr><tr><td>number_of_gcs</td><td>1</td><td></td></tr><tr><td>batch_number</td><td>1</td><td></td></tr><tr><td>batch_group</td><td>1</td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>upload_limit</td><td></td><td></td></tr><tr><td>upload_limit_control</td><td></td><td></td></tr><tr><td>html_email</td><td><p>test</p><p>test</p><p>test</p><p><br></p></td><td><p>21</p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-06 19:16:23', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/qr_creations/edit-save/1', 'Update data  at QR Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status_id</td><td>1</td><td>2</td></tr><tr><td>campaign_id</td><td>Summer Sale 2023</td><td></td></tr><tr><td>gc_description</td><td>Summer sale</td><td></td></tr><tr><td>gc_value</td><td>500</td><td></td></tr><tr><td>number_of_gcs</td><td>1</td><td></td></tr><tr><td>batch_number</td><td>1</td><td></td></tr><tr><td>batch_group</td><td>1</td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>upload_limit</td><td></td><td></td></tr><tr><td>upload_limit_control</td><td></td><td></td></tr><tr><td>title_of_the_email</td><td>21</td><td>dfa</td></tr><tr><td>subject_of_the_email</td><td>21</td><td>fda</td></tr><tr><td>html_email</td><td><p>21</p></td><td><p>fda</p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-06 19:17:47', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/qr_creations/edit-save/1', 'Update data  at QR Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status_id</td><td>1</td><td>2</td></tr><tr><td>campaign_id</td><td>Summer Sale 2023</td><td></td></tr><tr><td>gc_description</td><td>Summer sale</td><td></td></tr><tr><td>gc_value</td><td>500</td><td></td></tr><tr><td>number_of_gcs</td><td>1</td><td></td></tr><tr><td>batch_number</td><td>1</td><td></td></tr><tr><td>batch_group</td><td>1</td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>upload_limit</td><td></td><td></td></tr><tr><td>upload_limit_control</td><td></td><td></td></tr><tr><td>title_of_the_email</td><td>dfa</td><td>132</td></tr><tr><td>subject_of_the_email</td><td>fda</td><td>321</td></tr><tr><td>html_email</td><td><p>fda</p></td><td><p>123</p></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-06 19:21:10', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/qr_creations/edit-save/1', 'Update data  at QR Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>status_id</td><td>1</td><td></td></tr><tr><td>campaign_id</td><td>Summer Sale 2023</td><td></td></tr><tr><td>gc_description</td><td>Summer sale</td><td></td></tr><tr><td>gc_value</td><td>500</td><td></td></tr><tr><td>number_of_gcs</td><td>1</td><td></td></tr><tr><td>batch_number</td><td>1</td><td></td></tr><tr><td>batch_group</td><td>1</td><td></td></tr><tr><td>id_store_concept</td><td>2</td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>upload_limit</td><td></td><td></td></tr><tr><td>upload_limit_control</td><td></td><td></td></tr><tr><td>title_of_the_email</td><td>This is the title of the email</td><td></td></tr><tr><td>subject_of_the_email</td><td>Subject Email</td><td></td></tr><tr><td>html_email</td><td><h3 style=\"color: rgb(0, 0, 0);\">QR Code Redemption</h3><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><div id=\"qr-code-download\"><div id=\"download_qr\"><p>QR Information</p><p>[qr_code]</p></div></div><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p><br></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp.</p></td><td></td></tr><tr><td>created_by</td><td>1</td><td></td></tr><tr><td>updated_by</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-06 23:48:06', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-07 17:31:47', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/users/add-save', 'Add New Data Filinor Gunio at Users Management', '', 1, '2023-06-07 22:35:30', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-08 16:31:22', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-08 17:20:38', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-08 17:21:01', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/users/add-save', 'Add New Data Moneymax at Users Management', '', 1, '2023-06-08 23:04:43', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-08 23:04:46', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-08 23:04:51', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-06-08 23:05:15', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-08 23:13:05', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/7', 'Update data Email Creation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-06-08 23:13:43', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/6', 'Update data QR Creation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2023-06-08 23:13:51', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-08 23:13:59', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-08 23:14:32', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-06-08 23:45:06', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-08 23:45:51', NULL),
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/users/add-save', 'Add New Data BPI at Users Management', '', 1, '2023-06-08 23:46:51', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-08 23:46:55', NULL),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-08 23:47:19', NULL),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/email_testings/edit-save/3', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Testing Email</td><td></td></tr><tr><td>subject_of_the_email</td><td>Company Email</td><td></td></tr><tr><td>company_id</td><td>2</td><td></td></tr><tr><td>updated_by</td><td></td><td>4</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 4, '2023-06-09 00:17:09', NULL),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/email_testings/edit-save/3', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Testing Email</td><td></td></tr><tr><td>subject_of_the_email</td><td>Company Email</td><td></td></tr><tr><td>company_id</td><td>2</td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 4, '2023-06-09 00:19:29', NULL),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/email_testings/edit-save/3', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Testing Email</td><td></td></tr><tr><td>subject_of_the_email</td><td>Company Email</td><td></td></tr><tr><td>company_id</td><td>2</td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 4, '2023-06-09 00:20:36', NULL),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/email_testings/edit-save/3', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Testing Email</td><td></td></tr><tr><td>subject_of_the_email</td><td>Company Email</td><td></td></tr><tr><td>company_id</td><td>2</td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 4, '2023-06-09 00:21:02', NULL),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/email_testings/edit-save/3', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Testing Email</td><td></td></tr><tr><td>subject_of_the_email</td><td>Company Email</td><td></td></tr><tr><td>company_id</td><td>2</td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 4, '2023-06-09 00:21:07', NULL),
(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/email_testings/edit-save/3', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Testing Email</td><td></td></tr><tr><td>subject_of_the_email</td><td>Company Email</td><td></td></tr><tr><td>company_id</td><td>2</td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 4, '2023-06-09 08:21:27', NULL),
(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-09 00:49:59', NULL),
(350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-09 00:50:42', NULL),
(351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/email_testings/edit-save/1', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Summer Voucher</td><td></td></tr><tr><td>subject_of_the_email</td><td>Summer Voucher</td><td>Summer Voucher123</td></tr><tr><td>company_id</td><td>2</td><td></td></tr><tr><td>updated_by</td><td></td><td>4</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 4, '2023-06-09 09:28:23', NULL),
(352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/email_testings/edit-save/1', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>subject_of_the_email</td><td>Summer Voucher123</td><td>Summer Voucher</td></tr><tr><td>company_id</td><td>2</td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 4, '2023-06-09 09:28:29', NULL),
(353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/email_testings/edit-save/1', 'Update data  at Email Creation', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Summer Voucher</td><td></td></tr><tr><td>subject_of_the_email</td><td>Summer Voucher</td><td>Summer Voucher123</td></tr><tr><td>company_id</td><td>2</td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 4, '2023-06-09 09:29:23', NULL),
(354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-09 01:51:42', NULL),
(355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-09 01:52:15', NULL),
(356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-09 02:07:47', NULL),
(357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-09 02:08:06', NULL),
(358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/10', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Company Dashboard</td><td>Dashboard</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-dashboard</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2023-06-09 02:11:05', NULL),
(359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-10 15:51:34', NULL),
(360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-06-10 18:30:36', NULL),
(361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-10 18:32:05', NULL),
(362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-10 18:33:23', NULL),
(363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-10 18:33:28', NULL),
(364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-06-10 18:34:24', NULL),
(365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2023-06-10 18:35:02', NULL),
(366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-06-10 18:35:17', NULL),
(367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-10 18:35:34', NULL),
(368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-10 18:35:38', NULL),
(369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-06-10 18:36:21', NULL),
(370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-10 18:36:51', NULL),
(371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-10 18:36:59', NULL),
(372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_active</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2023-06-10 18:37:54', NULL),
(373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-06-10 18:38:27', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_active</td><td>0</td><td>1</td></tr></tbody></table>', 1, '2023-06-10 18:39:52', NULL),
(375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2023-06-10 18:40:13', NULL),
(376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/5', 'Update data Analytics at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Dashboard</td><td>Analytics</td></tr><tr><td>icon</td><td>fa fa-credit-card</td><td>fa fa-gears</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-06-10 18:42:05', NULL),
(377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-10 18:42:19', NULL),
(378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-10 18:42:26', NULL),
(379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-10 19:06:21', NULL),
(380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-10 19:06:26', NULL),
(381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Update Email Content at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Email Creation</td><td>Update Email Content</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2023-06-10 19:09:27', NULL),
(382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Update Email at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Update Email Content</td><td>Update Email</td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2023-06-10 19:09:39', NULL),
(383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data Create QR at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>QR Creation</td><td>Create QR</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2023-06-10 19:09:54', NULL),
(384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data QR Creation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Create QR</td><td>QR Creation</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2023-06-10 19:10:25', NULL),
(385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/menu_management/edit-save/6', 'Update data QR Creation at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2023-06-10 19:10:25', NULL),
(386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-10 19:31:14', NULL),
(387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.41', 'http://127.0.0.1:8000/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-10 19:31:20', NULL),
(388, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-10 20:25:59', NULL),
(389, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-10 23:44:32', NULL),
(390, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-11 03:08:30', NULL),
(391, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-11 03:08:34', NULL),
(392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-11 03:11:42', NULL),
(393, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-11 03:12:27', NULL),
(394, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-11 17:02:22', NULL),
(395, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-06-11 17:02:35', NULL),
(396, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-11 17:09:09', NULL),
(397, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-11 17:09:45', NULL),
(398, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-11 17:09:50', NULL),
(399, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-12 16:35:52', NULL),
(400, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-12 17:02:22', NULL),
(401, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-12 18:17:17', NULL),
(402, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-12 21:44:44', NULL),
(403, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-12 21:44:49', NULL),
(404, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 02:09:58', NULL),
(405, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-13 16:38:26', NULL),
(406, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-13 19:17:26', NULL),
(407, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:17:50', NULL),
(408, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 19:23:38', NULL),
(409, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:24:29', NULL),
(410, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 19:25:05', NULL),
(411, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:25:37', NULL),
(412, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 19:29:10', NULL),
(413, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:30:45', NULL),
(414, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 19:31:04', NULL),
(415, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:32:03', NULL),
(416, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 19:32:44', NULL),
(417, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:33:23', NULL),
(418, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 19:35:43', NULL),
(419, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:37:13', NULL),
(420, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 19:49:33', NULL),
(421, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-13 19:49:50', NULL),
(422, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-13 19:51:41', NULL),
(423, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:51:59', NULL),
(424, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/menu_management/edit-save/5', 'Update data Analytics at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2023-06-13 19:53:30', NULL),
(425, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 19:53:33', NULL),
(426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:53:37', NULL),
(427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 19:53:41', NULL),
(428, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-13 19:53:45', NULL),
(429, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-13 19:54:08', NULL),
(430, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 19:54:12', NULL),
(431, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/menu_management/edit-save/10', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 1, '2023-06-13 19:54:23', NULL),
(432, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 20:48:13', NULL),
(433, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 21:40:57', NULL),
(434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/users/add-save', 'Add New Data MIke Rodelas at Users Management', '', 1, '2023-06-13 21:41:41', NULL),
(435, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/users/add-save', 'Add New Data Christoff Sy at Users Management', '', 1, '2023-06-13 21:42:05', NULL),
(436, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/users/delete-image', 'Delete the image of Filinor Gunio at Users Management', '', 1, '2023-06-13 21:45:17', NULL),
(437, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/users/edit-save/2', 'Update data Filinor Gunio at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2023-06/software_engineer.png</td></tr><tr><td>password</td><td>$2y$10$oT.lyvqMGaWSGTEuGIGs..hWTzTyHWiBA10NAaLSqL1SU.BFVv/Hi</td><td></td></tr><tr><td>id_store_concept</td><td></td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2023-06-13 21:46:12', NULL),
(438, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/users/delete-image', 'Delete the image of Patrick Punzalan at Users Management', '', 1, '2023-06-13 21:47:03', NULL),
(439, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/users/edit-save/1', 'Update data Patrick Punzalan at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2023-06/software_engineer.png</td></tr><tr><td>password</td><td>$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2</td><td></td></tr><tr><td>id_store_concept</td><td></td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2023-06-13 21:47:09', NULL),
(440, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 21:47:13', NULL),
(441, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-13 21:47:45', NULL),
(442, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/users/add-save', 'Add New Data Patrick Punzalan at Users Management', '', 1, '2023-06-13 21:48:12', NULL),
(443, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'admin@crudbooster.com logout', '', 1, '2023-06-13 21:48:15', NULL),
(444, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-13 21:48:20', NULL),
(445, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/users/edit-save/1', 'Update data Super Admin Crudbooster at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Patrick Punzalan</td><td>Super Admin Crudbooster</td></tr><tr><td>password</td><td>$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2</td><td></td></tr><tr><td>id_store_concept</td><td></td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 7, '2023-06-13 21:48:35', NULL),
(446, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-13 22:12:50', NULL),
(447, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-13 22:28:17', NULL),
(448, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-13 22:32:50', NULL),
(449, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-13 22:32:57', NULL),
(450, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-13 22:33:26', NULL),
(451, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-13 22:33:32', NULL),
(452, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-13 22:33:37', NULL),
(453, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-13 22:33:43', NULL),
(454, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-13 22:33:51', NULL),
(455, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-13 22:33:55', NULL),
(456, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/menu_management/edit-save/10', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 7, '2023-06-13 22:34:08', NULL),
(457, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-13 22:34:12', NULL),
(458, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-13 22:34:17', NULL),
(459, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-13 22:42:08', NULL),
(460, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-13 22:43:21', NULL),
(461, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-13 23:50:16', NULL),
(462, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-13 23:50:56', NULL),
(463, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-13 23:51:22', NULL),
(464, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-13 23:51:26', NULL),
(465, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/menu_management/edit-save/5', 'Update data Analytics at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 7, '2023-06-13 23:51:38', NULL),
(466, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-14 00:05:35', NULL),
(467, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-14 00:07:37', NULL),
(468, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-14 00:38:12', NULL),
(469, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-14 00:38:45', NULL),
(470, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-14 00:52:17', NULL),
(471, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-14 00:52:45', NULL),
(472, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-14 00:57:53', NULL),
(473, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-14 00:58:13', NULL),
(474, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-06-14 01:30:26', NULL),
(475, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-14 01:30:30', NULL),
(476, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-14 16:27:28', NULL),
(477, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-15 00:09:25', NULL),
(478, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-15 00:10:43', NULL),
(479, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-15 00:14:29', NULL),
(480, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-15 00:14:36', NULL),
(481, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-15 00:15:27', NULL),
(482, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/menu_management/edit-save/7', 'Update data Update Email at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 7, '2023-06-15 00:17:10', NULL),
(483, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-06-15 00:49:30', NULL),
(484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-15 00:49:34', NULL),
(485, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-15 01:14:42', NULL),
(486, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-15 01:14:48', NULL),
(487, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-06-15 01:19:47', NULL),
(488, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-15 01:19:52', NULL),
(489, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-15 18:12:37', NULL),
(490, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-15 18:13:08', NULL),
(491, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-06-15 18:13:13', NULL),
(492, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-06-15 18:13:18', NULL),
(493, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-15 18:13:24', NULL),
(494, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-06-15 18:15:32', NULL),
(495, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-15 18:15:37', NULL),
(496, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-06-15 18:18:45', NULL),
(497, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-15 18:18:51', NULL),
(498, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-15 18:19:31', NULL),
(499, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-06-15 18:19:42', NULL),
(500, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-06-15 18:20:53', NULL),
(501, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-15 18:21:03', NULL),
(502, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-15 19:43:07', NULL),
(503, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-16 01:03:15', NULL),
(504, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-18 17:14:52', NULL),
(505, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-18 21:26:56', NULL),
(506, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2023-06-18 21:36:54', NULL),
(507, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-19 01:30:30', NULL),
(508, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/menu_management/edit-save/5', 'Update data Analytics at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>is_dashboard</td><td>0</td><td>1</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 7, '2023-06-19 02:00:22', NULL),
(509, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', 'http://127.0.0.1:8080/admin/menu_management/edit-save/5', 'Update data Analytics at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 7, '2023-06-19 02:00:40', NULL),
(510, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-19 17:25:14', NULL),
(511, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/email_templates/edit-save/2', 'Update data QR Reference Number at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p>Good morning,</p><p>[qr_code]</p></td><td><p><img src=\"http://127.0.0.1:8080/uploads/7/2023-06/fbbcb75b65fb6e6773cc1cb8ed4d10c8.png\" style=\"width: 215.511px; height: 215.511px;\"><br></p></td></tr><tr><td>from_name</td><td></td><td></td></tr><tr><td>from_email</td><td></td><td></td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 7, '2023-06-20 00:33:23', NULL),
(512, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/email_templates/edit-save/2', 'Update data QR Reference Number at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>from_name</td><td></td><td></td></tr><tr><td>from_email</td><td></td><td>dam@digits.ph</td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 7, '2023-06-20 00:46:31', NULL),
(513, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/email_templates/edit-save/2', 'Update data QR Reference Number at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>from_name</td><td></td><td>Dam</td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 7, '2023-06-20 00:47:02', NULL),
(514, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/email_templates/edit-save/2', 'Update data QR Reference Number at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 7, '2023-06-20 00:51:29', NULL),
(515, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/email_templates/edit-save/2', 'Update data QR Reference Number at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>content</td><td><p><img src=\"http://127.0.0.1:8080/uploads/7/2023-06/fbbcb75b65fb6e6773cc1cb8ed4d10c8.png\" style=\"width: 215.511px; height: 215.511px;\"><br></p></td><td><p><br></p><p>fdaffa<img src=\"http://127.0.0.1:8080/uploads/7/2023-06/fbbcb75b65fb6e6773cc1cb8ed4d10c8.png\" style=\"width: 215.511px; height: 215.511px;\"><br></p></td></tr><tr><td>cc_email</td><td></td><td></td></tr></tbody></table>', 7, '2023-06-20 00:52:17', NULL),
(516, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/email_templates/edit-save/2', 'Update data QR Reference Number at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cc_email</td><td></td><td>dam@digits.ph</td></tr></tbody></table>', 7, '2023-06-20 00:59:08', NULL),
(517, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-20 01:19:40', NULL),
(518, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-20 01:20:08', NULL),
(519, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-21 19:32:33', NULL),
(520, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-21 19:32:46', NULL),
(521, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-21 19:36:33', NULL),
(522, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-22 00:34:44', NULL),
(523, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-22 19:33:40', NULL),
(524, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-23 00:41:18', NULL),
(525, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-25 17:55:19', NULL),
(526, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-26 19:50:58', NULL),
(527, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-27 00:56:34', NULL),
(528, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-27 01:17:35', NULL),
(529, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-28 17:28:33', NULL),
(530, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/2', 'Update data Filinor Gunio at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$oT.lyvqMGaWSGTEuGIGs..hWTzTyHWiBA10NAaLSqL1SU.BFVv/Hi</td><td></td></tr><tr><td>id_cms_privileges</td><td>1</td><td>3</td></tr><tr><td>id_store_concept</td><td></td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 7, '2023-06-28 18:11:55', NULL),
(531, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-28 18:12:00', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(532, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-28 18:12:30', NULL),
(533, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Admin Control at Users Management', '', 7, '2023-06-28 18:13:01', NULL),
(534, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-28 18:13:07', NULL),
(535, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-06-28 18:13:12', NULL),
(536, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@digits.ph logout', '', 8, '2023-06-28 18:57:07', NULL),
(537, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-28 18:57:14', NULL),
(538, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-06-28 18:57:23', NULL),
(539, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-06-28 18:57:31', NULL),
(540, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Moneymaxone at Users Management', '', 8, '2023-06-28 18:58:55', NULL),
(541, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-29 01:36:36', NULL),
(542, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-06-30 02:02:33', NULL),
(543, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.58', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-01 23:50:14', NULL),
(544, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-02 16:14:37', NULL),
(545, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-03 16:06:37', NULL),
(546, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-04 00:59:28', NULL),
(547, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-04 21:09:59', NULL),
(548, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-04 21:13:51', NULL),
(549, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-04 21:14:00', NULL),
(550, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-04 21:14:12', NULL),
(551, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-04 21:15:20', NULL),
(552, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-04 21:15:29', NULL),
(553, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/1', 'Update data Redemption Code at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-credit-card</td><td>fa fa-desktop</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 7, '2023-07-04 21:46:16', NULL),
(554, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/1', 'Update data Redemption Code History at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Redemption Code</td><td>Redemption Code History</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 7, '2023-07-04 23:26:24', NULL),
(555, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/4', 'Update data Redemption Code History() at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Redemption Code History</td><td>Redemption Code History()</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 7, '2023-07-04 23:28:37', NULL),
(556, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-04 23:31:38', NULL),
(557, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-04 23:31:43', NULL),
(558, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-04 23:36:30', NULL),
(559, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-04 23:38:19', NULL),
(560, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-04 23:38:27', NULL),
(561, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-04 23:39:09', NULL),
(562, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-04 23:39:15', NULL),
(563, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-04 23:41:53', NULL),
(564, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-04 23:42:04', NULL),
(565, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/1', 'Update data Redemption Code History at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 7, '2023-07-04 23:42:25', NULL),
(566, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-04 23:44:52', NULL),
(567, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-04 23:45:01', NULL),
(568, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-04 23:45:09', NULL),
(569, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-04 23:45:24', NULL),
(570, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-04 23:46:54', NULL),
(571, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-04 23:47:19', NULL),
(572, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-04 23:47:42', NULL),
(573, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-04 23:47:52', NULL),
(574, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-04 23:48:38', NULL),
(575, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-04 23:48:42', NULL),
(576, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-04 23:57:14', NULL),
(577, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-04 23:57:20', NULL),
(578, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/users/add-save', 'Add New Data Viewing Account at Users Management', '', 8, '2023-07-05 00:01:58', NULL),
(579, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-05 00:04:33', NULL),
(580, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 00:04:37', NULL),
(581, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-05 00:06:00', NULL),
(582, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 00:06:15', NULL),
(583, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/g_c_lists', 'Try view the data :name at Redemption Code History', '', 10, '2023-07-05 00:07:53', NULL),
(584, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/g_c_lists', 'Try view the data :name at Redemption Code History', '', 10, '2023-07-05 00:08:42', NULL),
(585, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 00:09:13', NULL),
(586, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/g_c_lists', 'Try view the data :name at Redemption Code History', '', 10, '2023-07-05 00:09:18', NULL),
(587, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/g_c_lists', 'Try view the data :name at Redemption Code History', '', 10, '2023-07-05 00:09:22', NULL),
(588, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/g_c_lists', 'Try view the data :name at Redemption Code History', '', 10, '2023-07-05 00:09:27', NULL),
(589, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/g_c_lists', 'Try view the data :name at Redemption Code History', '', 10, '2023-07-05 00:09:43', NULL),
(590, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/g_c_lists', 'Try view the data :name at Redemption Code History', '', 10, '2023-07-05 00:09:46', NULL),
(591, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/g_c_lists', 'Try view the data :name at Redemption Code History', '', 10, '2023-07-05 00:09:47', NULL),
(592, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-05 00:09:48', NULL),
(593, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 00:09:53', NULL),
(594, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/menu_management/edit-save/10', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 7, '2023-07-05 00:15:22', NULL),
(595, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-05 00:15:35', NULL),
(596, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 00:15:40', NULL),
(597, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 00:16:19', NULL),
(598, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-05 00:16:32', NULL),
(599, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 00:16:37', NULL),
(600, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 00:17:17', NULL),
(601, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 00:19:38', NULL),
(602, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-05 00:19:57', NULL),
(603, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-05 00:21:33', NULL),
(604, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 00:21:40', NULL),
(605, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 00:21:44', NULL),
(606, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 00:21:46', NULL),
(607, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 00:21:49', NULL),
(608, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-05 00:34:28', NULL),
(609, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-05 00:34:45', NULL),
(610, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-05 00:55:36', NULL),
(611, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-05 00:55:42', NULL),
(612, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-05 00:59:25', NULL),
(613, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-05 01:02:21', NULL),
(614, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-05 01:02:27', NULL),
(615, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Dashboard at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr></tbody></table>', 7, '2023-07-05 01:03:38', NULL),
(616, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-05 01:03:42', NULL),
(617, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-05 01:03:50', NULL),
(618, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/privileges', 'Try view the data :name at Privileges', '', 8, '2023-07-05 01:07:20', NULL),
(619, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-05 01:12:06', NULL),
(620, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 01:13:18', NULL),
(621, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:13:21', NULL),
(622, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:13:23', NULL),
(623, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:13:24', NULL),
(624, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:13:25', NULL),
(625, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:13:27', NULL),
(626, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:13:28', NULL),
(627, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-05 01:13:36', NULL),
(628, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-05 01:13:42', NULL),
(629, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Viewing Account One at Users Management', '', 8, '2023-07-05 01:14:35', NULL),
(630, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-05 01:14:40', NULL),
(631, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'viewing1@digits.ph login with IP Address 127.0.0.1', '', 11, '2023-07-05 01:14:44', NULL),
(632, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'viewing1@digits.ph logout', '', 11, '2023-07-05 01:14:57', NULL),
(633, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-05 01:15:06', NULL),
(634, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-05 01:15:19', NULL),
(635, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-05 01:15:25', NULL),
(636, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-05 01:19:51', NULL),
(637, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-05 01:20:02', NULL),
(638, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-05 01:22:03', NULL),
(639, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-05 01:22:23', NULL),
(640, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-05 01:28:36', NULL),
(641, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-05 01:28:41', NULL),
(642, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-05 01:28:49', NULL),
(643, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-05 01:29:00', NULL),
(644, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-05 01:29:08', NULL),
(645, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 01:29:19', NULL),
(646, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:29:22', NULL),
(647, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:35:45', NULL),
(648, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:35:47', NULL),
(649, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-05 01:51:10', NULL),
(650, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'viewing1@digits.ph login with IP Address 127.0.0.1', '', 11, '2023-07-05 01:51:31', NULL),
(651, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 11, '2023-07-05 01:51:34', NULL),
(652, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'viewing1@digits.ph logout', '', 11, '2023-07-05 01:51:42', NULL),
(653, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 01:53:54', NULL),
(654, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 01:53:57', NULL),
(655, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 17:15:25', NULL),
(656, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 17:15:35', NULL),
(657, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/qr_creations', 'Try view the data :name at QR Creation', '', 10, '2023-07-05 17:15:37', NULL),
(658, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-05 17:17:44', NULL),
(659, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-05 17:17:49', NULL),
(660, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 17:52:52', NULL),
(661, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-05 17:55:18', NULL),
(662, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-05 17:55:26', NULL),
(663, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-05 18:01:12', NULL),
(664, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 18:01:19', NULL),
(665, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-05 18:02:43', NULL),
(666, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-05 18:09:11', NULL),
(667, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-06 17:13:49', NULL),
(668, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-06 17:25:46', NULL),
(669, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-06 17:25:58', NULL),
(670, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-06 17:28:15', NULL),
(671, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-06 17:28:19', NULL),
(672, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-06 17:57:36', NULL),
(673, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-06 17:57:44', NULL),
(674, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/menu_management/edit-save/9', 'Update data Company  Name at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Company IDs</td><td>Company  Name</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>2</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 7, '2023-07-06 18:01:24', NULL),
(675, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-09 19:09:13', NULL),
(676, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-10 17:53:55', NULL),
(677, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-10 21:26:17', NULL),
(678, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-11 16:26:47', NULL),
(679, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-12 17:41:55', NULL),
(680, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-13 02:21:37', NULL),
(681, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-13 02:21:42', NULL),
(682, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-13 02:21:56', NULL),
(683, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-13 02:22:00', NULL),
(684, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/menu_management/add-save', 'Add New Data EGC Documentation at Menu Management', '', 7, '2023-07-13 03:03:21', NULL),
(685, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-13 16:40:49', NULL),
(686, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-13 22:07:01', NULL),
(687, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-13 22:07:08', NULL),
(688, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-13 22:07:20', NULL),
(689, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-13 22:07:52', NULL),
(690, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-13 22:16:47', NULL),
(691, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-13 22:16:53', NULL),
(692, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-13 22:17:02', NULL),
(693, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-13 22:21:56', NULL),
(694, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-13 22:23:45', NULL),
(695, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-13 22:23:50', NULL),
(696, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-13 22:26:14', NULL),
(697, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'bpi@digits.ph login with IP Address 127.0.0.1', '', 4, '2023-07-13 22:26:27', NULL),
(698, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'bpi@digits.ph logout', '', 4, '2023-07-13 22:26:40', NULL),
(699, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-13 22:27:13', NULL),
(700, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-13 22:28:40', NULL),
(701, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-13 22:29:06', NULL),
(702, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-13 22:29:27', NULL),
(703, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-13 22:32:03', NULL),
(704, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-13 22:37:25', NULL),
(705, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-13 22:40:43', NULL),
(706, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-13 22:44:09', NULL),
(707, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-13 22:44:15', NULL),
(708, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-13 22:48:19', NULL),
(709, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'moneymax@mnymax.ph login with IP Address 127.0.0.1', '', 3, '2023-07-13 22:50:53', NULL),
(710, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'moneymax@mnymax.ph logout', '', 3, '2023-07-13 22:52:09', NULL),
(711, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-13 22:52:13', NULL),
(712, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-13 23:00:55', NULL),
(713, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-13 23:00:59', NULL),
(714, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-16 16:31:10', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(715, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'http://127.0.0.1:8080/admin/menu_management/edit-save/5', 'Update data Analytics at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 7, '2023-07-16 16:32:19', NULL),
(716, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-07-16 19:18:46', NULL),
(717, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'http://127.0.0.1:8080/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-07-16 19:19:07', NULL),
(718, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'http://127.0.0.1:8080/admin/logout', 'admin@digits.ph logout', '', 8, '2023-07-16 19:19:26', NULL),
(719, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'http://127.0.0.1:8080/admin/login', 'viewing@digits.ph login with IP Address 127.0.0.1', '', 10, '2023-07-16 19:19:32', NULL),
(720, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'http://127.0.0.1:8080/admin/logout', 'viewing@digits.ph logout', '', 10, '2023-07-16 19:19:42', NULL),
(721, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-16 19:20:45', NULL),
(722, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.82', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-19 19:59:04', NULL),
(723, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-23 16:16:25', NULL),
(724, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-25 01:41:07', NULL),
(725, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-07-26 02:31:33', NULL),
(726, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.188', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-02 17:08:25', NULL),
(727, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-07 23:27:11', NULL),
(728, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.188', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-08 21:51:21', NULL),
(729, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.200', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-09 18:54:15', NULL),
(730, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.200', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-10 16:40:40', NULL),
(731, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.200', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-11 18:05:43', NULL),
(732, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.200', 'http://127.0.0.1:8000/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-12 23:35:23', NULL),
(733, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.203', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-13 21:21:48', NULL),
(734, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.203', 'http://127.0.0.1:8080/admin/logout', 'patrickpunzalan@digits.ph logout', '', 7, '2023-08-14 07:22:11', NULL),
(735, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.203', 'http://127.0.0.1:8080/admin/login', 'admin@digits.ph login with IP Address 127.0.0.1', '', 8, '2023-08-14 07:22:24', NULL),
(736, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.203', 'http://127.0.0.1:8080/admin/logout', 'admin@digits.ph logout', '', 8, '2023-08-14 07:22:41', NULL),
(737, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.203', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-14 07:22:46', NULL),
(738, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-15 01:56:05', NULL),
(739, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-16 02:29:56', NULL),
(740, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36 Edg/115.0.1901.203', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-08-17 02:54:18', NULL),
(741, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-10-06 08:15:18', NULL),
(742, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.47', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-10-06 10:43:20', NULL),
(743, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 Edg/117.0.2045.47', 'http://127.0.0.1:8080/admin/login', 'patrickpunzalan@digits.ph login with IP Address 127.0.0.1', '', 7, '2023-10-07 00:26:13', NULL),
(744, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Email Template at Menu Management', '', 7, '2023-10-07 03:51:23', NULL),
(745, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data Email Template at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 7, '2023-10-07 03:53:01', NULL),
(746, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data Email Template at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-envelope-square</td><td>fa fa-envelope</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 7, '2023-10-07 03:53:18', NULL),
(747, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/add', 'Try add data at Update Email', '', 7, '2023-10-07 04:02:33', NULL),
(748, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Update Email', '', 7, '2023-10-07 05:10:10', NULL),
(749, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Update Email', '', 7, '2023-10-07 05:11:16', NULL),
(750, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Update Email', '', 7, '2023-10-07 05:53:21', NULL),
(751, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Template 1</td><td></td></tr><tr><td>html_email</td><td><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>We kindly ask you to bring a valid government ID when redeeming your code. This is necessary for identification purposes and to ensure a smooth and secure process. We also request that you review the terms and conditions that apply to the code redemption process. You can find the detailed terms and conditions by visiting the following link: [Insert link to terms and conditions]</p><p></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p></td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td>7</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 06:42:22', NULL),
(752, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Template 1</td><td></td></tr><tr><td>html_email</td><td><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>We kindly ask you to bring a valid government ID when redeeming your code. This is necessary for identification purposes and to ensure a smooth and secure process. We also request that you review the terms and conditions that apply to the code redemption process. You can find the detailed terms and conditions by visiting the following link: [Insert link to terms and conditions]</p><p></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p></td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 07:09:05', NULL),
(753, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Template 1</td><td></td></tr><tr><td>html_email</td><td><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>We kindly ask you to bring a valid government ID when redeeming your code. This is necessary for identification purposes and to ensure a smooth and secure process. We also request that you review the terms and conditions that apply to the code redemption process. You can find the detailed terms and conditions by visiting the following link: [Insert link to terms and conditions]</p><p></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p></td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 07:09:57', NULL),
(754, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Template 1</td><td></td></tr><tr><td>html_email</td><td><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>We kindly ask you to bring a valid government ID when redeeming your code. This is necessary for identification purposes and to ensure a smooth and secure process. We also request that you review the terms and conditions that apply to the code redemption process. You can find the detailed terms and conditions by visiting the following link: [Insert link to terms and conditions]</p><p></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p></td><td></td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 07:10:18', NULL),
(755, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Template 1</td><td>Template 1 edits</td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 07:11:13', NULL),
(756, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 07:11:27', NULL),
(757, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Update Email', '', 7, '2023-10-07 07:17:08', NULL),
(758, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Update Email', '', 7, '2023-10-07 07:56:51', NULL),
(759, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/add-save', 'Add New Data  at Update Email', '', 7, '2023-10-07 08:04:01', NULL),
(760, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>title_of_the_email</td><td>Template 1</td><td>Template 1 edits</td></tr><tr><td>company_id</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td>7</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 08:04:42', NULL),
(761, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/1', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 08:05:03', NULL),
(762, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>updated_by</td><td></td><td>7</td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 10:33:21', NULL),
(763, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 10:45:11', NULL),
(764, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 10:46:11', NULL),
(765, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 10:46:20', NULL),
(766, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 10:54:46', NULL),
(767, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 10:55:21', NULL),
(768, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 10:58:03', NULL),
(769, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 11:00:18', NULL),
(770, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 11:00:28', NULL),
(771, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 11:01:30', NULL),
(772, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'http://127.0.0.1:8000/admin/email_testings/edit-save/3', 'Update data  at Update Email', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>company_id</td><td></td><td></td></tr><tr><td>deleted_at</td><td></td><td></td></tr></tbody></table>', 7, '2023-10-07 11:02:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Redemption Code History', 'Route', 'AdminGCListsControllerGetIndex', 'normal', 'fa fa-desktop', 0, 1, 0, 1, 3, '2023-05-14 21:58:19', '2023-07-04 23:42:25'),
(2, 'Submaster Module', 'URL', '#', 'normal', 'fa fa-list', 0, 1, 0, 1, 6, '2023-05-15 16:45:36', NULL),
(3, 'Valid IDs', 'Route', 'AdminIdTypesControllerGetIndex', 'normal', 'fa fa-circle-o', 2, 0, 0, 1, 1, '2023-05-15 17:06:36', '2023-06-05 00:18:38'),
(4, 'Redemption Code History()', 'Route', 'AdminGCListsHistoryControllerGetIndex', 'normal', 'fa fa-folder', 0, 0, 0, 1, 5, '2023-05-15 18:01:27', '2023-07-04 23:28:37'),
(5, 'Analytics', 'Statistic', 'statistic_builder/show/redemption-codes', 'normal', 'fa fa-gears', 0, 0, 0, 1, 2, '2023-05-15 22:21:27', '2023-07-16 16:32:19'),
(6, 'QR Creation', 'Route', 'AdminQrCreationsControllerGetIndex', 'normal', 'fa fa-qrcode', 0, 1, 0, 1, 2, '2023-05-19 00:20:05', '2023-06-10 19:10:25'),
(7, 'Update Email', 'Route', 'AdminEmailTestingsControllerGetIndex', 'normal', 'fa fa-envelope', 0, 0, 0, 1, 3, '2023-05-30 16:30:28', '2023-06-15 00:17:10'),
(8, 'Store Concept', 'Route', 'AdminStoreConceptsControllerGetIndex', 'normal', 'fa fa-circle-o', 2, 1, 0, 1, 1, '2023-06-04 18:31:33', '2023-06-04 18:33:14'),
(9, 'Company  Name', 'Route', 'AdminCompanyIdsControllerGetIndex', 'normal', 'fa fa-circle-o', 2, 1, 0, 1, 2, '2023-06-07 17:40:52', '2023-07-06 18:01:24'),
(10, 'Dashboard', 'Route', 'AdminCompanyDashboardControllerGetIndex', 'normal', 'fa fa-dashboard', 0, 1, 1, 1, 1, '2023-06-09 02:09:39', '2023-07-05 01:03:38'),
(11, 'EGC Documentation', 'URL', 'https://egc.digits.com.ph/admin/login', 'normal', 'fa fa-bookmark-o', 0, 1, 0, 1, 4, '2023-07-13 03:03:21', NULL),
(12, 'Email Template', 'Controller & Method', 'AdminEmailTestingsController@getIndex', 'normal', 'fa fa-envelope', 0, 1, 0, 1, 5, '2023-10-07 03:50:40', '2023-10-07 03:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(11) NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(3, 2, 1),
(23, 8, 1),
(24, 3, 1),
(52, 6, 2),
(53, 6, 1),
(60, 7, 2),
(61, 7, 1),
(66, 4, 1),
(67, 1, 2),
(68, 1, 1),
(69, 1, 4),
(73, 10, 3),
(74, 10, 2),
(75, 10, 1),
(76, 10, 4),
(77, 9, 1),
(78, 11, 3),
(79, 11, 2),
(80, 11, 1),
(81, 11, 4),
(82, 5, 1),
(83, 13, 1),
(84, 14, 1),
(86, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2023-05-14 21:57:25', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2023-05-14 21:57:25', NULL, NULL),
(12, 'Redemption Code History', 'fa fa-desktop', 'g_c_lists', 'g_c_lists', 'AdminGCListsController', 0, 0, '2023-05-14 21:58:19', NULL, NULL),
(13, 'Valid IDs', 'fa fa-circle-o', 'id_types', 'id_types', 'AdminIdTypesController', 0, 0, '2023-05-15 17:06:36', NULL, NULL),
(14, 'Redemption Code History (True)', 'fa fa-users', 'redemption_history', 'g_c_lists', 'AdminGCListsHistoryController', 0, 0, '2023-05-15 18:01:27', NULL, NULL),
(15, 'QR Creation', 'fa fa-qrcode', 'qr_creations', 'qr_creations', 'AdminQrCreationsController', 0, 0, '2023-05-19 00:20:05', NULL, NULL),
(16, 'Update Email', 'fa fa-database', 'email_testings', 'email_testings', 'AdminEmailTestingsController', 0, 0, '2023-05-30 16:30:28', NULL, NULL),
(17, 'Store Concept', 'fa fa-circle-o', 'store_concepts', 'store_concepts', 'AdminStoreConceptsController', 0, 0, '2023-06-04 18:31:33', NULL, NULL),
(18, 'Company  Name', 'fa fa-dashboard', 'company_ids', 'company_ids', 'AdminCompanyIdsController', 0, 0, '2023-06-07 17:40:51', NULL, NULL),
(19, 'Dashboard', 'fa fa-dashboard', 'company_dashboard', 'g_c_lists', 'AdminCompanyDashboardController', 0, 0, '2023-06-09 02:09:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-purple', '2023-05-14 21:57:25', NULL),
(2, 'Company', 0, 'skin-purple', NULL, NULL),
(3, 'Admin', 0, 'skin-purple', NULL, NULL),
(4, 'Viewer', 0, 'skin-purple', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(57, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(58, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(59, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(60, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(61, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(62, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(63, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(64, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(65, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(93, 1, 0, 0, 0, 0, 2, 19, NULL, NULL),
(94, 1, 1, 1, 1, 0, 2, 15, NULL, NULL),
(95, 1, 0, 1, 0, 0, 2, 12, NULL, NULL),
(96, 1, 1, 1, 1, 0, 2, 16, NULL, NULL),
(99, 1, 0, 0, 0, 0, 4, 19, NULL, NULL),
(100, 1, 0, 1, 0, 0, 4, 12, NULL, NULL),
(101, 1, 0, 0, 0, 0, 3, 19, NULL, NULL),
(102, 1, 0, 0, 0, 0, 3, 15, NULL, NULL),
(103, 1, 1, 1, 1, 0, 3, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2023-05-14 21:57:25', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2023-05-14 21:57:25', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2023-06/24e12207f2ffb998a351c0f090cfd1f3.png', 'upload_image', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'dam@digits.ph', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'smtp.gmail.com', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '587', 'text', NULL, 'default 25', '2023-05-14 21:57:25', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', 'dam@digits.ph', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', 'Dampassword2023', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'EGC', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2023-05-14 21:57:25', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2023-06/0deb80647d7d8239d5aa1de36da2ecf0.png', 'upload_image', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2023-05/f2615a55a685791c07c2433ccdd851ca.png', 'upload_image', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'false', 'select', 'true,false', NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'redemption-codes', '2023-05-15 18:53:36', '2023-05-15 18:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '30f474c6123aadc458058243a3ba7476', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Number of emails sent\",\"icon\":\"ion-checkmark\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/statistic_builder\\/show\\/redemption-codes\",\"sql\":\"SELECT COUNT(id) FROM g_c_lists\\r\\nWHERE email_is_sent = 1;\"}', '2023-05-15 18:53:48', NULL),
(3, 1, '61498bb0c16284d89a44dd1bb0495626', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Number of emails not sent\",\"icon\":\"ion-close\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/statistic_builder\\/show\\/redemption-codes\",\"sql\":\"SELECT COUNT(id) FROM g_c_lists\\r\\nWHERE email_is_sent IS NULL;\"}', '2023-06-10 18:56:24', NULL),
(5, 1, '266abfd2773de9b74e60c6e9c574a653', 'chartarea', 'area5', 0, NULL, '{\"name\":\"Email Uploads Per Day\",\"sql\":\"select COUNT(created_at) as value,date_format(created_at,\'%Y-%m-%d\') as label from g_c_lists where created_at > \'2021-01-01 00:00:00\' group by label order by label asc\",\"area_name\":\"Email Uploads Per Day\",\"goals\":\"0\"}', '2023-06-13 23:07:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_store_concept` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `id_store_concept`, `company_id`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Super Admin Crudbooster', 'uploads/1/2023-06/software_engineer.png', 'admin@crudbooster.com', '$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2', 1, NULL, NULL, '2023-05-14 21:57:25', '2023-06-13 21:48:35', 'Active'),
(2, 'Filinor Gunio', 'uploads/1/2023-06/software_engineer.png', 'fillgunio@digits.ph', '$2y$10$oT.lyvqMGaWSGTEuGIGs..hWTzTyHWiBA10NAaLSqL1SU.BFVv/Hi', 3, NULL, NULL, '2023-06-07 22:35:30', '2023-06-28 18:11:55', NULL),
(3, 'Moneymax', 'uploads/1/2023-06/teamwork.png', 'moneymax@mnymax.ph', '$2y$10$0q.op0d7G2693zzNSgvEJuRc9qasZdGckDiAkjuI3CQ8ibPxw/xlG', 2, NULL, '1', '2023-06-08 23:04:43', NULL, NULL),
(4, 'BPI', 'uploads/1/2023-06/man.png', 'bpi@digits.ph', '$2y$10$MWE.QrXqo7YdRyoxGW1/neosd.ieDuys/4DU4OpITRaf0Rp.aYVqq', 2, NULL, '2', '2023-06-08 23:46:51', NULL, NULL),
(5, 'MIke Rodelas', 'uploads/1/2023-06/software_engineer.png', 'mikerodelas@digits.ph', '$2y$10$GNyZWXn35bkjzKPEJjBx/.IQih2Y82tJ7WfcPaQzd7EH.3e4vHzuO', 1, NULL, NULL, '2023-06-13 21:41:41', NULL, NULL),
(6, 'Christoff Sy', 'uploads/1/2023-06/software_engineer.png', 'christoffsy@digits.ph', '$2y$10$llj23p6KSL8at8AUnNob2OheCgOSjL4dcjUVjIJcgekJaeoFK/m3G', 1, NULL, NULL, '2023-06-13 21:42:05', NULL, NULL),
(7, 'Patrick Punzalan', 'uploads/1/2023-06/software_engineer.png', 'patrickpunzalan@digits.ph', '$2y$10$OtQ3/1nYLTzS86wpL8OFh.ADQktl7wxI0JOra/DNh4CN3EGX9O/Xe', 1, NULL, NULL, '2023-06-13 21:48:12', NULL, NULL),
(8, 'Admin Control', 'uploads/7/2023-06/man.png', 'admin@digits.ph', '$2y$10$nc8mv8tkzvcFTTzlKlJvOOiKgOUC9joHsfXpdlhPYtlVLuSbW.1Si', 3, NULL, NULL, '2023-06-28 18:13:01', NULL, NULL),
(9, 'Moneymaxone', 'uploads/8/2023-06/man.png', 'moneymax1@mnymax.ph', '$2y$10$IkvZKjLLS4gjaLl6VLTJ9eO.HYvsmcEO8qArSCW4Z/bKAIvFCRj7m', 2, NULL, '1', '2023-06-28 18:58:55', NULL, NULL),
(10, 'Viewing Account', 'uploads/8/2023-07/management.png', 'viewing@digits.ph', '$2y$10$tUTPfo4qv1/TqcUEHfSYrOWmRJf2OQBHwONIlgPCedB3kjbQMcxNG', 4, NULL, '1', '2023-07-05 00:01:58', NULL, NULL),
(11, 'Viewing Account One', 'uploads/8/2023-07/management.png', 'viewing1@digits.ph', '$2y$10$NCfeUd.s6/zGlhbFm/J2DekYGWLiGpACpcJJ5vQbFcMn0wdkFBBdS', 4, NULL, '2', '2023-07-05 01:14:34', NULL, NULL),
(12, 'CATHERINE MATES', NULL, 'catherinemates@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(13, 'KRISTINE BELLE CAPILI', NULL, 'kristinebellecapili@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(14, 'FARRAH BACALSO', NULL, 'farrahbacalso@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(15, 'HAZELYNE T. ROMERO', NULL, 'hazelyneromero@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(16, 'KENNETH B. NAVARRO', NULL, 'kennethb.navarro@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(17, 'JUVYLYN BALES', NULL, 'juvylynbales@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(18, 'FRINCE ORDENIZA', NULL, 'frinceordeniza@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(19, 'SANDY A. DALISAY', NULL, 'sandya.dalisay@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(20, 'PAULA JEANNE PAGADUAN', NULL, 'paulajeannepagaduan@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(21, 'JOHN MICHAEL PEREZ', NULL, 'johnmichaelperez@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(22, 'JOHUM SIMSON', NULL, 'johumsimson@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(23, 'MARJOHN CABRAL', NULL, 'marjohncabral@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(24, 'MARIA ESTELA SONIEGA', NULL, 'mariaestelasoniega@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(25, 'CHAD RIVERA', NULL, 'chadrivera@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(26, 'JOEFIANA EDORA EGAT', NULL, 'joefianaedoraegat@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(27, 'JAYSON AGUILAR', NULL, 'jaysonaguilar@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(28, 'MARY GRACE FABRIGAS', NULL, 'marygracefabrigas@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(29, 'JERBE G. BOLITO', NULL, 'jerbebolito@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(30, 'DIANNE PIROMINGAN', NULL, 'diannepiromingan@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(31, 'JEFFREY TEJERESAS', NULL, 'jeffreytejeresas@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(32, 'CRISTINE NAVARRO', NULL, 'cristinenavarro@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(33, 'ROWELA PAROHINOG', NULL, 'rowelaparohinog@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(34, 'NORFA ABISON', NULL, 'norfaabison@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(35, 'ARCHIE TINDUGAN', NULL, 'archietindugan@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(36, 'JOHN LIMUEL ASOMBRADO', NULL, 'johnlimuelasombrado@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(37, 'RODERICK ROMERA', NULL, 'roderickromera@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(38, 'MARY ANN EBUAN', NULL, 'maryannebuan@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(39, 'LIEZEL CONCON', NULL, 'liezelconcon@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(40, 'BRIAN NATAN', NULL, 'briannatan@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(41, 'MHAILA ZAFE', NULL, 'mhailazafe@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(42, 'JESSICA ANNE BUNGALON', NULL, 'jessicaannebungalon@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(43, 'EVELYN LAYONG', NULL, 'evelynlayong@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(44, 'MARY JANE TICMAN', NULL, 'maryjaneticman@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(45, 'GERMAINE JOY ELA', NULL, 'germainejoyela@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(46, 'EDELYN JOY NABONG', NULL, 'edelynjoynabong@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(47, 'MARICHU VALLIENTE', NULL, 'marichuvalliente@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(48, 'MARICAR GAPATE', NULL, 'maricargapate@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(49, 'SHALIE COLORICO', NULL, 'shaliecolorico@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(50, 'GLADES FAMINIAL', NULL, 'gladesfaminial@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(51, 'JAN MICHAEL G. SISON', NULL, 'janmichaelsison@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(52, 'LENIE L. ESQUILLO', NULL, 'lenieesquillo@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(53, 'JAY WORELL GAMAT', NULL, 'jayworellgamat@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(54, 'JOCEL SEGAYA', NULL, 'jocelsegaya@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(55, 'JULIE ANN ESCALA', NULL, 'julieannescala@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(56, 'JOYCE ANN MAGDURULANG', NULL, 'joyceannmagdurulang@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(57, 'JASMINE SANTOS', NULL, 'jasminesantos@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(58, 'ROEN RECIO', NULL, 'roenrecio@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(59, 'MHERVY MERCADO', NULL, 'mhervymercado@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(60, 'JEFFERSON ESPAÑOLA', NULL, 'jeffersonespañola@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(61, 'BELLE VI ÑA', NULL, 'bellevina@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(62, 'MARY JOY MONDEJAR', NULL, 'maryjoymondejar@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(63, 'SHELLA MAE MANCERA', NULL, 'shellamaemancera@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(64, 'ARTHUR L. BERY', NULL, 'arthurbery@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(65, 'MOLINA SUALOG', NULL, 'molinasualog@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(66, 'JEMI ECLEVIA', NULL, 'jemieclevia@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(67, 'MARY JOY EBUAN', NULL, 'maryjoyebuan@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(68, 'ALYSSA JEAN GUIA', NULL, 'alyssajeanguia@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(69, 'JOMELYN ABADIANO', NULL, 'jomelynabadiano@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(70, 'JENNIFER TOLENTINO', NULL, 'jennifertolentino@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(71, 'HENRY VALDEZ', NULL, 'henryvaldez@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(72, 'MARY ANN ALCORIZA', NULL, 'maryannalcoriza@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(73, 'JOANA PALANA', NULL, 'joanapalana@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(74, 'STEPHANIE GUIRALDO', NULL, 'stephanieguiraldo@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(75, 'NOVERLYN CABUEN', NULL, 'noverlyncabuen@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(76, 'ANGELITA TRUPA', NULL, 'angelitatrupa@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(77, 'NOLEVIE BIASA', NULL, 'noleviebiasa@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(78, 'JHEANNEL CUYO', NULL, 'jheannelcuyo@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(79, 'LIEZEL REMO', NULL, 'liezelremo@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:07:06', NULL, NULL),
(80, 'ALVIN SACBIBIT', NULL, 'alvinsacbibit@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(81, 'ROMNITH LEBAJO', NULL, 'romnithlebajo@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(82, 'ROSALINDA CORUZ', NULL, 'rosalindacoruz@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(83, 'JEZALYN SARMINETO', NULL, 'jezalynsarmineto@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(84, 'PRINCESS ANA VILLA', NULL, 'princessanavilla@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(85, 'JANESSA APOLINARIO', NULL, 'janessaapolinario@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(86, 'REYNALDO JACINTO', NULL, 'reynaldojacinto@digitalwalker.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(87, 'MARIA RIZA MARFIL', NULL, 'mariarizamarfil@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(88, 'JASPER REYES', NULL, 'jasperreyes@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(89, 'HARIETE BACALTOS', NULL, 'harietebacaltos@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(90, 'DEXTER JAMOLIN', NULL, 'dexterjamolin@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(91, 'NOLYBOY CALLO', NULL, 'nolyboycallo@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(92, 'MARY JANE PABLO', NULL, 'maryjanepablo@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(93, 'CINDY MARIE AGUADO', NULL, 'cindymarieaguado@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(94, 'JOYCE ANN ROSALITA', NULL, 'joyceannrosalita@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(95, 'JOSIE ALARCIO', NULL, 'josiealarcio@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(96, 'RAYMUND BUGARIN', NULL, 'raymundbugarin@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(97, 'ADRIAN MAGALLANES', NULL, 'adrianmagallanes@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(98, 'DHARLYN CABIGTING', NULL, 'dharlyncabigting@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(99, 'KAYLA MAE MUPAL', NULL, 'kaylamaemupal@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(100, 'LAYSA SANDIGAN', NULL, 'laysasandigan@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(101, 'BELLA FLORES', NULL, 'bellaflores@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(102, 'KEVIN OLBES', NULL, 'kevinolbes@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(103, 'JOSSA RELOJ', NULL, 'jossareloj@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(104, 'CRISTINA URGENA', NULL, 'cristinaurgena@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(105, 'REYNALDO CARDINES', NULL, 'reynaldocardines@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(106, 'SHERWIN SOTTO', NULL, 'sherwinsotto@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(107, 'ARJAY M. CALLUENG', NULL, 'arjaycallueng@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(108, 'ALVIR COLANTRO', NULL, 'alvircolantro@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(109, 'JAN LOUIE VERGARA', NULL, 'janlouievergara@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(110, 'ADRIAN HERMONO', NULL, 'adrianhermono@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(111, 'JESSIE DIGA', NULL, 'jessiediga@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(112, 'LANIE TORRES', NULL, 'lanietorres@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(113, 'MARY GRACE SEVILLA', NULL, 'marygracesevilla@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(114, 'JOANNA O.FLORES', NULL, 'joannaflores@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(115, 'FERNANDO ASIROT', NULL, 'fernandoasirot@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(116, 'CORAZON FLORIANNE LADIA', NULL, 'corazonflorianneladia@beyondthebox.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(117, 'KHRISTIAN CARL SAMSON', NULL, 'khristiancarlsamson@xiaomi.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL),
(118, 'LIZANDRO MIRANDA', NULL, 'lizandromiranda@xiaomi.ph', NULL, NULL, NULL, NULL, '2023-07-11 23:09:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_ids`
--

CREATE TABLE `company_ids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_ids`
--

INSERT INTO `company_ids` (`id`, `company_name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Moneymax', 'ACTIVE', 1, NULL, '2023-06-08 01:45:19', NULL, NULL),
(2, 'BPI', 'ACTIVE', 1, NULL, '2023-06-08 09:42:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_template_img`
--

CREATE TABLE `email_template_img` (
  `id` int(11) NOT NULL,
  `header_id` int(11) DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ext` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `archived` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_template_img`
--

INSERT INTO `email_template_img` (`id`, `header_id`, `file_name`, `ext`, `created_by`, `archived`, `created_at`, `updated_at`) VALUES
(3, 2, '2-169666541128.png', 'png', 7, NULL, '2023-10-07 07:56:51', '2023-10-07 07:56:51'),
(4, 3, '3-169666584138.png', 'png', 7, NULL, '2023-10-07 08:04:01', '2023-10-07 08:04:01'),
(5, 3, '3-16966658412.png', 'png', 7, NULL, '2023-10-07 08:04:01', '2023-10-07 08:04:01'),
(7, 1, '1-169666590310.png', 'png', 7, NULL, '2023-10-07 08:05:03', '2023-10-07 08:05:03'),
(8, 1, '1-169666590330.png', 'png', 7, NULL, '2023-10-07 08:05:03', '2023-10-07 08:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `email_testings`
--

CREATE TABLE `email_testings` (
  `id` int(11) NOT NULL,
  `title_of_the_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_of_the_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_email` text COLLATE utf8mb4_unicode_ci,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_testings`
--

INSERT INTO `email_testings` (`id`, `title_of_the_email`, `subject_of_the_email`, `html_email`, `company_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Template 1 edits', 'Test 1 Sub', '<p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>We kindly ask you to bring a valid government ID when redeeming your code. This is necessary for identification purposes and to ensure a smooth and secure process. We also request that you review the terms and conditions that apply to the code redemption process. You can find the detailed terms and conditions by visiting the following link: [Insert link to terms and conditions]</p><p></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p>', NULL, 7, 7, '2023-10-07 07:17:08', '2023-10-07 08:05:03', NULL),
(2, 'Template 2', 'Test Sub 2', '<p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>We kindly ask you to bring a valid government ID when redeeming your code. This is necessary for identification purposes and to ensure a smooth and secure process. We also request that you review the terms and conditions that apply to the code redemption process. You can find the detailed terms and conditions by visiting the following link: [Insert link to terms and conditions]</p><p></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p>', NULL, 7, NULL, '2023-10-07 07:56:51', NULL, NULL),
(3, 'Template 3', 'Test sub 3', '<p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>We kindly ask you to bring a valid government ID when redeeming your code. This is necessary for identification purposes and to ensure a smooth and secure process. We also request that you review the terms and conditions that apply to the code redemption process. You can find the detailed terms and conditions by visiting the following link: [Insert link to terms and conditions]</p><p></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p>', NULL, 7, 7, '2023-10-07 08:04:01', '2023-10-07 11:02:20', NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g_c_lists`
--

CREATE TABLE `g_c_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template_id` int(100) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_is_sent` int(11) DEFAULT '0',
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fetch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_reference_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_reference_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_concept` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redeem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploaded_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cashier_date_transact` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `g_c_lists`
--

INSERT INTO `g_c_lists` (`id`, `campaign_id`, `email_template_id`, `name`, `phone`, `email`, `email_is_sent`, `id_number`, `id_type`, `is_fetch`, `customer_reference_number`, `qr_reference_number`, `store_concept`, `invoice_number`, `redeem`, `uploaded_img`, `status`, `cashier_name`, `cashier_date_transact`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, 'Patrick Punzalan', '12311', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'B1u3B2iMeE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 07:31:01', '2023-08-14 07:33:53'),
(2, '1', NULL, 'Filinor Gunio', '41811', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', '34120fd', '2KecMiGOSx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 07:31:01', '2023-08-14 07:33:53'),
(3, '1', NULL, 'Gabriel Quing', '21883', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'vzv-wq1', 'Su7ZpfBik2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 07:31:01', '2023-08-14 07:33:53'),
(4, '1', NULL, 'Piolo Arabis', '18113', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-f1', 'CPlmtOVeTH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 07:31:01', '2023-08-14 07:33:53'),
(5, '1', NULL, 'Piolo Pascual', '64344', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fadfa=21', 'ZpMVZXkHOe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 07:31:01', '2023-08-14 07:33:53'),
(6, '1', NULL, 'Edna Barbara', '83932', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fdaf-a21', 'MOR4ctRn1n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 07:31:01', '2023-08-14 07:33:53'),
(7, '1', NULL, 'Princess Punzalan', '93934', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'kljlkwq=12', '4PnPjK7Sii', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 07:31:01', '2023-08-14 07:33:53'),
(8, '1', NULL, 'Fhilip Acosta', '33833', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fdaf2=11', 'RpHsbhlaZ5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-14 07:31:01', '2023-08-14 07:33:53'),
(9, '1', NULL, 'Mike Rodelas', '38439', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fkdlaf-12', 'RVNwUlUpmw', NULL, NULL, NULL, NULL, 'CLAIMED', NULL, NULL, '2023-08-14 07:31:01', '2023-08-14 07:35:36'),
(10, '2', NULL, 'Patrick Punzalan', '12311', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'JkjrO5nCxT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 02:31:18', '2023-08-15 02:37:24'),
(11, '2', NULL, 'Filinor Gunio', '41811', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', '34120fd', '8BSjBZxDPN', NULL, NULL, NULL, NULL, 'CLAIMED', NULL, NULL, '2023-08-15 02:31:18', '2023-08-15 02:37:24'),
(12, '2', NULL, 'Gabriel Quing', '21883', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'vzv-wq1', 'pXg7cyceLX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 02:31:18', '2023-08-15 02:37:24'),
(13, '2', NULL, 'Piolo Arabis', '18113', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-f1', 'UmxHfjCW0p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 02:31:18', '2023-08-15 02:37:24'),
(14, '2', NULL, 'Piolo Pascual', '64344', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fadfa=21', '8Kz275L1pg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 02:31:18', '2023-08-15 02:37:24'),
(15, '2', NULL, 'Edna Barbara', '83932', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fdaf-a21', 'N6qOAfhxPI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 02:31:18', '2023-08-15 02:37:24'),
(16, '2', NULL, 'Princess Punzalan', '93934', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'kljlkwq=12', 'BMXbG338Ts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 02:31:18', '2023-08-15 02:37:24'),
(17, '2', NULL, 'Fhilip Acosta', '33833', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fdaf2=11', 'MU2G15CX5U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 02:31:18', '2023-08-15 02:37:24'),
(18, '2', NULL, 'Mike Rodelas', '38439', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fkdlaf-12', 'C01tcwIrHN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 02:31:18', '2023-08-15 02:37:24'),
(19, '2', NULL, 'Patrick Punzalan', '12311', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'i6QchtuAYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:53:25', '2023-08-15 05:46:04'),
(20, '2', NULL, 'Filinor Gunio', '41811', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', '34120fd', 'vRiV4SKyZh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:53:25', '2023-08-15 05:46:04'),
(21, '2', NULL, 'Gabriel Quing', '21883', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'vzv-wq1', '2tTdHbA3L7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:53:25', '2023-08-15 05:46:04'),
(22, '2', NULL, 'Piolo Arabis', '18113', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-f1', 'mVTojDyGsJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:53:25', '2023-08-15 05:46:04'),
(23, '2', NULL, 'Piolo Pascual', '64344', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fadfa=21', 'sH9BaKwpGD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:53:25', '2023-08-15 05:46:04'),
(24, '2', NULL, 'Edna Barbara', '83932', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fdaf-a21', 'EISEa3iAow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:53:25', '2023-08-15 05:46:04'),
(25, '2', NULL, 'Princess Punzalan', '93934', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'kljlkwq=12', 'LAFMX59zuT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:53:25', '2023-08-15 05:46:04'),
(26, '2', NULL, 'Fhilip Acosta', '33833', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fdaf2=11', 'sPSeJZ0aT7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:53:25', '2023-08-15 05:46:04'),
(27, '2', NULL, 'Mike Rodelas', '38439', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fkdlaf-12', 'iHAB4nnmKl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:53:25', '2023-08-15 05:46:04'),
(28, '2', NULL, 'Patrick Punzalan', '12311', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'XS2ocnfGqL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-15 03:58:10', '2023-08-15 05:46:04'),
(29, '3', NULL, 'Patrick Punzalan', '12311', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'cF3rTaQG40', NULL, NULL, NULL, NULL, 'CLAIMED', NULL, NULL, '2023-08-16 03:00:29', '2023-08-16 03:06:30'),
(30, '1', NULL, 'Lois Fernando', '12311', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'N9kqXIY3mP', NULL, NULL, NULL, NULL, 'CLAIMED', NULL, NULL, '2023-08-16 05:25:02', '2023-08-16 05:42:10'),
(31, '2', NULL, 'Yuneza Claire Mortos', '9162097072', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'WKxAjOJ89s', NULL, NULL, NULL, NULL, 'CLAIMED', NULL, NULL, '2023-08-16 05:25:52', '2023-08-16 05:44:21'),
(32, '3', NULL, 'Jeruel Arenas', '916205729', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'ysC5C83Pap', NULL, NULL, NULL, NULL, 'CLAIMED', NULL, NULL, '2023-08-16 05:26:24', '2023-08-17 02:53:29'),
(33, '4', NULL, 'Ferndando Ilustre', '916205729', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'haZweYIxBp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-17 03:05:35', '2023-08-17 03:10:25'),
(34, '4', NULL, 'Ferndando Ilustre', '916205729', 'ptice.0318@gmail.com', 1, NULL, NULL, '1', 'fda-fqk2', 'tz6RhSv19e', NULL, NULL, NULL, NULL, 'CLAIMED', NULL, NULL, '2023-08-17 03:07:21', '2023-08-17 03:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `id_types`
--

CREATE TABLE `id_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `valid_ids` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `id_types`
--

INSERT INTO `id_types` (`id`, `valid_ids`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'PASSPORT', 'ACTIVE', 1, NULL, '2023-05-28 17:08:00', NULL, NULL),
(2, 'DRIVER\'S LICENSE', 'ACTIVE', 1, NULL, '2023-05-28 17:08:06', NULL, NULL),
(3, 'UMID', 'ACTIVE', 1, NULL, '2023-05-28 17:08:10', NULL, NULL),
(4, 'NATIONAL ID', 'ACTIVE', 1, NULL, '2023-05-28 17:08:15', NULL, NULL),
(5, 'PRC ID', 'ACTIVE', 1, NULL, '2023-05-28 17:08:19', NULL, NULL),
(6, 'SENIOR CITIZEN ID', 'ACTIVE', 1, NULL, '2023-05-28 17:08:23', NULL, NULL),
(7, 'OFW ID', 'ACTIVE', 1, NULL, '2023-05-28 17:08:26', NULL, NULL),
(8, 'VOTER\'S ID', 'ACTIVE', 1, NULL, '2023-05-28 17:08:30', NULL, NULL),
(9, 'PWD ID', 'ACTIVE', 1, NULL, '2023-05-28 17:08:34', NULL, NULL),
(10, 'VOTER\'S ID FROM COMELEC', 'ACTIVE', 1, NULL, '2023-05-28 17:08:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"a554d6db-9198-44cc-bbfc-8f62d781bb26\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696655632, 1696655632),
(2, 'default', '{\"uuid\":\"887fd7ff-fbdc-4611-981e-2b6d1394f6f4\",\"displayName\":\"App\\\\Jobs\\\\GCListFetchJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GCListFetchJob\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\GCListFetchJob\\\":11:{s:15:\\\"\\u0000*\\u0000gc_list_data\\\";N;s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696655640, 1696655640),
(3, 'default', '{\"uuid\":\"1377b3c5-d18b-4bc4-8f99-e7561c7b5297\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696655643, 1696655643),
(4, 'default', '{\"uuid\":\"54c477ab-b540-48fe-b931-539fe73b550e\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696664404, 1696664404),
(5, 'default', '{\"uuid\":\"d14abd64-cea9-4b91-9178-205e67f4dd87\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696665933, 1696665933),
(6, 'default', '{\"uuid\":\"39640b2b-d570-4c2a-8a90-4686e83b4bdd\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696665941, 1696665941),
(7, 'default', '{\"uuid\":\"a24e6b5e-d588-4ed3-8142-1c5a974e4424\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696666055, 1696666055),
(8, 'default', '{\"uuid\":\"d8f97421-4752-46cc-8310-77efff834b8e\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696668228, 1696668228),
(9, 'default', '{\"uuid\":\"e0d4c453-55f1-4119-9872-dfafcc8afd5f\",\"displayName\":\"App\\\\Jobs\\\\StoreConceptFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\StoreConceptFetchApi\",\"command\":\"O:29:\\\"App\\\\Jobs\\\\StoreConceptFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696671962, 1696671962),
(10, 'default', '{\"uuid\":\"e70a6a04-0bbd-475e-bfc1-7868934b3f0e\",\"displayName\":\"App\\\\Jobs\\\\CompanyIdsJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CompanyIdsJob\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\CompanyIdsJob\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696671962, 1696671962),
(11, 'default', '{\"uuid\":\"b4893e7f-3b4e-4554-819b-dfa79aadd8e3\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696671962, 1696671962),
(12, 'default', '{\"uuid\":\"790b3b77-173c-42b8-ba8c-7c0cc1a16e22\",\"displayName\":\"App\\\\Jobs\\\\GCListFetchJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GCListFetchJob\",\"command\":\"O:23:\\\"App\\\\Jobs\\\\GCListFetchJob\\\":11:{s:15:\\\"\\u0000*\\u0000gc_list_data\\\";N;s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696671962, 1696671962),
(13, 'default', '{\"uuid\":\"b492cd14-602d-4152-ba08-5a76c5276e1e\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696671967, 1696671967),
(14, 'default', '{\"uuid\":\"95215cf8-673b-4e32-86ef-39ece1977bb4\",\"displayName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":10,\"maxExceptions\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\CampaignCreationFetchApi\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\CampaignCreationFetchApi\\\":10:{s:5:\\\"tries\\\";i:10;s:8:\\\"maxTries\\\";i:10;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1696676981, 1696676981);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(61, '2014_10_12_000000_create_users_table', 1),
(62, '2016_08_07_145904_add_table_cms_apicustom', 1),
(63, '2016_08_07_150834_add_table_cms_dashboard', 1),
(64, '2016_08_07_151210_add_table_cms_logs', 1),
(65, '2016_08_07_151211_add_details_cms_logs', 1),
(66, '2016_08_07_152014_add_table_cms_privileges', 1),
(67, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(68, '2016_08_07_152320_add_table_cms_settings', 1),
(69, '2016_08_07_152421_add_table_cms_users', 1),
(70, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(71, '2016_08_07_154624_add_table_cms_moduls', 1),
(72, '2016_08_17_225409_add_status_cms_users', 1),
(73, '2016_08_20_125418_add_table_cms_notifications', 1),
(74, '2016_09_04_033706_add_table_cms_email_queues', 1),
(75, '2016_09_16_035347_add_group_setting', 1),
(76, '2016_09_16_045425_add_label_setting', 1),
(77, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(78, '2016_10_01_141740_add_method_type_apicustom', 1),
(79, '2016_10_01_141846_add_parameters_apicustom', 1),
(80, '2016_10_01_141934_add_responses_apicustom', 1),
(81, '2016_10_01_144826_add_table_apikey', 1),
(82, '2016_11_14_141657_create_cms_menus', 1),
(83, '2016_11_15_132350_create_cms_email_templates', 1),
(84, '2016_11_15_190410_create_cms_statistics', 1),
(85, '2016_11_17_102740_create_cms_statistic_components', 1),
(86, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(87, '2019_08_19_000000_create_failed_jobs_table', 1),
(88, '2023_05_10_030926_create_g_c_lists_table', 1),
(93, '2023_05_16_004704_create_id_types_table', 2),
(94, '2023_05_19_075654_create_qr_creations_table', 2),
(95, '2023_05_26_013039_create_jobs_table', 3),
(99, '2023_05_31_002918_create_email_testings_table', 4),
(102, '2023_06_05_022134_create_store_concepts_table', 5),
(104, '2023_06_05_025515_add_column_to_cms_users_table', 6),
(105, '2023_06_06_092027_add_company_id_to_cms_users', 7),
(107, '2023_06_06_092141_create_company_ids_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `qr_creations`
--

CREATE TABLE `qr_creations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gc_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gc_value` int(11) DEFAULT NULL,
  `number_of_gcs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_limit_control` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_status` int(11) DEFAULT NULL,
  `title_of_the_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_of_the_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_email_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_email` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qr_creations`
--

INSERT INTO `qr_creations` (`id`, `status_id`, `campaign_id`, `gc_description`, `gc_value`, `number_of_gcs`, `batch_number`, `batch_group`, `company_id`, `upload_limit`, `upload_limit_control`, `store_logo`, `campaign_status`, `title_of_the_email`, `subject_of_the_email`, `html_email_img`, `html_email`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'Laptop Voucher Sale', 'Laptop Promo DW Voucher', 17500, '1,2,3', '100', '1', '1', NULL, '90', '1', 3, 'Laptop Voucher Sale', 'Laptop Digital Walker Promo', 'email_img1.jpg', NULL, 3, NULL, '2023-08-14 07:24:39', '2023-08-16 05:25:02'),
(2, '1', 'Computer Gift Card 9999 Discount', 'Computer Promo Sale RGB', 9999, '1,2', '100', '1', '1', NULL, '80', '2', 3, 'Computer Promo 2023', 'Computer Voucher 9999', 'email_img_Computer Voucher 9999.jpg', NULL, 3, NULL, '2023-08-15 02:26:08', '2023-08-16 05:25:52'),
(3, '1', '123-456', 'Rakk Keyboard discount', 500, '2', '100', '1', '1', NULL, '98', '3', 3, 'Rak Keyboard Promo 2023', 'Rak Keyboard Promo', 'email_img_Rak Keyboard Promo.jpg', NULL, 3, NULL, '2023-08-16 02:37:31', '2023-08-16 05:26:24'),
(4, '1', '789-876', 'Tea Cup', 200, '1', '100', '1', '1', NULL, '98', '3', 3, 'Test', 'Test', NULL, '<h2 style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 700;\">QR Code Redemption</span></h2><p>Dear [name],</p><p>We are pleased to provide you with your exclusive QR code for redemption. This QR code represents exciting offers and discounts that you can avail yourself of at our selected stores. Simply present this QR code at the designated store to claim your special offers.</p><p>QR Information</p><p>[qr_code]</p><p>Campaign ID: [campaign_id]</p><p>GC Description: [gc_description]</p><p>We kindly ask you to bring a valid government ID when redeeming your code. This is necessary for identification purposes and to ensure a smooth and secure process. We also request that you review the terms and conditions that apply to the code redemption process. You can find the detailed terms and conditions by visiting the following link: [Insert link to terms and conditions]</p><p></p><p>If you have any questions or need assistance, please don\'t hesitate to contact our customer support team. We are here to ensure a smooth and rewarding redemption experience for you.</p><p>Thank you for choosing our services. We appreciate your business and look forward to serving you again in the future.</p><p><br></p><p>Best regards,</p><p>BPG Department</p><p>Digits Trading Corp</p>', 3, NULL, '2023-08-16 02:45:58', '2023-08-17 03:07:21');

-- --------------------------------------------------------

--
-- Table structure for table `store_concepts`
--

CREATE TABLE `store_concepts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcompanyid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVE',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_concepts`
--

INSERT INTO `store_concepts` (`id`, `name`, `fcompanyid`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'DW MACHINES TRINOMA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(2, 'DW ABREEZA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(3, 'DW THE BAY', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(4, 'DW AYALA CEBU', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(5, 'DW GLORIETTA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(6, 'DW ONE BONIFACIO', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(7, 'DW THE 30TH', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(8, 'DW TRINOMA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(9, 'DW CAGAYAN', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(10, 'DW VMALL', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(11, 'DW EASTWOOD', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(12, 'DW UPTOWN', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(13, 'DW OKADA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(14, 'DW ERMITA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(15, 'DW ROCKWELL', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(16, 'DW SHANGRILA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(17, 'DW SM AURA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(18, 'DW BAGUIO', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(19, 'DW SM CEBU', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(20, 'DW MOA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(21, 'DW SM NORTH', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(22, 'DW SOUTHMALL', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(23, 'DW CONRAD', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(24, 'DW PODIUM', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(25, 'DW OUTLET LIPA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(26, 'DW MACHINES ROCKWELL', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(27, 'DW MEGAMALL', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(28, 'DW STA MESA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(29, 'DW GRAND CENTRAL', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(30, 'DW GALLERIA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(31, 'DW LA UNION', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(32, 'DW ZAMBOANGA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(33, 'DW SM TANZA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(34, 'DW AYALA SERENE', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(35, 'DW ROB ANTIPOLO', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(36, 'DW EVIA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(37, 'DW GREENBELT 5', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(38, 'DW BHS', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(39, 'DW SM TELABASTAGAN', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(40, 'BTB ERMITA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(41, 'BTB VMALL', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(42, 'BTB UPTOWN', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(43, 'BTB CENTURY', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(44, 'BTB BAGUIO', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(45, 'BTB GALLERIA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(46, 'BTB VERANZA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(47, 'BTB RESORTSWORLD', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(48, 'BTB SOUTHWOODS', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(49, 'BTB COD', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(50, 'BTB PIAZZA', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(51, 'BTB NOMO', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(52, 'BTB CLARK', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(53, 'BTB MITSUKOSHI', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(54, 'BTB MALOLOS', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL),
(55, 'XIAOMI CIRCUIT', NULL, 'ACTIVE', 1, NULL, NULL, '2023-07-11 01:05:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
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
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_ids`
--
ALTER TABLE `company_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_template_img`
--
ALTER TABLE `email_template_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_testings`
--
ALTER TABLE `email_testings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_c_lists`
--
ALTER TABLE `g_c_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id_types`
--
ALTER TABLE `id_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`(191));

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qr_creations`
--
ALTER TABLE `qr_creations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_concepts`
--
ALTER TABLE `store_concepts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=773;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `email_template_img`
--
ALTER TABLE `email_template_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_testings`
--
ALTER TABLE `email_testings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
