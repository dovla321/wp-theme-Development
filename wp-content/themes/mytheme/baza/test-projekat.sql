-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 28, 2022 at 04:04 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test-projekat`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id` (`claim_id`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(92, 'wp_mail_smtp_summary_report_email', 'pending', '2022-07-02 17:37:28', '2022-07-02 19:37:28', '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1656783448;s:18:\"\0*\0first_timestamp\";i:1643029200;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1656783448;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(89, 'wp_mail_smtp_summary_report_email', 'complete', '2022-04-25 09:14:59', '2022-04-25 11:14:59', '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1650878099;s:18:\"\0*\0first_timestamp\";i:1643029200;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1650878099;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2022-06-25 17:37:28', '2022-06-25 19:37:28', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
CREATE TABLE IF NOT EXISTS `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(37, 89, 'action created', '2022-04-18 09:14:59', '2022-04-18 11:14:59'),
(46, 92, 'action created', '2022-06-25 17:37:28', '2022-06-25 19:37:28'),
(45, 89, 'action complete via WP Cron', '2022-06-25 17:37:28', '2022-06-25 19:37:28'),
(44, 89, 'action started via WP Cron', '2022-06-25 17:37:22', '2022-06-25 19:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 30, 'vlado123', 'dovla91mos@gmail.com', 'http://localhost/test-projekat', '::1', '2022-01-08 15:38:54', '2022-01-08 14:38:54', 'jkh', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=740 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/test-projekat', 'yes'),
(2, 'home', 'http://localhost/test-projekat', 'yes'),
(3, 'blogname', 'My Wordpress Theme', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'dovla91mos@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:114:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"cars/?$\";s:24:\"index.php?post_type=cars\";s:37:\"cars/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=cars&feed=$matches[1]\";s:32:\"cars/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=cars&feed=$matches[1]\";s:24:\"cars/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=cars&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:30:\"cars/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"cars/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"cars/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cars/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"cars/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"cars/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:19:\"cars/(.+?)/embed/?$\";s:37:\"index.php?cars=$matches[1]&embed=true\";s:23:\"cars/(.+?)/trackback/?$\";s:31:\"index.php?cars=$matches[1]&tb=1\";s:43:\"cars/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?cars=$matches[1]&feed=$matches[2]\";s:38:\"cars/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?cars=$matches[1]&feed=$matches[2]\";s:31:\"cars/(.+?)/page/?([0-9]{1,})/?$\";s:44:\"index.php?cars=$matches[1]&paged=$matches[2]\";s:38:\"cars/(.+?)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?cars=$matches[1]&cpage=$matches[2]\";s:27:\"cars/(.+?)(?:/([0-9]+))?/?$\";s:43:\"index.php?cars=$matches[1]&page=$matches[2]\";s:47:\"brands/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?brands=$matches[1]&feed=$matches[2]\";s:42:\"brands/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?brands=$matches[1]&feed=$matches[2]\";s:23:\"brands/([^/]+)/embed/?$\";s:39:\"index.php?brands=$matches[1]&embed=true\";s:35:\"brands/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?brands=$matches[1]&paged=$matches[2]\";s:17:\"brands/([^/]+)/?$\";s:28:\"index.php?brands=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";i:3;s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";i:4;s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";i:5;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:6;s:19:\"wptools/wptools.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'mytheme', 'yes'),
(41, 'stylesheet', 'mytheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:9:\"Ctegories\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Ljubljana', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1657101985', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:12:\"page-sidebar\";a:3:{i:0;s:10:\"nav_menu-2\";i:1;s:13:\"custom_html-2\";i:2;s:14:\"recent-posts-2\";}s:12:\"blog-sidebar\";a:3:{i:0;s:5:\"wpp-2\";i:1;s:10:\"archives-2\";i:2;s:12:\"categories-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(578, 'can_compress_scripts', '1', 'no'),
(104, 'cron', 'a:8:{i:1656178783;a:1:{s:25:\"wpp_maybe_performance_nag\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1656180386;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1656194786;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1656237986;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1656237998;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1656237999;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1656756386;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:13:\"Post Archives\";s:5:\"count\";i:1;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:12:\"Website menu\";s:8:\"nav_menu\";i:2;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:\"title\";s:12:\"this is test\";s:7:\"content\";s:23:\"<p>\r\n	Ovo je test\r\n</p>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(119, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1641551105;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(571, 'db_upgraded', '', 'yes'),
(129, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"dovla91mos@gmail.com\";s:7:\"version\";s:3:\"6.0\";s:9:\"timestamp\";i:1656178719;}', 'no'),
(374, 'wp_mail_smtp_initial_version', '3.2.1', 'no'),
(375, 'wp_mail_smtp_version', '3.2.1', 'no'),
(732, '_site_transient_timeout_theme_roots', '1656180448', 'no'),
(733, '_site_transient_theme_roots', 'a:2:{s:7:\"mytheme\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(189, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":4,\"critical\":3}', 'yes'),
(170, 'current_theme', 'My Theme', 'yes'),
(171, 'theme_mods_mytheme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"top-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(172, 'theme_switched', '', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(177, 'recovery_mode_email_last_sent', '1642445501', 'yes'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(238, 'category_children', 'a:0:{}', 'yes'),
(325, 'acf_version', '5.11.4', 'yes'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(696, 'wpp_performance_nag', 'a:2:{s:6:\"status\";i:0;s:12:\"last_checked\";N;}', 'yes'),
(739, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1656178719;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}', 'no'),
(197, 'duplicate_post_copytitle', '1', 'yes'),
(198, 'duplicate_post_copydate', '0', 'yes'),
(199, 'duplicate_post_copystatus', '0', 'yes'),
(200, 'duplicate_post_copyslug', '0', 'yes'),
(201, 'duplicate_post_copyexcerpt', '1', 'yes'),
(202, 'duplicate_post_copycontent', '1', 'yes'),
(203, 'duplicate_post_copythumbnail', '1', 'yes'),
(204, 'duplicate_post_copytemplate', '1', 'yes'),
(205, 'duplicate_post_copyformat', '1', 'yes'),
(206, 'duplicate_post_copyauthor', '0', 'yes'),
(207, 'duplicate_post_copypassword', '0', 'yes'),
(208, 'duplicate_post_copyattachments', '0', 'yes'),
(209, 'duplicate_post_copychildren', '0', 'yes'),
(210, 'duplicate_post_copycomments', '0', 'yes'),
(211, 'duplicate_post_copymenuorder', '1', 'yes'),
(212, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(213, 'duplicate_post_blacklist', '', 'yes'),
(214, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(215, 'duplicate_post_show_original_column', '0', 'yes'),
(216, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(217, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(218, 'duplicate_post_show_link', 'a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}', 'yes'),
(219, 'duplicate_post_show_link_in', 'a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}', 'yes'),
(220, 'duplicate_post_show_notice', '1', 'no'),
(221, 'duplicate_post_version', '4.3', 'yes'),
(371, 'action_scheduler_hybrid_store_demarkation', '76', 'yes'),
(372, 'schema-ActionScheduler_StoreSchema', '4.0.1642528972', 'yes'),
(373, 'schema-ActionScheduler_LoggerSchema', '2.0.1642528972', 'yes'),
(376, 'wp_mail_smtp', 'a:10:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:20:\"dovla91mos@gmail.com\";s:9:\"from_name\";s:18:\"My Wordpress Theme\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:1;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:18:\"smtp.office365.com\";s:10:\"encryption\";s:3:\"tls\";s:4:\"port\";s:3:\"587\";s:4:\"user\";s:20:\"dovla91mos@gmail.com\";s:4:\"pass\";s:0:\"\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}}', 'no'),
(377, 'wp_mail_smtp_activated_time', '1642528972', 'no'),
(378, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1642528972;}', 'yes'),
(387, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(388, 'wp_mail_smtp_setup_wizard_stats', 'a:3:{s:13:\"launched_time\";i:1642528982;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}', 'no'),
(694, 'widget_wpp', 'a:2:{i:2;a:21:{s:5:\"title\";s:12:\"najčitanije\";s:5:\"limit\";s:1:\"4\";s:6:\"offset\";i:0;s:5:\"range\";s:5:\"daily\";s:9:\"time_unit\";s:4:\"hour\";s:13:\"time_quantity\";s:2:\"24\";s:9:\"freshness\";b:0;s:8:\"order_by\";s:5:\"views\";s:9:\"post_type\";s:4:\"post\";s:3:\"pid\";s:0:\"\";s:6:\"author\";s:0:\"\";s:3:\"cat\";s:0:\"\";s:8:\"taxonomy\";s:8:\"category\";s:7:\"term_id\";s:0:\"\";s:13:\"shorten_title\";a:3:{s:6:\"active\";b:0;s:6:\"length\";i:25;s:5:\"words\";b:0;}s:12:\"post-excerpt\";a:4:{s:6:\"active\";b:0;s:6:\"length\";i:75;s:11:\"keep_format\";b:0;s:5:\"words\";b:0;}s:9:\"thumbnail\";a:5:{s:6:\"active\";b:1;s:5:\"build\";s:6:\"manual\";s:5:\"width\";i:75;s:6:\"height\";i:75;s:4:\"crop\";b:1;}s:6:\"rating\";b:0;s:9:\"stats_tag\";a:6:{s:13:\"comment_count\";b:0;s:5:\"views\";b:0;s:6:\"author\";b:0;s:4:\"date\";a:2:{s:6:\"active\";b:0;s:6:\"format\";s:6:\"F j, Y\";}s:8:\"category\";b:0;s:8:\"taxonomy\";a:2:{s:6:\"active\";b:1;s:4:\"name\";s:8:\"category\";}}s:6:\"markup\";a:6:{s:11:\"custom_html\";b:1;s:11:\"title-start\";s:41:\"&lt;h4 class=&quot;widget-title&quot;&gt;\";s:9:\"title-end\";s:11:\"&lt;/h4&gt;\";s:9:\"wpp-start\";s:39:\"<ul class=\"wpp-list wpp-cards-compact\">\";s:7:\"wpp-end\";s:5:\"</ul>\";s:9:\"post-html\";s:124:\"<li class=\"{current_class}\">{thumb_img}<div class=\"wpp-item-data\"><div class=\"taxonomies\">{taxonomy}</div>{title}</div></li>\";}s:5:\"theme\";a:2:{s:4:\"name\";s:13:\"cards-compact\";s:7:\"applied\";b:1;}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(381, 'action_scheduler_lock_async-request-runner', '1656178707', 'yes'),
(385, 'wp_mail_smtp_migration_version', '4', 'yes'),
(386, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(389, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1642529006;s:9:\"dismissed\";b:0;}', 'yes'),
(391, 'action_scheduler_migration_status', 'complete', 'yes'),
(396, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1650469161;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(397, 'wp_mail_smtp_debug', 'a:2:{i:0;i:8;i:1;i:9;}', 'no'),
(398, 'wp_mail_smtp_lite_sent_email_counter', '28', 'yes'),
(399, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:7:{s:2:\"03\";i:17;s:2:\"06\";i:2;s:2:\"08\";i:2;i:12;i:2;i:13;i:1;i:16;i:2;i:25;i:2;}', 'yes'),
(735, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1656178719;s:8:\"response\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"5.6\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.4.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2468655\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2468655\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:19:\"wptools/wptools.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/wptools\";s:4:\"slug\";s:7:\"wptools\";s:6:\"plugin\";s:19:\"wptools/wptools.php\";s:11:\"new_version\";s:4:\"3.34\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wptools/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wptools.3.34.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/wptools/assets/icon-256x256.gif?rev=2526088\";s:2:\"1x\";s:60:\"https://ps.w.org/wptools/assets/icon-128x128.gif?rev=2526088\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/wptools/assets/banner-1544x500.png?rev=2539472\";s:2:\"1x\";s:62:\"https://ps.w.org/wptools/assets/banner-772x250.png?rev=2539472\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";b:0;}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:3:\"6.0\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/force-regenerate-thumbnails\";s:4:\"slug\";s:27:\"force-regenerate-thumbnails\";s:6:\"plugin\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.0.6\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/force-regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/force-regenerate-thumbnails.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:71:\"https://s.w.org/plugins/geopattern-icon/force-regenerate-thumbnails.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";}s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/wordpress-popular-posts\";s:4:\"slug\";s:23:\"wordpress-popular-posts\";s:6:\"plugin\";s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";s:11:\"new_version\";s:5:\"5.5.1\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/wordpress-popular-posts/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/wordpress-popular-posts.5.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/wordpress-popular-posts/assets/icon-256x256.png?rev=1232659\";s:2:\"1x\";s:76:\"https://ps.w.org/wordpress-popular-posts/assets/icon-128x128.png?rev=1232659\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/wordpress-popular-posts/assets/banner-772x250.png?rev=2179381\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.11.4\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:5:\"2.0.6\";s:51:\"wordpress-popular-posts/wordpress-popular-posts.php\";s:5:\"5.5.1\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.2.1\";s:19:\"wptools/wptools.php\";s:4:\"3.09\";s:33:\"duplicate-post/duplicate-post.php\";s:3:\"4.3\";}}', 'no'),
(736, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1656178663;s:7:\"checked\";a:2:{s:7:\"mytheme\";s:0:\"\";s:15:\"twentytwentytwo\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(737, '_site_transient_timeout_php_check_1d343e7f9aee33bb3a30d3fe7077ec03', '1656783466', 'no'),
(738, '_site_transient_php_check_1d343e7f9aee33bb3a30d3fe7077ec03', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(692, 'wpp_settings_config', 'a:2:{s:5:\"stats\";a:7:{s:5:\"range\";s:9:\"last7days\";s:9:\"time_unit\";s:4:\"hour\";s:13:\"time_quantity\";s:2:\"24\";s:8:\"order_by\";s:5:\"views\";s:5:\"limit\";i:10;s:9:\"post_type\";s:9:\"post,page\";s:9:\"freshness\";b:0;}s:5:\"tools\";a:8:{s:12:\"experimental\";b:0;s:4:\"ajax\";b:1;s:3:\"css\";b:1;s:4:\"link\";a:1:{s:6:\"target\";s:5:\"_self\";}s:9:\"thumbnail\";a:5:{s:6:\"source\";s:8:\"featured\";s:5:\"field\";s:0:\"\";s:6:\"resize\";b:0;s:7:\"default\";s:0:\"\";s:8:\"lazyload\";b:1;}s:3:\"log\";a:3:{s:5:\"level\";i:1;s:5:\"limit\";i:0;s:13:\"expires_after\";i:180;}s:5:\"cache\";a:2:{s:6:\"active\";b:1;s:8:\"interval\";a:2:{s:4:\"time\";s:6:\"minute\";s:5:\"value\";i:1;}}s:8:\"sampling\";a:2:{s:6:\"active\";b:0;s:4:\"rate\";i:100;}}}', 'yes'),
(693, 'wpp_ver', '5.5.1', 'yes'),
(156, 'WPLANG', '', 'yes'),
(157, 'new_admin_email', 'dovla91mos@gmail.com', 'yes'),
(263, 'wptools_was_activated', '0', 'yes'),
(264, 'bill_go_pro_hide', '1650469113', 'yes'),
(275, 'wptools_memory_limit', '', 'yes'),
(276, 'wptools_time_limit', '', 'yes'),
(277, 'wptools_max_filesize', '', 'yes'),
(278, 'wptools_disable_sitemap', '', 'yes'),
(279, 'wptools_disable_updates_notifications', '', 'yes'),
(280, 'wptools_add_google_webmaster', '', 'yes'),
(281, 'wptools_add_analitics', '', 'yes'),
(282, 'wptools_alert_debug', '', 'yes'),
(283, 'wptools_hide_admin_bar', '', 'yes'),
(284, 'wptools_disable_lazy', '', 'yes'),
(285, 'wptools_disable_emojis', '', 'yes'),
(286, 'wptools_show_pageload_info', '', 'yes'),
(287, 'wptools_bypass_wpdebug', '', 'yes'),
(288, 'wptools_show_adminbar', '', 'yes'),
(289, 'wptools_classic_widget', 'yes', 'yes'),
(290, 'wptools_show_errors', '', 'yes'),
(291, 'wptools_logo', '', 'yes'),
(292, 'wptools_logo_width', '', 'yes'),
(293, 'wptools_logo_height', '', 'yes'),
(294, 'wptools_erase_readme', '', 'yes'),
(295, 'wptools_remove_icon', '', 'yes'),
(296, 'wptools_disable_console', '', 'yes'),
(297, 'wptools_disable_self_pingbacks', '', 'yes'),
(304, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:5:\"Posts\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(511, 'brands_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_popularpostsdata`
--

DROP TABLE IF EXISTS `wp_popularpostsdata`;
CREATE TABLE IF NOT EXISTS `wp_popularpostsdata` (
  `postid` bigint(20) NOT NULL,
  `day` datetime NOT NULL,
  `last_viewed` datetime NOT NULL,
  `pageviews` bigint(20) DEFAULT '1',
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_popularpostsdata`
--

INSERT INTO `wp_popularpostsdata` (`postid`, `day`, `last_viewed`, `pageviews`) VALUES
(11, '2022-06-25 19:37:41', '2022-06-25 19:37:41', 1),
(21, '2022-06-25 19:37:42', '2022-06-25 19:37:42', 1),
(34, '2022-04-20 17:41:37', '2022-04-20 17:44:55', 4),
(35, '2022-04-20 17:41:44', '2022-04-20 17:45:08', 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_popularpostssummary`
--

DROP TABLE IF EXISTS `wp_popularpostssummary`;
CREATE TABLE IF NOT EXISTS `wp_popularpostssummary` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `postid` bigint(20) NOT NULL,
  `pageviews` bigint(20) NOT NULL DEFAULT '1',
  `view_date` date NOT NULL,
  `view_datetime` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `postid` (`postid`),
  KEY `view_date` (`view_date`),
  KEY `view_datetime` (`view_datetime`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_popularpostssummary`
--

INSERT INTO `wp_popularpostssummary` (`ID`, `postid`, `pageviews`, `view_date`, `view_datetime`) VALUES
(1, 34, 1, '2022-04-20', '2022-04-20 17:41:37'),
(2, 35, 1, '2022-04-20', '2022-04-20 17:41:44'),
(3, 34, 1, '2022-04-20', '2022-04-20 17:41:48'),
(4, 35, 1, '2022-04-20', '2022-04-20 17:41:51'),
(5, 34, 1, '2022-04-20', '2022-04-20 17:42:06'),
(6, 35, 1, '2022-04-20', '2022-04-20 17:42:08'),
(7, 34, 1, '2022-04-20', '2022-04-20 17:44:55'),
(8, 35, 1, '2022-04-20', '2022-04-20 17:45:01'),
(9, 35, 1, '2022-04-20', '2022-04-20 17:45:04'),
(10, 35, 1, '2022-04-20', '2022-04-20 17:45:08'),
(11, 11, 1, '2022-06-25', '2022-06-25 19:37:41'),
(12, 21, 1, '2022-06-25', '2022-06-25 19:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `wp_popularpoststransients`
--

DROP TABLE IF EXISTS `wp_popularpoststransients`;
CREATE TABLE IF NOT EXISTS `wp_popularpoststransients` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `tkey` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tkey_date` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_popularpoststransients`
--

INSERT INTO `wp_popularpoststransients` (`ID`, `tkey`, `tkey_date`) VALUES
(1, 'wpp_cbc9ca84b31a97f6bcc355004de64d78', '2022-04-20 17:41:31'),
(2, 'wpp_cbc9ca84b31a97f6bcc355004de64d78', '2022-04-20 17:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=322 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(10, 7, '_edit_lock', '1642703570:1'),
(11, 7, '_edit_last', '1'),
(12, 11, '_edit_last', '1'),
(13, 11, '_edit_lock', '1641655732:1'),
(14, 14, '_edit_last', '1'),
(15, 14, '_edit_lock', '1641723150:1'),
(16, 14, '_wp_page_template', 'template-contactus.php'),
(17, 7, '_wp_page_template', 'default'),
(18, 18, '_menu_item_type', 'post_type'),
(19, 18, '_menu_item_menu_item_parent', '0'),
(20, 18, '_menu_item_object_id', '7'),
(21, 18, '_menu_item_object', 'page'),
(22, 18, '_menu_item_target', ''),
(23, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 18, '_menu_item_xfn', ''),
(25, 18, '_menu_item_url', ''),
(47, 21, '_edit_lock', '1641563738:1'),
(27, 19, '_menu_item_type', 'post_type'),
(28, 19, '_menu_item_menu_item_parent', '0'),
(29, 19, '_menu_item_object_id', '11'),
(30, 19, '_menu_item_object', 'page'),
(31, 19, '_menu_item_target', ''),
(32, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 19, '_menu_item_xfn', ''),
(34, 19, '_menu_item_url', ''),
(46, 21, '_wp_page_template', 'default'),
(36, 20, '_menu_item_type', 'post_type'),
(37, 20, '_menu_item_menu_item_parent', '0'),
(38, 20, '_menu_item_object_id', '14'),
(39, 20, '_menu_item_object', 'page'),
(40, 20, '_menu_item_target', ''),
(41, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 20, '_menu_item_xfn', ''),
(43, 20, '_menu_item_url', ''),
(45, 21, '_edit_last', '1'),
(188, 30, '_thumbnail_id', '48'),
(192, 11, '_wp_page_template', 'default'),
(191, 11, '_thumbnail_id', '46'),
(178, 47, '_wp_attached_file', '2022/01/02_picture_1_team_parallaxeffect.jpg'),
(75, 26, '_menu_item_type', 'post_type'),
(76, 26, '_menu_item_menu_item_parent', '0'),
(77, 26, '_menu_item_object_id', '21'),
(78, 26, '_menu_item_object', 'page'),
(79, 26, '_menu_item_target', ''),
(80, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 26, '_menu_item_xfn', ''),
(82, 26, '_menu_item_url', ''),
(164, 34, '_edit_lock', '1642102809:1'),
(148, 35, '_edit_lock', '1641738722:1'),
(149, 35, '_edit_last', '1'),
(176, 46, '_wp_attached_file', '2022/01/t1.png'),
(165, 34, '_edit_last', '1'),
(140, 34, '_dp_original', '30'),
(141, 35, '_dp_original', '30'),
(134, 32, '_menu_item_url', ''),
(133, 32, '_menu_item_xfn', ''),
(112, 19, '_wp_old_date', '2022-01-07'),
(131, 32, '_menu_item_target', ''),
(130, 32, '_menu_item_object', 'category'),
(129, 32, '_menu_item_object_id', '3'),
(128, 32, '_menu_item_menu_item_parent', '0'),
(111, 18, '_wp_old_date', '2022-01-07'),
(114, 26, '_wp_old_date', '2022-01-07'),
(115, 20, '_wp_old_date', '2022-01-07'),
(179, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1057;s:4:\"file\";s:44:\"2022/01/02_picture_1_team_parallaxeffect.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"02_picture_1_team_parallaxeffect-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"02_picture_1_team_parallaxeffect-1024x564.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:564;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"02_picture_1_team_parallaxeffect-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"02_picture_1_team_parallaxeffect-768x423.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"02_picture_1_team_parallaxeffect-1536x846.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:846;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-large\";a:4:{s:4:\"file\";s:44:\"02_picture_1_team_parallaxeffect-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-small\";a:4:{s:4:\"file\";s:44:\"02_picture_1_team_parallaxeffect-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(177, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:109;s:6:\"height\";i:109;s:4:\"file\";s:14:\"2022/01/t1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 32, '_menu_item_type', 'taxonomy'),
(121, 30, '_edit_last', '1'),
(180, 35, '_thumbnail_id', '47'),
(124, 30, '_edit_lock', '1641655689:1'),
(201, 52, '_edit_last', '1'),
(202, 52, '_edit_lock', '1642702253:1'),
(203, 53, '_wp_attached_file', '2022/01/autonet.hr_Toyota_Corolla_Sedan_Hybrid_300_test_2019-09-20_otvorna-640x0-1.jpg'),
(204, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:360;s:4:\"file\";s:86:\"2022/01/autonet.hr_Toyota_Corolla_Sedan_Hybrid_300_test_2019-09-20_otvorna-640x0-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:86:\"autonet.hr_Toyota_Corolla_Sedan_Hybrid_300_test_2019-09-20_otvorna-640x0-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:86:\"autonet.hr_Toyota_Corolla_Sedan_Hybrid_300_test_2019-09-20_otvorna-640x0-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-small\";a:4:{s:4:\"file\";s:86:\"autonet.hr_Toyota_Corolla_Sedan_Hybrid_300_test_2019-09-20_otvorna-640x0-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 48, '_wp_attached_file', '2022/01/pic1.jpg'),
(184, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1057;s:4:\"file\";s:16:\"2022/01/pic1.jpg\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"pic1-300x165.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"pic1-1024x564.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:564;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"pic1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"pic1-768x423.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:423;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"pic1-1536x846.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:846;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-large\";a:4:{s:4:\"file\";s:16:\"pic1-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-small\";a:4:{s:4:\"file\";s:16:\"pic1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 34, '_thumbnail_id', '48'),
(205, 52, '_thumbnail_id', '53'),
(215, 52, '_color', 'field_61dc6c5c58156'),
(214, 52, 'color', 'Blue'),
(208, 54, '_edit_last', '1'),
(209, 54, '_edit_lock', '1642702352:1'),
(224, 54, 'registration', 'FGAHA5687'),
(223, 54, 'color', 'Red'),
(212, 55, '_edit_last', '1'),
(213, 55, '_edit_lock', '1644652027:1'),
(216, 52, 'registration', 'ANAN123'),
(217, 52, '_registration', 'field_61dc6ca158157'),
(218, 54, '_color', 'field_61dc6c5c58156'),
(219, 54, '_registration', 'field_61dc6ca158157'),
(220, 58, '_wp_attached_file', '2022/01/day-exterior-4_040.png'),
(221, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:368;s:4:\"file\";s:30:\"2022/01/day-exterior-4_040.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"day-exterior-4_040-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"day-exterior-4_040-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-small\";a:4:{s:4:\"file\";s:30:\"day-exterior-4_040-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 54, '_thumbnail_id', '58'),
(227, 63, '_edit_last', '1'),
(228, 63, '_wp_page_template', 'default'),
(229, 63, '_edit_lock', '1642611395:1'),
(230, 65, '_menu_item_type', 'post_type'),
(231, 65, '_menu_item_menu_item_parent', '0'),
(232, 65, '_menu_item_object_id', '63'),
(233, 65, '_menu_item_object', 'page'),
(234, 65, '_menu_item_target', ''),
(235, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 65, '_menu_item_xfn', ''),
(237, 65, '_menu_item_url', ''),
(244, 63, 'color', 'RED'),
(239, 18, '_wp_old_date', '2022-01-08'),
(240, 19, '_wp_old_date', '2022-01-08'),
(241, 26, '_wp_old_date', '2022-01-08'),
(242, 32, '_wp_old_date', '2022-01-08'),
(243, 20, '_wp_old_date', '2022-01-08'),
(245, 63, '_color', 'field_61dc74233015a'),
(246, 63, 'registration', 'ASEFRR65'),
(247, 63, '_registration', 'field_61dc744eb47d4'),
(248, 66, 'color', 'RED'),
(249, 66, '_color', 'field_61dc74233015a'),
(250, 66, 'registration', 'ASEFRR65'),
(251, 66, '_registration', 'field_61dc744eb47d4'),
(252, 63, 'boja', 'RED'),
(253, 63, '_boja', 'field_61dc74233015a'),
(254, 63, 'reg', 'ASEFRR65'),
(255, 63, '_reg', 'field_61dc744eb47d4'),
(256, 63, 'name', 'Miro'),
(257, 63, '_name', 'field_61dc78004979c'),
(258, 68, 'color', 'RED'),
(259, 68, '_color', 'field_61dc74233015a'),
(260, 68, 'registration', 'ASEFRR65'),
(261, 68, '_registration', 'field_61dc744eb47d4'),
(262, 68, 'boja', ''),
(263, 68, '_boja', 'field_61dc74233015a'),
(264, 68, 'reg', ''),
(265, 68, '_reg', 'field_61dc744eb47d4'),
(266, 68, 'name', 'Miro'),
(267, 68, '_name', 'field_61dc78004979c'),
(268, 69, 'color', 'RED'),
(269, 69, '_color', 'field_61dc74233015a'),
(270, 69, 'registration', 'ASEFRR65'),
(271, 69, '_registration', 'field_61dc744eb47d4'),
(272, 69, 'boja', 'RED'),
(273, 69, '_boja', 'field_61dc74233015a'),
(274, 69, 'reg', 'ASEFRR65'),
(275, 69, '_reg', 'field_61dc744eb47d4'),
(276, 69, 'name', 'Miro'),
(277, 69, '_name', 'field_61dc78004979c'),
(290, 52, 'name', 'Miro'),
(291, 52, '_name', 'field_61dc7c5a26980'),
(292, 71, '_edit_last', '1'),
(293, 71, '_edit_lock', '1642701593:1'),
(294, 72, '_wp_attached_file', '2022/01/Mercedes_rabljena_720x380.png'),
(295, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:380;s:4:\"file\";s:37:\"2022/01/Mercedes_rabljena_720x380.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"Mercedes_rabljena_720x380-300x158.png\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Mercedes_rabljena_720x380-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"blog-small\";a:4:{s:4:\"file\";s:37:\"Mercedes_rabljena_720x380-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(296, 71, '_thumbnail_id', '72'),
(297, 71, 'color', 'Yellow'),
(298, 71, '_color', 'field_61dc6c5c58156'),
(299, 71, 'registration', 'b44564'),
(300, 71, '_registration', 'field_61dc6ca158157'),
(301, 71, 'name', 'Andrija'),
(302, 71, '_name', 'field_61dc7c5a26980'),
(303, 73, '_edit_last', '1'),
(304, 73, '_edit_lock', '1645792534:1'),
(305, 74, '_wp_attached_file', '2022/01/download.jpg'),
(306, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:630;s:4:\"file\";s:20:\"2022/01/download.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"download-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"download-1024x538.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"download-768x403.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:403;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-large\";a:4:{s:4:\"file\";s:20:\"download-800x400.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"blog-small\";a:4:{s:4:\"file\";s:20:\"download-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 73, '_thumbnail_id', '74'),
(308, 73, 'color', 'crna'),
(309, 73, '_color', 'field_61dc6c5c58156'),
(310, 73, 'registration', 'kljhkljk'),
(311, 73, '_registration', 'field_61dc6ca158157'),
(312, 73, 'name', 'BATO'),
(313, 73, '_name', 'field_61dc7c5a26980'),
(314, 52, 'price', '50000'),
(315, 52, '_price', 'field_61e9a320af9dc'),
(316, 54, 'name', ''),
(317, 54, '_name', 'field_61dc7c5a26980'),
(318, 54, 'price', '80000'),
(319, 54, '_price', 'field_61e9a320af9dc'),
(320, 71, 'price', '100000'),
(321, 71, '_price', 'field_61e9a320af9dc');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2022-01-07 10:06:25', '2022-01-07 10:06:25', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/test-projekat.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-01-07 10:06:25', '2022-01-07 10:06:25', '', 0, 'http://localhost/test-projekat/?page_id=3', 0, 'page', '', 0),
(7, 1, '2022-01-07 11:11:11', '2022-01-07 10:11:11', '&nbsp;\r\n\r\n[latest_cars price_below=\"90000\"]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-01-20 19:31:38', '2022-01-20 18:31:38', '', 0, 'http://localhost/test-projekat/?page_id=7', 0, 'page', '', 0),
(8, 1, '2022-01-07 11:11:11', '2022-01-07 10:11:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-07 11:11:11', '2022-01-07 10:11:11', '', 7, 'http://localhost/test-projekat/?p=8', 0, 'revision', '', 0),
(81, 1, '2022-01-20 18:28:43', '2022-01-20 17:28:43', '&nbsp;\r\n\r\n[latest_cars color=\"red\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:28:43', '2022-01-20 17:28:43', '', 7, 'http://localhost/test-projekat/?p=81', 0, 'revision', '', 0),
(82, 1, '2022-01-20 18:28:57', '2022-01-20 17:28:57', '&nbsp;\r\n\r\n[latest_cars color=\"yellow\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:28:57', '2022-01-20 17:28:57', '', 7, 'http://localhost/test-projekat/?p=82', 0, 'revision', '', 0),
(86, 1, '2022-01-20 18:41:30', '2022-01-20 17:41:30', '&nbsp;\r\n\r\n[latest_cars color=\"red\" brand=\"toyota\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:41:30', '2022-01-20 17:41:30', '', 7, 'http://localhost/test-projekat/?p=86', 0, 'revision', '', 0),
(83, 1, '2022-01-20 18:30:54', '2022-01-20 17:30:54', '&nbsp;\r\n\r\n[latest_cars color=\"yellow\" category=\"toyota\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:30:54', '2022-01-20 17:30:54', '', 7, 'http://localhost/test-projekat/?p=83', 0, 'revision', '', 0),
(84, 1, '2022-01-20 18:40:26', '2022-01-20 17:40:26', '&nbsp;\r\n\r\n[latest_cars color=\"yellow\" brand=\"toyota\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:40:26', '2022-01-20 17:40:26', '', 7, 'http://localhost/test-projekat/?p=84', 0, 'revision', '', 0),
(85, 1, '2022-01-20 18:40:59', '2022-01-20 17:40:59', '&nbsp;\r\n\r\n[latest_cars color=\"yellow\" brand=\"mercedes\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:40:59', '2022-01-20 17:40:59', '', 7, 'http://localhost/test-projekat/?p=85', 0, 'revision', '', 0),
(87, 1, '2022-01-20 18:42:07', '2022-01-20 17:42:07', '&nbsp;\r\n\r\n[latest_cars  brand=\"toyota\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:42:07', '2022-01-20 17:42:07', '', 7, 'http://localhost/test-projekat/?p=87', 0, 'revision', '', 0),
(88, 1, '2022-01-20 18:42:34', '2022-01-20 17:42:34', '&nbsp;\r\n\r\n[latest_cars brand=\"toyota\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:42:34', '2022-01-20 17:42:34', '', 7, 'http://localhost/test-projekat/?p=88', 0, 'revision', '', 0),
(9, 1, '2022-01-07 13:41:15', '2022-01-07 12:41:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et ultrices nunc. Quisque sit amet ullamcorper eros. Praesent vitae nisl et lectus molestie tristique. Nullam aliquet suscipit nibh, a imperdiet lectus convallis sit amet. Maecenas ultricies, nisl sit amet rutrum aliquet, neque dui tempus augue, in aliquet sem enim ac tellus. Curabitur fringilla congue augue id posuere. Ut vel luctus purus. Nam ultricies sollicitudin dui id auctor. Sed et volutpat turpis. In quis ultrices odio, nec laoreet justo. Proin imperdiet libero eget ornare aliquet. Sed quis mattis tortor, nec elementum ipsum.\r\n\r\nNunc sit amet ante tincidunt eros tristique molestie. Integer pellentesque quis nisi in fringilla. Phasellus diam orci, condimentum a pulvinar at, vulputate dignissim lacus. Mauris facilisis nisl quis nisl maximus, non venenatis mauris dapibus. Nulla congue elit feugiat, semper odio imperdiet, feugiat augue. Suspendisse ut lacus sed turpis auctor faucibus et quis eros. Fusce elementum fringilla sem, eu ultricies metus sagittis eu. Aliquam erat volutpat. Fusce ut viverra odio.\r\n\r\nPhasellus eu rutrum leo. Maecenas placerat turpis vitae nibh rutrum tempor. Cras et pretium mauris, a porta nunc. Maecenas molestie id ipsum nec venenatis. Maecenas quis felis lorem. Pellentesque nisl massa, tincidunt pellentesque tellus sed, consequat congue felis. Maecenas vel imperdiet sem, a aliquam erat. Fusce eu eleifend metus. Vestibulum nisl purus, tincidunt id ex sit amet, vestibulum semper est. Aenean convallis non dui in tristique. Sed porta pulvinar pellentesque. Vestibulum pretium neque quis ornare maximus. Donec dui quam, mattis in ultrices a, pharetra at dolor. Aliquam consectetur nunc arcu, a finibus ex aliquet quis. Curabitur sollicitudin quam arcu, id sollicitudin erat mollis vitae.', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-07 13:41:15', '2022-01-07 12:41:15', '', 7, 'http://localhost/test-projekat/?p=9', 0, 'revision', '', 0),
(10, 1, '2022-01-07 13:41:57', '2022-01-07 12:41:57', 'OVO JE NEKI SADRZAJ\r\n\r\n&nbsp;\r\n\r\nL orem ipsum dolor sit amet, consectetur adipiscing elit. Donec et ultrices nunc. Quisque sit amet ullamcorper eros. Praesent vitae nisl et lectus molestie tristique. Nullam aliquet suscipit nibh, a imperdiet lectus convallis sit amet. Maecenas ultricies, nisl sit amet rutrum aliquet, neque dui tempus augue, in aliquet sem enim ac tellus. Curabitur fringilla congue augue id posuere. Ut vel luctus purus. Nam ultricies sollicitudin dui id auctor. Sed et volutpat turpis. In quis ultrices odio, nec laoreet justo. Proin imperdiet libero eget ornare aliquet. Sed quis mattis tortor, nec elementum ipsum.\r\n\r\nNunc sit amet ante tincidunt eros tristique molestie. Integer pellentesque quis nisi in fringilla. Phasellus diam orci, condimentum a pulvinar at, vulputate dignissim lacus. Mauris facilisis nisl quis nisl maximus, non venenatis mauris dapibus. Nulla congue elit feugiat, semper odio imperdiet, feugiat augue. Suspendisse ut lacus sed turpis auctor faucibus et quis eros. Fusce elementum fringilla sem, eu ultricies metus sagittis eu. Aliquam erat volutpat. Fusce ut viverra odio.\r\n\r\nPhasellus eu rutrum leo. Maecenas placerat turpis vitae nibh rutrum tempor. Cras et pretium mauris, a porta nunc. Maecenas molestie id ipsum nec venenatis. Maecenas quis felis lorem. Pellentesque nisl massa, tincidunt pellentesque tellus sed, consequat congue felis. Maecenas vel imperdiet sem, a aliquam erat. Fusce eu eleifend metus. Vestibulum nisl purus, tincidunt id ex sit amet, vestibulum semper est. Aenean convallis non dui in tristique. Sed porta pulvinar pellentesque. Vestibulum pretium neque quis ornare maximus. Donec dui quam, mattis in ultrices a, pharetra at dolor. Aliquam consectetur nunc arcu, a finibus ex aliquet quis. Curabitur sollicitudin quam arcu, id sollicitudin erat mollis vitae.', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-07 13:41:57', '2022-01-07 12:41:57', '', 7, 'http://localhost/test-projekat/?p=10', 0, 'revision', '', 0),
(11, 1, '2022-01-07 13:42:24', '2022-01-07 12:42:24', 'OVO JE ABOUT US STRANICA', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2022-01-08 16:30:44', '2022-01-08 15:30:44', '', 0, 'http://localhost/test-projekat/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-01-07 13:42:24', '2022-01-07 12:42:24', '', 'About us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-01-07 13:42:24', '2022-01-07 12:42:24', '', 11, 'http://localhost/test-projekat/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-01-07 13:42:55', '2022-01-07 12:42:55', 'OVO JE ABOUT US STRANICA', 'About us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-01-07 13:42:55', '2022-01-07 12:42:55', '', 11, 'http://localhost/test-projekat/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-01-07 13:47:22', '2022-01-07 12:47:22', 'Ovo je kontakt stranica', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2022-01-07 13:50:25', '2022-01-07 12:50:25', '', 0, 'http://localhost/test-projekat/?page_id=14', 0, 'page', '', 0),
(15, 1, '2022-01-07 13:47:22', '2022-01-07 12:47:22', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-01-07 13:47:22', '2022-01-07 12:47:22', '', 14, 'http://localhost/test-projekat/?p=15', 0, 'revision', '', 0),
(16, 1, '2022-01-07 13:47:42', '2022-01-07 12:47:42', 'Ovo je kontakt stranica', 'Contact us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2022-01-07 13:47:42', '2022-01-07 12:47:42', '', 14, 'http://localhost/test-projekat/?p=16', 0, 'revision', '', 0),
(76, 1, '2022-01-19 17:15:42', '2022-01-19 16:15:42', 'OVO JE NEKI SADRZAJ\r\n\r\n&nbsp;\r\n\r\nL orem ipsum dolor sit amet, consectetur adipiscing elit. Donec et ultrices nunc. Quisque sit amet ullamcorper eros. Praesent vitae nisl et lectus molestie tristique. Nullam aliquet suscipit nibh, a imperdiet lectus convallis sit amet. Maecenas ultricies, nisl sit amet rutrum aliquet, neque dui tempus augue, in aliquet sem enim ac tellus. Curabitur fringilla congue augue id posuere. Ut vel luctus purus. Nam ultricies sollicitudin dui id auctor. Sed et volutpat turpis. In quis ultrices odio, nec laoreet justo. Proin imperdiet libero eget ornare aliquet. Sed quis mattis tortor, nec elementum ipsum.\r\n\r\nNunc sit amet ante tincidunt eros tristique molestie. Integer pellentesque quis nisi in fringilla. Phasellus diam orci, condimentum a pulvinar at, vulputate dignissim lacus. Mauris facilisis nisl quis nisl maximus, non venenatis mauris dapibus. Nulla congue elit feugiat, semper odio imperdiet, feugiat augue. Suspendisse ut lacus sed turpis auctor faucibus et quis eros. Fusce elementum fringilla sem, eu ultricies metus sagittis eu. Aliquam erat volutpat. Fusce ut viverra odio.\r\n\r\nPhasellus eu rutrum leo. Maecenas placerat turpis vitae nibh rutrum tempor. Cras et pretium mauris, a porta nunc. Maecenas molestie id ipsum nec venenatis. Maecenas quis felis lorem. Pellentesque nisl massa, tincidunt pellentesque tellus sed, consequat congue felis. Maecenas vel imperdiet sem, a aliquam erat. Fusce eu eleifend metus. Vestibulum nisl purus, tincidunt id ex sit amet, vestibulum semper est. Aenean convallis non dui in tristique. Sed porta pulvinar pellentesque. Vestibulum pretium neque quis ornare maximus. Donec dui quam, mattis in ultrices a, pharetra at dolor. Aliquam consectetur nunc arcu, a finibus ex aliquet quis. Curabitur sollicitudin quam arcu, id sollicitudin erat mollis vitae.\r\n\r\n[latest_cars]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-19 17:15:42', '2022-01-19 16:15:42', '', 7, 'http://localhost/test-projekat/?p=76', 0, 'revision', '', 0),
(18, 1, '2022-01-10 19:03:58', '2022-01-07 13:22:33', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2022-01-10 19:03:58', '2022-01-10 18:03:58', '', 0, 'http://localhost/test-projekat/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2022-01-10 19:03:58', '2022-01-07 13:22:33', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2022-01-10 19:03:58', '2022-01-10 18:03:58', '', 0, 'http://localhost/test-projekat/?p=19', 2, 'nav_menu_item', '', 0),
(20, 1, '2022-01-10 19:03:58', '2022-01-07 13:22:33', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2022-01-10 19:03:58', '2022-01-10 18:03:58', '', 0, 'http://localhost/test-projekat/?p=20', 5, 'nav_menu_item', '', 0),
(21, 1, '2022-01-07 14:57:45', '2022-01-07 13:57:45', '', 'Our Team', '', 'publish', 'closed', 'closed', '', 'our-team', '', '', '2022-01-07 14:57:45', '2022-01-07 13:57:45', '', 0, 'http://localhost/test-projekat/?page_id=21', 0, 'page', '', 0),
(22, 1, '2022-01-07 14:57:45', '2022-01-07 13:57:45', '', 'Our Team', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2022-01-07 14:57:45', '2022-01-07 13:57:45', '', 21, 'http://localhost/test-projekat/?p=22', 0, 'revision', '', 0),
(26, 1, '2022-01-10 19:03:58', '2022-01-07 14:18:06', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2022-01-10 19:03:58', '2022-01-10 18:03:58', '', 0, 'http://localhost/test-projekat/?p=26', 3, 'nav_menu_item', '', 0),
(32, 1, '2022-01-10 19:03:58', '2022-01-08 08:45:55', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2022-01-10 19:03:58', '2022-01-10 18:03:58', '', 0, 'http://localhost/test-projekat/?p=32', 4, 'nav_menu_item', '', 0),
(30, 1, '2022-01-08 09:42:31', '2022-01-08 08:42:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit', 'Test post 3', '', 'publish', 'open', 'open', '', 'test-post-1', '', '', '2022-01-08 16:27:22', '2022-01-08 15:27:22', '', 0, 'http://localhost/test-projekat/?p=30', 0, 'post', '', 1),
(31, 1, '2022-01-08 09:42:31', '2022-01-08 08:42:31', '', 'Test post 1', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2022-01-08 09:42:31', '2022-01-08 08:42:31', '', 30, 'http://localhost/test-projekat/?p=31', 0, 'revision', '', 0),
(33, 1, '2022-01-08 11:52:44', '2022-01-08 10:52:44', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit', 'Test post 1', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2022-01-08 11:52:44', '2022-01-08 10:52:44', '', 30, 'http://localhost/test-projekat/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-01-08 11:57:42', '2022-01-08 10:57:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit\r\n\r\n&nbsp;\r\n\r\nspiderman\r\n\r\nhulk', 'Test post 1', '', 'publish', 'open', 'open', '', 'test-post-1-3', '', '', '2022-01-09 14:09:51', '2022-01-09 13:09:51', '', 0, 'http://localhost/test-projekat/?p=34', 0, 'post', '', 0),
(35, 1, '2022-01-08 11:57:42', '2022-01-08 10:57:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nmario', 'Test post 2', '', 'publish', 'open', 'open', '', 'test-post-1-2', '', '', '2022-01-09 14:10:10', '2022-01-09 13:10:10', '', 0, 'http://localhost/test-projekat/?p=35', 0, 'post', '', 0),
(42, 1, '2022-01-08 15:40:47', '2022-01-08 14:40:47', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\n<!--nextpage-->', 'Test post 2', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-01-08 15:40:47', '2022-01-08 14:40:47', '', 35, 'http://localhost/test-projekat/?p=42', 0, 'revision', '', 0),
(36, 1, '2022-01-08 11:57:42', '2022-01-08 10:57:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit', 'Test post 1', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-01-08 11:57:42', '2022-01-08 10:57:42', '', 35, 'http://localhost/test-projekat/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-01-08 11:57:42', '2022-01-08 10:57:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit', 'Test post 1', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-01-08 11:57:42', '2022-01-08 10:57:42', '', 34, 'http://localhost/test-projekat/?p=37', 0, 'revision', '', 0),
(38, 1, '2022-01-08 11:58:17', '2022-01-08 10:58:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit', 'Test post 2', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-01-08 11:58:17', '2022-01-08 10:58:17', '', 35, 'http://localhost/test-projekat/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-01-08 11:58:36', '2022-01-08 10:58:36', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit', 'Test post 3', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-01-08 11:58:36', '2022-01-08 10:58:36', '', 35, 'http://localhost/test-projekat/?p=39', 0, 'revision', '', 0),
(40, 1, '2022-01-08 11:58:50', '2022-01-08 10:58:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit', 'Test post 3', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2022-01-08 11:58:50', '2022-01-08 10:58:50', '', 30, 'http://localhost/test-projekat/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-01-08 12:03:31', '2022-01-08 11:03:31', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit', 'Test post 2', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-01-08 12:03:31', '2022-01-08 11:03:31', '', 35, 'http://localhost/test-projekat/?p=41', 0, 'revision', '', 0),
(43, 1, '2022-01-08 15:41:49', '2022-01-08 14:41:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\n\n<!--nextpage-->\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\n\n<!--nextpage-->\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.', 'Test post 2', '', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2022-01-08 15:41:49', '2022-01-08 14:41:49', '', 35, 'http://localhost/test-projekat/?p=43', 0, 'revision', '', 0),
(44, 1, '2022-01-08 15:41:57', '2022-01-08 14:41:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\n<!--nextpage-->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\n<!--nextpage-->\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.', 'Test post 2', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-01-08 15:41:57', '2022-01-08 14:41:57', '', 35, 'http://localhost/test-projekat/?p=44', 0, 'revision', '', 0),
(45, 1, '2022-01-08 15:45:55', '2022-01-08 14:45:55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\n&nbsp;', 'Test post 2', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-01-08 15:45:55', '2022-01-08 14:45:55', '', 35, 'http://localhost/test-projekat/?p=45', 0, 'revision', '', 0),
(46, 1, '2022-01-08 15:48:29', '2022-01-08 14:48:29', '', 't1', '', 'inherit', 'open', 'closed', '', 't1', '', '', '2022-01-08 15:48:29', '2022-01-08 14:48:29', '', 35, 'http://localhost/test-projekat/wp-content/uploads/2022/01/t1.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2022-01-08 15:49:07', '2022-01-08 14:49:07', '', '02_picture_1_team_parallaxeffect', '', 'inherit', 'open', 'closed', '', '02_picture_1_team_parallaxeffect', '', '', '2022-01-08 15:49:07', '2022-01-08 14:49:07', '', 35, 'http://localhost/test-projekat/wp-content/uploads/2022/01/02_picture_1_team_parallaxeffect.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2022-01-08 15:56:28', '2022-01-08 14:56:28', '', 'pic1', '', 'inherit', 'open', 'closed', '', 'pic1', '', '', '2022-01-08 15:56:28', '2022-01-08 14:56:28', '', 34, 'http://localhost/test-projekat/wp-content/uploads/2022/01/pic1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2022-01-09 13:56:24', '2022-01-09 12:56:24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit\r\n\r\n&nbsp;\r\n\r\nspiderman', 'Test post 1', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-01-09 13:56:24', '2022-01-09 12:56:24', '', 34, 'http://localhost/test-projekat/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-01-09 14:09:51', '2022-01-09 13:09:51', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nQuisque vel porttitor mi. Donec pharetra ullamcorper neque non scelerisque. Donec orci magna, facilisis ut porta non, rutrum vitae nisi. Proin sollicitudin mauris vel mauris placerat, sit amet lobortis massa porta. In eu ex diam. Donec dignissim ex sed tellus dignissim pharetra. Mauris in neque risus. Aliquam efficitur dignissim tempor. Praesent fringilla sollicitudin tristique. Nunc congue est sed sapien commodo, vel facilisis orci suscipit\r\n\r\n&nbsp;\r\n\r\nspiderman\r\n\r\nhulk', 'Test post 1', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-01-09 14:09:51', '2022-01-09 13:09:51', '', 34, 'http://localhost/test-projekat/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-01-09 14:10:10', '2022-01-09 13:10:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ac laoreet nunc. Pellentesque eu pellentesque ipsum. Aliquam ut feugiat dui. Sed quam tortor, bibendum viverra orci varius, faucibus ultrices erat. Integer pretium luctus urna, non fringilla ipsum pulvinar non. Suspendisse potenti. Nullam lacus purus, porta aliquet tincidunt nec, posuere ut velit. Mauris efficitur tempus justo nec congue. Cras porttitor dui purus, ut molestie enim fermentum ac. Vestibulum sed tincidunt lectus. Nam lorem neque, tincidunt vel tellus non, eleifend consequat tortor. Curabitur sed varius metus.\r\n\r\nmario', 'Test post 2', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-01-09 14:10:10', '2022-01-09 13:10:10', '', 35, 'http://localhost/test-projekat/?p=51', 0, 'revision', '', 0),
(52, 1, '2022-01-09 15:36:27', '2022-01-09 14:36:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque aliquam erat et porta accumsan. Cras erat sapien, porttitor sit amet dignissim eget, rutrum eu sem. Aliquam varius volutpat dui sed ullamcorper. Donec at turpis laoreet, mattis risus vel, vulputate enim. Proin tincidunt ante porta, rutrum massa ut, iaculis nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In sodales ex a metus pretium, euismod vestibulum justo pharetra. Etiam at justo a sem fermentum lacinia. Cras tortor purus, mollis at egestas id, condimentum sit amet lorem. Sed facilisis vel mi vitae fringilla.\r\n\r\nAliquam finibus, lacus nec porttitor interdum, justo nunc venenatis libero, quis convallis augue neque interdum ligula. Nullam mauris metus, pellentesque sit amet finibus et, auctor et orci. Donec pellentesque nunc mauris, vel sagittis metus maximus varius. Vestibulum ultricies risus vel urna ultricies ultricies. Mauris tristique nulla vitae imperdiet eleifend. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc ut velit vitae augue vestibulum condimentum.\r\n\r\nQuisque ut pretium orci. Donec tempor ligula eget fermentum cursus. Pellentesque eget est interdum, commodo ante quis, tincidunt augue. Nam posuere ex a malesuada euismod. Donec vel lacus sem. Donec ornare odio in massa iaculis, at molestie arcu lobortis. Sed commodo pulvinar lectus eget elementum.\r\n\r\nDonec scelerisque urna eget nunc aliquam porta. Nunc elementum, justo sed imperdiet sollicitudin, dolor nunc pretium urna, quis vestibulum ex augue in enim. Maecenas nunc tellus, tempor nec nulla non, consectetur consequat nisl. Nulla in suscipit justo. Cras venenatis augue orci. Integer sed congue ipsum, quis feugiat ligula. Sed varius vitae neque sit amet euismod.\r\n\r\nNam semper magna elementum massa posuere volutpat. Quisque auctor euismod ligula et pretium. Mauris id sollicitudin velit. Ut finibus malesuada neque. Aliquam tempor nisi elit, at hendrerit eros maximus nec. Fusce sollicitudin orci arcu, eget rutrum ante suscipit et. Aliquam at quam volutpat, viverra nisi nec, elementum eros. Cras orci orci, efficitur ac nulla vitae, efficitur eleifend libero. Suspendisse laoreet nisl id finibus rhoncus. Morbi tristique ligula ac enim convallis, non rhoncus sapien pharetra. Sed non orci sit amet urna gravida molestie. Proin aliquet lacus sed justo efficitur ullamcorper. Vestibulum placerat lacus lacus, sed faucibus lectus commodo pharetra. Nulla gravida condimentum odio at gravida.', 'Toyota Corolla', '', 'publish', 'closed', 'closed', '', 'toyota-corolla', '', '', '2022-01-20 19:12:49', '2022-01-20 18:12:49', '', 0, 'http://localhost/test-projekat/?post_type=cars&#038;p=52', 0, 'cars', '', 0),
(53, 1, '2022-01-09 15:53:55', '2022-01-09 14:53:55', '', 'autonet.hr_Toyota_Corolla_Sedan_Hybrid_300_test_2019-09-20_otvorna-640x0', '', 'inherit', 'open', 'closed', '', 'autonet-hr_toyota_corolla_sedan_hybrid_300_test_2019-09-20_otvorna-640x0', '', '', '2022-01-09 15:53:55', '2022-01-09 14:53:55', '', 52, 'http://localhost/test-projekat/wp-content/uploads/2022/01/autonet.hr_Toyota_Corolla_Sedan_Hybrid_300_test_2019-09-20_otvorna-640x0-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(54, 1, '2022-01-10 18:20:04', '2022-01-10 17:20:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque aliquam erat et porta accumsan. Cras erat sapien, porttitor sit amet dignissim eget, rutrum eu sem. Aliquam varius volutpat dui sed ullamcorper. Donec at turpis laoreet, mattis risus vel, vulputate enim. Proin tincidunt ante porta, rutrum massa ut, iaculis nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In sodales ex a metus pretium, euismod vestibulum justo pharetra. Etiam at justo a sem fermentum lacinia. Cras tortor purus, mollis at egestas id, condimentum sit amet lorem. Sed facilisis vel mi vitae fringilla.\r\n\r\nAliquam finibus, lacus nec porttitor interdum, justo nunc venenatis libero, quis convallis augue neque interdum ligula. Nullam mauris metus, pellentesque sit amet finibus et, auctor et orci. Donec pellentesque nunc mauris, vel sagittis metus maximus varius. Vestibulum ultricies risus vel urna ultricies ultricies. Mauris tristique nulla vitae imperdiet eleifend. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc ut velit vitae augue vestibulum condimentum.\r\n\r\nQuisque ut pretium orci. Donec tempor ligula eget fermentum cursus. Pellentesque eget est interdum, commodo ante quis, tincidunt augue. Nam posuere ex a malesuada euismod. Donec vel lacus sem. Donec ornare odio in massa iaculis, at molestie arcu lobortis. Sed commodo pulvinar lectus eget elementum.', 'Toyota Landcruiser', '', 'publish', 'closed', 'closed', '', 'toyota-landcruiser', '', '', '2022-01-20 19:12:31', '2022-01-20 18:12:31', '', 0, 'http://localhost/test-projekat/?post_type=cars&#038;p=54', 0, 'cars', '', 0),
(55, 1, '2022-01-10 18:28:21', '2022-01-10 17:28:21', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"cars\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Car Details', 'car-details', 'publish', 'closed', 'closed', '', 'group_61dc6c29005d0', '', '', '2022-01-20 19:00:20', '2022-01-20 18:00:20', '', 0, 'http://localhost/test-projekat/?post_type=acf-field-group&#038;p=55', 0, 'acf-field-group', '', 0),
(56, 1, '2022-01-10 18:28:21', '2022-01-10 17:28:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Color', 'color', 'publish', 'closed', 'closed', '', 'field_61dc6c5c58156', '', '', '2022-01-10 18:28:21', '2022-01-10 17:28:21', '', 55, 'http://localhost/test-projekat/?post_type=acf-field&p=56', 0, 'acf-field', '', 0),
(57, 1, '2022-01-10 18:28:21', '2022-01-10 17:28:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Registration', 'registration', 'publish', 'closed', 'closed', '', 'field_61dc6ca158157', '', '', '2022-01-10 18:28:21', '2022-01-10 17:28:21', '', 55, 'http://localhost/test-projekat/?post_type=acf-field&p=57', 1, 'acf-field', '', 0),
(58, 1, '2022-01-10 18:33:40', '2022-01-10 17:33:40', '', 'day-exterior-4_040', '', 'inherit', 'open', 'closed', '', 'day-exterior-4_040', '', '', '2022-01-10 18:33:40', '2022-01-10 17:33:40', '', 54, 'http://localhost/test-projekat/wp-content/uploads/2022/01/day-exterior-4_040.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2022-01-10 18:33:41', '2022-01-10 17:33:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque aliquam erat et porta accumsan. Cras erat sapien, porttitor sit amet dignissim eget, rutrum eu sem. Aliquam varius volutpat dui sed ullamcorper. Donec at turpis laoreet, mattis risus vel, vulputate enim. Proin tincidunt ante porta, rutrum massa ut, iaculis nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In sodales ex a metus pretium, euismod vestibulum justo pharetra. Etiam at justo a sem fermentum lacinia. Cras tortor purus, mollis at egestas id, condimentum sit amet lorem. Sed facilisis vel mi vitae fringilla.\n\nAliquam finibus, lacus nec porttitor interdum, justo nunc venenatis libero, quis convallis augue neque interdum ligula. Nullam mauris metus, pellentesque sit amet finibus et, auctor et orci. Donec pellentesque nunc mauris, vel sagittis metus maximus varius. Vestibulum ultricies risus vel urna ultricies ultricies. Mauris tristique nulla vitae imperdiet eleifend. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc ut velit vitae augue vestibulum condimentum.\n\nQuisque ut pretium orci. Donec tempor ligula eget fermentum cursus. Pellentesque eget est interdum, commodo ante quis, tincidunt augue. Nam posuere ex a malesuada euismod. Donec vel lacus sem. Donec ornare odio in massa iaculis, at molestie arcu lobortis. Sed commodo pulvinar lectus eget elementum.', 'Toyota Landcruiser', '', 'inherit', 'closed', 'closed', '', '54-autosave-v1', '', '', '2022-01-10 18:33:41', '2022-01-10 17:33:41', '', 54, 'http://localhost/test-projekat/?p=59', 0, 'revision', '', 0),
(69, 1, '2022-01-10 19:25:49', '2022-01-10 18:25:49', '', 'Cars', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-01-10 19:25:49', '2022-01-10 18:25:49', '', 63, 'http://localhost/test-projekat/?p=69', 0, 'revision', '', 0),
(63, 1, '2022-01-10 19:03:45', '2022-01-10 18:03:45', '', 'Cars', '', 'publish', 'closed', 'closed', '', 'cars', '', '', '2022-01-10 19:25:49', '2022-01-10 18:25:49', '', 0, 'http://localhost/test-projekat/?page_id=63', 0, 'page', '', 0),
(64, 1, '2022-01-10 19:03:45', '2022-01-10 18:03:45', '', 'Cars', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-01-10 19:03:45', '2022-01-10 18:03:45', '', 63, 'http://localhost/test-projekat/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-01-10 19:03:58', '2022-01-10 18:03:58', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2022-01-10 19:03:58', '2022-01-10 18:03:58', '', 0, 'http://localhost/test-projekat/?p=65', 6, 'nav_menu_item', '', 0),
(66, 1, '2022-01-10 19:09:11', '2022-01-10 18:09:11', '', 'Cars', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-01-10 19:09:11', '2022-01-10 18:09:11', '', 63, 'http://localhost/test-projekat/?p=66', 0, 'revision', '', 0),
(68, 1, '2022-01-10 19:23:49', '2022-01-10 18:23:49', '', 'Cars', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-01-10 19:23:49', '2022-01-10 18:23:49', '', 63, 'http://localhost/test-projekat/?p=68', 0, 'revision', '', 0),
(70, 1, '2022-01-10 19:35:19', '2022-01-10 18:35:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_61dc7c5a26980', '', '', '2022-01-10 19:35:19', '2022-01-10 18:35:19', '', 55, 'http://localhost/test-projekat/?post_type=acf-field&p=70', 2, 'acf-field', '', 0),
(71, 1, '2022-01-10 19:39:18', '2022-01-10 18:39:18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque aliquam erat et porta accumsan. Cras erat sapien, porttitor sit amet dignissim eget, rutrum eu sem. Aliquam varius volutpat dui sed ullamcorper. Donec at turpis laoreet, mattis risus vel, vulputate enim. Proin tincidunt ante porta, rutrum massa ut, iaculis nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In sodales ex a metus pretium, euismod vestibulum justo pharetra. Etiam at justo a sem fermentum lacinia. Cras tortor purus, mollis at egestas id, condimentum sit amet lorem. Sed facilisis vel mi vitae fringilla.\r\n\r\nAliquam finibus, lacus nec porttitor interdum, justo nunc venenatis libero, quis convallis augue neque interdum ligula. Nullam mauris metus, pellentesque sit amet finibus et, auctor et orci. Donec pellentesque nunc mauris, vel sagittis metus maximus varius. Vestibulum ultricies risus vel urna ultricies ultricies. Mauris tristique nulla vitae imperdiet eleifend. Class aptent taciti sociosqu ad litora torquent per co', 'Mercedes', '', 'publish', 'closed', 'closed', '', 'mercedes', '', '', '2022-01-20 19:01:45', '2022-01-20 18:01:45', '', 0, 'http://localhost/test-projekat/?post_type=cars&#038;p=71', 0, 'cars', '', 0),
(72, 1, '2022-01-10 19:39:12', '2022-01-10 18:39:12', '', 'Mercedes_rabljena_720x380', '', 'inherit', 'open', 'closed', '', 'mercedes_rabljena_720x380', '', '', '2022-01-10 19:39:12', '2022-01-10 18:39:12', '', 71, 'http://localhost/test-projekat/wp-content/uploads/2022/01/Mercedes_rabljena_720x380.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2022-01-10 19:43:21', '2022-01-10 18:43:21', '[phone]\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque aliquam erat et porta accumsan. Cras erat sapien, porttitor sit amet dignissim eget, rutrum eu sem. Aliquam varius volutpat dui sed ullamcorper. Donec at turpis laoreet, mattis risus vel, vulputate enim. Proin tincidunt ante porta, rutrum massa ut, iaculis nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In sodales ex a metus pretium, euismod vestibulum justo pharetra. Etiam at justo a sem fermentum lacinia. Cras tortor purus, mollis at egestas id, condimentum sit amet lorem. Sed facilisis vel mi vitae fringilla.\r\n\r\nAliquam finibus, lacus nec porttitor interdum, justo nunc venenatis libero, quis convallis augue neque interdum ligula. Nullam mauris metus, pellentesque sit amet finibus et, auctor et orci. Donec pellentesque nu\r\n\r\n&nbsp;\r\n\r\n[phone]', 'Audi', '', 'publish', 'closed', 'closed', '', 'audi', '', '', '2022-01-19 17:59:25', '2022-01-19 16:59:25', '', 0, 'http://localhost/test-projekat/?post_type=cars&#038;p=73', 0, 'cars', '', 0),
(74, 1, '2022-01-10 19:43:14', '2022-01-10 18:43:14', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2022-01-10 19:43:14', '2022-01-10 18:43:14', '', 73, 'http://localhost/test-projekat/wp-content/uploads/2022/01/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2022-01-19 17:58:41', '2022-01-19 16:58:41', 'OVO JE NEKI SADRZAJ\r\n\r\n&nbsp;\r\n\r\nL orem ipsum dolor sit amet, consectetur adipiscing elit. [phone]Donec et ultrices nunc. Quisque sit amet ullamcorper eros. Praesent vitae nisl et lectus molestie tristique. Nullam aliquet suscipit nibh, a imperdiet lectus convallis sit amet. Maecenas ultricies, nisl sit amet rutrum aliquet, neque dui tempus augue, in aliquet sem enim ac tellus. Curabitur fringilla congue augue id posuere. Ut vel luctus purus. Nam ultricies sollicitudin dui id auctor. Sed et volutpat turpis. In quis ultrices odio, nec laoreet justo. Proin imperdiet libero eget ornare aliquet. Sed quis mattis tortor, nec elementum ipsum.\r\n\r\nNunc sit amet ante tincidunt eros tristique molestie. Integer pellentesque quis nisi in fringilla. [phone] Phasellus diam orci, condimentum a pulvinar at, vulputate dignissim lacus. Mauris facilisis nisl quis nisl maximus, non venenatis mauris dapibus. Nulla congue elit feugiat, semper odio imperdiet, feugiat augue. Suspendisse ut lacus sed turpis auctor faucibus et quis eros. Fusce elementum fringilla sem, eu ultricies metus sagittis eu. Aliquam erat volutpat. Fusce ut viverra odio.\r\n\r\nPhasellus eu rutrum leo. Maecenas placerat turpis vitae nibh rutrum tempor. Cras et pretium mauris, a porta nunc. Maecenas molestie id ipsum nec venenatis. Maecenas quis felis lorem. Pellentesque nisl massa, tincidunt pellentesque tellus sed, consequat congue felis. Maecenas vel imperdiet sem, a aliquam erat. Fusce eu eleifend metus. Vestibulum nisl purus, tincidunt id ex sit amet, vestibulum semper est. Aenean convallis non dui in tristique. Sed porta pulvinar pellentesque. Vestibulum pretium neque quis ornare maximus. Donec dui quam, mattis in ultrices a, pharetra at dolor. Aliquam consectetur nunc arcu, a finibus ex aliquet quis. Curabitur sollicitudin quam arcu, id sollicitudin erat mollis vitae.\r\n\r\n[latest_cars]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-19 17:58:41', '2022-01-19 16:58:41', '', 7, 'http://localhost/test-projekat/?p=77', 0, 'revision', '', 0),
(78, 1, '2022-01-20 18:08:48', '2022-01-20 17:08:48', 'OVO JE NEKI SADRZAJ\r\n\r\n&nbsp;\r\n\r\nL orem ipsum dolor sit amet, consectetur adipiscing elit. [phone] Donec et ultrices nunc. Quisque sit amet ullamcorper eros. Praesent vitae nisl et lectus molestie tristique. Nullam aliquet suscipit nibh, a imperdiet lectus convallis sit amet. Maecenas ultricies, nisl sit amet rutrum aliquet, neque dui tempus augue, in aliquet sem enim ac tellus. Curabitur fringilla congue augue id posuere. Ut vel luctus purus. Nam ultricies sollicitudin dui id auctor. Sed et volutpat turpis. In quis ultrices odio, nec laoreet justo. Proin imperdiet libero eget ornare aliquet. Sed quis mattis tortor, nec elementum ipsum.\r\n\r\nNunc sit amet ante tincidunt eros tristique molestie. Integer pellentesque quis nisi in fringilla. [phone] Phasellus diam orci, condimentum a pulvinar at, vulputate dignissim lacus. Mauris facilisis nisl quis nisl maximus, non venenatis mauris dapibus. Nulla congue elit feugiat, semper odio imperdiet, feugiat augue. Suspendisse ut lacus sed turpis auctor faucibus et quis eros. Fusce elementum fringilla sem, eu ultricies metus sagittis eu. Aliquam erat volutpat. Fusce ut viverra odio.\r\n\r\nPhasellus eu rutrum leo. Maecenas placerat turpis vitae nibh rutrum tempor. Cras et pretium mauris, a porta nunc. Maecenas molestie id ipsum nec venenatis. Maecenas quis felis lorem. Pellentesque nisl massa, tincidunt pellentesque tellus sed, consequat congue felis. Maecenas vel imperdiet sem, a aliquam erat. Fusce eu eleifend metus. Vestibulum nisl purus, tincidunt id ex sit amet, vestibulum semper est. Aenean convallis non dui in tristique. Sed porta pulvinar pellentesque. Vestibulum pretium neque quis ornare maximus. Donec dui quam, mattis in ultrices a, pharetra at dolor. Aliquam consectetur nunc arcu, a finibus ex aliquet quis. Curabitur sollicitudin quam arcu, id sollicitudin erat mollis vitae.\r\n\r\n[latest_cars]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:08:48', '2022-01-20 17:08:48', '', 7, 'http://localhost/test-projekat/?p=78', 0, 'revision', '', 0),
(80, 1, '2022-01-20 18:15:05', '2022-01-20 17:15:05', '&nbsp;\r\n\r\n[latest_cars color=\"blue\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:15:05', '2022-01-20 17:15:05', '', 7, 'http://localhost/test-projekat/?p=80', 0, 'revision', '', 0),
(79, 1, '2022-01-20 18:11:46', '2022-01-20 17:11:46', 'OVO JE NEKI SADRZAJ\r\n\r\n&nbsp;\r\n\r\nL orem ipsum dolor sit amet, consectetur adipiscing elit. [phone] Donec et ultrices nunc. Quisque sit amet ullamcorper eros. Praesent vitae nisl et lectus molestie tristique. Nullam aliquet suscipit nibh, a imperdiet lectus convallis sit amet. Maecenas ultricies, nisl sit amet rutrum aliquet, neque dui tempus augue, in aliquet sem enim ac tellus. Curabitur fringilla congue augue id posuere. Ut vel luctus purus. Nam ultricies sollicitudin dui id auctor. Sed et volutpat turpis. In quis ultrices odio, nec laoreet justo. Proin imperdiet libero eget ornare aliquet. Sed quis mattis tortor, nec elementum ipsum.\r\n\r\nNunc sit amet ante tincidunt eros tristique molestie. Integer pellentesque quis nisi in fringilla. [phone] Phasellus diam orci, condimentum a pulvinar at, vulputate dignissim lacus. Mauris facilisis nisl quis nisl maximus, non venenatis mauris dapibus. Nulla congue elit feugiat, semper odio imperdiet, feugiat augue. Suspendisse ut lacus sed turpis auctor faucibus et quis eros. Fusce elementum fringilla sem, eu ultricies metus sagittis eu. Aliquam erat volutpat. Fusce ut viverra odio.\r\n\r\n[email]\r\n\r\nPhasellus eu rutrum leo. Maecenas placerat turpis vitae nibh rutrum tempor. Cras et pretium mauris, a porta nunc. Maecenas molestie id ipsum nec venenatis. Maecenas quis felis lorem. Pellentesque nisl massa, tincidunt pellentesque tellus sed, consequat congue felis. Maecenas vel imperdiet sem, a aliquam erat. Fusce eu eleifend metus. Vestibulum nisl purus, tincidunt id ex sit amet, vestibulum semper est. Aenean convallis non dui in tristique. Sed porta pulvinar pellentesque. Vestibulum pretium neque quis ornare maximus. Donec dui quam, mattis in ultrices a, pharetra at dolor. Aliquam consectetur nunc arcu, a finibus ex aliquet quis. Curabitur sollicitudin quam arcu, id sollicitudin erat mollis vitae.\r\n\r\n[latest_cars]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:11:46', '2022-01-20 17:11:46', '', 7, 'http://localhost/test-projekat/?p=79', 0, 'revision', '', 0),
(89, 1, '2022-01-20 18:49:17', '2022-01-20 17:49:17', '&nbsp;\r\n\r\n[latest_cars color=\"red\" brand=\"toyota\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:49:17', '2022-01-20 17:49:17', '', 7, 'http://localhost/test-projekat/?p=89', 0, 'revision', '', 0),
(90, 1, '2022-01-20 18:49:30', '2022-01-20 17:49:30', '&nbsp;\r\n\r\n[latest_cars color=\"blue\" brand=\"toyota\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:49:30', '2022-01-20 17:49:30', '', 7, 'http://localhost/test-projekat/?p=90', 0, 'revision', '', 0),
(93, 1, '2022-01-20 18:51:15', '2022-01-20 17:51:15', '&nbsp;\r\n\r\n[latest_cars brand=\"mercedes\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:51:15', '2022-01-20 17:51:15', '', 7, 'http://localhost/test-projekat/?p=93', 0, 'revision', '', 0),
(91, 1, '2022-01-20 18:50:45', '2022-01-20 17:50:45', '&nbsp;\r\n\r\n[latest_cars color=\"blue\" brand=\"mercedes\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:50:45', '2022-01-20 17:50:45', '', 7, 'http://localhost/test-projekat/?p=91', 0, 'revision', '', 0),
(92, 1, '2022-01-20 18:50:58', '2022-01-20 17:50:58', '&nbsp;\r\n\r\n[latest_cars color=\"yellow\" brand=\"mercedes\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:50:58', '2022-01-20 17:50:58', '', 7, 'http://localhost/test-projekat/?p=92', 0, 'revision', '', 0),
(94, 1, '2022-01-20 18:58:08', '2022-01-20 17:58:08', '&nbsp;\r\n\r\n[latest_cars brand=\"toyota\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:58:08', '2022-01-20 17:58:08', '', 7, 'http://localhost/test-projekat/?p=94', 0, 'revision', '', 0),
(95, 1, '2022-01-20 18:58:49', '2022-01-20 17:58:49', '&nbsp;\r\n\r\n[latest_cars color=\"blue\" brand=\"toyota\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 18:58:49', '2022-01-20 17:58:49', '', 7, 'http://localhost/test-projekat/?p=95', 0, 'revision', '', 0),
(96, 1, '2022-01-20 19:00:20', '2022-01-20 18:00:20', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Price', 'price', 'publish', 'closed', 'closed', '', 'field_61e9a320af9dc', '', '', '2022-01-20 19:00:20', '2022-01-20 18:00:20', '', 55, 'http://localhost/test-projekat/?post_type=acf-field&p=96', 3, 'acf-field', '', 0),
(97, 1, '2022-01-20 19:02:34', '2022-01-20 18:02:34', '&nbsp;\r\n\r\n[latest_cars]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:02:34', '2022-01-20 18:02:34', '', 7, 'http://localhost/test-projekat/?p=97', 0, 'revision', '', 0),
(98, 1, '2022-01-20 19:04:37', '2022-01-20 18:04:37', '&nbsp;\n\n[latest_cars price_ab]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2022-01-20 19:04:37', '2022-01-20 18:04:37', '', 7, 'http://localhost/test-projekat/?p=98', 0, 'revision', '', 0),
(99, 1, '2022-01-20 19:05:09', '2022-01-20 18:05:09', '&nbsp;\r\n\r\n[latest_cars price_above=\"30000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:05:09', '2022-01-20 18:05:09', '', 7, 'http://localhost/test-projekat/?p=99', 0, 'revision', '', 0),
(100, 1, '2022-01-20 19:13:34', '2022-01-20 18:13:34', '&nbsp;\r\n\r\n[latest_cars price_above=\"90000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:13:34', '2022-01-20 18:13:34', '', 7, 'http://localhost/test-projekat/?p=100', 0, 'revision', '', 0),
(101, 1, '2022-01-20 19:13:47', '2022-01-20 18:13:47', '&nbsp;\r\n\r\n[latest_cars price_above=\"110000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:13:47', '2022-01-20 18:13:47', '', 7, 'http://localhost/test-projekat/?p=101', 0, 'revision', '', 0),
(102, 1, '2022-01-20 19:14:04', '2022-01-20 18:14:04', '&nbsp;\r\n\r\n[latest_cars price_above=\"20000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:14:04', '2022-01-20 18:14:04', '', 7, 'http://localhost/test-projekat/?p=102', 0, 'revision', '', 0),
(103, 1, '2022-01-20 19:16:43', '2022-01-20 18:16:43', '&nbsp;\r\n\r\n[latest_cars price_above=\"60000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:16:43', '2022-01-20 18:16:43', '', 7, 'http://localhost/test-projekat/?p=103', 0, 'revision', '', 0),
(104, 1, '2022-01-20 19:26:23', '2022-01-20 18:26:23', '&nbsp;\r\n\r\n[latest_cars price_below=\"60000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:26:23', '2022-01-20 18:26:23', '', 7, 'http://localhost/test-projekat/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-01-20 19:27:55', '2022-01-20 18:27:55', '&nbsp;\r\n\r\n[latest_cars price_above=\"60000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:27:55', '2022-01-20 18:27:55', '', 7, 'http://localhost/test-projekat/?p=105', 0, 'revision', '', 0),
(106, 1, '2022-01-20 19:28:32', '2022-01-20 18:28:32', '&nbsp;\r\n\r\n[latest_cars price_above=\"1000000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:28:32', '2022-01-20 18:28:32', '', 7, 'http://localhost/test-projekat/?p=106', 0, 'revision', '', 0),
(108, 1, '2022-01-20 19:30:51', '2022-01-20 18:30:51', '&nbsp;\r\n\r\n[latest_cars price_above=\"100000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:30:51', '2022-01-20 18:30:51', '', 7, 'http://localhost/test-projekat/?p=108', 0, 'revision', '', 0),
(107, 1, '2022-01-20 19:29:16', '2022-01-20 18:29:16', '&nbsp;\r\n\r\n[latest_cars price_above=\"1000000\" color=\"yellow\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:29:16', '2022-01-20 18:29:16', '', 7, 'http://localhost/test-projekat/?p=107', 0, 'revision', '', 0),
(109, 1, '2022-01-20 19:31:08', '2022-01-20 18:31:08', '&nbsp;\r\n\r\n[latest_cars price_above=\"60000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:31:08', '2022-01-20 18:31:08', '', 7, 'http://localhost/test-projekat/?p=109', 0, 'revision', '', 0),
(110, 1, '2022-01-20 19:31:23', '2022-01-20 18:31:23', '&nbsp;\r\n\r\n[latest_cars price_below=\"60000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:31:23', '2022-01-20 18:31:23', '', 7, 'http://localhost/test-projekat/?p=110', 0, 'revision', '', 0),
(111, 1, '2022-01-20 19:31:38', '2022-01-20 18:31:38', '&nbsp;\r\n\r\n[latest_cars price_below=\"90000\"]', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2022-01-20 19:31:38', '2022-01-20 18:31:38', '', 7, 'http://localhost/test-projekat/?p=111', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Bar', 'top-bar', 0),
(3, 'Blog', 'blog', 0),
(4, 'test1', 'test1', 0),
(5, 'test2', 'test2', 0),
(6, 'test3', 'test3', 0),
(7, 'test5', 'test5', 0),
(8, 'Recepies', 'recepies', 0),
(9, 'Toyota', 'toyota', 0),
(10, 'Mercedes', 'mercedes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(18, 2, 0),
(19, 2, 0),
(20, 2, 0),
(34, 4, 0),
(26, 2, 0),
(34, 3, 0),
(30, 6, 0),
(30, 5, 0),
(30, 4, 0),
(32, 2, 0),
(34, 5, 0),
(30, 3, 0),
(34, 6, 0),
(35, 3, 0),
(35, 4, 0),
(35, 5, 0),
(35, 6, 0),
(34, 7, 0),
(34, 8, 0),
(52, 9, 0),
(54, 9, 0),
(65, 2, 0),
(71, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'category', '', 0, 3),
(4, 4, 'post_tag', '', 0, 3),
(5, 5, 'post_tag', '', 0, 3),
(6, 6, 'post_tag', '', 0, 3),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'brands', '', 0, 2),
(10, 10, 'brands', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'vlado123'),
(2, 1, 'first_name', 'vlado'),
(3, 1, 'last_name', 'Barbarić'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugins'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"fa30d1f2b36f946db91d057220cb942a3d74b1cc52ee9b93d3d0baa87d5389fe\";a:4:{s:10:\"expiration\";i:1650641907;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:116:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\";s:5:\"login\";i:1650469107;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1641653789'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '115'),
(20, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(21, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:21:\"dashboard_site_health\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:51:\"submitdiv,postimagediv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:96:\"revisionsdiv,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_post', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'vlado123', '$P$BftyQfdF.yQfUJnH.9FCdFhn7pPdJ11', 'vlado123', 'dovla91mos@gmail.com', 'http://localhost/test-projekat', '2022-01-07 10:06:25', '', 0, 'vlado123');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_debug_events`;
CREATE TABLE IF NOT EXISTS `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `initiator` text COLLATE utf8mb4_unicode_520_ci,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmailsmtp_debug_events`
--

INSERT INTO `wp_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\wamp64\\\\www\\\\test-projekat\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":314}', 0, '2022-01-19 06:08:43'),
(2, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\wamp64\\\\www\\\\test-projekat\\\\wp-content\\\\themes\\\\mytheme\\\\functions.php\",\"line\":204}', 0, '2022-01-19 06:13:33'),
(3, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\wamp64\\\\www\\\\test-projekat\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":314}', 0, '2022-01-19 06:14:32'),
(4, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\wamp64\\\\www\\\\test-projekat\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Admin\\\\Pages\\\\TestTab.php\",\"line\":314}', 0, '2022-01-19 06:20:42'),
(5, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\wamp64\\\\www\\\\test-projekat\\\\wp-content\\\\themes\\\\mytheme\\\\functions.php\",\"line\":204}', 0, '2022-01-19 06:24:29'),
(6, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\wamp64\\\\www\\\\test-projekat\\\\wp-content\\\\themes\\\\mytheme\\\\functions.php\",\"line\":204}', 0, '2022-01-19 06:29:51'),
(7, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\wamp64\\\\www\\\\test-projekat\\\\wp-content\\\\themes\\\\mytheme\\\\functions.php\",\"line\":204}', 0, '2022-01-19 06:30:06'),
(8, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\wamp64\\\\www\\\\test-projekat\\\\wp-content\\\\plugins\\\\wp-mail-smtp\\\\src\\\\Reports\\\\Emails\\\\Summary.php\",\"line\":112}', 0, '2022-06-26 05:37:28'),
(9, 'Mailer: Default (none)\r\nPHPMailer was able to connect to SMTP server but failed while trying to send an email.', '{\"file\":\"C:\\\\wamp64\\\\www\\\\test-projekat\\\\wp-admin\\\\includes\\\\class-wp-automatic-updater.php\",\"line\":909}', 0, '2022-06-26 05:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

DROP TABLE IF EXISTS `wp_wpmailsmtp_tasks_meta`;
CREATE TABLE IF NOT EXISTS `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_summary_report_email', 'W10=', '2022-01-18 18:05:34'),
(2, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-01-18 18:08:17'),
(3, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-01-20 17:06:16'),
(4, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-01-20 17:08:16'),
(5, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-02-12 07:48:09'),
(6, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-02-25 12:31:08'),
(7, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-03-26 09:03:10'),
(8, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-04-20 15:38:29'),
(9, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2022-04-20 15:38:59');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
