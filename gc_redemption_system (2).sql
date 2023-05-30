-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 11:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gc_redemption_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) DEFAULT NULL,
  `tabel` varchar(255) DEFAULT NULL,
  `aksi` varchar(255) DEFAULT NULL,
  `kolom` varchar(255) DEFAULT NULL,
  `orderby` varchar(255) DEFAULT NULL,
  `sub_query_1` varchar(255) DEFAULT NULL,
  `sql_where` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `parameter` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL,
  `responses` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
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
  `email_recipient` varchar(255) DEFAULT NULL,
  `email_from_email` varchar(255) DEFAULT NULL,
  `email_from_name` varchar(255) DEFAULT NULL,
  `email_cc_email` varchar(255) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_content` text DEFAULT NULL,
  `email_attachments` text DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `cc_email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2023-05-14 21:57:25', NULL),
(2, 'QR Reference Number', 'send_qr', 'QR Reference Number Link', '<p>Good morning,</p><p>[qr_code]</p>', '[qr_code]', NULL, NULL, NULL, '2023-05-16 17:31:37', '2023-05-16 17:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) DEFAULT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
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
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.57', 'http://127.0.0.1:8000/admin/g_c_lists/action-selected', 'Delete data 3,2,1 at Redemption Code', '', 1, '2023-05-29 23:45:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'url',
  `path` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Redemption Code', 'Route', 'AdminGCListsControllerGetIndex', 'normal', 'fa fa-credit-card', 0, 1, 0, 1, 3, '2023-05-14 21:58:19', '2023-05-15 18:08:46'),
(2, 'Submaster Module', 'URL', '#', 'normal', 'fa fa-list', 0, 1, 0, 1, 5, '2023-05-15 16:45:36', NULL),
(3, 'Valid IDs', 'Route', 'AdminIdTypesControllerGetIndex', NULL, 'fa fa-circle-o', 2, 1, 0, 1, 1, '2023-05-15 17:06:36', NULL),
(4, 'Redemption Code History', 'Route', 'AdminGCListsHistoryControllerGetIndex', 'normal', 'fa fa-folder', 0, 1, 0, 1, 4, '2023-05-15 18:01:27', '2023-05-15 18:07:50'),
(5, 'Dashboard', 'Statistic', 'statistic_builder/show/redemption-codes', 'normal', 'fa fa-credit-card', 0, 1, 1, 1, 1, '2023-05-15 22:21:27', '2023-05-16 15:56:35'),
(6, 'QR Creation', 'Route', 'AdminQrCreationsControllerGetIndex', 'normal', 'fa fa-envelope', 0, 1, 0, 1, 2, '2023-05-19 00:20:05', '2023-05-19 00:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(3, 2, 1),
(4, 3, 1),
(7, 4, 1),
(9, 1, 1),
(11, 5, 1),
(13, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
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
(12, 'Redemption Code', 'fa fa-credit-card', 'g_c_lists', 'g_c_lists', 'AdminGCListsController', 0, 0, '2023-05-14 21:58:19', NULL, NULL),
(13, 'Valid IDs', 'fa fa-circle-o', 'id_types', 'id_types', 'AdminIdTypesController', 0, 0, '2023-05-15 17:06:36', NULL, NULL),
(14, 'Redemption Code History', 'fa fa-folder', 'redemption_history', 'g_c_lists', 'AdminGCListsHistoryController', 0, 0, '2023-05-15 18:01:27', NULL, NULL),
(15, 'QR Creation', 'fa fa-envelope', 'qr_creations', 'qr_creations', 'AdminQrCreationsController', 0, 0, '2023-05-19 00:20:05', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-purple', '2023-05-14 21:57:25', NULL);

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
(35, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(36, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(37, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(38, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(39, 1, 1, 1, 1, 1, 1, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `content_input_type` varchar(255) DEFAULT NULL,
  `dataenum` varchar(255) DEFAULT NULL,
  `helper` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', '2023-05-14 21:57:25', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', '2023-05-14 21:57:25', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'punzalan2233@gmail.com', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'smtp.gmail.com', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '587', 'text', NULL, 'default 25', '2023-05-14 21:57:25', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', 'punzalan2233@gmail.com', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', 'exwfzcyuhrlcveav', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'E GC REDEMPTION', 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2023-05-14 21:57:25', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', NULL, 'upload_image', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2023-05/f2615a55a685791c07c2433ccdd851ca.png', 'upload_image', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', NULL, 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2023-05-14 21:57:25', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
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
  `componentID` varchar(255) DEFAULT NULL,
  `component_name` varchar(255) DEFAULT NULL,
  `area_name` varchar(55) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, '30f474c6123aadc458058243a3ba7476', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Number of Codes to Redeem\",\"icon\":\"icons\",\"color\":\"bg-yellow\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/g_c_lists\",\"sql\":\"SELECT COUNT(id) FROM g_c_lists\\r\\nWHERE invoice_number IS NULL\\r\\nAND (status != \'EXPIRED\' OR status IS NULL)\"}', '2023-05-15 18:53:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Patrick Punzalan', 'uploads/1/2023-05/patrick.jpg', 'admin@crudbooster.com', '$2y$10$GI7zeuCzBFbtbMemlS1Kd.Lg306nbV/wQHQCPNdttQrGXeBk48Ho2', 1, '2023-05-14 21:57:25', '2023-05-25 00:14:37', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `g_c_lists`
--

CREATE TABLE `g_c_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_is_sent` int(11) DEFAULT 0,
  `id_number` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) DEFAULT NULL,
  `other_id_type` varchar(255) DEFAULT NULL,
  `customer_reference_number` varchar(255) DEFAULT NULL,
  `qr_reference_number` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `redeem` varchar(255) DEFAULT NULL,
  `uploaded_img` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `cashier_name` varchar(255) DEFAULT NULL,
  `cashier_date_transact` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `id_types`
--

CREATE TABLE `id_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `valid_ids` varchar(255) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') DEFAULT 'ACTIVE',
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
(95, '2023_05_26_013039_create_jobs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `qr_creations`
--

CREATE TABLE `qr_creations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` varchar(255) DEFAULT NULL,
  `gc_description` varchar(255) DEFAULT NULL,
  `gc_value` int(11) DEFAULT NULL,
  `number_of_gcs` int(11) DEFAULT NULL,
  `batch_number` varchar(255) DEFAULT NULL,
  `batch_group` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g_c_lists`
--
ALTER TABLE `g_c_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_types`
--
ALTER TABLE `id_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `qr_creations`
--
ALTER TABLE `qr_creations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
