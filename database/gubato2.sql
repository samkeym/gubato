-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 24, 2017 at 05:51 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gubato2`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminnotification_inbox`
--

CREATE TABLE `adminnotification_inbox` (
  `notification_id` int(10) UNSIGNED NOT NULL COMMENT 'Notification id',
  `severity` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

--
-- Dumping data for table `adminnotification_inbox`
--

INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 1, '2016-09-20 16:28:28', 'Important Updates for WeltPixel Products', ' In the past months we made multiple product improvements and added new features, we hope you will find them useful. You can download the latest release from your account. Leave a review or report a bug to any of our products, send us an email and you will receive a 10% discount code. Change logs at this link: http://weltpixel.com/blog/2016/09/19/weltpixels-last-30-days-updates/', 'http://weltpixel.com/blog/2016/09/19/weltpixels-last-30-days-updates/', 1, 1),
(2, 4, '2016-08-02 00:56:40', 'Title for the second push notification', 'Lorem ipsum, in dolorem content for notification 2/second', 'http://weltpixel.com/blog/2', 1, 1),
(3, 4, '2016-08-01 22:56:40', 'Title for the first push notification', 'Lorem ipsum, in dolorem content for notification1', 'http://weltpixel.com/blog', 1, 1),
(4, 1, '2017-03-11 06:00:00', 'Important WeltPixel Product Updates - March 2017', ' We made multiple product improvements and added new features, we hope you will find them useful. You can download the latest release from your account on www.weltpixel.com. We would like to hear from you - leave a review or report a bug to any of our products. Change logs at this link: http://weltpixel.com/blog/2017/03/11/weltpixel-product-updates-march-2017/', 'http://weltpixel.com/blog/2017/03/11/weltpixel-product-updates-march-2017/', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_passwords`
--

CREATE TABLE `admin_passwords` (
  `password_id` int(10) UNSIGNED NOT NULL COMMENT 'Password Id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Id',
  `password_hash` varchar(100) DEFAULT NULL COMMENT 'Password Hash',
  `expires` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Expires',
  `last_updated` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Last Updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Passwords';

-- --------------------------------------------------------

--
-- Table structure for table `admin_system_messages`
--

CREATE TABLE `admin_system_messages` (
  `identity` varchar(100) NOT NULL COMMENT 'Message id',
  `severity` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Create date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin System Messages';

--
-- Dumping data for table `admin_system_messages`
--

INSERT INTO `admin_system_messages` (`identity`, `severity`, `created_at`) VALUES
('da332d712f3215b9b94bfa268c398323', 2, '2017-03-21 06:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(255) NOT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'User Created Time',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  `interface_locale` varchar(16) NOT NULL DEFAULT 'en_US' COMMENT 'Backend interface locale',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Expiration Lock Dates'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`, `interface_locale`, `failures_num`, `first_failure`, `lock_expires`) VALUES
(3, 'gubato', 'gubato', 'samkeyms@gmail.com', 'gubato', '6ee4ca4d138d398459b327c400189daa8cf16aa22ffb82d364bde38e3a989e48:h1kMl8BviKsFEFjvvEBY0ZgapUILs1MG:1', '2017-03-18 11:34:52', '2017-03-24 04:25:36', '2017-03-24 04:25:36', 16, 0, 1, 'a:1:{s:11:\"configState\";a:43:{s:22:\"porto_settings_general\";s:1:\"1\";s:21:\"porto_settings_header\";s:1:\"1\";s:21:\"porto_settings_footer\";s:1:\"0\";s:23:\"porto_settings_category\";s:1:\"1\";s:28:\"porto_settings_category_grid\";s:1:\"0\";s:22:\"porto_settings_product\";s:1:\"0\";s:28:\"porto_settings_product_label\";s:1:\"1\";s:25:\"porto_settings_newsletter\";s:1:\"1\";s:23:\"porto_settings_contacts\";s:1:\"0\";s:30:\"porto_settings_custom_settings\";s:1:\"1\";s:22:\"porto_settings_install\";s:1:\"1\";s:19:\"porto_design_header\";s:1:\"1\";s:20:\"porto_design_general\";s:1:\"1\";s:17:\"porto_design_font\";s:1:\"1\";s:19:\"porto_design_colors\";s:1:\"1\";s:19:\"porto_design_footer\";s:1:\"1\";s:17:\"porto_design_page\";s:1:\"1\";s:17:\"porto_design_main\";s:1:\"1\";s:15:\"general_country\";s:1:\"1\";s:14:\"general_region\";s:1:\"1\";s:14:\"general_locale\";s:1:\"1\";s:25:\"general_store_information\";s:1:\"1\";s:25:\"general_single_store_mode\";s:1:\"0\";s:16:\"currency_options\";s:1:\"1\";s:19:\"sw_megamenu_general\";s:1:\"1\";s:24:\"sw_megamenu_custom_links\";s:1:\"1\";s:22:\"sw_megamenu_cat_labels\";s:1:\"1\";s:11:\"web_default\";s:1:\"1\";s:19:\"catalog_placeholder\";s:1:\"1\";s:20:\"catalog_fields_masks\";s:1:\"1\";s:12:\"admin_emails\";s:1:\"0\";s:13:\"admin_startup\";s:1:\"0\";s:9:\"admin_url\";s:1:\"0\";s:14:\"admin_security\";s:1:\"0\";s:15:\"admin_dashboard\";s:1:\"1\";s:13:\"admin_captcha\";s:1:\"0\";s:21:\"porto_license_general\";s:1:\"1\";s:34:\"dev_front_end_development_workflow\";s:1:\"1\";s:10:\"dev_static\";s:1:\"1\";s:6:\"dev_js\";s:1:\"1\";s:7:\"dev_css\";s:1:\"1\";s:9:\"dev_image\";s:1:\"1\";s:8:\"dev_grid\";s:1:\"1\";}}', NULL, NULL, 'en_US', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_session`
--

CREATE TABLE `admin_user_session` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `session_id` varchar(128) NOT NULL COMMENT 'Session id value',
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Admin User ID',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Current Session status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin User sessions table';

--
-- Dumping data for table `admin_user_session`
--

INSERT INTO `admin_user_session` (`id`, `session_id`, `user_id`, `status`, `created_at`, `updated_at`, `ip`) VALUES
(3, 'n7d9s161bc37oc287ci0ftifn3', 3, 2, '2017-03-18 11:37:08', '2017-03-18 14:08:11', '::1'),
(4, 'fb6qt0hqsgch3s8ulgdnnlmgp3', 3, 1, '2017-03-18 14:08:11', '2017-03-18 14:17:33', '::1'),
(5, 'nph2l1lvmf55ea11mgabql1v61', 3, 1, '2017-03-19 04:22:53', '2017-03-19 06:11:53', '::1'),
(6, 'h73be2vgom20erpbd6rrikofq4', 3, 1, '2017-03-21 05:15:08', '2017-03-21 10:32:04', '::1'),
(7, 'iqr2tu4bd8akosi6todc9u65m1', 3, 1, '2017-03-21 10:49:05', '2017-03-21 12:40:11', '::1'),
(8, 'g9mv426sa6on7nq7j76k463ns5', 3, 1, '2017-03-21 13:01:41', '2017-03-21 13:34:35', '::1'),
(9, '42oceljrf1otqv6gf0u2hj1172', 3, 1, '2017-03-21 13:53:37', '2017-03-21 13:53:53', '::1'),
(10, 'p8tnfa1r1d4vjtetuoubfsll81', 3, 1, '2017-03-22 04:48:10', '2017-03-22 07:51:07', '::1'),
(11, 'dkolemeke1r584o44o55v40056', 3, 1, '2017-03-22 08:10:32', '2017-03-22 11:09:40', '::1'),
(12, '8lbumkegcchuk933df00sjsr06', 3, 1, '2017-03-22 12:47:27', '2017-03-22 12:47:41', '::1'),
(13, 'r6g73ltqbos4vbt0mlva1oak06', 3, 1, '2017-03-23 04:29:51', '2017-03-23 05:47:38', '::1'),
(14, 'ro4h2jo86fjq7vcbllvck9ijj7', 3, 1, '2017-03-23 06:16:29', '2017-03-23 08:02:09', '::1'),
(15, 'nm4o1cbb44b4c2gl3ivcnciui6', 3, 1, '2017-03-23 08:42:59', '2017-03-23 09:34:07', '::1'),
(16, 'bm1jp2fqkq1c59o695q445s7l5', 3, 1, '2017-03-23 09:51:07', '2017-03-23 10:08:45', '::1'),
(17, '04a0d65n8bul64q9rrgo779ra0', 3, 1, '2017-03-23 11:41:14', '2017-03-23 13:02:56', '::1'),
(18, 'ari203cl1upmj4g8j6aqr1lit2', 3, 1, '2017-03-24 04:25:37', '2017-03-24 04:44:25', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `authorization_role`
--

CREATE TABLE `authorization_role` (
  `role_id` int(10) UNSIGNED NOT NULL COMMENT 'Role ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID',
  `user_type` varchar(16) DEFAULT NULL COMMENT 'User Type',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

--
-- Dumping data for table `authorization_role`
--

INSERT INTO `authorization_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `user_type`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, '2', 'Administrators'),
(2, 1, 2, 0, 'U', 1, '2', 'admin'),
(3, 1, 2, 0, 'U', 2, '2', 'admin'),
(4, 1, 2, 0, 'U', 3, '2', 'gubato');

-- --------------------------------------------------------

--
-- Table structure for table `authorization_rule`
--

CREATE TABLE `authorization_rule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule ID',
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

--
-- Dumping data for table `authorization_rule`
--

INSERT INTO `authorization_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `permission`) VALUES
(1, 1, 'Magento_Backend::all', NULL, 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Table structure for table `cache_tag`
--

CREATE TABLE `cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Table structure for table `captcha_log`
--

CREATE TABLE `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock`
--

CREATE TABLE `cataloginventory_stock` (
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

--
-- Dumping data for table `cataloginventory_stock`
--

INSERT INTO `cataloginventory_stock` (`stock_id`, `website_id`, `stock_name`) VALUES
(1, 0, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_item`
--

CREATE TABLE `cataloginventory_stock_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

--
-- Dumping data for table `cataloginventory_stock_item`
--

INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`, `website_id`) VALUES
(16, 16, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(17, 17, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(18, 18, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(19, 19, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(20, 20, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0),
(21, 21, 1, '100.0000', '0.0000', 1, 0, 0, 1, '1.0000', 1, '10000.0000', 1, 1, NULL, '1.0000', 1, 1, 1, 0, 1, '1.0000', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status`
--

CREATE TABLE `cataloginventory_stock_status` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dumping data for table `cataloginventory_stock_status`
--

INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 0, 1, '999.0000', 1),
(2, 0, 1, '999.0000', 1),
(3, 0, 1, '999.0000', 1),
(4, 0, 1, '999.0000', 1),
(5, 0, 1, '999.0000', 1),
(6, 0, 1, '999.0000', 1),
(7, 0, 1, '999.0000', 1),
(8, 0, 1, '999.0000', 1),
(9, 0, 1, '999.0000', 1),
(10, 0, 1, '999.0000', 1),
(11, 0, 1, '999.0000', 1),
(12, 0, 1, '999.0000', 1),
(13, 0, 1, '999.0000', 1),
(14, 0, 1, '999.0000', 1),
(15, 0, 1, '0.0000', 1),
(16, 0, 1, '100.0000', 1),
(17, 0, 1, '100.0000', 1),
(18, 0, 1, '100.0000', 1),
(19, 0, 1, '100.0000', 1),
(20, 0, 1, '100.0000', 1),
(21, 0, 1, '100.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_idx`
--

CREATE TABLE `cataloginventory_stock_status_idx` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Dumping data for table `cataloginventory_stock_status_idx`
--

INSERT INTO `cataloginventory_stock_status_idx` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 0, 1, '999.0000', 1),
(2, 0, 1, '999.0000', 1),
(3, 0, 1, '999.0000', 1),
(4, 0, 1, '999.0000', 1),
(5, 0, 1, '999.0000', 1),
(6, 0, 1, '999.0000', 1),
(7, 0, 1, '999.0000', 1),
(8, 0, 1, '999.0000', 1),
(9, 0, 1, '999.0000', 1),
(10, 0, 1, '999.0000', 1),
(11, 0, 1, '999.0000', 1),
(12, 0, 1, '999.0000', 1),
(13, 0, 1, '999.0000', 1),
(14, 0, 1, '999.0000', 1),
(15, 0, 1, '0.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cataloginventory_stock_status_tmp`
--

CREATE TABLE `cataloginventory_stock_status_tmp` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Status'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule`
--

CREATE TABLE `catalogrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_customer_group`
--

CREATE TABLE `catalogrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_group_website`
--

CREATE TABLE `catalogrule_group_website` (
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product`
--

CREATE TABLE `catalogrule_product` (
  `rule_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_product_price`
--

CREATE TABLE `catalogrule_product_price` (
  `rule_product_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalogrule_website`
--

CREATE TABLE `catalogrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_fulltext_scope1`
--

CREATE TABLE `catalogsearch_fulltext_scope1` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope1';

--
-- Dumping data for table `catalogsearch_fulltext_scope1`
--

INSERT INTO `catalogsearch_fulltext_scope1` (`entity_id`, `attribute_id`, `data_index`) VALUES
(16, 73, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE'),
(16, 74, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE'),
(16, 75, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE is available for purchase in increments of 1'),
(16, 76, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE is available for purchase in increments of 1'),
(17, 73, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(17, 74, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(17, 75, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(17, 76, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(18, 73, 'COKE PET 2LTS'),
(18, 74, 'COKE PET 2LTS'),
(18, 75, 'COKE PET 2LTS is available for purchase in increments of 1'),
(18, 76, 'COKE PET 2LTS is available for purchase in increments of 1'),
(19, 73, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION'),
(19, 74, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION'),
(19, 75, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION is available for purchase in increments of 1'),
(19, 76, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION is available for purchase in increments of 1'),
(20, 73, 'OMO 500G EXTRA FRESH HANDWASH'),
(20, 74, 'OMO 500G EXTRA FRESH HANDWASH'),
(20, 75, 'OMO 500G EXTRA FRESH HANDWASH is available for purchase in increments of 1'),
(20, 76, 'OMO 500G EXTRA FRESH HANDWASH is available for purchase in increments of 1'),
(21, 73, 'AXION 800G LEMON LIME DISHWASHING PASTE'),
(21, 74, 'AXION 800G LEMON LIME DISHWASHING PASTE'),
(21, 75, 'AXION 800G LEMON LIME DISHWASHING PASTE is available for purchase in increments of 1'),
(21, 76, 'AXION 800G LEMON LIME DISHWASHING PASTE is available for purchase in increments of 1');

-- --------------------------------------------------------

--
-- Table structure for table `catalogsearch_fulltext_scope2`
--

CREATE TABLE `catalogsearch_fulltext_scope2` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute_id',
  `data_index` longtext COMMENT 'Data index'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='catalogsearch_fulltext_scope2';

--
-- Dumping data for table `catalogsearch_fulltext_scope2`
--

INSERT INTO `catalogsearch_fulltext_scope2` (`entity_id`, `attribute_id`, `data_index`) VALUES
(16, 73, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE'),
(16, 74, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE'),
(16, 75, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE is available for purchase in increments of 1'),
(16, 76, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE is available for purchase in increments of 1'),
(17, 73, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(17, 74, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(17, 75, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(17, 76, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(18, 73, 'COKE PET 2LTS'),
(18, 74, 'COKE PET 2LTS'),
(18, 75, 'COKE PET 2LTS is available for purchase in increments of 1'),
(18, 76, 'COKE PET 2LTS is available for purchase in increments of 1'),
(19, 73, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION'),
(19, 74, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION'),
(19, 75, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION is available for purchase in increments of 1'),
(19, 76, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION is available for purchase in increments of 1'),
(20, 73, 'OMO 500G EXTRA FRESH HANDWASH'),
(20, 74, 'OMO 500G EXTRA FRESH HANDWASH'),
(20, 75, 'OMO 500G EXTRA FRESH HANDWASH is available for purchase in increments of 1'),
(20, 76, 'OMO 500G EXTRA FRESH HANDWASH is available for purchase in increments of 1'),
(21, 73, 'AXION 800G LEMON LIME DISHWASHING PASTE'),
(21, 74, 'AXION 800G LEMON LIME DISHWASHING PASTE'),
(21, 75, 'AXION 800G LEMON LIME DISHWASHING PASTE is available for purchase in increments of 1'),
(21, 76, 'AXION 800G LEMON LIME DISHWASHING PASTE is available for purchase in increments of 1');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity`
--

CREATE TABLE `catalog_category_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

--
-- Dumping data for table `catalog_category_entity`
--

INSERT INTO `catalog_category_entity` (`entity_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 0, 0, '2016-08-26 06:46:27', '2017-03-22 06:41:20', '1', 0, 0, 13),
(2, 3, 1, '2016-08-26 06:46:29', '2017-03-22 06:41:20', '1/2', 1, 1, 12),
(50, 3, 2, '2017-03-21 06:50:36', '2017-03-22 06:41:20', '1/2/50', 1, 2, 46),
(51, 3, 50, '2017-03-21 06:51:26', '2017-03-21 07:18:33', '1/2/50/51', 1, 3, 11),
(52, 3, 50, '2017-03-21 06:52:48', '2017-03-22 06:26:21', '1/2/50/52', 2, 3, 11),
(53, 3, 50, '2017-03-21 06:53:22', '2017-03-22 06:41:20', '1/2/50/53', 3, 3, 12),
(54, 3, 50, '2017-03-21 06:54:01', '2017-03-21 06:54:01', '1/2/50/54', 4, 3, 0),
(55, 3, 50, '2017-03-21 06:54:48', '2017-03-21 06:54:48', '1/2/50/55', 5, 3, 0),
(56, 3, 50, '2017-03-21 06:55:21', '2017-03-21 06:55:22', '1/2/50/56', 6, 3, 0),
(57, 3, 50, '2017-03-21 06:56:07', '2017-03-21 06:56:07', '1/2/50/57', 7, 3, 0),
(58, 3, 50, '2017-03-21 06:56:43', '2017-03-21 06:56:43', '1/2/50/58', 8, 3, 0),
(59, 3, 50, '2017-03-21 06:57:23', '2017-03-21 06:57:24', '1/2/50/59', 9, 3, 0),
(60, 3, 50, '2017-03-21 06:57:58', '2017-03-21 06:57:58', '1/2/50/60', 10, 3, 0),
(61, 3, 50, '2017-03-21 06:58:29', '2017-03-21 06:58:30', '1/2/50/61', 11, 3, 0),
(62, 3, 50, '2017-03-21 06:59:13', '2017-03-21 06:59:13', '1/2/50/62', 12, 3, 0),
(63, 3, 51, '2017-03-21 07:01:54', '2017-03-21 07:01:54', '1/2/50/51/63', 1, 4, 0),
(64, 3, 51, '2017-03-21 07:02:50', '2017-03-21 07:02:50', '1/2/50/51/64', 2, 4, 0),
(65, 3, 51, '2017-03-21 07:12:47', '2017-03-21 07:12:47', '1/2/50/51/65', 3, 4, 0),
(66, 3, 51, '2017-03-21 07:13:46', '2017-03-21 07:13:46', '1/2/50/51/66', 4, 4, 0),
(67, 3, 51, '2017-03-21 07:14:18', '2017-03-21 07:14:19', '1/2/50/51/67', 5, 4, 0),
(68, 3, 51, '2017-03-21 07:15:08', '2017-03-21 07:15:08', '1/2/50/51/68', 6, 4, 0),
(69, 3, 51, '2017-03-21 07:15:46', '2017-03-21 07:15:46', '1/2/50/51/69', 7, 4, 0),
(70, 3, 51, '2017-03-21 07:16:29', '2017-03-21 07:16:29', '1/2/50/51/70', 8, 4, 0),
(71, 3, 51, '2017-03-21 07:17:10', '2017-03-21 07:17:10', '1/2/50/51/71', 9, 4, 0),
(72, 3, 51, '2017-03-21 07:17:41', '2017-03-21 07:17:41', '1/2/50/51/72', 10, 4, 0),
(73, 3, 51, '2017-03-21 07:18:33', '2017-03-21 07:18:33', '1/2/50/51/73', 11, 4, 0),
(74, 3, 2, '2017-03-21 08:10:48', '2017-03-21 08:30:46', '1/2/74', 2, 2, 21),
(75, 3, 74, '2017-03-21 08:11:49', '2017-03-21 08:22:35', '1/2/74/75', 1, 3, 5),
(76, 3, 74, '2017-03-21 08:12:38', '2017-03-21 08:30:46', '1/2/74/76', 2, 3, 8),
(77, 3, 74, '2017-03-21 08:13:23', '2017-03-21 08:13:23', '1/2/74/77', 3, 3, 0),
(78, 3, 74, '2017-03-21 08:14:11', '2017-03-21 08:14:11', '1/2/74/78', 4, 3, 0),
(79, 3, 74, '2017-03-21 08:16:08', '2017-03-21 08:16:08', '1/2/74/79', 5, 3, 0),
(80, 3, 74, '2017-03-21 08:16:59', '2017-03-21 08:16:59', '1/2/74/80', 6, 3, 0),
(81, 3, 74, '2017-03-21 08:18:06', '2017-03-21 08:18:06', '1/2/74/81', 7, 3, 0),
(82, 3, 74, '2017-03-21 08:18:44', '2017-03-21 08:18:44', '1/2/74/82', 8, 3, 0),
(83, 3, 75, '2017-03-21 08:19:34', '2017-03-21 08:19:34', '1/2/74/75/83', 1, 4, 0),
(84, 3, 75, '2017-03-21 08:20:05', '2017-03-21 08:20:05', '1/2/74/75/84', 2, 4, 0),
(85, 3, 75, '2017-03-21 08:20:58', '2017-03-21 08:20:58', '1/2/74/75/85', 3, 4, 0),
(86, 3, 75, '2017-03-21 08:21:38', '2017-03-21 08:21:38', '1/2/74/75/86', 4, 4, 0),
(87, 3, 75, '2017-03-21 08:22:35', '2017-03-21 08:22:35', '1/2/74/75/87', 5, 4, 0),
(88, 3, 76, '2017-03-21 08:23:48', '2017-03-21 08:23:48', '1/2/74/76/88', 1, 4, 0),
(89, 3, 76, '2017-03-21 08:24:29', '2017-03-21 08:24:29', '1/2/74/76/89', 2, 4, 0),
(90, 3, 76, '2017-03-21 08:26:37', '2017-03-21 08:26:37', '1/2/74/76/90', 3, 4, 0),
(91, 3, 76, '2017-03-21 08:27:12', '2017-03-21 08:27:12', '1/2/74/76/91', 4, 4, 0),
(92, 3, 76, '2017-03-21 08:27:52', '2017-03-21 08:27:53', '1/2/74/76/92', 5, 4, 0),
(93, 3, 76, '2017-03-21 08:28:24', '2017-03-21 08:28:24', '1/2/74/76/93', 6, 4, 0),
(94, 3, 76, '2017-03-21 08:30:08', '2017-03-21 08:30:08', '1/2/74/76/94', 7, 4, 0),
(95, 3, 76, '2017-03-21 08:30:46', '2017-03-21 08:30:47', '1/2/74/76/95', 8, 4, 0),
(96, 3, 2, '2017-03-21 12:03:24', '2017-03-21 12:03:24', '1/2/96', 3, 2, 0),
(97, 3, 2, '2017-03-21 12:19:30', '2017-03-21 12:19:31', '1/2/97', 4, 2, 0),
(98, 3, 2, '2017-03-21 12:28:28', '2017-03-21 12:28:29', '1/2/98', 5, 2, 0),
(99, 3, 2, '2017-03-21 13:04:57', '2017-03-21 13:04:58', '1/2/99', 6, 2, 0),
(100, 3, 2, '2017-03-21 13:05:52', '2017-03-21 13:05:52', '1/2/100', 7, 2, 0),
(101, 3, 2, '2017-03-21 13:06:58', '2017-03-21 13:06:58', '1/2/101', 8, 2, 0),
(102, 3, 2, '2017-03-21 13:30:27', '2017-03-21 13:30:27', '1/2/102', 9, 2, 0),
(103, 3, 2, '2017-03-21 13:31:34', '2017-03-21 13:31:34', '1/2/103', 10, 2, 0),
(104, 3, 2, '2017-03-21 13:34:26', '2017-03-21 13:34:26', '1/2/104', 11, 2, 0),
(105, 3, 2, '2017-03-22 05:36:15', '2017-03-22 05:36:16', '1/2/105', 12, 2, 0),
(106, 3, 2, '2017-03-22 05:37:25', '2017-03-22 05:37:25', '1/2/106', 13, 2, 0),
(107, 3, 2, '2017-03-22 05:41:01', '2017-03-22 05:41:01', '1/2/107', 14, 2, 0),
(108, 3, 2, '2017-03-22 05:42:31', '2017-03-22 05:42:31', '1/2/108', 15, 2, 0),
(109, 3, 2, '2017-03-22 05:43:39', '2017-03-22 05:43:39', '1/2/109', 16, 2, 0),
(110, 3, 2, '2017-03-22 05:45:28', '2017-03-22 05:45:28', '1/2/110', 17, 2, 0),
(111, 3, 2, '2017-03-22 05:46:28', '2017-03-22 05:46:28', '1/2/111', 18, 2, 0),
(112, 3, 2, '2017-03-22 05:47:36', '2017-03-22 05:47:36', '1/2/112', 19, 2, 0),
(113, 3, 2, '2017-03-22 05:48:34', '2017-03-22 05:48:35', '1/2/113', 20, 2, 0),
(114, 3, 2, '2017-03-22 05:52:45', '2017-03-22 05:52:45', '1/2/114', 21, 2, 0),
(115, 3, 2, '2017-03-22 05:54:01', '2017-03-22 05:54:01', '1/2/115', 22, 2, 0),
(116, 3, 52, '2017-03-22 05:57:09', '2017-03-22 05:57:09', '1/2/50/52/116', 1, 4, 0),
(117, 3, 52, '2017-03-22 06:03:57', '2017-03-22 06:03:57', '1/2/50/52/117', 2, 4, 0),
(118, 3, 52, '2017-03-22 06:04:45', '2017-03-22 06:04:45', '1/2/50/52/118', 3, 4, 0),
(119, 3, 52, '2017-03-22 06:05:50', '2017-03-22 06:05:51', '1/2/50/52/119', 4, 4, 0),
(120, 3, 52, '2017-03-22 06:06:46', '2017-03-22 06:06:46', '1/2/50/52/120', 5, 4, 0),
(121, 3, 52, '2017-03-22 06:12:30', '2017-03-22 06:12:30', '1/2/50/52/121', 6, 4, 0),
(122, 3, 52, '2017-03-22 06:16:38', '2017-03-22 06:16:38', '1/2/50/52/122', 7, 4, 0),
(123, 3, 52, '2017-03-22 06:19:52', '2017-03-22 06:19:52', '1/2/50/52/123', 8, 4, 0),
(124, 3, 52, '2017-03-22 06:22:16', '2017-03-22 06:22:16', '1/2/50/52/124', 9, 4, 0),
(125, 3, 52, '2017-03-22 06:24:33', '2017-03-22 06:24:33', '1/2/50/52/125', 10, 4, 0),
(126, 3, 52, '2017-03-22 06:26:21', '2017-03-22 06:26:21', '1/2/50/52/126', 11, 4, 0),
(127, 3, 53, '2017-03-22 06:28:38', '2017-03-22 06:28:39', '1/2/50/53/127', 1, 4, 0),
(128, 3, 53, '2017-03-22 06:31:06', '2017-03-22 06:31:06', '1/2/50/53/128', 2, 4, 0),
(129, 3, 53, '2017-03-22 06:31:51', '2017-03-22 06:31:51', '1/2/50/53/129', 3, 4, 0),
(130, 3, 53, '2017-03-22 06:32:54', '2017-03-22 06:32:55', '1/2/50/53/130', 4, 4, 0),
(131, 3, 53, '2017-03-22 06:33:51', '2017-03-22 06:33:51', '1/2/50/53/131', 5, 4, 0),
(132, 3, 53, '2017-03-22 06:35:06', '2017-03-22 06:35:06', '1/2/50/53/132', 6, 4, 0),
(133, 3, 53, '2017-03-22 06:35:53', '2017-03-22 06:35:53', '1/2/50/53/133', 7, 4, 0),
(134, 3, 53, '2017-03-22 06:36:53', '2017-03-22 06:36:53', '1/2/50/53/134', 8, 4, 0),
(135, 3, 53, '2017-03-22 06:37:53', '2017-03-22 06:37:53', '1/2/50/53/135', 9, 4, 0),
(136, 3, 53, '2017-03-22 06:39:14', '2017-03-22 06:39:14', '1/2/50/53/136', 10, 4, 0),
(137, 3, 53, '2017-03-22 06:40:09', '2017-03-22 06:40:09', '1/2/50/53/137', 11, 4, 0),
(138, 3, 53, '2017-03-22 06:41:20', '2017-03-22 06:41:20', '1/2/50/53/138', 12, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_datetime`
--

CREATE TABLE `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_decimal`
--

CREATE TABLE `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_int`
--

CREATE TABLE `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_int`
--

INSERT INTO `catalog_category_entity_int` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 69, 0, 1, 1),
(2, 46, 0, 2, 1),
(3, 69, 0, 2, 1),
(334, 46, 0, 50, 1),
(335, 54, 0, 50, 1),
(336, 69, 0, 50, 1),
(337, 70, 0, 50, 0),
(338, 71, 0, 50, 0),
(339, 136, 0, 50, 0),
(340, 150, 0, 50, 0),
(341, 46, 0, 51, 1),
(342, 54, 0, 51, 1),
(343, 69, 0, 51, 1),
(344, 70, 0, 51, 0),
(345, 71, 0, 51, 0),
(346, 136, 0, 51, 0),
(347, 150, 0, 51, 0),
(348, 46, 0, 52, 1),
(349, 54, 0, 52, 1),
(350, 69, 0, 52, 1),
(351, 70, 0, 52, 0),
(352, 71, 0, 52, 0),
(353, 136, 0, 52, 0),
(354, 150, 0, 52, 0),
(355, 46, 0, 53, 1),
(356, 54, 0, 53, 1),
(357, 69, 0, 53, 1),
(358, 70, 0, 53, 0),
(359, 71, 0, 53, 0),
(360, 136, 0, 53, 0),
(361, 150, 0, 53, 0),
(362, 46, 0, 54, 1),
(363, 54, 0, 54, 1),
(364, 69, 0, 54, 1),
(365, 70, 0, 54, 0),
(366, 71, 0, 54, 0),
(367, 136, 0, 54, 0),
(368, 150, 0, 54, 0),
(369, 46, 0, 55, 1),
(370, 54, 0, 55, 1),
(371, 69, 0, 55, 1),
(372, 70, 0, 55, 0),
(373, 71, 0, 55, 0),
(374, 136, 0, 55, 0),
(375, 150, 0, 55, 0),
(376, 46, 0, 56, 1),
(377, 54, 0, 56, 1),
(378, 69, 0, 56, 1),
(379, 70, 0, 56, 0),
(380, 71, 0, 56, 0),
(381, 136, 0, 56, 0),
(382, 150, 0, 56, 0),
(383, 46, 0, 57, 1),
(384, 54, 0, 57, 1),
(385, 69, 0, 57, 1),
(386, 70, 0, 57, 0),
(387, 71, 0, 57, 0),
(388, 136, 0, 57, 0),
(389, 150, 0, 57, 0),
(390, 46, 0, 58, 1),
(391, 54, 0, 58, 1),
(392, 69, 0, 58, 1),
(393, 70, 0, 58, 0),
(394, 71, 0, 58, 0),
(395, 136, 0, 58, 0),
(396, 150, 0, 58, 0),
(397, 46, 0, 59, 1),
(398, 54, 0, 59, 1),
(399, 69, 0, 59, 1),
(400, 70, 0, 59, 0),
(401, 71, 0, 59, 0),
(402, 136, 0, 59, 0),
(403, 150, 0, 59, 0),
(404, 46, 0, 60, 1),
(405, 54, 0, 60, 1),
(406, 69, 0, 60, 1),
(407, 70, 0, 60, 0),
(408, 71, 0, 60, 0),
(409, 136, 0, 60, 0),
(410, 150, 0, 60, 0),
(411, 46, 0, 61, 1),
(412, 54, 0, 61, 1),
(413, 69, 0, 61, 1),
(414, 70, 0, 61, 0),
(415, 71, 0, 61, 0),
(416, 136, 0, 61, 0),
(417, 150, 0, 61, 0),
(418, 46, 0, 62, 1),
(419, 54, 0, 62, 1),
(420, 69, 0, 62, 1),
(421, 70, 0, 62, 0),
(422, 71, 0, 62, 0),
(423, 136, 0, 62, 0),
(424, 150, 0, 62, 0),
(425, 46, 0, 63, 1),
(426, 54, 0, 63, 1),
(427, 69, 0, 63, 1),
(428, 70, 0, 63, 0),
(429, 71, 0, 63, 0),
(430, 136, 0, 63, 0),
(431, 150, 0, 63, 0),
(432, 46, 0, 64, 1),
(433, 54, 0, 64, 1),
(434, 69, 0, 64, 1),
(435, 70, 0, 64, 0),
(436, 71, 0, 64, 0),
(437, 136, 0, 64, 0),
(438, 150, 0, 64, 0),
(439, 46, 0, 65, 1),
(440, 54, 0, 65, 1),
(441, 69, 0, 65, 1),
(442, 70, 0, 65, 0),
(443, 71, 0, 65, 0),
(444, 136, 0, 65, 0),
(445, 150, 0, 65, 0),
(446, 46, 0, 66, 1),
(447, 54, 0, 66, 1),
(448, 69, 0, 66, 1),
(449, 70, 0, 66, 0),
(450, 71, 0, 66, 0),
(451, 136, 0, 66, 0),
(452, 150, 0, 66, 0),
(453, 46, 0, 67, 1),
(454, 54, 0, 67, 1),
(455, 69, 0, 67, 1),
(456, 70, 0, 67, 0),
(457, 71, 0, 67, 0),
(458, 136, 0, 67, 0),
(459, 150, 0, 67, 0),
(460, 46, 0, 68, 1),
(461, 54, 0, 68, 1),
(462, 69, 0, 68, 1),
(463, 70, 0, 68, 0),
(464, 71, 0, 68, 0),
(465, 136, 0, 68, 0),
(466, 150, 0, 68, 0),
(467, 46, 0, 69, 1),
(468, 54, 0, 69, 1),
(469, 69, 0, 69, 1),
(470, 70, 0, 69, 0),
(471, 71, 0, 69, 0),
(472, 136, 0, 69, 0),
(473, 150, 0, 69, 0),
(474, 46, 0, 70, 1),
(475, 54, 0, 70, 1),
(476, 69, 0, 70, 1),
(477, 70, 0, 70, 0),
(478, 71, 0, 70, 0),
(479, 136, 0, 70, 0),
(480, 150, 0, 70, 0),
(481, 46, 0, 71, 1),
(482, 54, 0, 71, 1),
(483, 69, 0, 71, 1),
(484, 70, 0, 71, 0),
(485, 71, 0, 71, 0),
(486, 136, 0, 71, 0),
(487, 150, 0, 71, 0),
(488, 46, 0, 72, 1),
(489, 54, 0, 72, 1),
(490, 69, 0, 72, 1),
(491, 70, 0, 72, 0),
(492, 71, 0, 72, 0),
(493, 136, 0, 72, 0),
(494, 150, 0, 72, 0),
(495, 46, 0, 73, 1),
(496, 54, 0, 73, 1),
(497, 69, 0, 73, 1),
(498, 70, 0, 73, 0),
(499, 71, 0, 73, 0),
(500, 136, 0, 73, 0),
(501, 150, 0, 73, 0),
(502, 46, 0, 74, 1),
(503, 54, 0, 74, 1),
(504, 69, 0, 74, 1),
(505, 70, 0, 74, 0),
(506, 71, 0, 74, 0),
(507, 136, 0, 74, 0),
(508, 150, 0, 74, 0),
(509, 46, 0, 75, 1),
(510, 54, 0, 75, 1),
(511, 69, 0, 75, 1),
(512, 70, 0, 75, 0),
(513, 71, 0, 75, 0),
(514, 136, 0, 75, 0),
(515, 150, 0, 75, 0),
(516, 46, 0, 76, 1),
(517, 54, 0, 76, 1),
(518, 69, 0, 76, 1),
(519, 70, 0, 76, 0),
(520, 71, 0, 76, 0),
(521, 136, 0, 76, 0),
(522, 150, 0, 76, 0),
(523, 46, 0, 77, 1),
(524, 54, 0, 77, 1),
(525, 69, 0, 77, 1),
(526, 70, 0, 77, 0),
(527, 71, 0, 77, 0),
(528, 136, 0, 77, 0),
(529, 150, 0, 77, 0),
(530, 46, 0, 78, 1),
(531, 54, 0, 78, 1),
(532, 69, 0, 78, 1),
(533, 70, 0, 78, 0),
(534, 71, 0, 78, 0),
(535, 136, 0, 78, 0),
(536, 150, 0, 78, 0),
(537, 46, 0, 79, 1),
(538, 54, 0, 79, 1),
(539, 69, 0, 79, 1),
(540, 70, 0, 79, 0),
(541, 71, 0, 79, 0),
(542, 136, 0, 79, 0),
(543, 150, 0, 79, 0),
(544, 46, 0, 80, 1),
(545, 54, 0, 80, 1),
(546, 69, 0, 80, 1),
(547, 70, 0, 80, 0),
(548, 71, 0, 80, 0),
(549, 136, 0, 80, 0),
(550, 150, 0, 80, 0),
(551, 46, 0, 81, 1),
(552, 54, 0, 81, 1),
(553, 69, 0, 81, 1),
(554, 70, 0, 81, 0),
(555, 71, 0, 81, 0),
(556, 136, 0, 81, 0),
(557, 150, 0, 81, 0),
(558, 46, 0, 82, 1),
(559, 54, 0, 82, 1),
(560, 69, 0, 82, 1),
(561, 70, 0, 82, 0),
(562, 71, 0, 82, 0),
(563, 136, 0, 82, 0),
(564, 150, 0, 82, 0),
(565, 46, 0, 83, 1),
(566, 54, 0, 83, 1),
(567, 69, 0, 83, 1),
(568, 70, 0, 83, 0),
(569, 71, 0, 83, 0),
(570, 136, 0, 83, 0),
(571, 150, 0, 83, 0),
(572, 46, 0, 84, 1),
(573, 54, 0, 84, 1),
(574, 69, 0, 84, 1),
(575, 70, 0, 84, 0),
(576, 71, 0, 84, 0),
(577, 136, 0, 84, 0),
(578, 150, 0, 84, 0),
(579, 46, 0, 85, 1),
(580, 54, 0, 85, 1),
(581, 69, 0, 85, 1),
(582, 70, 0, 85, 0),
(583, 71, 0, 85, 0),
(584, 136, 0, 85, 0),
(585, 150, 0, 85, 0),
(586, 46, 0, 86, 1),
(587, 54, 0, 86, 1),
(588, 69, 0, 86, 1),
(589, 70, 0, 86, 0),
(590, 71, 0, 86, 0),
(591, 136, 0, 86, 0),
(592, 150, 0, 86, 0),
(593, 46, 0, 87, 1),
(594, 54, 0, 87, 1),
(595, 69, 0, 87, 1),
(596, 70, 0, 87, 0),
(597, 71, 0, 87, 0),
(598, 136, 0, 87, 0),
(599, 150, 0, 87, 0),
(600, 46, 0, 88, 1),
(601, 54, 0, 88, 1),
(602, 69, 0, 88, 1),
(603, 70, 0, 88, 0),
(604, 71, 0, 88, 0),
(605, 136, 0, 88, 0),
(606, 150, 0, 88, 0),
(607, 46, 0, 89, 1),
(608, 54, 0, 89, 1),
(609, 69, 0, 89, 1),
(610, 70, 0, 89, 0),
(611, 71, 0, 89, 0),
(612, 136, 0, 89, 0),
(613, 150, 0, 89, 0),
(614, 46, 0, 90, 1),
(615, 54, 0, 90, 1),
(616, 69, 0, 90, 1),
(617, 70, 0, 90, 0),
(618, 71, 0, 90, 0),
(619, 136, 0, 90, 0),
(620, 150, 0, 90, 0),
(621, 46, 0, 91, 1),
(622, 54, 0, 91, 1),
(623, 69, 0, 91, 1),
(624, 70, 0, 91, 0),
(625, 71, 0, 91, 0),
(626, 136, 0, 91, 0),
(627, 150, 0, 91, 0),
(628, 46, 0, 92, 1),
(629, 54, 0, 92, 1),
(630, 69, 0, 92, 1),
(631, 70, 0, 92, 0),
(632, 71, 0, 92, 0),
(633, 136, 0, 92, 0),
(634, 150, 0, 92, 0),
(635, 46, 0, 93, 1),
(636, 54, 0, 93, 1),
(637, 69, 0, 93, 1),
(638, 70, 0, 93, 0),
(639, 71, 0, 93, 0),
(640, 136, 0, 93, 0),
(641, 150, 0, 93, 0),
(642, 46, 0, 94, 1),
(643, 54, 0, 94, 1),
(644, 69, 0, 94, 1),
(645, 70, 0, 94, 0),
(646, 71, 0, 94, 0),
(647, 136, 0, 94, 0),
(648, 150, 0, 94, 0),
(649, 46, 0, 95, 1),
(650, 54, 0, 95, 1),
(651, 69, 0, 95, 1),
(652, 70, 0, 95, 0),
(653, 71, 0, 95, 0),
(654, 136, 0, 95, 0),
(655, 150, 0, 95, 0),
(656, 46, 0, 96, 1),
(657, 54, 0, 96, 1),
(658, 69, 0, 96, 1),
(659, 70, 0, 96, 0),
(660, 71, 0, 96, 0),
(661, 136, 0, 96, 0),
(662, 150, 0, 96, 0),
(663, 46, 0, 97, 1),
(664, 54, 0, 97, 1),
(665, 69, 0, 97, 1),
(666, 70, 0, 97, 0),
(667, 71, 0, 97, 0),
(668, 136, 0, 97, 0),
(669, 150, 0, 97, 0),
(670, 46, 0, 98, 1),
(671, 54, 0, 98, 1),
(672, 69, 0, 98, 1),
(673, 70, 0, 98, 0),
(674, 71, 0, 98, 0),
(675, 136, 0, 98, 0),
(676, 150, 0, 98, 0),
(677, 46, 0, 99, 1),
(678, 54, 0, 99, 1),
(679, 69, 0, 99, 1),
(680, 70, 0, 99, 0),
(681, 71, 0, 99, 0),
(682, 136, 0, 99, 0),
(683, 150, 0, 99, 0),
(684, 46, 0, 100, 1),
(685, 54, 0, 100, 1),
(686, 69, 0, 100, 1),
(687, 70, 0, 100, 0),
(688, 71, 0, 100, 0),
(689, 136, 0, 100, 0),
(690, 150, 0, 100, 0),
(691, 46, 0, 101, 1),
(692, 54, 0, 101, 1),
(693, 69, 0, 101, 1),
(694, 70, 0, 101, 0),
(695, 71, 0, 101, 0),
(696, 136, 0, 101, 0),
(697, 150, 0, 101, 0),
(698, 46, 0, 102, 1),
(699, 54, 0, 102, 1),
(700, 69, 0, 102, 1),
(701, 70, 0, 102, 0),
(702, 71, 0, 102, 0),
(703, 136, 0, 102, 0),
(704, 150, 0, 102, 0),
(705, 46, 0, 103, 1),
(706, 54, 0, 103, 1),
(707, 69, 0, 103, 1),
(708, 70, 0, 103, 0),
(709, 71, 0, 103, 0),
(710, 136, 0, 103, 0),
(711, 150, 0, 103, 0),
(712, 46, 0, 104, 1),
(713, 54, 0, 104, 1),
(714, 69, 0, 104, 1),
(715, 70, 0, 104, 0),
(716, 71, 0, 104, 0),
(717, 136, 0, 104, 0),
(718, 150, 0, 104, 0),
(719, 46, 0, 105, 1),
(720, 54, 0, 105, 1),
(721, 69, 0, 105, 1),
(722, 70, 0, 105, 0),
(723, 71, 0, 105, 0),
(724, 136, 0, 105, 0),
(725, 150, 0, 105, 0),
(726, 46, 0, 106, 1),
(727, 54, 0, 106, 1),
(728, 69, 0, 106, 1),
(729, 70, 0, 106, 0),
(730, 71, 0, 106, 0),
(731, 136, 0, 106, 0),
(732, 150, 0, 106, 0),
(733, 46, 0, 107, 1),
(734, 54, 0, 107, 1),
(735, 69, 0, 107, 1),
(736, 70, 0, 107, 0),
(737, 71, 0, 107, 0),
(738, 136, 0, 107, 0),
(739, 150, 0, 107, 0),
(740, 46, 0, 108, 1),
(741, 54, 0, 108, 1),
(742, 69, 0, 108, 1),
(743, 70, 0, 108, 0),
(744, 71, 0, 108, 0),
(745, 136, 0, 108, 0),
(746, 150, 0, 108, 0),
(747, 46, 0, 109, 1),
(748, 54, 0, 109, 1),
(749, 69, 0, 109, 1),
(750, 70, 0, 109, 0),
(751, 71, 0, 109, 0),
(752, 136, 0, 109, 0),
(753, 150, 0, 109, 0),
(754, 46, 0, 110, 1),
(755, 54, 0, 110, 1),
(756, 69, 0, 110, 1),
(757, 70, 0, 110, 0),
(758, 71, 0, 110, 0),
(759, 136, 0, 110, 0),
(760, 150, 0, 110, 0),
(761, 46, 0, 111, 1),
(762, 54, 0, 111, 1),
(763, 69, 0, 111, 1),
(764, 70, 0, 111, 0),
(765, 71, 0, 111, 0),
(766, 136, 0, 111, 0),
(767, 150, 0, 111, 0),
(768, 46, 0, 112, 1),
(769, 54, 0, 112, 1),
(770, 69, 0, 112, 1),
(771, 70, 0, 112, 0),
(772, 71, 0, 112, 0),
(773, 136, 0, 112, 0),
(774, 150, 0, 112, 0),
(775, 46, 0, 113, 1),
(776, 54, 0, 113, 1),
(777, 69, 0, 113, 1),
(778, 70, 0, 113, 0),
(779, 71, 0, 113, 0),
(780, 136, 0, 113, 0),
(781, 150, 0, 113, 0),
(782, 46, 0, 114, 1),
(783, 54, 0, 114, 1),
(784, 69, 0, 114, 1),
(785, 70, 0, 114, 0),
(786, 71, 0, 114, 0),
(787, 136, 0, 114, 0),
(788, 150, 0, 114, 0),
(789, 46, 0, 115, 1),
(790, 54, 0, 115, 1),
(791, 69, 0, 115, 1),
(792, 70, 0, 115, 0),
(793, 71, 0, 115, 0),
(794, 136, 0, 115, 0),
(795, 150, 0, 115, 0),
(796, 46, 0, 116, 1),
(797, 54, 0, 116, 1),
(798, 69, 0, 116, 1),
(799, 70, 0, 116, 0),
(800, 71, 0, 116, 0),
(801, 136, 0, 116, 0),
(802, 150, 0, 116, 0),
(803, 46, 0, 117, 1),
(804, 54, 0, 117, 1),
(805, 69, 0, 117, 1),
(806, 70, 0, 117, 0),
(807, 71, 0, 117, 0),
(808, 136, 0, 117, 0),
(809, 150, 0, 117, 0),
(810, 46, 0, 118, 1),
(811, 54, 0, 118, 1),
(812, 69, 0, 118, 1),
(813, 70, 0, 118, 0),
(814, 71, 0, 118, 0),
(815, 136, 0, 118, 0),
(816, 150, 0, 118, 0),
(817, 46, 0, 119, 1),
(818, 54, 0, 119, 1),
(819, 69, 0, 119, 1),
(820, 70, 0, 119, 0),
(821, 71, 0, 119, 0),
(822, 136, 0, 119, 0),
(823, 150, 0, 119, 0),
(824, 46, 0, 120, 1),
(825, 54, 0, 120, 1),
(826, 69, 0, 120, 1),
(827, 70, 0, 120, 0),
(828, 71, 0, 120, 0),
(829, 136, 0, 120, 0),
(830, 150, 0, 120, 0),
(831, 46, 0, 121, 1),
(832, 54, 0, 121, 1),
(833, 69, 0, 121, 1),
(834, 70, 0, 121, 0),
(835, 71, 0, 121, 0),
(836, 136, 0, 121, 0),
(837, 150, 0, 121, 0),
(838, 46, 0, 122, 1),
(839, 54, 0, 122, 1),
(840, 69, 0, 122, 1),
(841, 70, 0, 122, 0),
(842, 71, 0, 122, 0),
(843, 136, 0, 122, 0),
(844, 150, 0, 122, 0),
(845, 46, 0, 123, 1),
(846, 54, 0, 123, 1),
(847, 69, 0, 123, 1),
(848, 70, 0, 123, 0),
(849, 71, 0, 123, 0),
(850, 136, 0, 123, 0),
(851, 150, 0, 123, 0),
(852, 46, 0, 124, 1),
(853, 54, 0, 124, 1),
(854, 69, 0, 124, 1),
(855, 70, 0, 124, 0),
(856, 71, 0, 124, 0),
(857, 136, 0, 124, 0),
(858, 150, 0, 124, 0),
(859, 46, 0, 125, 1),
(860, 54, 0, 125, 1),
(861, 69, 0, 125, 1),
(862, 70, 0, 125, 0),
(863, 71, 0, 125, 0),
(864, 136, 0, 125, 0),
(865, 150, 0, 125, 0),
(866, 46, 0, 126, 1),
(867, 54, 0, 126, 1),
(868, 69, 0, 126, 1),
(869, 70, 0, 126, 0),
(870, 71, 0, 126, 0),
(871, 136, 0, 126, 0),
(872, 150, 0, 126, 0),
(873, 46, 0, 127, 1),
(874, 54, 0, 127, 1),
(875, 69, 0, 127, 1),
(876, 70, 0, 127, 0),
(877, 71, 0, 127, 0),
(878, 136, 0, 127, 0),
(879, 150, 0, 127, 0),
(880, 46, 0, 128, 1),
(881, 54, 0, 128, 1),
(882, 69, 0, 128, 1),
(883, 70, 0, 128, 0),
(884, 71, 0, 128, 0),
(885, 136, 0, 128, 0),
(886, 150, 0, 128, 0),
(887, 46, 0, 129, 1),
(888, 54, 0, 129, 1),
(889, 69, 0, 129, 1),
(890, 70, 0, 129, 0),
(891, 71, 0, 129, 0),
(892, 136, 0, 129, 0),
(893, 150, 0, 129, 0),
(894, 46, 0, 130, 1),
(895, 54, 0, 130, 1),
(896, 69, 0, 130, 1),
(897, 70, 0, 130, 0),
(898, 71, 0, 130, 0),
(899, 136, 0, 130, 0),
(900, 150, 0, 130, 0),
(901, 46, 0, 131, 1),
(902, 54, 0, 131, 1),
(903, 69, 0, 131, 1),
(904, 70, 0, 131, 0),
(905, 71, 0, 131, 0),
(906, 136, 0, 131, 0),
(907, 150, 0, 131, 0),
(908, 46, 0, 132, 1),
(909, 54, 0, 132, 1),
(910, 69, 0, 132, 1),
(911, 70, 0, 132, 0),
(912, 71, 0, 132, 0),
(913, 136, 0, 132, 0),
(914, 150, 0, 132, 0),
(915, 46, 0, 133, 1),
(916, 54, 0, 133, 1),
(917, 69, 0, 133, 1),
(918, 70, 0, 133, 0),
(919, 71, 0, 133, 0),
(920, 136, 0, 133, 0),
(921, 150, 0, 133, 0),
(922, 46, 0, 134, 1),
(923, 54, 0, 134, 1),
(924, 69, 0, 134, 1),
(925, 70, 0, 134, 0),
(926, 71, 0, 134, 0),
(927, 136, 0, 134, 0),
(928, 150, 0, 134, 0),
(929, 46, 0, 135, 1),
(930, 54, 0, 135, 1),
(931, 69, 0, 135, 1),
(932, 70, 0, 135, 0),
(933, 71, 0, 135, 0),
(934, 136, 0, 135, 0),
(935, 150, 0, 135, 0),
(936, 46, 0, 136, 1),
(937, 54, 0, 136, 1),
(938, 69, 0, 136, 1),
(939, 70, 0, 136, 0),
(940, 71, 0, 136, 0),
(941, 136, 0, 136, 0),
(942, 150, 0, 136, 0),
(943, 46, 0, 137, 1),
(944, 54, 0, 137, 1),
(945, 69, 0, 137, 1),
(946, 70, 0, 137, 0),
(947, 71, 0, 137, 0),
(948, 136, 0, 137, 0),
(949, 150, 0, 137, 0),
(950, 46, 0, 138, 1),
(951, 54, 0, 138, 1),
(952, 69, 0, 138, 1),
(953, 70, 0, 138, 0),
(954, 71, 0, 138, 0),
(955, 136, 0, 138, 0),
(956, 150, 0, 138, 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_text`
--

CREATE TABLE `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_entity_varchar`
--

CREATE TABLE `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_category_entity_varchar`
--

INSERT INTO `catalog_category_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 45, 0, 1, 'Root Catalog'),
(2, 45, 0, 2, 'Default Category'),
(3, 52, 0, 2, 'PRODUCTS'),
(302, 45, 0, 50, 'Groceries'),
(303, 52, 0, 50, 'PRODUCTS'),
(304, 117, 0, 50, 'groceries'),
(305, 118, 0, 50, 'groceries'),
(306, 145, 0, 50, '0'),
(307, 147, 0, 50, '0'),
(308, 45, 0, 51, 'Beverages'),
(309, 52, 0, 51, 'PRODUCTS'),
(310, 117, 0, 51, 'beverages'),
(311, 118, 0, 51, 'groceries/beverages'),
(312, 145, 0, 51, '0'),
(313, 147, 0, 51, '0'),
(314, 45, 0, 52, 'Snack Foods'),
(315, 52, 0, 52, 'PRODUCTS'),
(316, 117, 0, 52, 'snack-foods'),
(317, 118, 0, 52, 'groceries/snack-foods'),
(318, 145, 0, 52, '0'),
(319, 147, 0, 52, '0'),
(320, 45, 0, 53, 'Pantry'),
(321, 52, 0, 53, 'PRODUCTS'),
(322, 117, 0, 53, 'pantry'),
(323, 118, 0, 53, 'groceries/pantry'),
(324, 145, 0, 53, '0'),
(325, 147, 0, 53, '0'),
(326, 45, 0, 54, 'Cooking & Baking Supplies'),
(327, 52, 0, 54, 'PRODUCTS'),
(328, 117, 0, 54, 'cooking-baking-supplies'),
(329, 118, 0, 54, 'groceries/cooking-baking-supplies'),
(330, 145, 0, 54, '0'),
(331, 147, 0, 54, '0'),
(332, 45, 0, 55, 'Breakfast Foods'),
(333, 52, 0, 55, 'PRODUCTS'),
(334, 117, 0, 55, 'breakfast-foods'),
(335, 118, 0, 55, 'groceries/breakfast-foods'),
(336, 145, 0, 55, '0'),
(337, 147, 0, 55, '0'),
(338, 45, 0, 56, 'Candy, Gum & Chocolate'),
(339, 52, 0, 56, 'PRODUCTS'),
(340, 117, 0, 56, 'candy-gum-chocolate'),
(341, 118, 0, 56, 'groceries/candy-gum-chocolate'),
(342, 145, 0, 56, '0'),
(343, 147, 0, 56, '0'),
(344, 45, 0, 57, 'Soups, Meals & Side Dishes'),
(345, 52, 0, 57, 'PRODUCTS'),
(346, 117, 0, 57, 'soups-meals-side-dishes'),
(347, 118, 0, 57, 'groceries/soups-meals-side-dishes'),
(348, 145, 0, 57, '0'),
(349, 147, 0, 57, '0'),
(350, 45, 0, 58, 'Canned & Jarred Food'),
(351, 52, 0, 58, 'PRODUCTS'),
(352, 117, 0, 58, 'canned-jarred-food'),
(353, 118, 0, 58, 'groceries/canned-jarred-food'),
(354, 145, 0, 58, '0'),
(355, 147, 0, 58, '0'),
(356, 45, 0, 59, 'Pasta & Pasta Sauce'),
(357, 52, 0, 59, 'PRODUCTS'),
(358, 117, 0, 59, 'pasta-pasta-sauce'),
(359, 118, 0, 59, 'groceries/pasta-pasta-sauce'),
(360, 145, 0, 59, '0'),
(361, 147, 0, 59, '0'),
(362, 45, 0, 60, 'Rice, Beans & Grains'),
(363, 52, 0, 60, 'PRODUCTS'),
(364, 117, 0, 60, 'rice-beans-grains'),
(365, 118, 0, 60, 'groceries/rice-beans-grains'),
(366, 145, 0, 60, '0'),
(367, 147, 0, 60, '0'),
(368, 45, 0, 61, 'Baby Food & Formula'),
(369, 52, 0, 61, 'PRODUCTS'),
(370, 117, 0, 61, 'baby-food-formula'),
(371, 118, 0, 61, 'groceries/baby-food-formula'),
(372, 145, 0, 61, '0'),
(373, 147, 0, 61, '0'),
(374, 45, 0, 62, 'Organic'),
(375, 52, 0, 62, 'PRODUCTS'),
(376, 117, 0, 62, 'organic'),
(377, 118, 0, 62, 'groceries/organic'),
(378, 145, 0, 62, '0'),
(379, 147, 0, 62, '0'),
(380, 45, 0, 63, 'Soft Drinks'),
(381, 52, 0, 63, 'PRODUCTS'),
(382, 117, 0, 63, 'soft-drinks'),
(383, 118, 0, 63, 'groceries/beverages/soft-drinks'),
(384, 145, 0, 63, '0'),
(385, 147, 0, 63, '0'),
(386, 45, 0, 64, 'Water'),
(387, 52, 0, 64, 'PRODUCTS'),
(388, 117, 0, 64, 'water'),
(389, 118, 0, 64, 'groceries/beverages/water'),
(390, 145, 0, 64, '0'),
(391, 147, 0, 64, '0'),
(392, 45, 0, 65, 'Fresh Juice & Fruit Drinks'),
(393, 52, 0, 65, 'PRODUCTS'),
(394, 117, 0, 65, 'fresh-juice-fruit-drinks'),
(395, 118, 0, 65, 'groceries/beverages/fresh-juice-fruit-drinks'),
(396, 145, 0, 65, '0'),
(397, 147, 0, 65, '0'),
(398, 45, 0, 66, 'Sports & Energy Drinks'),
(399, 52, 0, 66, 'PRODUCTS'),
(400, 117, 0, 66, 'sports-energy-drinks'),
(401, 118, 0, 66, 'groceries/beverages/sports-energy-drinks'),
(402, 145, 0, 66, '0'),
(403, 147, 0, 66, '0'),
(404, 45, 0, 67, 'Tea'),
(405, 52, 0, 67, 'PRODUCTS'),
(406, 117, 0, 67, 'tea'),
(407, 118, 0, 67, 'groceries/beverages/tea'),
(408, 145, 0, 67, '0'),
(409, 147, 0, 67, '0'),
(410, 45, 0, 68, 'Protein & Meal Replacement'),
(411, 52, 0, 68, 'PRODUCTS'),
(412, 117, 0, 68, 'protein-meal-replacement'),
(413, 118, 0, 68, 'groceries/beverages/protein-meal-replacement'),
(414, 145, 0, 68, '0'),
(415, 147, 0, 68, '0'),
(416, 45, 0, 69, 'Cream & Creamers'),
(417, 52, 0, 69, 'PRODUCTS'),
(418, 117, 0, 69, 'cream-creamers'),
(419, 118, 0, 69, 'groceries/beverages/cream-creamers'),
(420, 145, 0, 69, '0'),
(421, 147, 0, 69, '0'),
(422, 45, 0, 70, 'Non-Dairy Milk & Creamers'),
(423, 52, 0, 70, 'PRODUCTS'),
(424, 117, 0, 70, 'non-dairy-milk-creamers'),
(425, 118, 0, 70, 'groceries/beverages/non-dairy-milk-creamers'),
(426, 145, 0, 70, '0'),
(427, 147, 0, 70, '0'),
(428, 45, 0, 71, 'Drink Mixes & Syrups'),
(429, 52, 0, 71, 'PRODUCTS'),
(430, 117, 0, 71, 'drink-mixes-syrups'),
(431, 118, 0, 71, 'groceries/beverages/drink-mixes-syrups'),
(432, 145, 0, 71, '0'),
(433, 147, 0, 71, '0'),
(434, 45, 0, 72, 'Cocktail Mixers'),
(435, 52, 0, 72, 'PRODUCTS'),
(436, 117, 0, 72, 'cocktail-mixers'),
(437, 118, 0, 72, 'groceries/beverages/cocktail-mixers'),
(438, 145, 0, 72, '0'),
(439, 147, 0, 72, '0'),
(440, 45, 0, 73, 'Organic Beverages'),
(441, 52, 0, 73, 'PRODUCTS'),
(442, 117, 0, 73, 'organic-beverages'),
(443, 118, 0, 73, 'groceries/beverages/organic-beverages'),
(444, 145, 0, 73, '0'),
(445, 147, 0, 73, '0'),
(446, 45, 0, 74, 'Household Supplies'),
(447, 52, 0, 74, 'PRODUCTS'),
(448, 117, 0, 74, 'household-supplies'),
(449, 118, 0, 74, 'household-supplies'),
(450, 145, 0, 74, '0'),
(451, 147, 0, 74, '0'),
(452, 45, 0, 75, 'Paper & Plastic Products'),
(453, 52, 0, 75, 'PRODUCTS'),
(454, 117, 0, 75, 'paper-plastic-products'),
(455, 118, 0, 75, 'household-supplies/paper-plastic-products'),
(456, 145, 0, 75, '0'),
(457, 147, 0, 75, '0'),
(458, 45, 0, 76, 'Laundry'),
(459, 52, 0, 76, 'PRODUCTS'),
(460, 117, 0, 76, 'laundry'),
(461, 118, 0, 76, 'household-supplies/laundry'),
(462, 145, 0, 76, '0'),
(463, 147, 0, 76, '0'),
(464, 45, 0, 77, 'Cleaning Products'),
(465, 52, 0, 77, 'PRODUCTS'),
(466, 117, 0, 77, 'cleaning-products'),
(467, 118, 0, 77, 'household-supplies/cleaning-products'),
(468, 145, 0, 77, '0'),
(469, 147, 0, 77, '0'),
(470, 45, 0, 78, 'Hand Soap & Sanitizers'),
(471, 52, 0, 78, 'PRODUCTS'),
(472, 117, 0, 78, 'hand-soap-sanitizers'),
(473, 118, 0, 78, 'household-supplies/hand-soap-sanitizers'),
(474, 145, 0, 78, '0'),
(475, 147, 0, 78, '0'),
(476, 45, 0, 79, 'Cleaning Tools'),
(477, 52, 0, 79, 'PRODUCTS'),
(478, 117, 0, 79, 'cleaning-tools'),
(479, 118, 0, 79, 'household-supplies/cleaning-tools'),
(480, 145, 0, 79, '0'),
(481, 147, 0, 79, '0'),
(482, 45, 0, 80, 'Food Storage'),
(483, 52, 0, 80, 'PRODUCTS'),
(484, 117, 0, 80, 'food-storage'),
(485, 118, 0, 80, 'household-supplies/food-storage'),
(486, 145, 0, 80, '0'),
(487, 147, 0, 80, '0'),
(488, 45, 0, 81, 'Home Fragrance'),
(489, 52, 0, 81, 'PRODUCTS'),
(490, 117, 0, 81, 'home-fragrance'),
(491, 118, 0, 81, 'household-supplies/home-fragrance'),
(492, 145, 0, 81, '0'),
(493, 147, 0, 81, '0'),
(494, 45, 0, 82, 'Party Supplies'),
(495, 52, 0, 82, 'PRODUCTS'),
(496, 117, 0, 82, 'party-supplies'),
(497, 118, 0, 82, 'household-supplies/party-supplies'),
(498, 145, 0, 82, '0'),
(499, 147, 0, 82, '0'),
(500, 45, 0, 83, 'Paper Towels'),
(501, 52, 0, 83, 'PRODUCTS'),
(502, 117, 0, 83, 'paper-towels'),
(503, 118, 0, 83, 'household-supplies/paper-plastic-products/paper-towels'),
(504, 145, 0, 83, '0'),
(505, 147, 0, 83, '0'),
(506, 45, 0, 84, 'Facial Tissues'),
(507, 52, 0, 84, 'PRODUCTS'),
(508, 117, 0, 84, 'facial-tissues'),
(509, 118, 0, 84, 'household-supplies/paper-plastic-products/facial-tissues'),
(510, 145, 0, 84, '0'),
(511, 147, 0, 84, '0'),
(512, 45, 0, 85, 'Disposable Tableware'),
(513, 52, 0, 85, 'PRODUCTS'),
(514, 117, 0, 85, 'disposable-tableware'),
(515, 118, 0, 85, 'household-supplies/paper-plastic-products/disposable-tableware'),
(516, 145, 0, 85, '0'),
(517, 147, 0, 85, '0'),
(518, 45, 0, 86, 'Paper Napkins'),
(519, 52, 0, 86, 'PRODUCTS'),
(520, 117, 0, 86, 'paper-napkins'),
(521, 118, 0, 86, 'household-supplies/paper-plastic-products/paper-napkins'),
(522, 145, 0, 86, '0'),
(523, 147, 0, 86, '0'),
(524, 45, 0, 87, 'Disposable Coffee Filters'),
(525, 52, 0, 87, 'PRODUCTS'),
(526, 117, 0, 87, 'disposable-coffee-filters'),
(527, 118, 0, 87, 'household-supplies/paper-plastic-products/disposable-coffee-filters'),
(528, 145, 0, 87, '0'),
(529, 147, 0, 87, '0'),
(530, 45, 0, 88, 'Bleach'),
(531, 52, 0, 88, 'PRODUCTS'),
(532, 117, 0, 88, 'bleach'),
(533, 118, 0, 88, 'household-supplies/laundry/bleach'),
(534, 145, 0, 88, '0'),
(535, 147, 0, 88, '0'),
(536, 45, 0, 89, 'Fabric Softener'),
(537, 52, 0, 89, 'PRODUCTS'),
(538, 117, 0, 89, 'fabric-softener'),
(539, 118, 0, 89, 'household-supplies/laundry/fabric-softener'),
(540, 145, 0, 89, '0'),
(541, 147, 0, 89, '0'),
(542, 45, 0, 90, 'Laundry Detergent'),
(543, 52, 0, 90, 'PRODUCTS'),
(544, 117, 0, 90, 'laundry-detergent'),
(545, 118, 0, 90, 'household-supplies/laundry/laundry-detergent'),
(546, 145, 0, 90, '0'),
(547, 147, 0, 90, '0'),
(548, 45, 0, 91, 'Stain Removers'),
(549, 52, 0, 91, 'PRODUCTS'),
(550, 117, 0, 91, 'stain-removers'),
(551, 118, 0, 91, 'household-supplies/laundry/stain-removers'),
(552, 145, 0, 91, '0'),
(553, 147, 0, 91, '0'),
(554, 45, 0, 92, 'Dryer Sheets'),
(555, 52, 0, 92, 'PRODUCTS'),
(556, 117, 0, 92, 'dryer-sheets'),
(557, 118, 0, 92, 'household-supplies/laundry/dryer-sheets'),
(558, 145, 0, 92, '0'),
(559, 147, 0, 92, '0'),
(560, 45, 0, 93, 'Scent Boosters'),
(561, 52, 0, 93, 'PRODUCTS'),
(562, 117, 0, 93, 'scent-boosters'),
(563, 118, 0, 93, 'household-supplies/laundry/scent-boosters'),
(564, 145, 0, 93, '0'),
(565, 147, 0, 93, '0'),
(566, 45, 0, 94, 'Irons & Steamers'),
(567, 52, 0, 94, 'PRODUCTS'),
(568, 117, 0, 94, 'irons-steamers'),
(569, 118, 0, 94, 'household-supplies/laundry/irons-steamers'),
(570, 145, 0, 94, '0'),
(571, 147, 0, 94, '0'),
(572, 45, 0, 95, 'Other Laundry Care'),
(573, 52, 0, 95, 'PRODUCTS'),
(574, 117, 0, 95, 'other-laundry-care'),
(575, 118, 0, 95, 'household-supplies/laundry/other-laundry-care'),
(576, 145, 0, 95, '0'),
(577, 147, 0, 95, '0'),
(578, 45, 0, 96, 'Health & Beauty'),
(579, 52, 0, 96, 'PRODUCTS'),
(580, 117, 0, 96, 'health-beauty'),
(581, 118, 0, 96, 'health-beauty'),
(582, 145, 0, 96, '0'),
(583, 147, 0, 96, '0'),
(584, 45, 0, 97, 'Pet Supplies'),
(586, 52, 0, 97, 'PRODUCTS'),
(587, 117, 0, 97, 'pet-supplies'),
(588, 118, 0, 97, 'pet-supplies'),
(589, 145, 0, 97, '0'),
(590, 147, 0, 97, '0'),
(592, 45, 0, 98, 'Electronics & Computers'),
(593, 52, 0, 98, 'PRODUCTS'),
(594, 117, 0, 98, 'electronics-computers'),
(595, 118, 0, 98, 'electronics-computers'),
(596, 145, 0, 98, '0'),
(597, 147, 0, 98, '0'),
(600, 45, 0, 99, 'Home & Décor'),
(601, 52, 0, 99, 'PRODUCTS'),
(602, 117, 0, 99, 'home-decor'),
(603, 118, 0, 99, 'home-decor'),
(604, 145, 0, 99, '0'),
(605, 147, 0, 99, '0'),
(606, 45, 0, 100, 'Appliances'),
(607, 52, 0, 100, 'PRODUCTS'),
(608, 117, 0, 100, 'appliances'),
(609, 118, 0, 100, 'appliances'),
(610, 145, 0, 100, '0'),
(611, 147, 0, 100, '0'),
(612, 45, 0, 101, 'Furniture'),
(613, 52, 0, 101, 'PRODUCTS'),
(614, 117, 0, 101, 'furniture'),
(615, 118, 0, 101, 'furniture'),
(616, 145, 0, 101, '0'),
(617, 147, 0, 101, '0'),
(618, 45, 0, 102, 'Patio & Garden'),
(619, 52, 0, 102, 'PRODUCTS'),
(620, 117, 0, 102, 'patio-garden'),
(621, 118, 0, 102, 'patio-garden'),
(622, 145, 0, 102, '0'),
(623, 147, 0, 102, '0'),
(624, 45, 0, 103, 'Toys & Games'),
(625, 52, 0, 103, 'PRODUCTS'),
(626, 117, 0, 103, 'toys-games'),
(627, 118, 0, 103, 'toys-games'),
(628, 145, 0, 103, '0'),
(629, 147, 0, 103, '0'),
(630, 45, 0, 104, 'Video Games & Consoles'),
(631, 52, 0, 104, 'PRODUCTS'),
(632, 117, 0, 104, 'video-games-consoles'),
(633, 118, 0, 104, 'video-games-consoles'),
(634, 145, 0, 104, '0'),
(635, 147, 0, 104, '0'),
(636, 45, 0, 105, 'Books, Music & Movies'),
(637, 52, 0, 105, 'PRODUCTS'),
(638, 117, 0, 105, 'books-music-movies'),
(639, 118, 0, 105, 'books-music-movies'),
(640, 145, 0, 105, '0'),
(641, 147, 0, 105, '0'),
(642, 45, 0, 106, 'Clothing, Shoes & Accessories'),
(643, 52, 0, 106, 'PRODUCTS'),
(644, 117, 0, 106, 'clothing-shoes-accessories'),
(645, 118, 0, 106, 'clothing-shoes-accessories'),
(646, 145, 0, 106, '0'),
(647, 147, 0, 106, '0'),
(648, 45, 0, 107, 'Jewelry & Watches'),
(649, 52, 0, 107, 'PRODUCTS'),
(650, 117, 0, 107, 'jewelry-watches'),
(651, 118, 0, 107, 'jewelry-watches'),
(652, 145, 0, 107, '0'),
(653, 147, 0, 107, '0'),
(654, 45, 0, 108, 'Sporting Goods'),
(655, 52, 0, 108, 'PRODUCTS'),
(656, 117, 0, 108, 'sporting-goods'),
(657, 118, 0, 108, 'sporting-goods'),
(658, 145, 0, 108, '0'),
(659, 147, 0, 108, '0'),
(660, 45, 0, 109, 'Arts, Crafts & Hobbies'),
(661, 52, 0, 109, 'PRODUCTS'),
(662, 117, 0, 109, 'arts-crafts-hobbies'),
(663, 118, 0, 109, 'arts-crafts-hobbies'),
(664, 145, 0, 109, '0'),
(665, 147, 0, 109, '0'),
(666, 45, 0, 110, 'Office Products'),
(667, 52, 0, 110, 'PRODUCTS'),
(668, 117, 0, 110, 'office-products'),
(669, 118, 0, 110, 'office-products'),
(670, 145, 0, 110, '0'),
(671, 147, 0, 110, '0'),
(672, 45, 0, 111, 'Tools & Home Improvement'),
(673, 52, 0, 111, 'PRODUCTS'),
(674, 117, 0, 111, 'tools-home-improvement'),
(675, 118, 0, 111, 'tools-home-improvement'),
(676, 145, 0, 111, '0'),
(677, 147, 0, 111, '0'),
(678, 45, 0, 112, 'Automotive'),
(679, 52, 0, 112, 'PRODUCTS'),
(680, 117, 0, 112, 'automotive'),
(681, 118, 0, 112, 'automotive'),
(682, 145, 0, 112, '0'),
(683, 147, 0, 112, '0'),
(684, 45, 0, 113, 'Wholesale Shop'),
(685, 52, 0, 113, 'PRODUCTS'),
(686, 117, 0, 113, 'wholesale-shop'),
(687, 118, 0, 113, 'wholesale-shop'),
(688, 145, 0, 113, '0'),
(689, 147, 0, 113, '0'),
(690, 45, 0, 114, 'Industrial & Scientific'),
(691, 52, 0, 114, 'PRODUCTS'),
(692, 117, 0, 114, 'industrial-scientific'),
(693, 118, 0, 114, 'industrial-scientific'),
(694, 145, 0, 114, '0'),
(695, 147, 0, 114, '0'),
(696, 45, 0, 115, 'Gift Cards'),
(697, 52, 0, 115, 'PRODUCTS'),
(698, 117, 0, 115, 'gift-cards'),
(699, 118, 0, 115, 'gift-cards'),
(700, 145, 0, 115, '0'),
(701, 147, 0, 115, '0'),
(702, 45, 0, 116, 'Protein & Granola Bars'),
(703, 52, 0, 116, 'PRODUCTS'),
(704, 117, 0, 116, 'protein-granola-bars'),
(705, 118, 0, 116, 'groceries/snack-foods/protein-granola-bars'),
(706, 145, 0, 116, '0'),
(707, 147, 0, 116, '0'),
(708, 45, 0, 117, 'Chips & Pretzels'),
(709, 52, 0, 117, 'PRODUCTS'),
(710, 117, 0, 117, 'chips-pretzels'),
(711, 118, 0, 117, 'groceries/snack-foods/chips-pretzels'),
(712, 145, 0, 117, '0'),
(713, 147, 0, 117, '0'),
(714, 45, 0, 118, 'Cookies'),
(715, 52, 0, 118, 'PRODUCTS'),
(716, 117, 0, 118, 'cookies'),
(717, 118, 0, 118, 'groceries/snack-foods/cookies'),
(718, 145, 0, 118, '0'),
(719, 147, 0, 118, '0'),
(720, 45, 0, 119, 'Bread & Crackers'),
(721, 52, 0, 119, 'PRODUCTS'),
(722, 117, 0, 119, 'bread-crackers'),
(723, 118, 0, 119, 'groceries/snack-foods/bread-crackers'),
(724, 145, 0, 119, '0'),
(725, 147, 0, 119, '0'),
(726, 45, 0, 120, 'Nuts, Seeds & Trail Mix'),
(727, 52, 0, 120, 'PRODUCTS'),
(728, 117, 0, 120, 'nuts-seeds-trail-mix'),
(729, 118, 0, 120, 'groceries/snack-foods/nuts-seeds-trail-mix'),
(730, 145, 0, 120, '0'),
(731, 147, 0, 120, '0'),
(732, 45, 0, 121, 'Jerky & Dried Meats'),
(733, 52, 0, 121, 'PRODUCTS'),
(734, 117, 0, 121, 'jerky-dried-meats'),
(735, 118, 0, 121, 'groceries/snack-foods/jerky-dried-meats'),
(736, 145, 0, 121, '0'),
(737, 147, 0, 121, '0'),
(738, 45, 0, 122, 'Popcorn & Puffed Snacks'),
(739, 52, 0, 122, 'PRODUCTS'),
(740, 117, 0, 122, 'popcorn-puffed-snacks'),
(741, 118, 0, 122, 'groceries/snack-foods/popcorn-puffed-snacks'),
(742, 145, 0, 122, '0'),
(743, 147, 0, 122, '0'),
(744, 45, 0, 123, 'Fruit & Vegetable Snacks'),
(745, 52, 0, 123, 'PRODUCTS'),
(746, 117, 0, 123, 'fruit-vegetable-snacks'),
(747, 118, 0, 123, 'groceries/snack-foods/fruit-vegetable-snacks'),
(748, 145, 0, 123, '0'),
(749, 147, 0, 123, '0'),
(750, 45, 0, 124, 'Applesauce, Fruit Cups & Squeezes'),
(751, 52, 0, 124, 'PRODUCTS'),
(752, 117, 0, 124, 'applesauce-fruit-cups-squeezes'),
(753, 118, 0, 124, 'groceries/snack-foods/applesauce-fruit-cups-squeezes'),
(754, 145, 0, 124, '0'),
(755, 147, 0, 124, '0'),
(756, 45, 0, 125, 'Pudding & Gelatin Snacks'),
(757, 52, 0, 125, 'PRODUCTS'),
(758, 117, 0, 125, 'pudding-gelatin-snacks'),
(759, 118, 0, 125, 'groceries/snack-foods/pudding-gelatin-snacks'),
(760, 145, 0, 125, '0'),
(761, 147, 0, 125, '0'),
(762, 45, 0, 126, 'Ice Cream Cones & Toppings'),
(763, 52, 0, 126, 'PRODUCTS'),
(764, 117, 0, 126, 'ice-cream-cones-toppings'),
(765, 118, 0, 126, 'groceries/snack-foods/ice-cream-cones-toppings'),
(766, 145, 0, 126, '0'),
(767, 147, 0, 126, '0'),
(768, 45, 0, 127, 'Oil'),
(769, 52, 0, 127, 'PRODUCTS'),
(770, 117, 0, 127, 'oil'),
(771, 118, 0, 127, 'groceries/pantry/oil'),
(772, 145, 0, 127, '0'),
(773, 147, 0, 127, '0'),
(774, 45, 0, 128, 'Vinegar'),
(775, 52, 0, 128, 'PRODUCTS'),
(776, 117, 0, 128, 'vinegar'),
(777, 118, 0, 128, 'groceries/pantry/vinegar'),
(778, 145, 0, 128, '0'),
(779, 147, 0, 128, '0'),
(780, 45, 0, 129, 'Spices & Seasonings'),
(781, 52, 0, 129, 'PRODUCTS'),
(782, 117, 0, 129, 'spices-seasonings'),
(783, 118, 0, 129, 'groceries/pantry/spices-seasonings'),
(784, 145, 0, 129, '0'),
(785, 147, 0, 129, '0'),
(786, 45, 0, 130, 'Condiments'),
(787, 52, 0, 130, 'PRODUCTS'),
(788, 117, 0, 130, 'condiments'),
(789, 118, 0, 130, 'groceries/pantry/condiments'),
(790, 145, 0, 130, '0'),
(791, 147, 0, 130, '0'),
(792, 45, 0, 131, 'Sauces & Marinades'),
(793, 52, 0, 131, 'PRODUCTS'),
(794, 117, 0, 131, 'sauces-marinades'),
(795, 118, 0, 131, 'groceries/pantry/sauces-marinades'),
(796, 145, 0, 131, '0'),
(797, 147, 0, 131, '0'),
(798, 45, 0, 132, 'Jams, Jellies & Preserves'),
(799, 52, 0, 132, 'PRODUCTS'),
(800, 117, 0, 132, 'jams-jellies-preserves'),
(801, 118, 0, 132, 'groceries/pantry/jams-jellies-preserves'),
(802, 145, 0, 132, '0'),
(803, 147, 0, 132, '0'),
(804, 45, 0, 133, 'Nut Butters'),
(805, 52, 0, 133, 'PRODUCTS'),
(806, 117, 0, 133, 'nut-butters'),
(807, 118, 0, 133, 'groceries/pantry/nut-butters'),
(808, 145, 0, 133, '0'),
(809, 147, 0, 133, '0'),
(810, 45, 0, 134, 'Salad Dressings'),
(811, 52, 0, 134, 'PRODUCTS'),
(812, 117, 0, 134, 'salad-dressings'),
(813, 118, 0, 134, 'groceries/pantry/salad-dressings'),
(814, 145, 0, 134, '0'),
(815, 147, 0, 134, '0'),
(816, 45, 0, 135, 'Salt & Pepper'),
(817, 52, 0, 135, 'PRODUCTS'),
(818, 117, 0, 135, 'salt-pepper'),
(819, 118, 0, 135, 'groceries/pantry/salt-pepper'),
(820, 145, 0, 135, '0'),
(821, 147, 0, 135, '0'),
(822, 45, 0, 136, 'Sugar & Other Sweeteners'),
(823, 52, 0, 136, 'PRODUCTS'),
(824, 117, 0, 136, 'sugar-other-sweeteners'),
(825, 118, 0, 136, 'groceries/pantry/sugar-other-sweeteners'),
(826, 145, 0, 136, '0'),
(827, 147, 0, 136, '0'),
(828, 45, 0, 137, 'Baking Ingredients'),
(829, 52, 0, 137, 'PRODUCTS'),
(830, 117, 0, 137, 'baking-ingredients'),
(831, 118, 0, 137, 'groceries/pantry/baking-ingredients'),
(832, 145, 0, 137, '0'),
(833, 147, 0, 137, '0'),
(834, 45, 0, 138, 'Flours & Meals'),
(835, 52, 0, 138, 'PRODUCTS'),
(836, 117, 0, 138, 'flours-meals'),
(837, 118, 0, 138, 'groceries/pantry/flours-meals'),
(838, 145, 0, 138, '0'),
(839, 147, 0, 138, '0'),
(934, 143, 0, 50, 'fa fa-coffee');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product`
--

CREATE TABLE `catalog_category_product` (
  `entity_id` int(11) NOT NULL COMMENT 'Entity ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dumping data for table `catalog_category_product`
--

INSERT INTO `catalog_category_product` (`entity_id`, `category_id`, `product_id`, `position`) VALUES
(55, 2, 16, 1),
(56, 50, 16, 1),
(57, 51, 16, 1),
(58, 63, 16, 1),
(59, 2, 17, 1),
(60, 50, 17, 1),
(61, 51, 17, 1),
(62, 67, 17, 1),
(63, 2, 18, 1),
(64, 50, 18, 1),
(65, 51, 18, 1),
(66, 63, 18, 1),
(67, 2, 19, 1),
(68, 74, 19, 1),
(69, 77, 19, 1),
(70, 2, 20, 1),
(71, 74, 20, 1),
(72, 77, 20, 1),
(73, 2, 21, 1),
(74, 74, 21, 1),
(75, 77, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index`
--

CREATE TABLE `catalog_category_product_index` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dumping data for table `catalog_category_product_index`
--

INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(2, 16, 1, 1, 1, 4),
(2, 17, 1, 1, 1, 4),
(2, 18, 1, 1, 1, 4),
(2, 19, 1, 1, 1, 4),
(2, 20, 1, 1, 1, 4),
(2, 21, 1, 1, 1, 4),
(50, 16, 1, 1, 1, 4),
(50, 17, 1, 1, 1, 4),
(50, 18, 1, 1, 1, 4),
(51, 16, 1, 1, 1, 4),
(51, 17, 1, 1, 1, 4),
(51, 18, 1, 1, 1, 4),
(63, 16, 1, 1, 1, 4),
(63, 18, 1, 1, 1, 4),
(67, 17, 1, 1, 1, 4),
(74, 19, 1, 1, 1, 4),
(74, 20, 1, 1, 1, 4),
(74, 21, 1, 1, 1, 4),
(77, 19, 1, 1, 1, 4),
(77, 20, 1, 1, 1, 4),
(77, 21, 1, 1, 1, 4),
(2, 16, 1, 1, 2, 4),
(2, 17, 1, 1, 2, 4),
(2, 18, 1, 1, 2, 4),
(2, 19, 1, 1, 2, 4),
(2, 20, 1, 1, 2, 4),
(2, 21, 1, 1, 2, 4),
(50, 16, 1, 1, 2, 4),
(50, 17, 1, 1, 2, 4),
(50, 18, 1, 1, 2, 4),
(51, 16, 1, 1, 2, 4),
(51, 17, 1, 1, 2, 4),
(51, 18, 1, 1, 2, 4),
(63, 16, 1, 1, 2, 4),
(63, 18, 1, 1, 2, 4),
(67, 17, 1, 1, 2, 4),
(74, 19, 1, 1, 2, 4),
(74, 20, 1, 1, 2, 4),
(74, 21, 1, 1, 2, 4),
(77, 19, 1, 1, 2, 4),
(77, 20, 1, 1, 2, 4),
(77, 21, 1, 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_category_product_index_tmp`
--

CREATE TABLE `catalog_category_product_index_tmp` (
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) UNSIGNED NOT NULL COMMENT 'Visibility'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_compare_item`
--

CREATE TABLE `catalog_compare_item` (
  `catalog_compare_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Compare Item ID',
  `visitor_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

--
-- Dumping data for table `catalog_compare_item`
--

INSERT INTO `catalog_compare_item` (`catalog_compare_item_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`) VALUES
(1, 56, NULL, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_eav_attribute`
--

CREATE TABLE `catalog_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  `is_required_in_admin_store` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Required In Admin Store',
  `is_used_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `search_weight` float NOT NULL DEFAULT '1' COMMENT 'Search Weight',
  `additional_data` text COMMENT 'Additional swatch attributes data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `catalog_eav_attribute`
--

INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`, `is_required_in_admin_store`, `is_used_in_grid`, `is_visible_in_grid`, `is_filterable_in_grid`, `search_weight`, `additional_data`) VALUES
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(47, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(51, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(52, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(53, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(54, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(57, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(58, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(59, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(63, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(64, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(65, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(66, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(67, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\Available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(68, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Sortby\\DefaultSortby', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(70, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(71, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(72, 'Magento\\Catalog\\Block\\Adminhtml\\Category\\Helper\\Pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(73, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 5, NULL),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 6, NULL),
(75, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(76, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, NULL, 1, 0, 1, 0, 0, 1, 0, 0, 1, NULL),
(77, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 'simple,virtual,bundle,downloadable,configurable', 1, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(80, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(81, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,downloadable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(82, 'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Weight', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(83, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'simple', 1, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(88, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(89, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(90, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(91, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(92, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(93, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 'simple,virtual,configurable', 1, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(95, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(96, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(97, 'Magento\\Framework\\Data\\Form\\Element\\Hidden', 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL),
(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(99, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 1, 0, 0, 0, 1, NULL),
(100, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(101, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(105, 'Magento\\Catalog\\Block\\Adminhtml\\Product\\Helper\\Form\\Category', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(107, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(109, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(110, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(111, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(112, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(113, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(114, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,bundle,grouped,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(115, 'Magento\\CatalogInventory\\Block\\Adminhtml\\Form\\Field\\Stock', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(116, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(117, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(118, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(119, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(120, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(121, 'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(122, 'Magento\\Msrp\\Block\\Adminhtml\\Product\\Helper\\Form\\Type\\Price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,downloadable,bundle,configurable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(123, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(124, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(125, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(126, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(127, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'bundle', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(129, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(131, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(132, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(133, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,virtual,bundle,downloadable,configurable', 0, 0, 0, 0, 0, 1, 0, 1, 1, NULL),
(134, 'Magento\\GiftMessage\\Block\\Adminhtml\\Product\\Helper\\Form\\Config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL),
(135, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(136, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(137, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(138, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(139, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(140, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(141, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(142, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(143, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(144, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(145, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(146, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(147, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(148, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(149, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL),
(150, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(151, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(152, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(153, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL),
(154, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, NULL, 0, 0, 1, 0, 0, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option`
--

CREATE TABLE `catalog_product_bundle_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_option_value`
--

CREATE TABLE `catalog_product_bundle_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_price_index`
--

CREATE TABLE `catalog_product_bundle_price_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection`
--

CREATE TABLE `catalog_product_bundle_selection` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_selection_price`
--

CREATE TABLE `catalog_product_bundle_selection_price` (
  `selection_id` int(10) UNSIGNED NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_bundle_stock_index`
--

CREATE TABLE `catalog_product_bundle_stock_index` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity`
--

CREATE TABLE `catalog_product_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

--
-- Dumping data for table `catalog_product_entity`
--

INSERT INTO `catalog_product_entity` (`entity_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(16, 4, 'simple', 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE', 0, 0, '2017-03-21 07:29:29', '2017-03-21 07:29:29'),
(17, 4, 'simple', 'KIKOI RAHA 500G CLASSIC TEA LEAVES', 0, 0, '2017-03-21 07:45:20', '2017-03-21 07:45:20'),
(18, 4, 'simple', 'COKE PET 2LTS', 0, 0, '2017-03-21 07:49:46', '2017-03-21 07:49:46'),
(19, 4, 'simple', 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION', 0, 0, '2017-03-21 08:36:47', '2017-03-21 08:36:47'),
(20, 4, 'simple', 'OMO 500G EXTRA FRESH HANDWASH', 0, 0, '2017-03-21 08:50:10', '2017-03-21 08:50:10'),
(21, 4, 'simple', 'AXION 800G LEMON LIME DISHWASHING PASTE', 0, 0, '2017-03-21 08:55:52', '2017-03-21 08:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_datetime`
--

CREATE TABLE `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_datetime`
--

INSERT INTO `catalog_product_entity_datetime` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(12, 79, 0, 16, '2017-03-21 00:00:00'),
(13, 80, 0, 16, '2017-03-31 00:00:00'),
(14, 94, 0, 16, '2017-03-21 00:00:00'),
(15, 95, 0, 16, '2017-03-31 00:00:00'),
(16, 101, 0, 16, '2017-03-21 10:29:29'),
(17, 94, 0, 17, '2017-03-21 00:00:00'),
(18, 95, 0, 17, '2017-03-23 00:00:00'),
(19, 94, 0, 19, '2017-03-21 00:00:00'),
(20, 95, 0, 19, '2017-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_decimal`
--

CREATE TABLE `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_decimal`
--

INSERT INTO `catalog_product_entity_decimal` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(41, 77, 0, 16, '850.0000'),
(42, 78, 0, 16, '800.0000'),
(43, 81, 0, 16, '600.0000'),
(44, 82, 0, 16, '200.0000'),
(45, 77, 0, 17, '1050.0000'),
(46, 82, 0, 17, '0.5000'),
(47, 77, 0, 18, '150.0000'),
(48, 82, 0, 18, '2.0000'),
(49, 77, 0, 19, '170.0000'),
(50, 82, 0, 19, '2.0000'),
(51, 77, 0, 20, '160.0000'),
(52, 82, 0, 20, '0.5000'),
(53, 77, 0, 21, '350.0000'),
(54, 82, 0, 21, '0.8000');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_gallery`
--

CREATE TABLE `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_int`
--

CREATE TABLE `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_int`
--

INSERT INTO `catalog_product_entity_int` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(89, 97, 0, 16, 1),
(90, 99, 0, 16, 4),
(91, 115, 0, 16, 1),
(92, 133, 0, 16, 0),
(93, 135, 0, 16, 1),
(94, 97, 0, 17, 1),
(95, 99, 0, 17, 4),
(96, 115, 0, 17, 1),
(97, 133, 0, 17, 2),
(98, 135, 0, 17, 1),
(99, 97, 0, 18, 1),
(100, 99, 0, 18, 4),
(101, 115, 0, 18, 1),
(102, 133, 0, 18, 2),
(103, 135, 0, 18, 1),
(104, 97, 0, 19, 1),
(105, 99, 0, 19, 4),
(106, 115, 0, 19, 1),
(107, 133, 0, 19, 2),
(108, 135, 0, 19, 0),
(109, 97, 0, 20, 1),
(110, 99, 0, 20, 4),
(111, 115, 0, 20, 1),
(112, 133, 0, 20, 2),
(113, 135, 0, 20, 1),
(114, 97, 0, 21, 1),
(115, 99, 0, 21, 4),
(116, 115, 0, 21, 1),
(117, 133, 0, 21, 2),
(118, 135, 0, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery`
--

CREATE TABLE `catalog_product_entity_media_gallery` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  `media_type` varchar(32) NOT NULL DEFAULT 'image' COMMENT 'Media entry type',
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Visibility status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery`
--

INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `value`, `media_type`, `disabled`) VALUES
(1, 90, '/7/8/7891000071823.jpg', 'image', 0),
(2, 90, '/6/1/6161101940351.jpg', 'image', 0),
(3, 90, '/2/l/2l.jpg', 'image', 0),
(4, 90, '/6/1/6161100607613.jpg', 'image', 0),
(5, 90, '/6/1/6161100609013.jpg', 'image', 0),
(6, 90, '/6/0/6001067000549.jpg', 'image', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value`
--

CREATE TABLE `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) UNSIGNED DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  `record_id` int(10) UNSIGNED NOT NULL COMMENT 'Record Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value`
--

INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `entity_id`, `label`, `position`, `disabled`, `record_id`) VALUES
(1, 0, 16, NULL, 1, 0, 1),
(2, 0, 17, NULL, 1, 0, 2),
(3, 0, 18, NULL, 1, 0, 3),
(4, 0, 19, NULL, 1, 0, 4),
(5, 0, 20, NULL, 1, 0, 5),
(6, 0, 21, NULL, 1, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value_to_entity`
--

CREATE TABLE `catalog_product_entity_media_gallery_value_to_entity` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value media Entry ID',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Product entity ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Media value to Product entity table';

--
-- Dumping data for table `catalog_product_entity_media_gallery_value_to_entity`
--

INSERT INTO `catalog_product_entity_media_gallery_value_to_entity` (`value_id`, `entity_id`) VALUES
(1, 16),
(2, 17),
(3, 18),
(4, 19),
(5, 20),
(6, 21);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_media_gallery_value_video`
--

CREATE TABLE `catalog_product_entity_media_gallery_value_video` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Media Entity ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `provider` varchar(32) DEFAULT NULL COMMENT 'Video provider ID',
  `url` text COMMENT 'Video URL',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `description` text COMMENT 'Page Meta Description',
  `metadata` text COMMENT 'Video meta data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Video Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_text`
--

CREATE TABLE `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_text`
--

INSERT INTO `catalog_product_entity_text` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(42, 75, 0, 16, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE is available for purchase in increments of 1 '),
(43, 76, 0, 16, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE is available for purchase in increments of 1 '),
(44, 85, 0, 16, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE'),
(45, 75, 0, 17, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(46, 76, 0, 17, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(47, 85, 0, 17, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(48, 85, 0, 18, 'COKE PET 2LTS'),
(49, 75, 0, 18, 'COKE PET 2LTS is available for purchase in increments of 1 '),
(50, 76, 0, 18, 'COKE PET 2LTS is available for purchase in increments of 1 '),
(51, 75, 0, 19, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION is available for purchase in increments of 1'),
(52, 76, 0, 19, '<p>SUNLIGHT 1KG 2IN1 SUNRISE SENSATION is available for purchase in increments of 1</p>'),
(53, 85, 0, 19, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION'),
(54, 75, 0, 20, 'OMO 500G EXTRA FRESH HANDWASH is available for purchase in increments of 1'),
(55, 76, 0, 20, 'OMO 500G EXTRA FRESH HANDWASH is available for purchase in increments of 1'),
(56, 85, 0, 20, 'OMO 500G EXTRA FRESH HANDWASH'),
(57, 75, 0, 21, 'AXION 800G LEMON LIME DISHWASHING PASTE is available for purchase in increments of 1 '),
(58, 76, 0, 21, 'AXION 800G LEMON LIME DISHWASHING PASTE is available for purchase in increments of 1 '),
(59, 85, 0, 21, 'AXION 800G LEMON LIME DISHWASHING PASTE');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_tier_price`
--

CREATE TABLE `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_entity_varchar`
--

CREATE TABLE `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

--
-- Dumping data for table `catalog_product_entity_varchar`
--

INSERT INTO `catalog_product_entity_varchar` (`value_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(99, 73, 0, 16, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE'),
(100, 84, 0, 16, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE'),
(101, 86, 0, 16, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE NESCAFE 200G CLASSIC JAR LOCAL COFFEE is available for purchase in increments of 1 '),
(102, 87, 0, 16, '/7/8/7891000071823.jpg'),
(103, 88, 0, 16, '/7/8/7891000071823.jpg'),
(104, 89, 0, 16, '/7/8/7891000071823.jpg'),
(105, 106, 0, 16, 'container2'),
(106, 119, 0, 16, 'nescafe-200g-classic-jar-local-coffee'),
(107, 132, 0, 16, '/7/8/7891000071823.jpg'),
(108, 134, 0, 16, '2'),
(113, 73, 0, 17, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(114, 84, 0, 17, 'KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(115, 86, 0, 17, 'KIKOI RAHA 500G CLASSIC TEA LEAVES KIKOI RAHA 500G CLASSIC TEA LEAVES'),
(116, 87, 0, 17, '/6/1/6161101940351.jpg'),
(117, 88, 0, 17, '/6/1/6161101940351.jpg'),
(118, 89, 0, 17, '/6/1/6161101940351.jpg'),
(119, 106, 0, 17, 'container2'),
(120, 119, 0, 17, 'kikoi-raha-500g-classic-tea-leaves'),
(121, 132, 0, 17, '/6/1/6161101940351.jpg'),
(122, 134, 0, 17, '2'),
(127, 73, 0, 18, 'COKE PET 2LTS'),
(128, 84, 0, 18, 'COKE PET 2LTS'),
(129, 86, 0, 18, 'COKE PET 2LTS '),
(130, 106, 0, 18, 'container2'),
(131, 119, 0, 18, 'coke-pet-2lts'),
(132, 134, 0, 18, '2'),
(133, 87, 0, 18, '/2/l/2l.jpg'),
(134, 88, 0, 18, '/2/l/2l.jpg'),
(135, 89, 0, 18, '/2/l/2l.jpg'),
(136, 132, 0, 18, '/2/l/2l.jpg'),
(141, 73, 0, 19, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION'),
(142, 84, 0, 19, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION'),
(143, 86, 0, 19, 'SUNLIGHT 1KG 2IN1 SUNRISE SENSATION SUNLIGHT 1KG 2IN1 SUNRISE SENSATION is available for purchase in increments of 1'),
(144, 87, 0, 19, '/6/1/6161100607613.jpg'),
(145, 88, 0, 19, '/6/1/6161100607613.jpg'),
(146, 89, 0, 19, '/6/1/6161100607613.jpg'),
(147, 106, 0, 19, 'container2'),
(148, 119, 0, 19, 'sunlight-1kg-2in1-sunrise-sensation'),
(149, 132, 0, 19, '/6/1/6161100607613.jpg'),
(150, 134, 0, 19, '2'),
(155, 73, 0, 20, 'OMO 500G EXTRA FRESH HANDWASH'),
(156, 84, 0, 20, 'OMO 500G EXTRA FRESH HANDWASH'),
(157, 86, 0, 20, 'OMO 500G EXTRA FRESH HANDWASH OMO 500G EXTRA FRESH HANDWASH is available for purchase in increments of 1'),
(158, 87, 0, 20, '/6/1/6161100609013.jpg'),
(159, 88, 0, 20, '/6/1/6161100609013.jpg'),
(160, 89, 0, 20, '/6/1/6161100609013.jpg'),
(161, 106, 0, 20, 'container2'),
(162, 119, 0, 20, 'omo-500g-extra-fresh-handwash'),
(163, 132, 0, 20, '/6/1/6161100609013.jpg'),
(164, 134, 0, 20, '2'),
(169, 73, 0, 21, 'AXION 800G LEMON LIME DISHWASHING PASTE'),
(170, 84, 0, 21, 'AXION 800G LEMON LIME DISHWASHING PASTE'),
(171, 86, 0, 21, 'AXION 800G LEMON LIME DISHWASHING PASTE AXION 800G LEMON LIME DISHWASHING PASTE is available for purchase in increments of 1 '),
(172, 87, 0, 21, '/6/0/6001067000549.jpg'),
(173, 88, 0, 21, '/6/0/6001067000549.jpg'),
(174, 89, 0, 21, '/6/0/6001067000549.jpg'),
(175, 106, 0, 21, 'container2'),
(176, 119, 0, 21, 'axion-800g-lemon-lime-dishwashing-paste'),
(177, 132, 0, 21, '/6/0/6001067000549.jpg'),
(178, 134, 0, 21, '2');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav`
--

CREATE TABLE `catalog_product_index_eav` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dumping data for table `catalog_product_index_eav`
--

INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(15, 93, 1, 4),
(15, 93, 1, 5),
(15, 93, 1, 6),
(15, 93, 1, 7),
(15, 93, 1, 8),
(15, 93, 2, 4),
(15, 93, 2, 5),
(15, 93, 2, 6),
(15, 93, 2, 7),
(15, 93, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal`
--

CREATE TABLE `catalog_product_index_eav_decimal` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_idx`
--

CREATE TABLE `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_idx`
--

CREATE TABLE `catalog_product_index_eav_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- Dumping data for table `catalog_product_index_eav_idx`
--

INSERT INTO `catalog_product_index_eav_idx` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(15, 93, 1, 4),
(15, 93, 1, 5),
(15, 93, 1, 6),
(15, 93, 1, 7),
(15, 93, 1, 8),
(15, 93, 2, 4),
(15, 93, 2, 5),
(15, 93, 2, 6),
(15, 93, 2, 7),
(15, 93, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_eav_tmp`
--

CREATE TABLE `catalog_product_index_eav_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `value` int(10) UNSIGNED NOT NULL COMMENT 'Value'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price`
--

CREATE TABLE `catalog_product_index_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dumping data for table `catalog_product_index_price`
--

INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(16, 0, 1, 0, '850.0000', '800.0000', '800.0000', '800.0000', NULL),
(16, 1, 1, 0, '850.0000', '800.0000', '800.0000', '800.0000', NULL),
(16, 2, 1, 0, '850.0000', '800.0000', '800.0000', '800.0000', NULL),
(16, 3, 1, 0, '850.0000', '800.0000', '800.0000', '800.0000', NULL),
(17, 0, 1, 2, '1050.0000', '1050.0000', '1050.0000', '1050.0000', NULL),
(17, 1, 1, 2, '1050.0000', '1050.0000', '1050.0000', '1050.0000', NULL),
(17, 2, 1, 2, '1050.0000', '1050.0000', '1050.0000', '1050.0000', NULL),
(17, 3, 1, 2, '1050.0000', '1050.0000', '1050.0000', '1050.0000', NULL),
(18, 0, 1, 2, '150.0000', '150.0000', '150.0000', '150.0000', NULL),
(18, 1, 1, 2, '150.0000', '150.0000', '150.0000', '150.0000', NULL),
(18, 2, 1, 2, '150.0000', '150.0000', '150.0000', '150.0000', NULL),
(18, 3, 1, 2, '150.0000', '150.0000', '150.0000', '150.0000', NULL),
(19, 0, 1, 2, '170.0000', '170.0000', '170.0000', '170.0000', NULL),
(19, 1, 1, 2, '170.0000', '170.0000', '170.0000', '170.0000', NULL),
(19, 2, 1, 2, '170.0000', '170.0000', '170.0000', '170.0000', NULL),
(19, 3, 1, 2, '170.0000', '170.0000', '170.0000', '170.0000', NULL),
(20, 0, 1, 2, '160.0000', '160.0000', '160.0000', '160.0000', NULL),
(20, 1, 1, 2, '160.0000', '160.0000', '160.0000', '160.0000', NULL),
(20, 2, 1, 2, '160.0000', '160.0000', '160.0000', '160.0000', NULL),
(20, 3, 1, 2, '160.0000', '160.0000', '160.0000', '160.0000', NULL),
(21, 0, 1, 2, '350.0000', '350.0000', '350.0000', '350.0000', NULL),
(21, 1, 1, 2, '350.0000', '350.0000', '350.0000', '350.0000', NULL),
(21, 2, 1, 2, '350.0000', '350.0000', '350.0000', '350.0000', NULL),
(21, 3, 1, 2, '350.0000', '350.0000', '350.0000', '350.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_bundle_tmp`
--

CREATE TABLE `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_idx`
--

CREATE TABLE `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_downlod_tmp`
--

CREATE TABLE `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_idx`
--

CREATE TABLE `catalog_product_index_price_final_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_final_tmp`
--

CREATE TABLE `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_idx`
--

CREATE TABLE `catalog_product_index_price_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- Dumping data for table `catalog_product_index_price_idx`
--

INSERT INTO `catalog_product_index_price_idx` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`) VALUES
(1, 0, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(1, 1, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(1, 2, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(1, 3, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(2, 0, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(2, 1, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(2, 2, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(2, 3, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(3, 0, 1, 2, '200.0000', '200.0000', '200.0000', '200.0000', NULL),
(3, 1, 1, 2, '200.0000', '200.0000', '200.0000', '200.0000', NULL),
(3, 2, 1, 2, '200.0000', '200.0000', '200.0000', '200.0000', NULL),
(3, 3, 1, 2, '200.0000', '200.0000', '200.0000', '200.0000', NULL),
(4, 0, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(4, 1, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(4, 2, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(4, 3, 1, 2, '70.0000', '70.0000', '70.0000', '70.0000', NULL),
(5, 0, 1, 2, '33.0000', '33.0000', '33.0000', '33.0000', NULL),
(5, 1, 1, 2, '33.0000', '33.0000', '33.0000', '33.0000', NULL),
(5, 2, 1, 2, '33.0000', '33.0000', '33.0000', '33.0000', NULL),
(5, 3, 1, 2, '33.0000', '33.0000', '33.0000', '33.0000', NULL),
(6, 0, 1, 2, '70.0000', '50.0000', '50.0000', '50.0000', NULL),
(6, 1, 1, 2, '70.0000', '50.0000', '50.0000', '50.0000', NULL),
(6, 2, 1, 2, '70.0000', '50.0000', '50.0000', '50.0000', NULL),
(6, 3, 1, 2, '70.0000', '50.0000', '50.0000', '50.0000', NULL),
(7, 0, 1, 2, '220.0000', '220.0000', '220.0000', '220.0000', NULL),
(7, 1, 1, 2, '220.0000', '220.0000', '220.0000', '220.0000', NULL),
(7, 2, 1, 2, '220.0000', '220.0000', '220.0000', '220.0000', NULL),
(7, 3, 1, 2, '220.0000', '220.0000', '220.0000', '220.0000', NULL),
(8, 0, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(8, 1, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(8, 2, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(8, 3, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(9, 0, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(9, 1, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(9, 2, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(9, 3, 1, 2, '90.0000', '90.0000', '90.0000', '90.0000', NULL),
(10, 0, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(10, 1, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(10, 2, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(10, 3, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(11, 0, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(11, 1, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(11, 2, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(11, 3, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(12, 0, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(12, 1, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(12, 2, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(12, 3, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(13, 0, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(13, 1, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(13, 2, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(13, 3, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(14, 0, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(14, 1, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(14, 2, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(14, 3, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(15, 0, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(15, 1, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(15, 2, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL),
(15, 3, 1, 2, '120.0000', '120.0000', '120.0000', '120.0000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_idx`
--

CREATE TABLE `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_opt_tmp`
--

CREATE TABLE `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_price_tmp`
--

CREATE TABLE `catalog_product_index_price_tmp` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price'
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_tier_price`
--

CREATE TABLE `catalog_product_index_tier_price` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_index_website`
--

CREATE TABLE `catalog_product_index_website` (
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `catalog_product_index_website`
--

INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2017-03-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link`
--

CREATE TABLE `catalog_product_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute`
--

CREATE TABLE `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

--
-- Dumping data for table `catalog_product_link_attribute`
--

INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 4, 'position', 'int'),
(3, 5, 'position', 'int'),
(4, 3, 'position', 'int'),
(5, 3, 'qty', 'decimal');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_decimal`
--

CREATE TABLE `catalog_product_link_attribute_decimal` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_int`
--

CREATE TABLE `catalog_product_link_attribute_int` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_attribute_varchar`
--

CREATE TABLE `catalog_product_link_attribute_varchar` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_link_type`
--

CREATE TABLE `catalog_product_link_type` (
  `link_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

--
-- Dumping data for table `catalog_product_link_type`
--

INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option`
--

CREATE TABLE `catalog_product_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) UNSIGNED DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_price`
--

CREATE TABLE `catalog_product_option_price` (
  `option_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Price ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_title`
--

CREATE TABLE `catalog_product_option_title` (
  `option_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Title ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_price`
--

CREATE TABLE `catalog_product_option_type_price` (
  `option_type_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Price ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_title`
--

CREATE TABLE `catalog_product_option_type_title` (
  `option_type_title_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type Title ID',
  `option_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_option_type_value`
--

CREATE TABLE `catalog_product_option_type_value` (
  `option_type_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Type ID',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_relation`
--

CREATE TABLE `catalog_product_relation` (
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) UNSIGNED NOT NULL COMMENT 'Child ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute`
--

CREATE TABLE `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Super Attribute ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_attribute_label`
--

CREATE TABLE `catalog_product_super_attribute_label` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value ID',
  `product_super_attribute_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_super_link`
--

CREATE TABLE `catalog_product_super_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `catalog_product_website`
--

CREATE TABLE `catalog_product_website` (
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dumping data for table `catalog_product_website`
--

INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalog_url_rewrite_product_category`
--

CREATE TABLE `catalog_url_rewrite_product_category` (
  `url_rewrite_id` int(10) UNSIGNED NOT NULL COMMENT 'url_rewrite_id',
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'category_id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'product_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url_rewrite_relation';

--
-- Dumping data for table `catalog_url_rewrite_product_category`
--

INSERT INTO `catalog_url_rewrite_product_category` (`url_rewrite_id`, `category_id`, `product_id`) VALUES
(456, 77, 19),
(459, 77, 19),
(455, 74, 19),
(458, 74, 19),
(462, 77, 20),
(465, 77, 20),
(461, 74, 20),
(464, 74, 20),
(467, 74, 21),
(470, 74, 21),
(468, 77, 21),
(471, 77, 21),
(794, 51, 18),
(798, 51, 18),
(786, 51, 17),
(790, 51, 17),
(778, 51, 16),
(782, 51, 16),
(795, 63, 18),
(799, 63, 18),
(779, 63, 16),
(783, 63, 16),
(787, 67, 17),
(791, 67, 17),
(793, 50, 18),
(797, 50, 18),
(785, 50, 17),
(789, 50, 17),
(777, 50, 16),
(781, 50, 16);

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement`
--

CREATE TABLE `checkout_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  `mode` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Applied mode'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

-- --------------------------------------------------------

--
-- Table structure for table `checkout_agreement_store`
--

CREATE TABLE `checkout_agreement_store` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(118, 'Porto - Homepage Slider 1', 'porto_homeslider_1', '<div class=\"home-side-menu-type2\" id=\"custsidemenu\">\r\n            <h2><em class=\"porto-icon-menu\"></em> SHOP CATEGORIES</h2>\r\n            <div class=\"side-block side-menu-type2\">\r\n                {{block class=\"Smartwave\\Porto\\Block\\CategoryCollection\" name=\"category_sidebar\" template=\"Smartwave_Porto::category_side_2.phtml\"}}\r\n            </div>\r\n        </div>\r\n<div id=\"banner-slider-demo-1\" class=\"owl-carousel owl-banner-carousel owl-middle-narrow\" style=\"margin-top: 75px;\">\r\n    <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/01/slider/hero1.jpg\"}}) center center no-repeat;background-size:cover; height: 230px;\">\r\n        <div class=\"container\" style=\"position:relative; text-align: center; height: 100%; padding-top: 50px;\">\r\n                <h2 style=\"font-weight:600;line-height:1;color:#08c\">Prices <b style=\"font-weight:800\">drop</b> as You shop</h2>\r\n                <p style=\"color:#777;font-weight:300;line-height:1;margin-bottom:15px; font-size: 20px; font-weight: bold;\">15% Off your first 3 orders</p>\r\n                <a href=\"#\" style=\"font-weight:300;\">Use the coupon code TRIPLEX to qualify</a>\r\n            </div>\r\n        </div>\r\n    \r\n    <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/01/slider/hero2.jpg\"}}) center center no-repeat;background-size:cover; height: 230px;\">\r\n        <div class=\"container\" style=\"position:relative; text-align: center; height: 100%; padding-top: 50px;\">\r\n                <h2 style=\"font-weight:600;line-height:1;color:#08c\">Prices <b style=\"font-weight:800\">drop</b> as You shop</h2>\r\n                <p style=\"color:#777;font-weight:300;line-height:1;margin-bottom:15px; font-size: 20px; font-weight: bold;\">15% Off your first 3 orders</p>\r\n                <a href=\"#\" style=\"font-weight:300;\">Use the coupon code TRIPLEX to qualify</a>\r\n            </div>\r\n    </div>\r\n    <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/01/slider/hero3.jpg\"}}) center center no-repeat;background-size:cover; height: 230px;\">\r\n        <div class=\"container\" style=\"position:relative; text-align: center; height: 100%; padding-top: 50px;\">\r\n                <h2 style=\"font-weight:600;line-height:1;color:#08c\">Prices <b style=\"font-weight:800\">drop</b> as You shop</h2>\r\n                <p style=\"color:#777;font-weight:300;line-height:1;margin-bottom:15px; font-size: 20px; font-weight: bold;\">15% Off your first 3 orders</p>\r\n                <a href=\"#\" style=\"font-weight:300;\">Use the coupon code TRIPLEX to qualify</a>\r\n            </div>\r\n    </div>\r\n</div>\r\n<script type=\"text/javascript\">\r\n    require([\r\n        \'jquery\',\r\n        \'owl.carousel/owl.carousel.min\'\r\n    ], function ($) {\r\n        $(\"#banner-slider-demo-1\").owlCarousel({\r\n            items: 1,\r\n            autoplay: true,\r\n            autoplayTimeout: 5000,\r\n            autoplayHoverPause: true,\r\n            dots: false,\r\n            nav: true,\r\n            navRewind: true,\r\n            animateIn: \'fadeIn\',\r\n            animateOut: \'fadeOut\',\r\n            loop: true,\r\n            navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\r\n        });\r\n    });\r\n</script>\r\n\r\n<div class=\"homepage-bar\" style=\"color: #165377;\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-4\">\r\n                <em class=\"porto-icon-truck\" style=\"font-size:36px;\"></em><div class=\"text-area\"><h3 style=\"color: #165377;\">FREE SHIPPING & RETURN</h3><p style=\"color: #165377;\">Free shipping on all orders over KES3,000</p></div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n                <em class=\"porto-icon-dollar\"></em><div class=\"text-area\"><h3 style=\"color: #165377;\">MONEY BACK GUARANTEE</h3><p style=\"color: #165377;\">00% money back guarantee.</p></div>\r\n            </div>\r\n            <div class=\"col-md-4\">\r\n                <em class=\"porto-icon-lifebuoy\" style=\"font-size:32px;\"></em><div class=\"text-area\"><h3 style=\"color: #165377;\">ONLINE SUPPORT 24/7</h3><p style=\"color: #165377;\">Lorem ipsum dolor sit amet.</p></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div style=\"padding-top: 5px;\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n    <div class=\"col-md-12\">\r\n                <h2 class=\"filterproduct-title\"><span class=\"content\"><strong>Featured Products</strong></span></h2>\r\n                <div id=\"featured_product\" class=\"owl-top-narrow\">\r\n                    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"263\" template=\"owl_list.phtml\"}}\r\n                </div>\r\n                <script type=\"text/javascript\">\r\n                    require([\r\n                        \'jquery\',\r\n                        \'owl.carousel/owl.carousel.min\'\r\n                    ], function ($) {\r\n                        $(\"#featured_product .owl-carousel\").owlCarousel({\r\n                            autoplay: true,\r\n                            autoplayTimeout: 5000,\r\n                            autoplayHoverPause: true,\r\n                            loop: true,\r\n                            navRewind: true,\r\n                            margin: 10,\r\n                            nav: true,\r\n                            navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\r\n                            dots: false,\r\n                            responsive: {\r\n                                0: {\r\n                                    items:2\r\n                                },\r\n                                768: {\r\n                                    items:3\r\n                                },\r\n                                992: {\r\n                                    items:4\r\n                                },\r\n                                1200: {\r\n                                    items:5\r\n                                }\r\n                            }\r\n                        });\r\n                    });\r\n                </script>\r\n            </div>\r\n            <div class=\"col-md-12\">\r\n<h2 class=\"filterproduct-title\" style=\"margin-bottom: 4px; margin-top: 20px;\"><span class=\"content\"><strong>BROWSE OUR CATEGORIES</strong></span></h2>\r\n<div id=\"category_slider\" class=\"owl-top-narrow\">\r\n    <div class=\"owl-carousel\">\r\n        <div class=\"item\" style=\"padding-top:0;\">\r\n            <a class=\"single-image\" href=\"#\">\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category1.jpg\"}}\" alt=\"\" />\r\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">HOME & GARDEN</span></p>\r\n            </a>\r\n        </div>\r\n        <div class=\"item\" style=\"padding-top:0;\">\r\n            <a class=\"single-image\" href=\"#\">\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category2.jpg\"}}\" alt=\"\" />\r\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">SPORTS</span></p>\r\n            </a>\r\n        </div>\r\n        <div class=\"item\" style=\"padding-top:0;\">\r\n            <a class=\"single-image\" href=\"#\">\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category3.jpg\"}}\" alt=\"\" />\r\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">FASHION</span></p>\r\n            </a>\r\n        </div>\r\n        <div class=\"item\" style=\"padding-top:0;\">\r\n            <a class=\"single-image\" href=\"#\">\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category4.jpg\"}}\" alt=\"\" />\r\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">ELECTRONICS</span></p>\r\n            </a>\r\n        </div>\r\n        <div class=\"item\" style=\"padding-top:0;\">\r\n            <a class=\"single-image\" href=\"#\">\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category1.jpg\"}}\" alt=\"\" />\r\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">HOME & GARDEN</span></p>\r\n            </a>\r\n        </div>\r\n        <div class=\"item\" style=\"padding-top:0;\">\r\n            <a class=\"single-image\" href=\"#\">\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category2.jpg\"}}\" alt=\"\" />\r\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">SPORTS</span></p>\r\n            </a>\r\n        </div>\r\n        <div class=\"item\" style=\"padding-top:0;\">\r\n            <a class=\"single-image\" href=\"#\">\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category3.jpg\"}}\" alt=\"\" />\r\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">FASHION</span></p>\r\n            </a>\r\n        </div>\r\n        <div class=\"item\" style=\"padding-top:0;\">\r\n            <a class=\"single-image\" href=\"#\">\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category4.jpg\"}}\" alt=\"\" />\r\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">ELECTRONICS</span></p>\r\n            </a>\r\n\r\n        </div>\r\n    </div>\r\n</div></div>\r\n<script type=\"text/javascript\">\r\n    require([\r\n        \'jquery\',\r\n        \'owl.carousel/owl.carousel.min\'\r\n    ], function ($) {\r\n        $(\"#category_slider .owl-carousel\").owlCarousel({\r\n            autoplay: true,\r\n            autoplayTimeout: 5000,\r\n            autoplayHoverPause: true,\r\n            loop: true,\r\n            navRewind: true,\r\n            margin: 10,\r\n            nav: true,\r\n            navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\r\n            dots: false,\r\n            responsive: {\r\n                0: {\r\n                    items:2\r\n                },\r\n                768: {\r\n                    items:3\r\n                },\r\n                992: {\r\n                    items:3\r\n                },\r\n                1200: {\r\n                    items:4\r\n                }\r\n            }\r\n        });\r\n    });\r\n</script>\r\n<div class=\"col-sm-12\">\r\n                <h2 class=\"filterproduct-title\"><span class=\"content\"><strong>New Products</strong></span></h2>\r\n                <div id=\"new_product\" class=\"owl-top-narrow\">\r\n                    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_product\" product_count=\"8\" hide-addtolinks=\"1\" aspect_ratio=\"0\" image_width=\"180\" image_height=\"180\" template=\"owl_list.phtml\"}}\r\n                </div>\r\n                <script type=\"text/javascript\">\r\n                    require([\r\n                        \'jquery\',\r\n                        \'owl.carousel/owl.carousel.min\'\r\n                    ], function ($) {\r\n                        $(\"#new_product .owl-carousel\").owlCarousel({\r\n                            autoplay: true,\r\n                            autoplayTimeout: 5000,\r\n                            autoplayHoverPause: true,\r\n                            loop: true,\r\n                            navRewind: true,\r\n                            margin: 10,\r\n                            nav: true,\r\n                            navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\r\n                            dots: false,\r\n                            responsive: {\r\n                                0: {\r\n                                    items:2\r\n                                },\r\n                                640: {\r\n                                    items:3\r\n                                },\r\n                                768: {\r\n                                    items:4\r\n                                },\r\n                                992: {\r\n                                    items:5\r\n                                },\r\n                                1200: {\r\n                                    items:6\r\n                                }\r\n                            }\r\n                        });\r\n                    });\r\n                </script>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n\r\n\r\n<!--<div class=\"single-images border-radius\" style=\"padding-top: 25px;\">\r\n    <div class=\"container\">\r\n        <div class=\"row\" style=\"margin-left:-10px;margin-right:-10px;\">\r\n            <div class=\"col-sm-3 col-xs-6\" style=\"padding-left:10px;padding-right:10px;padding-top:20px;\">\r\n                <a class=\"image-link\" href=\"#\">\r\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/01/slider/image_1.png\"}}\" alt=\"\" />\r\n                </a>\r\n            </div>\r\n            <div class=\"col-sm-3 col-xs-6\" style=\"padding-left:10px;padding-right:10px;padding-top:20px;\">\r\n                <a class=\"image-link\" href=\"#\">\r\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/01/slider/image_2.png\"}}\" alt=\"\" />\r\n                </a>\r\n            </div>\r\n            <div class=\"col-sm-3 col-xs-6\" style=\"padding-left:10px;padding-right:10px;padding-top:20px;\">\r\n                <a class=\"image-link\" href=\"#\">\r\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/01/slider/image_3.png\"}}\" alt=\"\" />\r\n                </a>\r\n            </div>\r\n            <div class=\"col-sm-3 col-xs-6\" style=\"padding-left:10px;padding-right:10px;padding-top:20px;\">\r\n                <a class=\"image-link\" href=\"#\">\r\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/01/slider/image_4.png\"}}\" alt=\"\" />\r\n                </a>\r\n            </div>\r\n         </div>\r\n    </div>\r\n</div> -->\r\n\r\n\r\n\r\n\r\n<!--<div style=\"padding-top: 40px;\" class=\"custom-support\">\r\n    <div class=\"container\">\r\n        <div class=\"row\">\r\n            <div class=\"col-sm-4\">\r\n                <em class=\"porto-icon-star\" style=\"border-radius:50%;border:2px solid #cecece;color:#333;background-color:transparent;line-height:58px;font-size:25px;\"></em>\r\n                <div class=\"content\">\r\n                    <h2>Customer Support</h2>\r\n                    <em>YOU WON\'T BE ALONE</em>\r\n                    <p>We really care about you and your website as much as you do. Purchasing Porto or any other theme from us you get 100% free support.</p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-sm-4\">\r\n                <em class=\"porto-icon-reply\" style=\"border-radius:50%;border:2px solid #cecece;color:#333;background-color:transparent;line-height:58px;font-size:25px;\"></em>\r\n                <div class=\"content\">\r\n                    <h2>Fully Customizable</h2>\r\n                    <em>TONS OF OPTIONS</em>\r\n                    <p>With Porto you can customize the layout, colors and styles within only a few minutes. Start creating an amazing website right now!</p>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-sm-4\">\r\n                <em class=\"porto-icon-paper-plane\" style=\"border-radius:50%;border:2px solid #cecece;color:#333;background-color:transparent;line-height:58px;font-size:25px;\"></em>\r\n                <div class=\"content\">\r\n                    <h2>Powerful Admin</h2>\r\n                    <em>MADE TO HELP YOU</em>\r\n                    <p>Porto has very powerful admin features to help customer to build their own shop in minutes without any special skills in web development.</p>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div> -->\r\n<div class=\"parallax-wrapper\" style=\"margin: 50px 0;\">\r\n    <div class=\"overlay overlay-color\" style=\"background-color: #000000; opacity: 0.75; filter: alpha(opacity=75);\"></div>\r\n    <div class=\"parallax\" data-stellar-background-ratio=\"0.5\" style=\"background-image: url({{media url=\"wysiwyg/smartwave/porto/homepage/01/slider/parallax_bg.jpg\"}});\">\r\n        <div class=\"parallax-slider\" style=\"position: relative; z-index: 3;\">\r\n            <div class=\"container\">\r\n                <div id=\"parallax-slider-demo-1\" class=\"owl-carousel\">\r\n                    <div class=\"item\">\r\n                        <h2 style=\"font-weight:600;\">Fresh groceries from the couch</b></h2>\r\n                        <p style=\"font-weight:300;\">Prep your week in a few quick clicks</p>\r\n                        <a href=\"#\" style=\"font-weight:300;\">Purchase now &gt;</a>\r\n                    </div>\r\n                    <div class=\"item\">\r\n                        <h2 style=\"font-weight:600;\">EXPLORE <b style=\"font-weight:800;\">PORTO</b></h2>\r\n                        <p style=\"font-weight:300;\">Premium theme, unlimited possibilities...</p>\r\n                        <a href=\"#\" style=\"font-weight:300;\">Purchase now &gt;</a>\r\n                    </div>\r\n                    \r\n                </div>\r\n            </div>\r\n        </div>\r\n            <script type=\"text/javascript\">\r\n                require([\r\n                    \'jquery\',\r\n                    \'owl.carousel/owl.carousel.min\'\r\n                ], function ($) {\r\n                    $(\"#parallax-slider-demo-1\").owlCarousel({\r\n                        items: 1,\r\n                        autoplay: true,\r\n                        autoplayTimeout: 5000,\r\n                        autoplayHoverPause: true,\r\n                        dots: true,\r\n                        nav: false,\r\n                        loop: true,\r\n                        navRewind: true\r\n                    });\r\n                });\r\n            </script>\r\n    </div>\r\n</div>', '2016-12-02 19:11:32', '2017-03-24 04:29:45', 1),
(119, 'Porto - Homepage Slider 2', 'porto_homeslider_2', '<div class=\"container\" style=\"padding:0 15px 20px 15px;\">\n    <div class=\"row\" style=\"margin:0 -10px;\">\n        <div class=\"col-md-9 md-f-right\" style=\"padding:0 10px; margin-top: 20px;\">\n            <div id=\"banner-slider-demo-2\" class=\"owl-carousel owl-bottom-absolute-narrow owl-border-radius-7 owl-banner-carousel sm-xs-margin-bottom\">\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/slide1.jpg\"}}\" alt=\"\" />\n                </div>\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/slide2.jpg\"}}\" alt=\"\" />\n                </div>\n            </div>\n            <script type=\"text/javascript\">\n                require([\n                    \'jquery\',\n                    \'owl.carousel/owl.carousel.min\'\n                ], function ($) {\n                    $(\"#banner-slider-demo-2\").owlCarousel({\n                        items: 1,\n                        autoplay: true,\n                        autoplayTimeout: 5000,\n                        autoplayHoverPause: true,\n                        dots: true,\n                        navRewind: true,\n                        animateIn: \'fadeIn\',\n                        animateOut: \'fadeOut\',\n                        loop: true,\n                        nav: false\n                    });\n                });\n            </script>\n        </div>\n        <div class=\"col-md-3\" style=\"padding:0 10px; margin-top: 20px;\">\n            <div class=\"row\"><div class=\"col-md-12 col-sm-6\">\n            <div class=\"side-custom-menu\" style=\"margin-bottom:11px;\">\n                <h2><em class=\"porto-icon-menu\"></em> TOP CATEGORIES</h2>\n                <ul>\n                    <li><a href=\"#\">Fashion</a></li>\n                    <li><a href=\"#\">Electronics</a></li>\n                    <li><a href=\"#\">Gifts</a></li>\n                    <li><a href=\"#\">Home & Garden</a></li>\n                    <li><a href=\"#\">Music</a></li>\n                    <li><a href=\"#\">Sports</a></li>\n                </ul>\n            </div>\n            </div>\n            <div class=\"col-md-12 col-sm-6\">\n            <div class=\"side-custom-menu\">\n                <h2><em class=\"porto-icon-menu\"></em> TRENDING</h2>\n                <ul>\n                    <li><a href=\"#\">Huge Sale - 70% Off</a></li>\n                    <li><a href=\"#\">New Arrivals</a></li>\n                </ul>\n            </div>\n            </div></div>\n        </div>\n    </div>\n</div>\n<div style=\"background-color:#f0f0ed;\">\n    <div class=\"container\">\n        <div class=\"homepage-bar\" style=\"border:1px solid #e1e1e1;border-radius:5px;margin:20px 0;\">\n            <div class=\"row\">\n                <div class=\"col-md-4\" style=\"text-align:center;\">\n                    <em class=\"porto-icon-truck\" style=\"font-size:36px;\"></em><div class=\"text-area\"><h3>FREE SHIPPING & RETURN</h3><p>Free shipping on all orders over $99.</p></div>\n                </div>\n                <div class=\"col-md-4\" style=\"text-align:center;\">\n                    <em class=\"porto-icon-dollar\"></em><div class=\"text-area\"><h3>MONEY BACK GUARANTEE</h3><p>100% money back guarantee.</p></div>\n                </div>\n                <div class=\"col-md-4\" style=\"text-align:center;\">\n                    <em class=\"porto-icon-lifebuoy\" style=\"font-size:32px;\"></em><div class=\"text-area\"><h3>ONLINE SUPPORT 24/7</h3><p>Lorem ipsum dolor sit amet.</p></div>\n                </div>\n            </div>\n        </div>\n        <div class=\"row\" style=\"padding-bottom:10px;margin:0 -10px;\">\n            <div class=\"col-sm-3 col-xs-6\" style=\"padding:0 10px;padding-bottom:20px;\">\n                <div style=\"margin-bottom:15px;\">\n                    <a class=\"image-link\" href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/image01.jpg\"}}\" alt=\"\" /></a>\n                </div>\n                <div style=\"margin-bottom:15px;\">\n                    <a class=\"image-link\" href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/image02.jpg\"}}\" alt=\"\" /></a>\n                </div>\n                <div style=\"margin-bottom:0px;\">\n                    <a class=\"image-link\" href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/image03.jpg\"}}\" alt=\"\" /></a>\n                </div>\n            </div>\n            <div class=\"col-sm-3 col-xs-6 sm-f-right\" style=\"padding:0 10px;padding-bottom:20px;\">\n                <div style=\"margin-bottom:10px;\">\n                    <a class=\"image-link\" href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/image11.jpg\"}}\" alt=\"\" /></a>\n                </div>\n                <div style=\"margin-bottom:11px;\">\n                    <a class=\"image-link\" href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/image12.jpg\"}}\" alt=\"\" /></a>\n                </div>\n                <div style=\"margin-bottom:0px;\">\n                    <a class=\"image-link\" href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/image13.jpg\"}}\" alt=\"\" /></a>\n                </div>\n            </div>\n            <div class=\"sm-clearer\"></div>\n            <div class=\"col-sm-6\" style=\"padding:0 10px;padding-bottom:20px;\">\n                <div style=\"margin-bottom:28px;\">\n                    <a class=\"image-link\" href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/image21.jpg\"}}\" alt=\"\" /></a>\n                </div>\n                <div style=\"margin-bottom:28px;\">\n                    <a class=\"image-link\" href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/image22.jpg\"}}\" alt=\"\" /></a>\n                </div>\n                <div style=\"margin-bottom:0px;\">\n                    <a class=\"image-link\" href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/02/slider/image23.jpg\"}}\" alt=\"\" /></a>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:33', '2016-12-02 19:11:33', 1),
(120, 'Porto - Homepage Slider 3', 'porto_homeslider_3', '<div class=\"full-screen-slider\">\n    <div id=\"banner-slider-demo-3\" class=\"owl-carousel owl-bottomright-narrow owl-banner-carousel\">\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <div style=\"width:100%;height:100%;width:100vw;height:100vh;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/03/slider/slide3.jpg\"}}) 70% top no-repeat; background-size:cover;\"></div>\n            <div class=\"slide3-content\" style=\"width:100%;height:100%;position:absolute;left:0;top:0;\">\n                <div class=\"content-area\" style=\"position:absolute;top:27%;left:7%;text-align:left;\">\n                    <h2 style=\"font-family:\'Oswald\';font-weight:800;color:#000;line-height:1;\">WINTER SALE<br/>GET 30% OFF<br/>ON JACKETS.</h2>\n                    <div style=\"text-align:left;\"><a href=\"#\" class=\"btn btn-default\" style=\"border:0;background-color:#000;color:#fff;font-family:\'Oswald\';font-weight:400;border-radius:0;\">SHOP BY JACKETS</a></div>\n                </div>\n            </div>\n        </div>\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <div style=\"width:100%;height:100%;width:100vw;height:100vh;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/03/slider/slide2.jpg\"}}) 80% top no-repeat; background-size:cover;\"></div>\n            <div class=\"slide2-content\" style=\"width:100%;height:100%;position:absolute;left:0;top:0;\">\n                <div class=\"content-area\" style=\"position:absolute;top:27%;left:7%;text-align:left;\">\n                    <h2 style=\"font-family:\'Oswald\';font-weight:800;color:#000;line-height:1;\">30% OFF<br/>ON HOLIDAY<br/>OCCASION SHOP.</h2>\n                    <div style=\"text-align:left;\"><a href=\"#\" class=\"btn btn-default\" style=\"border:0;background-color:#000;color:#fff;font-family:\'Oswald\';font-weight:400;border-radius:0;\">SHOP NOW</a></div>\n                </div>\n            </div>\n        </div>\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <div style=\"width:100%;height:100%;width:100vw;height:100vh;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/03/slider/slide1.jpg\"}}) 71% top no-repeat; background-size:cover;\"></div>\n            <div class=\"slide1-content\" style=\"width:100%;height:100%;position:absolute;left:0;top:0;\">\n                <div class=\"content-area\" style=\"position:absolute;top:27%;left:7%;text-align:left;\">\n                    <h2 style=\"font-family:\'Oswald\';font-weight:800;color:#000;line-height:1;\">GET 20% OFF<br/>ON SUMMER<br/>HATS.</h2>\n                    <div style=\"text-align:left;\"><a href=\"#\" class=\"btn btn-default\" style=\"border:0;background-color:#000;color:#fff;font-family:\'Oswald\';font-weight:400;border-radius:0;\">SHOP BY HATS</a></div>\n                </div>\n            </div>\n        </div>\n    </div>\n    <div class=\"copyright-text\">COPYRIGHT 2016 PORTO. ALL RIGHTS RESERVED.</div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            var owl_3 = $(\"#banner-slider-demo-3\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                dots: false,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                nav: true,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n        });\n    </script>\n</div>', '2016-12-02 19:11:33', '2016-12-02 19:11:33', 1),
(121, 'Porto - Homepage Slider 4', 'porto_homeslider_4', '<div class=\"full-screen-slider\">\n    <div id=\"banner-slider-demo-4\" class=\"owl-carousel owl-middle-narrow owl-banner-carousel\">\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <div style=\"width:100%;height:100%;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/slide1.jpg\"}}) 80% center no-repeat; background-size:cover;\"></div>\n            <div class=\"slide1-content\" style=\"width:100%;height:100%;position:absolute;left:0;top:0;\">\n                <div class=\"container\" style=\"height:100%;position:relative;\">\n                    <div class=\"content-area\" style=\"position:absolute;top:37%;left:7%;text-align:center;\">\n                        <div style=\"margin:0;line-height:1;\">\n                            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/quote.png\"}}\" alt=\"\" class=\"quote\" style=\"display:inline-block;vertical-align:middle;\"/>\n                            <em style=\"display:inline-block;vertical-align:middle;line-height:1;color:#fff;font-weight:300;font-style:normal;\">DO YOU NEED A NEW</em>\n                            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/quote.png\"}}\" alt=\"\" class=\"quote\" style=\"display:inline-block;vertical-align:middle;\"/>\n                        </div>\n                        <h2 style=\"font-weight:800;color:#fff;line-height:1;\">eCOMMERCE?</h2>\n                        <p style=\"font-weight:300;color:#fff;line-height:1;\">Check our options and features.</p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <div style=\"width:100%;height:100%;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/slide2.jpg\"}}) 20% center no-repeat; background-size:cover;\"></div>\n            <div class=\"slide2-content\" style=\"width:100%;height:100%;position:absolute;left:0;top:0;\">\n                <div class=\"container\" style=\"height:100%;position:relative;\">\n                    <div class=\"content-area\" style=\"position:absolute;top:40%;right:20%;text-align:left;\">\n                        <em style=\"display:block;line-height:1;color:#fff;font-weight:300;font-style:normal;\">up to <b>70%</b> off!</em>\n                        <h2 style=\"font-weight:600;color:#fff;line-height:1;\">HUGE <b style=\"font-weight:800;\">SALE</b></h2>\n                        <p style=\"font-weight:600;color:#fff;line-height:1;\">Fashion<span class=\"split\">-</span>Electronics<span class=\"split\">-</span>Gifts<span class=\"split\">-</span>Music<span class=\"split\">-</span>Sports</p>\n                        <div style=\"text-align:right;\"><a href=\"#\" class=\"btn btn-default\" style=\"border:0;background-color:#fefefe;color:#777;font-weight:600;\">SHOP NOW</a></div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <div style=\"width:100%;height:100%;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/slide3.jpg\"}}) center center no-repeat; background-size:cover;\"></div>\n            <div class=\"slide3-content\" style=\"width:100%;height:100%;position:absolute;left:0;top:0;\">\n                <div class=\"container\" style=\"height:100%;position:relative;\">\n                    <div class=\"content-area\" style=\"position:absolute;left:0;top:40%;text-align:center;width:100%;\">\n                        <div style=\"display:inline-block;\">\n                            <em style=\"display:block;line-height:1;margin:0;color:#fff;font-weight:300;font-style:normal;text-align:right;\">It’s time to feel</em>\n                            <h2 style=\"font-weight:600;color:#fff;line-height:1;text-align:center;\">THE <b style=\"font-weight:800;\">POWER</b></h2>\n                            <div style=\"text-align:right;\"><a href=\"#\" class=\"btn btn-default\" style=\"border:0;background-color:#fefefe;color:#777;font-weight:600;\">SHOP NOW</a></div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#banner-slider-demo-4\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                navRewind: true,\n                dots: false,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                nav: true,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n            $(\".main-container\").remove();\n        });\n    </script>\n</div>\n<div class=\"row\" style=\"margin:0;\">\n    <div class=\"col-sm-3 col-xs-6\" style=\"padding:0;\">\n        <a class=\"image-link\" href=\"#\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/image01.jpg\"}}\" alt=\"\" />\n        </a>\n    </div>\n    <div class=\"col-sm-3 col-xs-6\" style=\"padding:0;\">\n        <a class=\"image-link\" href=\"#\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/image02.jpg\"}}\" alt=\"\" />\n        </a>\n    </div>\n    <div class=\"col-sm-3 col-xs-6\" style=\"padding:0;\">\n        <a class=\"image-link\" href=\"#\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/image03.jpg\"}}\" alt=\"\" />\n        </a>\n    </div>\n    <div class=\"col-sm-3 col-xs-6\" style=\"padding:0;\">\n        <a class=\"image-link\" href=\"#\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/image04.jpg\"}}\" alt=\"\" />\n        </a>\n    </div>\n</div>\n<div class=\"row\" style=\"margin:0;background-color:#f9f9f9;\">\n    <div class=\"col-sm-6 sm-f-right\" style=\"padding:0;\">\n        <div id=\"half-image-1\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/men.jpg\"}}) center left no-repeat;background-size:cover;width:100%;\">\n        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/men.jpg\"}}\" style=\"width:100%;visibility:hidden;\" alt=\"\" />\n        </div>\n    </div>\n    <div id=\"half-content-1\" class=\"col-sm-6\" style=\"padding:4% 6% 1.5%;position:relative;text-align:left;\">\n        <h3 class=\"fullwidth-filter-title\">Amazing New<br/>Collection</h3>\n        <p class=\"fullwidth-filter-description\">Yes, this is our new collection, check it<br/>out our new arrivals.</p>\n        <div id=\"men_product\" class=\"hide-addtocart hide-addtolinks no-border\" style=\"margin-top: 25px;\">\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"men_product\" product_count=\"4\" aspect_ratio=\"0\" image_width=\"400\" image_height=\"496\" template=\"owl_list.phtml\"}}\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#men_product .owl-carousel\").owlCarousel({\n                    loop: true,\n                    margin: 10,\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    navRewind: true,\n                    nav: false,\n                    dots: true,\n                    responsive: {\n                        0: {\n                            items:1\n                        },\n                        640: {\n                            items:2\n                        }\n                    }\n                });\n            });\n        </script>\n    </div>\n</div>\n<div class=\"row\" style=\"margin:0;background-color:#f9f9f9;\">\n    <div class=\"col-sm-6\" style=\"padding:0;\">\n        <div id=\"half-image-2\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/women.jpg\"}}) center right no-repeat;background-size:cover;width:100%;\">\n        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/04/slider/women.jpg\"}}\" style=\"width:100%;visibility:hidden;\" alt=\"\" />\n        </div>\n    </div>\n    <div id=\"half-content-2\" class=\"col-sm-6\" style=\"padding:4% 6% 1.5%;position:relative;text-align:left;\">\n        <h3 class=\"fullwidth-filter-title\">Amazing New<br/>Collection</h3>\n        <p class=\"fullwidth-filter-description\">Yes, this is our new collection, check it<br/>out our new arrivals.</p>\n        <div id=\"women_product\" class=\"hide-addtocart hide-addtolinks no-border\" style=\"margin-top: 25px;\">\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"women_product\" product_count=\"4\" aspect_ratio=\"0\" image_width=\"400\" image_height=\"496\" template=\"owl_list.phtml\"}}\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n            $(\"#women_product .owl-carousel\").owlCarousel({\n                loop: true,\n                margin: 10,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                navRewind: true,\n                nav: false,\n                dots: true,\n                responsive: {\n                    0: {\n                        items:1\n                    },\n                    640: {\n                        items:2\n                    }\n                }\n            });\n        });\n    </script>\n    </div>\n</div>\n<div style=\"text-align:left; padding: 30px;\">\n    <h3 class=\"fullwidth-filter-title\">Amazing New<br/>Collection</h3>\n    <div id=\"fashion_product\" class=\"hide-addtocart hide-addtolinks no-border\" style=\"margin-top: 25px;\">\n         {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_product\" product_count=\"8\" aspect_ratio=\"0\" image_width=\"400\" image_height=\"496\" template=\"owl_list.phtml\"}}\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#fashion_product .owl-carousel\").owlCarousel({\n                loop: true,\n                margin: 10,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                navRewind: true,\n                nav: false,\n                dots: true,\n                responsive: {\n                    0: {\n                        items:2\n                    },\n                    768: {\n                        items:3\n                    },\n                    992: {\n                        items:4\n                    },\n                    1200: {\n                        items:5\n                    }\n                }\n            });\n        });\n    </script>\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\'\n    ], function ($) {\n        $(\"#half-image-1\").css(\"min-height\",$(\"#half-content-1\").outerHeight()+\"px\");\n        $(\"#half-image-2\").css(\"min-height\",$(\"#half-content-2\").outerHeight()+\"px\");\n    setTimeout(function(){\n        $(\"#half-image-1\").css(\"min-height\",$(\"#half-content-1\").outerHeight()+\"px\");\n        $(\"#half-image-2\").css(\"min-height\",$(\"#half-content-2\").outerHeight()+\"px\");\n    }, 5000);\n    $(window).resize(function(){\n        setTimeout(function(){\n            $(\"#half-image-1\").css(\"min-height\",$(\"#half-content-1\").outerHeight()+\"px\");\n            $(\"#half-image-2\").css(\"min-height\",$(\"#half-content-2\").outerHeight()+\"px\");\n        }, 500);\n    });\n});\n</script>\n<style type=\"text/css\">\n.product-item-photo {\n    border-radius: 0;\n    border: 0;\n}\n</style>', '2016-12-02 19:11:33', '2016-12-02 19:11:33', 1),
(122, 'Porto - Homepage Slider 5', 'porto_homeslider_5', '<div style=\"padding:29px 0 36px;background-color:#f4f4f4;\">\n    <div class=\"container\">\n        <div class=\"slider-with-side\">\n            <div class=\"slider-area\">\n                <div id=\"banner-slider-demo-5\" class=\"owl-carousel owl-bottom-narrow owl-banner-carousel\">\n                    <div class=\"item\">\n                        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/05/slider/slide2.jpg\"}}\" alt=\"\" />\n                    </div>\n                    <div class=\"item\">\n                        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/05/slider/slide1.jpg\"}}\" alt=\"\" />\n                        <div class=\"content\" style=\"position:absolute;width:100%;height:100%;left:0;top:0;\">\n                            <div class=\"ribbon\" style=\"position:absolute;text-align:right;\">\n                                <em style=\"font-weight:300;line-height:1;color:#fff;font-style:normal;\">FEEL</em>\n                                <h3 style=\"font-weight:700;line-height:1;color:#fff;\">The</h3>\n                                <h5 style=\"font-weight:600;line-height:1;color:#fff;\">Power!</h5>\n                            </div>\n                            <div class=\"text-area\" style=\"left:3%;bottom:15%;position:absolute;text-align:left;\">\n                                <h2 style=\"font-weight:600;line-height:1;color:#fff;background-color:#202020;background-color:rgba(23,23,23,.9);\">EXPLORE <b style=\"font-weight:800;\">PORTO</b></h2><br/>\n                                <p style=\"line-height:1.2;color:#fff;background-color:#444;background-color:rgba(23,23,23,.75);\">With <b>PORTO</b> you can customize the<br/>banners and styles whithin minutes.</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <script type=\"text/javascript\">\n                    require([\n                        \'jquery\',\n                        \'owl.carousel/owl.carousel.min\'\n                    ], function ($) {\n                        $(\"#banner-slider-demo-5\").owlCarousel({\n                            items: 1,\n                            autoplay: true,\n                            autoplayTimeout: 5000,\n                            autoplayHoverPause: true,\n                            dots: true,\n                            nav: false,\n                            navRewind: true,\n                            animateIn: \'fadeIn\',\n                            animateOut: \'fadeOut\',\n                            loop: true\n                        });\n                    });\n                </script>\n            </div>\n            <div class=\"side-area\">\n                <div class=\"item1\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/05/slider/right-banner1.jpg\"}}\" alt=\"\" />\n                    <div class=\"content\">\n                        <em  style=\"color:#fff;font-weight:400;font-style:italic;line-height:1;\">fashion</em>\n                        <h2 style=\"color:#fff;font-weight:700;line-height:1;\">TRENDS</h2>\n                        <a href=\"#\" style=\"color:#000;font-weight:300;line-height:1;\">Shop now &gt;</a>\n                    </div>\n                </div>\n                <div class=\"item2\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/05/slider/right-banner2.jpg\"}}\" alt=\"\" />\n                    <div class=\"content\">\n                        <h2 style=\"color:#000;font-weight:300;line-height:1;\"><b style=\"font-weight:600;font-style:italic;\">Deals</b> + PROMOS</h2>\n                        <p style=\"color:#777;font-weight:300;font-style:italic;vertical-align:bottom;line-height:1.2;float:left;\">Limited sales in<br/>our categories.</p>\n                        <a href=\"#\" class=\"btn btn-default\" style=\"color:#fff;font-weight:400;vertical-align:bottom;line-height:1;float:left;\">SHOP NOW <i class=\"icon-right-dir\"></i></a>\n                        <div class=\"clearer\"></div>\n                    </div>\n                </div>\n                <div class=\"item3\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/05/slider/right-banner3.jpg\"}}\" alt=\"\" />\n                    <div class=\"content\">\n                        <h2  style=\"color:#fff;font-weight:600;line-height:1;\">HUGE <b style=\"font-weight:800;\">SALE</b></h2>\n                        <p style=\"color:#b2b2b2;font-weight:300;line-height:1;\">Now starting at <b style=\"font-weight:600;\">$99</b></p>\n                        <a href=\"#\" style=\"font-weight:300;line-height:1;\">Shop now &gt;</a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div class=\"homepage-bar\" style=\"background-color:#171717;border:0;padding:11px 0;text-align:center;line-height:1;\">\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-md-4\" style=\"border-color:#353535;\">\n                <em class=\"porto-icon-truck\" style=\"font-size:36px;color:#fff;\"></em><div class=\"text-area\"><h3 style=\"color:#fff;\">FREE SHIPPING & RETURN</h3><p style=\"color:#fff;\">Free shipping on all orders over $99.</p></div>\n            </div>\n            <div class=\"col-md-4\" style=\"border-color:#353535;\">\n                <em class=\"porto-icon-dollar\" style=\"color:#fff;\"></em><div class=\"text-area\"><h3 style=\"color:#fff;\">MONEY BACK GUARANTEE</h3><p style=\"color:#fff;\">100% money back guarantee.</p></div>\n            </div>\n            <div class=\"col-md-4\" style=\"border-color:#353535;\">\n                <em class=\"porto-icon-lifebuoy\" style=\"font-size:32px;color:#fff;\"></em><div class=\"text-area\"><h3 style=\"color:#fff;\">ONLINE SUPPORT 24/7</h3><p style=\"color:#fff;\">Lorem ipsum dolor sit amet.</p></div>\n            </div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:34', '2016-12-02 19:11:34', 1);
INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(123, 'Porto - Homepage Slider 6', 'porto_homeslider_6', '<div style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/banner-img.jpg\"}}) 73% 0 no-repeat; color: #3d3734; background-size: cover;\">\n    <div class=\"banner-content-6\">\n        <div class=\"container\" style=\"text-align: left;\">\n            <div class=\"row\" style=\"padding-left:5%\">\n                <div class=\"col-sm-8\">\n                    <div class=\"text-content\" style=\"display: inline-block\">\n                        <em style=\"font-style: normal; display: block;font-weight:600;\">NEW ARRIVALS</em>\n                        <h2 style=\"line-height: 1;font-weight:800;margin:0;color:#3d3734\">FASHION</h2>\n                        <p><span style=\"vertical-align: top;font-weight:300;\">UP TO <b style=\"font-weight:800;\">70% OFF</b> IN THE NEW COLLECTION</span></p>\n                        <p><a href=\"#\" class=\"btn btn-default\" style=\"vertical-align: top; font-weight: 400;\">SHOP NOW</a></p>\n                    </div>\n                    <div class=\"owl-middle-outer-narrow\" style=\"text-align: left;\">\n                        <p class=\"filter-title-type-2\"><span style=\"width:215px\">SELECTED <b>PRODUCTS</b></span><span class=\"title-line\">&nbsp;</span></p>\n                        <div id=\"featured_products\" class = \"hide-addtocart hide-addtolinks\">\n                            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_product\" product_count=\"8\" aspect_ratio=\"0\" image_width=\"250\" image_height=\"250\" template=\"owl_list.phtml\"}}\n                        </div>\n                        <script type=\"text/javascript\">\n                            require([\n                                \'jquery\',\n                                \'owl.carousel/owl.carousel.min\'\n                            ], function ($) {\n                                $(\"#featured_products .owl-carousel\").owlCarousel({\n                                    autoplay: true,\n                                    autoplayTimeout: 5000,\n                                    autoplayHoverPause: true,\n                                    margin: 10,\n                                    nav: true,\n                                    navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                                    dots: false,\n                                    navRewind: true,\n                                    animateIn: \'fadeIn\',\n                                    animateOut: \'fadeOut\',\n                                    loop: true,\n                                    responsive: {\n                                        0: {\n                                            items:1\n                                        },\n                                        320: {\n                                            items:1\n                                        },\n                                        480: {\n                                            items:2\n                                        },\n                                        768: {\n                                            items:2\n                                        },\n                                        992: {\n                                            items:3\n                                        },\n                                        1200: {\n                                            items:3\n                                        }\n                                    }\n                                });\n                            });\n                        </script>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n\n<div class=\"masonry-grid\" id=\"masonry_grid_18\">\n    <div class=\"grid-sizer\"></div>\n    <div class=\"masonry-grid-item w2\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_01.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_02.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_03.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item w3\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_04.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item w4\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_05.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_06.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_07.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item w2\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_08.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_09.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_10.jpg\"}}\" alt=\"\" /></a></div>\n    <div class=\"masonry-grid-item\"><a href=\"javascript:void(0)\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/06/slider/grid_item_11.jpg\"}}\" alt=\"\" /></a></div>\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\',\n        \'Smartwave_Porto/js/imagesloaded\',\n        \'Smartwave_Porto/js/packery.pkgd\'\n    ], function ($, imagesLoaded, Packery) {\n        $.bridget( \'packery\', Packery );\n        var $container = $(\'#masonry_grid_18\').imagesLoaded(function(){\n            $container.packery({\n                itemSelector: \".masonry-grid-item\",\n                columnWidth: \".grid-sizer\",\n                percentPosition: true\n            });\n        });\n    });\n</script>\n<style type=\"text/css\">\n    .masonry-grid{margin: 3px;position:relative;}\n    .grid-sizer, .masonry-grid-item{width:25%;padding:3px}\n    .masonry-grid-item a{display:block;position:relative;}\n    .masonry-grid-item a:before{width:100%;height:100%;display:block;content:\"\";position:absolute;visibility:hidden;opacity:0;filter:alpha(opacity=0);background-color:#000;transition:0.3s all;}\n    .masonry-grid-item a:hover:before{visibility:visible;opacity:0.2;filter:alpha(opacity=20);}\n    .masonry-grid-item.w2{width:50%;}\n    .masonry-grid-item.w3{width:75%;}\n    .masonry-grid-item.w4{width:100%;}\n    .masonry-grid img{width:100%;}\n    .owl-middle-outer-narrow .owl-controls .owl-buttons div{color:#3d3734}\n    @media(max-width:767px){\n        .masonry-grid-item{width:50%}\n        .masonry-grid-item.w2,.masonry-grid-item.w3{width:100%}\n    }\n    @media(max-width:480px){\n        .masonry-grid-item{width:100%}\n    }\n    @media(min-width:768px){\n        .page-header.type5 {\n            background: transparent;\n            position: absolute;\n            width: 100%;\n            top: 0;\n            left: 0;\n        }\n    }\n</style>', '2016-12-02 19:11:34', '2016-12-02 19:11:34', 1),
(124, 'Porto - Homepage Slider 7', 'porto_homeslider_7', '<div class=\"container\">\n    <div id=\"banner-slider-demo-7\" class=\"owl-carousel owl-middle-narrow owl-banner-carousel\">\n        <div class=\"item\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/07/slider/slide1.jpg\"}}\" alt=\"\" style=\"width: 100%;\" />\n        </div>\n        <div class=\"item\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/07/slider/slide2.jpg\"}}\" alt=\"\" style=\"width: 100%;\" />\n        </div>\n        <div class=\"item\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/07/slider/slide3.jpg\"}}\" alt=\"\" style=\"width: 100%;\" />\n        </div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#banner-slider-demo-7\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                dots: false,\n                nav: true,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n        });\n    </script>\n\n</div>', '2016-12-02 19:11:34', '2016-12-02 19:11:34', 1),
(125, 'Porto - Homepage Slider 8', 'porto_homeslider_8', '<div class=\"container\">\n    <div id=\"banner-slider-demo-8\" class=\"owl-carousel owl-middle-narrow owl-banner-carousel\">\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/08/slider/slide1.jpg\"}}\" alt=\"\" />\n            <div class=\"slide1-content\" style=\"width:100%;height:100%;position:absolute;left:0;top:0;\">\n                <div class=\"container\" style=\"height:100%;position:relative;\">\n                    <div class=\"content-area\" style=\"position:absolute;top:37%;width:100%;text-align:center;\">\n                        <h2 style=\"font-weight:800;color:#fff;line-height:1;\">eCOMMERCE?</h2>\n                        <p style=\"font-weight:300;color:#fff;line-height:1;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/03/slider/quote.png\"}}\" alt=\"\" class=\"quote\" style=\"display:inline-block;vertical-align:middle;\"/>&nbsp;&nbsp;&nbsp;&nbsp;Check our options and features.&nbsp;&nbsp;&nbsp;&nbsp;<img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/03/slider/quote.png\"}}\" alt=\"\" class=\"quote\" style=\"display:inline-block;vertical-align:middle;\"/></p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/08/slider/slide2.jpg\"}}\" alt=\"\" />\n            <div class=\"slide2-content\" style=\"width:100%;height:100%;position:absolute;left:0;top:0;\">\n                <div class=\"container\" style=\"height:100%;position:relative;\">\n                    <div class=\"content-area\" style=\"position:absolute;top:27%;right:23%;text-align:left;\">\n                        <em style=\"display:block;line-height:1;color:#fff;font-weight:300;font-style:normal;\">up to <b>70%</b> off!</em>\n                        <h2 style=\"font-weight:600;color:#fff;line-height:1;\">HUGE <b style=\"font-weight:800;\">SALE</b></h2>\n                        <p style=\"font-weight:600;color:#fff;line-height:1;\">Fashion<span class=\"split\">-</span>Electronics<span class=\"split\">-</span>Gifts<span class=\"split\">-</span>Music<span class=\"split\">-</span>Sports</p>\n                        <div style=\"text-align:right;\"><a href=\"#\" class=\"btn btn-default\" style=\"border:0;background-color:#fefefe;color:#777;font-weight:600;\">SHOP NOW</a></div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/08/slider/slide3.jpg\"}}\" alt=\"\" />\n            <div class=\"slide3-content\" style=\"width:100%;height:100%;position:absolute;left:0;top:0;\">\n                <div class=\"container\" style=\"height:100%;position:relative;\">\n                    <div class=\"content-area\" style=\"position:absolute;left:17%;top:32%;\">\n                        <div style=\"display:inline-block;\">\n                            <em style=\"display:block;line-height:1;margin:0;color:#fff;font-weight:300;font-style:normal;text-align:left;\">It’s time to feel</em>\n                            <h2 style=\"font-weight:600;color:#fff;line-height:1;text-align:center;\">THE <b style=\"font-weight:800;\">POWER</b></h2>\n                            <div style=\"text-align:right;\"><a href=\"#\" class=\"btn btn-default\" style=\"border:0;background-color:#fefefe;color:#777;font-weight:600;\">SHOP NOW</a></div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            var owl_8 = $(\"#banner-slider-demo-8\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                dots: false,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                nav: true,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n        });\n    </script>\n</div>', '2016-12-02 19:11:34', '2016-12-02 19:11:34', 1),
(126, 'Porto - Homepage Slider 10', 'porto_homeslider_10', '<div class=\"homepage-grid-banner\">\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-sm-6\">\n                <div class=\"grid1\" style=\"position:relative;\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/slider/grid1.jpg\"}}\" alt=\"\" />\n                    <div class=\"ribbon theme-border-color\" style=\"position:absolute;right:0;top:0;color:#fff;\">\n                        <div style=\"position:absolute;right:9%;top:10%;width:90%;text-align:right;\">\n                            <em style=\"font-weight:300;font-style:normal;color:#fff;margin-right:26%;\">UP TO</em>\n                            <h4 style=\"font-weight:700;color:#fff;\">70%</h4>\n                            <h5 style=\"font-weight:600;color:#fff;\">OFF</h5>\n                        </div>\n                    </div>\n                    <div class=\"content\" style=\"position:absolute;right:15%;bottom:14%;text-align:right;\">\n                        <h2 style=\"font-weight:800;font-style:italic;color:#fff;margin-bottom:0;\">HUGE <b style=\"font-weight:600;\">SALE</b></h2>\n                        <p style=\"font-weight:300;color:#fff;\">Now starting at <b style=\"font-weight:600;\">$99</b></p>\n                        <a href=\"#\">Shop now &gt;</a>\n                    </div>\n                </div>\n            </div>\n            <div class=\"col-sm-3\">\n                <div class=\"grid2\" style=\"position:relative;\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/slider/grid2.jpg\"}}\" alt=\"\" />\n                    <div class=\"content\" style=\"position:absolute;right:10%;top:5%;text-align:right;\">\n                        <h3 style=\"font-weight:400;color:#121213;\">amazing</h3>\n                        <h2 style=\"font-weight:800;color:#121213;margin-bottom:10px;\">COLLECTION</h2>\n                        <a style=\"color:#121213;margin:0;\" href=\"#\">Shop now &gt;</a>\n                    </div>\n                </div>\n            </div>\n            <div class=\"col-sm-3\">\n                <div class=\"grid3 col-sm-margin\" style=\"position:relative;\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/slider/grid3.jpg\"}}\" alt=\"\" />\n                    <div class=\"content\" style=\"position:absolute;right:11.55%;top:25%;text-align:right;\">\n                        <p style=\"font-weight:300;color:#313131;\">MOBILE</p>\n                        <p style=\"font-weight:700;color:#313131;\">MEGA SALE</p>\n                        <h4 style=\"font-weight:400;color:#888;\"><span>$</span>450.<span>00</span></h4>\n                        <h3 class=\"theme-color\" style=\"font-weight:400\"><span>$</span>350.<span>00</span></h3>\n                        <a href=\"#\">Shop now &gt;</a>\n                    </div>\n                </div>\n                <div class=\"grid4\" style=\"position:relative;\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/slider/grid4.jpg\"}}\" alt=\"\" />\n                    <div class=\"content\" style=\"position:absolute;left:0;top:17%;text-align:center;width:100%;\">\n                        <h2 style=\"font-weight:300;color:#000;\"><b style=\"font-weight:600;font-style:italic;\">Deals</b> +<br>PROMOS</h2>\n                        <p style=\"font-weight:300;color:#000;opacity:0.7;filter:alpha(opacity=70);font-style:italic;\">Limited sales in<br>our categories.</p>\n                        <a class=\"btn btn-default\" href=\"#\">SHOP NOW <em class=\"porto-icon-right-open\"></em></a>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:34', '2016-12-02 19:11:34', 1),
(127, 'Porto - Homepage Slider 11', 'porto_homeslider_11', '<div id=\"banner-slider-demo-11\" class=\"owl-carousel owl-banner-carousel owl-middle-narrow\">\n    <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/11/slider/slide01_bg.png\"}}) repeat;\">\n        <div class=\"container\" style=\"position:relative\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/11/slider/slide01_img.png\"}}\" alt=\"\">\n            <div class=\"slide-1\" style=\"position: absolute; bottom: 27%; width:100%;\">\n                <div class=\"container\" style=\"text-align: left;\">\n            <div class=\"text-content\" style=\"display: inline-block; margin-left: 6%;\">\n            <em style=\"font-style: normal; text-align: left; display: block; color: #2c3232;font-weight:600;\">PROFESSIONAL</em>\n            <h2 style=\"color: #2c3232; line-height: 1;font-weight:800;margin:0;\">COSMETICS</h2>\n                <p><span style=\"color: #2c3232; vertical-align: top; font-weight: 300;\">Up to <b style=\"font-weight:800;\">70% OFF</b> in the new collection.</span></p>\n                <a href=\"#\" class=\"btn btn-default\" style=\"background-color: #b74173; color: #fff; vertical-align: top; font-weight: 600;\">SHOP NOW</a>\n            </div>\n                </div>\n            </div>\n        </div>\n    </div>\n    <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/11/slider/slide02_bg.png\"}}) center center no-repeat;background-size:cover;\">\n        <div class=\"container\" style=\"position:relative\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/11/slider/slide02_img.png\"}}\" alt=\"\">\n            <div class=\"slide-2\" style=\"position: absolute; bottom: 27%; width:100%;\">\n                <div class=\"container\" style=\"text-align: center;\">\n            <div class=\"text-content\" style=\"display: inline-block; margin-left: 6%;\">\n            <em style=\"font-style: normal; display: block; color: #2c3232;font-weight:600;\">CHECK OUT THE NEW</em>\n            <h2 style=\"color: #2c3232; line-height: 1;font-weight:800;margin:0;\">GLOSS FOR LIPS</h2>\n                <p><span style=\"color: #2c3232; vertical-align: top; font-weight: 300;\">Starting at $9.99</span></p>\n                <a href=\"#\" class=\"btn btn-default\" style=\"background-color: #b74173; color: #fff; vertical-align: top; font-weight: 600;\">SHOP NOW</a>\n            </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\',\n        \'owl.carousel/owl.carousel.min\'\n    ], function ($) {\n        $(\"#banner-slider-demo-11\").owlCarousel({\n            items: 1,\n            autoplay: true,\n            autoplayTimeout: 5000,\n            autoplayHoverPause: true,\n            dots: false,\n            nav: true,\n            navRewind: true,\n            animateIn: \'fadeIn\',\n            animateOut: \'fadeOut\',\n            loop: true,\n            navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n        });\n    });\n</script>\n<div class=\"container\">\n    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"8\" column_count=\"4\" aspect_ratio=\"0\" image_width=\"250\" image_height=\"250\" template=\"flex_grid.phtml\"}}\n</div>\n<div style=\"background-color:#efefef\">\n    <div class=\"container\">\n        <div id=\"brands-slider-demo-11\" class=\"owl-no-narrow flex-owl-slider\">\n            <div class=\"owl-carousel\">\n                <div class=\"item\" style=\"padding-top:10px;text-align:center;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand1.png\"}}\" alt=\"\" style=\"display: inline-block;\"/></div>\n                <div class=\"item\" style=\"padding-top:10px;text-align:center;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand2.png\"}}\" alt=\"\" style=\"display: inline-block;\"/></div>\n                <div class=\"item\" style=\"padding-top:10px;text-align:center;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand3.png\"}}\" alt=\"\" style=\"display: inline-block;\"/></div>\n                <div class=\"item\" style=\"padding-top:10px;text-align:center;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand4.png\"}}\" alt=\"\" style=\"display: inline-block;\"/></div>\n            </div>\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#brands-slider-demo-11 .owl-carousel\").owlCarousel({\n                    autoplay: false,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    margin: 0,\n                    nav: false,\n                    dots: false,\n                    loop: false,\n                    responsive: {\n                        0: {\n                            items:2\n                        },\n                        640: {\n                            items:2\n                        },\n                        768: {\n                            items:2\n                        },\n                        992: {\n                            items:3\n                        },\n                        1200: {\n                            items:4\n                        }\n                    }\n                });\n            });\n        </script>\n    </div>\n</div>', '2016-12-02 19:11:35', '2016-12-02 19:11:35', 1),
(128, 'Porto - Homepage Slider 13', 'porto_homeslider_13', '<div id=\"parallax_01\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/13/slider/parallax_01.jpg\"}}) 50% 0 no-repeat fixed; color: #fff; height: 100vh;width: 100%; padding: 0; position: relative;\">\r\n    <div class=\"parallax-content-13\" style=\"width: 100%; text-align: center; position: absolute; top: 37%;\">\r\n        <div style=\"margin:0;line-height:1;\">\r\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/13/slider/quote.png\"}}\" alt=\"\" class=\"quote\" style=\"display:inline-block;vertical-align:middle;\"/>\r\n            <em style=\"display:inline-block;vertical-align:middle;line-height:1;color:#fff;font-weight:300;font-style:normal;\">DO YOU NEED A NEW</em>\r\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/13/slider/quote.png\"}}\" alt=\"\" class=\"quote\" style=\"display:inline-block;vertical-align:middle;\"/>\r\n        </div>\r\n        <h2 style=\"font-weight:800;color:#fff;line-height:1;\">eCOMMERCE?</h2>\r\n        <p style=\"font-weight:300;color:#fff;line-height:1;\">Check our options and features.</p>\r\n    </div>\r\n</div>\r\n<div id=\"parallax_02\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/13/slider/parallax_02.jpg\"}}) 50% 0 no-repeat fixed; color: #fff; width: 100%;\">\r\n    <div class=\"parallax-content-13\">\r\n        <div class=\"container\" style=\"text-align: right;\">\r\n            <div class=\"text-content\" style=\"display: inline-block;\">\r\n                <em style=\"font-style: normal; text-align: right; display: block; color: #333;font-weight:600;\">NEW ARRIVALS</em>\r\n                <h2 style=\"color: #333; line-height: 1;font-weight:800;margin:0;\">Fashion Dresses</h2>\r\n                <p><span style=\"color: #333; vertical-align: top;\">Up to <b style=\"font-weight:800;\">70% OFF</b> in the new collection.</span>&nbsp;<a href=\"#\" class=\"btn btn-default\" style=\"background-color: #333; vertical-align: top; font-weight: 600; color: #fff;\">SHOP NOW</a></p>\r\n            </div>\r\n            <div style=\"text-align: left;\">\r\n                <p style=\"color: #333; font-size: 15px;margin:0;font-weight:600;margin-bottom:15px;\">FEATURED PRODUCTS</p>\r\n                <div id=\"featured_products_1\" class=\"hide-addtocart hide-addtolinks\">\r\n                    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"1\" image_width=\"272\" image_height=\"337\" template=\"owl_list.phtml\"}}\r\n                </div>\r\n                <script type=\"text/javascript\">\r\n                    require([\r\n                        \'jquery\',\r\n                        \'owl.carousel/owl.carousel.min\'\r\n                    ], function ($) {\r\n                        $(\"#featured_products_1 .owl-carousel\").owlCarousel({\r\n                            autoplay: true,\r\n                            autoplayTimeout: 5000,\r\n                            autoplayHoverPause: true,\r\n                            loop: true,\r\n                            navRewind: true,\r\n                            margin: 10,\r\n                            nav: false,\r\n                            dots: true,\r\n                            responsive: {\r\n                                0: {\r\n                                    items:2\r\n                                },\r\n                                768: {\r\n                                    items:3\r\n                                },\r\n                                992: {\r\n                                    items:4\r\n                                },\r\n                                1200: {\r\n                                    items:5\r\n                                }\r\n                            }\r\n                        });\r\n                    });\r\n                </script>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div id=\"parallax_03\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/13/slider/parallax_03.jpg\"}}) 50% 0 no-repeat fixed; color: #fff; width: 100%;\">\r\n    <div class=\"parallax-content-13\">\r\n        <div class=\"container\" style=\"text-align: left;\">\r\n            <div class=\"text-content\" style=\"display: inline-block;\">\r\n                <em style=\"font-style: normal; text-align: left; display: block; color: #fff;font-weight:600;\">NEW ARRIVALS</em>\r\n                <h2 style=\"color: #fff; line-height: 1;font-weight:800;margin:0;\">Fashion Sunglasses</h2>\r\n                <p><span style=\"color: #fff; vertical-align: top;\">Up to <b style=\"font-weight:800;\">70% OFF</b> in the new collection.</span>&nbsp;<a href=\"#\" class=\"btn btn-default\" style=\"background-color: #fff; color: #333; vertical-align: top; font-weight: 600;\">SHOP NOW</a></p>\r\n            </div>\r\n            <div style=\"text-align: left;\">\r\n                <p style=\"color: #fff; font-size: 15px;margin:0;font-weight:600;text-align: right; margin-bottom: 15px;\">FEATURED PRODUCTS</p>\r\n                <div id=\"featured_products_2\" class=\"hide-addtocart hide-addtolinks\">\r\n                    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"1\" image_width=\"272\" image_height=\"337\" template=\"owl_list.phtml\"}}\r\n                </div>\r\n                <script type=\"text/javascript\">\r\n                    require([\r\n                        \'jquery\',\r\n                        \'owl.carousel/owl.carousel.min\'\r\n                    ], function ($) {\r\n                        $(\"#featured_products_2 .owl-carousel\").owlCarousel({\r\n                            autoplay: true,\r\n                            autoplayTimeout: 5000,\r\n                            autoplayHoverPause: true,\r\n                            loop: true,\r\n                            navRewind: true,\r\n                            margin: 10,\r\n                            nav: false,\r\n                            dots: true,\r\n                            responsive: {\r\n                                0: {\r\n                                    items:2\r\n                                },\r\n                                768: {\r\n                                    items:3\r\n                                },\r\n                                992: {\r\n                                    items:4\r\n                                },\r\n                                1200: {\r\n                                    items:5\r\n                                }\r\n                            }\r\n                        });\r\n                    });\r\n                </script>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div id=\"parallax_04\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/13/slider/parallax_04.jpg\"}}) 50% 0 no-repeat fixed; color: #fff; height: 100vh;margin: 0; padding: 0;\">\r\n    <div style=\"width: 100%; height: 100%; position: relative;\">\r\n        <div class=\"parallax-content-13\" style=\"width: 100%; text-align: center; position: absolute; top: 37%;\">\r\n            <div style=\"margin:0;line-height:1;\">\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/13/slider/quote_black.png\"}}\" alt=\"\" class=\"quote\" style=\"display:inline-block;vertical-align:middle;\"/>\r\n                <em style=\"display:inline-block;vertical-align:middle;line-height:1;color:#333;font-weight:300;font-style:normal;\">LET THE MUSIC PLAY</em>\r\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/13/slider/quote_black.png\"}}\" alt=\"\" class=\"quote\" style=\"display:inline-block;vertical-align:middle;\"/>\r\n            </div>\r\n            <h2 style=\"font-weight:800;color:#333;line-height:1;\">Connect with the best tech!</h2>\r\n            <p style=\"font-weight:300;color:#333;line-height:1;\">Up to 70% OFF in the new collection.</p>\r\n            <a href=\"#\" class=\"btn btn-default\" style=\"background-color: #333; color: #fff; border-radius: 0; border: 0;\">SHOP NOW</a>\r\n        </div>\r\n    </div>\r\n</div>', '2016-12-02 19:11:35', '2017-03-21 10:27:11', 1),
(129, 'Porto - Homepage Slider 14', 'porto_homeslider_14', '<div class=\"full-screen-slider\">\n    <div id=\"banner-slider-demo-14\" class=\"owl-carousel owl-middle-narrow owl-banner-carousel\">\n        <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/14/slider/slide1.jpg\"}}) 71% top no-repeat; background-size:cover; position: relative;\">\n            <div class=\"slide-1\" style=\"position: absolute; top: 35%; width:100%;\">\n                <div class=\"container\" style=\"text-align: left;\">\n            <div class=\"text-content\" style=\"display: inline-block;\">\n            <em style=\"font-style: normal; text-align: left; display: block; color: #fff; font-weight: 600; line-height: 1;\">NEW ARRIVALS</em>\n            <h2 style=\"color: #fff; line-height: 1;font-weight:800;margin:0;\">Fashion</h2>\n                <p><span style=\"color: #fff; vertical-align: top; font-weight: 300;\">Up to <b style=\"font-weight:800;\">70% OFF</b> in the new collection.</span></p>\n                <a href=\"#\" class=\"btn btn-default\" style=\"background-color: #fff; color: #333; vertical-align: top; font-weight: 600;\">SHOP NOW</a>\n            </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/14/slider/slide2.jpg\"}}) 71% top no-repeat; background-size:cover; position: relative;\">\n            <div class=\"slide-2\" style=\"position: absolute; top: 35%; width:100%;\">\n                <div class=\"container\" style=\"text-align: left;\">\n            <div class=\"text-content\" style=\"display: inline-block;\">\n            <em style=\"font-style: normal; text-align: left; display: block; color: #fff; font-weight: 600; line-height: 1;\">EXCLUSIVE</em>\n            <h2 style=\"color: #fff; line-height: 1;font-weight:800;margin:0;\">Sunglasses</h2>\n                <p style=\"text-align:right;\"><span style=\"color: #fff; vertical-align: top; font-weight: 300;\">Incredible prices</span></p>\n                <a href=\"#\" style=\"float:right; color: #fff; vertical-align: top; font-weight: 400;\">SHOP NOW</a>\n            </div>\n                </div>\n            </div>\n        </div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            var owl_3 = $(\"#banner-slider-demo-14\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                dots: false,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                nav: true,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n        });\n    </script>\n</div>\n<div class=\"container\">\n    <div class=\"single-images\" style=\"padding-top: 30px;\">\n        <div class=\"row\">\n            <div class=\"col-sm-4\" style=\"padding-bottom:15px;\">\n                <a class=\"image-link\" href=\"#\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/14/slider/image_link_1.jpg\"}}\" alt=\"\" />\n                    <span class=\"category-title\">SUNGLASSES</span>\n                </a>\n            </div>\n            <div class=\"col-sm-4\" style=\"padding-bottom:15px;\">\n                <a class=\"image-link\" href=\"#\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/14/slider/image_link_2.jpg\"}}\" alt=\"\" />\n                    <span class=\"category-title\">WOMAN DRESSES</span>\n                </a>\n            </div>\n            <div class=\"col-sm-4\" style=\"padding-bottom:15px;\">\n                <a class=\"image-link\" href=\"#\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/14/slider/image_link_3.jpg\"}}\" alt=\"\" />\n                    <span class=\"category-title\">WOMAN BAGS</span>\n                </a>\n            </div>\n         </div>\n    </div>\n    <div class=\"row\">\n        <div class=\"col-sm-12\">\n            <h2 style=\"margin-top:30px;font-size:19px;font-weight:600;margin-bottom:20px;text-align:center;\" class=\"theme-color\">WEEKLY FEATURED PRODUCTS</h2>\n            <div id=\"featured_product\" class=\"hide-addtocart hide-addtolinks\">\n                {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"263\" template=\"owl_list.phtml\"}}\n            </div>\n            <script type=\"text/javascript\">\n                require([\n                    \'jquery\',\n                    \'owl.carousel/owl.carousel.min\'\n                ], function ($) {\n                    $(\"#featured_product .owl-carousel\").owlCarousel({\n                        autoplay: true,\n                        autoplayTimeout: 5000,\n                        autoplayHoverPause: true,\n                        loop: true,\n                        navRewind: true,\n                        margin: 10,\n                        nav: false,\n                        navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                        dots: false,\n                        responsive: {\n                            0: {\n                                items:2\n                            },\n                            768: {\n                                items:3\n                            },\n                            992: {\n                                items:4\n                            },\n                            1200: {\n                                items:5\n                            }\n                        }\n                    });\n                });\n            </script>\n        </div>\n    </div>\n</div>\n<div id=\"parallax_01\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/14/slider/parallax_img.jpg\"}}) 80% 0 no-repeat fixed; color: #fff; padding: 100px 0; position: relative;\">\n        <div class=\"overlay overlay-color\" style=\"background-color: #000000; opacity: 0.65; filter: alpha(opacity=65);top:0;\"></div>\n    <div class=\"parallax-slider\" style=\"position: relative; z-index: 3;\">\n            <div class=\"container\">\n                <div id=\"parallax-slider-demo-14\" class=\"owl-carousel owl-theme\">\n                    <div class=\"item\">\n                        <h2 style=\"font-weight:600;\">SPECIAL <b style=\"font-weight:800;\">PROMO</b></h2>\n                        <p style=\"font-weight:300;\">Up to <b style=\"font-weight:800;\">70% OFF</b> in the new collection.</p>\n                        <a href=\"#\" style=\"font-weight:300;\">Purchase now &gt;</a>\n                    </div>\n                    <div class=\"item\">\n                        <h2 style=\"font-weight:600;\">SPECIAL <b style=\"font-weight:800;\">PROMO</b></h2>\n                        <p style=\"font-weight:300;\">Up to <b style=\"font-weight:800;\">70% OFF</b> in the new collection.</p>\n                        <a href=\"#\" style=\"font-weight:300;\">Purchase now &gt;</a>\n                    </div>\n                    <div class=\"item\">\n                        <h2 style=\"font-weight:600;\">SPECIAL <b style=\"font-weight:800;\">PROMO</b></h2>\n                        <p style=\"font-weight:300;\">Up to <b style=\"font-weight:800;\">70% OFF</b> in the new collection.</p>\n                        <a href=\"#\" style=\"font-weight:300;\">Purchase now &gt;</a>\n                    </div>\n                </div>\n            </div>\n            <script type=\"text/javascript\">\n                require([\n                    \'jquery\',\n                    \'owl.carousel/owl.carousel.min\'\n                ], function ($) {\n                    var owl_4 = $(\"#parallax-slider-demo-14\").owlCarousel({\n                        items: 1,\n                        autoplay: true,\n                        autoplayTimeout: 5000,\n                        autoplayHoverPause: true,\n                        dots: true,\n                        navRewind: true,\n                        animateIn: \'fadeIn\',\n                        animateOut: \'fadeOut\',\n                        loop: true,\n                        nav: false,\n                        navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n                    });\n                });\n            </script>\n        </div>\n</div>', '2016-12-02 19:11:35', '2016-12-02 19:11:35', 1),
(130, 'Porto - Homepage Slider 15', 'porto_homeslider_15', '<div class=\"container\" style=\"padding:20px 15px 0;font-family:Georgia;\">\n    <div id=\"banner-slider-demo-15\" class=\"owl-carousel owl-middle-narrow owl-banner-carousel\">\n        <div class=\"item\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/15/slider/slide1.jpg\"}}\" alt=\"\" />\n            <div class=\"content\" style=\"position:absolute; right:9.5%;top:40%;text-align:right;\">\n                <em style=\"font-weight:400;color:#666666;float:left;font-style:normal;\">Porto Presents...</em>\n                <div class=\"clearfix\"></div>\n                <h2 style=\"font-weight:400;color:#141414;margin:0;line-height:1;\">The Bride\'s Dream</h2>\n                <hr style=\"width: 50%;border-color:#151515;float:right;\">\n                <div class=\"clearfix\"></div>\n                <a href=\"#\" style=\"color:#2b262f;font-weight:700;\"><span>SHOP NOW</span></a>\n            </div>\n        </div>\n        <div class=\"item\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/15/slider/slide2.jpg\"}}\" alt=\"\" />\n            <div class=\"content\" style=\"position:absolute; right:9.5%;top:40%;text-align:right;\">\n                <em style=\"font-weight:400;color:#666666;float:left;font-style:normal;\">Porto Presents...</em>\n                <div class=\"clearfix\"></div>\n                <h2 style=\"font-weight:400;color:#141414;margin:0;line-height:1;\">The Bride\'s Dream</h2>\n                <hr style=\"width: 50%;border-color:#151515;float:right;\">\n                <div class=\"clearfix\"></div>\n                <a href=\"#\" style=\"color:#2b262f;font-weight:700;\"><span>SHOP NOW</span></a>\n            </div>\n        </div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#banner-slider-demo-15\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                dots: false,\n                nav: true,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n        });\n    </script>\n</div>', '2016-12-02 19:11:35', '2016-12-02 19:11:35', 1),
(131, 'Porto - Homepage Slider 16', 'porto_homeslider_16', '<div class=\"full-screen-slider\">\n    <div id=\"banner-slider-demo-16\" class=\"owl-carousel owl-bottom-narrow owl-banner-carousel\">\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <div style=\"width:100%;height:100%;width:100vw;height:100vh;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/16/slider/01.jpg\"}}) 80% center no-repeat; background-size:cover;\"></div>\n            <div class=\"slide1-content\" style=\"width:100%;position:absolute;left:0;top:40%;text-align:center;\">\n                <div class=\"text-content\" style=\"display: inline-block;\">\n                    <em style=\"font-style: normal; text-align: right; display: block; color: #fff;font-weight:600;\">NEW ARRIVALS</em>\n                    <h2 style=\"color: #fff; line-height: 1;font-weight:800;margin:0;\">Fashion Sunglasses</h2>\n                    <p><span style=\"color: #fff; vertical-align: top;\">Up to <b style=\"font-weight:800;\">70% OFF</b> in the new collection.</span>&nbsp;<a href=\"#\" class=\"btn btn-default\" style=\"background-color: #fff; color: #333; vertical-align: top; font-weight: 600;float:right;\">SHOP NOW</a></p>\n                </div>\n            </div>\n        </div>\n        <div class=\"item\" style=\"background:#f0f0f0;background-image:linear-gradient(#e8e8e8,#f0f0f0);position:relative;\">\n            <div style=\"width:100%;height:100%;width:100vw;height:100vh;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/16/slider/02.jpg\"}}) 20% center no-repeat; background-size:cover;\"></div>\n            <div class=\"slide2-content\" style=\"width:100%;position:absolute;left:0;top:40%;text-align:center;\">\n                <div class=\"text-content\" style=\"display: inline-block;\">\n                    <em style=\"font-style: normal; text-align: right; display: block; color: #fff;font-weight:600;\">NEW COLLECTION</em>\n                    <h2 style=\"color: #fff; line-height: 1;font-weight:800;margin:0;\">Women Dresses</h2>\n                    <p><span style=\"color: #fff; vertical-align: top;\">Up to <b style=\"font-weight:800;\">70% OFF</b> in the new collection.</span>&nbsp;<a href=\"#\" class=\"btn btn-default\" style=\"background-color: #fff; color: #333; vertical-align: top; font-weight: 600;float:right;\">SHOP NOW</a></p>\n                </div>\n            </div>\n        </div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            var owl_16 = $(\"#banner-slider-demo-16\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                dots: true,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                nav: false,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n        });\n    </script>\n</div>', '2016-12-02 19:11:35', '2016-12-02 19:11:35', 1);
INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(132, 'Porto - Homepage Slider 17', 'porto_homeslider_17', '<div id=\"banner-slider-demo-17\" class=\"owl-carousel owl-banner-carousel owl-middle-narrow\">\n    <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/17/slider/layer1.jpg\"}}) no-repeat; background-size: cover;\">\n        <div class=\"container\" style=\"position:relative\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/17/slider/layer2.png\"}}\" alt=\"\">\n            <div class=\"content-17 type1\" style=\"position:absolute;top:30%;left:9%;text-align:right\">\n                <em style=\"font-weight:300;font-style:normal;color:#a39a8c;float:left;\">Feel the real</em>\n                <div class=\"clearfix\"></div>\n                <h2 style=\"font-weight:400;font-style:italic;line-height:1;color:#79a939;margin:0;\"><b style=\"font-weight:800\">MOBILE</b> music</h2>\n                <p style=\"color:#010101;font-weight:700;line-height:1;margin-bottom:15px\">$999</p>\n                <a href=\"#\" style=\"font-weight:600;color:#1e1e1e;\"><span>SHOP NOW</span><i class=\"porto-icon-angle-right theme-bg-color\"></i></a>\n            </div>\n        </div>\n    </div>\n    <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/17/slider/layer3.jpg\"}}) no-repeat; background-size: cover;\">\n        <div class=\"container\" style=\"position:relative\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/17/slider/layer4.png\"}}\" alt=\"\">\n        </div>\n    </div>\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\',\n        \'owl.carousel/owl.carousel.min\'\n    ], function ($) {\n        $(\"#banner-slider-demo-17\").owlCarousel({\n            items: 1,\n            autoplay: true,\n            autoplayTimeout: 5000,\n            autoplayHoverPause: true,\n            dots: false,\n            nav: true,\n            navRewind: true,\n            animateIn: \'fadeIn\',\n            animateOut: \'fadeOut\',\n            loop: true,\n            navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n        });\n    });\n</script>\n<div class=\"homepage-bar\">\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-md-4\">\n                <em class=\"porto-icon-truck\" style=\"font-size:36px;\"></em><div class=\"text-area\"><h3>FREE SHIPPING & RETURN</h3><p>Free shipping on all orders over $99.</p></div>\n            </div>\n            <div class=\"col-md-4\">\n                <em class=\"porto-icon-dollar\"></em><div class=\"text-area\"><h3>MONEY BACK GUARANTEE</h3><p>100% money back guarantee.</p></div>\n            </div>\n            <div class=\"col-md-4\">\n                <em class=\"porto-icon-lifebuoy\" style=\"font-size:32px;\"></em><div class=\"text-area\"><h3>ONLINE SUPPORT 24/7</h3><p>Lorem ipsum dolor sit amet.</p></div>\n            </div>\n        </div>\n    </div>\n</div>\n<div class=\"container\">\n    <div class=\"filterproducts-tab\" style=\"margin-top: 40px;\">\n        <div class=\"data items\" data-mage-init=\'{\"tabs\":{\"openedState\":\"active\"}}\'>\n            <div class=\"data item title\" aria-labeledby=\"tab-label-featured-title\" data-role=\"collapsible\" id=\"tab-label-featured\">\n                <a class=\"data switch\" tabindex=\"-1\" data-toggle=\"switch\" href=\"#featured\" id=\"tab-label-featured-title\">Featured</a>\n            </div>\n            <div class=\"data item content\" id=\"featured\" data-role=\"content\">\n                <div id=\"featured_product\" class=\"owl-top-narrow hide-addtolinks hide-addtocart\">\n                    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"263\" template=\"owl_list.phtml\"}}\n                </div>\n                <script type=\"text/javascript\">\n                    require([\n                        \'jquery\',\n                        \'owl.carousel/owl.carousel.min\'\n                    ], function ($) {\n                        $(\"#featured_product .owl-carousel\").owlCarousel({\n                            autoplay: true,\n                            autoplayTimeout: 5000,\n                            autoplayHoverPause: true,\n                            loop: true,\n                            navRewind: true,\n                            margin: 10,\n                            nav: true,\n                            navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                            dots: false,\n                            responsive: {\n                                0: {\n                                    items:2\n                                },\n                                768: {\n                                    items:3\n                                },\n                                992: {\n                                    items:3\n                                },\n                                1200: {\n                                    items:4\n                                }\n                            }\n                        });\n                    });\n                </script>\n            </div>\n            <div class=\"data item title\" aria-labeledby=\"tab-label-latest-title\" data-role=\"collapsible\" id=\"tab-label-latest\">\n                <a class=\"data switch\" tabindex=\"-1\" data-toggle=\"switch\" href=\"#latest\" id=\"tab-label-latest-title\">Latest</a>\n            </div>\n            <div class=\"data item content\" id=\"latest\" data-role=\"content\">\n                <div id=\"latest_product\" class=\"owl-top-narrow hide-addtolinks hide-addtocart\">\n                    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"263\" template=\"owl_list.phtml\"}}\n                </div>\n                <script type=\"text/javascript\">\n                    require([\n                        \'jquery\',\n                        \'owl.carousel/owl.carousel.min\'\n                    ], function ($) {\n                        $(\"#latest_product .owl-carousel\").owlCarousel({\n                            autoplay: true,\n                            autoplayTimeout: 5000,\n                            autoplayHoverPause: true,\n                            loop: true,\n                            navRewind: true,\n                            margin: 10,\n                            nav: true,\n                            navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                            dots: false,\n                            responsive: {\n                                0: {\n                                    items:2\n                                },\n                                768: {\n                                    items:3\n                                },\n                                992: {\n                                    items:3\n                                },\n                                1200: {\n                                    items:4\n                                }\n                            }\n                        });\n                    });\n                </script>\n            </div>\n        </div>\n    </div>\n</div>\n<div style=\"padding-top: 40px;\" class=\"custom-support\">\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-sm-4\">\n                <em class=\"porto-icon-star\" style=\"border-radius:50%;border:2px solid #cecece;color:#333;background-color:transparent;line-height:58px;font-size:25px;\"></em>\n                <div class=\"content\">\n                    <h2>Customer Support</h2>\n                    <em>YOU WON\'T BE ALONE</em>\n                    <p>We really care about you and your website as much as you do. Purchasing Porto or any other theme from us you get 100% free support.</p>\n                </div>\n            </div>\n            <div class=\"col-sm-4\">\n                <em class=\"porto-icon-reply\" style=\"border-radius:50%;border:2px solid #cecece;color:#333;background-color:transparent;line-height:58px;font-size:25px;\"></em>\n                <div class=\"content\">\n                    <h2>Fully Customizable</h2>\n                    <em>TONS OF OPTIONS</em>\n                    <p>With Porto you can customize the layout, colors and styles within only a few minutes. Start creating an amazing website right now!</p>\n                </div>\n            </div>\n            <div class=\"col-sm-4\">\n                <em class=\"porto-icon-paper-plane\" style=\"border-radius:50%;border:2px solid #cecece;color:#333;background-color:transparent;line-height:58px;font-size:25px;\"></em>\n                <div class=\"content\">\n                    <h2>Powerful Admin</h2>\n                    <em>MADE TO HELP YOU</em>\n                    <p>Porto has very powerful admin features to help customer to build their own shop in minutes without any special skills in web development.</p>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div class=\"parallax-wrapper\" style=\"margin: 50px 0 20px;\">\n    <div class=\"overlay overlay-color\" style=\"background-color: #000000; opacity: 0.75; filter: alpha(opacity=75);\"></div>\n    <div class=\"parallax\" style=\"background-image: url({{media url=\"wysiwyg/smartwave/porto/homepage/17/slider/parallax_bg.jpg\"}});\">\n        <div class=\"parallax-slider\" style=\"position: relative; z-index: 3;\">\n            <div class=\"container\">\n                <div id=\"parallax-slider-demo-17\" class=\"owl-carousel\">\n                    <div class=\"item\">\n                        <h2 style=\"font-weight:600;\">EXPLORE <b style=\"font-weight:800;\">PORTO</b></h2>\n                        <p style=\"font-weight:300;\">Premium theme, unlimited possibilities...</p>\n                        <a href=\"#\" style=\"font-weight:300;\">Purchase now &gt;</a>\n                    </div>\n                    <div class=\"item\">\n                        <h2 style=\"font-weight:600;\">EXPLORE <b style=\"font-weight:800;\">PORTO</b></h2>\n                        <p style=\"font-weight:300;\">Premium theme, unlimited possibilities...</p>\n                        <a href=\"#\" style=\"font-weight:300;\">Purchase now &gt;</a>\n                    </div>\n                    <div class=\"item\">\n                        <h2 style=\"font-weight:600;\">EXPLORE <b style=\"font-weight:800;\">PORTO</b></h2>\n                        <p style=\"font-weight:300;\">Premium theme, unlimited possibilities...</p>\n                        <a href=\"#\" style=\"font-weight:300;\">Purchase now &gt;</a>\n                    </div>\n                </div>\n            </div>\n            <script type=\"text/javascript\">\n                require([\n                    \'jquery\',\n                    \'owl.carousel/owl.carousel.min\'\n                ], function ($) {\n                    $(\"#parallax-slider-demo-17\").owlCarousel({\n                        items: 1,\n                        autoplay: true,\n                        autoplayTimeout: 5000,\n                        autoplayHoverPause: true,\n                        dots: true,\n                        nav: false,\n                        loop: true,\n                        navRewind: true\n                    });\n                });\n            </script>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:36', '2016-12-02 19:11:36', 1),
(133, 'Porto - Homepage Slider 18', 'porto_homeslider_18', '<div class=\"container\">\n    <div id=\"banner-slider-demo-18\" class=\"owl-carousel owl-middle-narrow owl-banner-carousel\">\n        <div class=\"item\" style=\"position: relative;\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/18/slider/01.jpg\"}}\" alt=\"\"/>\n            <div class=\"content-1\" style=\"background-color: #b81d21; color: #fff;\">\n                <div>\n                    <p style=\"color:#fff;\">Furniture &amp; Garden</p>\n                    <h3 style=\"color:#fff;\">HUGE<br><b>SALE</b></h3>\n                </div>\n                <div style=\"text-align:right;\">\n                    <em style=\"color:#fff;\">up to</em>\n                    <h4 style=\"color:#fff;\">40%</h4>\n                    <h5 style=\"color:#fff;\">OFF</h5>\n                </div>\n            </div>\n        </div>\n        <div class=\"item\" style=\"position: relative;\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/18/slider/02.jpg\"}}\" alt=\"\"/>\n            <div class=\"content-2\" style=\"background-color: #333333; color: #fff;\">\n                <div>\n                    <p style=\"color:#fff;\">Furniture &amp; Garden</p>\n                    <h3 style=\"color:#fff;\">SPECIAL <b>PROMO</b></h3>\n                </div>\n                <div style=\"text-align:right;border: 1px solid #ccc;border-width: 0 1px;\">\n                    <em style=\"color:#fff;\">up to</em>\n                    <h4 style=\"color:#fff;\">40%</h4>\n                    <h5 style=\"color:#fff;\">OFF</h5>\n                </div>\n                <div>\n                    <a style=\"color:#fff;\" href=\"#\">SHOP NOW <i class=\"porto-icon-right-dir\"></i></a>\n                </div>\n            </div>\n        </div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#banner-slider-demo-18\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                dots: false,\n                nav: true,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n        });\n    </script>\n\n</div>', '2016-12-02 19:11:36', '2016-12-02 19:11:36', 1),
(134, 'Porto - Custom Block for Header', 'porto_custom_block_for_header', '<em class=\"porto-icon-phone\" style=\"margin-right: 5px;\"></em><span>+254724814212</span><span class=\"split\"></span><a href=\"#\">CONTACT US</a>', '2016-12-02 19:11:36', '2017-03-18 11:43:16', 1),
(135, 'Porto - Footer Links', 'porto_footer_links', '<div class=\"block\">\n    <div class=\"block-title\"><strong>My Account</strong></div>\n    <div class=\"block-content\">\n        <ul class=\"links\">\n            <li><em class=\"porto-icon-right-dir theme-color\"></em><a href=\"{{store url=\"\"}}about-porto\" title=\"About us\">About us</a></li>\n            <li><em class=\"porto-icon-right-dir theme-color\"></em><a href=\"{{store url=\"\"}}contact\" title=\"Contact us\">Contact us</a></li>\n            <li><em class=\"porto-icon-right-dir theme-color\"></em><a href=\"{{store url=\"\"}}customer/account\" title=\"My account\">My account</a></li>\n            <li><em class=\"porto-icon-right-dir theme-color\"></em><a href=\"{{store url=\"\"}}sales/order/history\" title=\"Orders history\">Orders history</a></li>\n            <li><em class=\"porto-icon-right-dir theme-color\"></em><a href=\"{{store url=\"\"}}catalogsearch/advanced\" title=\"Advanced search\">Advanced search</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:36', '2016-12-02 19:11:36', 1),
(136, 'Porto - Footer Contact Information', 'porto_footer_contact_information', '<div class=\"block\">\r\n    <div class=\"block-title\"><strong>Contact Information</strong></div>\r\n    <div class=\"block-content\">\r\n        <ul class=\"contact-info\">\r\n           <!-- <li><em class=\"porto-icon-location\"></em><p><b>Address:</b><br/>Chiromo Court, Westlands, Nairobi Kenya</p></li> -->\r\n            <li><em class=\"porto-icon-phone\"></em><p><b>Phone:</b><br/>(123) 456-7890</p></li>\r\n            <li><em class=\"porto-icon-mail\"></em><p><b>Email:</b><br/><a href=\"mailto:info@gubato.com\">info@gubato.com</a></p></li>\r\n            <li><em class=\"porto-icon-clock\"></em><p><b>Working Days/Hours:</b><br/>Mon - Sun / 9:00AM - 8:00PM</p></li>\r\n        </ul>\r\n    </div>\r\n</div>', '2016-12-02 19:11:36', '2017-03-22 09:42:45', 1),
(137, 'Porto - Footer Features', 'porto_footer_features', '<div class=\"block\">\n    <div class=\"block-title\"><strong>Main Features</strong></div>\n    <div class=\"block-content\">\n        <ul class=\"features\">\n            <li><em class=\"porto-icon-ok theme-color\"></em><a href=\"#\">Super Fast Magento Theme</a></li>\n            <li><em class=\"porto-icon-ok theme-color\"></em><a href=\"#\">1st Fully working Ajax Theme</a></li>\n            <li><em class=\"porto-icon-ok theme-color\"></em><a href=\"#\">10 Unique Homepage Layouts</a></li>\n            <li><em class=\"porto-icon-ok theme-color\"></em><a href=\"#\">Powerful Admin Panel</a></li>\n            <li><em class=\"porto-icon-ok theme-color\"></em><a href=\"#\">Mobile &amp; Retina Optimized</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:36', '2016-12-02 19:11:36', 1),
(138, 'Porto - Custom Block for Footer Bottom Area', 'porto_footer_bottom_custom_block', '<ul class=\"social-icons\">\n    <li><a class=\"facebook-link\" href=\"#\"><em class=\"porto-icon-facebook\"></em></a></li>\n    <li><a class=\"twitter-link\" href=\"#\"><em class=\"porto-icon-twitter\"></em></a></li>\n    <li><a class=\"linkedin-link\" href=\"#\"><em class=\"porto-icon-linkedin-squared\"></em></a></li>\n</ul>\n<img src=\"{{media url=\"wysiwyg/smartwave/porto/footer/payments.png\"}}\" alt=\"\" />', '2016-12-02 19:11:37', '2016-12-02 19:11:37', 1),
(139, 'Porto - Custom Block for Footer Bottom Area(for Home 3)', 'porto_footer_bottom_custom_block_1_3', '<ul class=\"social-icons\">\n    <li><a class=\"facebook-link\" href=\"#\"><em class=\"porto-icon-facebook\"></em></a></li>\n    <li><a class=\"twitter-link\" href=\"#\"><em class=\"porto-icon-twitter\"></em></a></li>\n    <li><a class=\"linkedin-link\" href=\"#\"><em class=\"porto-icon-linkedin-squared\"></em></a></li>\n</ul>\n<ul class=\"links\">\n<li class=\"first\">(+404) 158 14 25 78</li>\n<li class=\"last\"><a href=\"http://newsmartwave.net/magento/porto/index.php/blog\">BLOG</a></li>\n</ul>', '2016-12-02 19:11:37', '2016-12-02 19:11:37', 1),
(140, 'Porto - Custom Block(Right) for Footer Bottom Area(for Home 3)', 'porto_footer_bottom_custom_block_2_3', '<img src=\"{{media url=\"wysiwyg/smartwave/porto/footer/payments.png\"}}\" alt=\"\" />', '2016-12-02 19:11:37', '2016-12-02 19:11:37', 1),
(141, 'Porto - Footer Top Custom Block', 'porto_footer_top_custom_block', '<div class=\"homepage-bar\" style=\"background-color: #08c;color: #fff;padding: 10px 0;border: 0;\">\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-md-4\">\n                <i class=\"porto-icon-truck\" style=\"font-size:36px;color: #fff;\"></i><div class=\"text-area\"><h3 style=\"color: #fff;\">FREE SHIPPING & RETURN</h3><p>Free shipping on all orders over $99.</p></div>\n            </div>\n            <div class=\"col-md-4\" style=\"border-color: #149ce0;\">\n                <i class=\"porto-icon-dollar\" style=\"color: #fff;\"></i><div class=\"text-area\"><h3 style=\"color: #fff;\">MONEY BACK GUARANTEE</h3><p>100% money back guarantee.</p></div>\n            </div>\n            <div class=\"col-md-4\" style=\"border-color: #149ce0;\">\n                <i class=\"porto-icon-lifebuoy\" style=\"font-size:32px;color: #fff;\"></i><div class=\"text-area\"><h3 style=\"color: #fff;\">ONLINE SUPPORT 24/7</h3><p>Lorem ipsum dolor sit amet.</p></div>\n            </div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:37', '2016-12-02 19:11:37', 1),
(142, 'Porto - Footer Top Custom Block for Home4', 'porto_footer_top_custom_block_home4', '<div class=\"homepage-bar\" style=\"background-color: transparent;color: #fff;padding: 10px 0;border: 0;\">\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-md-4\">\n                <em class=\"porto-icon-truck\" style=\"font-size:36px;color: #fff;\"></em><div class=\"text-area\"><h3 style=\"color: #fff;\">FREE SHIPPING & RETURN</h3><p>Free shipping on all orders over $99.</p></div>\n            </div>\n            <div class=\"col-md-4\" style=\"border-color: #149ce0;\">\n                <em class=\"porto-icon-dollar\" style=\"color: #fff;\"></em><div class=\"text-area\"><h3 style=\"color: #fff;\">MONEY BACK GUARANTEE</h3><p>100% money back guarantee.</p></div>\n            </div>\n            <div class=\"col-md-4\" style=\"border-color: #149ce0;\">\n                <em class=\"porto-icon-lifebuoy\" style=\"font-size:32px;color: #fff;\"></em><div class=\"text-area\"><h3 style=\"color: #fff;\">ONLINE SUPPORT 24/7</h3><p>Lorem ipsum dolor sit amet.</p></div>\n            </div>\n        </div>\n    </div>\n</div>\n<style type=\"text/css\">\n.footer-top > .container {\n    width: 100%;\n}\n.footer-top > .container > .row > .col-md-12 {\n    padding: 0;\n}\n</style>', '2016-12-02 19:11:37', '2016-12-02 19:11:37', 1),
(143, 'Porto - Custom Block for Category Page Side bar', 'porto_category_side_custom_block', '<h2 class=\"sidebar-title\">Featured</h2>\n<div class=\"sidebar-filterproducts custom-block\" style=\"padding-bottom: 20px;\">\n    <div id=\"featured_product\" class=\"owl-top-narrow\">\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"9\" aspect_ratio=\"1\" image_width=\"150\" template=\"side_list.phtml\"}}\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#featured_product .owl-carousel\").owlCarousel({\n                loop: false,\n                items: 1,\n                nav: true,\n                navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                dots: false\n            });\n        });\n    </script>\n</div>\n<h2 style=\"font-weight:600;font-size:16px;color:#000;line-height:1;margin-bottom:15px;\">Custom HTML Block</h2>\n<h5 style=\"font-family:Arial;font-weight:400;font-size:11px;color:#878787;line-height:1;margin-bottom:13px;\">This is a custom sub-title.</h5>\n<p style=\"font-weight:400;font-size:14px;color:#666;line-height:1.42;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi. Etiam non tellus </p>\n<div class=\"space\" style=\"margin-bottom: 45px;\"></div>', '2016-12-02 19:11:38', '2016-12-02 19:11:38', 1),
(144, 'Porto - Custom Block for Product Page Side bar', 'porto_product_side_custom_block', '<div class=\"custom-block custom-block-1\">\n    <div>\n        <em class=\"porto-icon-truck\"></em>\n        <h3>FREE SHIPPING</h3>\n        <p>Free shipping on all orders over $99.</p>\n    </div>\n    <div>\n        <em class=\"porto-icon-dollar\"></em>\n        <h3>MONEY BACK GUARANTEE</h3>\n        <p>100% money back guarantee.</p>\n    </div>\n    <div>\n        <em class=\"porto-icon-lifebuoy\"></em>\n        <h3>ONLINE SUPPORT 24/7</h3>\n        <p>Lorem ipsum dolor sit amet.</p>\n    </div>\n</div>\n\n<div class=\"custom-block\">\n    <div id=\"custom-owl-slider-product\" class=\"owl-carousel\">\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/product/ad1.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/product/ad2.jpg\"}}\" alt=\"\" />\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\'#custom-owl-slider-product.owl-carousel\').owlCarousel({\n                items:1,\n                lazyLoad:true\n            });         \n        });\n    </script>\n</div>', '2016-12-02 19:11:38', '2016-12-02 19:11:38', 1),
(145, 'Porto - Custom Menu(before)', 'porto_custom_menu_before', '<ul>\n    <li class=\"ui-menu-item level0\">\n        <a href=\"{{store url=\'\'}}\" class=\"level-top\"><span>Home</span></a>\n    </li>\n</ul>', '2016-12-02 19:11:38', '2016-12-02 19:11:38', 1),
(146, 'Porto - Custom Menu(after)', 'porto_custom_menu', '<ul>\n    <li class=\"ui-menu-item level0\">\n        <a href=\"#\" class=\"level-top\"><span>Features</span></a>\n    </li>\n</ul>', '2016-12-02 19:11:38', '2016-12-02 19:11:38', 1),
(147, 'Porto - Footer - About Porto', 'porto_footer_about_porto', '<div class=\"block\">\n    <div class=\"block-title\"><strong><span>ABOUT PORTO</span></strong></div>\n    <div class=\"block-content\">\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tristique augue eget enim feugiat blandit. Phasellus bibendum ex leo, at egestas lacus pellentesque in x leo, at egestas lacus pellentesque in. x leo, at egestas lacus pellentesque.</p>\n        <a href=\"http://themeforest.net/item/porto-ultimate-responsive-magento-theme/9725864\" style=\"font-weight:600;\">Buy Porto eCommerce</a>\n    </div>\n    <ul class=\"contact-info\" style=\"margin-top: 30px;\">\n        <li><em class=\"porto-icon-phone\" style=\"color: #bbb;\"></em><p><b>Need Help?</b><br>(123) 456-7890</p></li>\n    </ul>\n    <div style=\"margin: 20px 0 0 20px;\">\n        <ul class=\"social-icons\">\n            <li><a class=\"facebook-link\" href=\"#\"><em class=\"porto-icon-facebook\"></em></a></li>\n            <li><a class=\"twitter-link\" href=\"#\"><em class=\"porto-icon-twitter\"></em></a></li>\n            <li><a class=\"linkedin-link\" href=\"#\"><em class=\"porto-icon-linkedin-squared\"></em></a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:38', '2016-12-02 19:11:38', 1),
(148, 'Porto - Footer - Featured Products', 'porto_footer_featured_products', '<div class=\"block\">\n    <div class=\"block-title\"><strong><span>FEATURED PRODUCTS</span></strong></div>\n    <div class=\"block-content\">\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_small_list\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"212\" template=\"small_list.phtml\"}}\n    </div>\n</div>', '2016-12-02 19:11:38', '2016-12-02 19:11:38', 1),
(149, 'Porto - Footer Middle Twitter Widget', 'porto_footer_middle_twitter_widget', '<div class=\"block\">\n    <div class=\"block-title\"><strong><span>FOLLOW US</span></strong></div>\n    <div class=\"block-content\">\n        <a class=\"twitter-timeline\" href=\"//twitter.com/twitterdev\" data-widget-id=\"362597660089274368\" data-screen-name=\"eternalfriend38\" data-theme=\"dark\" height=\"285\">Tweets by @eternalfriend38</a>\n        <script>window.twttr=(function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],t=window.twttr||{};if(d.getElementById(id))return;js=d.createElement(s);js.id=id;js.src=\"//platform.twitter.com/widgets.js\";fjs.parentNode.insertBefore(js,fjs);t._e=[];t.ready=function(f){t._e.push(f);};return t;}(document,\"script\",\"twitter-wjs\"));</script>\n    </div>\n</div>', '2016-12-02 19:11:38', '2016-12-02 19:11:38', 1),
(150, 'Porto - Footer - 2nd Row - Shop', 'porto_footer_2nd_row_shop', '<div class=\"block\">\n    <div class=\"block-title\"><strong><span>SHOP</span></strong></div>\n    <div class=\"block-content\">\n        <ul class=\"links\">\n            <li><em class=\"porto-icon-right-open theme-color\"></em><a href=\"#\">Fashion Promo</a></li>\n            <li><em class=\"porto-icon-right-open theme-color\"></em><a href=\"#\">Discounts</a></li>\n            <li><em class=\"porto-icon-right-open theme-color\"></em><a href=\"#\">Outlet</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:39', '2016-12-02 19:11:39', 1),
(151, 'Porto - Footer - 2nd Row - Popular Tags', 'porto_footer_2nd_row_popular_tags', '<div class=\"block\">\n    <div class=\"block-title\"><strong><span>CUSTOM LINKS</span></strong></div>\n    <div class=\"block-content\">\n    <ul class=\"links\">\n            <li><em class=\"porto-icon-right-open theme-color\"></em><a href=\"#\">Advanced Search</a></li>\n            <li><em class=\"porto-icon-right-open theme-color\"></em><a href=\"#\">Promotions</a></li>\n            <li><em class=\"porto-icon-right-open theme-color\"></em><a href=\"#\">Terms and Conditions</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:39', '2016-12-02 19:11:39', 1),
(152, 'Porto - Footer - 2nd Row - My Account', 'porto_footer_2nd_row_myaccount', '<div class=\"block\">\n    <div class=\"block-title\"><strong><span>MY ACCOUNT</span></strong></div>\n    <div class=\"block-content\">\n        <ul class=\"links\">\n            <li><em class=\"porto-icon-right-open theme-color\"></em><a href=\"{{store url=\"\"}}customer/account\" title=\"My Account\">My Account</a></li>\n            <li><em class=\"porto-icon-right-open theme-color\"></em><a href=\"{{store url=\"\"}}about-porto\" title=\"About us\">About Us</a></li>\n            <li><em class=\"porto-icon-right-open theme-color\"></em><a href=\"{{store url=\"\"}}contacts\" title=\"Contact us\">Store Locations</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:39', '2016-12-02 19:11:39', 1),
(153, 'Porto - Footer - 2nd Row - Contact Information', 'porto_footer_2nd_row_contact_information', '<div class=\"block\">\n    <div class=\"block-title\"><strong><span>CONTACT INFORMATION</span></strong></div>\n    <div class=\"block-content\">\n        <ul class=\"contact-info\" style=\"padding-left: 5px;\">\n            <li><em class=\"porto-icon-location theme-color\">&nbsp;</em>&nbsp;&nbsp;<p>123 Street Name, City, England</p></li>\n            <li><em class=\"porto-icon-phone theme-color\">&nbsp;</em>&nbsp;&nbsp;<p>(123)456-7890</p></li>\n            <li><em class=\"porto-icon-mail theme-color\">&nbsp;</em>&nbsp;&nbsp;<p><a href=\"mailto:mail@example.com\">mail@example.com</a></p></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:40', '2016-12-02 19:11:40', 1),
(154, 'Porto - Custom Block for Footer Bottom Area for Home 8', 'porto_footer_bottom_custom_block_home8', '<img src=\"{{media url=\"wysiwyg/smartwave/porto/footer/payments.png\"}}\" alt=\"\" style=\"margin-left: 15px;\" />', '2016-12-02 19:11:40', '2016-12-02 19:11:40', 1),
(155, 'Porto - Footer Top Custom Block for Home 11', 'porto_footer_top_custom_block_home11', '<div class=\"homepage-bar\">\n    <div class=\"row\">\n        <div class=\"col-md-3 col-sm-6\">\n            <em class=\"porto-icon-truck\" style=\"color: #fff;\"></em>\n            <div class=\"text-area\"><h3 style=\"color: #fff;\">FREE SHIPPING</h3><p>Free shipping on all orders over $99.</p></div>\n        </div>\n        <div class=\"col-md-3 col-sm-6\">\n            <em class=\"porto-icon-dollar\" style=\"color: #fff;\"></em>\n            <div class=\"text-area\"><h3 style=\"color: #fff;\">MONEY BACK GUARANTEE</h3><p>100% money back guarantee</p></div>\n        </div>\n        <div class=\"col-md-3 col-sm-6 sm-bd-0\">\n            <em class=\"porto-icon-lifebuoy\" style=\"color: #fff;\"></em>\n            <div class=\"text-area\"><h3 style=\"color: #fff;\">ONLINE SUPPORT 24/7</h3><p>Lorem ipsum dolor sit amet.</p></div>\n        </div>\n        <div class=\"col-md-3 col-sm-6\">\n            <em class=\"porto-icon-chat\" style=\"color: #fff;\"></em>\n            <div class=\"text-area\"><h3 style=\"color: #fff;\">LIVE CHAT</h3><p>Lorem ipsum dolor sit amet.</p></div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:40', '2016-12-02 19:11:40', 1),
(156, 'Porto - Category Banner(Fashion)', 'porto_category_banner_fashion', '<div id=\"fashion-category-banner\" class=\"owl-carousel owl-banner-carousel category-boxed-banner owl-bottom-narrow\">\n    <div class=\"item\">\n        <img src=\"{{media url=\"wysiwyg/smartwave/porto/category/fashion/02-01.png\"}}\" alt=\"\" />\n        <div class=\"banner-text\" style=\"top:37%;\">\n            <h2 style=\"background-color:transparent;color:#2b2b2b;margin:0;\">CATEGORY <b>BANNER</b></h2><br>\n            <p style=\"max-width: 280px;background-color:transparent;color:#2b2b2b;font-weight:400;\">Set banners and description for any category of your website.</p>\n        </div>\n    </div>\n    <div class=\"item\">\n        <img src=\"{{media url=\"wysiwyg/smartwave/porto/category/fashion/02-02.png\"}}\" alt=\"\" />\n        <div class=\"banner-text\" style=\"top:45%;\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/category/fashion/02-02-01.png\"}}\" alt=\"\" style=\"vertical-align:middle;width:auto;max-width:50%;display:inline-block;\">\n            <a href=\"#\" class=\"shop-now\" style=\"color:#2b2b2b;vertical-align:middle;\">Shop now &gt;</a>\n        </div>\n    </div>\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\',\n        \'owl.carousel/owl.carousel.min\'\n    ], function ($) {\n        $(\"#fashion-category-banner\").owlCarousel({\n            items: 1,\n            autoplay: false,\n            autoplayTimeout: 5000,\n            autoplayHoverPause: true,\n            dots: true,\n            nav: false,\n            navRewind: true,\n            animateIn: \'fadeIn\',\n            animateOut: \'fadeOut\',\n            loop: true\n        });\n    });\n</script>', '2016-12-02 19:11:40', '2016-12-02 19:11:40', 1),
(157, 'Porto - Custom Tab', 'porto_custom_tab', '<table class=\"table table-sizing-guide\">\n    <thead>\n        <tr>\n            <th colspan=\"6\"><b>Clothing - Single Size Conversion (Continued)</b></th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <td>UK</td>\n            <td>18</td>\n            <td>20</td>\n            <td>22</td>\n            <td>24</td>\n            <td>26</td>\n        </tr>\n        <tr>\n            <td>European</td>\n            <td>46</td>\n            <td>48</td>\n            <td>50</td>\n            <td>52</td>\n            <td>54</td>\n        </tr>\n        <tr>\n            <td>US</td>\n            <td>14</td>\n            <td>16</td>\n            <td>18</td>\n            <td>20</td>\n            <td>22</td>\n        </tr>\n        <tr>\n            <td>Australia</td>\n            <td>8</td>\n            <td>10</td>\n            <td>12</td>\n            <td>14</td>\n            <td>16</td>\n        </tr>\n    </tbody>\n</table>', '2016-12-02 19:11:40', '2016-12-02 19:11:40', 1),
(158, 'Porto - Custom Header Block for Type 8', 'porto_custom_block_type_8', '<a href=\"#\">FASHION PROMO</a>\n<a href=\"#\">WOMAN SHOES</a>\n<a href=\"#\">50% OFF FASHION</a>', '2016-12-02 19:11:41', '2016-12-02 19:11:41', 1),
(159, 'Porto - Footer Middle Logo Block for Home12', 'porto_footer_middle_logo_block_for_12', '<div class=\"block\">\n    <div class=\"block-title\"><strong><span>Who We Are</span></strong></div>\n    <div class=\"block-content\">\n        <img src=\"{{media url=\"wysiwyg/smartwave/porto/footer/footer_logo_red.png\"}}\" alt=\"\" />\n        <p style=\"margin: 20px 0 0;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br/><br/>\n        <span style=\"font-weight: 600;\"><a href=\"http://themeforest.net/item/porto-ecommerce-ultimate-magento-theme/9725864?ref=SW-THEMES&amp;license=regular&amp;open_purchase_for_item_id=9725864&amp;purchasable=source\">Buy Porto eCommerce</a></span></p>\n    </div>\n</div>', '2016-12-02 19:11:41', '2016-12-02 19:11:41', 1),
(160, 'Porto - Footer Middle Logo Block for Home15', 'porto_footer_middle_logo_block_for_15', '<div class=\"block\">\n    <div class=\"block-title\"><strong><span>Who We Are</span></strong></div>\n    <div class=\"block-content\">\n        <img src=\"{{media url=\"wysiwyg/smartwave/porto/footer/footer_logo_black.png\"}}\" alt=\"\" />\n        <p style=\"margin: 20px 0 0;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br/><br/>\n        <span style=\"font-weight: 600;\"><a href=\"http://themeforest.net/item/porto-ecommerce-ultimate-magento-theme/9725864?ref=SW-THEMES&amp;license=regular&amp;open_purchase_for_item_id=9725864&amp;purchasable=source\">Buy Porto eCommerce</a></span></p>\n    </div>\n</div>', '2016-12-02 19:11:41', '2016-12-02 19:11:41', 1),
(161, 'Porto - Custom Notice Block', 'porto_custom_notice', '<div class=\"top-newsletter\" style=\"background-color: #2b262f; padding: 10px 0;text-align:left\">\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-sm-6 a-left-sm\">\n                <span style=\"color: #fff; font-size: 16px; font-family: Georgia; line-height: 30px;\"><b>SALE:</b> use coupon code <b>PORTO</b> to save 30%</span>\n            </div>\n            <div class=\"col-sm-6 a-right-sm\">\n                <div style=\"display: inline-block; vertical-align: middle; padding-right: 20px;\">\n                    <p style=\"margin: 0; color: #fff; font-family: Georgia; font-size: 15px; font-weight: 700; line-height: 15px;\">Be the First to Know</p>\n                    <p style=\"margin: 0; font-size: 12px; color: #a7a7a7; line-height: 15px;\">Sign up for newsletter today.</p>\n                </div>\n                <div style=\"display: inline-block; vertical-align: middle; position: relative;\">\n                    {{block class=\"Magento\\Newsletter\\Block\\Subscribe\" name=\"subscribe_form\" template=\"subscribe_form.phtml\"}}\n                </div>\n            </div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:41', '2016-12-02 19:11:41', 1),
(162, 'Porto - Custom Block for Header Type 10', 'porto_custom_block_for_header_type_10', '<div style=\"font-size:15px;color:#fff;line-height:1.4;margin-bottom:15px;\">\n<em class=\"porto-icon-phone\" style=\"margin-right: 5px;\"></em><span>(+404) 158 14 25 78</span>\n</div>\n<ul class=\"social-icons\">\n    <li><a class=\"facebook-link\" href=\"#\"><em class=\"porto-icon-facebook\"></em></a></li>\n    <li><a class=\"twitter-link\" href=\"#\"><em class=\"porto-icon-twitter\"></em></a></li>\n    <li><a class=\"linkedin-link\" href=\"#\"><em class=\"porto-icon-linkedin-squared\"></em></a></li>\n</ul>\n<address>©Copyright 2016 by SW-THEMES.</address>', '2016-12-02 19:11:41', '2016-12-02 19:11:41', 1),
(163, 'Porto - Homepage Slider 19', 'porto_homeslider_19', '<div class=\"full-screen-slider\">\n    <div id=\"banner-slider-demo-19\" class=\"owl-carousel owl-bottom-narrow owl-banner-carousel\">\n        <div class=\"item\">\n            <div style=\"width:100%;height:100%;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/19/slider/slide1.jpg\"}}) 80% center no-repeat; background-size:cover;\"></div>\n            <div class=\"slide-content\" style=\"position: absolute; z-index: 5; left: 10.5%; top: 35%; text-align: left;\">\n                <h2 style=\"color: #000;\">WINTER SALE<br/>70% OFF</h2>\n                <p style=\"color: #000;\">Shop new styles added to sale online.</p>\n                <a class=\"btn-line\" href=\"#\">SHOP NOW</a>\n            </div>\n        </div>\n        <div class=\"item\">\n            <div style=\"width:100%;height:100%;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/19/slider/slide2.jpg\"}}) 80% center no-repeat; background-size:cover;\"></div>\n            <div class=\"slide-content\" style=\"position: absolute; z-index: 5; left: 10.5%; top: 35%; text-align: left;\">\n                <h2 style=\"color: #000;\">NEW SUMMER<br/>COLLECTION</h2>\n                <p style=\"color: #000;\">New styles added to summer collection.</p>\n                <a class=\"btn-line\" href=\"#\">SHOP NOW</a>\n            </div>\n        </div>\n        <div class=\"item\">\n            <div style=\"width:100%;height:100%;background:url({{media url=\"wysiwyg/smartwave/porto/homepage/19/slider/slide3.jpg\"}}) 80% center no-repeat; background-size:cover;\"></div>\n            <div class=\"slide-content\" style=\"position: absolute; z-index: 5; left: 10.5%; top: 35%; text-align: left;\">\n                <h2 style=\"color: #000;\">CONVERSE<br/>30% OFF</h2>\n                <p style=\"color: #000;\">Outlet converse 30% off for you.</p>\n                <a class=\"btn-line\" href=\"#\">SHOP NOW</a>\n            </div>\n        </div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            var owl_3 = $(\"#banner-slider-demo-19\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                dots: true,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                nav: false,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n        });\n    </script>\n</div>\n<style type=\"text/css\">\n#banner-slider-demo-19 .owl-controls {\n    text-align: left;\n    padding-left: 10%;\n    bottom: 8%;\n}\n#banner-slider-demo-19 .owl-dots .owl-dot span {\n    width: 12px;\n    height: 12px;\n    border-width: 2px;\n}\n</style>', '2016-12-02 19:11:42', '2016-12-02 19:11:42', 1),
(164, 'Porto - Custom Block for Header Type12', 'porto_custom_block_for_header_type12', '<a href=\"https://www.facebook.com/\" title=\"Facebook\" target=\"_blank\"><em class=\"porto-icon-facebook\"></em></a>\n<a href=\"https://twitter.com/\" title=\"Twitter\" target=\"_blank\"><em class=\"porto-icon-twitter\"></em></a>\n<a href=\"https://www.instagram.com/\" title=\"Instagram\" target=\"_blank\"><em class=\"porto-icon-instagram\"></em></a>', '2016-12-02 19:11:42', '2016-12-02 19:11:42', 1),
(165, 'Porto - Footer Middle - 1st Column for Demo19', 'porto_footer_middle_1_for_19', '<img src=\"{{media url=\"wysiwyg/smartwave/porto/footer/logo_white_plus.png\"}}\" alt=\"\" />', '2016-12-02 19:11:42', '2016-12-02 19:11:42', 1),
(166, 'Porto - Footer Middle - 2nd Column for Demo19', 'porto_footer_middle_2_for_19', '<div class=\"block\">\n    <div class=\"block-title\"><strong>SHOP</strong></div>\n    <div class=\"block-content\">\n        <ul class=\"links\">\n            <li><a href=\"#\" title=\"Fashion & Clothes\">Fashion & Clothes</a></li>\n            <li><a href=\"#\" title=\"Electronics & Computers\">Electronics & Computers</a></li>\n            <li><a href=\"#\" title=\"Toys & Hobbies\">Toys & Hobbies</a></li>\n            <li><a href=\"#\" title=\"Home & Garden\">Home & Garden</a></li>\n            <li><a href=\"#\" title=\"Decor & Furniture\">Decor & Furniture</a></li>\n            <li><a href=\"#\" title=\"Sports & Fitness\">Sports & Fitness</a></li>\n            <li><a href=\"#\" title=\"Gifts\">Gifts</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:42', '2016-12-02 19:11:42', 1),
(167, 'Porto - Footer Middle - 3rd Column for Demo19', 'porto_footer_middle_3_for_19', '<div class=\"block\">\n    <div class=\"block-title\"><strong>MENU</strong></div>\n    <div class=\"block-content\">\n        <ul class=\"links\">\n            <li><a href=\"#\" title=\"My Account\">My Account</a></li>\n            <li><a href=\"#\" title=\"Daily Deal\">Daily Deal</a></li>\n            <li><a href=\"#\" title=\"My Wishlist\">My Wishlist</a></li>\n            <li><a href=\"#\" title=\"Blog\">Blog</a></li>\n            <li><a href=\"#\" title=\"Login\">Login</a></li>\n            <li><a href=\"#\" title=\"About Us\">About Us</a></li>\n            <li><a href=\"#\" title=\"Contact\">Contact</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:42', '2016-12-02 19:11:42', 1),
(168, 'Porto - Footer Middle - 4th Column for Demo19', 'porto_footer_middle_4_for_19', '<div class=\"block\" style=\"margin-bottom:50px;\">\n    <div class=\"block-title\"><strong>FOLLOW US</strong></div>\n    <div class=\"block-content\">\n        <a href=\"https://www.facebook.com/\" title=\"Facebook\" target=\"_blank\" style=\"font-size: 22px;margin: 0 10px;margin-left: -10px;\"><i class=\"porto-icon-facebook\"></i></a>\n        <a href=\"https://twitter.com/\" title=\"Twitter\" target=\"_blank\" style=\"font-size: 22px;margin: 0 10px;\"><i class=\"porto-icon-twitter\"></i></a>\n        <a href=\"https://www.instagram.com/\" title=\"Instagram\" target=\"_blank\" style=\"font-size: 22px;margin: 0 10px;\"><i class=\"porto-icon-instagram\"></i></a>\n    </div>\n</div>\n<div class=\"block\">\n    <div class=\"block-title\"><strong>NEWSLETTER</strong></div>\n    <div class=\"block-content\">\n        {{block class=\"Magento\\Newsletter\\Block\\Subscribe\" name=\"subscribe_form\" template=\"subscribe_form.phtml\"}}\n    </div>\n</div>', '2016-12-02 19:11:42', '2016-12-02 19:11:42', 1);
INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(169, 'Porto - Homepage Slider 20', 'porto_homeslider_20', '<div class=\"full-screen-slider\">\n    <div id=\"banner-slider-demo-20\" class=\"owl-carousel owl-banner-carousel\" data-slider-id=\"1\">\n        <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/01.jpg\"}}) center center / cover no-repeat; position: relative;\">\n            <div class=\"content\" style=\"left:20%;top:30%;width:auto;\">\n                <h2 style=\"color: #fff;\">Running<br>shoes</h2>\n                <a href=\"#\">SEE MORE</a>\n            </div>\n            <ul class=\"scene\" style=\"width:100%;height:100%:\">\n                <li class=\"layer\" data-depth=\"0.05\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/green_shoes.png\"}}\" alt=\"\" />\n                </li>\n                <li class=\"layer\" data-depth=\"0.06\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/blurflake1.png\"}}\" style=\"position:absolute;top:40%;left:35%\" alt=\"\" />\n                </li>\n                <li class=\"layer\" data-depth=\"0.07\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/blurflake2.png\"}}\" class=\"animation-spin\" style=\"position:absolute;top:20%;left:50%\" alt=\"\" />\n                </li>\n                <li class=\"layer\" data-depth=\"0.10\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/blurflake3.png\"}}\" class=\"animation-wave\" style=\"position:absolute;top:50%;left:80%\" alt=\"\" />\n                </li>\n                <li class=\"layer\" data-depth=\"0.15\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/blurflake4.png\"}}\" style=\"position:absolute;top:70%;left:55%\" alt=\"\" />\n                </li>\n            </ul>\n        </div>\n        <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/02.jpg\"}}) center center / cover no-repeat; position: relative;\">\n            <ul class=\"scene\" style=\"width:100%;height:100%:\">\n                <li class=\"layer\" data-depth=\"0.05\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/watch.png\"}}\" alt=\"\" />\n                </li>\n            </ul>\n            <div class=\"content\" style=\"left:20%;top:30%;width:auto;\">\n                <h2 style=\"color: #fff;\">Running smart<br>watch</h2>\n                <a href=\"#\">SEE MORE</a>\n            </div>\n        </div>\n        <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/03.jpg\"}}) center center / cover no-repeat; position: relative;\">\n            <ul class=\"scene\" style=\"width:100%;height:100%:\">\n                <li class=\"layer\" data-depth=\"0.05\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/ball.png\"}}\" alt=\"\" />\n                </li>\n            </ul>\n            <div class=\"content\" style=\"left:20%;top:30%;width:auto;\">\n                <h2 style=\"color: #fff;\">Football<br>accessories</h2>\n                <a href=\"#\">SEE MORE</a>\n            </div>\n        </div>\n    </div>\n    <div class=\"owl-thumbs\" data-slider-id=\"1\">\n        <button class=\"owl-thumb-item\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/01_thumb.jpg\"}}\"/></button>\n        <button class=\"owl-thumb-item\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/02_thumb.jpg\"}}\"/></button>\n        <button class=\"owl-thumb-item\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/slider/03_thumb.jpg\"}}\"/></button>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel\'\n        ], function ($) {\n            var owl_20 = $(\"#banner-slider-demo-20\").owlCarousel({\n                items: 1,\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                dots: false,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                thumbs: true,\n                thumbImage: false,\n                thumbsPrerendered: true,\n                thumbContainerClass: \'owl-thumbs\',\n                thumbItemClass: \'owl-thumb-item\',\n                loop: true,\n                nav: false,\n                navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n            });\n        });\n        require([\n            \'jquery\',\n            \'js/jquery.parallax.min\'\n        ], function ($) {\n            $(document).ready(function(){\n                $(\'.scene\').parallax();\n            });\n        });\n    </script>\n</div>', '2016-12-02 19:11:43', '2016-12-02 19:11:43', 1),
(170, 'Porto - Footer Middle - 1st Column for Demo20', 'porto_footer_middle_1_for_20', '<div class=\"row\">\n    <div class=\"col-md-6\">\n        <div class=\"block\">\n            <div class=\"block-content\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/footer/logo_white_plus.png\"}}\" alt=\"\" />\n            </div>\n        </div>\n    </div>\n    <div class=\"col-md-6\">\n        <div class=\"block\">\n            <div class=\"block-title\"><strong>Features</strong></div>\n            <div class=\"block-content\">\n                <ul class=\"links\">\n                    <li><a href=\"#\" title=\"Men\">MEN</a></li>\n                    <li><a href=\"#\" title=\"Women\">WOMEN</a></li>\n                    <li><a href=\"#\" title=\"Boys\">BOYS</a></li>\n                    <li><a href=\"#\" title=\"Girls\">GIRLS</a></li>\n                    <li><a href=\"#\" title=\"New Arrivals\">NEW ARRIVALS</a></li>\n                    <li><a href=\"#\" title=\"Shoes\">SHOES</a></li>\n                    <li><a href=\"#\" title=\"Clothes\">CLOTHES</a></li>\n                    <li><a href=\"#\" title=\"Accessories\">ACCESSORIES</a></li>\n                </ul>\n            </div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:43', '2016-12-02 19:11:43', 1),
(171, 'Porto - Footer Middle - 2nd Column for Demo20', 'porto_footer_middle_2_for_20', '<div class=\"block\">\n    <div class=\"block-title\"><strong>Menu</strong></div>\n    <div class=\"block-content\">\n        <ul class=\"links\">\n            <li><a href=\"#\" title=\"About Us\">ABOUT US</a></li>\n            <li><a href=\"#\" title=\"Contact Us\">CONTACT US</a></li>\n            <li><a href=\"#\" title=\"My Account\">MY ACCOUNT</a></li>\n            <li><a href=\"#\" title=\"Blog\">ORDERS HISTORY</a></li>\n            <li><a href=\"#\" title=\"My Wishlist\">MY WISHLIST</a></li>\n            <li><a href=\"#\" title=\"Blog\">BLOG</a></li>\n            <li><a href=\"#\" title=\"Login\">LOGIN</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:43', '2016-12-02 19:11:43', 1),
(172, 'Porto - Footer Middle - 3rd Column for Demo20', 'porto_footer_middle_3_for_20', '<div class=\"block\">\n    <div class=\"block-title\"><strong>Contact us</strong></div>\n    <div class=\"block-content\">\n        <ul class=\"contact-info\">\n            <li><p><b style=\"color:#fff;\">ADDRESS:</b><br/>123 STREET NAME, CITY, ENGLAND</p></li>\n            <li><p><b style=\"color:#fff;\">PHONE:</b><br/>(123) 456-7890</p></li>\n            <li><p><b style=\"color:#fff;\">EMAIL:</b><br/><a href=\"mailto:mail@example.com\">MAIL@EXAMPLE.COM</a></p></li>\n            <li><p><b style=\"color:#fff;\">WORKING DAYS/HOURS:</b><br/>MON - SUN / 9:00AM - 8:00PM<br/><span style=\"color: #0f0;\">OPEN NOW</span></p></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:43', '2016-12-02 19:11:43', 1),
(173, 'Porto - Footer Middle - 4th Column for Demo20', 'porto_footer_middle_4_for_20', '<div class=\"row\">\n    <div class=\"col-md-6\">\n        <div class=\"block\" style=\"margin-bottom:50px;\">\n            <div class=\"block-title\"><strong>Follow us</strong></div>\n            <div class=\"block-content\">\n                <p><a href=\"https://www.facebook.com/\" title=\"Facebook\" target=\"_blank\" style=\"font-size: 22px;\"><i class=\"porto-icon-facebook\" style=\"color:#fff;vertical-align:middle;\"></i><span style=\"font-size: 13px;vertical-align:middle;margin-left:5px;\">FACEBOOK</span></a></p>\n                <p><a href=\"https://twitter.com/\" title=\"Twitter\" target=\"_blank\" style=\"font-size: 22px;\"><i class=\"porto-icon-twitter\" style=\"color:#fff;vertical-align:middle;\"></i><span style=\"font-size: 13px;vertical-align:middle;margin-left:5px;\">TWITTER</span></a></p>\n                <p><a href=\"https://www.instagram.com/\" title=\"Instagram\" target=\"_blank\" style=\"font-size: 22px;\"><i class=\"porto-icon-instagram\" style=\"color:#fff;vertical-align:middle;\"></i><span style=\"font-size: 13px;vertical-align:middle;margin-left:5px;\">INSTAGRAM</span></a></p>\n            </div>\n        </div>\n    </div>\n    <div class=\"col-md-6\">\n        <div class=\"block\">\n            <div class=\"block-title\"><strong>Join us</strong></div>\n            <div class=\"block-content\">\n                <p>JOIN THE WORLD<br/>OF PORTO ECOMMERCE</p>\n                {{block class=\"Magento\\Newsletter\\Block\\Subscribe\" name=\"subscribe_form\" template=\"subscribe_form.phtml\"}}\n            </div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:43', '2016-12-02 19:11:43', 1),
(174, 'Porto - Custom Block for Product Page Main Area', 'porto_product_main_custom_block', '<img src=\"{{media url=\"wysiwyg/smartwave/porto/product/custom_image.jpg\"}}\" alt=\"\" style=\"max-width: 100%; float: right;\" />', '2016-12-02 19:11:43', '2016-12-02 19:11:43', 1),
(175, 'Porto - Footer Middle - 1st Column for Demo3', 'porto_footer_middle_1_for_3', '<div class=\"block\">\n    <div class=\"block-title\"><strong>MENU</strong></div>\n    <div class=\"block-content\">\n        <ul class=\"links\">\n            <li><a href=\"{{store url=\"\"}}about-porto-2\" title=\"About Us\">About Us</a></li>\n            <li><a href=\"{{store url=\"\"}}customer/account\" title=\"My Account\">My Account</a></li>\n            <li><a href=\"{{store url=\"\"}}sales/order/history\" title=\"Orders History\">Orders History</a></li>\n            <li><a href=\"{{store url=\"\"}}catalogsearch/advanced\" title=\"Advanced Search\">Advanced Search</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:44', '2016-12-02 19:11:44', 1),
(176, 'Porto - Footer Middle - 2nd Column for Demo3', 'porto_footer_middle_2_for_3', '<div class=\"block\">\n    <div class=\"block-title\"><strong>FEATURES</strong></div>\n    <div class=\"block-content\">\n        <ul class=\"links\">\n            <li><a href=\"#\" title=\"Page 1 - Lorem ipsum dolor\">Page 1 - Lorem ipsum dolor</a></li>\n            <li><a href=\"#\" title=\"Page 2 - Consectetur\">Page 2 - Consectetur</a></li>\n            <li><a href=\"#\" title=\"Page 3 - Adipiscing elit\">Page 3 - Adipiscing elit</a></li>\n            <li><a href=\"#\" title=\"Page 4 - Integer iaculis nisl\">Page 4 - Integer iaculis nisl</a></li>\n            <li><a href=\"#\" title=\"Page 5 - Pretium Ligula ornare\">Page 5 - Pretium Ligula ornare</a></li>\n            <li><a href=\"#\" title=\"Page 6 - Pellentesque\">Page 6 - Pellentesque</a></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:44', '2016-12-02 19:11:44', 1),
(177, 'Porto - Footer Middle - 3rd Column for Demo3', 'porto_footer_middle_3_for_3', '<div class=\"block\">\n    <div class=\"block-title\"><strong>CONTACT US</strong></div>\n    <div class=\"block-content\">\n        <ul class=\"contact-info\">\n            <li><p>Address:<br/>123 Street Name, City,<br/>United States</p></li>\n            <li><p>Phone:<br/>(123) 456-7890</p></li>\n            <li><p>Email:<br/>mail@example.com</p></li>\n            <li><p>Working Days/Hours:<br/>Mon - Sun / 9:00AM - 8:00PM<br/><span style=\"color: #0f0;\">Open now</span></p></li>\n        </ul>\n    </div>\n</div>', '2016-12-02 19:11:44', '2016-12-02 19:11:44', 1),
(178, 'Porto - Footer Middle - 4th Column for Demo3', 'porto_footer_middle_4_for_3', '<div class=\"row\">\n    <div class=\"col-md-6\">\n        <div class=\"block\" style=\"margin-bottom:50px;\">\n            <div class=\"block-title\"><strong>FOLLOW US</strong></div>\n            <div class=\"block-content\">\n                <p><a href=\"https://www.facebook.com/\" title=\"Facebook\" target=\"_blank\" style=\"font-size: 22px;\"><i class=\"porto-icon-facebook\" style=\"color:#fff;vertical-align:middle;\"></i><span style=\"font-size: 13px;vertical-align:middle;margin-left:5px;\">FACEBOOK</span></a></p>\n                <p><a href=\"https://twitter.com/\" title=\"Twitter\" target=\"_blank\" style=\"font-size: 22px;\"><i class=\"porto-icon-twitter\" style=\"color:#fff;vertical-align:middle;\"></i><span style=\"font-size: 13px;vertical-align:middle;margin-left:5px;\">TWITTER</span></a></p>\n                <p><a href=\"https://www.instagram.com/\" title=\"Instagram\" target=\"_blank\" style=\"font-size: 22px;\"><i class=\"porto-icon-instagram\" style=\"color:#fff;vertical-align:middle;\"></i><span style=\"font-size: 13px;vertical-align:middle;margin-left:5px;\">INSTAGRAM</span></a></p>\n            </div>\n        </div>\n    </div>\n    <div class=\"col-md-6\">\n        <div class=\"block\">\n            <div class=\"block-title\"><strong>JOIN US</strong></div>\n            <div class=\"block-content\">\n                <p style=\"margin-bottom: 20px;\">Get all the latest information on Events,<br>Sales and Offers. Sign up for newsletter today.</p>\n                {{block class=\"Magento\\Newsletter\\Block\\Subscribe\" name=\"subscribe_form\" template=\"subscribe_form.phtml\"}}\n            </div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:44', '2016-12-02 19:11:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_block_store`
--

CREATE TABLE `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `cms_block_store`
--

INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page`
--

CREATE TABLE `cms_page` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Page Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Meta Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

--
-- Dumping data for table `cms_page`
--

INSERT INTO `cms_page` (`page_id`, `title`, `page_layout`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`, `meta_title`) VALUES
(1, '404 Not Found', '2columns-right', 'Page keywords', 'Page description', 'no-route', 'Whoops, our bad...', '<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class=\"disc\">\r\n<li><a href=\"#\" onclick=\"history.go(-1); return false;\">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href=\"{{store url=\"\"}}\">Store Home</a> <span class=\"separator\">|</span> <a href=\"{{store url=\"customer/account\"}}\">My Account</a></li></ul></dd></dl>\r\n', '2016-08-26 06:46:08', '2016-08-26 06:46:08', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', '1column', NULL, NULL, 'home', 'Home Page', '<p>CMS homepage content goes here.</p>\r\n', '2016-08-26 06:46:09', '2016-08-26 06:47:05', 1, 0, '<!--\n    <referenceContainer name=\"right\">\n        <action method=\"unsetChild\"><argument name=\"alias\" xsi:type=\"string\">right.reports.product.viewed</argument></action>\n        <action method=\"unsetChild\"><argument name=\"alias\" xsi:type=\"string\">right.reports.product.compared</argument></action>\n    </referenceContainer>-->', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Enable Cookies', '1column', NULL, NULL, 'enable-cookies', 'What are Cookies?', '<div class=\"enable-cookies cms-content\">\r\n<p>\"Cookies\" are little pieces of data we send when you visit our store. Cookies help us get to know you better and personalize your experience. Plus they help protect you and other shoppers from fraud.</p>\r\n<p style=\"margin-bottom: 20px;\">Set your browser to accept cookies so you can buy items, save items, and receive customized recommendations. Here’s how:</p>\r\n<ul>\r\n<li><a href=\"https://support.google.com/accounts/answer/61416?hl=en\" target=\"_blank\">Google Chrome</a></li>\r\n<li><a href=\"http://windows.microsoft.com/en-us/internet-explorer/delete-manage-cookies\" target=\"_blank\">Internet Explorer</a></li>\r\n<li><a href=\"http://support.apple.com/kb/PH19214\" target=\"_blank\">Safari</a></li>\r\n<li><a href=\"https://support.mozilla.org/en-US/kb/enable-and-disable-cookies-website-preferences\" target=\"_blank\">Mozilla/Firefox</a></li>\r\n</ul>\r\n</div>', '2016-08-26 06:46:09', '2016-08-26 06:46:09', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Privacy and Cookie Policy', '1column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy and Cookie Policy', '<div class=\"privacy-policy cms-content\">\n    <div class=\"message info\">\n        <span>\n            Please replace this text with you Privacy Policy.\n            Please add any additional cookies your website uses below (e.g. Google Analytics).\n        </span>\n    </div>\n    <p>\n        This privacy policy sets out how this website (hereafter \"the Store\") uses and protects any information that\n        you give the Store while using this website. The Store is committed to ensuring that your privacy is protected.\n        Should we ask you to provide certain information by which you can be identified when using this website, then\n        you can be assured that it will only be used in accordance with this privacy statement. The Store may change\n        this policy from time to time by updating this page. You should check this page from time to time to ensure\n        that you are happy with any changes.\n    </p>\n    <h2>What we collect</h2>\n    <p>We may collect the following information:</p>\n    <ul>\n        <li>name</li>\n        <li>contact information including email address</li>\n        <li>demographic information such as postcode, preferences and interests</li>\n        <li>other information relevant to customer surveys and/or offers</li>\n    </ul>\n    <p>\n        For the exhaustive list of cookies we collect see the <a href=\"#list\">List of cookies we collect</a> section.\n    </p>\n    <h2>What we do with the information we gather</h2>\n    <p>\n        We require this information to understand your needs and provide you with a better service,\n        and in particular for the following reasons:\n    </p>\n    <ul>\n        <li>Internal record keeping.</li>\n        <li>We may use the information to improve our products and services.</li>\n        <li>\n            We may periodically send promotional emails about new products, special offers or other information which we\n            think you may find interesting using the email address which you have provided.\n        </li>\n        <li>\n            From time to time, we may also use your information to contact you for market research purposes.\n            We may contact you by email, phone, fax or mail. We may use the information to customise the website\n            according to your interests.\n        </li>\n    </ul>\n    <h2>Security</h2>\n    <p>\n        We are committed to ensuring that your information is secure. In order to prevent unauthorised access or\n        disclosure, we have put in place suitable physical, electronic and managerial procedures to safeguard and\n        secure the information we collect online.\n    </p>\n    <h2>How we use cookies</h2>\n    <p>\n        A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n        Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n        a particular site. Cookies allow web applications to respond to you as an individual. The web application\n        can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n        your preferences.\n    </p>\n    <p>\n        We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page\n        traffic and improve our website in order to tailor it to customer needs. We only use this information for\n        statistical analysis purposes and then the data is removed from the system.\n    </p>\n    <p>\n        Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find\n        useful and which you do not. A cookie in no way gives us access to your computer or any information about you,\n        other than the data you choose to share with us. You can choose to accept or decline cookies.\n        Most web browsers automatically accept cookies, but you can usually modify your browser setting\n        to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n    </p>\n    <h2>Links to other websites</h2>\n    <p>\n        Our website may contain links to other websites of interest. However, once you have used these links\n        to leave our site, you should note that we do not have any control over that other website.\n        Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n        visiting such sites and such sites are not governed by this privacy statement.\n        You should exercise caution and look at the privacy statement applicable to the website in question.\n    </p>\n    <h2>Controlling your personal information</h2>\n    <p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n    <ul>\n        <li>\n            whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n            that you do not want the information to be used by anybody for direct marketing purposes\n        </li>\n        <li>\n            if you have previously agreed to us using your personal information for direct marketing purposes,\n            you may change your mind at any time by letting us know using our Contact Us information\n        </li>\n    </ul>\n    <p>\n        We will not sell, distribute or lease your personal information to third parties unless we have your permission\n        or are required by law to do so. We may use your personal information to send you promotional information\n        about third parties which we think you may find interesting if you tell us that you wish this to happen.\n    </p>\n    <p>\n        You may request details of personal information which we hold about you under the Data Protection Act 1998.\n        A small fee will be payable. If you would like a copy of the information held on you please email us this\n        request using our Contact Us information.\n    </p>\n    <p>\n        If you believe that any information we are holding on you is incorrect or incomplete,\n        please write to or email us as soon as possible, at the above address.\n        We will promptly correct any information found to be incorrect.\n    </p>\n    <h2><a name=\"list\"></a>List of cookies we collect</h2>\n    <p>The table below lists the cookies we collect and what information they store.</p>\n    <table class=\"data-table data-table-definition-list\">\n        <thead>\n        <tr>\n            <th>Cookie Name</th>\n            <th>Cookie Description</th>\n        </tr>\n        </thead>\n        <tbody>\n            <tr>\n                <th>FORM_KEY</th>\n                <td>Stores randomly generated key used to prevent forged requests.</td>\n            </tr>\n            <tr>\n                <th>PHPSESSID</th>\n                <td>Your session ID on the server.</td>\n            </tr>\n            <tr>\n                <th>GUEST-VIEW</th>\n                <td>Allows guests to view and edit their orders.</td>\n            </tr>\n            <tr>\n                <th>PERSISTENT_SHOPPING_CART</th>\n                <td>A link to information about your cart and viewing history, if you have asked for this.</td>\n            </tr>\n            <tr>\n                <th>STF</th>\n                <td>Information on products you have emailed to friends.</td>\n            </tr>\n            <tr>\n                <th>STORE</th>\n                <td>The store view or language you have selected.</td>\n            </tr>\n            <tr>\n                <th>USER_ALLOWED_SAVE_COOKIE</th>\n                <td>Indicates whether a customer allowed to use cookies.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-SESSID</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-STORAGE-SECTION-INVALIDATION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-CACHE-TIMEOUT</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>SECTION-DATA-IDS</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>PRIVATE_CONTENT_VERSION</th>\n                <td>Facilitates caching of content on the browser to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>X-MAGENTO-VARY</th>\n                <td>Facilitates caching of content on the server to make pages load faster.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-FILE-VERSION</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n            <tr>\n                <th>MAGE-TRANSLATION-STORAGE</th>\n                <td>Facilitates translation of content to other languages.</td>\n            </tr>\n        </tbody>\n    </table>\n</div>', '2016-08-26 06:46:09', '2016-08-26 06:46:09', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Gubato', '1column', '', '', 'porto_home_1', '', '<h2 class=\"filterproduct-title\" style=\"margin:0 0 10px;\"><span class=\"content\"><strong>Featured Brands</strong></span></h2>\r\n<div id=\"brands-slider-demo-1\" class=\"brands-slider\">\r\n    <div class=\"owl-carousel\">\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand1.png\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand2.png\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand3.png\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand4.png\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand5.png\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand1.png\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand2.png\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand3.png\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand4.png\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand5.png\"}}\" alt=\"\" /></div>\r\n    </div>\r\n    <script type=\"text/javascript\">\r\n        require([\r\n            \'jquery\',\r\n            \'owl.carousel/owl.carousel.min\'\r\n        ], function ($) {\r\n            $(\"#brands-slider-demo-1 .owl-carousel\").owlCarousel({\r\n                autoplay: true,\r\n                autoplayTimeout: 5000,\r\n                autoplayHoverPause: true,\r\n                margin: 30,\r\n                nav: false,\r\n                dots: true,\r\n                loop: true,\r\n                responsive: {\r\n                    0: {\r\n                        items:2\r\n                    },\r\n                    640: {\r\n                        items:3\r\n                    },\r\n                    768: {\r\n                        items:4\r\n                    },\r\n                    992: {\r\n                        items:5\r\n                    },\r\n                    1200: {\r\n                        items:6\r\n                    }\r\n                }\r\n            });\r\n        });\r\n    </script>\r\n</div>\r\n<h2 class=\"filterproduct-title\" style=\"margin-top:40px;margin-bottom: 5px;\"><span class=\"content\"><strong>FROM THE BLOG</strong></span></h2>\r\n<div id=\"latest_news\" class=\"owl-top-narrow\">\r\n    <div class=\"recent-posts\">\r\n        <div class=\"owl-carousel\">\r\n            <div class=\"item\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-sm-5\">\r\n                        <div class=\"post-image\">\r\n                            <img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/03.jpg\"}}\" alt=\"\" />\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"col-sm-7\">\r\n                        <div class=\"post-date\">\r\n                            <span class=\"day\">08</span>\r\n                            <span class=\"month\">Dec</span>\r\n                        </div>\r\n                        <div class=\"postTitle\">\r\n                            <h2><a href=\"#\">Post Format – Video</a></h2>\r\n                        </div>\r\n                        <div class=\"postContent\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi…</p></div>\r\n                        <a class=\"readmore\" href=\"#\">Read more &gt;</a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n            <div class=\"item\">\r\n                <div class=\"row\">\r\n                    <div class=\"col-sm-5\">\r\n                        <div class=\"post-image\">\r\n                            <img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/04.jpg\"}}\" alt=\"\" />\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"col-sm-7\">\r\n                        <div class=\"post-date\">\r\n                            <span class=\"day\">08</span>\r\n                            <span class=\"month\">Dec</span>\r\n                        </div>\r\n                        <div class=\"postTitle\">\r\n                            <h2><a href=\"#\">Post Format – Image Gallery</a></h2>\r\n                        </div>\r\n                        <div class=\"postContent\"><p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent…</p></div>\r\n                        <a class=\"readmore\" href=\"#\">Read more &gt;</a>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n    <script type=\"text/javascript\">\r\n        require([\r\n            \'jquery\',\r\n            \'owl.carousel/owl.carousel.min\'\r\n        ], function ($) {\r\n            $(\"#latest_news .owl-carousel\").owlCarousel({\r\n                loop: false,\r\n                margin: 10,\r\n                nav: true,\r\n                navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\r\n                dots: false,\r\n                responsive: {\r\n                    0: {\r\n                        items:1\r\n                    },\r\n                    640: {\r\n                        items:2\r\n                    },\r\n                    768: {\r\n                        items:2\r\n                    },\r\n                    992: {\r\n                        items:2\r\n                    },\r\n                    1200: {\r\n                        items:2\r\n                    }\r\n                }\r\n            });\r\n        });\r\n    </script>\r\n</div>', '2016-12-02 19:11:53', '2017-03-19 05:46:10', 1, 0, '<referenceContainer name=\"page.top\">\r\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\r\n        <arguments>\r\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_1</argument>\r\n        </arguments>\r\n    </block>\r\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, ''),
(51, 'Porto - Homepage 2', '1column', NULL, NULL, 'porto_home_2', NULL, '<h2 class=\"filterproduct-title\" style=\"margin-top:30px;\"><span class=\"content\"><strong>Galaxy phones Just Arrived</strong></span></h2>\n<div id=\"new_product\" class=\"owl-top-narrow\">\n    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_product\" product_count=\"10\" aspect_ratio=\"0\" image_width=\"250\" image_height=\"250\" template=\"owl_list.phtml\"}}\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\',\n        \'owl.carousel/owl.carousel.min\'\n    ], function ($) {\n        $(\"#new_product .owl-carousel\").owlCarousel({\n            autoplay: true,\n            autoplayTimeout: 5000,\n            autoplayHoverPause: true,\n            margin: 10,\n            nav: true,\n            navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n            dots: false,\n            navRewind: true,\n            animateIn: \'fadeIn\',\n            animateOut: \'fadeOut\',\n            loop: true,\n            responsive: {\n                0: {\n                    items:2\n                },\n                768: {\n                    items:3\n                },\n                992: {\n                    items:4\n                },\n                1200: {\n                    items:5\n                }\n            }\n        });\n    });\n</script>', '2016-12-02 19:11:53', '2016-12-02 19:11:53', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_2</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Porto - Homepage 3', '1column', NULL, NULL, 'porto_home_3', NULL, '<style type=\"text/css\">\nhtml, body {\n    overflow: hidden;\n}\nbody.boxed {\n    padding: 0;\n}\nbody.boxed .page-wrapper {\n    width: 100%;\n}\nheader.page-header.type14 {\n    position: absolute;\n    left: 0;\n    top: 0;\n    width: 100%;\n    background-color: rgba(0,0,0,0.8);\n}\n.cms-index-index .page-header.type3 {\n    position: fixed;\n    top: 0;\n    left: 0;\n    z-index: 2;\n    background-color: rgba(0,0,0,.5);\n    width: 100%;\n    max-height: 100%;\n}\n.page-main, .page-footer {\n    display: none;\n}\n#banner-slider-demo-3 div.content-area h2 {\n    font-size: 70px;\n    margin: 5px 0 45px;\n    letter-spacing: 5px;\n}\n#banner-slider-demo-3 div.content-area a.btn-default {\n    font-size: 14px;\n    letter-spacing: 1px;\n    padding: 18px 40px;\n    width: auto;\n    height: auto;\n    line-height: 1;\n}\n.full-screen-slider > div.copyright-text {\n    font-family: \'Oswald\';\n    font-weight: 400;\n    font-size: 12px;\n    color: #000;\n    line-height: 92px;\n    position: absolute;\n    left: 100px;\n    bottom: 0;\n    z-index: 2;\n}\n@media (max-width: 1899px) {\n    .full-screen-slider > div.copyright-text {\n        left: 70px;\n    }\n}\n@media (max-width: 1679px) {\n    #banner-slider-demo-3 div.content-area h2 {\n        font-size: 70px;\n        margin: 4px 0 35px;\n        letter-spacing: 4px;\n    }\n    .full-screen-slider > div.copyright-text {\n        line-height: 60px;\n    }\n}\n@media (max-width: 1439px) {\n    .full-screen-slider > div.copyright-text {\n        left: 30px;\n    }\n}\n@media (max-width: 1199px) {\n    #banner-slider-demo-3 div.content-area h2 {\n        font-size: 50px;\n        margin: 4px 0 35px;\n        letter-spacing: 4px;\n    }\n}\n@media (max-width: 991px) {\n    #banner-slider-demo-3 div.content-area h2 {\n        font-size: 40px;\n        margin: 4px 0 30px;\n        letter-spacing: 3px;\n    }\n    #banner-slider-demo-3 div.content-area a.btn-default {\n        font-size: 11px;\n        padding: 15px 25px;\n    }\n}\n@media (max-width: 767px) {\n    #banner-slider-demo-3 div.content-area h2 {\n        font-size: 30px;\n        margin: 4px 0 20px;\n        letter-spacing: 2px;\n    }\n    #banner-slider-demo-3 div.content-area a.btn-default {\n        font-size: 10px;\n        padding: 10px 20px;\n    }\n    .full-screen-slider > div.copyright-text {\n        font-size: 10px;\n        line-height: 40px;\n        left: 20px;\n    }\n}\n</style>', '2016-12-02 19:11:54', '2016-12-02 19:11:54', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_3</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Porto - Homepage 4', '1column', NULL, NULL, 'porto_home_4', NULL, '<style type=\"text/css\">\nbody.boxed {\n    padding: 0;\n}\nbody.boxed .page-wrapper {\n    width: 100%;\n}\n.page-header.type4 {\n    position: absolute;\n    left: 0;\n    top: 0;\n    width: 100%;\n    z-index: 2;\n    background: transparent;\n}\n.page-main {\n    display: none;\n}\n</style>', '2016-12-02 19:11:54', '2016-12-02 19:11:54', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_4</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Porto - Homepage 5', '1column', NULL, NULL, 'porto_home_5', NULL, '<div class=\"row\" style=\"margin-top: 40px;\">\n    <div class=\"col-md-9 col-sm-8\">\n        <div class=\"filterproducts-tab\">\n            <div class=\"data items\" data-mage-init=\'{\"tabs\":{\"openedState\":\"active\"}}\'>\n                <div class=\"data item title\" aria-labeledby=\"tab-label-featured-title\" data-role=\"collapsible\" id=\"tab-label-featured\">\n                    <a class=\"data switch\" tabindex=\"-1\" data-toggle=\"switch\" href=\"#featured\" id=\"tab-label-featured-title\">Featured</a>\n                </div>\n                <div class=\"data item content hide-addtolinks\" id=\"featured\" data-role=\"content\">\n                    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"8\" column_count=\"4\" move_actions=\"1\" aspect_ratio=\"0\" image_width=\"250\" image_height=\"250\" template=\"grid.phtml\"}}\n                </div>\n                <div class=\"data item title\" aria-labeledby=\"tab-label-latest-title\" data-role=\"collapsible\" id=\"tab-label-latest\">\n                    <a class=\"data switch\" tabindex=\"-1\" data-toggle=\"switch\" href=\"#latest\" id=\"tab-label-latest-title\">Latest</a>\n                </div>\n                <div class=\"data item content hide-addtolinks\" id=\"latest\" data-role=\"content\">\n                    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_product\" product_count=\"8\" column_count=\"4\" move_actions=\"1\" aspect_ratio=\"0\" image_width=\"250\" image_height=\"250\" template=\"grid.phtml\"}}\n                </div>\n            </div>\n        </div>\n        <div class=\"grid-images\" style=\"margin:20px 0;\">\n            <div class=\"row\">\n                <div class=\"col-sm-4\">\n                    <div class=\"grid1\">\n                        <a href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/05/content/grid1.jpg\"}}\" alt=\"\" /></a>\n                    </div>\n                    <div class=\"grid2\">\n                        <a href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/05/content/grid2.jpg\"}}\" alt=\"\"></a>\n                    </div>\n                </div>\n                <div class=\"col-sm-8\">\n                    <div class=\"grid3\">\n                        <a href=\"#\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/05/content/grid3.jpg\"}}\" alt=\"\"></a>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <h2 class=\"filterproduct-title\" style=\"margin:0 0 10px;\"><span class=\"content\"><strong>Featured Brands</strong></span></h2>\n        <div id=\"brands-slider-demo-8\" class=\"brands-slider\">\n            <div class=\"owl-carousel\">\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand1.png\"}}\" alt=\"\" /></div>\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand2.png\"}}\" alt=\"\" /></div>\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand3.png\"}}\" alt=\"\" /></div>\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand4.png\"}}\" alt=\"\" /></div>\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand5.png\"}}\" alt=\"\" /></div>\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand1.png\"}}\" alt=\"\" /></div>\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand2.png\"}}\" alt=\"\" /></div>\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand3.png\"}}\" alt=\"\" /></div>\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand4.png\"}}\" alt=\"\" /></div>\n                <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand5.png\"}}\" alt=\"\" /></div>\n            </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#brands-slider-demo-8 .owl-carousel\").owlCarousel({\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    margin: 30,\n                    nav: false,\n                    dots: true,\n                    loop: true,\n                    responsive: {\n                        0: {\n                            items:2\n                        },\n                        640: {\n                            items:3\n                        },\n                        768: {\n                            items:4\n                        },\n                        992: {\n                            items:5\n                        },\n                        1200: {\n                            items:6\n                        }\n                    }\n                });\n            });\n        </script>\n        </div>\n    </div>\n    <div class=\"col-md-3 col-sm-4 sidebar\">\n        <div class=\"custom-block\" style=\"margin-top:44px;padding-bottom:37px;margin-bottom:15px;\">\n            <div class=\"block block-border\">\n                <div class=\"block-title\">Category</div>\n                <div class=\"block-content\">\n                    {{block class=\"Smartwave\\Porto\\Block\\CategoryCollection\" name=\"category_sidebar\" template=\"Smartwave_Porto::category_side.phtml\"}}\n                </div>\n            </div>\n        </div>\n        <h2 class=\"filterproduct-title\" style=\"margin-top:40px;margin-bottom: 5px;\"><span class=\"content\"><strong>FROM THE BLOG</strong></span></h2>\n        <div id=\"latest_news\" class=\"custom-block\">\n            <div class=\"recent-posts\">\n                <div class=\"owl-carousel\">\n                    <div class=\"item\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-5\">\n                                <div class=\"post-image\">\n                                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/03.jpg\"}}\" alt=\"\" />\n                                </div>\n                            </div>\n                            <div class=\"col-sm-7\">\n                                <div class=\"post-date\">\n                                    <span class=\"day\">08</span>\n                                    <span class=\"month\">Dec</span>\n                                </div>\n                                <div class=\"postTitle\">\n                                    <h2><a href=\"#\">Post Format – Video</a></h2>\n                                </div>\n                                <div class=\"postContent\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi…</p></div>\n                                <a class=\"readmore\" href=\"#\">Read more &gt;</a>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"item\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-5\">\n                                <div class=\"post-image\">\n                                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/04.jpg\"}}\" alt=\"\" />\n                                </div>\n                            </div>\n                            <div class=\"col-sm-7\">\n                                <div class=\"post-date\">\n                                    <span class=\"day\">08</span>\n                                    <span class=\"month\">Dec</span>\n                                </div>\n                                <div class=\"postTitle\">\n                                    <h2><a href=\"#\">Post Format – Image Gallery</a></h2>\n                                </div>\n                                <div class=\"postContent\"><p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent…</p></div>\n                                <a class=\"readmore\" href=\"#\">Read more &gt;</a>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <script type=\"text/javascript\">\n                require([\n                    \'jquery\',\n                    \'owl.carousel/owl.carousel.min\'\n                ], function ($) {\n                    $(\"#latest_news .owl-carousel\").owlCarousel({\n                        items: 1,\n                        loop: true,\n                        nav: false,\n                        dots: true\n                    });\n                });\n            </script>\n        </div>\n        <h2 style=\"font-weight:600;font-size:20px;color:#000;line-height:1;\">Custom HTML Block</h2>\n        <h5 style=\"font-family:Arial;font-weight:400;font-size:11px;color:#878787;line-height:1;margin-bottom:13px;\">This is a custom sub-title.</h5>\n        <p style=\"font-weight:400;font-size:14px;color:#666;line-height:1.42;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi. Etiam non tellus </p>\n    </div>\n</div>\n<style type=\"text/css\">\n.recent-posts .item .col-sm-5, .recent-posts .item .col-sm-7 {\n    width: 100%;\n}\n</style>', '2016-12-02 19:11:55', '2016-12-02 19:11:55', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_5</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Porto - Homepage 6', '1column', NULL, NULL, 'porto_home_6', NULL, '<p class=\"filter-title-type-2\" style=\"margin-top:10px;\"><span class=\"title-line\">&nbsp;</span><span style=\"width: 315px;text-align: center;font-weight: 600;color: #3d3734;\">WEEKLY FEATURED PRODUCTS</span><span class=\"title-line\">&nbsp;</span></p>\n<div id=\"weekly_featured_product\" class=\"hide-addtocart hide-addtolinks owl-middle-outer-narrow\">\n    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"0\" image_width=\"250\" image_height=\"250\" template=\"owl_list.phtml\"}}\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\',\n        \'owl.carousel/owl.carousel.min\'\n    ], function ($) {\n        $(\"#weekly_featured_product .owl-carousel\").owlCarousel({\n            autoplay: true,\n            autoplayTimeout: 5000,\n            autoplayHoverPause: true,\n            margin: 10,\n            nav: false,\n            dots: false,\n            navRewind: true,\n            animateIn: \'fadeIn\',\n            animateOut: \'fadeOut\',\n            loop: true,\n            responsive: {\n                0: {\n                    items:1\n                },\n                320: {\n                    items:1\n                },\n                480: {\n                    items:2\n                },\n                768: {\n                    items:3\n                },\n                992: {\n                    items:4\n                },\n                1200: {\n                    items:5\n                }\n            }\n        });\n    });\n</script>\n<p class=\"filter-title-type-2\" style=\"margin-top:30px\"><span class=\"title-line\">&nbsp;</span><span style=\"width: 225px;text-align: center;font-weight: 600;color: #3d3734;\">FEATURED BRANDS</span><span class=\"title-line\">&nbsp;</span></p>\n<div class=\"owl-middle-outer-narrow\">\n    <div id=\"brands-slider-demo-18\" class=\"owl-carousel\">\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand1.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand2.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand3.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand4.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand5.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand6.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand1.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand2.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand3.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand4.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand5.jpg\"}}\" alt=\"\" />\n        <img class=\"owl-lazy\" data-src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand6.jpg\"}}\" alt=\"\" />\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#brands-slider-demo-18\").owlCarousel({\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                margin: 10,\n                nav: false,\n                dots: false,\n                navRewind: true,\n                animateIn: \'fadeIn\',\n                animateOut: \'fadeOut\',\n                loop: true,\n                lazyLoad: true,\n                responsive: {\n                    0: {\n                        items:1\n                    },\n                    320: {\n                        items:1\n                    },\n                    480: {\n                        items:2\n                    },\n                    640: {\n                        items:3\n                    },\n                    768: {\n                        items:4\n                    },\n                    992: {\n                        items:5\n                    },\n                    1200: {\n                        items:6\n                    }\n                }\n            });\n        });\n    </script>\n</div>', '2016-12-02 19:11:55', '2016-12-02 19:11:55', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_6</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_page` (`page_id`, `title`, `page_layout`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`, `meta_title`) VALUES
(56, 'Porto - Homepage 7', '1column', NULL, NULL, 'porto_home_7', NULL, '<div class=\"row\" style=\"margin: 15px -8px 0 -8px;\">\n    <div class=\"col-sm-4 one-product\" style=\"padding-left: 8px; padding-right: 8px;\">\n        <h4 class=\"filterproduct-title\">FEATURED</h4>\n        <div id=\"featured_product\" class=\"hide-addtocart hide-addtolinks\">\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"350\" image_height=\"350\" template=\"owl_list.phtml\"}}\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#featured_product .owl-carousel\").owlCarousel({\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    nav: false,\n                    dots: true,\n                    navRewind: true,\n                    animateIn: \'fadeIn\',\n                    animateOut: \'fadeOut\',\n                    loop: true,\n                    items: 1\n                });\n            });\n        </script>\n    </div>\n    <div class=\"col-sm-4 one-product\" style=\"padding-left: 8px; padding-right: 8px;\">\n        <h4 class=\"filterproduct-title\">SALES</h4>\n        <div id=\"sales_product\" class=\"hide-addtocart hide-addtolinks\">\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"featured_product\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"350\" image_height=\"350\" template=\"owl_list.phtml\"}}\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#sales_product .owl-carousel\").owlCarousel({\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    nav: false,\n                    dots: true,\n                    navRewind: true,\n                    animateIn: \'fadeIn\',\n                    animateOut: \'fadeOut\',\n                    loop: true,\n                    items: 1\n                });\n            });\n        </script>\n    </div>\n    <div class=\"col-sm-4 one-product\" style=\"padding-left: 8px; padding-right: 8px;\">\n        <h4 class=\"filterproduct-title\">NEW ARRIVALS</h4>\n        <div id=\"new_product\" class=\"hide-addtocart hide-addtolinks\">\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"featured_product\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"350\" image_height=\"350\" template=\"owl_list.phtml\"}}\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#new_product .owl-carousel\").owlCarousel({\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    nav: false,\n                    dots: true,\n                    navRewind: true,\n                    animateIn: \'fadeIn\',\n                    animateOut: \'fadeOut\',\n                    loop: true,\n                    items: 1\n                });\n            });\n        </script>\n    </div>\n</div>\n<div class=\"single-images\" style=\"padding-top: 15px;\">\n    <div class=\"row\" style=\"margin-left:-7px;margin-right:-7px;\">\n        <div class=\"col-sm-3 col-xs-6\" style=\"padding-left:7px;padding-right:7px;padding-bottom:15px;\">\n            <a class=\"image-link\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/07/content/grid1.jpg\"}}\" alt=\"\" />\n            </a>\n        </div>\n        <div class=\"col-sm-3 col-xs-6\" style=\"padding-left:7px;padding-right:7px;padding-bottom:15px;\">\n            <a class=\"image-link\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/07/content/grid2.jpg\"}}\" alt=\"\" />\n            </a>\n        </div>\n        <div class=\"col-sm-3 col-xs-6\" style=\"padding-left:7px;padding-right:7px;padding-bottom:15px;\">\n            <a class=\"image-link\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/07/content/grid3.jpg\"}}\" alt=\"\" />\n            </a>\n        </div>\n        <div class=\"col-sm-3 col-xs-6\" style=\"padding-left:7px;padding-right:7px;padding-bottom:15px;\">\n            <a class=\"image-link\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/07/content/grid4.jpg\"}}\" alt=\"\" />\n            </a>\n        </div>\n     </div>\n</div>\n<div style=\"padding: 10px 20px 20px;background-color: #fff;\">\n    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"featured_product\" product_count=\"8\" column_count=\"4\" aspect_ratio=\"1\" image_width=\"300\" template=\"grid.phtml\"}}\n</div>\n<div class=\"shop-features\" style=\"background-color:#fff; margin-top:13px; padding: 35px 0;\">\n    <div class=\"row\">\n        <div class=\"col-sm-4\">\n            <em class=\"porto-icon-star\" style=\"border:0;\"></em>\n            <h3>DEDICATED SERVICE</h3>\n            <p style=\"padding: 0 60px;\">Consult our specialists for help with an order, customization, or design advice.</p>\n            <a href=\"#\">Get in Touch &gt;</a>\n        </div>\n        <div class=\"col-sm-4\">\n            <em class=\"porto-icon-reply\" style=\"border:0;\"></em>\n            <h3>FREE RETURNS</h3>\n            <p style=\"padding: 0 60px;\">We stand behind our goods and services and want you to be satisfied with them.</p>\n            <a href=\"#\">Returns Policy &gt;</a>\n        </div>\n        <div class=\"col-sm-4\">\n            <em class=\"porto-icon-paper-plane\" style=\"border:0;\"></em>\n            <h3>INTERNATIONAL SHIPPING</h3>\n            <p style=\"padding: 0 70px;\">Currently over 50 countries qualify for express international shipping.</p>\n            <a href=\"#\">Learn More &gt;</a>\n        </div>\n    </div>\n</div>\n<div class=\"col-md-12\" style=\"padding: 20px;background-color:#fff;\">\n    <div id=\"brands-slider-demo-7\" class=\"brands-slider\">\n        <div class=\"owl-carousel\">\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand1.png\"}}\" alt=\"\" /></div>\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand2.png\"}}\" alt=\"\" /></div>\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand3.png\"}}\" alt=\"\" /></div>\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand4.png\"}}\" alt=\"\" /></div>\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand5.png\"}}\" alt=\"\" /></div>\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand1.png\"}}\" alt=\"\" /></div>\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand2.png\"}}\" alt=\"\" /></div>\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand3.png\"}}\" alt=\"\" /></div>\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand4.png\"}}\" alt=\"\" /></div>\n            <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand5.png\"}}\" alt=\"\" /></div>\n        </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#brands-slider-demo-7 .owl-carousel\").owlCarousel({\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                margin: 30,\n                nav: false,\n                dots: true,\n                loop: true,\n                responsive: {\n                    0: {\n                        items:2\n                    },\n                    640: {\n                        items:3\n                    },\n                    768: {\n                        items:4\n                    },\n                    992: {\n                        items:5\n                    },\n                    1200: {\n                        items:6\n                    }\n                }\n            });\n        });\n    </script>\n    </div>\n</div>', '2016-12-02 19:11:55', '2016-12-02 19:11:55', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_7</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Porto - Homepage 8', '1column', '', '', 'porto_home_8', '', '<div class=\"homepage-bar\" style=\"border:1px solid #e1e1e1;margin:0 0 20px 0;\">\r\n    <div class=\"row\">\r\n        <div class=\"col-md-4\" style=\"text-align:center;height:60px;padding-top:5px;padding-bottom:5px;\">\r\n            <em class=\"porto-icon-truck\" style=\"font-size:36px;\"></em><div class=\"text-area\"><h3>FREE SHIPPING & RETURN</h3><p>Free shipping on all orders over $99.</p></div>\r\n        </div>\r\n        <div class=\"col-md-4\" style=\"text-align:center;height:60px;padding-top:5px;padding-bottom:5px;\">\r\n            <em class=\"porto-icon-dollar\"></em><div class=\"text-area\"><h3>MONEY BACK GUARANTEE</h3><p>100% money back guarantee.</p></div>\r\n        </div>\r\n        <div class=\"col-md-4\" style=\"text-align:center;height:60px;padding-top:5px;padding-bottom:5px;\">\r\n            <em class=\"porto-icon-lifebuoy\" style=\"font-size:32px;\"></em><div class=\"text-area\"><h3>ONLINE SUPPORT 24/7</h3><p>Lorem ipsum dolor sit amet.</p></div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div class=\"row\">\r\n    <div class=\"col-md-3 col-lg-2-4\">\r\n        <div class=\"home-side-menu-type2\" style=\"margin-bottom:20px;\">\r\n            <h2><em class=\"porto-icon-menu\"></em> SHOP CATEGORIES</h2>\r\n            <div class=\"side-block side-menu-type2\">\r\n                {{block class=\"Smartwave\\Porto\\Block\\CategoryCollection\" name=\"category_sidebar\" template=\"Smartwave_Porto::category_side_2.phtml\"}}\r\n            </div>\r\n        </div>\r\n        <div class=\"featured-box-2\">\r\n            <h3><em class=\"porto-icon-star\"></em> DEDICATED SERVICE</h3>\r\n            <p>Consult our specialists for help with an order, customization, or design advice.</p>\r\n            <a href=\"#\">Get in Touch &gt;</a>\r\n        </div>\r\n        <div class=\"featured-box-2\">\r\n            <h3><em class=\"porto-icon-reply\"></em> FREE RETURNS</h3>\r\n            <p>We stand behind our goods and services and want you to be satisfied with them.</p>\r\n            <a href=\"#\">Returns Policy &gt;</a>\r\n        </div>\r\n    </div>\r\n    <div class=\"col-md-9 col-lg-9-6\">\r\n        <h3 style=\"font-size: 15px;font-weight: 600;color: #333;margin-top:0;margin-bottom:15px;\">FEATURED PRODUCTS</h3>\r\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"8\" column_count=\"4\" move_actions=\"1\" aspect_ratio=\"0\" image_width=\"250\" image_height=\"250\" template=\"grid.phtml\"}}\r\n    </div>\r\n</div>\r\n<h2 class=\"filterproduct-title\" style=\"margin-bottom: 4px;\"><span class=\"content\"><strong>Featured Brands</strong></span></h2>\r\n<div id=\"brands-slider-demo-8\" class=\"brands-slider owl-top-narrow\">\r\n    <div class=\"owl-carousel\">\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand1.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand2.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand3.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand4.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand5.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand6.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand1.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand2.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand3.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand4.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand5.jpg\"}}\" alt=\"\" /></div>\r\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand6.jpg\"}}\" alt=\"\" /></div>\r\n    </div>\r\n    <script type=\"text/javascript\">\r\n        require([\r\n            \'jquery\',\r\n            \'owl.carousel/owl.carousel.min\'\r\n        ], function ($) {\r\n            $(\"#brands-slider-demo-8 .owl-carousel\").owlCarousel({\r\n                autoplay: true,\r\n                autoplayTimeout: 5000,\r\n                autoplayHoverPause: true,\r\n                margin: 30,\r\n                nav: true,\r\n                navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\r\n                dots: false,\r\n                loop: true,\r\n                responsive: {\r\n                    0: {\r\n                        items:2\r\n                    },\r\n                    640: {\r\n                        items:3\r\n                    },\r\n                    768: {\r\n                        items:4\r\n                    },\r\n                    992: {\r\n                        items:5\r\n                    },\r\n                    1200: {\r\n                        items:6\r\n                    }\r\n                }\r\n            });\r\n        });\r\n    </script>\r\n</div>\r\n<h2 class=\"filterproduct-title\" style=\"margin-top: 30px;\"><span class=\"content\"><strong>New Arrivals</strong></span></h2>\r\n<div id=\"new_product\" class=\"owl-top-narrow hide-addtocart hide-addtolinks\">\r\n    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"new_product\" product_count=\"12\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"263\" template=\"owl_list.phtml\"}}\r\n</div>\r\n<script type=\"text/javascript\">\r\n    require([\r\n        \'jquery\',\r\n        \'owl.carousel/owl.carousel.min\'\r\n    ], function ($) {\r\n        $(\"#new_product .owl-carousel\").owlCarousel({\r\n            autoplay: true,\r\n            autoplayTimeout: 5000,\r\n            autoplayHoverPause: true,\r\n            loop: true,\r\n            navRewind: true,\r\n            margin: 10,\r\n            nav: true,\r\n            navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\r\n            dots: false,\r\n            responsive: {\r\n                0: {\r\n                    items:1\r\n                },\r\n                320: {\r\n                    items:1\r\n                },\r\n                480: {\r\n                    items:2\r\n                },\r\n                640: {\r\n                    items:3\r\n                },\r\n                768: {\r\n                    items:4\r\n                },\r\n                992: {\r\n                    items:6\r\n                },\r\n                1200: {\r\n                    items:7\r\n                },\r\n                1350: {\r\n                    items:8\r\n                }\r\n            }\r\n        });\r\n    });\r\n</script>', '2016-12-02 19:11:56', '2017-03-19 04:34:38', 1, 0, '<referenceContainer name=\"page.top\">\r\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\r\n        <arguments>\r\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_8</argument>\r\n        </arguments>\r\n    </block>\r\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, ''),
(58, 'Porto - Homepage 9', '1column', NULL, NULL, 'porto_home_9', NULL, '<div class=\"homepage-bar\" style=\"border:1px solid #e1e1e1;border-radius:5px;margin:0 0 20px 0;\">\n    <div class=\"row\">\n        <div class=\"col-md-4\" style=\"text-align:center;height:70px;padding-top:10px;padding-bottom:10px;\">\n            <em class=\"porto-icon-truck\" style=\"font-size:36px;\"></em><div class=\"text-area\"><h3>FREE SHIPPING & RETURN</h3><p>Free shipping on all orders over $99.</p></div>\n        </div>\n        <div class=\"col-md-4\" style=\"text-align:center;height:70px;padding-top:10px;padding-bottom:10px;\">\n            <em class=\"porto-icon-dollar\"></em><div class=\"text-area\"><h3>MONEY BACK GUARANTEE</h3><p>100% money back guarantee.</p></div>\n        </div>\n        <div class=\"col-md-4\" style=\"text-align:center;height:70px;padding-top:10px;padding-bottom:10px;\">\n            <em class=\"porto-icon-lifebuoy\" style=\"font-size:32px;\"></em><div class=\"text-area\"><h3>ONLINE SUPPORT 24/7</h3><p>Lorem ipsum dolor sit amet.</p></div>\n        </div>\n    </div>\n</div>\n<div class=\"row\" style=\"margin: 0 -10px;\">\n    <div class=\"col-md-3\" style=\"padding: 0 10px;\">\n        <div class=\"home-side-menu\">\n            <h2 class=\"side-menu-title\">CATEGORIES</h2>\n            {{block class=\"Smartwave\\Megamenu\\Block\\Topmenu\" name=\"sw.sidenav\" template=\"Smartwave_Megamenu::sidemenu.phtml\" ttl=\"3600\"}}\n        </div>\n    </div>\n    <div class=\"col-md-9\" style=\"padding: 0 10px;\">\n        <div id=\"banner-slider-demo-9\" class=\"owl-carousel owl-banner-carousel owl-bottom-narrow\">\n            <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/09/content/01_bg.png\"}}) repeat;border-radius:5px;\">\n                <div style=\"position:relative\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/09/content/01.png\"}}\" alt=\"\" />\n                    <div class=\"content type1\" style=\"position:absolute;top:30%;left:10%;text-align:right\">\n                        <h2 style=\"font-weight:600;line-height:1;color:#08c\">HUGE <b style=\"font-weight:800\">SALE</b></h2>\n                        <p style=\"color:#777;font-weight:300;line-height:1;margin-bottom:15px\">Now starting at <span style=\"color:#535353;font-weight:400\">$99</span></p>\n                        <a href=\"#\" style=\"font-weight:300;\">Shop now &gt;</a>\n                    </div>\n                </div>\n            </div>\n            <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/09/content/02_bg.png\"}}) center center no-repeat;background-size:cover;border-radius:5px;\">\n                <div style=\"position:relative\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/09/content/02.png\"}}\" alt=\"\" />\n                </div>\n            </div>\n            <div class=\"item\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/09/content/03_bg.png\"}}) center center no-repeat;background-size:cover;border-radius:5px;\">\n                <div style=\"position:relative\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/09/content/03.png\"}}\" alt=\"\" />\n                </div>\n            </div>\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#banner-slider-demo-9\").owlCarousel({\n                    items: 1,\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    dots: true,\n                    nav: false,\n                    navRewind: true,\n                    animateIn: \'fadeIn\',\n                    animateOut: \'fadeOut\',\n                    loop: true\n                });\n            });\n        </script>\n    </div>\n</div>\n<div class=\"row\" style=\"margin: 0 -10px;\">\n    <div class=\"col-md-3\" style=\"padding: 0 10px;\">\n        <div id=\"ads-slider-demo-9\" class=\"owl-carousel\">\n            <div class=\"item\" style=\"text-align:center;\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/09/content/ad2.png\"}}\" alt=\"\" style=\"display:inline-block;\"/>\n            </div>\n            <div class=\"item\" style=\"text-align:center;\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/09/content/ad1.png\"}}\" alt=\"\" style=\"display:inline-block;\" />\n            </div>\n            <div class=\"item\" style=\"text-align:center;\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/09/content/ad2.png\"}}\" alt=\"\" style=\"display:inline-block;\" />\n            </div>\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#ads-slider-demo-9\").owlCarousel({\n                    items: 1,\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    dots: true,\n                    nav: false,\n                    navRewind: true,\n                    animateIn: \'fadeIn\',\n                    animateOut: \'fadeOut\',\n                    loop: true\n                });\n            });\n        </script>\n        <div class=\"block block-subscribe home-sidebar-block\" style=\"margin-top:40px;margin-bottom:30px;\">\n            <div class=\"block-title\">\n                <strong><span>Be the First to Know</span></strong>\n            </div>\n            <div class=\"block-content\">\n                <p>Keep up on our always evolving product features and technology.<br>Enter your e-mail and subscribe to our newsletter.</p>\n                {{block class=\"Magento\\Newsletter\\Block\\Subscribe\" name=\"home.newsletter\" template=\"subscribe_form.phtml\"}}\n            </div>\n        </div>\n        <h2 class=\"filterproduct-title\" style=\"margin-top:40px;margin-bottom: 5px;\"><span class=\"content\"><strong>TESTIMONIALS</strong></span></h2>\n        <div id=\"testimonials-slider-demo-9\" class=\"owl-carousel\">\n            <div class=\"item\">\n                <blockquote class=\"testimonial\">\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est.</p>\n                </blockquote>\n                <div class=\"testimonial-arrow-down\"></div>\n                <div class=\"testimonial-author\">\n                    <div class=\"img-thumbnail img-thumbnail-small\"><img width=\"60\" height=\"60\" src=\"{{media url=\"wysiwyg/smartwave/porto/testimonials/client-1-11.jpg\"}}\" alt=\"\"></div>\n                    <p><strong>John Smith</strong><span>CEO &amp; Founder - Okler</span></p>\n                </div>\n            </div>\n            <div class=\"item\">\n                <blockquote class=\"testimonial\">\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit vehicula est.</p>\n                </blockquote>\n                <div class=\"testimonial-arrow-down\"></div>\n                <div class=\"testimonial-author\">\n                    <div class=\"img-thumbnail img-thumbnail-small\"><img width=\"60\" height=\"60\" src=\"{{media url=\"wysiwyg/smartwave/porto/testimonials/client-1-11.jpg\"}}\" alt=\"\"></div>\n                    <p><strong>John Smith</strong><span>CEO &amp; Founder - Okler</span></p>\n                </div>\n            </div>\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#testimonials-slider-demo-9\").owlCarousel({\n                    items: 1,\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    dots: true,\n                    nav: false,\n                    navRewind: true,\n                    animateIn: \'fadeIn\',\n                    animateOut: \'fadeOut\',\n                    loop: true\n                });\n            });\n        </script>\n        <h2 class=\"filterproduct-title\" style=\"margin-top:40px;margin-bottom: 5px;\"><span class=\"content\"><strong>FROM THE BLOG</strong></span></h2>\n        <div id=\"latest_news\" class=\"custom-block\">\n            <div class=\"recent-posts\">\n                <div class=\"owl-carousel\">\n                    <div class=\"item\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-5\">\n                                <div class=\"post-image\">\n                                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/03.jpg\"}}\" alt=\"\" />\n                                </div>\n                            </div>\n                            <div class=\"col-sm-7\">\n                                <div class=\"post-date\">\n                                    <span class=\"day\">08</span>\n                                    <span class=\"month\">Dec</span>\n                                </div>\n                                <div class=\"postTitle\">\n                                    <h2><a href=\"#\">Post Format – Video</a></h2>\n                                </div>\n                                <div class=\"postContent\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi…</p></div>\n                                <a class=\"readmore\" href=\"#\">Read more &gt;</a>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"item\">\n                        <div class=\"row\">\n                            <div class=\"col-sm-5\">\n                                <div class=\"post-image\">\n                                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/04.jpg\"}}\" alt=\"\" />\n                                </div>\n                            </div>\n                            <div class=\"col-sm-7\">\n                                <div class=\"post-date\">\n                                    <span class=\"day\">08</span>\n                                    <span class=\"month\">Dec</span>\n                                </div>\n                                <div class=\"postTitle\">\n                                    <h2><a href=\"#\">Post Format – Image Gallery</a></h2>\n                                </div>\n                                <div class=\"postContent\"><p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent…</p></div>\n                                <a class=\"readmore\" href=\"#\">Read more &gt;</a>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <script type=\"text/javascript\">\n                require([\n                    \'jquery\',\n                    \'owl.carousel/owl.carousel.min\'\n                ], function ($) {\n                    $(\"#latest_news .owl-carousel\").owlCarousel({\n                        items: 1,\n                        loop: true,\n                        nav: false,\n                        dots: true\n                    });\n                });\n            </script>\n            <style type=\"text/css\">.recent-posts .item .col-sm-5, .recent-posts .item .col-sm-7{width:100%;}</style>\n        </div>\n    </div>\n    <div class=\"col-md-9\" style=\"padding: 0 10px;\">\n        <div class=\"single-images\" style=\"padding-top: 15px;\">\n            <div class=\"row\" style=\"margin-left:-10px;margin-right:-10px;\">\n                <div class=\"col-sm-4\" style=\"padding-left:10px;padding-right:10px;padding-bottom:15px;\">\n                    <a class=\"image-link\" href=\"#\">\n                        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/09/content/img1.jpg\"}}\" alt=\"\" />\n                    </a>\n                </div>\n                <div class=\"col-sm-4\" style=\"padding-left:10px;padding-right:10px;padding-bottom:15px;\">\n                    <a class=\"image-link\" href=\"#\">\n                        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/09/content/img2.jpg\"}}\" alt=\"\" />\n                    </a>\n                </div>\n                <div class=\"col-sm-4\" style=\"padding-left:10px;padding-right:10px;padding-bottom:15px;\">\n                    <a class=\"image-link\" href=\"#\">\n                        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/09/content/img3.jpg\"}}\" alt=\"\" />\n                    </a>\n                </div>\n             </div>\n        </div>\n        <h2 class=\"filterproduct-title\"><span class=\"content\"><strong>FEATURED FASHION DRESS</strong></span></h2>\n        <div id=\"featured_product\" class=\"owl-top-narrow\">\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"263\" template=\"owl_list.phtml\"}}\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#featured_product .owl-carousel\").owlCarousel({\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    loop: true,\n                    navRewind: true,\n                    margin: 10,\n                    nav: true,\n                    navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                    dots: false,\n                    responsive: {\n                        0: {\n                            items:2\n                        },\n                        768: {\n                            items:3\n                        },\n                        992: {\n                            items:3\n                        },\n                        1200: {\n                            items:4\n                        }\n                    }\n                });\n            });\n        </script>\n        <hr style=\"background-image: linear-gradient(to right, transparent, rgba(0, 0, 0, 0.2), transparent);border: 0;height: 1px;margin: 30px 0 0;\">\n        <div class=\"row\">\n            <div class=\"col-sm-4\">\n                <h2 class=\"filterproduct-title\" style=\"background-image:none;margin-top:20px;margin-bottom:5px;\"><span class=\"content\"><strong>New</strong></span></h2>\n                {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_small_list\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"212\" template=\"small_list.phtml\"}}\n            </div>\n            <div class=\"col-sm-4\">\n                <h2 class=\"filterproduct-title\" style=\"background-image:none;margin-top:20px;margin-bottom:5px;\"><span class=\"content\"><strong>Hot</strong></span></h2>\n                {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_small_list\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"212\" template=\"small_list.phtml\"}}\n            </div>\n            <div class=\"col-sm-4\">\n                <h2 class=\"filterproduct-title\" style=\"background-image:none;margin-top:20px;margin-bottom:5px;\"><span class=\"content\"><strong>Sale</strong></span></h2>\n                {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_small_list\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"212\" template=\"small_list.phtml\"}}\n            </div>\n        </div>\n        <div class=\"shop-features\" style=\"background-color:#fff; margin-top:13px;\">\n            <h2 class=\"shop-features-title\"><span>WHY SHOP WITH US?</span></h2>\n            <div class=\"row\">\n                <div class=\"col-sm-4\">\n                    <em class=\"porto-icon-star\"></em>\n                    <h3>DEDICATED SERVICE</h3>\n                    <p>Consult our specialists for help with an order, customization, or design advice.</p>\n                    <a href=\"#\">Get in Touch &gt;</a>\n                </div>\n                <div class=\"col-sm-4\">\n                    <em class=\"porto-icon-reply\"></em>\n                    <h3>FREE RETURNS</h3>\n                    <p>We stand behind our goods and services and want you to be satisfied with them.</p>\n                    <a href=\"#\">Returns Policy &gt;</a>\n                </div>\n                <div class=\"col-sm-4\">\n                    <em class=\"porto-icon-paper-plane\"></em>\n                    <h3>INTERNATIONAL SHIPPING</h3>\n                    <p>Currently over 50 countries qualify for express international shipping.</p>\n                    <a href=\"#\">Learn More &gt;</a>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<style type=\"text/css\">\n@media (min-width: 768px) {\n    .page-header .nav-sections {\n        display: none;\n    }\n}\n</style>', '2016-12-02 19:11:56', '2016-12-02 19:11:56', 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_page` (`page_id`, `title`, `page_layout`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`, `meta_title`) VALUES
(59, 'Porto - Homepage 10', '1column', NULL, NULL, 'porto_home_10', NULL, '<h2 class=\"filterproduct-title\"><span class=\"content\"><strong>FEATURED PRODUCTS</strong></span></h2>\n<div id=\"featured_product\" class=\"owl-top-narrow\">\n    {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"1\" image_width=\"272\" image_height=\"337\" template=\"owl_list.phtml\"}}\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\',\n        \'owl.carousel/owl.carousel.min\'\n    ], function ($) {\n        $(\"#featured_product .owl-carousel\").owlCarousel({\n            autoplay: true,\n            autoplayTimeout: 5000,\n            autoplayHoverPause: true,\n            loop: true,\n            navRewind: true,\n            margin: 10,\n            nav: true,\n            navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n            dots: false,\n            responsive: {\n                0: {\n                    items:2\n                },\n                768: {\n                    items:3\n                },\n                992: {\n                    items:3\n                },\n                1200: {\n                    items:4\n                }\n            }\n        });\n    });\n</script>\n<h2 class=\"filterproduct-title\" style=\"margin-bottom: 4px; margin-top: 20px;\"><span class=\"content\"><strong>BROWSE OUR CATEGORIES</strong></span></h2>\n<div id=\"category_slider\" class=\"owl-top-narrow\">\n    <div class=\"owl-carousel\">\n        <div class=\"item\" style=\"padding-top:0;\">\n            <a class=\"single-image\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category1.jpg\"}}\" alt=\"\" />\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">HOME & GARDEN</span></p>\n            </a>\n        </div>\n        <div class=\"item\" style=\"padding-top:0;\">\n            <a class=\"single-image\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category2.jpg\"}}\" alt=\"\" />\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">SPORTS</span></p>\n            </a>\n        </div>\n        <div class=\"item\" style=\"padding-top:0;\">\n            <a class=\"single-image\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category3.jpg\"}}\" alt=\"\" />\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">FASHION</span></p>\n            </a>\n        </div>\n        <div class=\"item\" style=\"padding-top:0;\">\n            <a class=\"single-image\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category4.jpg\"}}\" alt=\"\" />\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">ELECTRONICS</span></p>\n            </a>\n        </div>\n        <div class=\"item\" style=\"padding-top:0;\">\n            <a class=\"single-image\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category1.jpg\"}}\" alt=\"\" />\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">HOME & GARDEN</span></p>\n            </a>\n        </div>\n        <div class=\"item\" style=\"padding-top:0;\">\n            <a class=\"single-image\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category2.jpg\"}}\" alt=\"\" />\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">SPORTS</span></p>\n            </a>\n        </div>\n        <div class=\"item\" style=\"padding-top:0;\">\n            <a class=\"single-image\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category3.jpg\"}}\" alt=\"\" />\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">FASHION</span></p>\n            </a>\n        </div>\n        <div class=\"item\" style=\"padding-top:0;\">\n            <a class=\"single-image\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/10/content/category4.jpg\"}}\" alt=\"\" />\n                <p style=\"position:absolute;width:100%;bottom:13px;text-align:center;\"><span style=\"background-color:#333;background-color:rgba(23,23,23,.9);font-size:20.28px;color:#fff;font-weight:800;line-height:37px;display:inline-block;padding:0 10px;\">ELECTRONICS</span></p>\n            </a>\n        </div>\n    </div>\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\',\n        \'owl.carousel/owl.carousel.min\'\n    ], function ($) {\n        $(\"#category_slider .owl-carousel\").owlCarousel({\n            autoplay: true,\n            autoplayTimeout: 5000,\n            autoplayHoverPause: true,\n            loop: true,\n            navRewind: true,\n            margin: 10,\n            nav: true,\n            navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n            dots: false,\n            responsive: {\n                0: {\n                    items:2\n                },\n                768: {\n                    items:3\n                },\n                992: {\n                    items:3\n                },\n                1200: {\n                    items:4\n                }\n            }\n        });\n    });\n</script>\n<h2 class=\"filterproduct-title\" style=\"margin-top:20px;margin-bottom:5px;\"><span class=\"content\"><strong>JUST ARRIVED</strong></span></h2>\n{{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"12\" column_count=\"6\" move_actions=\"1\" aspect_ratio=\"0\" image_width=\"250\" image_height=\"250\" template=\"grid.phtml\"}}\n<div class=\"row\" style=\"margin-top:20px;\">\n    <div class=\"col-sm-6\">\n        <h2 class=\"filterproduct-title\" style=\"margin-top:20px;margin-bottom:5px;background:none;\"><span class=\"content\"><strong>LATEST BLOG POSTS</strong></span></h2>\n        <div id=\"latest_news\" class=\"recent-posts\">\n            <div class=\"owl-carousel\">\n                <div class=\"item\">\n                    <div class=\"row\">\n                        <div class=\"col-sm-5\">\n                            <div class=\"post-image\">\n                                <img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/03.jpg\"}}\" alt=\"\" />\n                            </div>\n                        </div>\n                        <div class=\"col-sm-7\">\n                            <div class=\"post-date\">\n                                <span class=\"day\">08</span>\n                                <span class=\"month\">Dec</span>\n                            </div>\n                            <div class=\"postTitle\">\n                                <h2><a href=\"#\">Post Format – Video</a></h2>\n                            </div>\n                            <div class=\"postContent\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi…</p></div>\n                            <a class=\"readmore\" href=\"#\">Read more &gt;</a>\n                        </div>\n                    </div>\n                </div>\n                <div class=\"item\">\n                    <div class=\"row\">\n                        <div class=\"col-sm-5\">\n                            <div class=\"post-image\">\n                                <img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/04.jpg\"}}\" alt=\"\" />\n                            </div>\n                        </div>\n                        <div class=\"col-sm-7\">\n                            <div class=\"post-date\">\n                                <span class=\"day\">08</span>\n                                <span class=\"month\">Dec</span>\n                            </div>\n                            <div class=\"postTitle\">\n                                <h2><a href=\"#\">Post Format – Image Gallery</a></h2>\n                            </div>\n                            <div class=\"postContent\"><p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent…</p></div>\n                            <a class=\"readmore\" href=\"#\">Read more &gt;</a>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#latest_news .owl-carousel\").owlCarousel({\n                    items: 1,\n                    loop: true,\n                    nav: false,\n                    dots: true\n                });\n            });\n        </script>\n    </div>\n    <div class=\"col-sm-6\">\n        <h2 class=\"filterproduct-title\" style=\"margin-top:20px;margin-bottom:5px;background:none;\"><span class=\"content\"><strong>WHAT CLIENT\'S SAY</strong></span></h2>\n        <div id=\"testimonials-slider-demo-9\" class=\"owl-carousel\">\n            <div class=\"item\">\n                <blockquote class=\"testimonial\">\n                    <p>Hello, I want to thank you for creating a great template and for the excellent and quick support and help that you have been providing to me as I begin to work with it.</p>\n                </blockquote>\n                <div class=\"testimonial-arrow-down\"></div>\n                <div class=\"testimonial-author\">\n                    <div class=\"img-thumbnail img-thumbnail-small\"><img width=\"60\" height=\"60\" src=\"{{media url=\"wysiwyg/smartwave/porto/testimonials/client-1-11.jpg\"}}\" alt=\"\"></div>\n                    <p><strong>John Smith</strong><span>CEO &amp; Founder - Okler</span></p>\n                </div>\n            </div>\n            <div class=\"item\">\n                <blockquote class=\"testimonial\">\n                    <p>Hello, I want to thank you for creating a great template and for the excellent and quick support and help that you have been providing to me as I begin to work with it.</p>\n                </blockquote>\n                <div class=\"testimonial-arrow-down\"></div>\n                <div class=\"testimonial-author\">\n                    <div class=\"img-thumbnail img-thumbnail-small\"><img width=\"60\" height=\"60\" src=\"{{media url=\"wysiwyg/smartwave/porto/testimonials/client-1-11.jpg\"}}\" alt=\"\"></div>\n                    <p><strong>John Smith</strong><span>CEO &amp; Founder - Okler</span></p>\n                </div>\n            </div>\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#testimonials-slider-demo-9\").owlCarousel({\n                    items: 1,\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    dots: true,\n                    nav: false,\n                    navRewind: true,\n                    animateIn: \'fadeIn\',\n                    animateOut: \'fadeOut\',\n                    loop: true\n                });\n            });\n        </script>\n    </div>\n</div>\n<h2 class=\"filterproduct-title\" style=\"margin-bottom: 4px;\"><span class=\"content\"><strong>Featured Brands</strong></span></h2>\n<div id=\"brands-slider-demo-10\" class=\"brands-slider owl-top-narrow\">\n    <div class=\"owl-carousel\">\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand1.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand2.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand3.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand4.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand5.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand6.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand1.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand2.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand3.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand4.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand5.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand6.jpg\"}}\" alt=\"\" /></div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#brands-slider-demo-10 .owl-carousel\").owlCarousel({\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                margin: 30,\n                nav: true,\n                navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                dots: false,\n                loop: true,\n                responsive: {\n                    0: {\n                        items:2\n                    },\n                    640: {\n                        items:3\n                    },\n                    768: {\n                        items:4\n                    },\n                    992: {\n                        items:5\n                    },\n                    1200: {\n                        items:6\n                    }\n                }\n            });\n        });\n    </script>\n</div>', '2016-12-02 19:11:56', '2016-12-02 19:11:56', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_10</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Porto - Homepage 11', '1column', NULL, NULL, 'porto_home_11', NULL, '{{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"8\" column_count=\"4\" aspect_ratio=\"0\" image_width=\"250\" image_height=\"250\" template=\"flex_grid.phtml\"}}\n<style type=\"text/css\">\n.products-grid.flex-grid {\n    margin: 0;\n}\n.page-main, .columns .column.main {\n    padding-top: 0;\n    padding-bottom: 0;\n}\n</style>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\'        \n    ], function ($) {\n        $(\'.products.grid .product-items li.product-item:nth-child(2n)\').addClass(\'nth-child-2n\');\n        $(\'.products.grid .product-items li.product-item:nth-child(2n+1)\').addClass(\'nth-child-2np1\');\n        $(\'.products.grid .product-items li.product-item:nth-child(3n)\').addClass(\'nth-child-3n\');\n        $(\'.products.grid .product-items li.product-item:nth-child(3n+1)\').addClass(\'nth-child-3np1\');\n        $(\'.products.grid .product-items li.product-item:nth-child(4n)\').addClass(\'nth-child-4n\');\n        $(\'.products.grid .product-items li.product-item:nth-child(4n+1)\').addClass(\'nth-child-4np1\');\n        $(\'.products.grid .product-items li.product-item:nth-child(5n)\').addClass(\'nth-child-5n\');\n        $(\'.products.grid .product-items li.product-item:nth-child(5n+1)\').addClass(\'nth-child-5np1\');\n        $(\'.products.grid .product-items li.product-item:nth-child(6n)\').addClass(\'nth-child-6n\');\n        $(\'.products.grid .product-items li.product-item:nth-child(6n+1)\').addClass(\'nth-child-6np1\');\n        $(\'.products.grid .product-items li.product-item:nth-child(7n)\').addClass(\'nth-child-7n\');\n        $(\'.products.grid .product-items li.product-item:nth-child(7n+1)\').addClass(\'nth-child-7np1\');\n        $(\'.products.grid .product-items li.product-item:nth-child(8n)\').addClass(\'nth-child-8n\');\n        $(\'.products.grid .product-items li.product-item:nth-child(8n+1)\').addClass(\'nth-child-8np1\');\n    });\n</script>', '2016-12-02 19:11:56', '2016-12-02 19:11:56', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_11</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Gubato', '1column', '', '', 'porto_home_12', '', '<div class=\"row\" style=\"background-color:#fff;margin-top:-20px;\">\r\n    <div class=\"col-md-12\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-3\"></div>\r\n            <div class=\"col-md-9\">\r\n                <div id=\"banner-slider-demo-12\" class=\"owl-carousel owl-banner-carousel owl-bottom-narrow\">\r\n                    <div class=\"item\">\r\n                        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/12/slider/slide01.jpg\"}}\" alt=\"\" />\r\n                        <div class=\"content\">\r\n                            <span style=\"font-weight:300;color:#303030;display:inline-block;vertical-align:middle\">Now starting at <b style=\"font-weight:600;\">$99</b></span>\r\n                            <a class=\"btn btn-default\" style=\"background-color:#303030;color:#fff;position:inline-block;vertical-align:middle;font-weight:600\">SHOP NOW <i class=\"icon-right-dir\"></i></a>\r\n                        </div>\r\n                    </div>\r\n                    <div class=\"item\">\r\n                        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/12/slider/slide02.jpg\"}}\" alt=\"\" />\r\n                    </div>\r\n                </div>\r\n                <script type=\"text/javascript\">\r\n                    require([\r\n                        \'jquery\',\r\n                        \'owl.carousel/owl.carousel.min\'\r\n                    ], function ($) {\r\n                        $(\"#banner-slider-demo-12\").owlCarousel({\r\n                            items: 1,\r\n                            autoplay: true,\r\n                            autoplayTimeout: 5000,\r\n                            autoplayHoverPause: true,\r\n                            dots: true,\r\n                            nav: false,\r\n                            navRewind: true,\r\n                            animateIn: \'fadeIn\',\r\n                            animateOut: \'fadeOut\',\r\n                            loop: true\r\n                        });\r\n                    });\r\n                </script>\r\n            </div>\r\n        </div>\r\n        <div class=\"row\">\r\n            <div class=\"homepage-bar\">\r\n                <div class=\"col-md-4\">\r\n                    <em class=\"porto-icon-truck\"></em><div class=\"text-area\"><h3>FREE SHIPPING &amp; FREE RETURNS</h3><p>Free shipping on all orders over $99.</p></div>\r\n                </div>\r\n                <div class=\"col-md-4\">\r\n                    <em class=\"porto-icon-dollar\"></em><div class=\"text-area\"><h3>MONEY BACK GUARANTEE</h3><p>100% money back guarantee.</p></div>\r\n                </div>\r\n                <div class=\"col-md-4\">\r\n                    <em class=\"porto-icon-lifebuoy\"></em><div class=\"text-area\"><h3>ONLINE SUPPORT 24/7</h3><p>Lorem ipsum dolor sit amet.</p></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n<div class=\"row\" style=\"background-color:#fff;margin-top:10px;\">\r\n    <div class=\"col-md-12\">\r\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_product\" product_count=\"8\" column_count=\"4\" aspect_ratio=\"1\" image_width=\"300\" template=\"grid.phtml\"}}\r\n    </div>\r\n</div>\r\n<div class=\"row\" style=\"background-color:#fff;margin:10px -15px;\">\r\n    <a href=\"#\" style=\"display:block;\"><img src=\"http://192.168.0.143/magento/porto/media/wysiwyg/porto/homepage/content/12/huge_sale.jpg\" alt=\"\" style=\"width: 100%;\"></a>\r\n</div>\r\n<div class=\"row\" style=\"margin: 15px -23px 0 -23px;\">\r\n    <div class=\"col-sm-4 one-product\" style=\"padding-left: 8px; padding-right: 8px;\">\r\n        <h4 class=\"filterproduct-title\">FEATURED</h4>\r\n        <div id=\"featured_product\" class=\"hide-addtocart hide-addtolinks\">\r\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"350\" image_height=\"350\" template=\"owl_list.phtml\"}}\r\n        </div>\r\n        <script type=\"text/javascript\">\r\n            require([\r\n                \'jquery\',\r\n                \'owl.carousel/owl.carousel.min\'\r\n            ], function ($) {\r\n                $(\"#featured_product .owl-carousel\").owlCarousel({\r\n                    autoplay: true,\r\n                    autoplayTimeout: 5000,\r\n                    autoplayHoverPause: true,\r\n                    nav: false,\r\n                    dots: true,\r\n                    navRewind: true,\r\n                    animateIn: \'fadeIn\',\r\n                    animateOut: \'fadeOut\',\r\n                    loop: true,\r\n                    items: 1\r\n                });\r\n            });\r\n        </script>\r\n    </div>\r\n    <div class=\"col-sm-4 one-product\" style=\"padding-left: 8px; padding-right: 8px;\">\r\n        <h4 class=\"filterproduct-title\">SALES</h4>\r\n        <div id=\"sales_product\" class=\"hide-addtocart hide-addtolinks\">\r\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"featured_product\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"350\" image_height=\"350\" template=\"owl_list.phtml\"}}\r\n        </div>\r\n        <script type=\"text/javascript\">\r\n            require([\r\n                \'jquery\',\r\n                \'owl.carousel/owl.carousel.min\'\r\n            ], function ($) {\r\n                $(\"#sales_product .owl-carousel\").owlCarousel({\r\n                    autoplay: true,\r\n                    autoplayTimeout: 5000,\r\n                    autoplayHoverPause: true,\r\n                    nav: false,\r\n                    dots: true,\r\n                    navRewind: true,\r\n                    animateIn: \'fadeIn\',\r\n                    animateOut: \'fadeOut\',\r\n                    loop: true,\r\n                    items: 1\r\n                });\r\n            });\r\n        </script>\r\n    </div>\r\n    <div class=\"col-sm-4 one-product\" style=\"padding-left: 8px; padding-right: 8px;\">\r\n        <h4 class=\"filterproduct-title\">NEW ARRIVALS</h4>\r\n        <div id=\"new_product\" class=\"hide-addtocart hide-addtolinks\">\r\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"featured_product\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"350\" image_height=\"350\" template=\"owl_list.phtml\"}}\r\n        </div>\r\n        <script type=\"text/javascript\">\r\n            require([\r\n                \'jquery\',\r\n                \'owl.carousel/owl.carousel.min\'\r\n            ], function ($) {\r\n                $(\"#new_product .owl-carousel\").owlCarousel({\r\n                    autoplay: true,\r\n                    autoplayTimeout: 5000,\r\n                    autoplayHoverPause: true,\r\n                    nav: false,\r\n                    dots: true,\r\n                    navRewind: true,\r\n                    animateIn: \'fadeIn\',\r\n                    animateOut: \'fadeOut\',\r\n                    loop: true,\r\n                    items: 1\r\n                });\r\n            });\r\n        </script>\r\n    </div>\r\n</div>\r\n<div class=\"row\" style=\"background-color:#fff;margin-top:15px;padding:15px 0;\">\r\n    <div class=\"col-md-12\">\r\n        <h2 class=\"filterproduct-title\" style=\"background:none;\"><span class=\"content\" style=\"background:none;\"><strong>FASHION SELECTION</strong></span></h2>\r\n        <div id=\"featured_product_list\" class=\"owl-top-narrow\">\r\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"1\" image_width=\"272\" image_height=\"337\" template=\"owl_list.phtml\"}}\r\n        </div>\r\n        <script type=\"text/javascript\">\r\n            require([\r\n                \'jquery\',\r\n                \'owl.carousel/owl.carousel.min\'\r\n            ], function ($) {\r\n                $(\"#featured_product_list .owl-carousel\").owlCarousel({\r\n                    autoplay: true,\r\n                    autoplayTimeout: 5000,\r\n                    autoplayHoverPause: true,\r\n                    loop: true,\r\n                    navRewind: true,\r\n                    margin: 10,\r\n                    nav: true,\r\n                    navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\r\n                    dots: false,\r\n                    responsive: {\r\n                        0: {\r\n                            items:2\r\n                        },\r\n                        768: {\r\n                            items:3\r\n                        },\r\n                        992: {\r\n                            items:3\r\n                        },\r\n                        1200: {\r\n                            items:4\r\n                        }\r\n                    }\r\n                });\r\n            });\r\n        </script>\r\n    </div>\r\n</div>\r\n<style type=\"text/css\">\r\n.page-main {\r\n    background-color: transparent;\r\n    padding-bottom: 0;\r\n}\r\n.homepage-bar {\r\n    border-color: #f5f5f5;\r\n    border-top: 0;\r\n}\r\n.homepage-bar p {\r\n    font-size: 11px;\r\n    margin-left: 5px;\r\n}\r\n.homepage-bar h3 {\r\n    font-size: 13px;\r\n}\r\n.homepage-bar .col-md-4 em {\r\n    font-size: 20px;\r\n    margin-top: -10px;\r\n}\r\n.homepage-bar .col-md-4 {\r\n    text-align: center;\r\n    border-color: #f5f5f5;\r\n}\r\n.product-item-photo {\r\n    padding: 0;\r\n}\r\n</style>', '2016-12-02 19:11:57', '2017-03-19 04:45:29', 1, 0, '', NULL, NULL, NULL, NULL, NULL, ''),
(62, 'Porto - Homepage 13', '1column', NULL, NULL, 'porto_home_13', NULL, '<p></p>', '2016-12-02 19:11:57', '2016-12-02 19:11:57', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_13</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Porto - Homepage 14', '1column', NULL, NULL, 'porto_home_14', NULL, '<style type=\"text/css\">\nbody.boxed {\n    padding: 0;\n}\nbody.boxed .page-wrapper {\n    width: 100%;\n}\n.cms-index-index .page-header.type9 {\n    background-color: transparent;\n    position: absolute;\n    width: 100%;\n    left: 0;\n    top: 0;\n    border-bottom: 1px solid rgba(255,255,255,.25);\n}\n</style>\n\n<div class=\"row\">\n    <div class=\"col-sm-12\">\n        <h2 style=\"margin-top:30px;font-size:19px;font-weight:600;margin-bottom:20px;text-align:center;\" class=\"theme-color\">NEW ARRIVALS</h2>\n        <div id=\"latest_product\" class=\"hide-addtocart hide-addtolinks\">\n            {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_product\" product_count=\"10\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"263\" template=\"owl_list.phtml\"}}\n        </div>\n        <script type=\"text/javascript\">\n            require([\n                \'jquery\',\n                \'owl.carousel/owl.carousel.min\'\n            ], function ($) {\n                $(\"#latest_product .owl-carousel\").owlCarousel({\n                    autoplay: true,\n                    autoplayTimeout: 5000,\n                    autoplayHoverPause: true,\n                    loop: true,\n                    navRewind: true,\n                    margin: 10,\n                    nav: false,\n                    navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                    dots: false,\n                    responsive: {\n                        0: {\n                            items:2\n                        },\n                        768: {\n                            items:3\n                        },\n                        992: {\n                            items:4\n                        },\n                        1200: {\n                            items:5\n                        }\n                    }\n                });\n            });\n        </script>\n    </div>\n</div>\n<div class=\"row\">\n    <div class=\"col-sm-12\">\n        <h2 style=\"margin-top:30px;font-size:19px;font-weight:600;margin-bottom:20px;text-align:center;\" class=\"theme-color\">FROM THE BLOG</h2>\n        <div id=\"latest_news\" class=\"owl-top-narrow\">\n            <!--{-{block class=\"Magefan\\Blog\\Block\\Sidebar\\Recent\" name=\"blog.home.recent\" template=\"recent_home.phtml\"}-}-->\n			<div class=\"recent-posts\">\n				<div class=\"owl-carousel\">\n					<div class=\"item\">\n						<div class=\"row\">\n							<div class=\"col-sm-5\">\n								<div class=\"post-image\">\n									<img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/03.jpg\"}}\" alt=\"\" />\n								</div>\n							</div>\n							<div class=\"col-sm-7\">\n								<div class=\"post-date\">\n									<span class=\"day\">08</span>\n									<span class=\"month\">Dec</span>\n								</div>\n								<div class=\"postTitle\">\n									<h2><a href=\"#\">Post Format – Video</a></h2>\n								</div>\n								<div class=\"postContent\"><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non placerat mi…</p></div>\n								<a class=\"readmore\" href=\"#\">Read more &gt;</a>\n							</div>\n						</div>\n					</div>\n					<div class=\"item\">\n						<div class=\"row\">\n							<div class=\"col-sm-5\">\n								<div class=\"post-image\">\n									<img src=\"{{media url=\"wysiwyg/smartwave/porto/blog/04.jpg\"}}\" alt=\"\" />\n								</div>\n							</div>\n							<div class=\"col-sm-7\">\n								<div class=\"post-date\">\n									<span class=\"day\">08</span>\n									<span class=\"month\">Dec</span>\n								</div>\n								<div class=\"postTitle\">\n									<h2><a href=\"#\">Post Format – Image Gallery</a></h2>\n								</div>\n								<div class=\"postContent\"><p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent…</p></div>\n								<a class=\"readmore\" href=\"#\">Read more &gt;</a>\n							</div>\n						</div>\n					</div>\n				</div>\n			</div>\n			<script type=\"text/javascript\">\n				require([\n					\'jquery\',\n					\'owl.carousel/owl.carousel.min\'\n				], function ($) {\n					$(\"#latest_news .owl-carousel\").owlCarousel({\n						loop: false,\n						margin: 10,\n						nav: false,\n						navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n						dots: false,\n						responsive: {\n							0: {\n								items:1\n							},\n							640: {\n								items:2\n							},\n							768: {\n								items:2\n							},\n							992: {\n								items:2\n							},\n							1200: {\n								items:2\n							}\n						}\n					});\n				});\n			</script>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:57', '2016-12-02 19:11:57', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_14</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Porto - Homepage 15', '1column', NULL, NULL, 'porto_home_15', NULL, '<style type=\"text/css\">\n.columns .column.main {\n    padding-bottom: 0;\n}\n.page-main {\n    padding-top: 8px;\n    padding-bottom: 8px;\n}\n</style>\n<div class=\"row\" style=\"margin-left:-8px;margin-right:-8px;\">\n    <div class=\"col-sm-4\" style=\"margin:8px 0;padding-left: 8px;padding-right: 8px;\">\n        <div style=\"background-color:#2b262f;position:relative;\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/15/content/blank.png\"}}\" alt=\"\" style=\"width:100%;max-height:480px;\">\n            <div class=\"img-desc-home15\" style=\"position:absolute;top:50%;width:100%;font-family:Georgia;\">\n                <h3 style=\"color:#f2f4f3;font-weight:400;line-height:1;\">The Wedding Day</h3>\n                <hr style=\"margin:15px 0;border-color:#ada4b5;\">\n                <p style=\"color:#ada4b5;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a arcu lacinia, ornare lorem maximus, consequat mauris. Nam vitae risus at leo convallis sagittis.</p>\n                <a href=\"#\" style=\"color:#fff;\">SHOP NOW</a>\n            </div>\n        </div>\n    </div>\n    <div class=\"col-sm-8\" style=\"margin:8px 0;padding-left: 8px;padding-right: 8px;\">\n        <a href=\"#\" class=\"image-link\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/15/content/image_link_new_1.jpg\"}}\" alt=\"\" style=\"width:100%;\">\n        </a>\n    </div>\n</div>\n<div class=\"row\" style=\"margin-left:-8px;margin-right:-8px;\">\n    <div class=\"col-sm-8\" style=\"margin:8px 0;padding-left: 8px;padding-right: 8px;\">\n        <a href=\"#\" class=\"image-link\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/15/content/image_link_new_2.jpg\"}}\" alt=\"\" style=\"width:100%;\">\n        </a>\n    </div>\n    <div class=\"col-sm-4\" style=\"margin:8px 0;padding-left: 8px;padding-right: 8px;\">\n        <div style=\"background-color:#b7a788;position:relative;\">\n            <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/15/content/blank.png\"}}\" alt=\"\" style=\"width:100%;max-height:480px;\">\n            <div class=\"img-desc-home15\" style=\"position:absolute;top:50%;width:100%;font-family:Georgia;\">\n                <h3 style=\"color:#2b262e;font-weight:400;line-height:1;\">Valentine’s Day</h3>\n                <hr style=\"margin:15px 0;border-color:#564a34;\">\n                <p style=\"color:#564a34;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean a arcu lacinia, ornare lorem maximus, consequat mauris. Nam vitae risus at leo convallis sagittis.</p>\n                <a href=\"#\" style=\"color:#2b262f;\">SHOP NOW</a>\n            </div>\n        </div>\n    </div>\n</div>\n<div class=\"row\" style=\"margin-left:-8px;margin-right:-8px;\">\n    <div class=\"col-md-3 col-sm-6 col-xs-6\" style=\"padding-left: 8px;padding-right: 8px;\">\n        <a class=\"image-link\" href=\"#\" style=\"margin:8px 0;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/15/content/image_link_new_3.jpg\"}}\" alt=\"\" style=\"width:100%;\"></a>\n    </div>\n    <div class=\"col-md-3 col-sm-6 col-xs-6 md-f-right\" style=\"padding-left: 8px;padding-right: 8px;\">\n        <a class=\"image-link\" href=\"#\" style=\"margin:8px 0;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/15/content/image_link_new_5.jpg\"}}\" alt=\"\" style=\"width:100%;\"></a>\n    </div>\n    <div class=\"col-md-6 col-sm-12 col-xs-12\" style=\"padding-left: 8px;padding-right: 8px;\">\n        <a class=\"image-link\" href=\"#\" style=\"margin:8px 0;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/15/content/image_link_new_4.jpg\"}}\" alt=\"\" style=\"width:100%;\"></a>\n    </div>\n</div>', '2016-12-02 19:11:57', '2016-12-02 19:11:57', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_15</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Porto - Homepage 16', '1column', NULL, NULL, 'porto_home_16', NULL, '<style type=\"text/css\">\n.page-main {\n    display: none;\n}\n.page-header.type10 {\n    background-color: rgba(0,0,0,.5);\n}\n.page-footer {\n    display: none;\n}\n.full-screen-slider {\n    position: fixed;\n    left: 0;\n    top: 0;\n    z-index: 1;\n    width: 100vw;\n    height: 100vh;\n}\n</style>', '2016-12-02 19:11:57', '2016-12-02 19:11:57', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_16</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Porto - Homepage 17', '1column', NULL, NULL, 'porto_home_17', NULL, '<h2 class=\"filterproduct-title\" style=\"margin-bottom: 4px;\"><span class=\"content\"><strong>Featured Brands</strong></span></h2>\n<div id=\"brands-slider-demo-17\" class=\"brands-slider owl-top-narrow\">\n    <div class=\"owl-carousel\">\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand1.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand2.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand3.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand4.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand5.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand6.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand1.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand2.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand3.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand4.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand5.jpg\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/brand_logos/brand6.jpg\"}}\" alt=\"\" /></div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#brands-slider-demo-17 .owl-carousel\").owlCarousel({\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                margin: 30,\n                nav: true,\n                navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                dots: false,\n                loop: true,\n                responsive: {\n                    0: {\n                        items:2\n                    },\n                    640: {\n                        items:3\n                    },\n                    768: {\n                        items:4\n                    },\n                    992: {\n                        items:5\n                    },\n                    1200: {\n                        items:6\n                    }\n                }\n            });\n        });\n    </script>\n</div>\n<div class=\"row\">\n    <div class=\"col-sm-3\">\n        <h2 class=\"filterproduct-title\" style=\"background-image:none;margin-top:20px;margin-bottom:5px;\"><span class=\"content\"><strong>Featured</strong></span></h2>\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"latest_small_list\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"212\" template=\"small_list.phtml\"}}\n    </div>\n    <div class=\"col-sm-3\">\n        <h2 class=\"filterproduct-title\" style=\"background-image:none;margin-top:20px;margin-bottom:5px;\"><span class=\"content\"><strong>New</strong></span></h2>\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"latest_small_list\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"212\" template=\"small_list.phtml\"}}\n    </div>\n    <div class=\"col-sm-3\">\n        <h2 class=\"filterproduct-title\" style=\"background-image:none;margin-top:20px;margin-bottom:5px;\"><span class=\"content\"><strong>Hot</strong></span></h2>\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_small_list\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"212\" template=\"small_list.phtml\"}}\n    </div>\n    <div class=\"col-sm-3\">\n        <h2 class=\"filterproduct-title\" style=\"background-image:none;margin-top:20px;margin-bottom:5px;\"><span class=\"content\"><strong>Sale</strong></span></h2>\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\LatestList\" name=\"latest_small_list\" product_count=\"3\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"212\" template=\"small_list.phtml\"}}\n    </div>\n</div>\n<style type=\"text/css\">\n.homepage-bar .col-md-4 {\n    padding-top: 15px;\n    padding-bottom: 15px;\n    height: 80px;\n    text-align: center;\n}\n</style>', '2016-12-02 19:11:58', '2016-12-02 19:11:58', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_17</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `cms_page` (`page_id`, `title`, `page_layout`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`, `meta_title`) VALUES
(67, 'Porto - Homepage 18', '1column', NULL, NULL, 'porto_home_18', NULL, '<div class=\"single-images\">\n    <div class=\"row\" style=\"margin-left:-10px;margin-right:-10px;\">\n        <div class=\"col-sm-4\" style=\"padding:10px\">\n            <div class=\"single-image-label\">SHOP LIVING ROOM</div>\n            <a class=\"image-link\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/18/content/image01.jpg\"}}\" alt=\"\">\n            </a>\n            <div class=\"caption\">LIVING ROOM STARTING AT $999</div>\n        </div>\n        <div class=\"col-sm-4\" style=\"padding:10px\">\n            <div class=\"single-image-label\">SHOP DINING ROOM</div>\n            <a class=\"image-link\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/18/content/image02.jpg\"}}\" alt=\"\">\n            </a>\n            <div class=\"caption\">DINING ROOM STARTING AT $999</div>\n        </div>\n        <div class=\"col-sm-4\" style=\"padding:10px\">\n            <div class=\"single-image-label\">SHOP BEDROOM</div>\n            <a class=\"image-link\" href=\"#\">\n                <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/18/content/image03.jpg\"}}\" alt=\"\">\n            </a>\n            <div class=\"caption\">BEDROOM STARTING AT $999</div>\n        </div>\n     </div>\n</div>\n<div style=\"padding-top: 20px;\">\n    <h2 class=\"filterproduct-title\" style=\"background-image:none;font-size:17px;text-transform:none;color:#828385;font-weight:600;\"><span class=\"content\"><strong>Top Selling Items</strong></span></h2>\n    <div id=\"featured_product\" class=\"owl-top-narrow hide-addtolinks\">\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" move_actions=\"1\" aspect_ratio=\"0\" image_width=\"212\" image_height=\"263\" template=\"owl_list.phtml\"}}\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#featured_product .owl-carousel\").owlCarousel({\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                loop: true,\n                navRewind: true,\n                margin: 10,\n                nav: true,\n                navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                dots: false,\n                responsive: {\n                    0: {\n                        items:2\n                    },\n                    768: {\n                        items:3\n                    },\n                    992: {\n                        items:4\n                    },\n                    1200: {\n                        items:5\n                    }\n                }\n            });\n        });\n    </script>\n</div>\n<div id=\"brands-slider-demo-18\" class=\"brands-slider\" style=\"padding-top: 50px;\">\n    <div class=\"owl-carousel\">\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand1.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand2.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand3.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand4.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand5.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand1.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand2.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand3.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand4.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand5.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand1.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand2.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand3.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand4.png\"}}\" alt=\"\" /></div>\n        <div class=\"item\" style=\"padding-top:10px;\"><img src=\"{{media url=\"wysiwyg/smartwave/porto/brands/brand5.png\"}}\" alt=\"\" /></div>\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#brands-slider-demo-18 .owl-carousel\").owlCarousel({\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                margin: 30,\n                nav: false,\n                navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                dots: true,\n                loop: true,\n                responsive: {\n                    0: {\n                        items:2\n                    },\n                    640: {\n                        items:3\n                    },\n                    768: {\n                        items:4\n                    },\n                    992: {\n                        items:5\n                    },\n                    1200: {\n                        items:6\n                    }\n                }\n            });\n        });\n    </script>\n</div>', '2016-12-02 19:11:58', '2016-12-02 19:11:58', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_18</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Porto - Homepage 19', '1column', NULL, NULL, 'porto_home_19', NULL, '{{block class=\"Smartwave\\Porto\\Block\\Template\" template=\"Smartwave_Megamenu::onepagecategory/onepagecategory.phtml\" aspect_ratio=\"1\" image_width=\"300\" image_height=\"300\" lazy_owl=\"1\" columns=\"{ 0:{items:2},768:{items:3},992:{items:4},1200:{items:5} }\" product_count=\"12\"}}', '2016-12-02 19:11:58', '2016-12-02 19:11:58', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_19</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Porto - Homepage 20', '1column', NULL, NULL, 'porto_home_20', NULL, '<div style=\"padding: 0 15px;margin-bottom: 50px;\">\n    <h2 class=\"filterproduct-title\"><span class=\"content\"><strong>Featured Items</strong></span></h2>\n    <div id=\"featured_product\">\n        {{block class=\"Smartwave\\Filterproducts\\Block\\Home\\FeaturedList\" name=\"featured_product\" product_count=\"10\" aspect_ratio=\"1\" image_width=\"212\" category_id=\"94\" template=\"owl_list.phtml\"}}\n    </div>\n    <script type=\"text/javascript\">\n        require([\n            \'jquery\',\n            \'owl.carousel/owl.carousel.min\'\n        ], function ($) {\n            $(\"#featured_product .owl-carousel\").owlCarousel({\n                autoplay: true,\n                autoplayTimeout: 5000,\n                autoplayHoverPause: true,\n                loop: true,\n                navRewind: true,\n                margin: 10,\n                nav: false,\n                navText: [\"<em class=\'porto-icon-left-open-huge\'></em>\",\"<em class=\'porto-icon-right-open-huge\'></em>\"],\n                dots: true,\n                responsive: {\n                    0: {\n                        items:2\n                    },\n                    768: {\n                        items:3\n                    },\n                    992: {\n                        items:4\n                    },\n                    1200: {\n                        items:5\n                    }\n                }\n            });\n        });\n    </script>\n</div>\n<div id=\"home-content-slider-demo-20\" class=\"owl-carousel owl-bottom-narrow owl-banner-carousel\">\n    <div class=\"item\" style=\"position:relative;\">\n        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/content/home_shoes.jpg\"}}\" alt=\"\" />\n        <div class=\"content\" style=\"position:absolute;right:15%;top:20%\">\n            <h3>Adidas Ultra Boost</h3>\n            <p><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/content/shoes.png\"}}\" alt=\"\" /></p>\n            <a href=\"#\">Shop Now</a>\n        </div>\n    </div>\n    <div class=\"item\" style=\"position:relative;\">\n        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/content/home_shoes.jpg\"}}\" alt=\"\" />\n        <div class=\"content\" style=\"position:absolute;right:15%;top:20%\">\n            <h3>Adidas Ultra Boost</h3>\n            <p><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/content/shoes.png\"}}\" alt=\"\" /></p>\n            <a href=\"#\">Shop Now</a>\n        </div>\n    </div>\n    <div class=\"item\" style=\"position:relative;\">\n        <img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/content/home_shoes.jpg\"}}\" alt=\"\" />\n        <div class=\"content\" style=\"position:absolute;right:15%;top:20%\">\n            <h3>Adidas Ultra Boost</h3>\n            <p><img src=\"{{media url=\"wysiwyg/smartwave/porto/homepage/20/content/shoes.png\"}}\" alt=\"\" /></p>\n            <a href=\"#\">Shop Now</a>\n        </div>\n    </div>\n</div>\n<script type=\"text/javascript\">\n    require([\n        \'jquery\',\n        \'owl.carousel/owl.carousel.min\'\n    ], function ($) {\n        var owl_20 = $(\"#home-content-slider-demo-20\").owlCarousel({\n            items: 1,\n            autoplay: true,\n            autoplayTimeout: 5000,\n            autoplayHoverPause: true,\n            dots: true,\n            navRewind: true,\n            animateIn: \'fadeIn\',\n            animateOut: \'fadeOut\',\n            loop: true,\n            nav: false,\n            navText: [\"<em class=\'porto-icon-chevron-left\'></em>\",\"<em class=\'porto-icon-chevron-right\'></em>\"]\n        });\n    });\n</script>\n{{block class=\"Smartwave\\Porto\\Block\\Template\" template=\"ajaxproducts/ajaxproducts.phtml\"}}\n<div class=\"full-width-image\" style=\"background:url({{media url=\"wysiwyg/smartwave/porto/homepage/20/content/home_golf.jpg\"}}) center no-repeat;background-size: cover;\">\n    <h3>Explore the best of you.</h3>\n    <a href=\"#\">Shop By Golf</a>\n</div>\n<style type=\"text/css\">\n@media (min-width: 768px) {\n    #featured_product {\n        padding: 0 85px;\n    }\n}\nh2.filterproduct-title {\n    background: none;\n    font-size: 40px;\n    font-weight: 600;\n    line-height: 1;\n    text-align: center;\n    color: #000;\n    margin-top: 90px;\n    margin-bottom: 80px;\n}\n.filterproduct-title .content {\n    padding: 0;\n    background-color: transparent;\n}\nbody.layout-fullwidth.cms-index-index .page-main {\n    padding: 0;\n}\n.columns .column.main {\n    padding: 0;\n}\n.owl-theme .owl-controls {\n    margin: 0;\n}\n#home-content-slider-demo-20.owl-theme .owl-dots .owl-dot span {\n    background: transparent;\n    border: 2px solid #fff;\n}\n#home-content-slider-demo-20.owl-theme .owl-dots .owl-dot.active span, #home-content-slider-demo-20 .owl-theme .owl-dots .owl-dot:hover span {\n    background: #fff;\n}\n#home-content-slider-demo-20.owl-bottom-narrow .owl-controls {\n    bottom: 50px;\n}\n.product-item-photo {\n    padding: 0;\n    border: 0;\n}\n.product.actions, .product-item .product-reviews-summary {\n    display: none;\n}\n.product-item-name.product.name > a {\n    font-size: 12px;\n    font-weight: 600;\n    text-transform: uppercase;\n    color: #000;\n}\n.product-item-name.product.name > a:hover {\n    text-decoration: none;\n}\n.page-header.type13 {\n    background: transparent;\n    position: absolute;\n    left: 0;\n    top: 0;\n    width: 100%;\n    border: 0;\n}\n@media (max-width: 767px) {\n    h2.filterproduct-title {\n        margin: 40px 0;\n        font-size: 25px;\n    }\n    #home-content-slider-demo-20.owl-bottom-narrow .owl-controls {\n        bottom: 5px;\n    }\n}\n</style>', '2016-12-02 19:11:58', '2016-12-02 19:11:58', 1, 0, '<referenceContainer name=\"page.top\">\n    <block class=\"Magento\\Cms\\Block\\Block\" name=\"home_slider\">\n        <arguments>\n            <argument name=\"block_id\" xsi:type=\"string\">porto_homeslider_20</argument>\n        </arguments>\n    </block>\n</referenceContainer>', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Porto - About Us', '1column', NULL, NULL, 'about-porto', NULL, '<br/>\n<div class=\"entry-content\">\n    <div class=\"row\">\n        <div class=\"row-wrapper container\">\n            <div class=\"row\">\n                <div class=\"col-md-12\">\n                    <h2 class=\"word-rotator-title\">The New Way to <strong><span class=\"word-rotate\"><span class=\"word-rotate-items\" style=\"top: 0px;\"><span>success.</span><span>advance.</span><span>progress.</span></span></span></strong></h2>\n                </div>\n            </div>\n        </div>\n    </div>\n    <div class=\"row\">\n        <div class=\"row-wrapper container\">\n            <div class=\"row\">\n                <div class=\"col-md-10\">\n                    <p class=\"lead\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla non <span class=\"alternative-font\">metus.</span> pulvinar. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut eu risus enim, ut pulvinar lectus. Sed hendrerit nibh.</p> \n                </div>\n                <div class=\"col-md-2\">\n                    <a class=\"btn btn-primary push-top\" title=\"Join Our Team!\" href=\"#\">Join Our Team!</a>\n                </div> \n            </div>\n        </div>\n    </div>\n    <div class=\"row\">\n        <div class=\"row-wrapper container\">\n            <div class=\"row\">\n                <div class=\"col-md-12\">\n                    <hr class=\"tall\"/>\n                </div>\n            </div>\n        </div>\n    </div>\n    <div class=\"row\">\n        <div class=\"row-wrapper container\">\n            <div class=\"row\">\n                <div class=\"col-md-12\">\n                    <h3 class=\"\"><strong>Who</strong> We Are</h3>\n                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc <a href=\"#\">vehicula</a> lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing sit amet. In eu justo a felis faucibus ornare vel id metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra leo. Nullam convallis, arcu vel pellentesque sodales, nisi est varius diam, ac ultrices sem ante quis sem. Proin ultricies volutpat sapien, nec scelerisque ligula mollis lobortis. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, ut feugiat nibh adipiscing <span class=\"alternative-font\">metus</span> sit amet. In eu justo a felis faucibus ornare vel id metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula. Fusce eget metus lorem, ac viverra leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In eu libero ligula.</p>\n                </div>\n            </div>\n        </div>\n    </div>\n    <div class=\"row\">\n        <div class=\"row-wrapper container\">\n            <div class=\"row\">\n                <div class=\"col-md-12\">\n                    <hr class=\"tall\"/>\n                </div>\n            </div>\n        </div>\n    </div>\n    <div class=\"row\">\n        <div class=\"row-wrapper container\">\n            <div class=\"row\">\n                <div class=\"col-md-12\">\n                    <h3 class=\"push-top\">Our <strong>History</strong></h3>\n                </div>\n            </div>\n        </div>\n    </div>\n    <div class=\"row\">\n        <div class=\"row-wrapper container\" style=\"margin-bottom: 25px;\">\n            <div class=\"row\">\n                <div class=\"col-md-12\">\n                    <div class=\"history\">\n                        <div class=\"thumb\">\n                            <img width=\"150\" height=\"150\" src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/office-1-150x150.jpg\"}}\" class=\"attachment-thumbnail\" alt=\"office-1\"/>\n                        </div>\n                        <div class=\"featured-box\" style=\"height: auto;\">\n                            <div class=\"box-content\">\n                                <h4><strong>2012</strong></h4>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus,</p>\n                            </div>\n                        </div><!--.feature-box-->\n                    </div><!--.history-->\n                    <div class=\"history\">\n                        <div class=\"thumb\">\n                            <img width=\"150\" height=\"150\" src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/office-2-150x150.jpg\"}}\" class=\"attachment-thumbnail\" alt=\"office-2\"/>\n                        </div>\n                        <div class=\"featured-box\" style=\"height: auto;\">\n                            <div class=\"box-content\">\n                                <h4><strong>2010</strong></h4>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia.</p>\n                            </div>\n                        </div><!--.feature-box-->\n                    </div><!--.history-->\n                    <div class=\"history\">\n                        <div class=\"thumb\">\n                            <img width=\"150\" height=\"150\" src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/office-3-150x150.jpg\"}}\" class=\"attachment-thumbnail\" alt=\"office-3\"/>\n                        </div>\n                        <div class=\"featured-box\" style=\"height: auto;\">\n                            <div class=\"box-content\">\n                                <h4><strong>2005</strong></h4>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus,</p>\n                            </div>\n                        </div><!--.feature-box-->\n                    </div><!--.history-->\n                    <div class=\"history\">\n                        <div class=\"thumb\">\n                            <img width=\"150\" height=\"150\" src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/office-4-150x150.jpg\"}}\" class=\"attachment-thumbnail\" alt=\"office-4\"/>\n                        </div>\n                        <div class=\"featured-box\" style=\"height: auto;\">\n                            <div class=\"box-content\">\n                                <h4><strong>2000</strong></h4>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus, Curabitur pellentesque neque eget diam posuere porta. Quisque ut nulla at nunc vehicula lacinia. Proin adipiscing porta tellus,</p>\n                            </div>\n                        </div><!--.feature-box-->\n                    </div><!--.history-->\n                </div>\n            </div>\n        </div>\n    </div>\n</div>', '2016-12-02 19:11:59', '2016-12-02 19:11:59', 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Porto - About Us 2', '1column', NULL, NULL, 'about-porto-2', NULL, '<div class=\"content-row\" style=\"border: 0;\">\n    <h2>THE NEW WAY TO SUCCESS</h2>\n    <h4>Who we are</h4>\n    <div class=\"row\">\n        <div class=\"col-md-6\">\n            <p>Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</p>\n            <p>Nulla felis nibh, bibendum a leo ut, egestas ornare felis. Nam pretium mauris justo, eget commodo est fringilla vel. Proin condimentum, lacus sit amet finibus gravida, sapien ligula mattis leo, sit amet mattis leo lacus sit amet lectus. Nulla facilisi. Etiam porta iaculis velit id pulvinar. Sed dolor odio, eleifend eget aliquam vitae, efficitur vitae dolor. Integer ornare neque ac leo sollicitudin, at vestibulum ante scelerisque. Nullam ut elit sed lorem tempus feugiat in et lectus. Mauris interdum molestie placerat. Nullam dolor nunc, elementum et tincidunt id, vestibulum quis turpis. Integer imperdiet a eros a laoreet. Nam mattis vel ligula non imperdiet. Suspendisse potenti. Fusce purus sem, dapibus eu fermentum eget, aliquam vehicula ligula.</p>\n        </div>\n        <div class=\"col-md-6\">\n            <p>Quisque congue dignissim dui sed luctus. Morbi nec mi vitae magna finibus ullamcorper. Etiam mattis blandit convallis. Suspendisse eu elementum leo. Vestibulum molestie nunc et efficitur egestas. Vivamus arcu lectus, laoreet vel consectetur bibendum, elementum non nunc. Proin porttitor velit odio, ac mattis quam tincidunt eget. Fusce semper nunc eget efficitur efficitur. Nam ullamcorper, enim id tincidunt feugiat, velit mauris fermentum nulla, at tempor eros turpis sit amet massa. Ut a semper lectus, sed hendrerit risus. In hac habitasse platea dictumst. Curabitur venenatis cursus posuere. Praesent turpis nisi, aliquam at facilisis non, sagittis vel urna. Donec diam lorem, feugiat vitae laoreet in, sagittis a lorem.</p>\n            <p>Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</p>\n        </div>\n    </div>\n</div>\n<div class=\"content-row\">\n    <h2>OUR HISTORY</h2>\n    <div class=\"row\" style=\"margin-bottom: 20px;\">\n        <div class=\"col-md-5\">\n            <div id=\"custom-owl-slider-aboutus-1\" class=\"owl-carousel\">\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/slide1.jpg\"}}\" alt=\"\" />\n                </div>\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/slide2.jpg\"}}\" alt=\"\" />\n                </div>\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/slide3.jpg\"}}\" alt=\"\" />\n                </div>\n            </div>\n            <script type=\"text/javascript\">\n                require([\n                    \'jquery\',\n                    \'owl.carousel/owl.carousel.min\'\n                ], function ($) {\n                    $(\"#custom-owl-slider-aboutus-1\").owlCarousel({\n                        items: 1,\n                        autoplay: false,\n                        autoplayTimeout: 5000,\n                        autoplayHoverPause: true,\n                        dots: true,\n                        nav: false,\n                        navRewind: true,\n                        animateIn: \'fadeIn\',\n                        animateOut: \'fadeOut\',\n                        loop: true\n                    });\n                });\n            </script>\n        </div>\n        <div class=\"col-md-7\">\n            <h4>2014</h4>\n            <p>Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</p>\n            <p>Nulla felis nibh, bibendum a leo ut, egestas ornare felis. Nam pretium mauris justo, eget commodo est fringilla vel. Proin condimentum, lacus sit amet finibus gravida, sapien ligula mattis leo, sit amet mattis leo lacus sit amet lectus. Nulla facilisi. Etiam porta iaculis velit id pulvinar. Sed dolor odio, eleifend eget aliquam vitae, efficitur vitae dolor. Integer ornare neque ac leo sollicitudin, at vestibulum ante scelerisque. Nullam ut elit sed lorem tempus feugiat in et lectus. Mauris interdum molestie placerat. Nullam dolor nunc, elementum et tincidunt id, vestibulum quis turpis. Integer imperdiet a eros a laoreet. Nam mattis vel ligula non imperdiet. Suspendisse potenti. Fusce purus sem, dapibus eu fermentum eget, aliquam vehicula ligula.</p>\n        </div>\n    </div>\n    <div class=\"row\" style=\"margin-bottom: 20px;\">\n        <div class=\"col-md-7\">\n            <h4>2015</h4>\n            <p>Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</p>\n            <p>Nulla felis nibh, bibendum a leo ut, egestas ornare felis. Nam pretium mauris justo, eget commodo est fringilla vel. Proin condimentum, lacus sit amet finibus gravida, sapien ligula mattis leo, sit amet mattis leo lacus sit amet lectus. Nulla facilisi. Etiam porta iaculis velit id pulvinar. Sed dolor odio, eleifend eget aliquam vitae, efficitur vitae dolor. Integer ornare neque ac leo sollicitudin, at vestibulum ante scelerisque. Nullam ut elit sed lorem tempus feugiat in et lectus. Mauris interdum molestie placerat. Nullam dolor nunc, elementum et tincidunt id, vestibulum quis turpis. Integer imperdiet a eros a laoreet. Nam mattis vel ligula non imperdiet. Suspendisse potenti. Fusce purus sem, dapibus eu fermentum eget, aliquam vehicula ligula.</p>\n        </div>\n        <div class=\"col-md-5\">\n            <div id=\"custom-owl-slider-aboutus-2\" class=\"owl-carousel\">\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/slide2.jpg\"}}\" alt=\"\" />\n                </div>\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/slide3.jpg\"}}\" alt=\"\" />\n                </div>\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/slide1.jpg\"}}\" alt=\"\" />\n                </div>\n            </div>\n            <script type=\"text/javascript\">\n                require([\n                    \'jquery\',\n                    \'owl.carousel/owl.carousel.min\'\n                ], function ($) {\n                    $(\"#custom-owl-slider-aboutus-2\").owlCarousel({\n                        items: 1,\n                        autoplay: false,\n                        autoplayTimeout: 5000,\n                        autoplayHoverPause: true,\n                        dots: true,\n                        nav: false,\n                        navRewind: true,\n                        animateIn: \'fadeIn\',\n                        animateOut: \'fadeOut\',\n                        loop: true\n                    });\n                });\n            </script>\n        </div>\n    </div>\n    <div class=\"row\" style=\"margin-bottom: 20px;\">\n        <div class=\"col-md-5\">\n            <div id=\"custom-owl-slider-aboutus-3\" class=\"owl-carousel\">\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/slide3.jpg\"}}\" alt=\"\" />\n                </div>\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/slide1.jpg\"}}\" alt=\"\" />\n                </div>\n                <div class=\"item\">\n                    <img src=\"{{media url=\"wysiwyg/smartwave/porto/aboutus/slide2.jpg\"}}\" alt=\"\" />\n                </div>\n            </div>\n            <script type=\"text/javascript\">\n                require([\n                    \'jquery\',\n                    \'owl.carousel/owl.carousel.min\'\n                ], function ($) {\n                    $(\"#custom-owl-slider-aboutus-3\").owlCarousel({\n                        items: 1,\n                        autoplay: false,\n                        autoplayTimeout: 5000,\n                        autoplayHoverPause: true,\n                        dots: true,\n                        nav: false,\n                        navRewind: true,\n                        animateIn: \'fadeIn\',\n                        animateOut: \'fadeOut\',\n                        loop: true\n                    });\n                });\n            </script>\n        </div>\n        <div class=\"col-md-7\">\n            <h4>2016</h4>\n            <p>Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</p>\n            <p>Nulla felis nibh, bibendum a leo ut, egestas ornare felis. Nam pretium mauris justo, eget commodo est fringilla vel. Proin condimentum, lacus sit amet finibus gravida, sapien ligula mattis leo, sit amet mattis leo lacus sit amet lectus. Nulla facilisi. Etiam porta iaculis velit id pulvinar. Sed dolor odio, eleifend eget aliquam vitae, efficitur vitae dolor. Integer ornare neque ac leo sollicitudin, at vestibulum ante scelerisque. Nullam ut elit sed lorem tempus feugiat in et lectus. Mauris interdum molestie placerat. Nullam dolor nunc, elementum et tincidunt id, vestibulum quis turpis. Integer imperdiet a eros a laoreet. Nam mattis vel ligula non imperdiet. Suspendisse potenti. Fusce purus sem, dapibus eu fermentum eget, aliquam vehicula ligula.</p>\n        </div>\n    </div>\n</div>\n<style type=\"text/css\">\n.content-row {\n    border-top: 1px solid #dfdfdf;\n    padding: 40px 0;\n}\n.content-row:first-child {\n    border-top: 0;\n}\nh2 {\n    font-family: \"Oswald\";\n    font-size: 30px;\n    color: #000;\n    font-weight: 700;\n    letter-spacing: 1px;\n    margin: 0;\n    margin-bottom: 60px;\n    line-height: 1;\n}\nh4 {\n    font-size: 20px;\n    font-weight: 400;\n    color: #000;\n    line-height: 1;\n    margin: 0;\n    margin-top: 5px;\n    margin-bottom: 30px;\n}\n@media(min-width: 1680px) {\n    .content-row {\n        padding: 60px 100px;\n    }\n    .content-row > .row {\n        margin: 0 -30px;\n    }\n    .content-row > .row > div {\n        padding: 0 30px;\n    }\n    h2 {\n        font-size: 40px;\n        margin-bottom: 80px;\n    }\n    h4 {\n        font-size: 25px;\n        margin-bottom: 40px;\n    }\n}\n@media(min-width: 1900px) {\n    .content-row {\n        padding: 80px 190px;\n    }\n    .content-row > .row {\n        margin: 0 -50px;\n    }\n    .content-row > .row > div {\n        padding: 0 50px;\n    }\n    h2 {\n        font-size: 50px;\n        margin-bottom: 100px;\n    }\n    h4 {\n        font-size: 30px;\n        margin-bottom: 50px;\n    }\n}\n</style>', '2016-12-02 19:11:59', '2016-12-02 19:11:59', 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(72, '404 Not Found 2', '1column', NULL, NULL, 'no-route-2', NULL, '<h1 style=\"text-align:center;margin: 20px 0; font-size: 70px;margin-top:70px\"><span style=\"display: inline-block;vertical-align:middle;\">404</span><i class=\"porto-icon-doc\" style=\"display: inline-block;vertical-align:middle;\"></i></h1>\n<p style=\"text-align:center; font-size: 15px;\">You might want to check that URL again or head over to our <a href=\"{{config path=\"web/unsecure/base_url\"}}\">homepage.</a></p>', '2016-12-02 19:11:59', '2016-12-02 19:11:59', 1, 0, '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_store`
--

CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_config_data`
--

CREATE TABLE `core_config_data` (
  `config_id` int(10) UNSIGNED NOT NULL COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Config Data';

--
-- Dumping data for table `core_config_data`
--

INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'web/seo/use_rewrites', '1'),
(4, 'default', 0, 'general/locale/code', 'en_GB'),
(5, 'default', 0, 'web/secure/use_in_frontend', NULL),
(6, 'default', 0, 'web/secure/use_in_adminhtml', NULL),
(7, 'default', 0, 'general/locale/timezone', 'Africa/Nairobi'),
(8, 'default', 0, 'currency/options/base', 'KES'),
(9, 'default', 0, 'currency/options/default', 'KES'),
(10, 'default', 0, 'currency/options/allow', 'KES'),
(11, 'default', 0, 'general/region/display_all', '1'),
(12, 'default', 0, 'general/region/state_required', 'AT,BR,CA,EE,FI,LV,LT,RO,ES,CH,US'),
(13, 'default', 0, 'catalog/category/root_id', '2'),
(14, 'default', 0, 'web/default/cms_home_page', 'porto_home_1'),
(15, 'default', 0, 'web/default/cms_no_route', 'no-route-2'),
(16, 'default', 0, 'cms/wysiwyg/enabled', 'hidden'),
(17, 'default', 0, 'design/header/logo_width', NULL),
(18, 'default', 0, 'design/header/logo_height', NULL),
(20, 'default', 0, 'dev/js/merge_files', '1'),
(21, 'default', 0, 'porto_settings/general/boxed', 'wide'),
(22, 'default', 0, 'porto_settings/general/layout', '1170'),
(23, 'default', 0, 'porto_settings/general/disable_border_radius', '0'),
(24, 'default', 0, 'porto_settings/general/show_site_notice', '0'),
(25, 'default', 0, 'porto_settings/header/header_type', '2'),
(26, 'default', 0, 'porto_settings/header/static_block', 'porto_custom_block_for_header'),
(27, 'default', 0, 'porto_settings/header/sticky_header_logo', '0'),
(28, 'default', 0, 'porto_settings/footer/footer_top', '0'),
(29, 'default', 0, 'porto_settings/footer/footer_top_block', 'custom'),
(30, 'default', 0, 'porto_settings/footer/footer_top_custom', 'porto_footer_top_custom_block'),
(31, 'default', 0, 'porto_settings/footer/footer_middle', '1'),
(32, 'default', 0, 'porto_settings/footer/footer_ribbon', '1'),
(33, 'default', 0, 'porto_settings/footer/footer_ribbon_text', 'Ribbon Text'),
(34, 'default', 0, 'porto_settings/footer/footer_middle_column_1', 'custom'),
(35, 'default', 0, 'porto_settings/footer/footer_middle_column_1_custom', 'porto_footer_links'),
(36, 'default', 0, 'porto_settings/footer/footer_middle_column_1_size', '3'),
(37, 'default', 0, 'porto_settings/footer/footer_middle_column_2', 'custom'),
(38, 'default', 0, 'porto_settings/footer/footer_middle_column_2_custom', 'porto_footer_contact_information'),
(39, 'default', 0, 'porto_settings/footer/footer_middle_column_2_size', '3'),
(40, 'default', 0, 'porto_settings/footer/footer_middle_column_3', 'custom'),
(41, 'default', 0, 'porto_settings/footer/footer_middle_column_3_custom', 'porto_footer_features'),
(42, 'default', 0, 'porto_settings/footer/footer_middle_column_3_size', '3'),
(43, 'default', 0, 'porto_settings/footer/footer_middle_column_4', 'newsletter'),
(44, 'default', 0, 'porto_settings/footer/footer_middle_column_4_custom', 'porto_footer_links'),
(45, 'default', 0, 'porto_settings/footer/footer_middle_column_4_size', '3'),
(46, 'default', 0, 'porto_settings/footer/footer_middle_2', '0'),
(47, 'default', 0, 'porto_settings/footer/footer_middle_2_column_1', 'custom'),
(48, 'default', 0, 'porto_settings/footer/footer_middle_2_column_1_custom', 'porto_footer_links'),
(49, 'default', 0, 'porto_settings/footer/footer_middle_2_column_1_size', '3'),
(50, 'default', 0, 'porto_settings/footer/footer_middle_2_column_2', 'custom'),
(51, 'default', 0, 'porto_settings/footer/footer_middle_2_column_2_custom', 'porto_footer_links'),
(52, 'default', 0, 'porto_settings/footer/footer_middle_2_column_2_size', '3'),
(53, 'default', 0, 'porto_settings/footer/footer_middle_2_column_3', 'custom'),
(54, 'default', 0, 'porto_settings/footer/footer_middle_2_column_3_custom', 'porto_footer_links'),
(55, 'default', 0, 'porto_settings/footer/footer_middle_2_column_3_size', '3'),
(56, 'default', 0, 'porto_settings/footer/footer_middle_2_column_4', 'custom'),
(57, 'default', 0, 'porto_settings/footer/footer_middle_2_column_4_custom', 'porto_footer_links'),
(58, 'default', 0, 'porto_settings/footer/footer_middle_2_column_4_size', '3'),
(59, 'default', 0, 'porto_settings/footer/footer_bottom', '1'),
(60, 'default', 0, 'porto_settings/footer/footer_store_switcher', '0'),
(61, 'default', 0, 'porto_settings/footer/footer_logo_src', 'default/logo_footer.png'),
(62, 'default', 0, 'porto_settings/footer/footer_bottom_copyrights', '&copy;Copyright 2016 by SW-THEMES. All Rights Reserved.'),
(63, 'default', 0, 'porto_settings/footer/footer_bottom_custom_1', 'porto_footer_bottom_custom_block'),
(64, 'default', 0, 'porto_settings/footer/footer_bottom_custom_2', NULL),
(65, 'default', 0, 'porto_settings/category/alternative_image', '1'),
(66, 'default', 0, 'porto_settings/category/aspect_ratio', '0'),
(67, 'default', 0, 'porto_settings/category/ratio_width', '300'),
(68, 'default', 0, 'porto_settings/category/ratio_height', '400'),
(69, 'default', 0, 'porto_settings/category/rating_star', '1'),
(70, 'default', 0, 'porto_settings/category/product_price', '1'),
(71, 'default', 0, 'porto_settings/category/actions', '1'),
(72, 'default', 0, 'porto_settings/category/addtocompare', '1'),
(73, 'default', 0, 'porto_settings/category/addtowishlist', '1'),
(74, 'default', 0, 'porto_settings/category/category_description', 'main_column'),
(75, 'default', 0, 'porto_settings/category/side_custom_block', 'porto_category_side_custom_block'),
(76, 'default', 0, 'porto_settings/category_grid/columns', '4'),
(77, 'default', 0, 'porto_settings/category_grid/move_actions', '0'),
(78, 'default', 0, 'porto_settings/product/product_image_size', '6'),
(79, 'default', 0, 'porto_settings/product/side_custom_block', 'porto_product_side_custom_block'),
(80, 'default', 0, 'porto_settings/newsletter/logo_src', 'default/image003.png'),
(81, 'default', 0, 'porto_settings/contacts/enable', '1'),
(82, 'default', 0, 'porto_settings/contacts/full_width', '0'),
(83, 'default', 0, 'porto_settings/contacts/address', 'Porto2 Store'),
(84, 'default', 0, 'porto_settings/contacts/latitude', '-34.398'),
(85, 'default', 0, 'porto_settings/contacts/longitude', '150.884'),
(86, 'default', 0, 'porto_settings/contacts/zoom', '18'),
(87, 'default', 0, 'porto_settings/contacts/infoblock', '<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n    <i class=\"porto-icon-phone\"></i>\r\n    <p>0201 203 2032</p>\r\n    <p>0201 203 2032</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n    <i class=\"porto-icon-mobile\"></i>\r\n    <p>201-123-3922</p>\r\n    <p>302-123-3928</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n    <i class=\"porto-icon-mail-alt\"></i>\r\n    <p>porto@gmail.com</p>\r\n    <p>porto@portotemplate.com</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n    <i class=\"porto-icon-skype\"></i>\r\n    <p>porto_skype</p>\r\n    <p>proto_template</p>\r\n</div>\r\n</div>'),
(88, 'default', 0, 'porto_settings/contacts/customblock', NULL),
(89, 'default', 0, 'porto_settings/custom_settings/custom_style', '.page-header.type2 .block-search input{\r\nborder-radius: 0;\r\n}\r\n.block-search {\r\nwidth: 550px;\r\nmargin-left: 20px;\r\n}\r\n.logo{\r\nmargin: 13px 0;\r\n}\r\n.nav-sections-item-content .navigation {\r\ndisplay: none;\r\n}\r\n\r\n.homepage-bar .col-md-4 {\r\n    padding-top: 5px;\r\n    padding-bottom: 5px;\r\n}\r\n.owl-top-narrow .owl-theme .owl-controls {\r\ndisplay: none;\r\n}\r\n.filterproduct-title{\r\ncolor: #FCD204;\r\n}\r\n.price-box .price {\r\n    font-family: \'Oswald\';\r\n    font-size: 15px;\r\n    letter-spacing: 0.005em;\r\n    color: #2b2b2d;\r\n    font-weight: 400;\r\n}\r\n.products-grid .product-item-details .product-item-actions .tocart {\r\n    text-transform: uppercase;\r\n    font-size: 12.53px;\r\n    font-family: \'Oswald\';\r\n    font-weight: 400;\r\n    letter-spacing: 0.025em;\r\n    color: #6f6e6c;\r\n    line-height: 30px;\r\n    background-color: #f4f4f4;\r\n    border-color: #f4f4f4;\r\n}\r\n.products-grid:not(.side-list) .product-item .product-item-info .product.name a {\r\n    font-size: 12px;\r\nfont-family: \'Open Sans\';\r\n}\r\n.product.name a {\r\n    color: #165377;\r\n}\r\n.product-item-name, .product.name a {\r\n    font-weight: 400;\r\n}\r\n.page-header.type2  .panel.wrapper {\r\ncolor: #ffffff;\r\nfont-weight: bold;\r\n}\r\n.filterproduct-title {\r\ncolor: #165377;\r\n}\r\n.page-header.type2{\r\nposition: fixed;\r\nwidth: 100%;\r\n}\r\n.page-header.type2 .nav-sections {\r\ndisplay: none;\r\n}\r\n.page-header.type2 .panel.header .header.links  li  a, .page-header.type2 .header.panel  .header.links  li  a{\r\ncolor: #ffffff;\r\nmargin-right: 10px;\r\n}\r\n.page-header.type2 .custom-block a{\r\ncolor: #ffffff;\r\nfont-weight: bold;\r\n}\r\n.page-header.type2 a{\r\nfont-weight: bold;\r\n}\r\n.page-header.type2 .custom-block{\r\nfont-weight: bold;\r\n}\r\n.footer-bottom{\r\ndisplay: none;\r\n}\r\n.page-header .switcher {\r\n    float: right;\r\n}\r\n#categories-btn{\r\ntext-transform: uppercase;\r\nfont-weight: bold;\r\nmargin-left: 10px;\r\ncolor: #ffffff;\r\nbackground-color: #165377;\r\nborder: 1px solid #ffffff;\r\n}\r\n.home-side-menu-type2 {\r\nz-index: 1000;\r\nwidth: 250px;\r\nmargin-top: 93px;\r\nborder-right: 1px solid rgb(204, 204, 204);\r\nposition: fixed;\r\nbackground-color: rgb(255, 255, 255);\r\nheight: 84vh;\r\noverflow-y: scroll;\r\n}\r\n.page-main {\r\nmargin-top: 70px;\r\n}\r\n#custsidemenu{\r\ndisplay: none;\r\n}\r\n.checkout-cart-index .page-main {\r\n    margin-top: 100px;\r\n}\r\n.minicart-items .product-item-name {\r\n    font-size: 12px;\r\n}'),
(90, 'default', 0, 'porto_settings/custom_settings/custom_style_2', NULL),
(91, 'default', 0, 'porto_design/general/theme_color', '165377'),
(92, 'default', 0, 'porto_design/font/custom', '0'),
(93, 'default', 0, 'porto_design/font/font_size', NULL),
(94, 'default', 0, 'porto_design/font/font_family', NULL),
(95, 'default', 0, 'porto_design/font/custom_font_family', NULL),
(96, 'default', 0, 'porto_design/font/google_font_family', NULL),
(97, 'default', 0, 'porto_design/font/char_latin_ext', NULL),
(98, 'default', 0, 'porto_design/font/char_subset', NULL),
(99, 'default', 0, 'porto_design/colors/custom', '0'),
(100, 'default', 0, 'porto_design/colors/text_color', NULL),
(101, 'default', 0, 'porto_design/colors/link_color', NULL),
(102, 'default', 0, 'porto_design/colors/link_hover_color', NULL),
(103, 'default', 0, 'porto_design/colors/button_bg_color', NULL),
(104, 'default', 0, 'porto_design/colors/button_text_color', NULL),
(105, 'default', 0, 'porto_design/colors/button_hover_bg_color', NULL),
(106, 'default', 0, 'porto_design/colors/button_hover_text_color', NULL),
(107, 'default', 0, 'porto_design/colors/addtowishlist_color', NULL),
(108, 'default', 0, 'porto_design/colors/addtowishlist_hover_color', NULL),
(109, 'default', 0, 'porto_design/colors/addtocompare_color', NULL),
(110, 'default', 0, 'porto_design/colors/addtocompare_hover_color', NULL),
(111, 'default', 0, 'porto_design/colors/breadcrumbs_bg_color', NULL),
(112, 'default', 0, 'porto_design/colors/breadcrumbs_color', NULL),
(113, 'default', 0, 'porto_design/colors/breadcrumbs_links_color', NULL),
(114, 'default', 0, 'porto_design/colors/breadcrumbs_links_hover_color', NULL),
(115, 'default', 0, 'porto_design/colors/sale_bg_color', NULL),
(116, 'default', 0, 'porto_design/colors/sale_font_color', NULL),
(117, 'default', 0, 'porto_design/colors/new_bg_color', NULL),
(118, 'default', 0, 'porto_design/colors/new_font_color', NULL),
(119, 'default', 0, 'porto_design/header/custom', '1'),
(120, 'default', 0, 'porto_design/header/header_bgcolor', 'FCD204'),
(121, 'default', 0, 'porto_design/header/header_bg_image', NULL),
(122, 'default', 0, 'porto_design/header/header_bordercolor', NULL),
(123, 'default', 0, 'porto_design/header/header_textcolor', 'FFFFFF'),
(124, 'default', 0, 'porto_design/header/header_linkcolor', '165377'),
(125, 'default', 0, 'porto_design/header/header_top_links_bgcolor', '165377'),
(126, 'default', 0, 'porto_design/header/header_top_links_color', 'FFFFFF'),
(127, 'default', 0, 'porto_design/header/header_menu_bgcolor', NULL),
(128, 'default', 0, 'porto_design/header/header_menu_color', NULL),
(129, 'default', 0, 'porto_design/header/header_menu_hover_bgcolor', NULL),
(130, 'default', 0, 'porto_design/header/header_menu_hover_color', NULL),
(131, 'default', 0, 'porto_design/header/header_menu_classicmenu_bgcolor', NULL),
(132, 'default', 0, 'porto_design/header/header_menu_classicmenu_bordercolor', NULL),
(133, 'default', 0, 'porto_design/header/header_menu_classicmenu_color', NULL),
(134, 'default', 0, 'porto_design/header/header_menu_classicmenu_hover_bgcolor', NULL),
(135, 'default', 0, 'porto_design/header/header_menu_classicmenu_hover_color', NULL),
(136, 'default', 0, 'porto_design/header/header_search_bgcolor', 'FFFFFF'),
(137, 'default', 0, 'porto_design/header/header_search_text_color', '165377'),
(138, 'default', 0, 'porto_design/header/header_search_bordercolor', 'F9BE0F'),
(139, 'default', 0, 'porto_design/header/header_minicart_bgcolor', NULL),
(140, 'default', 0, 'porto_design/header/header_minicart_color', NULL),
(141, 'default', 0, 'porto_design/header/header_minicart_icon_color', NULL),
(142, 'default', 0, 'porto_design/footer/custom', '1'),
(143, 'default', 0, 'porto_design/footer/footer_top_bgcolor', '165377'),
(144, 'default', 0, 'porto_design/footer/footer_top_color', 'FFFFFF'),
(145, 'default', 0, 'porto_design/footer/footer_top_link_color', 'FFFFFF'),
(146, 'default', 0, 'porto_design/footer/footer_top_link_hover_color', 'FCD204'),
(147, 'default', 0, 'porto_design/footer/footer_middle_bgcolor', '165377'),
(148, 'default', 0, 'porto_design/footer/footer_middle_color', 'FFFFFF'),
(149, 'default', 0, 'porto_design/footer/footer_middle_link_color', 'FFFFFF'),
(150, 'default', 0, 'porto_design/footer/footer_middle_link_hover_color', 'FCD204'),
(151, 'default', 0, 'porto_design/footer/footer_middle_title_color', 'FFFFFF'),
(152, 'default', 0, 'porto_design/footer/footer_middle_links_icon_color', NULL),
(153, 'default', 0, 'porto_design/footer/footer_middle_ribbon_bgcolor', NULL),
(154, 'default', 0, 'porto_design/footer/footer_middle_ribbon_shadow_color', NULL),
(155, 'default', 0, 'porto_design/footer/footer_middle_ribbon_color', NULL),
(156, 'default', 0, 'porto_design/footer/footer_middle_2_bgcolor', '165377'),
(157, 'default', 0, 'porto_design/footer/footer_middle_2_color', 'FFFFFF'),
(158, 'default', 0, 'porto_design/footer/footer_middle_2_link_color', 'FFFFFF'),
(159, 'default', 0, 'porto_design/footer/footer_middle_2_link_hover_color', 'FCD204'),
(160, 'default', 0, 'porto_design/footer/footer_middle_2_title_color', NULL),
(161, 'default', 0, 'porto_design/footer/footer_middle_2_links_icon_color', NULL),
(162, 'default', 0, 'porto_design/footer/footer_bottom_bgcolor', '404040'),
(163, 'default', 0, 'porto_design/footer/footer_bottom_color', 'FFFFFF'),
(164, 'default', 0, 'porto_design/footer/footer_bottom_link_color', 'FFFFFF'),
(165, 'default', 0, 'porto_design/footer/footer_bottom_link_hover_color', 'FCD204'),
(166, 'default', 0, 'porto_design/page/custom', '0'),
(167, 'default', 0, 'porto_design/page/page_bgcolor', NULL),
(168, 'default', 0, 'porto_design/page/page_bg_image', NULL),
(169, 'default', 0, 'porto_design/page/page_custom_style', NULL),
(170, 'default', 0, 'porto_design/main/custom', '0'),
(171, 'default', 0, 'porto_design/main/main_bgcolor', NULL),
(172, 'default', 0, 'porto_design/main/main_bg_image', NULL),
(173, 'default', 0, 'porto_design/main/main_custom_style', NULL),
(174, 'default', 0, 'design/head/default_title', 'GUBATO'),
(175, 'default', 0, 'design/head/title_prefix', NULL),
(176, 'default', 0, 'design/head/title_suffix', NULL),
(177, 'default', 0, 'design/head/default_description', 'Default Description'),
(178, 'default', 0, 'design/head/default_keywords', 'Gubato'),
(179, 'default', 0, 'design/head/includes', '<script>\r\nvar status=\"false\";\r\nfunction show_sidebar()\r\n{\r\ndocument.getElementById(\'custsidemenu\').style.visibility=\"visible\";\r\ndocument.getElementById(\'custsidemenu\').style.display=\"block\";\r\ndocument.getElementById(\'categories-btn\').innerHTML = \'Categories <i class=\"porto-icon-up-open\"></i>\';\r\n}\r\n\r\nfunction hide_sidebar()\r\n{\r\nif(status==\"false\"){\r\ndocument.getElementById(\'custsidemenu\').style.visibility=\"hidden\";\r\ndocument.getElementById(\'custsidemenu\').style.display=\"none\";\r\ndocument.getElementById(\'categories-btn\').innerHTML = \'Categories <i class=\"porto-icon-down-open\"></i>\';\r\n}\r\n}\r\nfunction category_click()\r\n{\r\nif(status==\"false\"){\r\nstatus=\"true\";\r\n}else{\r\nstatus=\"false\";\r\n}\r\n}\r\n</script>'),
(180, 'default', 0, 'design/head/demonotice', '0'),
(181, 'default', 0, 'design/header/logo_alt', 'Gubato'),
(182, 'default', 0, 'design/header/welcome', 'Welcome to Gubato'),
(183, 'default', 0, 'design/footer/copyright', 'Copyright © 2017 East Africa Data Handlers. All rights reserved.'),
(184, 'default', 0, 'design/footer/absolute_footer', NULL),
(185, 'default', 0, 'design/theme/theme_id', '4'),
(186, 'default', 0, 'design/pagination/pagination_frame', '5'),
(187, 'default', 0, 'design/pagination/pagination_frame_skip', NULL),
(188, 'default', 0, 'design/pagination/anchor_text_for_previous', NULL),
(189, 'default', 0, 'design/pagination/anchor_text_for_next', NULL),
(190, 'default', 0, 'design/watermark/image_size', NULL),
(191, 'default', 0, 'design/watermark/image_imageOpacity', NULL),
(192, 'default', 0, 'design/watermark/image_position', 'stretch'),
(193, 'default', 0, 'design/watermark/small_image_size', NULL),
(194, 'default', 0, 'design/watermark/small_image_imageOpacity', NULL),
(195, 'default', 0, 'design/watermark/small_image_position', 'stretch'),
(196, 'default', 0, 'design/watermark/thumbnail_size', NULL),
(197, 'default', 0, 'design/watermark/thumbnail_imageOpacity', NULL),
(198, 'default', 0, 'design/watermark/thumbnail_position', 'stretch'),
(199, 'default', 0, 'design/email/logo_alt', NULL),
(200, 'default', 0, 'design/email/logo_width', NULL),
(201, 'default', 0, 'design/email/logo_height', NULL),
(202, 'default', 0, 'design/email/header_template', 'design_email_header_template'),
(203, 'default', 0, 'design/email/footer_template', 'design_email_footer_template'),
(204, 'default', 0, 'design/watermark/swatch_image_size', NULL),
(205, 'default', 0, 'design/watermark/swatch_image_imageOpacity', NULL),
(206, 'default', 0, 'design/watermark/swatch_image_position', 'stretch'),
(207, 'default', 0, 'currency/yahoofinance/timeout', '100'),
(208, 'default', 0, 'currency/fixerio/timeout', '100'),
(209, 'default', 0, 'currency/import/service', 'yahoofinance'),
(210, 'default', 0, 'crontab/default/jobs/currency_rates_update/schedule/cron_expr', '0 0 * * *'),
(211, 'default', 0, 'currency/import/time', '00,00,00'),
(212, 'default', 0, 'currency/import/frequency', 'D'),
(213, 'default', 0, 'currency/import/error_email', NULL),
(214, 'default', 0, 'porto_settings/general/boxed_custom_style', NULL),
(215, 'default', 0, 'porto_settings/header/sticky_header', '1'),
(216, 'default', 0, 'porto_settings/header/currency_short', '0'),
(217, 'default', 0, 'porto_settings/header/language_flag', '1'),
(218, 'default', 0, 'porto_settings/footer/footer_newsletter_title', 'Be the First to Know'),
(219, 'default', 0, 'porto_settings/footer/footer_newsletter_text', 'Get all the latest information on Events,<br/>Sales and Offers. Sign up for newsletter today.'),
(220, 'default', 0, 'porto_settings/category_grid/xs_one_column', '0'),
(221, 'default', 0, 'porto_settings/category_grid/flex_grid', '0'),
(222, 'default', 0, 'porto_settings/product/prev_text', '<em class=\"porto-icon-left-open\"></em>'),
(223, 'default', 0, 'porto_settings/product/next_text', '<em class=\"porto-icon-right-open\"></em>'),
(224, 'default', 0, 'porto_settings/product/prev_next', '1'),
(225, 'default', 0, 'porto_settings/product/enable_addtocart_sticky', '0'),
(226, 'default', 0, 'porto_settings/product/tab_style', NULL),
(227, 'default', 0, 'porto_settings/product/move_tab', '0'),
(228, 'default', 0, 'porto_settings/product/custom_cms_tabs', 'a:0:{}'),
(229, 'default', 0, 'porto_settings/product/custom_attr_tabs', 'a:0:{}'),
(230, 'default', 0, 'porto_settings/product_label/new_label', '1'),
(231, 'default', 0, 'porto_settings/product_label/new_label_text', 'NEW'),
(232, 'default', 0, 'porto_settings/product_label/sale_label', '1'),
(233, 'default', 0, 'porto_settings/product_label/sale_label_percent', '1'),
(234, 'default', 0, 'porto_settings/newsletter/enable', '0'),
(235, 'default', 0, 'porto_settings/newsletter/delay', '5000'),
(236, 'default', 0, 'porto_settings/newsletter/content', '<h2>BE THE FIRST TO KNOW</h2><p>Subscribe to the Gubato newsletter.</p>'),
(237, 'default', 0, 'porto_settings/newsletter/width', '700px'),
(238, 'default', 0, 'porto_settings/newsletter/height', '324px'),
(239, 'default', 0, 'porto_settings/newsletter/bg_color', 'FFFFFF'),
(240, 'default', 0, 'porto_settings/newsletter/custom_style', NULL),
(241, 'default', 0, 'porto_settings/newsletter/bg_image', 'default/img_galleria_default_mainImg_4_3.jpg'),
(242, 'default', 0, 'porto_settings/contacts/api_key', NULL),
(243, 'default', 0, 'porto_settings/install/demo_version', '0'),
(244, 'default', 0, 'porto_settings/install/overwrite_blocks', '0'),
(245, 'default', 0, 'porto_settings/install/overwrite_pages', '0'),
(248, 'default', 0, 'weltpixel_quickview/general/enable_product_listing', '1'),
(249, 'default', 0, 'weltpixel_quickview/general/remove_product_image', '0'),
(250, 'default', 0, 'weltpixel_quickview/general/remove_product_image_thumb', '1'),
(251, 'default', 0, 'weltpixel_quickview/general/remove_short_description', '0'),
(252, 'default', 0, 'weltpixel_quickview/general/remove_qty_selector', '1'),
(253, 'default', 0, 'weltpixel_quickview/general/enable_goto_product_button', '1'),
(254, 'default', 0, 'weltpixel_quickview/general/remove_availability', '0'),
(255, 'default', 0, 'weltpixel_quickview/general/remove_sku', '0'),
(256, 'default', 0, 'weltpixel_quickview/general/button_style', 'v2'),
(257, 'default', 0, 'weltpixel_quickview/general/close_quickview', '5'),
(258, 'default', 0, 'weltpixel_quickview/general/scroll_to_top', '1'),
(259, 'default', 0, 'weltpixel_quickview/general/enable_shopping_checkout_product_buttons', '1'),
(260, 'default', 0, 'weltpixel_quickview/general/custom_css', NULL),
(261, 'default', 0, 'weltpixel_quickview/general/enable_zoom', 'false'),
(262, 'default', 0, 'weltpixel_quickview/general/zoom_fullscreenzoom', NULL),
(263, 'default', 0, 'weltpixel_quickview/general/zoom_top', NULL),
(264, 'default', 0, 'weltpixel_quickview/general/zoom_left', NULL),
(265, 'default', 0, 'weltpixel_quickview/general/zoom_width', NULL),
(266, 'default', 0, 'weltpixel_quickview/general/zoom_height', NULL),
(267, 'default', 0, 'weltpixel_quickview/general/zoom_eventtype', 'hover'),
(270, 'default', 0, 'porto_license/general/purchase_code', 'e99da784-9ddf-40c3-8d54-b64d9da2c2b1'),
(271, 'default', 0, 'porto_license/general/purchase_code_confirm', ''),
(272, 'default', 0, 'porto_settings/product/aspect_ratio', '1'),
(273, 'default', 0, 'porto_settings/product/ratio_width', '600'),
(274, 'default', 0, 'porto_settings/product/custom_social', '<div class=\"addthis_inline_share_toolbox\"></div>\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-55d6907796e30f69\"></script>'),
(277, 'default', 0, 'porto_settings/general/smartlayers', '1'),
(278, 'default', 0, 'porto_settings/header/login_popup', '1'),
(279, 'default', 0, 'porto_settings/category/page_layout', 'page-layout-2columns-left'),
(280, 'default', 0, 'porto_settings/product/main_custom_block', NULL),
(281, 'default', 0, 'porto_settings/product/page_layout', 'page-layout-2columns-right'),
(282, 'default', 0, 'porto_settings/product/upsell_columns', '4'),
(283, 'default', 0, 'porto_settings/product/move_upsell', '0'),
(284, 'default', 0, 'porto_settings/product/move_addtolinks', '0'),
(287, 'default', 0, 'web/unsecure/base_url', 'http://localhost/gubato2/'),
(288, 'default', 0, 'web/secure/base_url', 'https://localhost/gubato2/'),
(289, 'default', 0, 'general/country/default', 'KE'),
(290, 'default', 0, 'general/country/destinations', 'KE'),
(291, 'default', 0, 'general/store_information/name', 'Gubato'),
(292, 'default', 0, 'general/store_information/phone', '0724814212'),
(293, 'default', 0, 'general/store_information/hours', NULL),
(294, 'default', 0, 'general/store_information/country_id', 'KE'),
(295, 'default', 0, 'general/store_information/region_id', 'Nairobi'),
(296, 'default', 0, 'general/store_information/postcode', NULL),
(297, 'default', 0, 'general/store_information/city', NULL),
(298, 'default', 0, 'general/store_information/street_line1', NULL),
(299, 'default', 0, 'general/store_information/street_line2', NULL),
(300, 'default', 0, 'general/store_information/merchant_vat_number', NULL),
(301, 'default', 0, 'general/single_store_mode/enabled', '0'),
(302, 'default', 0, 'design/header/logo_src', 'default/logo.png'),
(303, 'default', 0, 'porto_settings/header/toggle_text', '<em class=\"porto-icon-menu\"></em> SHOP BY CATEGORY'),
(304, 'default', 0, 'porto_settings/header/static_block_8', 'porto_custom_block_type_8'),
(305, 'default', 0, 'porto_settings/general/category_list_on_left', '0'),
(306, 'default', 0, 'porto_settings/header/mobile_sticky_header', '1'),
(307, 'default', 0, 'porto_settings/header/sticky_header_logo_src', 'default/gubato.png'),
(308, 'default', 0, 'sw_megamenu/general/enable', '1'),
(309, 'default', 0, 'sw_megamenu/general/menu_type', 'fullwidth'),
(310, 'default', 0, 'sw_megamenu/general/max_level', '3'),
(311, 'default', 0, 'sw_megamenu/custom_links/staticblock_before', NULL),
(312, 'default', 0, 'sw_megamenu/custom_links/staticblock_after', NULL),
(313, 'default', 0, 'sw_megamenu/cat_labels/label1', 'New'),
(314, 'default', 0, 'sw_megamenu/cat_labels/label2', 'Hot!'),
(315, 'default', 0, 'sw_megamenu/cat_labels/label3', 'Sale'),
(316, 'default', 0, 'porto_design/colors/price_slider_bg_color', NULL),
(317, 'default', 0, 'porto_design/colors/price_slider_handle_color', NULL),
(318, 'default', 0, 'porto_design/header/header_menu_megamenu_bgcolor', '165377'),
(319, 'default', 0, 'porto_design/header/header_menu_megamenu_bordercolor', NULL),
(320, 'default', 0, 'porto_design/header/header_menu_megamenu_color', NULL),
(321, 'default', 0, 'porto_design/header/header_menu_megamenu_hover_color', NULL),
(322, 'default', 0, 'porto_design/header/header_menu_label1_bg_color', NULL),
(323, 'default', 0, 'porto_design/header/header_menu_label1_font_color', NULL),
(324, 'default', 0, 'porto_design/header/header_menu_label2_bg_color', NULL),
(325, 'default', 0, 'porto_design/header/header_menu_label2_font_color', NULL),
(326, 'default', 0, 'porto_design/header/header_menu_label3_bg_color', NULL),
(327, 'default', 0, 'porto_design/header/header_menu_label3_font_color', NULL),
(328, 'default', 0, 'general/locale/weight_unit', 'kgs'),
(329, 'default', 0, 'admin/security/use_case_sensitive_login', '0'),
(330, 'default', 0, 'admin/dashboard/enable_charts', '1'),
(331, 'default', 0, 'sw_megamenu/general/static_width', '500px'),
(332, 'default', 0, 'design/head/shortcut_icon', 'default/index.png');

-- --------------------------------------------------------

--
-- Table structure for table `cron_schedule`
--

CREATE TABLE `cron_schedule` (
  `schedule_id` int(10) UNSIGNED NOT NULL COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity`
--

CREATE TABLE `customer_address_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `city` varchar(255) NOT NULL COMMENT 'City',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `country_id` varchar(255) NOT NULL COMMENT 'Country',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `firstname` varchar(255) NOT NULL COMMENT 'First Name',
  `lastname` varchar(255) NOT NULL COMMENT 'Last Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Zip/Postal Code',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `region` varchar(255) DEFAULT NULL COMMENT 'State/Province',
  `region_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'State/Province',
  `street` text NOT NULL COMMENT 'Street Address',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `telephone` varchar(255) NOT NULL COMMENT 'Phone Number',
  `vat_id` varchar(255) DEFAULT NULL COMMENT 'VAT number',
  `vat_is_valid` int(10) UNSIGNED DEFAULT NULL COMMENT 'VAT number validity',
  `vat_request_date` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request date',
  `vat_request_id` varchar(255) DEFAULT NULL COMMENT 'VAT number validation request ID',
  `vat_request_success` int(10) UNSIGNED DEFAULT NULL COMMENT 'VAT number validation request success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_datetime`
--

CREATE TABLE `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_decimal`
--

CREATE TABLE `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_int`
--

CREATE TABLE `customer_address_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_text`
--

CREATE TABLE `customer_address_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

-- --------------------------------------------------------

--
-- Table structure for table `customer_address_entity_varchar`
--

CREATE TABLE `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute`
--

CREATE TABLE `customer_eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  `is_used_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Used in Grid',
  `is_visible_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible in Grid',
  `is_filterable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Filterable in Grid',
  `is_searchable_in_grid` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Searchable in Grid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `customer_eav_attribute`
--

INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`, `is_used_in_grid`, `is_visible_in_grid`, `is_filterable_in_grid`, `is_searchable_in_grid`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL, 1, 1, 1, 0),
(2, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(3, 1, NULL, 0, NULL, 1, 20, NULL, 1, 1, 0, 1),
(4, 0, NULL, 0, NULL, 0, 30, NULL, 0, 0, 0, 0),
(5, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 40, NULL, 0, 0, 0, 0),
(6, 0, NULL, 0, NULL, 0, 50, NULL, 0, 0, 0, 0),
(7, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 60, NULL, 0, 0, 0, 0),
(8, 0, NULL, 0, NULL, 0, 70, NULL, 0, 0, 0, 0),
(9, 1, NULL, 0, 'a:1:{s:16:\"input_validation\";s:5:\"email\";}', 1, 80, NULL, 1, 1, 1, 1),
(10, 1, NULL, 0, NULL, 1, 25, NULL, 1, 1, 1, 0),
(11, 0, 'date', 0, 'a:1:{s:16:\"input_validation\";s:4:\"date\";}', 0, 90, NULL, 1, 1, 1, 0),
(12, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(13, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(14, 0, NULL, 0, 'a:1:{s:16:\"input_validation\";s:4:\"date\";}', 1, 0, NULL, 0, 0, 0, 0),
(15, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(16, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(17, 0, NULL, 0, 'a:1:{s:15:\"max_text_length\";i:255;}', 0, 100, NULL, 1, 1, 0, 1),
(18, 0, NULL, 0, NULL, 1, 0, NULL, 1, 1, 1, 0),
(19, 0, NULL, 0, NULL, 0, 0, NULL, 1, 1, 1, 0),
(20, 0, NULL, 0, 'a:0:{}', 0, 110, NULL, 1, 1, 1, 0),
(21, 1, NULL, 0, NULL, 1, 28, NULL, 0, 0, 0, 0),
(22, 0, NULL, 0, NULL, 0, 10, NULL, 0, 0, 0, 0),
(23, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 20, NULL, 1, 0, 0, 1),
(24, 0, NULL, 0, NULL, 0, 30, NULL, 0, 0, 0, 0),
(25, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 40, NULL, 1, 0, 0, 1),
(26, 0, NULL, 0, NULL, 0, 50, NULL, 0, 0, 0, 0),
(27, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 60, NULL, 1, 0, 0, 1),
(28, 1, NULL, 2, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 70, NULL, 1, 0, 0, 1),
(29, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 80, NULL, 1, 0, 0, 1),
(30, 1, NULL, 0, NULL, 1, 90, NULL, 1, 1, 1, 0),
(31, 1, NULL, 0, NULL, 1, 100, NULL, 1, 1, 0, 1),
(32, 1, NULL, 0, NULL, 1, 100, NULL, 0, 0, 0, 0),
(33, 1, NULL, 0, 'a:0:{}', 1, 110, 'Magento\\Customer\\Model\\Attribute\\Data\\Postcode', 1, 1, 1, 1),
(34, 1, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 1, 120, NULL, 1, 1, 1, 1),
(35, 0, NULL, 0, 'a:2:{s:15:\"max_text_length\";i:255;s:15:\"min_text_length\";i:1;}', 0, 130, NULL, 1, 0, 0, 1),
(36, 1, NULL, 0, NULL, 1, 140, NULL, 0, 0, 0, 0),
(37, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(38, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(39, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(40, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(41, 0, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0),
(42, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(43, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0),
(44, 0, NULL, 0, NULL, 1, 0, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_eav_attribute_website`
--

CREATE TABLE `customer_eav_attribute_website` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Multiline Count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

--
-- Dumping data for table `customer_eav_attribute_website`
--

INSERT INTO `customer_eav_attribute_website` (`attribute_id`, `website_id`, `is_visible`, `is_required`, `default_value`, `multiline_count`) VALUES
(1, 1, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL),
(9, 1, NULL, NULL, NULL, NULL),
(10, 1, NULL, NULL, NULL, NULL),
(11, 1, NULL, NULL, NULL, NULL),
(17, 1, NULL, NULL, NULL, NULL),
(18, 1, NULL, NULL, NULL, NULL),
(19, 1, NULL, NULL, NULL, NULL),
(20, 1, NULL, NULL, NULL, NULL),
(21, 1, NULL, NULL, NULL, NULL),
(23, 1, NULL, NULL, NULL, NULL),
(25, 1, NULL, NULL, NULL, NULL),
(27, 1, NULL, NULL, NULL, NULL),
(28, 1, NULL, NULL, NULL, NULL),
(29, 1, NULL, NULL, NULL, NULL),
(30, 1, NULL, NULL, NULL, NULL),
(31, 1, NULL, NULL, NULL, NULL),
(32, 1, NULL, NULL, NULL, NULL),
(33, 1, NULL, NULL, NULL, NULL),
(34, 1, NULL, NULL, NULL, NULL),
(35, 1, NULL, NULL, NULL, NULL),
(36, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity`
--

CREATE TABLE `customer_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  `created_in` varchar(255) DEFAULT NULL COMMENT 'Created From',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'First Name',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middle Name/Initial',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Last Name',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `dob` date DEFAULT NULL COMMENT 'Date of Birth',
  `password_hash` varchar(128) DEFAULT NULL COMMENT 'Password_hash',
  `rp_token` varchar(128) DEFAULT NULL COMMENT 'Reset password token',
  `rp_token_created_at` datetime DEFAULT NULL COMMENT 'Reset password token creation time',
  `default_billing` int(10) UNSIGNED DEFAULT NULL COMMENT 'Default Billing Address',
  `default_shipping` int(10) UNSIGNED DEFAULT NULL COMMENT 'Default Shipping Address',
  `taxvat` varchar(50) DEFAULT NULL COMMENT 'Tax/VAT Number',
  `confirmation` varchar(64) DEFAULT NULL COMMENT 'Is Confirmed',
  `gender` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Gender',
  `failures_num` smallint(6) DEFAULT '0' COMMENT 'Failure Number',
  `first_failure` timestamp NULL DEFAULT NULL COMMENT 'First Failure',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock Expiration Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_datetime`
--

CREATE TABLE `customer_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_decimal`
--

CREATE TABLE `customer_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_int`
--

CREATE TABLE `customer_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_text`
--

CREATE TABLE `customer_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

-- --------------------------------------------------------

--
-- Table structure for table `customer_entity_varchar`
--

CREATE TABLE `customer_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

-- --------------------------------------------------------

--
-- Table structure for table `customer_form_attribute`
--

CREATE TABLE `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `customer_form_attribute`
--

INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_checkout', 9),
('adminhtml_checkout', 10),
('adminhtml_checkout', 11),
('adminhtml_checkout', 17),
('adminhtml_checkout', 20),
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('adminhtml_customer', 5),
('adminhtml_customer', 6),
('adminhtml_customer', 7),
('adminhtml_customer', 8),
('adminhtml_customer', 9),
('adminhtml_customer', 10),
('adminhtml_customer', 11),
('adminhtml_customer', 17),
('adminhtml_customer', 19),
('adminhtml_customer', 20),
('adminhtml_customer', 21),
('adminhtml_customer_address', 22),
('adminhtml_customer_address', 23),
('adminhtml_customer_address', 24),
('adminhtml_customer_address', 25),
('adminhtml_customer_address', 26),
('adminhtml_customer_address', 27),
('adminhtml_customer_address', 28),
('adminhtml_customer_address', 29),
('adminhtml_customer_address', 30),
('adminhtml_customer_address', 31),
('adminhtml_customer_address', 32),
('adminhtml_customer_address', 33),
('adminhtml_customer_address', 34),
('adminhtml_customer_address', 35),
('adminhtml_customer_address', 36),
('customer_account_create', 4),
('customer_account_create', 5),
('customer_account_create', 6),
('customer_account_create', 7),
('customer_account_create', 8),
('customer_account_create', 9),
('customer_account_create', 11),
('customer_account_create', 17),
('customer_account_create', 19),
('customer_account_create', 20),
('customer_account_edit', 4),
('customer_account_edit', 5),
('customer_account_edit', 6),
('customer_account_edit', 7),
('customer_account_edit', 8),
('customer_account_edit', 9),
('customer_account_edit', 11),
('customer_account_edit', 17),
('customer_account_edit', 19),
('customer_account_edit', 20),
('customer_address_edit', 22),
('customer_address_edit', 23),
('customer_address_edit', 24),
('customer_address_edit', 25),
('customer_address_edit', 26),
('customer_address_edit', 27),
('customer_address_edit', 28),
('customer_address_edit', 29),
('customer_address_edit', 30),
('customer_address_edit', 31),
('customer_address_edit', 32),
('customer_address_edit', 33),
('customer_address_edit', 34),
('customer_address_edit', 35),
('customer_address_edit', 36),
('customer_register_address', 22),
('customer_register_address', 23),
('customer_register_address', 24),
('customer_register_address', 25),
('customer_register_address', 26),
('customer_register_address', 27),
('customer_register_address', 28),
('customer_register_address', 29),
('customer_register_address', 30),
('customer_register_address', 31),
('customer_register_address', 32),
('customer_register_address', 33),
('customer_register_address', 34),
('customer_register_address', 35),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Table structure for table `customer_grid_flat`
--

CREATE TABLE `customer_grid_flat` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `name` text COMMENT 'Name',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` int(11) DEFAULT NULL COMMENT 'Group_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `website_id` int(11) DEFAULT NULL COMMENT 'Website_id',
  `confirmation` varchar(255) DEFAULT NULL COMMENT 'Confirmation',
  `created_in` text COMMENT 'Created_in',
  `dob` date DEFAULT NULL COMMENT 'Dob',
  `gender` int(11) DEFAULT NULL COMMENT 'Gender',
  `taxvat` varchar(255) DEFAULT NULL COMMENT 'Taxvat',
  `lock_expires` timestamp NULL DEFAULT NULL COMMENT 'Lock_expires',
  `billing_full` text COMMENT 'Billing_full',
  `billing_firstname` varchar(255) DEFAULT NULL COMMENT 'Billing_firstname',
  `billing_lastname` varchar(255) DEFAULT NULL COMMENT 'Billing_lastname',
  `billing_telephone` varchar(255) DEFAULT NULL COMMENT 'Billing_telephone',
  `billing_postcode` varchar(255) DEFAULT NULL COMMENT 'Billing_postcode',
  `billing_country_id` varchar(255) DEFAULT NULL COMMENT 'Billing_country_id',
  `billing_region` varchar(255) DEFAULT NULL COMMENT 'Billing_region',
  `billing_street` varchar(255) DEFAULT NULL COMMENT 'Billing_street',
  `billing_city` varchar(255) DEFAULT NULL COMMENT 'Billing_city',
  `billing_fax` varchar(255) DEFAULT NULL COMMENT 'Billing_fax',
  `billing_vat_id` varchar(255) DEFAULT NULL COMMENT 'Billing_vat_id',
  `billing_company` varchar(255) DEFAULT NULL COMMENT 'Billing_company',
  `shipping_full` text COMMENT 'Shipping_full'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='customer_grid_flat';

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE `customer_group` (
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Tax Class Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Group';

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer_log`
--

CREATE TABLE `customer_log` (
  `log_id` int(11) NOT NULL COMMENT 'Log ID',
  `customer_id` int(11) NOT NULL COMMENT 'Customer ID',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Last Login Time',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'Last Logout Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Log Table';

-- --------------------------------------------------------

--
-- Table structure for table `customer_visitor`
--

CREATE TABLE `customer_visitor` (
  `visitor_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `last_visit_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Visit Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Visitor Table';

--
-- Dumping data for table `customer_visitor`
--

INSERT INTO `customer_visitor` (`visitor_id`, `customer_id`, `session_id`, `last_visit_at`) VALUES
(1, NULL, '0g2sjv13gjv2ngg75lnf4dl7r5', '2016-08-26 06:48:11'),
(2, NULL, 'e3a835r4ekpalq6shcpdp27m01', '2016-08-26 07:09:43'),
(3, NULL, 'ovoahe39tqlo2adgddgbjmdua0', '2016-08-26 13:32:57'),
(4, NULL, '3ikat46mnefd6cu2kl7st5lil3', '2016-08-26 19:41:56'),
(5, NULL, 'edin6gmksh4vre1g6s93i2g6r7', '2016-09-05 05:51:24'),
(6, NULL, 'tdf66995jl8nd07mvhlkfe1q55', '2016-09-05 06:04:30'),
(7, NULL, 'vcvrart1fnv23prnp1na4md5k5', '2016-09-05 06:24:52'),
(8, NULL, '9p2mjf66j4ic00fqq9mvs3v193', '2016-09-05 06:53:03'),
(9, NULL, 'gva1u7hrc7uqi0b9ere7ooqrr6', '2016-09-05 07:02:59'),
(10, NULL, '2sljojec658dp6rail5mbgjg11', '2016-09-05 07:05:13'),
(11, NULL, 'ndl5gkrlih811rj1vbrgcjaff1', '2016-10-21 19:24:05'),
(12, NULL, 'b9vd4d0f8v7rubo54s7ic8d4c2', '2016-10-21 19:35:58'),
(13, NULL, '35dqq0gn4sjgih7c3b6am0rgv7', '2016-11-04 12:22:29'),
(14, NULL, 'o0iaq0r4taimdt1d0pjmieum41', '2016-11-10 11:50:32'),
(15, NULL, 'q03vk8oe79goc9fbhodenc3ou0', '2016-11-10 11:51:46'),
(16, NULL, 'nij05mgv5lg8anmf5v3jqfj394', '2016-11-10 11:56:34'),
(17, NULL, 'v4vj4tb9taikjc79e32l2q15d0', '2016-11-26 09:16:07'),
(18, NULL, '4lb0qbp2stie7069ukmmchq6u6', '2016-11-26 09:23:07'),
(19, NULL, '5mlohmk3gbv6nh2jm52u79faj6', '2016-12-02 19:07:55'),
(20, NULL, 'k2qeeg3jbi378fel88g8g67155', '2016-12-02 19:08:37'),
(21, NULL, 'fa3bvs0nhje8su06lgdrsuh5b1', '2016-12-02 19:09:17'),
(22, NULL, 'p9r4fi0o4riv6ouk1dmb2dmmb7', '2017-03-18 11:35:03'),
(23, NULL, 'j44g9iu7a5evbl3n78rajcn9q5', '2017-03-18 11:38:45'),
(24, NULL, 'c3dlnipi0mnq5jm9r8dl0jm8b2', '2017-03-18 11:35:58'),
(25, NULL, 'viv99pu5csd452oo7mtcfan9i7', '2017-03-18 12:48:47'),
(26, NULL, 'jl24mpsakmvd71r36llfbdfjs5', '2017-03-18 13:00:46'),
(27, NULL, 'ces3gg7l7amfb2teg1079tofi4', '2017-03-18 13:43:14'),
(28, NULL, 'sa13vsndmsma7u6ga5pd9uese4', '2017-03-18 13:49:09'),
(29, NULL, '6hbgi2595psenvm69dtt2m9cv0', '2017-03-18 13:49:26'),
(30, NULL, 'hi3b742limq7clkkdigdl2mv15', '2017-03-18 14:05:59'),
(31, NULL, 'epc4npe7nesbcmubit45urjkk5', '2017-03-19 05:01:07'),
(32, NULL, '197savcmptfdtretp8rak8qud2', '2017-03-19 04:15:02'),
(33, NULL, '2es2o4dl6f3r7h20sl1iq3rdr0', '2017-03-19 05:21:44'),
(34, NULL, 'fotkj03dcisr7ctn3m3km78ut2', '2017-03-19 05:25:54'),
(35, NULL, 'mdnsg3n4hll8gbk5ebdduehgj0', '2017-03-19 05:21:51'),
(36, NULL, '07aj229es1jegtjtdhscse96e1', '2017-03-21 05:01:43'),
(37, NULL, '72a8uo9cer2qjqpc714fdkvon4', '2017-03-21 05:07:20'),
(38, NULL, 'quak34m8884fr8rktmfdh7plk6', '2017-03-21 05:19:21'),
(39, NULL, '9312u90vqasm0qqrkgo2750jp6', '2017-03-21 06:09:03'),
(40, NULL, 'kbebrja1fh7fu95jb3ql2d8ne0', '2017-03-21 06:09:12'),
(41, NULL, 'h5c3jk1r4ogt0f5elg6g5a5810', '2017-03-21 06:14:22'),
(42, NULL, 't99qtlstjr4tgrlm9pqtpsgld7', '2017-03-21 07:29:52'),
(43, NULL, 'r50lhg1o0qp6etknl4lcv0frg7', '2017-03-21 07:30:05'),
(44, NULL, '4ee2vmi6j0tt5n423554oub8b2', '2017-03-21 07:46:08'),
(45, NULL, 'e616c7clrarg97d72824hflke7', '2017-03-21 08:36:59'),
(46, NULL, '6j49pss0nse4m0jmol6fuguau5', '2017-03-21 09:25:19'),
(47, NULL, 'qr93o0466oufshs7r43o5hlma3', '2017-03-21 08:37:10'),
(48, NULL, '6u5j6d24u62hdp1ljsfs2uh5r1', '2017-03-21 09:43:47'),
(49, NULL, '17gfk1g9634q64km1v63anb1n6', '2017-03-21 09:43:58'),
(50, NULL, 'ues951vqguedrv7l3b3dur5ik7', '2017-03-21 10:32:05'),
(51, NULL, '7jn1fmjgmmd6i32kuptkjk2821', '2017-03-21 11:50:54'),
(52, NULL, '6hhch9an1h12akde0s9vmmdg01', '2017-03-21 13:12:07'),
(53, NULL, '28dhjo72sqm0372glqi4mn3qu0', '2017-03-21 13:34:58'),
(54, NULL, '110jufijl3ka4bhcuk8j567rp0', '2017-03-22 05:33:00'),
(55, NULL, 'l9d3t9tpa8t00vmu47d9oqm0n6', '2017-03-22 06:52:46'),
(56, NULL, 'ped5rt33090u4a81ge4tgp6re6', '2017-03-22 07:51:19'),
(57, NULL, 'bt3cj4ocm28ap4f9k0brig6kg0', '2017-03-22 09:07:19'),
(58, NULL, 't4i0ol8sfi2tb28g7m83csovc3', '2017-03-22 10:07:47'),
(59, NULL, 'ngpraqijhqmurj3sgrghc4uh31', '2017-03-22 10:45:03'),
(60, NULL, 'k5knm48mehbmbij22q221fefd6', '2017-03-22 12:47:25'),
(61, NULL, '6qgim270icen4jfj0utevvchc4', '2017-03-23 05:12:34'),
(62, NULL, 'dkv72mq1qsvqg0tvtakj4sr802', '2017-03-23 04:31:22'),
(63, NULL, '0ilq0aaqd7aj24jnfc366d5tj3', '2017-03-23 06:14:27'),
(64, NULL, '5q049j7m15fge2v90khpeshv21', '2017-03-23 07:19:14'),
(65, NULL, 'h9ecsd2cive43vbfjk6uosffg3', '2017-03-23 07:07:50'),
(66, NULL, 'n71qf7151nl0a2les261ts8ua0', '2017-03-23 08:03:29'),
(67, NULL, 'ueg9lsmaqrd4iivcb2idojprj3', '2017-03-23 10:13:59'),
(68, NULL, 'nfl7o6dnaacre0iqsc2t81fog2', '2017-03-23 12:41:21'),
(69, NULL, '3nsuumdhc0gk4b9l4lqmqb7r66', '2017-03-23 13:19:10'),
(70, NULL, 'tgnk1o5hvq7brd4vvpgpqerrh1', '2017-03-24 04:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `design_change`
--

CREATE TABLE `design_change` (
  `design_change_id` int(11) NOT NULL COMMENT 'Design Change Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

-- --------------------------------------------------------

--
-- Table structure for table `design_config_grid_flat`
--

CREATE TABLE `design_config_grid_flat` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `store_website_id` int(11) DEFAULT NULL COMMENT 'Store_website_id',
  `store_group_id` int(11) DEFAULT NULL COMMENT 'Store_group_id',
  `store_id` int(11) DEFAULT NULL COMMENT 'Store_id',
  `theme_theme_id` varchar(255) DEFAULT NULL COMMENT 'Theme_theme_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='design_config_grid_flat';

--
-- Dumping data for table `design_config_grid_flat`
--

INSERT INTO `design_config_grid_flat` (`entity_id`, `store_website_id`, `store_group_id`, `store_id`, `theme_theme_id`) VALUES
(0, NULL, NULL, NULL, '4'),
(1, 1, NULL, NULL, '4'),
(2, 1, 1, 1, '4'),
(3, 1, 1, 2, '4');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country`
--

CREATE TABLE `directory_country` (
  `country_id` varchar(2) NOT NULL COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `directory_country`
--

INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_format`
--

CREATE TABLE `directory_country_format` (
  `country_format_id` int(10) UNSIGNED NOT NULL COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region`
--

CREATE TABLE `directory_country_region` (
  `region_id` int(10) UNSIGNED NOT NULL COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

--
-- Dumping data for table `directory_country_region`
--

INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AE', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AE', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AE', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Vorarlberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d\'Or'),
(204, 'FR', '22', 'Côtes-d\'Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d\'Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis'),
(485, 'BR', 'AC', 'Acre'),
(486, 'BR', 'AL', 'Alagoas'),
(487, 'BR', 'AP', 'Amapá'),
(488, 'BR', 'AM', 'Amazonas'),
(489, 'BR', 'BA', 'Bahia'),
(490, 'BR', 'CE', 'Ceará'),
(491, 'BR', 'ES', 'Espírito Santo'),
(492, 'BR', 'GO', 'Goiás'),
(493, 'BR', 'MA', 'Maranhão'),
(494, 'BR', 'MT', 'Mato Grosso'),
(495, 'BR', 'MS', 'Mato Grosso do Sul'),
(496, 'BR', 'MG', 'Minas Gerais'),
(497, 'BR', 'PA', 'Pará'),
(498, 'BR', 'PB', 'Paraíba'),
(499, 'BR', 'PR', 'Paraná'),
(500, 'BR', 'PE', 'Pernambuco'),
(501, 'BR', 'PI', 'Piauí'),
(502, 'BR', 'RJ', 'Rio de Janeiro'),
(503, 'BR', 'RN', 'Rio Grande do Norte'),
(504, 'BR', 'RS', 'Rio Grande do Sul'),
(505, 'BR', 'RO', 'Rondônia'),
(506, 'BR', 'RR', 'Roraima'),
(507, 'BR', 'SC', 'Santa Catarina'),
(508, 'BR', 'SP', 'São Paulo'),
(509, 'BR', 'SE', 'Sergipe'),
(510, 'BR', 'TO', 'Tocantins'),
(511, 'BR', 'DF', 'Distrito Federal');

-- --------------------------------------------------------

--
-- Table structure for table `directory_country_region_name`
--

CREATE TABLE `directory_country_region_name` (
  `locale` varchar(8) NOT NULL COMMENT 'Locale',
  `region_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `directory_country_region_name`
--

INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Vorarlberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d\'Or'),
('en_US', 204, 'Côtes-d\'Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d\'Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis'),
('en_US', 485, 'Acre'),
('en_US', 486, 'Alagoas'),
('en_US', 487, 'Amapá'),
('en_US', 488, 'Amazonas'),
('en_US', 489, 'Bahia'),
('en_US', 490, 'Ceará'),
('en_US', 491, 'Espírito Santo'),
('en_US', 492, 'Goiás'),
('en_US', 493, 'Maranhão'),
('en_US', 494, 'Mato Grosso'),
('en_US', 495, 'Mato Grosso do Sul'),
('en_US', 496, 'Minas Gerais'),
('en_US', 497, 'Pará'),
('en_US', 498, 'Paraíba'),
('en_US', 499, 'Paraná'),
('en_US', 500, 'Pernambuco'),
('en_US', 501, 'Piauí'),
('en_US', 502, 'Rio de Janeiro'),
('en_US', 503, 'Rio Grande do Norte'),
('en_US', 504, 'Rio Grande do Sul'),
('en_US', 505, 'Rondônia'),
('en_US', 506, 'Roraima'),
('en_US', 507, 'Santa Catarina'),
('en_US', 508, 'São Paulo'),
('en_US', 509, 'Sergipe'),
('en_US', 510, 'Tocantins'),
('en_US', 511, 'Distrito Federal');

-- --------------------------------------------------------

--
-- Table structure for table `directory_currency_rate`
--

CREATE TABLE `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `directory_currency_rate`
--

INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.900100000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link`
--

CREATE TABLE `downloadable_link` (
  `link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_price`
--

CREATE TABLE `downloadable_link_price` (
  `price_id` int(10) UNSIGNED NOT NULL COMMENT 'Price ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased`
--

CREATE TABLE `downloadable_link_purchased` (
  `purchased_id` int(10) UNSIGNED NOT NULL COMMENT 'Purchased ID',
  `order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of modification',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_purchased_item`
--

CREATE TABLE `downloadable_link_purchased_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item ID',
  `purchased_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_link_title`
--

CREATE TABLE `downloadable_link_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `link_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample`
--

CREATE TABLE `downloadable_sample` (
  `sample_id` int(10) UNSIGNED NOT NULL COMMENT 'Sample ID',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

-- --------------------------------------------------------

--
-- Table structure for table `downloadable_sample_title`
--

CREATE TABLE `downloadable_sample_title` (
  `title_id` int(10) UNSIGNED NOT NULL COMMENT 'Title ID',
  `sample_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute`
--

CREATE TABLE `eav_attribute` (
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

--
-- Dumping data for table `eav_attribute`
--

INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'static', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'static', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'static', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'static', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'static', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'static', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Source\\Group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'static', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime', 'date', 'Date of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Password', 'static', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'rp_token', NULL, NULL, 'static', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'rp_token_created_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'default_billing', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Billing', 'static', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'default_shipping', NULL, 'Magento\\Customer\\Model\\Customer\\Attribute\\Backend\\Shipping', 'static', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'taxvat', NULL, NULL, 'static', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'confirmation', NULL, NULL, 'static', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(19, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 1, 'gender', NULL, NULL, 'static', NULL, NULL, 'select', 'Gender', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Table', 0, 0, NULL, 0, NULL),
(21, 1, 'disable_auto_group_change', NULL, 'Magento\\Customer\\Model\\Attribute\\Backend\\Data\\Boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'prefix', NULL, NULL, 'static', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(23, 2, 'firstname', NULL, NULL, 'static', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(24, 2, 'middlename', NULL, NULL, 'static', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'lastname', NULL, NULL, 'static', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'suffix', NULL, NULL, 'static', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(27, 2, 'company', NULL, NULL, 'static', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(28, 2, 'street', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\DefaultBackend', 'static', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(29, 2, 'city', NULL, NULL, 'static', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(30, 2, 'country_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Country', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Country', 1, 0, NULL, 0, NULL),
(31, 2, 'region', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Backend\\Region', 'static', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(32, 2, 'region_id', NULL, NULL, 'static', NULL, NULL, 'hidden', 'State/Province', NULL, 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Source\\Region', 0, 0, NULL, 0, NULL),
(33, 2, 'postcode', NULL, NULL, 'static', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 2, 'telephone', NULL, NULL, 'static', NULL, NULL, 'text', 'Phone Number', NULL, NULL, 1, 0, NULL, 0, NULL),
(35, 2, 'fax', NULL, NULL, 'static', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'static', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 1, 'updated_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Updated At', NULL, NULL, 0, 0, NULL, 0, NULL),
(42, 1, 'failures_num', NULL, NULL, 'static', NULL, NULL, 'hidden', 'Failures Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(43, 1, 'first_failure', NULL, NULL, 'static', NULL, NULL, 'date', 'First Failure Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 1, 'lock_expires', NULL, NULL, 'static', NULL, NULL, 'date', 'Failures Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(46, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 1, 0, NULL, 0, NULL),
(47, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'image', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(50, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(51, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(52, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Mode', 0, 0, NULL, 0, NULL),
(53, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Page', 0, 0, NULL, 0, NULL),
(54, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, '1', 0, NULL),
(55, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(59, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'Magento\\Theme\\Model\\Theme\\Source\\Theme', 0, 0, NULL, 0, NULL),
(61, 3, 'custom_design_from', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Frontend\\Datetime', 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(62, 3, 'custom_design_to', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(64, 3, 'custom_layout_update', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(66, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(67, 3, 'available_sort_by', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby', 1, 0, NULL, 0, NULL),
(68, 3, 'default_sort_by', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Source\\Sortby', 1, 0, NULL, 0, NULL),
(69, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 1, 0, '1', 0, NULL),
(70, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(71, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(72, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(73, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Product Name', 'validate-length maximum-length-255', NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Sku', 'static', NULL, NULL, 'text', 'SKU', 'validate-length maximum-length-64', NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(76, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(78, 4, 'special_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'special_from_date', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(80, 4, 'special_to_date', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(81, 4, 'cost', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'weight', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Weight', 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(84, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(85, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars. Meta Description should optimally be between 150-160 characters'),
(87, 4, 'image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Base', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Small', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'media_gallery', NULL, NULL, 'static', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'tier_price', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(93, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, '', 0, NULL),
(94, 4, 'news_from_date', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'news_to_date', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(97, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Product', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Status', 0, 0, '1', 0, NULL),
(98, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'Magento\\Catalog\\Model\\Product\\Visibility', 0, 0, '4', 0, NULL),
(100, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'New Theme', NULL, 'Magento\\Theme\\Model\\Theme\\Source\\Theme', 0, 0, NULL, 0, NULL),
(101, 4, 'custom_design_from', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'custom_design_to', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Backend\\Datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(103, 4, 'custom_layout_update', NULL, 'Magento\\Catalog\\Model\\Attribute\\Backend\\Customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Layout Update XML', NULL, NULL, 0, 0, NULL, 0, NULL),
(104, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Layout', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(105, 4, 'category_ids', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Category', 'static', NULL, NULL, 'text', 'Categories', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'Magento\\Catalog\\Model\\Entity\\Product\\Attribute\\Design\\Options\\Container', 0, 0, 'container2', 0, NULL),
(107, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(108, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(110, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(113, 4, 'updated_at', NULL, NULL, 'static', NULL, NULL, 'date', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(114, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Countryofmanufacture', 0, 0, NULL, 0, NULL),
(115, 4, 'quantity_and_stock_status', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Stock', 'int', NULL, NULL, 'select', 'Quantity', NULL, 'Magento\\CatalogInventory\\Model\\Source\\Stock', 0, 0, '1', 0, NULL),
(116, 4, 'custom_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'New Layout', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Layout', 0, 0, NULL, 0, NULL),
(117, 3, 'url_key', NULL, NULL, 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(118, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(119, 4, 'url_key', NULL, NULL, 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(120, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'msrp', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Price', 'decimal', NULL, NULL, 'price', 'Manufacturer\'s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(122, 4, 'msrp_display_actual_price_type', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'Magento\\Msrp\\Model\\Product\\Attribute\\Source\\Type\\Price', 0, 0, '0', 0, NULL),
(123, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Dynamic Price', NULL, NULL, 1, 0, '0', 0, NULL),
(124, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Dynamic SKU', NULL, NULL, 1, 0, '0', 0, NULL),
(125, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Dynamic Weight', NULL, NULL, 1, 0, '0', 0, NULL),
(126, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Price\\View', 1, 0, NULL, 0, NULL),
(127, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, 'select', 'Ship Bundle Items', NULL, 'Magento\\Bundle\\Model\\Product\\Attribute\\Source\\Shipment\\Type', 1, 0, '0', 0, NULL),
(128, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(129, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(130, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(131, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(132, 4, 'swatch_image', NULL, NULL, 'varchar', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Frontend\\Image', 'media_image', 'Swatch', NULL, NULL, 0, 0, NULL, 0, NULL),
(133, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'Magento\\Tax\\Model\\TaxClass\\Source\\Product', 0, 0, '2', 0, NULL),
(134, 4, 'gift_message_available', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Backend\\Boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'Magento\\Catalog\\Model\\Product\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(135, 4, 'sw_featured', NULL, NULL, 'int', NULL, NULL, 'boolean', 'Is Featured', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 1, NULL, 0, NULL),
(136, 3, 'sw_menu_hide_item', NULL, NULL, 'int', NULL, NULL, 'select', 'Hide This Menu Item', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(137, 3, 'sw_menu_type', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Menu Type', NULL, 'Smartwave\\Megamenu\\Model\\Attribute\\Menutype', 0, 0, NULL, 0, NULL),
(138, 3, 'sw_menu_static_width', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Static Width', NULL, NULL, 0, 0, NULL, 0, NULL),
(139, 3, 'sw_menu_cat_columns', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Sub Category Columns', NULL, 'Smartwave\\Megamenu\\Model\\Attribute\\Subcatcolumns', 0, 0, NULL, 0, NULL),
(140, 3, 'sw_menu_float_type', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Float', NULL, 'Smartwave\\Megamenu\\Model\\Attribute\\Floattype', 0, 0, NULL, 0, NULL),
(141, 3, 'sw_menu_cat_label', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Category Label', NULL, 'Smartwave\\Megamenu\\Model\\Attribute\\Categorylabel', 0, 0, NULL, 0, NULL),
(142, 3, 'sw_menu_icon_img', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image', 'varchar', NULL, NULL, 'image', 'Icon Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(143, 3, 'sw_menu_font_icon', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Font Icon Class', NULL, NULL, 0, 0, NULL, 0, NULL),
(144, 3, 'sw_menu_block_top_content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Top Block', NULL, NULL, 0, 0, NULL, 0, NULL),
(145, 3, 'sw_menu_block_left_width', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Left Block Width', NULL, 'Smartwave\\Megamenu\\Model\\Attribute\\Width', 0, 0, NULL, 0, NULL),
(146, 3, 'sw_menu_block_left_content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Left Block', NULL, NULL, 0, 0, NULL, 0, NULL),
(147, 3, 'sw_menu_block_right_width', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Right Block Width', NULL, 'Smartwave\\Megamenu\\Model\\Attribute\\Width', 0, 0, NULL, 0, NULL),
(148, 3, 'sw_menu_block_right_content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Right Block', NULL, NULL, 0, 0, NULL, 0, NULL),
(149, 3, 'sw_menu_block_bottom_content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Bottom Block', NULL, NULL, 0, 0, NULL, 0, NULL),
(150, 3, 'sw_ocat_hide_this_item', NULL, NULL, 'int', NULL, NULL, 'select', 'Hide This Category', NULL, 'Magento\\Eav\\Model\\Entity\\Attribute\\Source\\Boolean', 0, 0, NULL, 0, NULL),
(151, 3, 'sw_ocat_category_icon_image', NULL, 'Magento\\Catalog\\Model\\Category\\Attribute\\Backend\\Image', 'varchar', NULL, NULL, 'image', 'Icon Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(152, 3, 'sw_ocat_category_font_icon', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Font Icon Class', NULL, NULL, 0, 0, NULL, 0, 'If this category has no \"Icon Image\", font icon will be shown. example to input: icon-dollar'),
(153, 3, 'sw_ocat_category_hoverbgcolor', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Category Hover Background Color', NULL, NULL, 0, 0, NULL, 0, 'eg: #00d59d'),
(154, 3, 'sw_ocat_additional_content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Additional Content', NULL, NULL, 0, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_group`
--

CREATE TABLE `eav_attribute_group` (
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Default Id',
  `attribute_group_code` varchar(255) NOT NULL COMMENT 'Attribute Group Code',
  `tab_group_code` varchar(255) DEFAULT NULL COMMENT 'Tab Group Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

--
-- Dumping data for table `eav_attribute_group`
--

INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`, `attribute_group_code`, `tab_group_code`) VALUES
(1, 1, 'General', 1, 1, 'general', NULL),
(2, 2, 'General', 1, 1, 'general', NULL),
(3, 3, 'General', 10, 1, 'general', NULL),
(4, 3, 'General Information', 2, 0, 'general-information', NULL),
(5, 3, 'Display Settings', 20, 0, 'display-settings', NULL),
(6, 3, 'Custom Design', 30, 0, 'custom-design', NULL),
(7, 4, 'Product Details', 10, 1, 'product-details', 'basic'),
(8, 4, 'Advanced Pricing', 40, 0, 'advanced-pricing', 'advanced'),
(9, 4, 'Search Engine Optimization', 30, 0, 'search-engine-optimization', 'basic'),
(10, 4, 'Images', 20, 0, 'image-management', 'basic'),
(11, 4, 'Design', 50, 0, 'design', 'advanced'),
(12, 4, 'Autosettings', 60, 0, 'autosettings', 'advanced'),
(13, 4, 'Content', 15, 0, 'content', 'basic'),
(14, 4, 'Schedule Design Update', 55, 0, 'schedule-design-update', 'advanced'),
(15, 4, 'Bundle Items', 16, 0, 'bundle-items', NULL),
(16, 5, 'General', 1, 1, 'general', NULL),
(17, 6, 'General', 1, 1, 'general', NULL),
(18, 7, 'General', 1, 1, 'general', NULL),
(19, 8, 'General', 1, 1, 'general', NULL),
(20, 4, 'Gift Options', 61, 0, 'gift-options', NULL),
(21, 3, 'SW Menu', 31, 0, 'sw-menu', NULL),
(22, 3, 'Onepage Category', 32, 0, 'onepage-category', NULL),
(23, 9, 'Gift Options', 61, 0, 'gift-options', NULL),
(24, 9, 'Autosettings', 60, 0, 'autosettings', 'advanced'),
(25, 9, 'Schedule Design Update', 55, 0, 'schedule-design-update', 'advanced'),
(26, 9, 'Design', 50, 0, 'design', 'advanced'),
(27, 9, 'Advanced Pricing', 40, 0, 'advanced-pricing', 'advanced'),
(28, 9, 'Search Engine Optimization', 30, 0, 'search-engine-optimization', 'basic'),
(29, 9, 'Images', 20, 0, 'image-management', 'basic'),
(30, 9, 'Bundle Items', 16, 0, 'bundle-items', NULL),
(31, 9, 'Content', 15, 0, 'content', 'basic'),
(32, 9, 'Product Details', 10, 1, 'product-details', 'basic');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_label`
--

CREATE TABLE `eav_attribute_label` (
  `attribute_label_id` int(10) UNSIGNED NOT NULL COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option`
--

CREATE TABLE `eav_attribute_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

--
-- Dumping data for table `eav_attribute_option`
--

INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 20, 0),
(2, 20, 1),
(3, 20, 3),
(4, 93, 1),
(5, 93, 2),
(6, 93, 3),
(7, 93, 4),
(8, 93, 5);

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_swatch`
--

CREATE TABLE `eav_attribute_option_swatch` (
  `swatch_id` int(10) UNSIGNED NOT NULL COMMENT 'Swatch ID',
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID',
  `type` smallint(5) UNSIGNED NOT NULL COMMENT 'Swatch type: 0 - text, 1 - visual color, 2 - visual image',
  `value` varchar(255) DEFAULT NULL COMMENT 'Swatch Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magento Swatches table';

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_option_value`
--

CREATE TABLE `eav_attribute_option_value` (
  `value_id` int(10) UNSIGNED NOT NULL COMMENT 'Value Id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

--
-- Dumping data for table `eav_attribute_option_value`
--

INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female'),
(3, 3, 0, 'Not Specified'),
(4, 4, 0, 'White'),
(5, 5, 0, 'Black'),
(6, 6, 0, 'Red'),
(7, 7, 0, 'Blue'),
(8, 8, 0, 'Green');

-- --------------------------------------------------------

--
-- Table structure for table `eav_attribute_set`
--

CREATE TABLE `eav_attribute_set` (
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

--
-- Dumping data for table `eav_attribute_set`
--

INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 2),
(2, 2, 'Default', 2),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1),
(9, 4, 'Configurable', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity`
--

CREATE TABLE `eav_entity` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `is_active` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_attribute`
--

CREATE TABLE `eav_entity_attribute` (
  `entity_attribute_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

--
-- Dumping data for table `eav_entity_attribute`
--

INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 20),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 81),
(13, 1, 1, 1, 13, 115),
(14, 1, 1, 1, 14, 120),
(15, 1, 1, 1, 15, 82),
(16, 1, 1, 1, 16, 83),
(17, 1, 1, 1, 17, 100),
(18, 1, 1, 1, 18, 85),
(19, 1, 1, 1, 19, 86),
(20, 1, 1, 1, 20, 110),
(21, 1, 1, 1, 21, 121),
(22, 2, 2, 2, 22, 10),
(23, 2, 2, 2, 23, 20),
(24, 2, 2, 2, 24, 30),
(25, 2, 2, 2, 25, 40),
(26, 2, 2, 2, 26, 50),
(27, 2, 2, 2, 27, 60),
(28, 2, 2, 2, 28, 70),
(29, 2, 2, 2, 29, 80),
(30, 2, 2, 2, 30, 90),
(31, 2, 2, 2, 31, 100),
(32, 2, 2, 2, 32, 100),
(33, 2, 2, 2, 33, 110),
(34, 2, 2, 2, 34, 120),
(35, 2, 2, 2, 35, 130),
(36, 2, 2, 2, 36, 131),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 1, 1, 1, 41, 87),
(42, 1, 1, 1, 42, 100),
(43, 1, 1, 1, 43, 110),
(44, 1, 1, 1, 44, 120),
(45, 3, 3, 4, 45, 1),
(46, 3, 3, 4, 46, 2),
(47, 3, 3, 4, 47, 4),
(48, 3, 3, 4, 48, 5),
(49, 3, 3, 4, 49, 6),
(50, 3, 3, 4, 50, 7),
(51, 3, 3, 4, 51, 8),
(52, 3, 3, 5, 52, 10),
(53, 3, 3, 5, 53, 20),
(54, 3, 3, 5, 54, 30),
(55, 3, 3, 4, 55, 12),
(56, 3, 3, 4, 56, 13),
(57, 3, 3, 4, 57, 14),
(58, 3, 3, 4, 58, 15),
(59, 3, 3, 4, 59, 16),
(60, 3, 3, 6, 60, 10),
(61, 3, 3, 6, 61, 30),
(62, 3, 3, 6, 62, 40),
(63, 3, 3, 6, 63, 50),
(64, 3, 3, 6, 64, 60),
(65, 3, 3, 4, 65, 24),
(66, 3, 3, 4, 66, 25),
(67, 3, 3, 5, 67, 40),
(68, 3, 3, 5, 68, 50),
(69, 3, 3, 4, 69, 10),
(70, 3, 3, 6, 70, 5),
(71, 3, 3, 6, 71, 6),
(72, 3, 3, 5, 72, 51),
(73, 4, 4, 7, 73, 10),
(74, 4, 4, 7, 74, 20),
(75, 4, 4, 13, 75, 90),
(76, 4, 4, 13, 76, 100),
(77, 4, 4, 7, 77, 30),
(78, 4, 4, 8, 78, 3),
(79, 4, 4, 8, 79, 4),
(80, 4, 4, 8, 80, 5),
(81, 4, 4, 8, 81, 6),
(82, 4, 4, 7, 82, 70),
(83, 4, 4, 9, 84, 20),
(84, 4, 4, 9, 85, 30),
(85, 4, 4, 9, 86, 40),
(86, 4, 4, 10, 87, 1),
(87, 4, 4, 10, 88, 2),
(88, 4, 4, 10, 89, 3),
(89, 4, 4, 10, 90, 4),
(90, 4, 4, 7, 91, 6),
(91, 4, 4, 8, 92, 7),
(92, 4, 4, 7, 94, 90),
(93, 4, 4, 7, 95, 100),
(94, 4, 4, 10, 96, 5),
(95, 4, 4, 7, 97, 5),
(96, 4, 4, 8, 98, 8),
(97, 4, 4, 7, 99, 80),
(98, 4, 4, 14, 100, 40),
(99, 4, 4, 14, 101, 20),
(100, 4, 4, 14, 102, 30),
(101, 4, 4, 11, 103, 10),
(102, 4, 4, 11, 104, 5),
(103, 4, 4, 7, 105, 80),
(104, 4, 4, 11, 106, 6),
(105, 4, 4, 7, 107, 14),
(106, 4, 4, 7, 108, 15),
(107, 4, 4, 7, 109, 16),
(108, 4, 4, 7, 110, 17),
(109, 4, 4, 7, 111, 18),
(110, 4, 4, 7, 112, 19),
(111, 4, 4, 7, 113, 20),
(112, 4, 4, 7, 114, 110),
(113, 4, 4, 7, 115, 60),
(114, 4, 4, 14, 116, 50),
(115, 3, 3, 4, 117, 3),
(116, 3, 3, 4, 118, 17),
(117, 4, 4, 9, 119, 10),
(118, 4, 4, 7, 120, 11),
(119, 4, 4, 8, 121, 9),
(120, 4, 4, 8, 122, 10),
(121, 4, 4, 7, 123, 31),
(122, 4, 4, 7, 124, 21),
(123, 4, 4, 7, 125, 71),
(124, 4, 4, 8, 126, 11),
(125, 4, 4, 15, 127, 1),
(126, 4, 4, 7, 128, 111),
(127, 4, 4, 7, 129, 112),
(128, 4, 4, 7, 130, 113),
(129, 4, 4, 7, 131, 114),
(130, 4, 4, 10, 132, 3),
(131, 4, 4, 7, 133, 40),
(132, 4, 4, 20, 134, 10),
(133, 4, 4, 7, 135, 102),
(134, 3, 3, 21, 136, 10),
(135, 3, 3, 21, 137, 20),
(136, 3, 3, 21, 138, 30),
(137, 3, 3, 21, 139, 40),
(138, 3, 3, 21, 140, 50),
(139, 3, 3, 21, 141, 60),
(140, 3, 3, 21, 142, 70),
(141, 3, 3, 21, 143, 80),
(142, 3, 3, 21, 144, 90),
(143, 3, 3, 21, 145, 100),
(144, 3, 3, 21, 146, 110),
(145, 3, 3, 21, 147, 120),
(146, 3, 3, 21, 148, 130),
(147, 3, 3, 21, 149, 140),
(148, 3, 3, 22, 150, 10),
(149, 3, 3, 22, 151, 20),
(150, 3, 3, 22, 152, 30),
(151, 3, 3, 22, 153, 40),
(152, 3, 3, 22, 154, 50),
(154, 4, 9, 23, 134, 10),
(156, 4, 9, 25, 101, 20),
(158, 4, 9, 25, 102, 30),
(160, 4, 9, 25, 100, 40),
(162, 4, 9, 25, 116, 50),
(164, 4, 9, 26, 104, 5),
(166, 4, 9, 26, 106, 6),
(168, 4, 9, 26, 103, 10),
(170, 4, 9, 27, 78, 3),
(172, 4, 9, 27, 79, 4),
(174, 4, 9, 27, 80, 5),
(176, 4, 9, 27, 81, 6),
(178, 4, 9, 27, 92, 7),
(180, 4, 9, 27, 98, 8),
(182, 4, 9, 27, 121, 9),
(184, 4, 9, 27, 122, 10),
(186, 4, 9, 27, 126, 11),
(188, 4, 9, 28, 119, 10),
(190, 4, 9, 28, 84, 20),
(192, 4, 9, 28, 85, 30),
(194, 4, 9, 28, 86, 40),
(196, 4, 9, 29, 87, 1),
(198, 4, 9, 29, 88, 2),
(200, 4, 9, 29, 89, 3),
(202, 4, 9, 29, 132, 3),
(204, 4, 9, 29, 90, 4),
(206, 4, 9, 29, 96, 5),
(208, 4, 9, 30, 127, 1),
(210, 4, 9, 31, 75, 90),
(212, 4, 9, 31, 76, 100),
(214, 4, 9, 32, 97, 5),
(216, 4, 9, 32, 91, 6),
(218, 4, 9, 32, 73, 10),
(220, 4, 9, 32, 120, 11),
(222, 4, 9, 32, 107, 14),
(224, 4, 9, 32, 108, 15),
(226, 4, 9, 32, 109, 16),
(228, 4, 9, 32, 110, 17),
(230, 4, 9, 32, 111, 18),
(232, 4, 9, 32, 112, 19),
(234, 4, 9, 32, 74, 20),
(236, 4, 9, 32, 113, 20),
(238, 4, 9, 32, 124, 21),
(240, 4, 9, 32, 77, 30),
(242, 4, 9, 32, 123, 31),
(244, 4, 9, 32, 133, 40),
(246, 4, 9, 32, 115, 60),
(248, 4, 9, 32, 82, 70),
(250, 4, 9, 32, 125, 71),
(252, 4, 9, 32, 105, 80),
(254, 4, 9, 32, 99, 80),
(256, 4, 9, 32, 94, 90),
(258, 4, 9, 32, 95, 100),
(260, 4, 9, 32, 135, 102),
(262, 4, 9, 32, 114, 110),
(264, 4, 9, 32, 128, 111),
(266, 4, 9, 32, 129, 112),
(268, 4, 9, 32, 130, 113),
(270, 4, 9, 32, 131, 114),
(272, 4, 9, 32, 93, 116);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_datetime`
--

CREATE TABLE `eav_entity_datetime` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_decimal`
--

CREATE TABLE `eav_entity_decimal` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_int`
--

CREATE TABLE `eav_entity_int` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_store`
--

CREATE TABLE `eav_entity_store` (
  `entity_store_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_text`
--

CREATE TABLE `eav_entity_text` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_type`
--

CREATE TABLE `eav_entity_type` (
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT NULL COMMENT 'Increment Model',
  `increment_per_store` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) UNSIGNED NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT NULL COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

--
-- Dumping data for table `eav_entity_type`
--

INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'Magento\\Customer\\Model\\ResourceModel\\Customer', 'Magento\\Customer\\Model\\Attribute', 'customer_entity', NULL, NULL, 1, 'default', 1, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 0, 8, '0', 'customer_eav_attribute', 'Magento\\Customer\\Model\\ResourceModel\\Attribute\\Collection'),
(2, 'customer_address', 'Magento\\Customer\\Model\\ResourceModel\\Address', 'Magento\\Customer\\Model\\Attribute', 'customer_address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer_eav_attribute', 'Magento\\Customer\\Model\\ResourceModel\\Address\\Attribute\\Collection'),
(3, 'catalog_category', 'Magento\\Catalog\\Model\\ResourceModel\\Category', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'catalog_category_entity', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog_eav_attribute', 'Magento\\Catalog\\Model\\ResourceModel\\Category\\Attribute\\Collection'),
(4, 'catalog_product', 'Magento\\Catalog\\Model\\ResourceModel\\Product', 'Magento\\Catalog\\Model\\ResourceModel\\Eav\\Attribute', 'catalog_product_entity', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog_eav_attribute', 'Magento\\Catalog\\Model\\ResourceModel\\Product\\Attribute\\Collection'),
(5, 'order', 'Magento\\Sales\\Model\\ResourceModel\\Order', NULL, 'sales_order', NULL, NULL, 1, 'default', 5, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'Magento\\Sales\\Model\\ResourceModel\\Order', NULL, 'sales_invoice', NULL, NULL, 1, 'default', 6, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'Magento\\Sales\\Model\\ResourceModel\\Order\\Creditmemo', NULL, 'sales_creditmemo', NULL, NULL, 1, 'default', 7, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'Magento\\Sales\\Model\\ResourceModel\\Order\\Shipment', NULL, 'sales_shipment', NULL, NULL, 1, 'default', 8, 'Magento\\Eav\\Model\\Entity\\Increment\\NumericValue', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `eav_entity_varchar`
--

CREATE TABLE `eav_entity_varchar` (
  `value_id` int(11) NOT NULL COMMENT 'Value Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_element`
--

CREATE TABLE `eav_form_element` (
  `element_id` int(10) UNSIGNED NOT NULL COMMENT 'Element Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

--
-- Dumping data for table `eav_form_element`
--

INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 23, 0),
(2, 1, NULL, 25, 1),
(3, 1, NULL, 27, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 28, 4),
(6, 1, NULL, 29, 5),
(7, 1, NULL, 31, 6),
(8, 1, NULL, 33, 7),
(9, 1, NULL, 30, 8),
(10, 1, NULL, 34, 9),
(11, 1, NULL, 35, 10),
(12, 2, NULL, 23, 0),
(13, 2, NULL, 25, 1),
(14, 2, NULL, 27, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 28, 4),
(17, 2, NULL, 29, 5),
(18, 2, NULL, 31, 6),
(19, 2, NULL, 33, 7),
(20, 2, NULL, 30, 8),
(21, 2, NULL, 34, 9),
(22, 2, NULL, 35, 10),
(23, 3, NULL, 23, 0),
(24, 3, NULL, 25, 1),
(25, 3, NULL, 27, 2),
(26, 3, NULL, 28, 3),
(27, 3, NULL, 29, 4),
(28, 3, NULL, 31, 5),
(29, 3, NULL, 33, 6),
(30, 3, NULL, 30, 7),
(31, 3, NULL, 34, 8),
(32, 3, NULL, 35, 9),
(33, 4, NULL, 23, 0),
(34, 4, NULL, 25, 1),
(35, 4, NULL, 27, 2),
(36, 4, NULL, 28, 3),
(37, 4, NULL, 29, 4),
(38, 4, NULL, 31, 5),
(39, 4, NULL, 33, 6),
(40, 4, NULL, 30, 7),
(41, 4, NULL, 34, 8),
(42, 4, NULL, 35, 9);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset`
--

CREATE TABLE `eav_form_fieldset` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_fieldset_label`
--

CREATE TABLE `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type`
--

CREATE TABLE `eav_form_type` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

--
-- Dumping data for table `eav_form_type`
--

INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `eav_form_type_entity`
--

CREATE TABLE `eav_form_type_entity` (
  `type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Type Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `eav_form_type_entity`
--

INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template ID',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Template Creation',
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

-- --------------------------------------------------------

--
-- Table structure for table `flag`
--

CREATE TABLE `flag` (
  `flag_id` int(10) UNSIGNED NOT NULL COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flag';

--
-- Dumping data for table `flag`
--

INSERT INTO `flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'report_order_aggregated', 0, NULL, '2017-03-21 08:46:38'),
(2, 'report_tax_aggregated', 0, NULL, '2017-03-21 08:46:39'),
(3, 'report_shipping_aggregated', 0, NULL, '2017-03-21 08:46:39'),
(4, 'report_invoiced_aggregated', 0, NULL, '2017-03-21 08:46:40'),
(5, 'report_refunded_aggregated', 0, NULL, '2017-03-21 08:46:41'),
(6, 'report_coupons_aggregated', 0, NULL, '2017-03-21 08:46:41'),
(7, 'report_bestsellers_aggregated', 0, NULL, '2017-03-21 08:46:42'),
(8, 'report_product_viewed_aggregated', 0, NULL, '2017-03-21 08:46:45');

-- --------------------------------------------------------

--
-- Table structure for table `gift_message`
--

CREATE TABLE `gift_message` (
  `gift_message_id` int(10) UNSIGNED NOT NULL COMMENT 'GiftMessage Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Registrant',
  `message` text COMMENT 'Message'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

-- --------------------------------------------------------

--
-- Table structure for table `googleoptimizer_code`
--

CREATE TABLE `googleoptimizer_code` (
  `code_id` int(10) UNSIGNED NOT NULL COMMENT 'Google experiment code id',
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Optimized entity id product id or catalog id',
  `entity_type` varchar(50) DEFAULT NULL COMMENT 'Optimized entity type',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store id',
  `experiment_script` text COMMENT 'Google experiment script'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Experiment code';

-- --------------------------------------------------------

--
-- Table structure for table `importexport_importdata`
--

CREATE TABLE `importexport_importdata` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

-- --------------------------------------------------------

--
-- Table structure for table `import_history`
--

CREATE TABLE `import_history` (
  `history_id` int(10) UNSIGNED NOT NULL COMMENT 'History record Id',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Started at',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'User ID',
  `imported_file` varchar(255) DEFAULT NULL COMMENT 'Imported file',
  `execution_time` varchar(255) DEFAULT NULL COMMENT 'Execution time',
  `summary` varchar(255) DEFAULT NULL COMMENT 'Summary',
  `error_file` varchar(255) NOT NULL COMMENT 'Imported file with errors'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import history table';

-- --------------------------------------------------------

--
-- Table structure for table `indexer_state`
--

CREATE TABLE `indexer_state` (
  `state_id` int(10) UNSIGNED NOT NULL COMMENT 'Indexer State Id',
  `indexer_id` varchar(255) DEFAULT NULL COMMENT 'Indexer Id',
  `status` varchar(16) DEFAULT 'invalid' COMMENT 'Indexer Status',
  `updated` datetime DEFAULT NULL COMMENT 'Indexer Status',
  `hash_config` varchar(32) NOT NULL COMMENT 'Hash of indexer config'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer State';

--
-- Dumping data for table `indexer_state`
--

INSERT INTO `indexer_state` (`state_id`, `indexer_id`, `status`, `updated`, `hash_config`) VALUES
(1, 'design_config_grid', 'valid', '2017-03-23 13:02:47', '27baa8fe6a5369f52c8b7cbd54a3c3c4'),
(2, 'customer_grid', 'valid', '2016-09-05 03:09:28', 'a1bbcab4c6368d654719ccf6cf0e55a8'),
(3, 'catalog_category_product', 'valid', '2016-09-05 03:09:30', '57b48d3cf1fcd64abe6b01dea3173d02'),
(4, 'catalog_product_category', 'valid', '2016-08-26 09:21:50', '9957f66909342cc58ff2703dcd268bf4'),
(5, 'catalog_product_price', 'valid', '2016-09-05 03:09:33', '15a819a577a149220cd0722c291de721'),
(6, 'catalog_product_attribute', 'valid', '2016-09-05 03:09:33', '77eed0bf72b16099d299d0ab47b74910'),
(7, 'cataloginventory_stock', 'valid', '2016-09-05 03:09:35', '78a405fd852458c326c85096099d7d5e'),
(8, 'catalogrule_rule', 'valid', '2016-09-05 03:09:35', '5afe3cacdcb52ec3a7e68dc245679021'),
(9, 'catalogrule_product', 'invalid', '2017-03-21 06:46:42', '0ebee9e52ed424273132e8227fe646f3'),
(10, 'catalogsearch_fulltext', 'valid', '2016-09-05 03:09:42', '4486b57e2021aa78b526c68c9af2dcab');

-- --------------------------------------------------------

--
-- Table structure for table `integration`
--

CREATE TABLE `integration` (
  `integration_id` int(10) UNSIGNED NOT NULL COMMENT 'Integration ID',
  `name` varchar(255) NOT NULL COMMENT 'Integration name is displayed in the admin interface',
  `email` varchar(255) NOT NULL COMMENT 'Email address of the contact person',
  `endpoint` varchar(255) DEFAULT NULL COMMENT 'Endpoint for posting consumer credentials',
  `status` smallint(5) UNSIGNED NOT NULL COMMENT 'Integration status',
  `consumer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Oauth consumer',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update Time',
  `setup_type` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Integration type - manual or config file',
  `identity_link_url` varchar(255) DEFAULT NULL COMMENT 'Identity linking Url'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='integration';

-- --------------------------------------------------------

--
-- Table structure for table `layout_link`
--

CREATE TABLE `layout_link` (
  `layout_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Link Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `theme_id` int(10) UNSIGNED NOT NULL COMMENT 'Theme id',
  `layout_update_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Defines whether Layout Update is Temporary'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

-- --------------------------------------------------------

--
-- Table structure for table `layout_update`
--

CREATE TABLE `layout_update` (
  `layout_update_id` int(10) UNSIGNED NOT NULL COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update Timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

-- --------------------------------------------------------

--
-- Table structure for table `magefan_blog_category`
--

CREATE TABLE `magefan_blog_category` (
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Category Title',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Category Meta Title',
  `meta_keywords` text COMMENT 'Category Meta Keywords',
  `meta_description` text COMMENT 'Category Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Category String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Category Content Heading',
  `content` mediumtext COMMENT 'Category Content',
  `path` varchar(255) DEFAULT NULL COMMENT 'Category Path',
  `position` smallint(6) NOT NULL COMMENT 'Category Position',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Category Active',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Post Layout',
  `layout_update_xml` text COMMENT 'Post Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Post Custom Theme',
  `custom_layout` varchar(255) DEFAULT NULL COMMENT 'Post Custom Template',
  `custom_layout_update_xml` text COMMENT 'Post Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Post Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Post Custom Theme Active To Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Category Table';

-- --------------------------------------------------------

--
-- Table structure for table `magefan_blog_category_store`
--

CREATE TABLE `magefan_blog_category_store` (
  `category_id` int(11) NOT NULL COMMENT 'Category ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Category To Store Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `magefan_blog_post`
--

CREATE TABLE `magefan_blog_post` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Post Title',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Post Meta Title',
  `meta_keywords` text COMMENT 'Post Meta Keywords',
  `meta_description` text COMMENT 'Post Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Post String Identifier',
  `og_title` varchar(255) DEFAULT NULL COMMENT 'Post OG Title',
  `og_description` varchar(255) DEFAULT NULL COMMENT 'Post OG Description',
  `og_img` varchar(255) DEFAULT NULL COMMENT 'Post OG Img',
  `og_type` varchar(255) DEFAULT NULL COMMENT 'Post OG Type',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Post Content Heading',
  `content` mediumtext COMMENT 'Post Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Post Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Post Modification Time',
  `publish_time` timestamp NULL DEFAULT NULL COMMENT 'Post Publish Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Post Active',
  `featured_img` varchar(255) DEFAULT NULL COMMENT 'Thumbnail Image',
  `author_id` int(11) DEFAULT NULL COMMENT 'Author ID',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Post Layout',
  `layout_update_xml` text COMMENT 'Post Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Post Custom Theme',
  `custom_layout` varchar(255) DEFAULT NULL COMMENT 'Post Custom Template',
  `custom_layout_update_xml` text COMMENT 'Post Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Post Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Post Custom Theme Active To Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post Table';

--
-- Dumping data for table `magefan_blog_post`
--

INSERT INTO `magefan_blog_post` (`post_id`, `title`, `meta_title`, `meta_keywords`, `meta_description`, `identifier`, `og_title`, `og_description`, `og_img`, `og_type`, `content_heading`, `content`, `creation_time`, `update_time`, `publish_time`, `is_active`, `featured_img`, `author_id`, `page_layout`, `layout_update_xml`, `custom_theme`, `custom_layout`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, 'Hello world!', NULL, 'magento 2 blog', 'Magento 2 blog default post.', 'hello-world', NULL, NULL, NULL, NULL, 'Hello world!', 'Welcome to <a target=\"_blank\" href=\"http://magefan.com/\" title=\"Magefan - solutions for Magento 2\">Magefan</a> blog extension for Magento&reg; 2. This is your first post. Edit or delete it, then start blogging!', '2016-09-05 05:55:09', '2016-09-05 05:55:09', '2016-09-05 05:55:09', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `magefan_blog_post_category`
--

CREATE TABLE `magefan_blog_post_category` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `category_id` int(11) NOT NULL COMMENT 'Category ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Category Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `magefan_blog_post_relatedpost`
--

CREATE TABLE `magefan_blog_post_relatedpost` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `related_id` int(11) NOT NULL COMMENT 'Related Post ID',
  `position` int(11) NOT NULL COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Post Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `magefan_blog_post_relatedproduct`
--

CREATE TABLE `magefan_blog_post_relatedproduct` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `related_id` int(10) UNSIGNED NOT NULL COMMENT 'Related Product ID',
  `position` int(11) NOT NULL COMMENT 'Position'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Product Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `magefan_blog_post_store`
--

CREATE TABLE `magefan_blog_post_store` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Store Linkage Table';

--
-- Dumping data for table `magefan_blog_post_store`
--

INSERT INTO `magefan_blog_post_store` (`post_id`, `store_id`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `magefan_blog_post_tag`
--

CREATE TABLE `magefan_blog_post_tag` (
  `post_id` int(11) NOT NULL COMMENT 'Post ID',
  `tag_id` int(11) NOT NULL COMMENT 'Tag ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Post To Category Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `magefan_blog_tag`
--

CREATE TABLE `magefan_blog_tag` (
  `tag_id` int(11) NOT NULL COMMENT 'Tag ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Tag Title',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Tag String Identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Magefan Blog Tag Table';

-- --------------------------------------------------------

--
-- Table structure for table `mview_state`
--

CREATE TABLE `mview_state` (
  `state_id` int(10) UNSIGNED NOT NULL COMMENT 'View State Id',
  `view_id` varchar(255) DEFAULT NULL COMMENT 'View Id',
  `mode` varchar(16) DEFAULT 'disabled' COMMENT 'View Mode',
  `status` varchar(16) DEFAULT 'idle' COMMENT 'View Status',
  `updated` datetime DEFAULT NULL COMMENT 'View updated time',
  `version_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'View Version Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='View State';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_problem`
--

CREATE TABLE `newsletter_problem` (
  `problem_id` int(10) UNSIGNED NOT NULL COMMENT 'Problem Id',
  `subscriber_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) UNSIGNED DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue`
--

CREATE TABLE `newsletter_queue` (
  `queue_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Id',
  `template_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Template ID',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_link`
--

CREATE TABLE `newsletter_queue_link` (
  `queue_link_id` int(10) UNSIGNED NOT NULL COMMENT 'Queue Link Id',
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_queue_store_link`
--

CREATE TABLE `newsletter_queue_store_link` (
  `queue_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `subscriber_id` int(10) UNSIGNED NOT NULL COMMENT 'Subscriber Id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_template`
--

CREATE TABLE `newsletter_template` (
  `template_id` int(10) UNSIGNED NOT NULL COMMENT 'Template ID',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) UNSIGNED DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` text COMMENT 'Callback URL',
  `rejected_callback_url` text NOT NULL COMMENT 'Rejected callback URL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) UNSIGNED NOT NULL COMMENT 'Nonce Timestamp',
  `consumer_id` int(10) UNSIGNED NOT NULL COMMENT 'Consumer ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Nonce';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_token`
--

CREATE TABLE `oauth_token` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `consumer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Oauth Consumer ID',
  `admin_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` text NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `user_type` int(11) DEFAULT NULL COMMENT 'User type',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

-- --------------------------------------------------------

--
-- Table structure for table `oauth_token_request_log`
--

CREATE TABLE `oauth_token_request_log` (
  `log_id` int(10) UNSIGNED NOT NULL COMMENT 'Log Id',
  `user_name` varchar(255) NOT NULL COMMENT 'Customer email or admin login',
  `user_type` smallint(5) UNSIGNED NOT NULL COMMENT 'User type (admin or customer)',
  `failures_count` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Number of failed authentication attempts in a row',
  `lock_expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Lock expiration time'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log of token request authentication failures.';

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_request_event`
--

CREATE TABLE `password_reset_request_event` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Entity ID',
  `request_type` smallint(5) UNSIGNED NOT NULL COMMENT 'Type of the event under a security control',
  `account_reference` varchar(255) DEFAULT NULL COMMENT 'An identifier for existing account or another target',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Timestamp when the event occurs',
  `ip` varchar(15) NOT NULL COMMENT 'Remote user IP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Password Reset Request Event under a security control';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_billing_agreement`
--

CREATE TABLE `paypal_billing_agreement` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_billing_agreement_order`
--

CREATE TABLE `paypal_billing_agreement_order` (
  `agreement_id` int(10) UNSIGNED NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_cert`
--

CREATE TABLE `paypal_cert` (
  `cert_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Cert Id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payment_transaction`
--

CREATE TABLE `paypal_payment_transaction` (
  `transaction_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report`
--

CREATE TABLE `paypal_settlement_report` (
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

-- --------------------------------------------------------

--
-- Table structure for table `paypal_settlement_report_row`
--

CREATE TABLE `paypal_settlement_report_row` (
  `row_id` int(10) UNSIGNED NOT NULL COMMENT 'Row Id',
  `report_id` int(10) UNSIGNED NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT NULL COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

-- --------------------------------------------------------

--
-- Table structure for table `persistent_session`
--

CREATE TABLE `persistent_session` (
  `persistent_id` int(10) UNSIGNED NOT NULL COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_price`
--

CREATE TABLE `product_alert_price` (
  `alert_price_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert price id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

-- --------------------------------------------------------

--
-- Table structure for table `product_alert_stock`
--

CREATE TABLE `product_alert_stock` (
  `alert_stock_id` int(10) UNSIGNED NOT NULL COMMENT 'Product alert stock id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product alert status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) UNSIGNED DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `is_persistent` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Is Quote Persistent',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `is_persistent`, `gift_message_id`) VALUES
(1, 1, '2017-03-18 14:05:57', '2017-03-21 07:41:22', NULL, 1, 0, 0, 0, '0.0000', 0, '0.0000', '0.0000', 'KES', 'KES', 'KES', '70.0000', '70.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', NULL, NULL, NULL, NULL, 'KES', '1.0000', '1.0000', NULL, NULL, '70.0000', '70.0000', '70.0000', '70.0000', 1, 0, NULL, 0, NULL),
(2, 1, '2017-03-23 09:16:22', '2017-03-23 10:13:46', NULL, 1, 0, 0, 1, '6.0000', 0, '0.0000', '0.0000', 'KES', 'KES', 'KES', '4110.0000', '4110.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', '3', NULL, NULL, NULL, 'KES', '1.0000', '1.0000', NULL, NULL, '4800.0000', '4800.0000', '4080.0000', '4080.0000', 1, 0, NULL, 0, NULL),
(3, 1, '2017-03-23 11:45:16', '2017-03-23 11:52:41', NULL, 1, 0, 0, 4, '4.0000', 0, '0.0000', '0.0000', 'KES', 'KES', 'KES', '2124.0000', '2124.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', '2', NULL, NULL, NULL, 'KES', '1.0000', '1.0000', NULL, NULL, '2360.0000', '2360.0000', '2124.0000', '2124.0000', 1, 0, NULL, 0, NULL),
(4, 1, '2017-03-23 13:07:56', '2017-03-23 13:08:27', NULL, 1, 0, 0, 1, '3.0000', 0, '0.0000', '0.0000', 'KES', 'KES', 'KES', '2835.0000', '2835.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', '2', NULL, NULL, NULL, 'KES', '1.0000', '1.0000', NULL, NULL, '3150.0000', '3150.0000', '2835.0000', '2835.0000', 1, 0, NULL, 0, NULL),
(5, 1, '2017-03-24 04:32:02', '2017-03-24 04:40:38', NULL, 1, 0, 0, 1, '2.0000', 0, '0.0000', '0.0000', 'KES', 'KES', 'KES', '665.0000', '665.0000', NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '::1', '1', NULL, NULL, NULL, 'KES', '1.0000', '1.0000', NULL, NULL, '700.0000', '700.0000', '665.0000', '665.0000', 1, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_address`
--

CREATE TABLE `quote_address` (
  `address_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(10) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(20) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(20) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(20) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(40) DEFAULT NULL COMMENT 'City',
  `region` varchar(40) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(20) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(30) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(20) DEFAULT NULL COMMENT 'Phone Number',
  `fax` varchar(20) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `collect_shipping_rates` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(40) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `free_shipping` smallint(6) DEFAULT NULL,
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

--
-- Dumping data for table `quote_address`
--

INSERT INTO `quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `discount_tax_compensation_amount`, `base_discount_tax_compensation_amount`, `shipping_discount_tax_compensation_amount`, `base_shipping_discount_tax_compensation_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `free_shipping`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
(1, 1, '2017-03-18 14:05:57', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'N;', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, '2017-03-18 14:05:57', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '1.0000', '70.0000', '70.0000', '70.0000', '70.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '70.0000', '70.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '70.0000', '70.0000', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, '2017-03-23 09:16:22', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, 'Samuel', NULL, 'Kimani', NULL, 'Derite Applications Ltd', '01 Parkcourt', 'Parklands', 'Nairobi', NULL, '25434', 'KE', '0724814212', NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'N;', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, '2017-03-23 09:16:22', '2017-03-23 09:48:53', NULL, 0, NULL, 'shipping', NULL, NULL, 'Samuel', NULL, 'Kimani', NULL, 'Derite Applications Ltd', '01 Parkcourt', 'Parklands', 'Nairobi', NULL, '25434', 'KE', '0724814212', NULL, 0, 1, 'flatrate_flatrate', 'Flat Rate - Fixed', '1200.0000', '4800.0000', '4800.0000', '4080.0000', '4080.0000', '0.0000', '0.0000', '30.0000', '30.0000', '0.0000', '0.0000', '-720.0000', '-720.0000', '4110.0000', '4110.0000', NULL, 'a:0:{}', '15% Discount', '0.0000', '0.0000', '4800.0000', '4800.0000', '0.0000', '0.0000', '0.0000', NULL, '30.0000', '30.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, '2017-03-23 11:45:16', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'N;', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, '2017-03-23 11:45:16', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '201.8000', '2360.0000', '2360.0000', '2124.0000', '2124.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '-236.0000', '-236.0000', '2124.0000', '2124.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '2360.0000', '2360.0000', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, '2017-03-23 13:07:56', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'N;', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, '2017-03-23 13:07:56', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '1.5000', '3150.0000', '3150.0000', '2835.0000', '2835.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '-315.0000', '-315.0000', '2835.0000', '2835.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '3150.0000', '3150.0000', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, '2017-03-24 04:32:02', '0000-00-00 00:00:00', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', NULL, NULL, '0.0000', '0.0000', '0.0000', '0.0000', NULL, 'N;', NULL, NULL, NULL, '0.0000', NULL, '0.0000', '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, '2017-03-24 04:32:02', '0000-00-00 00:00:00', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '1.6000', '700.0000', '700.0000', '665.0000', '665.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '-35.0000', '-35.0000', '665.0000', '665.0000', NULL, 'a:0:{}', NULL, '0.0000', '0.0000', '700.0000', '700.0000', '0.0000', '0.0000', '0.0000', NULL, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_address_item`
--

CREATE TABLE `quote_address_item` (
  `address_item_id` int(10) UNSIGNED NOT NULL COMMENT 'Address Item Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `is_qty_decimal` int(10) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) UNSIGNED DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` int(11) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

-- --------------------------------------------------------

--
-- Table structure for table `quote_id_mask`
--

CREATE TABLE `quote_id_mask` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `quote_id` int(10) UNSIGNED NOT NULL COMMENT 'Quote ID',
  `masked_id` varchar(32) DEFAULT NULL COMMENT 'Masked ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Quote ID and masked ID mapping';

--
-- Dumping data for table `quote_id_mask`
--

INSERT INTO `quote_id_mask` (`entity_id`, `quote_id`, `masked_id`) VALUES
(2, 2, '4213fe0904122c4fee4bc547c259a3a2'),
(1, 1, '51bc122b62413b824dec55ef7b40d000'),
(4, 4, '80f8ffb8355cd45c76485d3f98a835b5'),
(5, 5, '9d52556f8815346c0dd5afa36080b24f'),
(3, 3, 'e496e3513ca79854848bfd45cbb8a3da');

-- --------------------------------------------------------

--
-- Table structure for table `quote_item`
--

CREATE TABLE `quote_item` (
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `is_qty_decimal` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `free_shipping` smallint(6) DEFAULT NULL,
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

--
-- Dumping data for table `quote_item`
--

INSERT INTO `quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `discount_tax_compensation_amount`, `base_discount_tax_compensation_amount`, `free_shipping`, `gift_message_id`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`) VALUES
(2, 2, '2017-03-23 09:43:26', '2017-03-23 10:13:47', 16, 1, NULL, 0, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE', 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE', NULL, '3', NULL, 0, 0, '200.0000', '6.0000', '800.0000', '800.0000', NULL, '15.0000', '720.0000', '720.0000', '0.0000', '0.0000', '0.0000', '4800.0000', '4800.0000', '0.0000', '1200.0000', 'simple', NULL, NULL, NULL, NULL, '600.0000', '800.0000', '800.0000', '4800.0000', '4800.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, '2017-03-23 11:45:17', '2017-03-23 11:45:42', 16, 1, NULL, 0, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE', 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE', NULL, '2', NULL, 0, 0, '200.0000', '1.0000', '800.0000', '800.0000', NULL, '10.0000', '80.0000', '80.0000', '0.0000', '0.0000', '0.0000', '800.0000', '800.0000', '0.0000', '200.0000', 'simple', NULL, NULL, NULL, NULL, '600.0000', '800.0000', '800.0000', '800.0000', '800.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, '2017-03-23 11:45:42', '0000-00-00 00:00:00', 17, 1, NULL, 0, 'KIKOI RAHA 500G CLASSIC TEA LEAVES', 'KIKOI RAHA 500G CLASSIC TEA LEAVES', NULL, '2', NULL, 0, 0, '0.5000', '1.0000', '1050.0000', '1050.0000', NULL, '10.0000', '105.0000', '105.0000', '0.0000', '0.0000', '0.0000', '1050.0000', '1050.0000', '0.0000', '0.5000', 'simple', NULL, NULL, NULL, NULL, NULL, '1050.0000', '1050.0000', '1050.0000', '1050.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, '2017-03-23 11:46:19', '0000-00-00 00:00:00', 20, 1, NULL, 0, 'OMO 500G EXTRA FRESH HANDWASH', 'OMO 500G EXTRA FRESH HANDWASH', NULL, '2', NULL, 0, 0, '0.5000', '1.0000', '160.0000', '160.0000', NULL, '10.0000', '16.0000', '16.0000', '0.0000', '0.0000', '0.0000', '160.0000', '160.0000', '0.0000', '0.5000', 'simple', NULL, NULL, NULL, NULL, NULL, '160.0000', '160.0000', '160.0000', '160.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, '2017-03-23 11:52:41', '0000-00-00 00:00:00', 21, 1, NULL, 0, 'AXION 800G LEMON LIME DISHWASHING PASTE', 'AXION 800G LEMON LIME DISHWASHING PASTE', NULL, '2', NULL, 0, 0, '0.8000', '1.0000', '350.0000', '350.0000', NULL, '10.0000', '35.0000', '35.0000', '0.0000', '0.0000', '0.0000', '350.0000', '350.0000', '0.0000', '0.8000', 'simple', NULL, NULL, NULL, NULL, NULL, '350.0000', '350.0000', '350.0000', '350.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, '2017-03-23 13:07:57', '2017-03-23 13:08:27', 17, 1, NULL, 0, 'KIKOI RAHA 500G CLASSIC TEA LEAVES', 'KIKOI RAHA 500G CLASSIC TEA LEAVES', NULL, '2', NULL, 0, 0, '0.5000', '3.0000', '1050.0000', '1050.0000', NULL, '10.0000', '315.0000', '315.0000', '0.0000', '0.0000', '0.0000', '3150.0000', '3150.0000', '0.0000', '1.5000', 'simple', NULL, NULL, NULL, NULL, NULL, '1050.0000', '1050.0000', '3150.0000', '3150.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 5, '2017-03-24 04:32:02', '2017-03-24 04:40:38', 21, 1, NULL, 0, 'AXION 800G LEMON LIME DISHWASHING PASTE', 'AXION 800G LEMON LIME DISHWASHING PASTE', NULL, '1', NULL, 0, 0, '0.8000', '2.0000', '350.0000', '350.0000', NULL, '5.0000', '35.0000', '35.0000', '0.0000', '0.0000', '0.0000', '700.0000', '700.0000', '0.0000', '1.6000', 'simple', NULL, NULL, NULL, NULL, NULL, '350.0000', '350.0000', '700.0000', '700.0000', '0.0000', '0.0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quote_item_option`
--

CREATE TABLE `quote_item_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Option Id',
  `item_id` int(10) UNSIGNED NOT NULL COMMENT 'Item Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

--
-- Dumping data for table `quote_item_option`
--

INSERT INTO `quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
(2, 2, 16, 'info_buyRequest', 'a:3:{s:4:\"uenc\";s:36:\"aHR0cDovL2xvY2FsaG9zdC9ndWJhdG8yLw,,\";s:7:\"product\";s:2:\"16\";s:3:\"qty\";d:1;}'),
(3, 3, 16, 'info_buyRequest', 'a:3:{s:4:\"uenc\";s:36:\"aHR0cDovL2xvY2FsaG9zdC9ndWJhdG8yLw,,\";s:7:\"product\";s:2:\"16\";s:3:\"qty\";d:1;}'),
(4, 4, 17, 'info_buyRequest', 'a:3:{s:4:\"uenc\";s:36:\"aHR0cDovL2xvY2FsaG9zdC9ndWJhdG8yLw,,\";s:7:\"product\";s:2:\"17\";s:3:\"qty\";d:1;}'),
(5, 5, 20, 'info_buyRequest', 'a:3:{s:4:\"uenc\";s:36:\"aHR0cDovL2xvY2FsaG9zdC9ndWJhdG8yLw,,\";s:7:\"product\";s:2:\"20\";s:3:\"qty\";d:1;}'),
(6, 6, 21, 'info_buyRequest', 'a:3:{s:4:\"uenc\";s:36:\"aHR0cDovL2xvY2FsaG9zdC9ndWJhdG8yLw,,\";s:7:\"product\";s:2:\"21\";s:3:\"qty\";d:1;}'),
(7, 7, 17, 'info_buyRequest', 'a:3:{s:4:\"uenc\";s:36:\"aHR0cDovL2xvY2FsaG9zdC9ndWJhdG8yLw,,\";s:7:\"product\";s:2:\"17\";s:3:\"qty\";d:1;}'),
(8, 8, 21, 'info_buyRequest', 'a:3:{s:4:\"uenc\";s:36:\"aHR0cDovL2xvY2FsaG9zdC9ndWJhdG8yLw,,\";s:7:\"product\";s:2:\"21\";s:3:\"qty\";d:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `quote_payment`
--

CREATE TABLE `quote_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL COMMENT 'Payment Id',
  `quote_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last_4` varchar(255) DEFAULT NULL COMMENT 'Cc Last 4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

-- --------------------------------------------------------

--
-- Table structure for table `quote_shipping_rate`
--

CREATE TABLE `quote_shipping_rate` (
  `rate_id` int(10) UNSIGNED NOT NULL COMMENT 'Rate Id',
  `address_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

--
-- Dumping data for table `quote_shipping_rate`
--

INSERT INTO `quote_shipping_rate` (`rate_id`, `address_id`, `created_at`, `updated_at`, `carrier`, `carrier_title`, `code`, `method`, `method_description`, `price`, `error_message`, `method_title`) VALUES
(4, 4, '2017-03-23 10:13:46', '0000-00-00 00:00:00', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, '30.0000', NULL, 'Fixed');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Rating Id',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Position On Storefront',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Rating is active.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ratings';

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`, `is_active`) VALUES
(1, 1, 'Quality', 0, 1),
(2, 1, 'Value', 0, 1),
(3, 1, 'Price', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating_entity`
--

CREATE TABLE `rating_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating entities';

--
-- Dumping data for table `rating_entity`
--

INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Table structure for table `rating_option`
--

CREATE TABLE `rating_option` (
  `option_id` int(10) UNSIGNED NOT NULL COMMENT 'Rating Option Id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Ration option position on Storefront'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating options';

--
-- Dumping data for table `rating_option`
--

INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote`
--

CREATE TABLE `rating_option_vote` (
  `vote_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Vote id',
  `option_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) UNSIGNED DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

-- --------------------------------------------------------

--
-- Table structure for table `rating_option_vote_aggregated`
--

CREATE TABLE `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `rating_store`
--

CREATE TABLE `rating_store` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- Table structure for table `rating_title`
--

CREATE TABLE `rating_title` (
  `rating_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_counts`
--

CREATE TABLE `reporting_counts` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Item Reported',
  `count` int(10) UNSIGNED DEFAULT NULL COMMENT 'Count Value',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all count related events generated via the cron job';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_module_status`
--

CREATE TABLE `reporting_module_status` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Module Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Module Name',
  `active` varchar(255) DEFAULT NULL COMMENT 'Module Active Status',
  `setup_version` varchar(255) DEFAULT NULL COMMENT 'Module Version',
  `state` varchar(255) DEFAULT NULL COMMENT 'Module State',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Module Status Table';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_orders`
--

CREATE TABLE `reporting_orders` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `total` decimal(20,2) DEFAULT NULL COMMENT 'Total From Store',
  `total_base` decimal(20,2) DEFAULT NULL COMMENT 'Total From Base Currency',
  `item_count` int(10) UNSIGNED NOT NULL COMMENT 'Line Item Count',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for all orders';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_system_updates`
--

CREATE TABLE `reporting_system_updates` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'Update Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for system updates';

-- --------------------------------------------------------

--
-- Table structure for table `reporting_users`
--

CREATE TABLE `reporting_users` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `type` varchar(255) DEFAULT NULL COMMENT 'User Type',
  `action` varchar(255) DEFAULT NULL COMMENT 'Action Performed',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reporting for user actions';

-- --------------------------------------------------------

--
-- Table structure for table `report_compared_product_index`
--

CREATE TABLE `report_compared_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

--
-- Dumping data for table `report_compared_product_index`
--

INSERT INTO `report_compared_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 56, NULL, 18, NULL, '2017-03-22 07:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `report_event`
--

CREATE TABLE `report_event` (
  `event_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Logged At',
  `event_type_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

--
-- Dumping data for table `report_event`
--

INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2016-08-26 19:05:30', 1, 15, 4, 1, 1),
(2, '2016-08-26 19:07:05', 1, 9, 4, 1, 1),
(3, '2016-08-26 19:10:49', 1, 9, 4, 1, 1),
(4, '2016-08-26 19:13:37', 1, 15, 4, 1, 1),
(5, '2017-03-18 13:00:28', 1, 6, 26, 1, 1),
(6, '2017-03-18 14:05:58', 4, 1, 30, 1, 1),
(7, '2017-03-21 07:30:18', 1, 16, 44, 1, 1),
(8, '2017-03-21 07:30:54', 1, 8, 44, 1, 1),
(9, '2017-03-21 07:46:02', 1, 17, 44, 1, 1),
(10, '2017-03-21 09:15:05', 1, 21, 46, 1, 1),
(11, '2017-03-22 06:52:48', 1, 16, 55, 1, 1),
(12, '2017-03-22 07:05:19', 1, 21, 56, 1, 1),
(13, '2017-03-22 07:49:52', 3, 18, 56, 1, 1),
(14, '2017-03-22 09:39:39', 1, 17, 58, 1, 1),
(15, '2017-03-22 09:43:58', 1, 17, 58, 1, 1),
(16, '2017-03-23 09:16:23', 4, 16, 67, 1, 1),
(17, '2017-03-23 09:43:25', 4, 16, 67, 1, 1),
(18, '2017-03-23 11:45:17', 4, 16, 68, 1, 1),
(19, '2017-03-23 11:45:42', 4, 17, 68, 1, 1),
(20, '2017-03-23 11:46:19', 4, 20, 68, 1, 1),
(21, '2017-03-23 11:52:41', 4, 21, 68, 1, 1),
(22, '2017-03-23 13:07:57', 4, 17, 69, 1, 1),
(23, '2017-03-24 04:32:02', 4, 21, 70, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_event_types`
--

CREATE TABLE `report_event_types` (
  `event_type_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

--
-- Dumping data for table `report_event_types`
--

INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_daily`
--

CREATE TABLE `report_viewed_product_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

--
-- Dumping data for table `report_viewed_product_aggregated_daily`
--

INSERT INTO `report_viewed_product_aggregated_daily` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2017-03-21', 1, 16, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE', '850.0000', 1, 1),
(2, '2017-03-21', 1, 17, 'KIKOI RAHA 500G CLASSIC TEA LEAVES', '1050.0000', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_monthly`
--

CREATE TABLE `report_viewed_product_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

--
-- Dumping data for table `report_viewed_product_aggregated_monthly`
--

INSERT INTO `report_viewed_product_aggregated_monthly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2017-03-01', 1, 16, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE', '850.0000', 1, 1),
(2, '2017-03-01', 1, 17, 'KIKOI RAHA 500G CLASSIC TEA LEAVES', '1050.0000', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_aggregated_yearly`
--

CREATE TABLE `report_viewed_product_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

--
-- Dumping data for table `report_viewed_product_aggregated_yearly`
--

INSERT INTO `report_viewed_product_aggregated_yearly` (`id`, `period`, `store_id`, `product_id`, `product_name`, `product_price`, `views_num`, `rating_pos`) VALUES
(1, '2017-01-01', 1, 16, 'NESCAFE 200G CLASSIC JAR LOCAL COFFEE', '850.0000', 1, 1),
(2, '2017-01-01', 1, 17, 'KIKOI RAHA 500G CLASSIC TEA LEAVES', '1050.0000', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `report_viewed_product_index`
--

CREATE TABLE `report_viewed_product_index` (
  `index_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Index Id',
  `visitor_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Added At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

--
-- Dumping data for table `report_viewed_product_index`
--

INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(4, 44, NULL, 16, 1, '2017-03-21 07:30:18'),
(6, 44, NULL, 17, 1, '2017-03-21 07:46:02'),
(7, 46, NULL, 21, 1, '2017-03-21 09:15:05'),
(8, 55, NULL, 16, 1, '2017-03-22 06:52:48'),
(9, 56, NULL, 21, 1, '2017-03-22 07:05:19'),
(10, 58, NULL, 17, 1, '2017-03-22 09:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Review create date',
  `entity_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

-- --------------------------------------------------------

--
-- Table structure for table `review_detail`
--

CREATE TABLE `review_detail` (
  `detail_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review detail id',
  `review_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) UNSIGNED DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Customer Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

-- --------------------------------------------------------

--
-- Table structure for table `review_entity`
--

CREATE TABLE `review_entity` (
  `entity_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review entities';

--
-- Dumping data for table `review_entity`
--

INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `review_entity_summary`
--

CREATE TABLE `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Store id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

-- --------------------------------------------------------

--
-- Table structure for table `review_status`
--

CREATE TABLE `review_status` (
  `status_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review statuses';

--
-- Dumping data for table `review_status`
--

INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `review_store`
--

CREATE TABLE `review_store` (
  `review_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule`
--

CREATE TABLE `salesrule` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From',
  `to_date` date DEFAULT NULL COMMENT 'To',
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Discount Step',
  `apply_to_shipping` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'User Per Coupon',
  `simple_free_shipping` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule';

--
-- Dumping data for table `salesrule`
--

INSERT INTO `salesrule` (`rule_id`, `name`, `description`, `from_date`, `to_date`, `uses_per_customer`, `is_active`, `conditions_serialized`, `actions_serialized`, `stop_rules_processing`, `is_advanced`, `product_ids`, `sort_order`, `simple_action`, `discount_amount`, `discount_qty`, `discount_step`, `apply_to_shipping`, `times_used`, `is_rss`, `coupon_type`, `use_auto_generation`, `uses_per_coupon`, `simple_free_shipping`) VALUES
(1, '5% Discount', 'For shopping worth 500 to 1500', '2017-03-23', '2019-03-31', 0, 1, 'a:7:{s:4:\"type\";s:46:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";s:10:\"conditions\";a:2:{i:0;a:5:{s:4:\"type\";s:46:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Address\";s:9:\"attribute\";s:13:\"base_subtotal\";s:8:\"operator\";s:2:\">=\";s:5:\"value\";s:3:\"500\";s:18:\"is_value_processed\";b:0;}i:1;a:5:{s:4:\"type\";s:46:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Address\";s:9:\"attribute\";s:13:\"base_subtotal\";s:8:\"operator\";s:2:\"<=\";s:5:\"value\";s:4:\"1500\";s:18:\"is_value_processed\";b:0;}}}', 'a:6:{s:4:\"type\";s:54:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Product\\Combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";}', 0, 1, NULL, 1, 'by_percent', '5.0000', NULL, 0, 0, 0, 1, 1, 0, 0, NULL),
(2, '10% Discount', 'Products worth between KES1,501 to KES4,000', '2017-03-23', '2019-03-31', 0, 1, 'a:7:{s:4:\"type\";s:46:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";s:10:\"conditions\";a:2:{i:0;a:5:{s:4:\"type\";s:46:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Address\";s:9:\"attribute\";s:13:\"base_subtotal\";s:8:\"operator\";s:1:\">\";s:5:\"value\";s:4:\"1500\";s:18:\"is_value_processed\";b:0;}i:1;a:5:{s:4:\"type\";s:46:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Address\";s:9:\"attribute\";s:13:\"base_subtotal\";s:8:\"operator\";s:2:\"<=\";s:5:\"value\";s:4:\"4000\";s:18:\"is_value_processed\";b:0;}}}', 'a:6:{s:4:\"type\";s:54:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Product\\Combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";}', 0, 1, NULL, 2, 'by_percent', '10.0000', NULL, 0, 0, 0, 1, 1, 0, 0, NULL),
(3, '15% Discount', 'Products worth more than KES4,000', '2017-03-23', '2019-03-31', 0, 1, 'a:7:{s:4:\"type\";s:46:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";s:10:\"conditions\";a:1:{i:0;a:5:{s:4:\"type\";s:46:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Address\";s:9:\"attribute\";s:13:\"base_subtotal\";s:8:\"operator\";s:1:\">\";s:5:\"value\";s:4:\"4000\";s:18:\"is_value_processed\";b:0;}}}', 'a:6:{s:4:\"type\";s:54:\"Magento\\SalesRule\\Model\\Rule\\Condition\\Product\\Combine\";s:9:\"attribute\";N;s:8:\"operator\";N;s:5:\"value\";s:1:\"1\";s:18:\"is_value_processed\";N;s:10:\"aggregator\";s:3:\"all\";}', 1, 1, NULL, 3, 'by_percent', '15.0000', NULL, 0, 0, 0, 1, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon`
--

CREATE TABLE `salesrule_coupon` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) UNSIGNED DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated`
--

CREATE TABLE `salesrule_coupon_aggregated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated_order`
--

CREATE TABLE `salesrule_coupon_aggregated_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_aggregated_updated`
--

CREATE TABLE `salesrule_coupon_aggregated_updated` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Aggregated Updated';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_coupon_usage`
--

CREATE TABLE `salesrule_coupon_usage` (
  `coupon_id` int(10) UNSIGNED NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer`
--

CREATE TABLE `salesrule_customer` (
  `rule_customer_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Customer Id',
  `rule_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Times Used'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_customer_group`
--

CREATE TABLE `salesrule_customer_group` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

--
-- Dumping data for table `salesrule_customer_group`
--

INSERT INTO `salesrule_customer_group` (`rule_id`, `customer_group_id`) VALUES
(1, 0),
(1, 1),
(1, 2),
(1, 3),
(2, 0),
(2, 1),
(2, 2),
(2, 3),
(3, 0),
(3, 1),
(3, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_label`
--

CREATE TABLE `salesrule_label` (
  `label_id` int(10) UNSIGNED NOT NULL COMMENT 'Label Id',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

--
-- Dumping data for table `salesrule_label`
--

INSERT INTO `salesrule_label` (`label_id`, `rule_id`, `store_id`, `label`) VALUES
(1, 3, 0, '15% Discount');

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_product_attribute`
--

CREATE TABLE `salesrule_product_attribute` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Attribute Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- Table structure for table `salesrule_website`
--

CREATE TABLE `salesrule_website` (
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Website Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

--
-- Dumping data for table `salesrule_website`
--

INSERT INTO `salesrule_website` (`rule_id`, `website_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_daily`
--

CREATE TABLE `sales_bestsellers_aggregated_daily` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_monthly`
--

CREATE TABLE `sales_bestsellers_aggregated_monthly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

-- --------------------------------------------------------

--
-- Table structure for table `sales_bestsellers_aggregated_yearly`
--

CREATE TABLE `sales_bestsellers_aggregated_yearly` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Rating Pos'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo`
--

CREATE TABLE `sales_creditmemo` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Email Sent',
  `send_email` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Send Email',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Updated At',
  `discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Tax Compensation Amount',
  `base_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Tax Compensation Amount',
  `shipping_discount_tax_compensation_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Tax Compensation Amount',
  `base_shipping_discount_tax_compensation_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Tax Compensation Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `customer_note` text COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) UNSIGNED DEFAULT NULL COMMENT 'Customer Note Notify'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

-- --------------------------------------------------------

--
-- Table structure for table `sales_creditmemo_comment`
--

CREATE TABLE `sales_creditmemo_comment` (
  `entity_id` int(10) UNSIGNED NOT NULL COMMENT 'Entity Id',
  `parent_id` int(10) UNSIGNED NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  ADD KEY `ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  ADD KEY `ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`);

--
-- Indexes for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD PRIMARY KEY (`password_id`),
  ADD KEY `ADMIN_PASSWORDS_USER_ID` (`user_id`);

--
-- Indexes for table `admin_system_messages`
--
ALTER TABLE `admin_system_messages`
  ADD PRIMARY KEY (`identity`);

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ADMIN_USER_USERNAME` (`username`);

--
-- Indexes for table `admin_user_session`
--
ALTER TABLE `admin_user_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ADMIN_USER_SESSION_SESSION_ID` (`session_id`),
  ADD KEY `ADMIN_USER_SESSION_USER_ID` (`user_id`);

--
-- Indexes for table `authorization_role`
--
ALTER TABLE `authorization_role`
  ADD PRIMARY KEY (`role_id`),
  ADD KEY `AUTHORIZATION_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  ADD KEY `AUTHORIZATION_ROLE_TREE_LEVEL` (`tree_level`);

--
-- Indexes for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `AUTHORIZATION_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  ADD KEY `AUTHORIZATION_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CACHE_EXPIRE_TIME` (`expire_time`);

--
-- Indexes for table `cache_tag`
--
ALTER TABLE `cache_tag`
  ADD PRIMARY KEY (`tag`,`cache_id`),
  ADD KEY `CACHE_TAG_CACHE_ID` (`cache_id`);

--
-- Indexes for table `captcha_log`
--
ALTER TABLE `captcha_log`
  ADD PRIMARY KEY (`type`,`value`);

--
-- Indexes for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_WEBSITE_ID` (`product_id`,`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_ITEM_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`);

--
-- Indexes for table `cataloginventory_stock_status`
--
ALTER TABLE `cataloginventory_stock_status`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_status_idx`
--
ALTER TABLE `cataloginventory_stock_status_idx`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `cataloginventory_stock_status_tmp`
--
ALTER TABLE `cataloginventory_stock_status_tmp`
  ADD PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  ADD KEY `CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule`
--
ALTER TABLE `catalogrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  ADD PRIMARY KEY (`rule_product_id`),
  ADD UNIQUE KEY `IDX_EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  ADD KEY `CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  ADD KEY `CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  ADD KEY `CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  ADD PRIMARY KEY (`rule_product_price_id`),
  ADD UNIQUE KEY `CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalogsearch_fulltext_scope1`
--
ALTER TABLE `catalogsearch_fulltext_scope1`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`);
ALTER TABLE `catalogsearch_fulltext_scope1` ADD FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`);

--
-- Indexes for table `catalogsearch_fulltext_scope2`
--
ALTER TABLE `catalogsearch_fulltext_scope2`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`);
ALTER TABLE `catalogsearch_fulltext_scope2` ADD FULLTEXT KEY `FTI_FULLTEXT_DATA_INDEX` (`data_index`);

--
-- Indexes for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_LEVEL` (`level`);

--
-- Indexes for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD PRIMARY KEY (`entity_id`,`category_id`,`product_id`),
  ADD UNIQUE KEY `CATALOG_CATEGORY_PRODUCT_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  ADD KEY `CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_category_product_index`
--
ALTER TABLE `catalog_category_product_index`
  ADD PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  ADD KEY `CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  ADD KEY `CAT_CTGR_PRD_IDX_STORE_ID_CTGR_ID_VISIBILITY_IS_PARENT_POSITION` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`);

--
-- Indexes for table `catalog_category_product_index_tmp`
--
ALTER TABLE `catalog_category_product_index_tmp`
  ADD KEY `CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`);

--
-- Indexes for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD PRIMARY KEY (`catalog_compare_item_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  ADD KEY `CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`);

--
-- Indexes for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`);

--
-- Indexes for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`);

--
-- Indexes for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD PRIMARY KEY (`selection_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD PRIMARY KEY (`selection_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_bundle_stock_index`
--
ALTER TABLE `catalog_product_bundle_stock_index`
  ADD PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`);

--
-- Indexes for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_SKU` (`sku`);

--
-- Indexes for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_ENTITY_ID` (`entity_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_VALUE_ID` (`value_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value_to_entity`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_VAL_ID_ENTT_ID` (`value_id`,`entity_id`),
  ADD KEY `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` (`entity_id`);

--
-- Indexes for table `catalog_product_entity_media_gallery_value_video`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD UNIQUE KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_VAL_ID_STORE_ID` (`value_id`,`store_id`),
  ADD KEY `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `UNQ_E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_index_eav`
--
ALTER TABLE `catalog_product_index_eav`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal`
--
ALTER TABLE `catalog_product_index_eav_decimal`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_idx`
--
ALTER TABLE `catalog_product_index_eav_decimal_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_decimal_tmp`
--
ALTER TABLE `catalog_product_index_eav_decimal_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_idx`
--
ALTER TABLE `catalog_product_index_eav_idx`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_eav_tmp`
--
ALTER TABLE `catalog_product_index_eav_tmp`
  ADD PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`);

--
-- Indexes for table `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  ADD KEY `CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`);

--
-- Indexes for table `catalog_product_index_price_bundle_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_idx`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_sel_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_sel_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`);

--
-- Indexes for table `catalog_product_index_price_bundle_tmp`
--
ALTER TABLE `catalog_product_index_price_bundle_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp`
  ADD PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_idx`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_cfg_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_cfg_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_idx`
--
ALTER TABLE `catalog_product_index_price_downlod_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_downlod_tmp`
--
ALTER TABLE `catalog_product_index_price_downlod_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_idx`
--
ALTER TABLE `catalog_product_index_price_final_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_final_tmp`
--
ALTER TABLE `catalog_product_index_price_final_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_idx`
--
ALTER TABLE `catalog_product_index_price_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_idx`
--
ALTER TABLE `catalog_product_index_price_opt_agr_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_agr_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_agr_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`);

--
-- Indexes for table `catalog_product_index_price_opt_idx`
--
ALTER TABLE `catalog_product_index_price_opt_idx`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_opt_tmp`
--
ALTER TABLE `catalog_product_index_price_opt_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`);

--
-- Indexes for table `catalog_product_index_price_tmp`
--
ALTER TABLE `catalog_product_index_price_tmp`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`);

--
-- Indexes for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD PRIMARY KEY (`website_id`),
  ADD KEY `CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`);

--
-- Indexes for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_LINK_LINK_TYPE_ID_PRODUCT_ID_LINKED_PRODUCT_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`);

--
-- Indexes for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD PRIMARY KEY (`product_link_attribute_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`);

--
-- Indexes for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  ADD KEY `CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`);

--
-- Indexes for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  ADD PRIMARY KEY (`link_type_id`);

--
-- Indexes for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD PRIMARY KEY (`option_price_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD PRIMARY KEY (`option_title_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD PRIMARY KEY (`option_type_price_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD PRIMARY KEY (`option_type_title_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD PRIMARY KEY (`option_type_id`),
  ADD KEY `CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`);

--
-- Indexes for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD PRIMARY KEY (`parent_id`,`child_id`),
  ADD KEY `CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`);

--
-- Indexes for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD PRIMARY KEY (`product_super_attribute_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`);

--
-- Indexes for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  ADD KEY `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD PRIMARY KEY (`link_id`),
  ADD UNIQUE KEY `CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  ADD KEY `CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`);

--
-- Indexes for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD PRIMARY KEY (`product_id`,`website_id`),
  ADD KEY `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `catalog_url_rewrite_product_category`
--
ALTER TABLE `catalog_url_rewrite_product_category`
  ADD KEY `CATALOG_URL_REWRITE_PRODUCT_CATEGORY_CATEGORY_ID_PRODUCT_ID` (`category_id`,`product_id`),
  ADD KEY `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` (`product_id`),
  ADD KEY `FK_BB79E64705D7F17FE181F23144528FC8` (`url_rewrite_id`);

--
-- Indexes for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  ADD PRIMARY KEY (`agreement_id`);

--
-- Indexes for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD PRIMARY KEY (`agreement_id`,`store_id`),
  ADD KEY `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);
ALTER TABLE `cms_block` ADD FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`);

--
-- Indexes for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD PRIMARY KEY (`block_id`,`store_id`),
  ADD KEY `CMS_BLOCK_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `cms_page`
--
ALTER TABLE `cms_page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `CMS_PAGE_IDENTIFIER` (`identifier`);
ALTER TABLE `cms_page` ADD FULLTEXT KEY `CMS_PAGE_TITLE_META_KEYWORDS_META_DESCRIPTION_IDENTIFIER_CONTENT` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`);

--
-- Indexes for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`),
  ADD KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `core_config_data`
--
ALTER TABLE `core_config_data`
  ADD PRIMARY KEY (`config_id`),
  ADD UNIQUE KEY `CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`);

--
-- Indexes for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `CRON_SCHEDULE_JOB_CODE` (`job_code`),
  ADD KEY `CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`);

--
-- Indexes for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`);

--
-- Indexes for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD PRIMARY KEY (`attribute_id`,`website_id`),
  ADD KEY `CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  ADD KEY `CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  ADD KEY `CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  ADD KEY `CUSTOMER_ENTITY_FIRSTNAME` (`firstname`),
  ADD KEY `CUSTOMER_ENTITY_LASTNAME` (`lastname`);

--
-- Indexes for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`);

--
-- Indexes for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD PRIMARY KEY (`form_code`,`attribute_id`),
  ADD KEY `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `customer_grid_flat`
--
ALTER TABLE `customer_grid_flat`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_GROUP_ID` (`group_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_CREATED_AT` (`created_at`),
  ADD KEY `CUSTOMER_GRID_FLAT_WEBSITE_ID` (`website_id`),
  ADD KEY `CUSTOMER_GRID_FLAT_CONFIRMATION` (`confirmation`),
  ADD KEY `CUSTOMER_GRID_FLAT_DOB` (`dob`),
  ADD KEY `CUSTOMER_GRID_FLAT_GENDER` (`gender`),
  ADD KEY `CUSTOMER_GRID_FLAT_BILLING_COUNTRY_ID` (`billing_country_id`);
ALTER TABLE `customer_grid_flat` ADD FULLTEXT KEY `FTI_B691CA777399890C71AC8A4CDFB8EA99` (`name`,`email`,`created_in`,`taxvat`,`billing_full`,`billing_firstname`,`billing_lastname`,`billing_telephone`,`billing_postcode`,`billing_region`,`billing_city`,`billing_fax`,`billing_company`,`shipping_full`);

--
-- Indexes for table `customer_group`
--
ALTER TABLE `customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `customer_log`
--
ALTER TABLE `customer_log`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `CUSTOMER_LOG_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `customer_visitor`
--
ALTER TABLE `customer_visitor`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `CUSTOMER_VISITOR_CUSTOMER_ID` (`customer_id`),
  ADD KEY `CUSTOMER_VISITOR_LAST_VISIT_AT` (`last_visit_at`);

--
-- Indexes for table `design_change`
--
ALTER TABLE `design_change`
  ADD PRIMARY KEY (`design_change_id`),
  ADD KEY `DESIGN_CHANGE_STORE_ID` (`store_id`);

--
-- Indexes for table `design_config_grid_flat`
--
ALTER TABLE `design_config_grid_flat`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `DESIGN_CONFIG_GRID_FLAT_STORE_WEBSITE_ID` (`store_website_id`),
  ADD KEY `DESIGN_CONFIG_GRID_FLAT_STORE_GROUP_ID` (`store_group_id`),
  ADD KEY `DESIGN_CONFIG_GRID_FLAT_STORE_ID` (`store_id`);
ALTER TABLE `design_config_grid_flat` ADD FULLTEXT KEY `DESIGN_CONFIG_GRID_FLAT_THEME_THEME_ID` (`theme_theme_id`);

--
-- Indexes for table `directory_country`
--
ALTER TABLE `directory_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  ADD PRIMARY KEY (`country_format_id`),
  ADD UNIQUE KEY `DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`);

--
-- Indexes for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`);

--
-- Indexes for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD PRIMARY KEY (`locale`,`region_id`),
  ADD KEY `DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`);

--
-- Indexes for table `directory_currency_rate`
--
ALTER TABLE `directory_currency_rate`
  ADD PRIMARY KEY (`currency_from`,`currency_to`),
  ADD KEY `DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`);

--
-- Indexes for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`);

--
-- Indexes for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  ADD KEY `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD PRIMARY KEY (`purchased_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  ADD KEY `DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`);

--
-- Indexes for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  ADD KEY `DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD PRIMARY KEY (`sample_id`),
  ADD KEY `DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD PRIMARY KEY (`title_id`),
  ADD UNIQUE KEY `DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  ADD KEY `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD PRIMARY KEY (`attribute_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`);

--
-- Indexes for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  ADD KEY `EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`);

--
-- Indexes for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD PRIMARY KEY (`attribute_label_id`),
  ADD KEY `EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  ADD KEY `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`);

--
-- Indexes for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  ADD PRIMARY KEY (`swatch_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_OPTION_ID` (`store_id`,`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_SWATCH_SWATCH_ID` (`swatch_id`),
  ADD KEY `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` (`option_id`);

--
-- Indexes for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  ADD KEY `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD PRIMARY KEY (`attribute_set_id`),
  ADD UNIQUE KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  ADD KEY `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`);

--
-- Indexes for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD PRIMARY KEY (`entity_attribute_id`),
  ADD UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  ADD UNIQUE KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  ADD KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  ADD KEY `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_INT_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD PRIMARY KEY (`entity_store_id`),
  ADD KEY `EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  ADD KEY `EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  ADD KEY `EAV_ENTITY_TEXT_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  ADD PRIMARY KEY (`entity_type_id`),
  ADD KEY `EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`);

--
-- Indexes for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD PRIMARY KEY (`value_id`),
  ADD UNIQUE KEY `EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  ADD KEY `EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  ADD KEY `EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  ADD KEY `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`);

--
-- Indexes for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD PRIMARY KEY (`element_id`),
  ADD UNIQUE KEY `EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  ADD KEY `EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  ADD KEY `EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD PRIMARY KEY (`fieldset_id`),
  ADD UNIQUE KEY `EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`);

--
-- Indexes for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD PRIMARY KEY (`fieldset_id`,`store_id`),
  ADD KEY `EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  ADD KEY `EAV_FORM_TYPE_STORE_ID` (`store_id`);

--
-- Indexes for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD PRIMARY KEY (`type_id`,`entity_type_id`),
  ADD KEY `EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  ADD KEY `EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `flag`
--
ALTER TABLE `flag`
  ADD PRIMARY KEY (`flag_id`),
  ADD KEY `FLAG_LAST_UPDATE` (`last_update`);

--
-- Indexes for table `gift_message`
--
ALTER TABLE `gift_message`
  ADD PRIMARY KEY (`gift_message_id`);

--
-- Indexes for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD PRIMARY KEY (`code_id`),
  ADD UNIQUE KEY `GOOGLEOPTIMIZER_CODE_STORE_ID_ENTITY_ID_ENTITY_TYPE` (`store_id`,`entity_id`,`entity_type`);

--
-- Indexes for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_history`
--
ALTER TABLE `import_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `indexer_state`
--
ALTER TABLE `indexer_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `INDEXER_STATE_INDEXER_ID` (`indexer_id`);

--
-- Indexes for table `integration`
--
ALTER TABLE `integration`
  ADD PRIMARY KEY (`integration_id`),
  ADD UNIQUE KEY `INTEGRATION_NAME` (`name`),
  ADD UNIQUE KEY `INTEGRATION_CONSUMER_ID` (`consumer_id`);

--
-- Indexes for table `layout_link`
--
ALTER TABLE `layout_link`
  ADD PRIMARY KEY (`layout_link_id`),
  ADD KEY `LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  ADD KEY `LAYOUT_LINK_STORE_ID_THEME_ID_LAYOUT_UPDATE_ID_IS_TEMPORARY` (`store_id`,`theme_id`,`layout_update_id`,`is_temporary`),
  ADD KEY `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` (`theme_id`);

--
-- Indexes for table `layout_update`
--
ALTER TABLE `layout_update`
  ADD PRIMARY KEY (`layout_update_id`),
  ADD KEY `LAYOUT_UPDATE_HANDLE` (`handle`);

--
-- Indexes for table `magefan_blog_category`
--
ALTER TABLE `magefan_blog_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `MAGEFAN_BLOG_CATEGORY_IDENTIFIER` (`identifier`);
ALTER TABLE `magefan_blog_category` ADD FULLTEXT KEY `FTI_B76AD11A0A06CC3327BA3A86A016134F` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`);

--
-- Indexes for table `magefan_blog_category_store`
--
ALTER TABLE `magefan_blog_category_store`
  ADD PRIMARY KEY (`category_id`,`store_id`),
  ADD KEY `MAGEFAN_BLOG_CATEGORY_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `magefan_blog_post`
--
ALTER TABLE `magefan_blog_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `MAGEFAN_BLOG_POST_IDENTIFIER` (`identifier`),
  ADD KEY `MAGEFAN_BLOG_POST_AUTHOR_ID` (`author_id`);
ALTER TABLE `magefan_blog_post` ADD FULLTEXT KEY `FTI_A5DB7871E89B230F74EDFBECEB4659FA` (`title`,`meta_keywords`,`meta_description`,`identifier`,`content`);

--
-- Indexes for table `magefan_blog_post_category`
--
ALTER TABLE `magefan_blog_post_category`
  ADD PRIMARY KEY (`post_id`,`category_id`),
  ADD KEY `MAGEFAN_BLOG_POST_CATEGORY_CATEGORY_ID` (`category_id`);

--
-- Indexes for table `magefan_blog_post_relatedpost`
--
ALTER TABLE `magefan_blog_post_relatedpost`
  ADD PRIMARY KEY (`post_id`,`related_id`),
  ADD KEY `MAGEFAN_BLOG_POST_RELATEDPRODUCT_RELATED_ID` (`related_id`);

--
-- Indexes for table `magefan_blog_post_relatedproduct`
--
ALTER TABLE `magefan_blog_post_relatedproduct`
  ADD PRIMARY KEY (`post_id`,`related_id`),
  ADD KEY `MAGEFAN_BLOG_POST_RELATEDPRODUCT_RELATED_ID` (`related_id`);

--
-- Indexes for table `magefan_blog_post_store`
--
ALTER TABLE `magefan_blog_post_store`
  ADD PRIMARY KEY (`post_id`,`store_id`),
  ADD KEY `MAGEFAN_BLOG_POST_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `magefan_blog_post_tag`
--
ALTER TABLE `magefan_blog_post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `MAGEFAN_BLOG_POST_TAG_TAG_ID` (`tag_id`);

--
-- Indexes for table `magefan_blog_tag`
--
ALTER TABLE `magefan_blog_tag`
  ADD PRIMARY KEY (`tag_id`),
  ADD KEY `MAGEFAN_BLOG_TAG_IDENTIFIER` (`identifier`);

--
-- Indexes for table `mview_state`
--
ALTER TABLE `mview_state`
  ADD PRIMARY KEY (`state_id`),
  ADD KEY `MVIEW_STATE_VIEW_ID` (`view_id`),
  ADD KEY `MVIEW_STATE_MODE` (`mode`);

--
-- Indexes for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD PRIMARY KEY (`problem_id`),
  ADD KEY `NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`);

--
-- Indexes for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`);

--
-- Indexes for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD PRIMARY KEY (`queue_link_id`),
  ADD KEY `NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  ADD KEY `NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`);

--
-- Indexes for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD PRIMARY KEY (`queue_id`,`store_id`),
  ADD KEY `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD KEY `NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  ADD KEY `NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`);

--
-- Indexes for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  ADD PRIMARY KEY (`template_id`),
  ADD KEY `NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  ADD KEY `NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  ADD KEY `NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `OAUTH_CONSUMER_KEY` (`key`),
  ADD UNIQUE KEY `OAUTH_CONSUMER_SECRET` (`secret`),
  ADD KEY `OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  ADD KEY `OAUTH_CONSUMER_UPDATED_AT` (`updated_at`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD UNIQUE KEY `OAUTH_NONCE_NONCE_CONSUMER_ID` (`nonce`,`consumer_id`),
  ADD KEY `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` (`consumer_id`);

--
-- Indexes for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `OAUTH_TOKEN_TOKEN` (`token`),
  ADD KEY `OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  ADD KEY `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  ADD KEY `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`);

--
-- Indexes for table `oauth_token_request_log`
--
ALTER TABLE `oauth_token_request_log`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `OAUTH_TOKEN_REQUEST_LOG_USER_NAME_USER_TYPE` (`user_name`,`user_type`);

--
-- Indexes for table `password_reset_request_event`
--
ALTER TABLE `password_reset_request_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PASSWORD_RESET_REQUEST_EVENT_ACCOUNT_REFERENCE` (`account_reference`),
  ADD KEY `PASSWORD_RESET_REQUEST_EVENT_CREATED_AT` (`created_at`);

--
-- Indexes for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  ADD PRIMARY KEY (`agreement_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_STORE_ID` (`store_id`);

--
-- Indexes for table `paypal_billing_agreement_order`
--
ALTER TABLE `paypal_billing_agreement_order`
  ADD PRIMARY KEY (`agreement_id`,`order_id`),
  ADD KEY `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`);

--
-- Indexes for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD PRIMARY KEY (`cert_id`),
  ADD KEY `PAYPAL_CERT_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD UNIQUE KEY `PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`);

--
-- Indexes for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  ADD PRIMARY KEY (`report_id`),
  ADD UNIQUE KEY `PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`);

--
-- Indexes for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD PRIMARY KEY (`row_id`),
  ADD KEY `PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`);

--
-- Indexes for table `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD PRIMARY KEY (`persistent_id`),
  ADD UNIQUE KEY `PERSISTENT_SESSION_KEY` (`key`),
  ADD UNIQUE KEY `PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  ADD KEY `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD PRIMARY KEY (`alert_price_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  ADD KEY `PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD PRIMARY KEY (`alert_stock_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  ADD KEY `PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  ADD KEY `QUOTE_STORE_ID` (`store_id`);

--
-- Indexes for table `quote_address`
--
ALTER TABLE `quote_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `QUOTE_ADDRESS_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  ADD PRIMARY KEY (`address_item_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`);

--
-- Indexes for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  ADD PRIMARY KEY (`entity_id`,`quote_id`),
  ADD KEY `QUOTE_ID_MASK_QUOTE_ID` (`quote_id`),
  ADD KEY `QUOTE_ID_MASK_MASKED_ID` (`masked_id`);

--
-- Indexes for table `quote_item`
--
ALTER TABLE `quote_item`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  ADD KEY `QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  ADD KEY `QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  ADD KEY `QUOTE_ITEM_STORE_ID` (`store_id`);

--
-- Indexes for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`);

--
-- Indexes for table `quote_payment`
--
ALTER TABLE `quote_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `QUOTE_PAYMENT_QUOTE_ID` (`quote_id`);

--
-- Indexes for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD UNIQUE KEY `RATING_RATING_CODE` (`rating_code`),
  ADD KEY `RATING_ENTITY_ID` (`entity_id`);

--
-- Indexes for table `rating_entity`
--
ALTER TABLE `rating_entity`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `RATING_ENTITY_ENTITY_CODE` (`entity_code`);

--
-- Indexes for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `RATING_OPTION_RATING_ID` (`rating_id`);

--
-- Indexes for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD PRIMARY KEY (`vote_id`),
  ADD KEY `RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  ADD KEY `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`);

--
-- Indexes for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  ADD KEY `RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `RATING_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD PRIMARY KEY (`rating_id`,`store_id`),
  ADD KEY `RATING_TITLE_STORE_ID` (`store_id`);

--
-- Indexes for table `reporting_counts`
--
ALTER TABLE `reporting_counts`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_module_status`
--
ALTER TABLE `reporting_module_status`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_orders`
--
ALTER TABLE `reporting_orders`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_system_updates`
--
ALTER TABLE `reporting_system_updates`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `reporting_users`
--
ALTER TABLE `reporting_users`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_event`
--
ALTER TABLE `report_event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  ADD KEY `REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  ADD KEY `REPORT_EVENT_OBJECT_ID` (`object_id`),
  ADD KEY `REPORT_EVENT_SUBTYPE` (`subtype`),
  ADD KEY `REPORT_EVENT_STORE_ID` (`store_id`);

--
-- Indexes for table `report_event_types`
--
ALTER TABLE `report_event_types`
  ADD PRIMARY KEY (`event_type_id`);

--
-- Indexes for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD PRIMARY KEY (`index_id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  ADD UNIQUE KEY `REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  ADD KEY `REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `REVIEW_ENTITY_ID` (`entity_id`),
  ADD KEY `REVIEW_STATUS_ID` (`status_id`),
  ADD KEY `REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`);

--
-- Indexes for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  ADD KEY `REVIEW_DETAIL_STORE_ID` (`store_id`),
  ADD KEY `REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `review_entity`
--
ALTER TABLE `review_entity`
  ADD PRIMARY KEY (`entity_id`);

--
-- Indexes for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD PRIMARY KEY (`primary_id`),
  ADD KEY `REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`);

--
-- Indexes for table `review_status`
--
ALTER TABLE `review_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `review_store`
--
ALTER TABLE `review_store`
  ADD PRIMARY KEY (`review_id`,`store_id`),
  ADD KEY `REVIEW_STORE_STORE_ID` (`store_id`);

--
-- Indexes for table `salesrule`
--
ALTER TABLE `salesrule`
  ADD PRIMARY KEY (`rule_id`),
  ADD KEY `SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`);

--
-- Indexes for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD PRIMARY KEY (`coupon_id`),
  ADD UNIQUE KEY `SALESRULE_COUPON_CODE` (`code`),
  ADD UNIQUE KEY `SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  ADD KEY `SALESRULE_COUPON_RULE_ID` (`rule_id`);

--
-- Indexes for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALESRULE_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_1094D1FBBCBB11704A29DEF3ACC37D2B` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_7196FA120A4F0F84E1B66605E87E213E` (`period`,`store_id`,`order_status`,`coupon_code`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  ADD KEY `SALESRULE_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`);

--
-- Indexes for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD PRIMARY KEY (`coupon_id`,`customer_id`),
  ADD KEY `SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`);

--
-- Indexes for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD PRIMARY KEY (`rule_customer_id`),
  ADD KEY `SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  ADD KEY `SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`);

--
-- Indexes for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD PRIMARY KEY (`rule_id`,`customer_group_id`),
  ADD KEY `SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`);

--
-- Indexes for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  ADD KEY `SALESRULE_LABEL_STORE_ID` (`store_id`);

--
-- Indexes for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  ADD KEY `SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`);

--
-- Indexes for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD PRIMARY KEY (`rule_id`,`website_id`),
  ADD KEY `SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PERIOD_STORE_ID_PRODUCT_ID` (`period`,`store_id`,`product_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  ADD KEY `SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`);

--
-- Indexes for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  ADD PRIMARY KEY (`entity_id`),
  ADD UNIQUE KEY `SALES_CREDITMEMO_INCREMENT_ID_STORE_ID` (`increment_id`,`store_id`),
  ADD KEY `SALES_CREDITMEMO_STORE_ID` (`store_id`),
  ADD KEY `SALES_CREDITMEMO_ORDER_ID` (`order_id`),
  ADD KEY `SALES_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  ADD KEY `SALES_CREDITMEMO_STATE` (`state`),
  ADD KEY `SALES_CREDITMEMO_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_UPDATED_AT` (`updated_at`),
  ADD KEY `SALES_CREDITMEMO_SEND_EMAIL` (`send_email`),
  ADD KEY `SALES_CREDITMEMO_EMAIL_SENT` (`email_sent`);

--
-- Indexes for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  ADD PRIMARY KEY (`entity_id`),
  ADD KEY `SALES_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  ADD KEY `SALES_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminnotification_inbox`
--
ALTER TABLE `adminnotification_inbox`
  MODIFY `notification_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Notification id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  MODIFY `password_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Password Id';
--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'User ID', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `admin_user_session`
--
ALTER TABLE `admin_user_session`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `authorization_role`
--
ALTER TABLE `authorization_role`
  MODIFY `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Role ID', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cataloginventory_stock`
--
ALTER TABLE `cataloginventory_stock`
  MODIFY `stock_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Stock Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id', AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `catalogrule`
--
ALTER TABLE `catalogrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id';
--
-- AUTO_INCREMENT for table `catalogrule_product`
--
ALTER TABLE `catalogrule_product`
  MODIFY `rule_product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id';
--
-- AUTO_INCREMENT for table `catalogrule_product_price`
--
ALTER TABLE `catalogrule_product_price`
  MODIFY `rule_product_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId';
--
-- AUTO_INCREMENT for table `catalog_category_entity`
--
ALTER TABLE `catalog_category_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=957;
--
-- AUTO_INCREMENT for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=935;
--
-- AUTO_INCREMENT for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  MODIFY `entity_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  MODIFY `catalog_compare_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id';
--
-- AUTO_INCREMENT for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  MODIFY `selection_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Selection Id';
--
-- AUTO_INCREMENT for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  MODIFY `record_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Record Id', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID', AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  MODIFY `product_link_attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_link_type`
--
ALTER TABLE `catalog_product_link_type`
  MODIFY `link_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  MODIFY `option_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  MODIFY `option_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  MODIFY `option_type_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  MODIFY `option_type_title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID';
--
-- AUTO_INCREMENT for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  MODIFY `option_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  MODIFY `product_super_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value ID';
--
-- AUTO_INCREMENT for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `checkout_agreement`
--
ALTER TABLE `checkout_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';
--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID', AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `cms_page`
--
ALTER TABLE `cms_page`
  MODIFY `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID', AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `core_config_data`
--
ALTER TABLE `core_config_data`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Config Id', AUTO_INCREMENT=333;
--
-- AUTO_INCREMENT for table `cron_schedule`
--
ALTER TABLE `cron_schedule`
  MODIFY `schedule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id';
--
-- AUTO_INCREMENT for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity`
--
ALTER TABLE `customer_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `customer_group`
--
ALTER TABLE `customer_group`
  MODIFY `customer_group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `customer_log`
--
ALTER TABLE `customer_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Log ID';
--
-- AUTO_INCREMENT for table `customer_visitor`
--
ALTER TABLE `customer_visitor`
  MODIFY `visitor_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID', AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `design_change`
--
ALTER TABLE `design_change`
  MODIFY `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id';
--
-- AUTO_INCREMENT for table `directory_country_format`
--
ALTER TABLE `directory_country_format`
  MODIFY `country_format_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id';
--
-- AUTO_INCREMENT for table `directory_country_region`
--
ALTER TABLE `directory_country_region`
  MODIFY `region_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Region Id', AUTO_INCREMENT=512;
--
-- AUTO_INCREMENT for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link ID';
--
-- AUTO_INCREMENT for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  MODIFY `price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Price ID';
--
-- AUTO_INCREMENT for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  MODIFY `purchased_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID';
--
-- AUTO_INCREMENT for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item ID';
--
-- AUTO_INCREMENT for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';
--
-- AUTO_INCREMENT for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  MODIFY `sample_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Sample ID';
--
-- AUTO_INCREMENT for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  MODIFY `title_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Title ID';
--
-- AUTO_INCREMENT for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  MODIFY `attribute_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id', AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  MODIFY `attribute_group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id', AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  MODIFY `attribute_label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id';
--
-- AUTO_INCREMENT for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  MODIFY `swatch_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Swatch ID';
--
-- AUTO_INCREMENT for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  MODIFY `value_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Value Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  MODIFY `attribute_set_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `eav_entity`
--
ALTER TABLE `eav_entity`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  MODIFY `entity_attribute_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id', AUTO_INCREMENT=273;
--
-- AUTO_INCREMENT for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  MODIFY `entity_store_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id';
--
-- AUTO_INCREMENT for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_entity_type`
--
ALTER TABLE `eav_entity_type`
  MODIFY `entity_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id';
--
-- AUTO_INCREMENT for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  MODIFY `element_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Element Id', AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  MODIFY `fieldset_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id';
--
-- AUTO_INCREMENT for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  MODIFY `type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Type Id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template ID';
--
-- AUTO_INCREMENT for table `flag`
--
ALTER TABLE `flag`
  MODIFY `flag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Flag Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `gift_message`
--
ALTER TABLE `gift_message`
  MODIFY `gift_message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id';
--
-- AUTO_INCREMENT for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  MODIFY `code_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Google experiment code id';
--
-- AUTO_INCREMENT for table `importexport_importdata`
--
ALTER TABLE `importexport_importdata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `import_history`
--
ALTER TABLE `import_history`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'History record Id';
--
-- AUTO_INCREMENT for table `indexer_state`
--
ALTER TABLE `indexer_state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Indexer State Id', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `integration`
--
ALTER TABLE `integration`
  MODIFY `integration_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Integration ID';
--
-- AUTO_INCREMENT for table `layout_link`
--
ALTER TABLE `layout_link`
  MODIFY `layout_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Link Id';
--
-- AUTO_INCREMENT for table `layout_update`
--
ALTER TABLE `layout_update`
  MODIFY `layout_update_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id';
--
-- AUTO_INCREMENT for table `magefan_blog_category`
--
ALTER TABLE `magefan_blog_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Category ID';
--
-- AUTO_INCREMENT for table `magefan_blog_post`
--
ALTER TABLE `magefan_blog_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Post ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `magefan_blog_tag`
--
ALTER TABLE `magefan_blog_tag`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tag ID';
--
-- AUTO_INCREMENT for table `mview_state`
--
ALTER TABLE `mview_state`
  MODIFY `state_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'View State Id';
--
-- AUTO_INCREMENT for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  MODIFY `problem_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Problem Id';
--
-- AUTO_INCREMENT for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Id';
--
-- AUTO_INCREMENT for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  MODIFY `queue_link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id';
--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `subscriber_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id';
--
-- AUTO_INCREMENT for table `newsletter_template`
--
ALTER TABLE `newsletter_template`
  MODIFY `template_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Template ID';
--
-- AUTO_INCREMENT for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `oauth_token`
--
ALTER TABLE `oauth_token`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';
--
-- AUTO_INCREMENT for table `oauth_token_request_log`
--
ALTER TABLE `oauth_token_request_log`
  MODIFY `log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Log Id';
--
-- AUTO_INCREMENT for table `password_reset_request_event`
--
ALTER TABLE `password_reset_request_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity ID';
--
-- AUTO_INCREMENT for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  MODIFY `agreement_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id';
--
-- AUTO_INCREMENT for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  MODIFY `cert_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Cert Id';
--
-- AUTO_INCREMENT for table `paypal_payment_transaction`
--
ALTER TABLE `paypal_payment_transaction`
  MODIFY `transaction_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `paypal_settlement_report`
--
ALTER TABLE `paypal_settlement_report`
  MODIFY `report_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Report Id';
--
-- AUTO_INCREMENT for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  MODIFY `row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Row Id';
--
-- AUTO_INCREMENT for table `persistent_session`
--
ALTER TABLE `persistent_session`
  MODIFY `persistent_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Session id';
--
-- AUTO_INCREMENT for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  MODIFY `alert_price_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id';
--
-- AUTO_INCREMENT for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  MODIFY `alert_stock_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id';
--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `quote_address`
--
ALTER TABLE `quote_address`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Id', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  MODIFY `address_item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id';
--
-- AUTO_INCREMENT for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `quote_item`
--
ALTER TABLE `quote_item`
  MODIFY `item_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Item Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Option Id', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `quote_payment`
--
ALTER TABLE `quote_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Payment Id';
--
-- AUTO_INCREMENT for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  MODIFY `rate_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rate Id', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating_entity`
--
ALTER TABLE `rating_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `rating_option`
--
ALTER TABLE `rating_option`
  MODIFY `option_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id', AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  MODIFY `vote_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Vote id';
--
-- AUTO_INCREMENT for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  MODIFY `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id';
--
-- AUTO_INCREMENT for table `reporting_counts`
--
ALTER TABLE `reporting_counts`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `reporting_module_status`
--
ALTER TABLE `reporting_module_status`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Module Id';
--
-- AUTO_INCREMENT for table `reporting_orders`
--
ALTER TABLE `reporting_orders`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `reporting_system_updates`
--
ALTER TABLE `reporting_system_updates`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `reporting_users`
--
ALTER TABLE `reporting_users`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `report_event`
--
ALTER TABLE `report_event`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Id', AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `report_event_types`
--
ALTER TABLE `report_event_types`
  MODIFY `event_type_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  MODIFY `index_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Index Id', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review id';
--
-- AUTO_INCREMENT for table `review_detail`
--
ALTER TABLE `review_detail`
  MODIFY `detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review detail id';
--
-- AUTO_INCREMENT for table `review_entity`
--
ALTER TABLE `review_entity`
  MODIFY `entity_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Review entity id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  MODIFY `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id';
--
-- AUTO_INCREMENT for table `review_status`
--
ALTER TABLE `review_status`
  MODIFY `status_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Status id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salesrule`
--
ALTER TABLE `salesrule`
  MODIFY `rule_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  MODIFY `coupon_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  MODIFY `rule_customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id';
--
-- AUTO_INCREMENT for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  MODIFY `label_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Label Id', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Id';
--
-- AUTO_INCREMENT for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- AUTO_INCREMENT for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  MODIFY `entity_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Entity Id';
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_passwords`
--
ALTER TABLE `admin_passwords`
  ADD CONSTRAINT `ADMIN_PASSWORDS_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_user_session`
--
ALTER TABLE `admin_user_session`
  ADD CONSTRAINT `ADMIN_USER_SESSION_USER_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `authorization_rule`
--
ALTER TABLE `authorization_rule`
  ADD CONSTRAINT `AUTHORIZATION_RULE_ROLE_ID_AUTHORIZATION_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `authorization_role` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `cataloginventory_stock_item`
--
ALTER TABLE `cataloginventory_stock_item`
  ADD CONSTRAINT `CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_customer_group`
--
ALTER TABLE `catalogrule_customer_group`
  ADD CONSTRAINT `CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_group_website`
--
ALTER TABLE `catalogrule_group_website`
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalogrule_website`
--
ALTER TABLE `catalogrule_website`
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOGRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_datetime`
--
ALTER TABLE `catalog_category_entity_datetime`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_decimal`
--
ALTER TABLE `catalog_category_entity_decimal`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_int`
--
ALTER TABLE `catalog_category_entity_int`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_text`
--
ALTER TABLE `catalog_category_entity_text`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_entity_varchar`
--
ALTER TABLE `catalog_category_entity_varchar`
  ADD CONSTRAINT `CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_category_product`
--
ALTER TABLE `catalog_category_product`
  ADD CONSTRAINT `CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_compare_item`
--
ALTER TABLE `catalog_compare_item`
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CATALOG_COMPARE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `catalog_eav_attribute`
--
ALTER TABLE `catalog_eav_attribute`
  ADD CONSTRAINT `CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option`
--
ALTER TABLE `catalog_product_bundle_option`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_option_value`
--
ALTER TABLE `catalog_product_bundle_option_value`
  ADD CONSTRAINT `CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_price_index`
--
ALTER TABLE `catalog_product_bundle_price_index`
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_PRICE_IDX_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection`
--
ALTER TABLE `catalog_product_bundle_selection`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_bundle_selection_price`
--
ALTER TABLE `catalog_product_bundle_selection_price`
  ADD CONSTRAINT `CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity`
--
ALTER TABLE `catalog_product_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_datetime`
--
ALTER TABLE `catalog_product_entity_datetime`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_decimal`
--
ALTER TABLE `catalog_product_entity_decimal`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_gallery`
--
ALTER TABLE `catalog_product_entity_gallery`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_int`
--
ALTER TABLE `catalog_product_entity_int`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery`
--
ALTER TABLE `catalog_product_entity_media_gallery`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value`
--
ALTER TABLE `catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value_to_entity`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_to_entity`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_TO_ENTT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A6C6C8FAA386736921D3A7C4B50B1185` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_media_gallery_value_video`
--
ALTER TABLE `catalog_product_entity_media_gallery_value_video`
  ADD CONSTRAINT `CAT_PRD_ENTT_MDA_GLR_VAL_VIDEO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6FDF205946906B0E653E60AA769899F8` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_text`
--
ALTER TABLE `catalog_product_entity_text`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_tier_price`
--
ALTER TABLE `catalog_product_entity_tier_price`
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_entity_varchar`
--
ALTER TABLE `catalog_product_entity_varchar`
  ADD CONSTRAINT `CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_price`
--
ALTER TABLE `catalog_product_index_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_tier_price`
--
ALTER TABLE `catalog_product_index_tier_price`
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_IDX_TIER_PRICE_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_index_website`
--
ALTER TABLE `catalog_product_index_website`
  ADD CONSTRAINT `CAT_PRD_IDX_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link`
--
ALTER TABLE `catalog_product_link`
  ADD CONSTRAINT `CATALOG_PRODUCT_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute`
--
ALTER TABLE `catalog_product_link_attribute`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_decimal`
--
ALTER TABLE `catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_int`
--
ALTER TABLE `catalog_product_link_attribute_int`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_link_attribute_varchar`
--
ALTER TABLE `catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option`
--
ALTER TABLE `catalog_product_option`
  ADD CONSTRAINT `CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_price`
--
ALTER TABLE `catalog_product_option_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_title`
--
ALTER TABLE `catalog_product_option_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_price`
--
ALTER TABLE `catalog_product_option_type_price`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_title`
--
ALTER TABLE `catalog_product_option_type_title`
  ADD CONSTRAINT `CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_option_type_value`
--
ALTER TABLE `catalog_product_option_type_value`
  ADD CONSTRAINT `CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_relation`
--
ALTER TABLE `catalog_product_relation`
  ADD CONSTRAINT `CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute`
--
ALTER TABLE `catalog_product_super_attribute`
  ADD CONSTRAINT `CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_attribute_label`
--
ALTER TABLE `catalog_product_super_attribute_label`
  ADD CONSTRAINT `CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_super_link`
--
ALTER TABLE `catalog_product_super_link`
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_product_website`
--
ALTER TABLE `catalog_product_website`
  ADD CONSTRAINT `CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `catalog_url_rewrite_product_category`
--
ALTER TABLE `catalog_url_rewrite_product_category`
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CAT_URL_REWRITE_PRD_CTGR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BB79E64705D7F17FE181F23144528FC8` FOREIGN KEY (`url_rewrite_id`) REFERENCES `url_rewrite` (`url_rewrite_id`) ON DELETE CASCADE;

--
-- Constraints for table `checkout_agreement_store`
--
ALTER TABLE `checkout_agreement_store`
  ADD CONSTRAINT `CHECKOUT_AGREEMENT_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_block_store`
--
ALTER TABLE `cms_block_store`
  ADD CONSTRAINT `CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_BLOCK_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity`
--
ALTER TABLE `customer_address_entity`
  ADD CONSTRAINT `CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_datetime`
--
ALTER TABLE `customer_address_entity_datetime`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_decimal`
--
ALTER TABLE `customer_address_entity_decimal`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_int`
--
ALTER TABLE `customer_address_entity_int`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_text`
--
ALTER TABLE `customer_address_entity_text`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_address_entity_varchar`
--
ALTER TABLE `customer_address_entity_varchar`
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_eav_attribute`
--
ALTER TABLE `customer_eav_attribute`
  ADD CONSTRAINT `CUSTOMER_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_eav_attribute_website`
--
ALTER TABLE `customer_eav_attribute_website`
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CSTR_EAV_ATTR_WS_WS_ID_STORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity`
--
ALTER TABLE `customer_entity`
  ADD CONSTRAINT `CUSTOMER_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `CUSTOMER_ENTITY_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE SET NULL;

--
-- Constraints for table `customer_entity_datetime`
--
ALTER TABLE `customer_entity_datetime`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_decimal`
--
ALTER TABLE `customer_entity_decimal`
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_int`
--
ALTER TABLE `customer_entity_int`
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_text`
--
ALTER TABLE `customer_entity_text`
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_entity_varchar`
--
ALTER TABLE `customer_entity_varchar`
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_form_attribute`
--
ALTER TABLE `customer_form_attribute`
  ADD CONSTRAINT `CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `design_change`
--
ALTER TABLE `design_change`
  ADD CONSTRAINT `DESIGN_CHANGE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `directory_country_region_name`
--
ALTER TABLE `directory_country_region_name`
  ADD CONSTRAINT `DIR_COUNTRY_REGION_NAME_REGION_ID_DIR_COUNTRY_REGION_REGION_ID` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link`
--
ALTER TABLE `downloadable_link`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_price`
--
ALTER TABLE `downloadable_link_price`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_purchased`
--
ALTER TABLE `downloadable_link_purchased`
  ADD CONSTRAINT `DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_PURCHASED_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE SET NULL;

--
-- Constraints for table `downloadable_link_purchased_item`
--
ALTER TABLE `downloadable_link_purchased_item`
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_ORDER_ITEM_ID_SALES_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`order_item_id`) REFERENCES `sales_order_item` (`item_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `DL_LNK_PURCHASED_ITEM_PURCHASED_ID_DL_LNK_PURCHASED_PURCHASED_ID` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_link_title`
--
ALTER TABLE `downloadable_link_title`
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_LINK_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_sample`
--
ALTER TABLE `downloadable_sample`
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `downloadable_sample_title`
--
ALTER TABLE `downloadable_sample_title`
  ADD CONSTRAINT `DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute`
--
ALTER TABLE `eav_attribute`
  ADD CONSTRAINT `EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_group`
--
ALTER TABLE `eav_attribute_group`
  ADD CONSTRAINT `EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_label`
--
ALTER TABLE `eav_attribute_label`
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTRIBUTE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option`
--
ALTER TABLE `eav_attribute_option`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option_swatch`
--
ALTER TABLE `eav_attribute_option_swatch`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_SWATCH_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_SWATCH_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_option_value`
--
ALTER TABLE `eav_attribute_option_value`
  ADD CONSTRAINT `EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_attribute_set`
--
ALTER TABLE `eav_attribute_set`
  ADD CONSTRAINT `EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity`
--
ALTER TABLE `eav_entity`
  ADD CONSTRAINT `EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_attribute`
--
ALTER TABLE `eav_entity_attribute`
  ADD CONSTRAINT `EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_datetime`
--
ALTER TABLE `eav_entity_datetime`
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DATETIME_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_decimal`
--
ALTER TABLE `eav_entity_decimal`
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_DECIMAL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_int`
--
ALTER TABLE `eav_entity_int`
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_INT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_store`
--
ALTER TABLE `eav_entity_store`
  ADD CONSTRAINT `EAV_ENTITY_STORE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_text`
--
ALTER TABLE `eav_entity_text`
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_TEXT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_entity_varchar`
--
ALTER TABLE `eav_entity_varchar`
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_ENTITY_VARCHAR_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_element`
--
ALTER TABLE `eav_form_element`
  ADD CONSTRAINT `EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_fieldset`
--
ALTER TABLE `eav_form_fieldset`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_fieldset_label`
--
ALTER TABLE `eav_form_fieldset_label`
  ADD CONSTRAINT `EAV_FORM_FIELDSET_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_type`
--
ALTER TABLE `eav_form_type`
  ADD CONSTRAINT `EAV_FORM_TYPE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `eav_form_type_entity`
--
ALTER TABLE `eav_form_type_entity`
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `googleoptimizer_code`
--
ALTER TABLE `googleoptimizer_code`
  ADD CONSTRAINT `GOOGLEOPTIMIZER_CODE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `integration`
--
ALTER TABLE `integration`
  ADD CONSTRAINT `INTEGRATION_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `layout_link`
--
ALTER TABLE `layout_link`
  ADD CONSTRAINT `LAYOUT_LINK_LAYOUT_UPDATE_ID_LAYOUT_UPDATE_LAYOUT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `layout_update` (`layout_update_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `LAYOUT_LINK_THEME_ID_THEME_THEME_ID` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`) ON DELETE CASCADE;

--
-- Constraints for table `magefan_blog_category_store`
--
ALTER TABLE `magefan_blog_category_store`
  ADD CONSTRAINT `MAGEFAN_BLOG_CATEGORY_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEFAN_BLOG_CTGR_STORE_CTGR_ID_MAGEFAN_BLOG_CTGR_CTGR_ID` FOREIGN KEY (`category_id`) REFERENCES `magefan_blog_category` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `magefan_blog_post_category`
--
ALTER TABLE `magefan_blog_post_category`
  ADD CONSTRAINT `MAGEFAN_BLOG_POST_CATEGORY_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEFAN_BLOG_POST_CTGR_CTGR_ID_MAGEFAN_BLOG_CTGR_CTGR_ID` FOREIGN KEY (`category_id`) REFERENCES `magefan_blog_category` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `magefan_blog_post_relatedpost`
--
ALTER TABLE `magefan_blog_post_relatedpost`
  ADD CONSTRAINT `FK_9F26E983FE1D7D7063B61D3F3C8D1104` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEFAN_BLOG_POST_RELATEDPRD1_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `magefan_blog_post_relatedproduct`
--
ALTER TABLE `magefan_blog_post_relatedproduct`
  ADD CONSTRAINT `MAGEFAN_BLOG_POST_RELATEDPRD_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEFAN_BLOG_POST_RELATEDPRD_RELATED_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`related_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `magefan_blog_post_store`
--
ALTER TABLE `magefan_blog_post_store`
  ADD CONSTRAINT `MAGEFAN_BLOG_POST_STORE_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEFAN_BLOG_POST_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `magefan_blog_post_tag`
--
ALTER TABLE `magefan_blog_post_tag`
  ADD CONSTRAINT `MAGEFAN_BLOG_POST_TAG_POST_ID_MAGEFAN_BLOG_POST_POST_ID` FOREIGN KEY (`post_id`) REFERENCES `magefan_blog_post` (`post_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `MAGEFAN_BLOG_POST_TAG_TAG_ID_MAGEFAN_BLOG_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `magefan_blog_tag` (`tag_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_problem`
--
ALTER TABLE `newsletter_problem`
  ADD CONSTRAINT `NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue`
--
ALTER TABLE `newsletter_queue`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_link`
--
ALTER TABLE `newsletter_queue_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_queue_store_link`
--
ALTER TABLE `newsletter_queue_store_link`
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD CONSTRAINT `NEWSLETTER_SUBSCRIBER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD CONSTRAINT `OAUTH_NONCE_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `oauth_token`
--
ALTER TABLE `oauth_token`
  ADD CONSTRAINT `OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_billing_agreement`
--
ALTER TABLE `paypal_billing_agreement`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `paypal_billing_agreement_order`
--
ALTER TABLE `paypal_billing_agreement_order`
  ADD CONSTRAINT `PAYPAL_BILLING_AGREEMENT_ORDER_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PAYPAL_BILLING_AGRT_ORDER_AGRT_ID_PAYPAL_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `paypal_billing_agreement` (`agreement_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_cert`
--
ALTER TABLE `paypal_cert`
  ADD CONSTRAINT `PAYPAL_CERT_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `paypal_settlement_report_row`
--
ALTER TABLE `paypal_settlement_report_row`
  ADD CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE;

--
-- Constraints for table `persistent_session`
--
ALTER TABLE `persistent_session`
  ADD CONSTRAINT `PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PERSISTENT_SESSION_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_alert_price`
--
ALTER TABLE `product_alert_price`
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_PRICE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `product_alert_stock`
--
ALTER TABLE `product_alert_stock`
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `PRODUCT_ALERT_STOCK_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `QUOTE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_address`
--
ALTER TABLE `quote_address`
  ADD CONSTRAINT `QUOTE_ADDRESS_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_address_item`
--
ALTER TABLE `quote_address_item`
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`quote_address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`quote_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ADDR_ITEM_PARENT_ITEM_ID_QUOTE_ADDR_ITEM_ADDR_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_address_item` (`address_item_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_id_mask`
--
ALTER TABLE `quote_id_mask`
  ADD CONSTRAINT `QUOTE_ID_MASK_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_item`
--
ALTER TABLE `quote_item`
  ADD CONSTRAINT `QUOTE_ITEM_PARENT_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`parent_item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `QUOTE_ITEM_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `quote_item_option`
--
ALTER TABLE `quote_item_option`
  ADD CONSTRAINT `QUOTE_ITEM_OPTION_ITEM_ID_QUOTE_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `quote_item` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_payment`
--
ALTER TABLE `quote_payment`
  ADD CONSTRAINT `QUOTE_PAYMENT_QUOTE_ID_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `quote` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `quote_shipping_rate`
--
ALTER TABLE `quote_shipping_rate`
  ADD CONSTRAINT `QUOTE_SHIPPING_RATE_ADDRESS_ID_QUOTE_ADDRESS_ADDRESS_ID` FOREIGN KEY (`address_id`) REFERENCES `quote_address` (`address_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option`
--
ALTER TABLE `rating_option`
  ADD CONSTRAINT `RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option_vote`
--
ALTER TABLE `rating_option_vote`
  ADD CONSTRAINT `RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_option_vote_aggregated`
--
ALTER TABLE `rating_option_vote_aggregated`
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_OPTION_VOTE_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_store`
--
ALTER TABLE `rating_store`
  ADD CONSTRAINT `RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `rating_title`
--
ALTER TABLE `rating_title`
  ADD CONSTRAINT `RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `RATING_TITLE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_compared_product_index`
--
ALTER TABLE `report_compared_product_index`
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `report_event`
--
ALTER TABLE `report_event`
  ADD CONSTRAINT `REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_EVENT_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_daily`
--
ALTER TABLE `report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_monthly`
--
ALTER TABLE `report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_aggregated_yearly`
--
ALTER TABLE `report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `report_viewed_product_index`
--
ALTER TABLE `report_viewed_product_index`
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION;

--
-- Constraints for table `review_detail`
--
ALTER TABLE `review_detail`
  ADD CONSTRAINT `REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_DETAIL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `review_entity_summary`
--
ALTER TABLE `review_entity_summary`
  ADD CONSTRAINT `REVIEW_ENTITY_SUMMARY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `review_store`
--
ALTER TABLE `review_store`
  ADD CONSTRAINT `REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `REVIEW_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon`
--
ALTER TABLE `salesrule_coupon`
  ADD CONSTRAINT `SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated`
--
ALTER TABLE `salesrule_coupon_aggregated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated_order`
--
ALTER TABLE `salesrule_coupon_aggregated_order`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_ORDER_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_aggregated_updated`
--
ALTER TABLE `salesrule_coupon_aggregated_updated`
  ADD CONSTRAINT `SALESRULE_COUPON_AGGREGATED_UPDATED_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_coupon_usage`
--
ALTER TABLE `salesrule_coupon_usage`
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_customer`
--
ALTER TABLE `salesrule_customer`
  ADD CONSTRAINT `SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_customer_group`
--
ALTER TABLE `salesrule_customer_group`
  ADD CONSTRAINT `SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_label`
--
ALTER TABLE `salesrule_label`
  ADD CONSTRAINT `SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_LABEL_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_product_attribute`
--
ALTER TABLE `salesrule_product_attribute`
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `salesrule_website`
--
ALTER TABLE `salesrule_website`
  ADD CONSTRAINT `SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALESRULE_WEBSITE_WEBSITE_ID_STORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `store_website` (`website_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_daily`
--
ALTER TABLE `sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_creditmemo`
--
ALTER TABLE `sales_creditmemo`
  ADD CONSTRAINT `SALES_CREDITMEMO_ORDER_ID_SALES_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_order` (`entity_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `SALES_CREDITMEMO_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_creditmemo_comment`
--
ALTER TABLE `sales_creditmemo_comment`
  ADD CONSTRAINT `SALES_CREDITMEMO_COMMENT_PARENT_ID_SALES_CREDITMEMO_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_creditmemo` (`entity_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
