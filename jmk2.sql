-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 26 2017 г., 20:00
-- Версия сервера: 5.6.29-log
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `jmk2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_assets`
--

CREATE TABLE IF NOT EXISTS `t50hg_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_assets`
--

INSERT INTO `t50hg_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 135, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 28, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1}}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 37, 42, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1}}'),
(17, 1, 43, 44, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 45, 98, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1}}'),
(19, 1, 99, 102, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(20, 1, 103, 104, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1}}'),
(21, 1, 105, 106, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1}}'),
(22, 1, 107, 108, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 109, 110, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1}}'),
(24, 1, 111, 114, 1, 'com_users', 'com_users', '{"core.admin":{"7":1}}'),
(26, 1, 115, 116, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 100, 101, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 112, 113, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 117, 118, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 119, 120, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 121, 122, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 123, 124, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 125, 126, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 127, 128, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 46, 47, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 48, 49, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 50, 51, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 52, 53, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 54, 55, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 56, 57, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 58, 59, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 60, 61, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 62, 63, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 64, 65, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 66, 67, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 68, 69, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 70, 71, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 72, 73, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 74, 75, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 38, 39, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 76, 77, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 11, 26, 27, 2, 'com_languages.language.2', 'Русский (Россия)', '{}'),
(57, 1, 129, 130, 1, 'com_k2', 'COM_K2', '{}'),
(58, 18, 78, 79, 2, 'com_modules.module.88', 'K2 Comments', '{}'),
(59, 18, 80, 81, 2, 'com_modules.module.89', 'K2 Content', '{}'),
(60, 18, 82, 83, 2, 'com_modules.module.90', 'K2 Tools', '{}'),
(61, 18, 84, 85, 2, 'com_modules.module.91', 'K2 Users', '{}'),
(62, 18, 86, 87, 2, 'com_modules.module.92', 'K2 User', '{}'),
(63, 18, 88, 89, 2, 'com_modules.module.93', 'K2 Quick Icons (admin)', '{}'),
(64, 18, 90, 91, 2, 'com_modules.module.94', 'K2 Stats (admin)', '{}'),
(65, 1, 131, 132, 1, 'com_k2store', 'com_k2store', '{}'),
(66, 18, 92, 93, 2, 'com_modules.module.95', 'K2 Store Cart', '{}'),
(67, 18, 94, 95, 2, 'com_modules.module.96', 'K2Store Currency', '{}'),
(68, 1, 133, 134, 1, 'com_kunena', 'com_kunena', '{}'),
(69, 16, 40, 41, 2, 'com_menus.menu.2', 'Kunena меню', '{}'),
(70, 18, 96, 97, 2, 'com_modules.module.97', 'Kunena_menu', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_associations`
--

CREATE TABLE IF NOT EXISTS `t50hg_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_banners`
--

CREATE TABLE IF NOT EXISTS `t50hg_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_banner_clients`
--

CREATE TABLE IF NOT EXISTS `t50hg_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `t50hg_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_categories`
--

CREATE TABLE IF NOT EXISTS `t50hg_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_categories`
--

INSERT INTO `t50hg_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 936, '2017-10-21 15:16:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 936, '2017-10-21 15:16:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 936, '2017-10-21 15:16:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 936, '2017-10-21 15:16:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 936, '2017-10-21 15:16:04', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 936, '2017-10-21 15:16:04', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_contact_details`
--

CREATE TABLE IF NOT EXISTS `t50hg_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_content`
--

CREATE TABLE IF NOT EXISTS `t50hg_content` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `t50hg_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `t50hg_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_content_rating`
--

CREATE TABLE IF NOT EXISTS `t50hg_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_content_types`
--

CREATE TABLE IF NOT EXISTS `t50hg_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_content_types`
--

INSERT INTO `t50hg_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `t50hg_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_extensions`
--

CREATE TABLE IF NOT EXISTS `t50hg_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10049 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_extensions`
--

INSERT INTO `t50hg_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_tags":"1","show_info":"1","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_image":"1","show_misc":"1","image":"","allow_vcard":"0","show_articles":"0","articles_display_num":"10","show_profile":"0","show_user_custom_fields":["-1"],"show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_subcat_desc":"1","show_empty_categories":"0","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_subcat_desc_cat":"1","show_empty_categories_cat":"0","show_cat_items_cat":"1","filter_field":"0","show_pagination_limit":"0","show_headings":"1","show_image_heading":"0","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"0","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1","sef_advanced":0,"sef_ids":0,"custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{"show_jed_info":"1","cachetimeout":"6","minimum_stability":"4"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"site":"ru-RU","administrator":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","search_phrases":"1","search_areas":"1","show_date":"1","opensearch_name":"","opensearch_description":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1","upload_limit":"10","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css,scss,sass","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"enabled":"0","show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_autosuggest":"1","show_suggested_query":"1","show_explained_query":"1","show_advanced":"1","show_advanced_tips":"1","expand_advanced":"0","show_date_filters":"0","sort_order":"relevance","sort_direction":"desc","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stem":"1","stemmer":"snowball","enable_logging":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{"updatesource":"default","customurl":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"81e74762b3d5b1884359b86e7994ac6d"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{"name":"mod_sampledata","type":"module","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"MOD_SAMPLEDATA_XML_DESCRIPTION","group":"","filename":"mod_sampledata"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.28","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `t50hg_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2017","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"configuration":{"toolbars":{"2":{"toolbar1":["bold","underline","strikethrough","|","undo","redo","|","bullist","numlist","|","pastetext"]},"1":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","formatselect","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","code","|","hr","table","|","subscript","superscript","|","charmap","pastetext","preview"]},"0":{"menu":["edit","insert","view","format","table","tools"],"toolbar1":["bold","italic","underline","strikethrough","|","alignleft","aligncenter","alignright","alignjustify","|","styleselect","|","formatselect","fontselect","fontsizeselect","|","searchreplace","|","bullist","numlist","|","outdent","indent","|","undo","redo","|","link","unlink","anchor","image","|","code","|","forecolor","backcolor","|","fullscreen","|","table","|","subscript","superscript","|","charmap","emoticons","media","hr","ltr","rtl","|","cut","copy","paste","pastetext","|","visualchars","visualblocks","nonbreaking","blockquote","template","|","print","preview","codesample","insertdatetime","removeformat"]}},"setoptions":{"2":{"access":["1"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"1":{"access":["6","2"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"0","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""},"0":{"access":["7","4","8"],"skin":"0","skin_admin":"0","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet,iframe","valid_elements":"","extended_elements":"","resizing":"1","resize_horizontal":"1","element_path":"1","wordcount":"1","image_advtab":"1","advlist":"1","autosave":"1","contextmenu":"1","custom_plugin":"","custom_button":""}}},"sets_amount":3,"html_height":"550","html_width":"750"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1508930613}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":1508599349,"unique_id":"4ef31680833f1ef316b8af84460d7fccbe339a15","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{"name":"plg_sampledata_blog","type":"plugin","creationDate":"July 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.0","description":"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION","group":"","filename":"blog"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.1","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"October 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.1","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"October 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"October 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.8.1.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 10002, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"name":"Russian","type":"language","creationDate":"2017-05-11","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.7.0.1","description":"Russian language pack (site) for Joomla! 3.7.0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 10002, 'ru-RU', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"name":"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 (ru-RU)","type":"language","creationDate":"2017-05-11","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.7.0.1","description":"Russian language pack (administrator) for Joomla! 3.7.0","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'Russian (ru-RU) Language Pack', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"name":"Russian (ru-RU) Language Pack","type":"package","creationDate":"2017-05-11","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.7.0.1","description":"Joomla 3.7 Russian Language Package","group":"","filename":"pkg_ru-RU"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, 'COM_K2', 'component', 'com_k2', '', 1, 1, 0, 0, '{"name":"COM_K2","type":"component","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"Thank you for installing K2 by JoomlaWorks, the powerful content extension for Joomla","group":"","filename":"k2"}', '{"enable_css":"1","jQueryHandling":"1.9.1","userName":"1","userImage":"1","userDescription":"1","userURL":"1","userEmail":"0","userFeedLink":"1","userFeedIcon":"1","userItemCount":"10","userItemTitle":"1","userItemTitleLinked":"1","userItemDateCreated":"1","userItemImage":"1","userItemIntroText":"1","userItemCategory":"1","userItemTags":"1","userItemCommentsAnchor":"1","userItemReadMore":"1","userItemK2Plugins":"1","tagItemCount":"10","tagItemTitle":"1","tagItemTitleLinked":"1","tagItemDateCreated":"1","tagItemImage":"1","tagItemIntroText":"1","tagItemCategory":"1","tagItemReadMore":"1","tagItemExtraFields":"0","tagOrdering":"","tagFeedLink":"1","tagFeedIcon":"1","genericItemCount":"10","genericItemTitle":"1","genericItemTitleLinked":"1","genericItemDateCreated":"1","genericItemImage":"1","genericItemIntroText":"1","genericItemCategory":"1","genericItemReadMore":"1","genericItemExtraFields":"0","genericFeedLink":"1","genericFeedIcon":"1","feedLimit":"10","feedItemImage":"1","feedImgSize":"S","feedItemIntroText":"1","feedTextWordLimit":"","feedItemFullText":"1","feedItemTags":"0","feedItemVideo":"0","feedItemGallery":"0","feedItemAttachments":"0","feedBogusEmail":"","introTextCleanup":"0","introTextCleanupExcludeTags":"","introTextCleanupTagAttr":"","fullTextCleanup":"0","fullTextCleanupExcludeTags":"","fullTextCleanupTagAttr":"","xssFiltering":"0","linkPopupWidth":"900","linkPopupHeight":"600","imagesQuality":"100","itemImageXS":"100","itemImageS":"200","itemImageM":"400","itemImageL":"600","itemImageXL":"900","itemImageGeneric":"300","catImageWidth":"100","catImageDefault":"1","userImageWidth":"100","userImageDefault":"1","commenterImgWidth":"48","onlineImageEditor":"picozu","imageTimestamp":"0","imageMemoryLimit":"","socialButtonCode":"","twitterUsername":"","facebookMetatags":"1","facebookImage":"Medium","comments":"1","commentsOrdering":"DESC","commentsLimit":"10","commentsFormPosition":"below","commentsPublishing":"0","commentsReporting":"2","commentsReportRecipient":"","inlineCommentsModeration":"0","gravatar":"1","recaptcha":"0","recaptchaForRegistered":"1","commentsFormNotes":"1","commentsFormNotesText":"","frontendEditing":"1","showImageTab":"1","showImageGalleryTab":"1","showVideoTab":"1","showExtraFieldsTab":"1","showAttachmentsTab":"1","showK2Plugins":"1","sideBarDisplayFrontend":"0","mergeEditors":"1","sideBarDisplay":"1","attachmentsFolder":"","hideImportButton":"0","googleSearch":"0","googleSearchContainer":"k2GoogleSearchContainer","K2UserProfile":"1","K2UserGroup":"","redirect":"","adminSearch":"simple","cookieDomain":"","gatherStatistics":"1","taggingSystem":"1","lockTags":"0","showTagFilter":"0","k2TagNorm":"0","k2TagNormCase":"lower","k2TagNormAdditionalReplacements":"","recaptcha_public_key":"","recaptcha_private_key":"","recaptcha_theme":"clean","recaptchaOnRegistration":"0","stopForumSpam":"0","stopForumSpamApiKey":"","profilePageDisplay":"","showItemsCounterAdmin":"1","showChildCatItems":"1","disableCompactOrdering":"0","metaDescLimit":"150","enforceSEFReplacements":"0","SEFReplacements":"","k2Sef":"0","k2SefLabelCat":"content","k2SefLabelTag":"tag","k2SefLabelUser":"author","k2SefLabelSearch":"search","k2SefLabelDate":"date","k2SefLabelItem":"0","k2SefLabelItemCustomPrefix":"","k2SefInsertItemId":"1","k2SefItemIdTitleAliasSep":"dash","k2SefUseItemTitleAlias":"1","k2SefInsertCatId":"1","k2SefCatIdTitleAliasSep":"dash","k2SefUseCatTitleAlias":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, 'plg_finder_k2', 'plugin', 'k2', 'finder', 0, 0, 1, 0, '{"name":"plg_finder_k2","type":"plugin","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"PLG_FINDER_K2_DESCRIPTION","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'Search - K2', 'plugin', 'k2', 'search', 0, 1, 1, 0, '{"name":"Search - K2","type":"plugin","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_THIS_PLUGIN_EXTENDS_THE_DEFAULT_JOOMLA_SEARCH_FUNCTIONALITY_TO_K2_CONTENT","group":"","filename":"k2"}', '{"search_limit":"50","search_tags":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'System - K2', 'plugin', 'k2', 'system', 0, 1, 1, 0, '{"name":"System - K2","type":"plugin","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_THE_K2_SYSTEM_PLUGIN_IS_USED_TO_ASSIST_THE_PROPER_FUNCTIONALITY_OF_THE_K2_COMPONENT_SITE_WIDE_MAKE_SURE_ITS_ALWAYS_PUBLISHED_WHEN_THE_K2_COMPONENT_IS_INSTALLED","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'User - K2', 'plugin', 'k2', 'user', 0, 1, 1, 0, '{"name":"User - K2","type":"plugin","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_A_USER_SYNCHRONIZATION_PLUGIN_FOR_K2","group":"","filename":"k2"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'K2 Comments', 'module', 'mod_k2_comments', '', 0, 1, 0, 0, '{"name":"K2 Comments","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"MOD_K2_COMMENTS_DESCRIPTION","group":"","filename":"mod_k2_comments.j25"}', '{"moduleclass_sfx":"","module_usage":"","":"K2_TOP_COMMENTERS","catfilter":"0","category_id":"","comments_limit":"5","comments_word_limit":"10","commenterName":"1","commentAvatar":"1","commentAvatarWidthSelect":"custom","commentAvatarWidth":"50","commentDate":"1","commentDateFormat":"absolute","commentLink":"1","itemTitle":"1","itemCategory":"1","feed":"1","commenters_limit":"5","commenterNameOrUsername":"1","commenterAvatar":"1","commenterAvatarWidthSelect":"custom","commenterAvatarWidth":"50","commenterLink":"1","commenterCommentsCounter":"1","commenterLatestComment":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'K2 Content', 'module', 'mod_k2_content', '', 0, 1, 0, 0, '{"name":"K2 Content","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_MOD_K2_CONTENT_DESCRIPTION","group":"","filename":"mod_k2_content.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","":"K2_OTHER_OPTIONS","catfilter":"0","category_id":"","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","items":"","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `t50hg_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10010, 0, 'K2 Tools', 'module', 'mod_k2_tools', '', 0, 1, 0, 0, '{"name":"K2 Tools","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_TOOLS","group":"","filename":"mod_k2_tools.j25"}', '{"moduleclass_sfx":"","module_usage":"0","":"K2_CUSTOM_CODE_SETTINGS","archiveItemsCounter":"1","archiveCategory":"","authors_module_category":"","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"","home":"","seperator":"","root_id":"","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"","catfilter":"0","category_id":"","getChildren":"0","liveSearch":"0","text":"","button":"0","imagebutton":"0","button_text":"","searchItemId":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":"0","cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'K2 Users', 'module', 'mod_k2_users', '', 0, 1, 0, 0, '{"name":"K2 Users","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_MOD_K2_USERS_DESCRTIPTION","group":"","filename":"mod_k2_users.j25"}', '{"moduleclass_sfx":"","getTemplate":"Default","source":"0","":"K2_DISPLAY_OPTIONS","filter":"1","K2UserGroup":"","ordering":"1","limit":"4","userIDs":"","userName":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","userDescription":"1","userDescriptionWordLimit":"","userURL":"1","userEmail":"0","userFeed":"1","userItemCount":"1","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'K2 User', 'module', 'mod_k2_user', '', 0, 1, 0, 0, '{"name":"K2 User","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_MOD_K2_USER_DESCRIPTION","group":"","filename":"mod_k2_user.j25"}', '{"moduleclass_sfx":"","pretext":"","":"K2_LOGIN_LOGOUT_REDIRECTION","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 0, 'K2 Quick Icons (admin)', 'module', 'mod_k2_quickicons', '', 1, 1, 2, 0, '{"name":"K2 Quick Icons (admin)","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_QUICKICONS_FOR_USE_IN_THE_JOOMLA_CONTROL_PANEL_DASHBOARD_PAGE","group":"","filename":"mod_k2_quickicons.j25"}', '{"modCSSStyling":"1","modLogo":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 0, 'K2 Stats (admin)', 'module', 'mod_k2_stats', '', 1, 1, 2, 0, '{"name":"K2 Stats (admin)","type":"module","creationDate":"August 18th, 2017","author":"JoomlaWorks","copyright":"Copyright (c) 2006 - 2017 JoomlaWorks Ltd. All rights reserved.","authorEmail":"please-use-the-contact-form@joomlaworks.net","authorUrl":"www.joomlaworks.net","version":"2.8.0","description":"K2_STATS_FOR_USE_IN_THE_K2_DASHBOARD_PAGE","group":"","filename":"mod_k2_stats.j25"}', '{"latestItems":"1","popularItems":"1","mostCommentedItems":"1","latestComments":"1","statistics":"1","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 0, 'Russian (Russia) language pack for K2', 'file', '_install', '', 0, 1, 0, 0, '{"name":"Russian (Russia) language pack for K2","type":"file","creationDate":"August 31, 2015","author":"getk2.org","copyright":"Copyright (c) 2006 - 2011 JoomlaWorks Ltd. All rights reserved.","authorEmail":"nospam@getk2.org","authorUrl":"getk2.org","version":"2.5.0","description":"Russian (Russia) language pack for K2","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 0, 'com_k2store', 'component', 'com_k2store', '', 1, 1, 0, 0, '{"name":"com_k2store","type":"component","creationDate":"May 2017","author":"Ramesh Elamathi","copyright":"Copyright (c) 2017 Weblogicx India Private Ltd. All rights reserved.","authorEmail":"support@k2store.org","authorUrl":"http:\\/\\/k2store.org","version":"3.8.5","description":"\\n  \\t  <h3>K2 Store Core<\\/h3>\\n      The Plugin extends the K2 CCK with an <b>e-commerce feature.<\\/b> The Features include:\\n      <ul>\\n      <li>Fully functional shopping cart <\\/li>\\n      <li>Convert K2 item into products<\\/li>\\n      <li>Product attributes, coupons, discount options<\\/li>\\n      <li>Orders, Shipping and Payment options <\\/li>\\n      <li>Paypal and Authorize.net payment gateways <\\/li>\\n      <li>Guest checkout <\\/li>\\n      <li>Geozone based tax<\\/li>\\n      <li>Simple, Quick and Unobstrusive<\\/li>\\n      <li>and a lot more<\\/li>\\n      <li>read more at <a href=\\"http:\\/\\/k2store.org\\">K2 Store website<\\/a> <\\/li>\\n      <\\/ul>\\n     \\n\\t","group":"","filename":"manifest"}', '{"k2store_enable_css":"1","load_jquery":"1","load_jquery_ui":"3","load_bootstrap":"1","date_format":"Y-m-d H:i:s","show_quicktips":"1","isregister":"0","backupfolderpath":"","catalog_mode":"0","show_thumb_cart":"intro","cartimage_size":"Small","show_thumb_invoice":"0","addtocart_placement":"default","config_tax_default":"billing","show_tax_total":"0","auto_calculate_tax":"1","show_sku_field":"0","show_qty_field":"1","show_price_field":"1","price_display_options":"1","show_price_prefix":"1","show_shipping_address":"1","show_login_form":"1","allow_registration":"1","allow_guest_checkout":"0","allow_attachment_downloads":"0","popup_style":"1","show_customer_note":"1","show_tax_calculator":"1","global_minordervalue":"","show_incomplete_orders":"1","export_custom_fields":"0","show_postpayment_orderlink":"1","emails_defaultemail":"privat_m@ukr.net","emails_defaultname":"Alex","admin_email":"privat_m@ukr.net","minstability":"stable","liveupdate":"stuck=0\\r\\nlastcheck=1508666212\\r\\nupdatedata=\\"Tzo4OiJzdGRDbGFzcyI6ODp7czo5OiJzdXBwb3J0ZWQiO2I6MTtzOjU6InN0dWNrIjtiOjA7czo3OiJ2ZXJzaW9uIjtzOjA6IiI7czo0OiJkYXRlIjtzOjA6IiI7czo5OiJzdGFiaWxpdHkiO3M6MDoiIjtzOjExOiJkb3dubG9hZFVSTCI7czowOiIiO3M6NzoiaW5mb1VSTCI7czowOiIiO3M6MTI6InJlbGVhc2Vub3RlcyI7czowOiIiO30=\\"","show_terms":"1","terms_display_type":"link","show_title":"1","termsid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 0, 'K2 Store Cart', 'module', 'mod_k2store_cart', '', 0, 1, 0, 0, '{"name":"K2 Store Cart","type":"module","creationDate":"Sep 2012","author":"Ramesh Elamathi","copyright":"Copyright (c) 2011 - 2016 Weblogicx India Private Ltd. All rights reserved.","authorEmail":"support@k2store.org","authorUrl":"http:\\/\\/k2store.org","version":"1.0","description":"\\n\\t <p>K2 Store Cart\\n\\t <p> Please contact to us for more info <a href=\\"mailto:support@k2store.org\\">support@k2store.org<\\/a><\\/p>\\t  \\n    \\t\\n\\t\\n\\t","group":"","filename":"mod_k2store_cart"}', '{"moduleclass_sfx":"","link_type":"link","check_empty":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 0, 'K2Store Currency', 'module', 'mod_k2store_currency', '', 0, 1, 0, 0, '{"name":"K2Store Currency","type":"module","creationDate":"Nov 2013","author":"Ramesh Elamathi","copyright":"Copyright (c) 2013 - 2018 Weblogicx India Private Ltd. All rights reserved.","authorEmail":"support@k2store.org","authorUrl":"http:\\/\\/k2store.org","version":"1.0","description":"\\n\\t <p>K2Store shopping cart currency switcher module\\n\\t <p> Please contact to us for more info <a href=\\"mailto:support@k2store.org\\">support@k2store.org<\\/a><\\/p>\\t  \\n    \\t\\n\\t\\n\\t","group":"","filename":"mod_k2store_currency"}', '{"moduleclass_sfx":"","background_color":"#FFFFFF","text_color":"#000000","link_color":"#CCCCCC","link_hover_color":"#000000","active_link_color":"#000000","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 0, 'System - K2Store', 'plugin', 'k2store', 'system', 0, 1, 1, 0, '{"name":"System - K2Store","type":"plugin","creationDate":"Jan 2012","author":"Ramesh Elamathi","copyright":"(C) 2010-2015 Weblogicx India Private Limited","authorEmail":"support@k2store.org","authorUrl":"www.k2store.org","version":"1.0","description":"System plugin that loads the required Javascript and other files required for K2Store.","group":"","filename":"k2store"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 0, 'K2 Plugin - K2 Store', 'plugin', 'k2store', 'k2', 0, 1, 1, 0, '{"name":"K2 Plugin - K2 Store","type":"plugin","creationDate":"August, 2013","author":"RameshElamathi","copyright":"Copyright (c) 2013 - 2018 Weblogicx India Private Ltd. All rights reserved.","authorEmail":"support@k2store.org","authorUrl":"www.k2store.org","version":"3.6.0","description":"<h3>K2 Store<\\/h3>\\n      \\n      The Plugin extends the K2 CCK with an <b>e-commerce feature.<\\/b> The Features include:\\n      \\n      <ul>\\n      <li>provides an ajax shopping cart <\\/li>\\n      <li>Paypal payment gateway integrated <\\/li>\\n      <li>uses the extra fields to get the price information<\\/li>\\n      <li>unobstrusive<\\/li>\\n      <li>convert k2 items into products<\\/li>\\n      <\\/ul>\\n      \\n      Please contact to us for more info <a href=\\"mailto:rameshelamathi@gmail.com\\">rameshelamathi@gmail.com<\\/a>","group":"","filename":"k2store"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 0, 'Offline Payments', 'plugin', 'payment_offline', 'k2store', 0, 1, 1, 0, '{"name":"Offline Payments","type":"plugin","creationDate":"Jan 2012","author":"Weblogicx India","copyright":"2010 Weblogicx India Private Limited","authorEmail":"support@k2store.org","authorUrl":"http:\\/\\/k2store.org","version":"1.0","description":"K2STORE_PLUGINDESC","group":"","filename":"payment_offline"}', '{"display_name":"","surcharge_percent":"","surcharge_fixed":"","enable_cod":"1","enable_check":"1","enable_moneyorder":"1","enable_wire":"1","enable_other":"1","payment_status":"4","geozone_id":"","onselection":"K2STORE_OFFLINE_PAYMENT_MESSAGE","onbeforepayment":"K2STORE_OFFLINE_PAYMENT_PREPARATION_MESSAGE","onafterpayment":"K2STORE_OFFLINE_PAYMENT_SUBMITTED_MESSAGE","articleid":""}', '', '', 936, '2017-10-22 15:45:21', 0, 0),
(10022, 0, 'Bank Transfer', 'plugin', 'payment_banktransfer', 'k2store', 0, 1, 1, 0, '{"name":"Bank Transfer","type":"plugin","creationDate":"November 2013","author":"Weblogicx India","copyright":"2013 Weblogicx India Private Limited","authorEmail":"support@k2store.org","authorUrl":"http:\\/\\/k2store.org","version":"1.0","description":"K2STORE_BANKTRANSFER_PLUGINDESC","group":"","filename":"payment_banktransfer"}', '{"display_name":"","surcharge_percent":"","surcharge_fixed":"","bank_information":"","payment_status":"4","geozone_id":"","onselection":"","onbeforepayment":"","onafterpayment":"","button_text":"K2STORE_PLACE_ORDER","articleid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 0, 'Cash on Delivery', 'plugin', 'payment_cash', 'k2store', 0, 1, 1, 0, '{"name":"Cash on Delivery","type":"plugin","creationDate":"November 2013","author":"Weblogicx India","copyright":"2013 Weblogicx India Private Limited","authorEmail":"support@k2store.org","authorUrl":"http:\\/\\/k2store.org","version":"1.0","description":"K2STORE_CASH_PLUGINDESC","group":"","filename":"payment_cash"}', '{"display_name":"","surcharge_percent":"","surcharge_fixed":"","payment_status":"4","geozone_id":"","onselection":"","onbeforepayment":"","onafterpayment":"","button_text":"K2STORE_PLACE_ORDER","articleid":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 0, 'plg_k2store_shipping_standard', 'plugin', 'shipping_standard', 'k2store', 0, 1, 1, 0, '{"name":"plg_k2store_shipping_standard","type":"plugin","creationDate":"July 2013","author":"K2Store","copyright":"2010 Weblogicx India Private Limited","authorEmail":"support@k2store.org","authorUrl":"http:\\/\\/k2store.org","version":"1.0","description":"K2STORE_PLUGINDESC","group":"","filename":"shipping_standard"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 0, 'Report Itemised', 'plugin', 'report_itemised', 'k2store', 0, 1, 1, 0, '{"name":"Report Itemised","type":"plugin","creationDate":"May 2014","author":"Gokila Priya Bose","copyright":"2014-19 WeblogicxIndia","authorEmail":"supports@k2store.org","authorUrl":"http:\\/\\/www.k2store.org","version":"1.0","description":"PLG_K2STORE_PLUGIN_REPORT_ITEMISED_DESC","group":"","filename":"report_itemised"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 0, 'com_k2store - ru-RU', 'file', 'com_k2store-ru-RU', '', 0, 1, 0, 0, '{"name":"com_k2store - ru-RU","type":"file","creationDate":"12.07.2016","author":"K2Store","copyright":"\\u00a9 2013-2016 - k2store-org. All rights reserved!","authorEmail":"support@k2store.org","authorUrl":"http:\\/\\/k2store.org","version":"2016-07-12-07-54-13","description":"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We''ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to OpenTranslators (http:\\/\\/opentranslators.org) for helping us with this translation!\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 10032, 'plg_system_kunena', 'plugin', 'kunena', 'system', 0, 1, 1, 0, '{"name":"plg_system_kunena","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_SYSTEM_KUNENA_DESC","group":"","filename":"kunena"}', '{"jcontentevents":"0","jcontentevent_target":"body"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 10032, 'plg_quickicon_kunena', 'plugin', 'kunena', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_kunena","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_QUICKICON_KUNENA_DESC","group":"","filename":"kunena"}', '{"context":"mod_quickicon"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10029, 10032, 'Kunena Framework', 'library', 'kunena', '', 0, 1, 1, 0, '{"name":"Kunena Framework","type":"library","creationDate":"2017-09-03","author":"Kunena Team","copyright":"(C) 2008 - 2017 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"Kunena Framework.","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 10032, 'Kunena Media Files', 'file', 'kunena_media', '', 0, 1, 0, 0, '{"name":"Kunena Media Files","type":"file","creationDate":"2017-09-03","author":"Kunena Team","copyright":"(C) 2008 - 2017 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"Kunena media files.","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 10032, 'com_kunena', 'component', 'com_kunena', '', 1, 1, 0, 0, '{"name":"com_kunena","type":"component","creationDate":"2017-09-03","author":"Kunena Team","copyright":"(C) 2008 - 2017 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"COM_KUNENA_XML_DESCRIPTION","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 0, 'Kunena Forum Package', 'package', 'pkg_kunena', '', 0, 1, 1, 0, '{"name":"Kunena Forum Package","type":"package","creationDate":"2017-09-02","author":"Kunena Team","copyright":"(C) 2008 - 2017 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"Kunena Forum Package.","group":"","filename":"pkg_kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 0, 'plg_finder_kunena', 'plugin', 'kunena', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_kunena","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"(C) 2008 - 2017 Kunena Team. All rights reserved.","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_FINDER_KUNENA_DESCRIPTION","group":"","filename":"kunena"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10034, 0, 'plg_kunena_alphauserpoints', 'plugin', 'alphauserpoints', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_alphauserpoints","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_KUNENA_ALPHAUSERPOINTS_DESCRIPTION","group":"","filename":"alphauserpoints"}', '{"activity":"1","avatar":"1","profile":"1","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10035, 0, 'plg_kunena_altauserpoints', 'plugin', 'altauserpoints', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_altauserpoints","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_KUNENA_ALTAUSERPOINTS_DESCRIPTION","group":"","filename":"altauserpoints"}', '{"activity":"1","avatar":"1","profile":"1","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10036, 0, 'plg_kunena_community', 'plugin', 'community', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_community","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_KUNENA_COMMUNITY_DESCRIPTION","group":"","filename":"community"}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10037, 0, 'plg_kunena_comprofiler', 'plugin', 'comprofiler', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_comprofiler","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_KUNENA_COMPROFILER_DESCRIPTION","group":"","filename":"comprofiler"}', '{"access":"1","login":"1","activity":"1","avatar":"1","profile":"1","private":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10038, 0, 'PLG_KUNENA_EASYPROFILE', 'plugin', 'easyprofile', 'kunena', 0, 0, 1, 0, '{"name":"PLG_KUNENA_EASYPROFILE","type":"plugin","creationDate":"2017-09-03","author":"Onlinecommunityhub","copyright":"https:\\/\\/onlinecommunityhub.nl","authorEmail":"info@onlinecommunityhub.nl","authorUrl":"https:\\/\\/onlinecommunityhub.nl","version":"5.0.11","description":"PLG_KUNENA_EASYPROFILE_DESCRIPTION","group":"","filename":"easyprofile"}', '{"avatar":"1","guestavatar":"easyprofile","profile":"1","userlist":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10039, 0, 'plg_kunena_easysocial', 'plugin', 'easysocial', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_easysocial","type":"plugin","creationDate":"2017-09-03","author":"StackIdeas","copyright":"https:\\/\\/stackideas.com","authorEmail":"support@stackideas.com","authorUrl":"https:\\/\\/stackideas.com","version":"5.0.11","description":"PLG_KUNENA_EASYSOCIAL_DESCRIPTION","group":"","filename":"easysocial"}', '{"login":"1","activity":"1","avatar":"1","profile":"1","private":"1","activity_badge_limit":"0","activity_points_limit":"0"}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(10040, 0, 'plg_kunena_gravatar', 'plugin', 'gravatar', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_gravatar","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_KUNENA_GRAVATAR_DESCRIPTION","group":"","filename":"gravatar"}', '{"avatar":"1"}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(10041, 0, 'plg_kunena_uddeim', 'plugin', 'uddeim', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_uddeim","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_KUNENA_UDDEIM_DESCRIPTION","group":"","filename":"uddeim"}', '{"private":"1"}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10042, 0, 'plg_kunena_kunena', 'plugin', 'kunena', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_kunena","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_KUNENA_KUNENA_DESCRIPTION","group":"","filename":"kunena"}', '{"avatar":"1","profile":"1"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(10043, 0, 'plg_kunena_joomla', 'plugin', 'joomla', 'kunena', 0, 1, 1, 0, '{"name":"plg_kunena_joomla","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"www.kunena.org","authorEmail":"Kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_KUNENA_JOOMLA_25_30_DESCRIPTION","group":"","filename":"joomla"}', '{"access":"1","login":"1"}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10044, 0, 'plg_kunena_finder', 'plugin', 'finder', 'kunena', 0, 0, 1, 0, '{"name":"plg_kunena_finder","type":"plugin","creationDate":"2017-09-03","author":"Kunena Team","copyright":"(C) 2008 - 2017 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"PLG_KUNENA_FINDER_DESCRIPTION","group":"","filename":"finder"}', '{}', '', '', 0, '0000-00-00 00:00:00', 11, 0),
(10045, 10047, 'Kunena Language - English', 'file', 'com_kunena_en-GB', '', 0, 1, 0, 0, '{"name":"Kunena Language - English","type":"file","creationDate":"2017-09-03","author":"Kunena Team","copyright":"(C) 2008 - 2017 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"English language file for Kunena Forum Component","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 10047, 'Kunena Language - Russian (Russia)', 'file', 'com_kunena_ru-RU', '', 0, 1, 0, 0, '{"name":"Kunena Language - Russian (Russia)","type":"file","creationDate":"2017-09-03","author":"Kunena Team","copyright":"(C) 2008 - 2017 Kunena Team. All rights reserved.","authorEmail":"translations@kunena.org","authorUrl":"https:\\/\\/www.transifex.com\\/projects\\/p\\/Kunena\\/team\\/ru_RU\\/","version":"5.0.11","description":"Russian (Russia) language file for Kunena Forum Component","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 0, 'Kunena Language Pack', 'package', 'pkg_kunena_languages', '', 0, 1, 1, 0, '{"name":"Kunena Language Pack","type":"package","creationDate":"2017-09-03","author":"Kunena Team","copyright":"(C) 2008 - 2017 Kunena Team. All rights reserved.","authorEmail":"kunena@kunena.org","authorUrl":"https:\\/\\/www.kunena.org","version":"5.0.11","description":"Language pack for Kunena forum component.","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 0, 'System - Google Analytics', 'plugin', 'GoogleAnalytics', 'system', 0, 1, 1, 0, '{"name":"System - Google Analytics","type":"plugin","creationDate":"19th April 2010","author":"Peter Bui","copyright":"Copyright (c) 2015 PB Web Development. All rights reserved.","authorEmail":"peter@pbwebdev.com.au","authorUrl":"http:\\/\\/pbwebdev.com","version":"4.6.1","description":"\\n        \\n        <p style=\\"text-align:left\\">\\n            New and update rewrite of the popular Google Anaytics for Joomla FREE. Asynchronous code for Google Analytics is now\\n            old and has been superseeded by Google''s new \\"UNIVERSAL ANALYTICS\\".\\n        <\\/p>\\n        <p style=\\"text-align:left\\">\\n            This plugin will allow you to choose between the two options of the new universal analytics code or the old\\n            asynchronous version of the analytics code.\\n        <\\/p>\\n\\n        <h2 style=\\"text-align:left\\">Upgrade to PRO<\\/h2>\\n\\n        <p style=\\"text-align:left\\">\\n        You can also upgrade to <a href=\\"http:\\/\\/nicheextensions.com\\/extensions\\/google-analytics\\" taget=\\"_blank\\"><strong>Google Analytics PRO<\\/strong><\\/a> for more features and fine tuning of your analytics.\\n        <\\/p>\\n\\n        <h2 style=\\"text-align:left\\">Documentation<\\/h2>\\n        <p style=\\"text-align:left\\">\\n            Read the documentation at: <a href=\\"http:\\/\\/nicheextensions.com\\/documentation\\/3-google-analytics-for-joomla\\" target=\\"_blank\\">http:\\/\\/nicheextensions.com\\/documentation\\/3-google-analytics-for-joomla<\\/a> for more\\n            information.\\n        <\\/p>\\n\\n        <h2 style=\\"text-align:left\\">An Overview<\\/h2>\\n\\n        <iframe width=\\"100%\\" height=\\"auto\\" src=\\"https:\\/\\/www.youtube.com\\/embed\\/58QMSW5bbCs\\" frameborder=\\"0\\" allowfullscreen><\\/iframe>\\n\\n        <h2 style=\\"text-align:left\\">FAQs<\\/h2>\\n        <h3 style=\\"text-align:left\\">Why doesn''t Google say it can''t detect my analytics code when clearly I can see it on the website?<\\/h3>\\n        <p style=\\"text-align:left\\">\\n        This usually happens when the information is sent to Google before the plugin was enabled and is being caches. Check back in 12 hours and make sure that the information still isn''t coming through. Make sure you also check the ID for any spaces before or after the ID as this can also cause issues.<\\/p>\\n        <h3 style=\\"text-align:left\\">How can I be certain that the information is being passed through?<\\/h3>\\n        <p style=\\"text-align:left\\">\\n        You can also use the Google analytics Real Time tracking to see if the data is coming in or not. If you see active users on the site with the real time data then the information is coming in to Google Analytics from your website.<\\/p>\\n        \\n    ","group":"","filename":"GoogleAnalytics"}', '{"type":"universal","code":"UA-XXXXX-X","domain":"auto","verify":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_fields`
--

CREATE TABLE IF NOT EXISTS `t50hg_fields` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_fields_categories`
--

CREATE TABLE IF NOT EXISTS `t50hg_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_fields_groups`
--

CREATE TABLE IF NOT EXISTS `t50hg_fields_groups` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_fields_values`
--

CREATE TABLE IF NOT EXISTS `t50hg_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_filters`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `t50hg_finder_taxonomy`
--

INSERT INTO `t50hg_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_terms`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `t50hg_finder_terms_common`
--

INSERT INTO `t50hg_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_finder_types`
--

CREATE TABLE IF NOT EXISTS `t50hg_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `t50hg_finder_types`
--

INSERT INTO `t50hg_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Tag', ''),
(2, 'Category', ''),
(3, 'Contact', ''),
(4, 'Article', ''),
(5, 'News Feed', '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_address`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `zone_id` varchar(255) NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `phone_1` varchar(255) NOT NULL,
  `phone_2` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `tax_number` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_address`
--

INSERT INTO `t50hg_k2store_address` (`id`, `user_id`, `first_name`, `last_name`, `email`, `address_1`, `address_2`, `city`, `zip`, `zone_id`, `country_id`, `phone_1`, `phone_2`, `fax`, `type`, `company`, `tax_number`) VALUES
(1, 936, 'Алекс', 'Мер', '', 'ул. Продольная', '', 'Харьков', '61085', '3487', '220', '', '+380637128486', '', 'billing', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_countries`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_isocode_2` varchar(5) NOT NULL,
  `country_isocode_3` varchar(5) NOT NULL,
  `state` tinyint(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_countries`
--

INSERT INTO `t50hg_k2store_countries` (`country_id`, `country_name`, `country_isocode_2`, `country_isocode_3`, `state`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 1),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 1),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'North Korea', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 1),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 1),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1),
(240, 'Serbia', 'RS', 'SRB', 1),
(241, 'Montenegro', 'ME', 'MNE', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_coupons`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_coupons` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `state` tinyint(2) NOT NULL,
  `value` int(11) NOT NULL,
  `value_type` char(1) NOT NULL,
  `max_uses` int(11) NOT NULL,
  `logged` int(11) NOT NULL,
  `max_customer_uses` int(11) NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `products` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_currency`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_currency` (
  `currency_id` int(11) NOT NULL,
  `currency_title` varchar(32) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_position` varchar(12) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `currency_num_decimals` int(4) NOT NULL,
  `currency_decimal` varchar(12) NOT NULL,
  `currency_thousands` char(1) NOT NULL,
  `currency_value` float(15,8) NOT NULL,
  `state` smallint(1) NOT NULL,
  `currency_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_currency`
--

INSERT INTO `t50hg_k2store_currency` (`currency_id`, `currency_title`, `currency_code`, `currency_position`, `currency_symbol`, `currency_num_decimals`, `currency_decimal`, `currency_thousands`, `currency_value`, `state`, `currency_modified`) VALUES
(1, 'UAH', 'UAH', 'pre', '₴', 2, '.', ',', 1.00000000, 1, '2017-10-22 09:56:52');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_field`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_field` (
  `field_id` smallint(5) unsigned NOT NULL,
  `field_table` varchar(50) DEFAULT NULL,
  `field_name` varchar(250) NOT NULL,
  `field_namekey` varchar(50) NOT NULL,
  `field_type` varchar(50) DEFAULT NULL,
  `field_value` longtext NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `field_options` text,
  `field_core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field_required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field_default` varchar(250) DEFAULT NULL,
  `field_access` varchar(255) NOT NULL DEFAULT 'all',
  `field_categories` varchar(255) NOT NULL DEFAULT 'all',
  `field_with_sub_categories` tinyint(1) NOT NULL DEFAULT '0',
  `field_frontend` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field_backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `field_display` text NOT NULL,
  `field_display_billing` smallint(5) NOT NULL DEFAULT '0',
  `field_display_register` smallint(5) NOT NULL DEFAULT '0',
  `field_display_shipping` smallint(5) NOT NULL DEFAULT '0',
  `field_display_guest` smallint(5) NOT NULL DEFAULT '0',
  `field_display_guest_shipping` smallint(5) NOT NULL DEFAULT '0',
  `field_display_payment` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_field`
--

INSERT INTO `t50hg_k2store_field` (`field_id`, `field_table`, `field_name`, `field_namekey`, `field_type`, `field_value`, `published`, `ordering`, `field_options`, `field_core`, `field_required`, `field_default`, `field_access`, `field_categories`, `field_with_sub_categories`, `field_frontend`, `field_backend`, `field_display`, `field_display_billing`, `field_display_register`, `field_display_shipping`, `field_display_guest`, `field_display_guest_shipping`, `field_display_payment`) VALUES
(1, 'address', 'First Name', 'first_name', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:22:"This field is required";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 1, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(2, 'address', 'Lastname', 'last_name', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:22:"This field is required";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 1, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(3, 'address', 'Email', 'email', 'email', '', 1, 99, 'a:9:{s:12:"errormessage";s:36:"K2STORE_VALIDATION_ENTER_VALID_EMAIL";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 1, '', 'all', 'all', 0, 0, 1, '', 0, 1, 0, 1, 0, 0),
(4, 'address', 'Address Line 1', 'address_1', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:22:"This field is required";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 1, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(5, 'address', 'Address Line 2', 'address_2', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:0:"";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 0, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(6, 'address', 'City', 'city', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:22:"This field is required";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 1, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(7, 'address', 'Postcode', 'zip', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:22:"This field is required";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 1, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(8, 'address', 'Telephone', 'phone_1', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:0:"";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 0, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(9, 'address', 'Mobile', 'phone_2', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:22:"This field is required";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 1, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(10, 'address', 'Company Name', 'company', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:0:"";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 0, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(11, 'address', 'VAT/Tax Number', 'tax_number', 'text', '', 1, 99, 'a:9:{s:12:"errormessage";s:0:"";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 0, NULL, 'all', 'all', 0, 0, 1, '', 1, 1, 0, 1, 0, 0),
(12, 'address', 'Country', 'country_id', 'zone', '', 1, 99, 'a:9:{s:12:"errormessage";s:22:"This field is required";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:7:"country";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 1, '222', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0),
(13, 'address', 'Zone/State', 'zone_id', 'zone', '', 1, 99, 'a:9:{s:12:"errormessage";s:0:"";s:9:"filtering";s:1:"1";s:9:"maxlength";s:1:"0";s:4:"size";s:0:"";s:4:"rows";s:0:"";s:4:"cols";s:0:"";s:9:"zone_type";s:4:"zone";s:6:"format";s:0:"";s:8:"readonly";s:1:"0";}', 1, 1, '0', 'all', 'all', 0, 0, 1, '', 1, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_geozonerules`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_geozonerules` (
  `geozonerule_id` int(11) NOT NULL,
  `geozone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_geozonerules`
--

INSERT INTO `t50hg_k2store_geozonerules` (`geozonerule_id`, `geozone_id`, `country_id`, `zone_id`, `ordering`) VALUES
(1, 1, 220, 3487, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_geozones`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_geozones` (
  `geozone_id` int(11) NOT NULL,
  `geozone_name` varchar(255) NOT NULL,
  `state` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_geozones`
--

INSERT INTO `t50hg_k2store_geozones` (`geozone_id`, `geozone_name`, `state`, `ordering`) VALUES
(1, 'укры', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_groupprices`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_groupprices` (
  `groupprice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `customer_group_price` decimal(15,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_lengths`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_lengths` (
  `length_class_id` int(11) NOT NULL,
  `length_title` varchar(255) NOT NULL,
  `length_unit` varchar(4) NOT NULL,
  `length_value` decimal(15,8) NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_lengths`
--

INSERT INTO `t50hg_k2store_lengths` (`length_class_id`, `length_title`, `length_unit`, `length_value`, `state`) VALUES
(1, 'Centimetre', 'cm', '1.00000000', 1),
(2, 'Inch', 'in', '0.39370000', -2),
(3, 'Millimetre', 'mm', '10.00000000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_options`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_options` (
  `option_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `option_unique_name` varchar(255) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_options`
--

INSERT INTO `t50hg_k2store_options` (`option_id`, `type`, `option_unique_name`, `option_name`, `ordering`, `state`) VALUES
(1, 'select', 'material', 'Материал', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_optionvalues`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_optionvalues` (
  `optionvalue_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `optionvalue_name` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_optionvalues`
--

INSERT INTO `t50hg_k2store_optionvalues` (`optionvalue_id`, `option_id`, `optionvalue_name`, `ordering`) VALUES
(1, 1, 'Материал', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_orderinfo`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_orderinfo` (
  `orderinfo_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `orderpayment_id` int(11) NOT NULL COMMENT 'Ref FK to the id of the order table',
  `billing_company` varchar(64) DEFAULT NULL,
  `billing_last_name` varchar(32) DEFAULT NULL,
  `billing_first_name` varchar(32) DEFAULT NULL,
  `billing_middle_name` varchar(32) DEFAULT NULL,
  `billing_phone_1` varchar(32) DEFAULT NULL,
  `billing_phone_2` varchar(32) DEFAULT NULL,
  `billing_fax` varchar(32) DEFAULT NULL,
  `billing_address_1` varchar(64) NOT NULL DEFAULT '',
  `billing_address_2` varchar(64) DEFAULT NULL,
  `billing_city` varchar(32) NOT NULL DEFAULT '',
  `billing_zone_name` varchar(32) NOT NULL DEFAULT '',
  `billing_country_name` varchar(64) NOT NULL DEFAULT '',
  `billing_zone_id` int(11) NOT NULL DEFAULT '0',
  `billing_country_id` int(11) NOT NULL DEFAULT '0',
  `billing_zip` varchar(32) NOT NULL DEFAULT '',
  `billing_tax_number` varchar(32) DEFAULT NULL,
  `shipping_company` varchar(64) DEFAULT NULL,
  `shipping_last_name` varchar(32) DEFAULT NULL,
  `shipping_first_name` varchar(32) DEFAULT NULL,
  `shipping_middle_name` varchar(32) DEFAULT NULL,
  `shipping_phone_1` varchar(32) DEFAULT NULL,
  `shipping_phone_2` varchar(32) DEFAULT NULL,
  `shipping_fax` varchar(32) DEFAULT NULL,
  `shipping_address_1` varchar(64) NOT NULL DEFAULT '',
  `shipping_address_2` varchar(64) DEFAULT NULL,
  `shipping_city` varchar(32) NOT NULL DEFAULT '',
  `shipping_zip` varchar(255) NOT NULL,
  `shipping_zone_name` varchar(32) NOT NULL DEFAULT '',
  `shipping_country_name` varchar(64) NOT NULL DEFAULT '',
  `shipping_zone_id` int(11) NOT NULL DEFAULT '0',
  `shipping_country_id` int(11) NOT NULL DEFAULT '0',
  `shipping_id` varchar(32) NOT NULL DEFAULT '',
  `shipping_tax_number` varchar(32) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `all_billing` longtext NOT NULL,
  `all_shipping` longtext NOT NULL,
  `all_payment` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_orderinfo`
--

INSERT INTO `t50hg_k2store_orderinfo` (`orderinfo_id`, `order_id`, `orderpayment_id`, `billing_company`, `billing_last_name`, `billing_first_name`, `billing_middle_name`, `billing_phone_1`, `billing_phone_2`, `billing_fax`, `billing_address_1`, `billing_address_2`, `billing_city`, `billing_zone_name`, `billing_country_name`, `billing_zone_id`, `billing_country_id`, `billing_zip`, `billing_tax_number`, `shipping_company`, `shipping_last_name`, `shipping_first_name`, `shipping_middle_name`, `shipping_phone_1`, `shipping_phone_2`, `shipping_fax`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_zip`, `shipping_zone_name`, `shipping_country_name`, `shipping_zone_id`, `shipping_country_id`, `shipping_id`, `shipping_tax_number`, `user_email`, `user_id`, `all_billing`, `all_shipping`, `all_payment`) VALUES
(2, 1508669012, 2, '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '61085', '', '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', '61085', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '1', '', 's211211@ukr.net', 936, '{}', '{}', '{}'),
(3, 1508669124, 3, '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '61085', '', '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', '61085', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '1', '', 's211211@ukr.net', 936, '{}', '{}', '{}'),
(4, 1508669408, 4, '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '61085', '', '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', '61085', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '1', '', 's211211@ukr.net', 936, '{}', '{}', '{}'),
(5, 1508669613, 5, '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '61085', '', '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', '61085', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '1', '', 'privat_m@ukr.net', 936, '{}', '{}', '{}'),
(6, 1508669856, 6, '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '61085', '', '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', '61085', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '1', '', 'privat_m@ukr.net', 936, '{}', '{}', '{}'),
(7, 1508669955, 7, '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '61085', '', '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', '61085', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '1', '', 'privat_m@ukr.net', 936, '{}', '{}', '{}'),
(8, 1508670538, 1, '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '61085', '', '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', '61085', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '1', '', 'privat_m@ukr.net', 936, '{}', '{}', '{}'),
(9, 1508671892, 2, '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '61085', '', '', 'Мер', 'Алекс', NULL, '', '+380637128486', '', 'ул. Продольная', '', 'Харьков', '61085', 'Kharkiv Kherson', 'Ukraine', 3487, 220, '1', '', 's211211@ukr.net', 936, '{}', '{}', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_orderitemattributes`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_orderitemattributes` (
  `orderitemattribute_id` int(11) NOT NULL,
  `orderitem_id` int(11) NOT NULL,
  `productattributeoption_id` int(11) NOT NULL,
  `productattributeoptionvalue_id` int(11) NOT NULL,
  `orderitemattribute_name` varchar(255) NOT NULL,
  `orderitemattribute_value` varchar(255) NOT NULL,
  `orderitemattribute_price` decimal(12,5) NOT NULL,
  `orderitemattribute_code` varchar(255) NOT NULL,
  `orderitemattribute_prefix` varchar(1) NOT NULL,
  `orderitemattribute_type` varchar(255) NOT NULL,
  `orderitemattribute_short_desc` text NOT NULL,
  `orderitemattribute_long_desc` text NOT NULL,
  `orderitemattribute_ref` text NOT NULL,
  `orderitemattribute_manage_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_orderitems`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_orderitems` (
  `orderitem_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `orderitem_attributes` text NOT NULL COMMENT 'A CSV of productattributeoption_id values, always in numerical order',
  `orderitem_attribute_names` text NOT NULL COMMENT 'A CSV of productattributeoption_name values',
  `orderitem_sku` varchar(64) NOT NULL DEFAULT '',
  `orderitem_name` varchar(64) NOT NULL DEFAULT '',
  `orderitem_quantity` int(11) DEFAULT NULL,
  `orderitem_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT 'Base price of the item',
  `orderitem_attributes_price` varchar(64) NOT NULL COMMENT 'The increase or decrease in price per item as a result of attributes. Includes + or - sign',
  `orderitem_discount` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT 'Coupon discount applied to each item',
  `orderitem_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000' COMMENT 'Price of item inclusive of quantity, attributes, tax, and shipping',
  `orderitem_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `orderitem_shipping` decimal(12,5) NOT NULL DEFAULT '0.00000',
  `orderitem_shipping_tax` decimal(12,5) NOT NULL DEFAULT '0.00000',
  `orderitem_status` char(1) DEFAULT NULL,
  `modified_date` datetime NOT NULL COMMENT 'GMT'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_orderitems`
--

INSERT INTO `t50hg_k2store_orderitems` (`orderitem_id`, `order_id`, `product_id`, `orderitem_attributes`, `orderitem_attribute_names`, `orderitem_sku`, `orderitem_name`, `orderitem_quantity`, `orderitem_price`, `orderitem_attributes_price`, `orderitem_discount`, `orderitem_final_price`, `orderitem_tax`, `orderitem_shipping`, `orderitem_shipping_tax`, `orderitem_status`, `modified_date`) VALUES
(1, 1508670538, 1, '{}', '{}', '2342', 'Кроссовки 1', 1, '450.00000', '0', '0.00000', '450.00000', '0.00000', '0.00000', '0.00000', NULL, '2017-10-22 11:08:58'),
(2, 1508670538, 2, '{}', '{}', '262356', 'Кроссовки 2', 2, '680.00000', '0', '0.00000', '1360.00000', '0.00000', '0.00000', '0.00000', NULL, '2017-10-22 11:08:58'),
(3, 1508671892, 5, '{}', '{}', '5', 'Тренажор 3', 1, '1200.00000', '0', '0.00000', '1200.00000', '0.00000', '0.00000', '0.00000', NULL, '2017-10-22 11:31:32');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_orders`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL DEFAULT '',
  `invoice_prefix` varchar(255) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `orderpayment_type` varchar(255) NOT NULL DEFAULT '' COMMENT 'Element name of payment plugin',
  `orderpayment_amount` decimal(15,5) DEFAULT '0.00000',
  `orderpayment_tax` decimal(15,5) DEFAULT '0.00000',
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_shipping` decimal(10,2) NOT NULL,
  `order_shipping_tax` decimal(10,2) NOT NULL,
  `order_discount` decimal(10,2) NOT NULL,
  `order_surcharge` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(5) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL,
  `transaction_id` varchar(255) NOT NULL DEFAULT '',
  `transaction_status` varchar(255) NOT NULL DEFAULT '',
  `transaction_details` text NOT NULL,
  `created_date` datetime NOT NULL COMMENT 'GMT',
  `order_state` varchar(255) NOT NULL,
  `order_state_id` int(11) NOT NULL,
  `paypal_status` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `customer_note` text NOT NULL,
  `customer_language` varchar(255) NOT NULL,
  `stock_adjusted` smallint(5) NOT NULL DEFAULT '0',
  `customer_group` varchar(255) NOT NULL,
  `is_shippable` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_orders`
--

INSERT INTO `t50hg_k2store_orders` (`id`, `order_id`, `invoice_prefix`, `invoice_number`, `shipping_method_id`, `user_id`, `user_email`, `token`, `orderpayment_type`, `orderpayment_amount`, `orderpayment_tax`, `order_total`, `order_subtotal`, `order_tax`, `order_shipping`, `order_shipping_tax`, `order_discount`, `order_surcharge`, `currency_id`, `currency_code`, `currency_value`, `transaction_id`, `transaction_status`, `transaction_details`, `created_date`, `order_state`, `order_state_id`, `paypal_status`, `ip_address`, `customer_note`, `customer_language`, `stock_adjusted`, `customer_group`, `is_shippable`) VALUES
(1, '1508670538', '', 0, 0, 936, 'privat_m@ukr.net', 'ff040d93666ac1516424eae254b8d67d', 'payment_cash', '1810.00000', '0.00000', '1810.00000', '1810.00000', '0.00', '0.00', '0.00', '0.00', '0.00000000', 1, 'UAH', '1.00000000', '', 'В ожидании', '', '2017-10-22 11:08:58', 'В ожидании', 4, '', '127.0.0.1', '', 'ru-RU', 0, '1,8', '1'),
(2, '1508671892', '', 0, 0, 936, 's211211@ukr.net', 'b0e78d4b96041a6949247b31fae6fd9d', 'payment_offline', '1200.00000', '0.00000', '1200.00000', '1200.00000', '0.00', '0.00', '0.00', '0.00', '0.00000000', 1, 'UAH', '1.00000000', '', 'В ожидании', 'Наложенный платеж', '2017-10-22 11:31:32', 'K2STORE_CONFIRMED', 1, '', '127.0.0.1', '', 'ru-RU', 1, '1,8', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_ordershippings`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_ordershippings` (
  `ordershipping_id` int(11) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `ordershipping_type` varchar(255) NOT NULL DEFAULT '' COMMENT 'Element name of shipping plugin',
  `ordershipping_price` decimal(15,5) DEFAULT '0.00000',
  `ordershipping_name` varchar(255) NOT NULL DEFAULT '',
  `ordershipping_code` varchar(255) NOT NULL DEFAULT '',
  `ordershipping_tax` decimal(15,5) DEFAULT '0.00000',
  `ordershipping_extra` decimal(15,5) DEFAULT '0.00000',
  `ordershipping_tracking_id` mediumtext NOT NULL,
  `created_date` datetime NOT NULL COMMENT 'GMT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_orderstatuses`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_orderstatuses` (
  `orderstatus_id` int(11) NOT NULL,
  `orderstatus_name` varchar(32) NOT NULL,
  `orderstatus_cssclass` text NOT NULL,
  `orderstatus_core` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_orderstatuses`
--

INSERT INTO `t50hg_k2store_orderstatuses` (`orderstatus_id`, `orderstatus_name`, `orderstatus_cssclass`, `orderstatus_core`) VALUES
(1, 'K2STORE_CONFIRMED', 'label-success', 1),
(2, 'K2STORE_PROCESSED', 'label-info', 1),
(3, 'K2STORE_FAILED', 'label-important', 1),
(4, 'K2STORE_PENDING', 'label-warning', 1),
(5, 'K2STORE_INCOMPLETE', 'label-important', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_ordertax`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_ordertax` (
  `ordertax_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `ordertax_title` varchar(255) NOT NULL,
  `ordertax_percent` decimal(12,4) NOT NULL,
  `ordertax_amount` decimal(12,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_order_coupons`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_order_coupons` (
  `order_coupon_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `orderpayment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(11,5) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_productprices`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_productprices` (
  `productprice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity_start` int(11) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `quantity_end` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `state` int(11) NOT NULL COMMENT 'publish or unpublish',
  `price` decimal(12,3) NOT NULL,
  `pricetype` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_productquantities`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_productquantities` (
  `productquantity_id` int(11) NOT NULL,
  `product_attributes` text NOT NULL COMMENT 'A CSV of productattributeoption_id values, always in numerical order',
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_products`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_products` (
  `p_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT 'K2 item id',
  `item_price` decimal(15,5) NOT NULL,
  `special_price` decimal(15,5) NOT NULL,
  `item_tax` int(11) NOT NULL,
  `item_shipping` int(11) NOT NULL,
  `item_enabled` int(11) NOT NULL,
  `item_minimum` int(11) NOT NULL DEFAULT '1',
  `item_sku` varchar(255) NOT NULL,
  `item_length` decimal(15,8) NOT NULL,
  `item_width` decimal(15,8) NOT NULL,
  `item_height` decimal(15,8) NOT NULL,
  `item_length_class_id` int(11) NOT NULL,
  `item_weight` decimal(15,8) NOT NULL,
  `item_weight_class_id` int(11) NOT NULL,
  `manage_stock` int(11) NOT NULL,
  `min_out_qty` decimal(12,4) NOT NULL,
  `use_store_config_min_out_qty` smallint(5) NOT NULL,
  `min_sale_qty` decimal(12,4) NOT NULL,
  `use_store_config_min_sale_qty` smallint(5) NOT NULL,
  `max_sale_qty` decimal(12,4) NOT NULL,
  `use_store_config_max_sale_qty` smallint(5) NOT NULL,
  `notify_qty` decimal(12,4) NOT NULL,
  `use_store_config_notify_qty` smallint(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_products`
--

INSERT INTO `t50hg_k2store_products` (`p_id`, `product_id`, `item_price`, `special_price`, `item_tax`, `item_shipping`, `item_enabled`, `item_minimum`, `item_sku`, `item_length`, `item_width`, `item_height`, `item_length_class_id`, `item_weight`, `item_weight_class_id`, `manage_stock`, `min_out_qty`, `use_store_config_min_out_qty`, `min_sale_qty`, `use_store_config_min_sale_qty`, `max_sale_qty`, `use_store_config_max_sale_qty`, `notify_qty`, `use_store_config_notify_qty`) VALUES
(1, 5, '1200.00000', '0.00000', 0, 1, 1, 1, '5', '100.00000000', '200.00000000', '500.00000000', 1, '100.00000000', 1, 0, '0.0000', 0, '0.0000', 0, '0.0000', 0, '0.0000', 0),
(2, 1, '500.00000', '450.00000', 1, 1, 1, 1, '2342', '20.00000000', '10.00000000', '0.00000000', 1, '2.00000000', 1, 0, '0.0000', 0, '0.0000', 0, '0.0000', 0, '0.0000', 0),
(3, 2, '700.00000', '680.00000', 1, 1, 1, 1, '262356', '25.00000000', '8.00000000', '0.00000000', 1, '1.50000000', 1, 0, '0.0000', 0, '0.0000', 0, '0.0000', 0, '0.0000', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_product_options`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_product_options` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `manage_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_product_optionvalues`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_product_optionvalues` (
  `product_optionvalue_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `optionvalue_id` int(11) NOT NULL,
  `product_optionvalue_price` decimal(11,3) NOT NULL,
  `product_optionvalue_prefix` varchar(255) NOT NULL,
  `product_optionvalue_weight` decimal(15,8) NOT NULL,
  `product_optionvalue_weight_prefix` varchar(1) NOT NULL,
  `product_optionvalue_sku` varchar(255) NOT NULL,
  `product_optionvalue_default` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `pov_short_desc` text NOT NULL,
  `pov_long_desc` text NOT NULL,
  `pov_ref` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_shippingmethods`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_shippingmethods` (
  `shipping_method_id` int(11) NOT NULL,
  `shipping_method_name` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `shipping_method_type` tinyint(1) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `address_override` varchar(255) NOT NULL,
  `subtotal_minimum` decimal(15,3) NOT NULL,
  `subtotal_maximum` decimal(15,3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_shippingmethods`
--

INSERT INTO `t50hg_k2store_shippingmethods` (`shipping_method_id`, `shipping_method_name`, `published`, `shipping_method_type`, `tax_class_id`, `address_override`, `subtotal_minimum`, `subtotal_maximum`) VALUES
(1, 'Курьером по Харькову', 1, 2, 1, 'store', '1000.000', '-1.000'),
(2, 'Доставка по области курьером', 1, 2, 2, 'no', '1500.000', '-1.000'),
(3, 'Новая почта', 1, 6, 3, 'store', '0.000', '-1.000');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_shippingrates`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_shippingrates` (
  `shipping_rate_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `geozone_id` int(11) NOT NULL,
  `shipping_rate_price` decimal(12,5) NOT NULL,
  `shipping_rate_weight_start` decimal(11,3) NOT NULL,
  `shipping_rate_weight_end` decimal(11,3) NOT NULL,
  `shipping_rate_handling` decimal(12,5) NOT NULL,
  `created_date` datetime NOT NULL COMMENT 'GMT Only',
  `modified_date` datetime NOT NULL COMMENT 'GMT Only'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_storeprofiles`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_storeprofiles` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `store_desc` varchar(255) NOT NULL,
  `store_address_1` varchar(255) NOT NULL,
  `store_address_2` varchar(255) NOT NULL,
  `store_city` varchar(255) NOT NULL,
  `store_zip` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `zone_name` varchar(255) NOT NULL,
  `config_currency` varchar(255) NOT NULL,
  `config_currency_auto` tinyint(1) NOT NULL,
  `config_length_class_id` int(11) NOT NULL,
  `config_weight_class_id` int(11) NOT NULL,
  `config_default_category` int(11) NOT NULL,
  `config_continue_shopping_url` varchar(255) NOT NULL,
  `state` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `store_min_out_qty` text NOT NULL,
  `store_min_sale_qty` text NOT NULL,
  `store_max_sale_qty` text NOT NULL,
  `store_notify_qty` text NOT NULL,
  `store_register_layout` longtext NOT NULL,
  `store_billing_layout` longtext NOT NULL,
  `store_shipping_layout` longtext NOT NULL,
  `store_guest_layout` longtext NOT NULL,
  `store_guest_shipping_layout` longtext NOT NULL,
  `store_payment_layout` longtext NOT NULL,
  `store_invoice_prefix` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_storeprofiles`
--

INSERT INTO `t50hg_k2store_storeprofiles` (`store_id`, `store_name`, `store_desc`, `store_address_1`, `store_address_2`, `store_city`, `store_zip`, `country_id`, `zone_id`, `country_name`, `zone_name`, `config_currency`, `config_currency_auto`, `config_length_class_id`, `config_weight_class_id`, `config_default_category`, `config_continue_shopping_url`, `state`, `ordering`, `store_min_out_qty`, `store_min_sale_qty`, `store_max_sale_qty`, `store_notify_qty`, `store_register_layout`, `store_billing_layout`, `store_shipping_layout`, `store_guest_layout`, `store_guest_shipping_layout`, `store_payment_layout`, `store_invoice_prefix`) VALUES
(1, 'JoomlaShop_K2', '<p>Описание магазина</p>\r\n<p> </p>\r\n<h3>Угольный дельтапланерист саркастичен</h3>\r\n<p>Неспроста свинцовый сосуд мгновенно открывает квазиупругую колбу. Карусель быстра и кратковременна. Часто бывает, что ядерная лапка груба и продуманна. Очевидно, феномен', 'Prodolnaya', '', 'Kharkov', '61085', 220, 3487, '', '', 'UAH', 1, 1, 1, 4, '', 1, 0, '', '', '', '', '<div class="row-fluid">\r\n<div class="span5">[first_name] [last_name] [email] [phone_1] [phone_2] [password] [confirm_password]</div>\r\n<div class="span5">[company] [tax_number] [address_1] [address_2] [city] [zip] [country_id] [zone_id]</div>\r\n</div>', '<div class="row-fluid">\r\n<div class="span6">[first_name] [last_name] [phone_1] [phone_2] [company] [tax_number]</div>\r\n<div class="span6">[address_1] [address_2] [city] [zip] [country_id] [zone_id]</div>\r\n</div>', '<div class="row-fluid">\r\n<div class="span6">[first_name] [last_name] [phone_1] [phone_2] [company]</div>\r\n<div class="span6">[address_1] [address_2] [city] [zip] [country_id] [zone_id]</div>\r\n</div>', '<div class="row-fluid">\r\n<div class="span6">[first_name] [last_name] [email] [phone_1] [phone_2] [country_id] [zone_id]</div>\r\n<div class="span6">[company] [tax_number] [address_1] [address_2] [city] [zip]</div>\r\n</div>', '<div class="row-fluid">\r\n<div class="span6">[first_name] [last_name] [phone_1] [phone_2] [country_id] [zone_id]</div>\r\n<div class="span6">[company] [address_1] [address_2] [city] [zip]</div>\r\n</div>', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_taxprofiles`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_taxprofiles` (
  `taxprofile_id` int(11) NOT NULL,
  `taxprofile_name` varchar(255) NOT NULL,
  `state` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_taxprofiles`
--

INSERT INTO `t50hg_k2store_taxprofiles` (`taxprofile_id`, `taxprofile_name`, `state`, `ordering`) VALUES
(1, 'Доставка по Харькову', 1, 0),
(2, 'Доставка по Харьковской области', 1, 0),
(3, 'Доставка Новая Почта', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_taxrates`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_taxrates` (
  `taxrate_id` int(11) NOT NULL,
  `geozone_id` int(11) NOT NULL,
  `taxrate_name` varchar(255) NOT NULL,
  `tax_percent` decimal(11,3) NOT NULL,
  `state` int(11) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_taxrates`
--

INSERT INTO `t50hg_k2store_taxrates` (`taxrate_id`, `geozone_id`, `taxrate_name`, `tax_percent`, `state`, `ordering`) VALUES
(1, 1, 'НДС', '25.000', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_taxrules`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_taxrules` (
  `taxrule_id` int(11) NOT NULL,
  `taxprofile_id` int(11) NOT NULL,
  `taxrate_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_taxrules`
--

INSERT INTO `t50hg_k2store_taxrules` (`taxrule_id`, `taxprofile_id`, `taxrate_id`, `address`, `ordering`, `state`) VALUES
(1, 1, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_weights`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_weights` (
  `weight_class_id` int(11) NOT NULL,
  `weight_title` varchar(255) NOT NULL,
  `weight_unit` varchar(4) NOT NULL,
  `weight_value` decimal(15,8) NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_weights`
--

INSERT INTO `t50hg_k2store_weights` (`weight_class_id`, `weight_title`, `weight_unit`, `weight_value`, `state`) VALUES
(1, 'Kilogram', 'kg', '1.00000000', 1),
(2, 'Gram', 'g', '1000.00000000', 1),
(3, 'Ounce', 'oz', '35.27400000', -2),
(4, 'Pound', 'LB', '2.20462000', -2);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2store_zones`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2store_zones` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_code` varchar(255) NOT NULL,
  `zone_name` varchar(255) NOT NULL,
  `state` tinyint(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3982 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2store_zones`
--

INSERT INTO `t50hg_k2store_zones` (`zone_id`, `country_id`, `zone_code`, `zone_name`, `state`) VALUES
(1, 1, 'BDS', 'Badakhshan', 1),
(2, 1, 'BDG', 'Badghis', 1),
(3, 1, 'BGL', 'Baghlan', 1),
(4, 1, 'BAL', 'Balkh', 1),
(5, 1, 'BAM', 'Bamian', 1),
(6, 1, 'FRA', 'Farah', 1),
(7, 1, 'FYB', 'Faryab', 1),
(8, 1, 'GHA', 'Ghazni', 1),
(9, 1, 'GHO', 'Ghowr', 1),
(10, 1, 'HEL', 'Helmand', 1),
(11, 1, 'HER', 'Herat', 1),
(12, 1, 'JOW', 'Jowzjan', 1),
(13, 1, 'KAB', 'Kabul', 1),
(14, 1, 'KAN', 'Kandahar', 1),
(15, 1, 'KAP', 'Kapisa', 1),
(16, 1, 'KHO', 'Khost', 1),
(17, 1, 'KNR', 'Konar', 1),
(18, 1, 'KDZ', 'Kondoz', 1),
(19, 1, 'LAG', 'Laghman', 1),
(20, 1, 'LOW', 'Lowgar', 1),
(21, 1, 'NAN', 'Nangrahar', 1),
(22, 1, 'NIM', 'Nimruz', 1),
(23, 1, 'NUR', 'Nurestan', 1),
(24, 1, 'ORU', 'Oruzgan', 1),
(25, 1, 'PIA', 'Paktia', 1),
(26, 1, 'PKA', 'Paktika', 1),
(27, 1, 'PAR', 'Parwan', 1),
(28, 1, 'SAM', 'Samangan', 1),
(29, 1, 'SAR', 'Sar-e Pol', 1),
(30, 1, 'TAK', 'Takhar', 1),
(31, 1, 'WAR', 'Wardak', 1),
(32, 1, 'ZAB', 'Zabol', 1),
(33, 2, 'BR', 'Berat', 1),
(34, 2, 'BU', 'Bulqize', 1),
(35, 2, 'DL', 'Delvine', 1),
(36, 2, 'DV', 'Devoll', 1),
(37, 2, 'DI', 'Diber', 1),
(38, 2, 'DR', 'Durres', 1),
(39, 2, 'EL', 'Elbasan', 1),
(40, 2, 'ER', 'Kolonje', 1),
(41, 2, 'FR', 'Fier', 1),
(42, 2, 'GJ', 'Gjirokaster', 1),
(43, 2, 'GR', 'Gramsh', 1),
(44, 2, 'HA', 'Has', 1),
(45, 2, 'KA', 'Kavaje', 1),
(46, 2, 'KB', 'Kurbin', 1),
(47, 2, 'KC', 'Kucove', 1),
(48, 2, 'KO', 'Korce', 1),
(49, 2, 'KR', 'Kruje', 1),
(50, 2, 'KU', 'Kukes', 1),
(51, 2, 'LB', 'Librazhd', 1),
(52, 2, 'LE', 'Lezhe', 1),
(53, 2, 'LU', 'Lushnje', 1),
(54, 2, 'MM', 'Malesi e Madhe', 1),
(55, 2, 'MK', 'Mallakaster', 1),
(56, 2, 'MT', 'Mat', 1),
(57, 2, 'MR', 'Mirdite', 1),
(58, 2, 'PQ', 'Peqin', 1),
(59, 2, 'PR', 'Permet', 1),
(60, 2, 'PG', 'Pogradec', 1),
(61, 2, 'PU', 'Puke', 1),
(62, 2, 'SH', 'Shkoder', 1),
(63, 2, 'SK', 'Skrapar', 1),
(64, 2, 'SR', 'Sarande', 1),
(65, 2, 'TE', 'Tepelene', 1),
(66, 2, 'TP', 'Tropoje', 1),
(67, 2, 'TR', 'Tirane', 1),
(68, 2, 'VL', 'Vlore', 1),
(69, 3, 'ADR', 'Adrar', 1),
(70, 3, 'ADE', 'Ain Defla', 1),
(71, 3, 'ATE', 'Ain Temouchent', 1),
(72, 3, 'ALG', 'Alger', 1),
(73, 3, 'ANN', 'Annaba', 1),
(74, 3, 'BAT', 'Batna', 1),
(75, 3, 'BEC', 'Bechar', 1),
(76, 3, 'BEJ', 'Bejaia', 1),
(77, 3, 'BIS', 'Biskra', 1),
(78, 3, 'BLI', 'Blida', 1),
(79, 3, 'BBA', 'Bordj Bou Arreridj', 1),
(80, 3, 'BOA', 'Bouira', 1),
(81, 3, 'BMD', 'Boumerdes', 1),
(82, 3, 'CHL', 'Chlef', 1),
(83, 3, 'CON', 'Constantine', 1),
(84, 3, 'DJE', 'Djelfa', 1),
(85, 3, 'EBA', 'El Bayadh', 1),
(86, 3, 'EOU', 'El Oued', 1),
(87, 3, 'ETA', 'El Tarf', 1),
(88, 3, 'GHA', 'Ghardaia', 1),
(89, 3, 'GUE', 'Guelma', 1),
(90, 3, 'ILL', 'Illizi', 1),
(91, 3, 'JIJ', 'Jijel', 1),
(92, 3, 'KHE', 'Khenchela', 1),
(93, 3, 'LAG', 'Laghouat', 1),
(94, 3, 'MUA', 'Muaskar', 1),
(95, 3, 'MED', 'Medea', 1),
(96, 3, 'MIL', 'Mila', 1),
(97, 3, 'MOS', 'Mostaganem', 1),
(98, 3, 'MSI', 'M''Sila', 1),
(99, 3, 'NAA', 'Naama', 1),
(100, 3, 'ORA', 'Oran', 1),
(101, 3, 'OUA', 'Ouargla', 1),
(102, 3, 'OEB', 'Oum el-Bouaghi', 1),
(103, 3, 'REL', 'Relizane', 1),
(104, 3, 'SAI', 'Saida', 1),
(105, 3, 'SET', 'Setif', 1),
(106, 3, 'SBA', 'Sidi Bel Abbes', 1),
(107, 3, 'SKI', 'Skikda', 1),
(108, 3, 'SAH', 'Souk Ahras', 1),
(109, 3, 'TAM', 'Tamanghasset', 1),
(110, 3, 'TEB', 'Tebessa', 1),
(111, 3, 'TIA', 'Tiaret', 1),
(112, 3, 'TIN', 'Tindouf', 1),
(113, 3, 'TIP', 'Tipaza', 1),
(114, 3, 'TIS', 'Tissemsilt', 1),
(115, 3, 'TOU', 'Tizi Ouzou', 1),
(116, 3, 'TLE', 'Tlemcen', 1),
(117, 4, 'E', 'Eastern', 1),
(118, 4, 'M', 'Manu''a', 1),
(119, 4, 'R', 'Rose Island', 1),
(120, 4, 'S', 'Swains Island', 1),
(121, 4, 'W', 'Western', 1),
(122, 5, 'ALV', 'Andorra la Vella', 1),
(123, 5, 'CAN', 'Canillo', 1),
(124, 5, 'ENC', 'Encamp', 1),
(125, 5, 'ESE', 'Escaldes-Engordany', 1),
(126, 5, 'LMA', 'La Massana', 1),
(127, 5, 'ORD', 'Ordino', 1),
(128, 5, 'SJL', 'Sant Julia de Loria', 1),
(129, 6, 'BGO', 'Bengo', 1),
(130, 6, 'BGU', 'Benguela', 1),
(131, 6, 'BIE', 'Bie', 1),
(132, 6, 'CAB', 'Cabinda', 1),
(133, 6, 'CCU', 'Cuando-Cubango', 1),
(134, 6, 'CNO', 'Cuanza Norte', 1),
(135, 6, 'CUS', 'Cuanza Sul', 1),
(136, 6, 'CNN', 'Cunene', 1),
(137, 6, 'HUA', 'Huambo', 1),
(138, 6, 'HUI', 'Huila', 1),
(139, 6, 'LUA', 'Luanda', 1),
(140, 6, 'LNO', 'Lunda Norte', 1),
(141, 6, 'LSU', 'Lunda Sul', 1),
(142, 6, 'MAL', 'Malange', 1),
(143, 6, 'MOX', 'Moxico', 1),
(144, 6, 'NAM', 'Namibe', 1),
(145, 6, 'UIG', 'Uige', 1),
(146, 6, 'ZAI', 'Zaire', 1),
(147, 9, 'ASG', 'Saint George', 1),
(148, 9, 'ASJ', 'Saint John', 1),
(149, 9, 'ASM', 'Saint Mary', 1),
(150, 9, 'ASL', 'Saint Paul', 1),
(151, 9, 'ASR', 'Saint Peter', 1),
(152, 9, 'ASH', 'Saint Philip', 1),
(153, 9, 'BAR', 'Barbuda', 1),
(154, 9, 'RED', 'Redonda', 1),
(155, 10, 'AN', 'Antartida e Islas del Atlantico', 1),
(156, 10, 'BA', 'Buenos Aires', 1),
(157, 10, 'CA', 'Catamarca', 1),
(158, 10, 'CH', 'Chaco', 1),
(159, 10, 'CU', 'Chubut', 1),
(160, 10, 'CO', 'Cordoba', 1),
(161, 10, 'CR', 'Corrientes', 1),
(162, 10, 'DF', 'Distrito Federal', 1),
(163, 10, 'ER', 'Entre Rios', 1),
(164, 10, 'FO', 'Formosa', 1),
(165, 10, 'JU', 'Jujuy', 1),
(166, 10, 'LP', 'La Pampa', 1),
(167, 10, 'LR', 'La Rioja', 1),
(168, 10, 'ME', 'Mendoza', 1),
(169, 10, 'MI', 'Misiones', 1),
(170, 10, 'NE', 'Neuquen', 1),
(171, 10, 'RN', 'Rio Negro', 1),
(172, 10, 'SA', 'Salta', 1),
(173, 10, 'SJ', 'San Juan', 1),
(174, 10, 'SL', 'San Luis', 1),
(175, 10, 'SC', 'Santa Cruz', 1),
(176, 10, 'SF', 'Santa Fe', 1),
(177, 10, 'SD', 'Santiago del Estero', 1),
(178, 10, 'TF', 'Tierra del Fuego', 1),
(179, 10, 'TU', 'Tucuman', 1),
(180, 11, 'AGT', 'Aragatsotn', 1),
(181, 11, 'ARR', 'Ararat', 1),
(182, 11, 'ARM', 'Armavir', 1),
(183, 11, 'GEG', 'Geghark''unik''', 1),
(184, 11, 'KOT', 'Kotayk''', 1),
(185, 11, 'LOR', 'Lorri', 1),
(186, 11, 'SHI', 'Shirak', 1),
(187, 11, 'SYU', 'Syunik''', 1),
(188, 11, 'TAV', 'Tavush', 1),
(189, 11, 'VAY', 'Vayots'' Dzor', 1),
(190, 11, 'YER', 'Yerevan', 1),
(191, 13, 'ACT', 'Australian Capital Territory', 1),
(192, 13, 'NSW', 'New South Wales', 1),
(193, 13, 'NT', 'Northern Territory', 1),
(194, 13, 'QLD', 'Queensland', 1),
(195, 13, 'SA', 'South Australia', 1),
(196, 13, 'TAS', 'Tasmania', 1),
(197, 13, 'VIC', 'Victoria', 1),
(198, 13, 'WA', 'Western Australia', 1),
(199, 14, 'BUR', 'Burgenland', 1),
(200, 14, 'KAR', 'Kärnten', 1),
(201, 14, 'NOS', 'Nieder&ouml;esterreich', 1),
(202, 14, 'OOS', 'Ober&ouml;esterreich', 1),
(203, 14, 'SAL', 'Salzburg', 1),
(204, 14, 'STE', 'Steiermark', 1),
(205, 14, 'TIR', 'Tirol', 1),
(206, 14, 'VOR', 'Vorarlberg', 1),
(207, 14, 'WIE', 'Wien', 1),
(208, 15, 'AB', 'Ali Bayramli', 1),
(209, 15, 'ABS', 'Abseron', 1),
(210, 15, 'AGC', 'AgcabAdi', 1),
(211, 15, 'AGM', 'Agdam', 1),
(212, 15, 'AGS', 'Agdas', 1),
(213, 15, 'AGA', 'Agstafa', 1),
(214, 15, 'AGU', 'Agsu', 1),
(215, 15, 'AST', 'Astara', 1),
(216, 15, 'BA', 'Baki', 1),
(217, 15, 'BAB', 'BabAk', 1),
(218, 15, 'BAL', 'BalakAn', 1),
(219, 15, 'BAR', 'BArdA', 1),
(220, 15, 'BEY', 'Beylaqan', 1),
(221, 15, 'BIL', 'Bilasuvar', 1),
(222, 15, 'CAB', 'Cabrayil', 1),
(223, 15, 'CAL', 'Calilabab', 1),
(224, 15, 'CUL', 'Culfa', 1),
(225, 15, 'DAS', 'Daskasan', 1),
(226, 15, 'DAV', 'Davaci', 1),
(227, 15, 'FUZ', 'Fuzuli', 1),
(228, 15, 'GA', 'Ganca', 1),
(229, 15, 'GAD', 'Gadabay', 1),
(230, 15, 'GOR', 'Goranboy', 1),
(231, 15, 'GOY', 'Goycay', 1),
(232, 15, 'HAC', 'Haciqabul', 1),
(233, 15, 'IMI', 'Imisli', 1),
(234, 15, 'ISM', 'Ismayilli', 1),
(235, 15, 'KAL', 'Kalbacar', 1),
(236, 15, 'KUR', 'Kurdamir', 1),
(237, 15, 'LA', 'Lankaran', 1),
(238, 15, 'LAC', 'Lacin', 1),
(239, 15, 'LAN', 'Lankaran', 1),
(240, 15, 'LER', 'Lerik', 1),
(241, 15, 'MAS', 'Masalli', 1),
(242, 15, 'MI', 'Mingacevir', 1),
(243, 15, 'NA', 'Naftalan', 1),
(244, 15, 'NEF', 'Neftcala', 1),
(245, 15, 'OGU', 'Oguz', 1),
(246, 15, 'ORD', 'Ordubad', 1),
(247, 15, 'QAB', 'Qabala', 1),
(248, 15, 'QAX', 'Qax', 1),
(249, 15, 'QAZ', 'Qazax', 1),
(250, 15, 'QOB', 'Qobustan', 1),
(251, 15, 'QBA', 'Quba', 1),
(252, 15, 'QBI', 'Qubadli', 1),
(253, 15, 'QUS', 'Qusar', 1),
(254, 15, 'SA', 'Saki', 1),
(255, 15, 'SAT', 'Saatli', 1),
(256, 15, 'SAB', 'Sabirabad', 1),
(257, 15, 'SAD', 'Sadarak', 1),
(258, 15, 'SAH', 'Sahbuz', 1),
(259, 15, 'SAK', 'Saki', 1),
(260, 15, 'SAL', 'Salyan', 1),
(261, 15, 'SM', 'Sumqayit', 1),
(262, 15, 'SMI', 'Samaxi', 1),
(263, 15, 'SKR', 'Samkir', 1),
(264, 15, 'SMX', 'Samux', 1),
(265, 15, 'SAR', 'Sarur', 1),
(266, 15, 'SIY', 'Siyazan', 1),
(267, 15, 'SS', 'Susa', 1),
(268, 15, 'SUS', 'Susa', 1),
(269, 15, 'TAR', 'Tartar', 1),
(270, 15, 'TOV', 'Tovuz', 1),
(271, 15, 'UCA', 'Ucar', 1),
(272, 15, 'XA', 'Xankandi', 1),
(273, 15, 'XAC', 'Xacmaz', 1),
(274, 15, 'XAN', 'Xanlar', 1),
(275, 15, 'XIZ', 'Xizi', 1),
(276, 15, 'XCI', 'Xocali', 1),
(277, 15, 'XVD', 'Xocavand', 1),
(278, 15, 'YAR', 'Yardimli', 1),
(279, 15, 'YEV', 'Yevlax', 1),
(280, 15, 'ZAN', 'Zangilan', 1),
(281, 15, 'ZAQ', 'Zaqatala', 1),
(282, 15, 'ZAR', 'Zardab', 1),
(283, 15, 'NX', 'Naxcivan', 1),
(284, 16, 'ACK', 'Acklins', 1),
(285, 16, 'BER', 'Berry Islands', 1),
(286, 16, 'BIM', 'Bimini', 1),
(287, 16, 'BLK', 'Black Point', 1),
(288, 16, 'CAT', 'Cat Island', 1),
(289, 16, 'CAB', 'Central Abaco', 1),
(290, 16, 'CAN', 'Central Andros', 1),
(291, 16, 'CEL', 'Central Eleuthera', 1),
(292, 16, 'FRE', 'City of Freeport', 1),
(293, 16, 'CRO', 'Crooked Island', 1),
(294, 16, 'EGB', 'East Grand Bahama', 1),
(295, 16, 'EXU', 'Exuma', 1),
(296, 16, 'GRD', 'Grand Cay', 1),
(297, 16, 'HAR', 'Harbour Island', 1),
(298, 16, 'HOP', 'Hope Town', 1),
(299, 16, 'INA', 'Inagua', 1),
(300, 16, 'LNG', 'Long Island', 1),
(301, 16, 'MAN', 'Mangrove Cay', 1),
(302, 16, 'MAY', 'Mayaguana', 1),
(303, 16, 'MOO', 'Moore''s Island', 1),
(304, 16, 'NAB', 'North Abaco', 1),
(305, 16, 'NAN', 'North Andros', 1),
(306, 16, 'NEL', 'North Eleuthera', 1),
(307, 16, 'RAG', 'Ragged Island', 1),
(308, 16, 'RUM', 'Rum Cay', 1),
(309, 16, 'SAL', 'San Salvador', 1),
(310, 16, 'SAB', 'South Abaco', 1),
(311, 16, 'SAN', 'South Andros', 1),
(312, 16, 'SEL', 'South Eleuthera', 1),
(313, 16, 'SWE', 'Spanish Wells', 1),
(314, 16, 'WGB', 'West Grand Bahama', 1),
(315, 17, 'CAP', 'Capital', 1),
(316, 17, 'CEN', 'Central', 1),
(317, 17, 'MUH', 'Muharraq', 1),
(318, 17, 'NOR', 'Northern', 1),
(319, 17, 'SOU', 'Southern', 1),
(320, 18, 'BAR', 'Barisal', 1),
(321, 18, 'CHI', 'Chittagong', 1),
(322, 18, 'DHA', 'Dhaka', 1),
(323, 18, 'KHU', 'Khulna', 1),
(324, 18, 'RAJ', 'Rajshahi', 1),
(325, 18, 'SYL', 'Sylhet', 1),
(326, 19, 'CC', 'Christ Church', 1),
(327, 19, 'AND', 'Saint Andrew', 1),
(328, 19, 'GEO', 'Saint George', 1),
(329, 19, 'JAM', 'Saint James', 1),
(330, 19, 'JOH', 'Saint John', 1),
(331, 19, 'JOS', 'Saint Joseph', 1),
(332, 19, 'LUC', 'Saint Lucy', 1),
(333, 19, 'MIC', 'Saint Michael', 1),
(334, 19, 'PET', 'Saint Peter', 1),
(335, 19, 'PHI', 'Saint Philip', 1),
(336, 19, 'THO', 'Saint Thomas', 1),
(337, 20, 'BR', 'Brestskaya (Brest)', 1),
(338, 20, 'HO', 'Homyel''skaya (Homyel'')', 1),
(339, 20, 'HM', 'Horad Minsk', 1),
(340, 20, 'HR', 'Hrodzyenskaya (Hrodna)', 1),
(341, 20, 'MA', 'Mahilyowskaya (Mahilyow)', 1),
(342, 20, 'MI', 'Minskaya', 1),
(343, 20, 'VI', 'Vitsyebskaya (Vitsyebsk)', 1),
(344, 21, 'VAN', 'Antwerpen', 1),
(345, 21, 'WBR', 'Brabant Wallon', 1),
(346, 21, 'WHT', 'Hainaut', 1),
(347, 21, 'WLG', 'Liege', 1),
(348, 21, 'VLI', 'Limburg', 1),
(349, 21, 'WLX', 'Luxembourg', 1),
(350, 21, 'WNA', 'Namur', 1),
(351, 21, 'VOV', 'Oost-Vlaanderen', 1),
(352, 21, 'VBR', 'Vlaams Brabant', 1),
(353, 21, 'VWV', 'West-Vlaanderen', 1),
(354, 22, 'BZ', 'Belize', 1),
(355, 22, 'CY', 'Cayo', 1),
(356, 22, 'CR', 'Corozal', 1),
(357, 22, 'OW', 'Orange Walk', 1),
(358, 22, 'SC', 'Stann Creek', 1),
(359, 22, 'TO', 'Toledo', 1),
(360, 23, 'AL', 'Alibori', 1),
(361, 23, 'AK', 'Atakora', 1),
(362, 23, 'AQ', 'Atlantique', 1),
(363, 23, 'BO', 'Borgou', 1),
(364, 23, 'CO', 'Collines', 1),
(365, 23, 'DO', 'Donga', 1),
(366, 23, 'KO', 'Kouffo', 1),
(367, 23, 'LI', 'Littoral', 1),
(368, 23, 'MO', 'Mono', 1),
(369, 23, 'OU', 'Oueme', 1),
(370, 23, 'PL', 'Plateau', 1),
(371, 23, 'ZO', 'Zou', 1),
(372, 24, 'DS', 'Devonshire', 1),
(373, 24, 'HC', 'Hamilton City', 1),
(374, 24, 'HA', 'Hamilton', 1),
(375, 24, 'PG', 'Paget', 1),
(376, 24, 'PB', 'Pembroke', 1),
(377, 24, 'GC', 'Saint George City', 1),
(378, 24, 'SG', 'Saint George''s', 1),
(379, 24, 'SA', 'Sandys', 1),
(380, 24, 'SM', 'Smith''s', 1),
(381, 24, 'SH', 'Southampton', 1),
(382, 24, 'WA', 'Warwick', 1),
(383, 25, 'BUM', 'Bumthang', 1),
(384, 25, 'CHU', 'Chukha', 1),
(385, 25, 'DAG', 'Dagana', 1),
(386, 25, 'GAS', 'Gasa', 1),
(387, 25, 'HAA', 'Haa', 1),
(388, 25, 'LHU', 'Lhuntse', 1),
(389, 25, 'MON', 'Mongar', 1),
(390, 25, 'PAR', 'Paro', 1),
(391, 25, 'PEM', 'Pemagatshel', 1),
(392, 25, 'PUN', 'Punakha', 1),
(393, 25, 'SJO', 'Samdrup Jongkhar', 1),
(394, 25, 'SAT', 'Samtse', 1),
(395, 25, 'SAR', 'Sarpang', 1),
(396, 25, 'THI', 'Thimphu', 1),
(397, 25, 'TRG', 'Trashigang', 1),
(398, 25, 'TRY', 'Trashiyangste', 1),
(399, 25, 'TRO', 'Trongsa', 1),
(400, 25, 'TSI', 'Tsirang', 1),
(401, 25, 'WPH', 'Wangdue Phodrang', 1),
(402, 25, 'ZHE', 'Zhemgang', 1),
(403, 26, 'BEN', 'Beni', 1),
(404, 26, 'CHU', 'Chuquisaca', 1),
(405, 26, 'COC', 'Cochabamba', 1),
(406, 26, 'LPZ', 'La Paz', 1),
(407, 26, 'ORU', 'Oruro', 1),
(408, 26, 'PAN', 'Pando', 1),
(409, 26, 'POT', 'Potosi', 1),
(410, 26, 'SCZ', 'Santa Cruz', 1),
(411, 26, 'TAR', 'Tarija', 1),
(412, 27, 'RS', 'Republika Srpska', 1),
(413, 27, 'BRO', 'Brčko District', 1),
(414, 27, 'FUS', 'Unsko-Sanski Kanton', 1),
(415, 27, 'FPO', 'Posavski Kanton', 1),
(416, 27, 'FTU', 'Tuzlanski Kanton', 1),
(417, 27, 'FZE', 'Zeničko-Dobojski Kanton', 1),
(418, 27, 'FBP', 'Bosanskopodrinjski Kanton', 1),
(419, 27, 'FSB', 'Srednjebosanski Kanton', 1),
(420, 27, 'FHN', 'Hercegovačko-neretvanski Kanton', 1),
(421, 27, 'FZH', 'Zapadnohercegovački Kanton', 1),
(422, 27, 'FSA', 'Kanton Sarajevo', 1),
(423, 27, 'FZA', 'Zapadnobosanski Kanton', 1),
(430, 28, 'CE', 'Central', 1),
(431, 28, 'GH', 'Ghanzi', 1),
(432, 28, 'KD', 'Kgalagadi', 1),
(433, 28, 'KT', 'Kgatleng', 1),
(434, 28, 'KW', 'Kweneng', 1),
(435, 28, 'NG', 'Ngamiland', 1),
(436, 28, 'NE', 'North East', 1),
(437, 28, 'NW', 'North West', 1),
(438, 28, 'SE', 'South East', 1),
(439, 28, 'SO', 'Southern', 1),
(440, 30, 'AC', 'Acre', 1),
(441, 30, 'AL', 'Alagoas', 1),
(442, 30, 'AP', 'Amapa', 1),
(443, 30, 'AM', 'Amazonas', 1),
(444, 30, 'BA', 'Bahia', 1),
(445, 30, 'CE', 'Ceara', 1),
(446, 30, 'DF', 'Distrito Federal', 1),
(447, 30, 'ES', 'Espirito Santo', 1),
(448, 30, 'GO', 'Goias', 1),
(449, 30, 'MA', 'Maranhao', 1),
(450, 30, 'MT', 'Mato Grosso', 1),
(451, 30, 'MS', 'Mato Grosso do Sul', 1),
(452, 30, 'MG', 'Minas Gerais', 1),
(453, 30, 'PA', 'Para', 1),
(454, 30, 'PB', 'Paraiba', 1),
(455, 30, 'PR', 'Parana', 1),
(456, 30, 'PE', 'Pernambuco', 1),
(457, 30, 'PI', 'Piaui', 1),
(458, 30, 'RJ', 'Rio de Janeiro', 1),
(459, 30, 'RN', 'Rio Grande do Norte', 1),
(460, 30, 'RS', 'Rio Grande do Sul', 1),
(461, 30, 'RO', 'Rondonia', 1),
(462, 30, 'RR', 'Roraima', 1),
(463, 30, 'SC', 'Santa Catarina', 1),
(464, 30, 'SP', 'Sao Paulo', 1),
(465, 30, 'SE', 'Sergipe', 1),
(466, 30, 'TO', 'Tocantins', 1),
(467, 31, 'PB', 'Peros Banhos', 1),
(468, 31, 'SI', 'Salomon Islands', 1),
(469, 31, 'NI', 'Nelsons Island', 1),
(470, 31, 'TB', 'Three Brothers', 1),
(471, 31, 'EA', 'Eagle Islands', 1),
(472, 31, 'DI', 'Danger Island', 1),
(473, 31, 'EG', 'Egmont Islands', 1),
(474, 31, 'DG', 'Diego Garcia', 1),
(475, 32, 'BEL', 'Belait', 1),
(476, 32, 'BRM', 'Brunei and Muara', 1),
(477, 32, 'TEM', 'Temburong', 1),
(478, 32, 'TUT', 'Tutong', 1),
(479, 33, '', 'Blagoevgrad', 1),
(480, 33, '', 'Burgas', 1),
(481, 33, '', 'Dobrich', 1),
(482, 33, '', 'Gabrovo', 1),
(483, 33, '', 'Haskovo', 1),
(484, 33, '', 'Kardjali', 1),
(485, 33, '', 'Kyustendil', 1),
(486, 33, '', 'Lovech', 1),
(487, 33, '', 'Montana', 1),
(488, 33, '', 'Pazardjik', 1),
(489, 33, '', 'Pernik', 1),
(490, 33, '', 'Pleven', 1),
(491, 33, '', 'Plovdiv', 1),
(492, 33, '', 'Razgrad', 1),
(493, 33, '', 'Shumen', 1),
(494, 33, '', 'Silistra', 1),
(495, 33, '', 'Sliven', 1),
(496, 33, '', 'Smolyan', 1),
(497, 33, '', 'Sofia', 1),
(498, 33, '', 'Sofia - town', 1),
(499, 33, '', 'Stara Zagora', 1),
(500, 33, '', 'Targovishte', 1),
(501, 33, '', 'Varna', 1),
(502, 33, '', 'Veliko Tarnovo', 1),
(503, 33, '', 'Vidin', 1),
(504, 33, '', 'Vratza', 1),
(505, 33, '', 'Yambol', 1),
(506, 34, 'BAL', 'Bale', 1),
(507, 34, 'BAM', 'Bam', 1),
(508, 34, 'BAN', 'Banwa', 1),
(509, 34, 'BAZ', 'Bazega', 1),
(510, 34, 'BOR', 'Bougouriba', 1),
(511, 34, 'BLG', 'Boulgou', 1),
(512, 34, 'BOK', 'Boulkiemde', 1),
(513, 34, 'COM', 'Comoe', 1),
(514, 34, 'GAN', 'Ganzourgou', 1),
(515, 34, 'GNA', 'Gnagna', 1),
(516, 34, 'GOU', 'Gourma', 1),
(517, 34, 'HOU', 'Houet', 1),
(518, 34, 'IOA', 'Ioba', 1),
(519, 34, 'KAD', 'Kadiogo', 1),
(520, 34, 'KEN', 'Kenedougou', 1),
(521, 34, 'KOD', 'Komondjari', 1),
(522, 34, 'KOP', 'Kompienga', 1),
(523, 34, 'KOS', 'Kossi', 1),
(524, 34, 'KOL', 'Koulpelogo', 1),
(525, 34, 'KOT', 'Kouritenga', 1),
(526, 34, 'KOW', 'Kourweogo', 1),
(527, 34, 'LER', 'Leraba', 1),
(528, 34, 'LOR', 'Loroum', 1),
(529, 34, 'MOU', 'Mouhoun', 1),
(530, 34, 'NAH', 'Nahouri', 1),
(531, 34, 'NAM', 'Namentenga', 1),
(532, 34, 'NAY', 'Nayala', 1),
(533, 34, 'NOU', 'Noumbiel', 1),
(534, 34, 'OUB', 'Oubritenga', 1),
(535, 34, 'OUD', 'Oudalan', 1),
(536, 34, 'PAS', 'Passore', 1),
(537, 34, 'PON', 'Poni', 1),
(538, 34, 'SAG', 'Sanguie', 1),
(539, 34, 'SAM', 'Sanmatenga', 1),
(540, 34, 'SEN', 'Seno', 1),
(541, 34, 'SIS', 'Sissili', 1),
(542, 34, 'SOM', 'Soum', 1),
(543, 34, 'SOR', 'Sourou', 1),
(544, 34, 'TAP', 'Tapoa', 1),
(545, 34, 'TUY', 'Tuy', 1),
(546, 34, 'YAG', 'Yagha', 1),
(547, 34, 'YAT', 'Yatenga', 1),
(548, 34, 'ZIR', 'Ziro', 1),
(549, 34, 'ZOD', 'Zondoma', 1),
(550, 34, 'ZOW', 'Zoundweogo', 1),
(551, 35, 'BB', 'Bubanza', 1),
(552, 35, 'BJ', 'Bujumbura', 1),
(553, 35, 'BR', 'Bururi', 1),
(554, 35, 'CA', 'Cankuzo', 1),
(555, 35, 'CI', 'Cibitoke', 1),
(556, 35, 'GI', 'Gitega', 1),
(557, 35, 'KR', 'Karuzi', 1),
(558, 35, 'KY', 'Kayanza', 1),
(559, 35, 'KI', 'Kirundo', 1),
(560, 35, 'MA', 'Makamba', 1),
(561, 35, 'MU', 'Muramvya', 1),
(562, 35, 'MY', 'Muyinga', 1),
(563, 35, 'MW', 'Mwaro', 1),
(564, 35, 'NG', 'Ngozi', 1),
(565, 35, 'RT', 'Rutana', 1),
(566, 35, 'RY', 'Ruyigi', 1),
(567, 36, 'PP', 'Phnom Penh', 1),
(568, 36, 'PS', 'Preah Seihanu (Kompong Som or Sihanoukville)', 1),
(569, 36, 'PA', 'Pailin', 1),
(570, 36, 'KB', 'Keb', 1),
(571, 36, 'BM', 'Banteay Meanchey', 1),
(572, 36, 'BA', 'Battambang', 1),
(573, 36, 'KM', 'Kampong Cham', 1),
(574, 36, 'KN', 'Kampong Chhnang', 1),
(575, 36, 'KU', 'Kampong Speu', 1),
(576, 36, 'KO', 'Kampong Som', 1),
(577, 36, 'KT', 'Kampong Thom', 1),
(578, 36, 'KP', 'Kampot', 1),
(579, 36, 'KL', 'Kandal', 1),
(580, 36, 'KK', 'Kaoh Kong', 1),
(581, 36, 'KR', 'Kratie', 1),
(582, 36, 'MK', 'Mondul Kiri', 1),
(583, 36, 'OM', 'Oddar Meancheay', 1),
(584, 36, 'PU', 'Pursat', 1),
(585, 36, 'PR', 'Preah Vihear', 1),
(586, 36, 'PG', 'Prey Veng', 1),
(587, 36, 'RK', 'Ratanak Kiri', 1),
(588, 36, 'SI', 'Siemreap', 1),
(589, 36, 'ST', 'Stung Treng', 1),
(590, 36, 'SR', 'Svay Rieng', 1),
(591, 36, 'TK', 'Takeo', 1),
(592, 37, 'ADA', 'Adamawa (Adamaoua)', 1),
(593, 37, 'CEN', 'Centre', 1),
(594, 37, 'EST', 'East (Est)', 1),
(595, 37, 'EXN', 'Extreme North (Extreme-Nord)', 1),
(596, 37, 'LIT', 'Littoral', 1),
(597, 37, 'NOR', 'North (Nord)', 1),
(598, 37, 'NOT', 'Northwest (Nord-Ouest)', 1),
(599, 37, 'OUE', 'West (Ouest)', 1),
(600, 37, 'SUD', 'South (Sud)', 1),
(601, 37, 'SOU', 'Southwest (Sud-Ouest).', 1),
(602, 38, 'AB', 'Alberta', 1),
(603, 38, 'BC', 'British Columbia', 1),
(604, 38, 'MB', 'Manitoba', 1),
(605, 38, 'NB', 'New Brunswick', 1),
(606, 38, 'NL', 'Newfoundland and Labrador', 1),
(607, 38, 'NT', 'Northwest Territories', 1),
(608, 38, 'NS', 'Nova Scotia', 1),
(609, 38, 'NU', 'Nunavut', 1),
(610, 38, 'ON', 'Ontario', 1),
(611, 38, 'PE', 'Prince Edward Island', 1),
(612, 38, 'QC', 'Qu&eacute;bec', 1),
(613, 38, 'SK', 'Saskatchewan', 1),
(614, 38, 'YT', 'Yukon Territory', 1),
(615, 39, 'BV', 'Boa Vista', 1),
(616, 39, 'BR', 'Brava', 1),
(617, 39, 'CS', 'Calheta de Sao Miguel', 1),
(618, 39, 'MA', 'Maio', 1),
(619, 39, 'MO', 'Mosteiros', 1),
(620, 39, 'PA', 'Paul', 1),
(621, 39, 'PN', 'Porto Novo', 1),
(622, 39, 'PR', 'Praia', 1),
(623, 39, 'RG', 'Ribeira Grande', 1),
(624, 39, 'SL', 'Sal', 1),
(625, 39, 'CA', 'Santa Catarina', 1),
(626, 39, 'CR', 'Santa Cruz', 1),
(627, 39, 'SD', 'Sao Domingos', 1),
(628, 39, 'SF', 'Sao Filipe', 1),
(629, 39, 'SN', 'Sao Nicolau', 1),
(630, 39, 'SV', 'Sao Vicente', 1),
(631, 39, 'TA', 'Tarrafal', 1),
(632, 40, 'CR', 'Creek', 1),
(633, 40, 'EA', 'Eastern', 1),
(634, 40, 'ML', 'Midland', 1),
(635, 40, 'ST', 'South Town', 1),
(636, 40, 'SP', 'Spot Bay', 1),
(637, 40, 'SK', 'Stake Bay', 1),
(638, 40, 'WD', 'West End', 1),
(639, 40, 'WN', 'Western', 1),
(640, 41, 'BBA', 'Bamingui-Bangoran', 1),
(641, 41, 'BKO', 'Basse-Kotto', 1),
(642, 41, 'HKO', 'Haute-Kotto', 1),
(643, 41, 'HMB', 'Haut-Mbomou', 1),
(644, 41, 'KEM', 'Kemo', 1),
(645, 41, 'LOB', 'Lobaye', 1),
(646, 41, 'MKD', 'Mambéré-Kadéï', 1),
(647, 41, 'MBO', 'Mbomou', 1),
(648, 41, 'NMM', 'Nana-Mambere', 1),
(649, 41, 'OMP', 'Ombella-M''Poko', 1),
(650, 41, 'OUK', 'Ouaka', 1),
(651, 41, 'OUH', 'Ouham', 1),
(652, 41, 'OPE', 'Ouham-Pende', 1),
(653, 41, 'VAK', 'Vakaga', 1),
(654, 41, 'NGR', 'Nana-Grebizi', 1),
(655, 41, 'SMB', 'Sangha-Mbaere', 1),
(656, 41, 'BAN', 'Bangui', 1),
(657, 42, 'BA', 'Batha', 1),
(658, 42, 'BI', 'Biltine', 1),
(659, 42, 'BE', 'Borkou-Ennedi-Tibesti', 1),
(660, 42, 'CB', 'Chari-Baguirmi', 1),
(661, 42, 'GU', 'Guera', 1),
(662, 42, 'KA', 'Kanem', 1),
(663, 42, 'LA', 'Lac', 1),
(664, 42, 'LC', 'Logone Occidental', 1),
(665, 42, 'LR', 'Logone Oriental', 1),
(666, 42, 'MK', 'Mayo-Kebbi', 1),
(667, 42, 'MC', 'Moyen-Chari', 1),
(668, 42, 'OU', 'Ouaddai', 1),
(669, 42, 'SA', 'Salamat', 1),
(670, 42, 'TA', 'Tandjile', 1),
(671, 43, 'AI', 'Aisen del General Carlos Ibanez', 1),
(672, 43, 'AN', 'Antofagasta', 1),
(673, 43, 'AR', 'Araucania', 1),
(674, 43, 'AT', 'Atacama', 1),
(675, 43, 'BI', 'Bio-Bio', 1),
(676, 43, 'CO', 'Coquimbo', 1),
(677, 43, 'LI', 'Libertador General Bernardo O''Hi', 1),
(678, 43, 'LL', 'Los Lagos', 1),
(679, 43, 'MA', 'Magallanes y de la Antartica Chi', 1),
(680, 43, 'ML', 'Maule', 1),
(681, 43, 'RM', 'Region Metropolitana', 1),
(682, 43, 'TA', 'Tarapaca', 1),
(683, 43, 'VS', 'Valparaiso', 1),
(684, 44, 'AN', 'Anhui', 1),
(685, 44, 'BE', 'Beijing', 1),
(686, 44, 'CH', 'Chongqing', 1),
(687, 44, 'FU', 'Fujian', 1),
(688, 44, 'GA', 'Gansu', 1),
(689, 44, 'GU', 'Guangdong', 1),
(690, 44, 'GX', 'Guangxi', 1),
(691, 44, 'GZ', 'Guizhou', 1),
(692, 44, 'HA', 'Hainan', 1),
(693, 44, 'HB', 'Hebei', 1),
(694, 44, 'HL', 'Heilongjiang', 1),
(695, 44, 'HE', 'Henan', 1),
(696, 44, 'HK', 'Hong Kong', 1),
(697, 44, 'HU', 'Hubei', 1),
(698, 44, 'HN', 'Hunan', 1),
(699, 44, 'IM', 'Inner Mongolia', 1),
(700, 44, 'JI', 'Jiangsu', 1),
(701, 44, 'JX', 'Jiangxi', 1),
(702, 44, 'JL', 'Jilin', 1),
(703, 44, 'LI', 'Liaoning', 1),
(704, 44, 'MA', 'Macau', 1),
(705, 44, 'NI', 'Ningxia', 1),
(706, 44, 'SH', 'Shaanxi', 1),
(707, 44, 'SA', 'Shandong', 1),
(708, 44, 'SG', 'Shanghai', 1),
(709, 44, 'SX', 'Shanxi', 1),
(710, 44, 'SI', 'Sichuan', 1),
(711, 44, 'TI', 'Tianjin', 1),
(712, 44, 'XI', 'Xinjiang', 1),
(713, 44, 'YU', 'Yunnan', 1),
(714, 44, 'ZH', 'Zhejiang', 1),
(715, 46, 'D', 'Direction Island', 1),
(716, 46, 'H', 'Home Island', 1),
(717, 46, 'O', 'Horsburgh Island', 1),
(718, 46, 'S', 'South Island', 1),
(719, 46, 'W', 'West Island', 1),
(720, 47, 'AMZ', 'Amazonas', 1),
(721, 47, 'ANT', 'Antioquia', 1),
(722, 47, 'ARA', 'Arauca', 1),
(723, 47, 'ATL', 'Atlantico', 1),
(724, 47, 'BDC', 'Bogota D.C.', 1),
(725, 47, 'BOL', 'Bolivar', 1),
(726, 47, 'BOY', 'Boyaca', 1),
(727, 47, 'CAL', 'Caldas', 1),
(728, 47, 'CAQ', 'Caqueta', 1),
(729, 47, 'CAS', 'Casanare', 1),
(730, 47, 'CAU', 'Cauca', 1),
(731, 47, 'CES', 'Cesar', 1),
(732, 47, 'CHO', 'Choco', 1),
(733, 47, 'COR', 'Cordoba', 1),
(734, 47, 'CAM', 'Cundinamarca', 1),
(735, 47, 'GNA', 'Guainia', 1),
(736, 47, 'GJR', 'Guajira', 1),
(737, 47, 'GVR', 'Guaviare', 1),
(738, 47, 'HUI', 'Huila', 1),
(739, 47, 'MAG', 'Magdalena', 1),
(740, 47, 'MET', 'Meta', 1),
(741, 47, 'NAR', 'Narino', 1),
(742, 47, 'NDS', 'Norte de Santander', 1),
(743, 47, 'PUT', 'Putumayo', 1),
(744, 47, 'QUI', 'Quindio', 1),
(745, 47, 'RIS', 'Risaralda', 1),
(746, 47, 'SAP', 'San Andres y Providencia', 1),
(747, 47, 'SAN', 'Santander', 1),
(748, 47, 'SUC', 'Sucre', 1),
(749, 47, 'TOL', 'Tolima', 1),
(750, 47, 'VDC', 'Valle del Cauca', 1),
(751, 47, 'VAU', 'Vaupes', 1),
(752, 47, 'VIC', 'Vichada', 1),
(753, 48, 'G', 'Grande Comore', 1),
(754, 48, 'A', 'Anjouan', 1),
(755, 48, 'M', 'Moheli', 1),
(756, 49, 'BO', 'Bouenza', 1),
(757, 49, 'BR', 'Brazzaville', 1),
(758, 49, 'CU', 'Cuvette', 1),
(759, 49, 'CO', 'Cuvette-Ouest', 1),
(760, 49, 'KO', 'Kouilou', 1),
(761, 49, 'LE', 'Lekoumou', 1),
(762, 49, 'LI', 'Likouala', 1),
(763, 49, 'NI', 'Niari', 1),
(764, 49, 'PL', 'Plateaux', 1),
(765, 49, 'PO', 'Pool', 1),
(766, 49, 'SA', 'Sangha', 1),
(767, 50, 'PU', 'Pukapuka', 1),
(768, 50, 'RK', 'Rakahanga', 1),
(769, 50, 'MK', 'Manihiki', 1),
(770, 50, 'PE', 'Penrhyn', 1),
(771, 50, 'NI', 'Nassau Island', 1),
(772, 50, 'SU', 'Surwarrow', 1),
(773, 50, 'PA', 'Palmerston', 1),
(774, 50, 'AI', 'Aitutaki', 1),
(775, 50, 'MA', 'Manuae', 1),
(776, 50, 'TA', 'Takutea', 1),
(777, 50, 'MT', 'Mitiaro', 1),
(778, 50, 'AT', 'Atiu', 1),
(779, 50, 'MU', 'Mauke', 1),
(780, 50, 'RR', 'Rarotonga', 1),
(781, 50, 'MG', 'Mangaia', 1),
(782, 51, 'AL', 'Alajuela', 1),
(783, 51, 'CA', 'Cartago', 1),
(784, 51, 'GU', 'Guanacaste', 1),
(785, 51, 'HE', 'Heredia', 1),
(786, 51, 'LI', 'Limon', 1),
(787, 51, 'PU', 'Puntarenas', 1),
(788, 51, 'SJ', 'San Jose', 1),
(789, 52, 'ABE', 'Abengourou', 1),
(790, 52, 'ABI', 'Abidjan', 1),
(791, 52, 'ABO', 'Aboisso', 1),
(792, 52, 'ADI', 'Adiake', 1),
(793, 52, 'ADZ', 'Adzope', 1),
(794, 52, 'AGB', 'Agboville', 1),
(795, 52, 'AGN', 'Agnibilekrou', 1),
(796, 52, 'ALE', 'Alepe', 1),
(797, 52, 'BOC', 'Bocanda', 1),
(798, 52, 'BAN', 'Bangolo', 1),
(799, 52, 'BEO', 'Beoumi', 1),
(800, 52, 'BIA', 'Biankouma', 1),
(801, 52, 'BDK', 'Bondoukou', 1),
(802, 52, 'BGN', 'Bongouanou', 1),
(803, 52, 'BFL', 'Bouafle', 1),
(804, 52, 'BKE', 'Bouake', 1),
(805, 52, 'BNA', 'Bouna', 1),
(806, 52, 'BDL', 'Boundiali', 1),
(807, 52, 'DKL', 'Dabakala', 1),
(808, 52, 'DBU', 'Dabou', 1),
(809, 52, 'DAL', 'Daloa', 1),
(810, 52, 'DAN', 'Danane', 1),
(811, 52, 'DAO', 'Daoukro', 1),
(812, 52, 'DIM', 'Dimbokro', 1),
(813, 52, 'DIV', 'Divo', 1),
(814, 52, 'DUE', 'Duekoue', 1),
(815, 52, 'FER', 'Ferkessedougou', 1),
(816, 52, 'GAG', 'Gagnoa', 1),
(817, 52, 'GBA', 'Grand-Bassam', 1),
(818, 52, 'GLA', 'Grand-Lahou', 1),
(819, 52, 'GUI', 'Guiglo', 1),
(820, 52, 'ISS', 'Issia', 1),
(821, 52, 'JAC', 'Jacqueville', 1),
(822, 52, 'KAT', 'Katiola', 1),
(823, 52, 'KOR', 'Korhogo', 1),
(824, 52, 'LAK', 'Lakota', 1),
(825, 52, 'MAN', 'Man', 1),
(826, 52, 'MKN', 'Mankono', 1),
(827, 52, 'MBA', 'Mbahiakro', 1),
(828, 52, 'ODI', 'Odienne', 1),
(829, 52, 'OUM', 'Oume', 1),
(830, 52, 'SAK', 'Sakassou', 1),
(831, 52, 'SPE', 'San-Pedro', 1),
(832, 52, 'SAS', 'Sassandra', 1),
(833, 52, 'SEG', 'Seguela', 1),
(834, 52, 'SIN', 'Sinfra', 1),
(835, 52, 'SOU', 'Soubre', 1),
(836, 52, 'TAB', 'Tabou', 1),
(837, 52, 'TAN', 'Tanda', 1),
(838, 52, 'TIE', 'Tiebissou', 1),
(839, 52, 'TIN', 'Tingrela', 1),
(840, 52, 'TIA', 'Tiassale', 1),
(841, 52, 'TBA', 'Touba', 1),
(842, 52, 'TLP', 'Toulepleu', 1),
(843, 52, 'TMD', 'Toumodi', 1),
(844, 52, 'VAV', 'Vavoua', 1),
(845, 52, 'YAM', 'Yamoussoukro', 1),
(846, 52, 'ZUE', 'Zuenoula', 1),
(847, 53, 'BB', 'Bjelovar-Bilogora', 1),
(848, 53, 'CZ', 'City of Zagreb', 1),
(849, 53, 'DN', 'Dubrovnik-Neretva', 1),
(850, 53, 'IS', 'Istra', 1),
(851, 53, 'KA', 'Karlovac', 1),
(852, 53, 'KK', 'Koprivnica-Krizevci', 1),
(853, 53, 'KZ', 'Krapina-Zagorje', 1),
(854, 53, 'LS', 'Lika-Senj', 1),
(855, 53, 'ME', 'Medimurje', 1),
(856, 53, 'OB', 'Osijek-Baranja', 1),
(857, 53, 'PS', 'Pozega-Slavonia', 1),
(858, 53, 'PG', 'Primorje-Gorski Kotar', 1),
(859, 53, 'SI', 'Sibenik', 1),
(860, 53, 'SM', 'Sisak-Moslavina', 1),
(861, 53, 'SB', 'Slavonski Brod-Posavina', 1),
(862, 53, 'SD', 'Split-Dalmatia', 1),
(863, 53, 'VA', 'Varazdin', 1),
(864, 53, 'VP', 'Virovitica-Podravina', 1),
(865, 53, 'VS', 'Vukovar-Srijem', 1),
(866, 53, 'ZK', 'Zadar-Knin', 1),
(867, 53, 'ZA', 'Zagreb', 1),
(868, 54, 'CA', 'Camaguey', 1),
(869, 54, 'CD', 'Ciego de Avila', 1),
(870, 54, 'CI', 'Cienfuegos', 1),
(871, 54, 'CH', 'Ciudad de La Habana', 1),
(872, 54, 'GR', 'Granma', 1),
(873, 54, 'GU', 'Guantanamo', 1),
(874, 54, 'HO', 'Holguin', 1),
(875, 54, 'IJ', 'Isla de la Juventud', 1),
(876, 54, 'LH', 'La Habana', 1),
(877, 54, 'LT', 'Las Tunas', 1),
(878, 54, 'MA', 'Matanzas', 1),
(879, 54, 'PR', 'Pinar del Rio', 1),
(880, 54, 'SS', 'Sancti Spiritus', 1),
(881, 54, 'SC', 'Santiago de Cuba', 1),
(882, 54, 'VC', 'Villa Clara', 1),
(883, 55, 'F', 'Famagusta', 1),
(884, 55, 'K', 'Kyrenia', 1),
(885, 55, 'A', 'Larnaca', 1),
(886, 55, 'I', 'Limassol', 1),
(887, 55, 'N', 'Nicosia', 1),
(888, 55, 'P', 'Paphos', 1),
(889, 56, 'U', 'Ustecky', 1),
(890, 56, 'C', 'Jihocesky', 1),
(891, 56, 'B', 'Jihomoravsky', 1),
(892, 56, 'K', 'Karlovarsky', 1),
(893, 56, 'H', 'Kralovehradecky', 1),
(894, 56, 'L', 'Liberecky', 1),
(895, 56, 'T', 'Moravskoslezsky', 1),
(896, 56, 'M', 'Olomoucky', 1),
(897, 56, 'E', 'Pardubicky', 1),
(898, 56, 'P', 'Plzensky', 1),
(899, 56, 'A', 'Praha', 1),
(900, 56, 'S', 'Stredocesky', 1),
(901, 56, 'J', 'Vysocina', 1),
(902, 56, 'Z', 'Zlinsky', 1),
(903, 57, 'HS', 'Hovedstaden', 1),
(904, 57, 'MJ', 'Midtjylland', 1),
(905, 57, 'ND', 'Nordjylland', 1),
(906, 57, 'SL', 'Sjælland', 1),
(907, 57, 'SD', 'Syddanmark', 1),
(908, 57, 'FO', 'Faroe Islands', 1),
(909, 57, 'GL', 'Greenland', 1),
(919, 58, 'S', '''Ali Sabih', 1),
(920, 58, 'K', 'Dikhil', 1),
(921, 58, 'J', 'Djibouti', 1),
(922, 58, 'O', 'Obock', 1),
(923, 58, 'T', 'Tadjoura', 1),
(924, 59, 'AND', 'Saint Andrew Parish', 1),
(925, 59, 'DAV', 'Saint David Parish', 1),
(926, 59, 'GEO', 'Saint George Parish', 1),
(927, 59, 'JOH', 'Saint John Parish', 1),
(928, 59, 'JOS', 'Saint Joseph Parish', 1),
(929, 59, 'LUK', 'Saint Luke Parish', 1),
(930, 59, 'MAR', 'Saint Mark Parish', 1),
(931, 59, 'PAT', 'Saint Patrick Parish', 1),
(932, 59, 'PAU', 'Saint Paul Parish', 1),
(933, 59, 'PET', 'Saint Peter Parish', 1),
(934, 60, 'DN', 'Distrito Nacional', 1),
(935, 60, 'AZ', 'Azua', 1),
(936, 60, 'BC', 'Baoruco', 1),
(937, 60, 'BH', 'Barahona', 1),
(938, 60, 'DJ', 'Dajabon', 1),
(939, 60, 'DU', 'Duarte', 1),
(940, 60, 'EL', 'Elias Pina', 1),
(941, 60, 'SY', 'El Seybo', 1),
(942, 60, 'ET', 'Espaillat', 1),
(943, 60, 'HM', 'Hato Mayor', 1),
(944, 60, 'IN', 'Independencia', 1),
(945, 60, 'AL', 'La Altagracia', 1),
(946, 60, 'RO', 'La Romana', 1),
(947, 60, 'VE', 'La Vega', 1),
(948, 60, 'MT', 'Maria Trinidad Sanchez', 1),
(949, 60, 'MN', 'Monsenor Nouel', 1),
(950, 60, 'MC', 'Monte Cristi', 1),
(951, 60, 'MP', 'Monte Plata', 1),
(952, 60, 'PD', 'Pedernales', 1),
(953, 60, 'PR', 'Peravia (Bani)', 1),
(954, 60, 'PP', 'Puerto Plata', 1),
(955, 60, 'SL', 'Salcedo', 1),
(956, 60, 'SM', 'Samana', 1),
(957, 60, 'SH', 'Sanchez Ramirez', 1),
(958, 60, 'SC', 'San Cristobal', 1),
(959, 60, 'JO', 'San Jose de Ocoa', 1),
(960, 60, 'SJ', 'San Juan', 1),
(961, 60, 'PM', 'San Pedro de Macoris', 1),
(962, 60, 'SA', 'Santiago', 1),
(963, 60, 'ST', 'Santiago Rodriguez', 1),
(964, 60, 'SD', 'Santo Domingo', 1),
(965, 60, 'VA', 'Valverde', 1),
(966, 61, 'AL', 'Aileu', 1),
(967, 61, 'AN', 'Ainaro', 1),
(968, 61, 'BA', 'Baucau', 1),
(969, 61, 'BO', 'Bobonaro', 1),
(970, 61, 'CO', 'Cova Lima', 1),
(971, 61, 'DI', 'Dili', 1),
(972, 61, 'ER', 'Ermera', 1),
(973, 61, 'LA', 'Lautem', 1),
(974, 61, 'LI', 'Liquica', 1),
(975, 61, 'MT', 'Manatuto', 1),
(976, 61, 'MF', 'Manufahi', 1),
(977, 61, 'OE', 'Oecussi', 1),
(978, 61, 'VI', 'Viqueque', 1),
(979, 62, 'AZU', 'Azuay', 1),
(980, 62, 'BOL', 'Bolivar', 1),
(981, 62, 'CAN', 'Ca&ntilde;ar', 1),
(982, 62, 'CAR', 'Carchi', 1),
(983, 62, 'CHI', 'Chimborazo', 1),
(984, 62, 'COT', 'Cotopaxi', 1),
(985, 62, 'EOR', 'El Oro', 1),
(986, 62, 'ESM', 'Esmeraldas', 1),
(987, 62, 'GPS', 'Gal&aacute;pagos', 1),
(988, 62, 'GUA', 'Guayas', 1),
(989, 62, 'IMB', 'Imbabura', 1),
(990, 62, 'LOJ', 'Loja', 1),
(991, 62, 'LRO', 'Los Rios', 1),
(992, 62, 'MAN', 'Manab&iacute;', 1),
(993, 62, 'MSA', 'Morona Santiago', 1),
(994, 62, 'NAP', 'Napo', 1),
(995, 62, 'ORE', 'Orellana', 1),
(996, 62, 'PAS', 'Pastaza', 1),
(997, 62, 'PIC', 'Pichincha', 1),
(998, 62, 'SUC', 'Sucumb&iacute;os', 1),
(999, 62, 'TUN', 'Tungurahua', 1),
(1000, 62, 'ZCH', 'Zamora Chinchipe', 1),
(1001, 63, 'DHY', 'Ad Daqahliyah', 1),
(1002, 63, 'BAM', 'Al Bahr al Ahmar', 1),
(1003, 63, 'BHY', 'Al Buhayrah', 1),
(1004, 63, 'FYM', 'Al Fayyum', 1),
(1005, 63, 'GBY', 'Al Gharbiyah', 1),
(1006, 63, 'IDR', 'Al Iskandariyah', 1),
(1007, 63, 'IML', 'Al Isma''iliyah', 1),
(1008, 63, 'JZH', 'Al Jizah', 1),
(1009, 63, 'MFY', 'Al Minufiyah', 1),
(1010, 63, 'MNY', 'Al Minya', 1),
(1011, 63, 'QHR', 'Al Qahirah', 1),
(1012, 63, 'QLY', 'Al Qalyubiyah', 1),
(1013, 63, 'WJD', 'Al Wadi al Jadid', 1),
(1014, 63, 'SHQ', 'Ash Sharqiyah', 1),
(1015, 63, 'SWY', 'As Suways', 1),
(1016, 63, 'ASW', 'Aswan', 1),
(1017, 63, 'ASY', 'Asyut', 1),
(1018, 63, 'BSW', 'Bani Suwayf', 1),
(1019, 63, 'BSD', 'Bur Sa''id', 1),
(1020, 63, 'DMY', 'Dumyat', 1),
(1021, 63, 'JNS', 'Janub Sina''', 1),
(1022, 63, 'KSH', 'Kafr ash Shaykh', 1),
(1023, 63, 'MAT', 'Matruh', 1),
(1024, 63, 'QIN', 'Qina', 1),
(1025, 63, 'SHS', 'Shamal Sina''', 1),
(1026, 63, 'SUH', 'Suhaj', 1),
(1027, 64, 'AH', 'Ahuachapan', 1),
(1028, 64, 'CA', 'Cabanas', 1),
(1029, 64, 'CH', 'Chalatenango', 1),
(1030, 64, 'CU', 'Cuscatlan', 1),
(1031, 64, 'LB', 'La Libertad', 1),
(1032, 64, 'PZ', 'La Paz', 1),
(1033, 64, 'UN', 'La Union', 1),
(1034, 64, 'MO', 'Morazan', 1),
(1035, 64, 'SM', 'San Miguel', 1),
(1036, 64, 'SS', 'San Salvador', 1),
(1037, 64, 'SV', 'San Vicente', 1),
(1038, 64, 'SA', 'Santa Ana', 1),
(1039, 64, 'SO', 'Sonsonate', 1),
(1040, 64, 'US', 'Usulutan', 1),
(1041, 65, 'AN', 'Provincia Annobon', 1),
(1042, 65, 'BN', 'Provincia Bioko Norte', 1),
(1043, 65, 'BS', 'Provincia Bioko Sur', 1),
(1044, 65, 'CS', 'Provincia Centro Sur', 1),
(1045, 65, 'KN', 'Provincia Kie-Ntem', 1),
(1046, 65, 'LI', 'Provincia Litoral', 1),
(1047, 65, 'WN', 'Provincia Wele-Nzas', 1),
(1048, 66, 'MA', 'Central (Maekel)', 1),
(1049, 66, 'KE', 'Anseba (Keren)', 1),
(1050, 66, 'DK', 'Southern Red Sea (Debub-Keih-Bahri)', 1),
(1051, 66, 'SK', 'Northern Red Sea (Semien-Keih-Bahri)', 1),
(1052, 66, 'DE', 'Southern (Debub)', 1),
(1053, 66, 'BR', 'Gash-Barka (Barentu)', 1),
(1054, 67, 'HA', 'Harjumaa (Tallinn)', 1),
(1055, 67, 'HI', 'Hiiumaa (Kardla)', 1),
(1056, 67, 'IV', 'Ida-Virumaa (Johvi)', 1),
(1057, 67, 'JA', 'Jarvamaa (Paide)', 1),
(1058, 67, 'JO', 'Jogevamaa (Jogeva)', 1),
(1059, 67, 'LV', 'Laane-Virumaa (Rakvere)', 1),
(1060, 67, 'LA', 'Laanemaa (Haapsalu)', 1),
(1061, 67, 'PA', 'Parnumaa (Parnu)', 1),
(1062, 67, 'PO', 'Polvamaa (Polva)', 1),
(1063, 67, 'RA', 'Raplamaa (Rapla)', 1),
(1064, 67, 'SA', 'Saaremaa (Kuessaare)', 1),
(1065, 67, 'TA', 'Tartumaa (Tartu)', 1),
(1066, 67, 'VA', 'Valgamaa (Valga)', 1),
(1067, 67, 'VI', 'Viljandimaa (Viljandi)', 1),
(1068, 67, 'VO', 'Vorumaa (Voru)', 1),
(1069, 68, 'AF', 'Afar', 1),
(1070, 68, 'AH', 'Amhara', 1),
(1071, 68, 'BG', 'Benishangul-Gumaz', 1),
(1072, 68, 'GB', 'Gambela', 1),
(1073, 68, 'HR', 'Hariai', 1),
(1074, 68, 'OR', 'Oromia', 1),
(1075, 68, 'SM', 'Somali', 1),
(1076, 68, 'SN', 'Southern Nations - Nationalities and Peoples Region', 1),
(1077, 68, 'TG', 'Tigray', 1),
(1078, 68, 'AA', 'Addis Ababa', 1),
(1079, 68, 'DD', 'Dire Dawa', 1),
(1080, 71, 'C', 'Central Division', 1),
(1081, 71, 'N', 'Northern Division', 1),
(1082, 71, 'E', 'Eastern Division', 1),
(1083, 71, 'W', 'Western Division', 1),
(1084, 71, 'R', 'Rotuma', 1),
(1085, 72, 'AL', 'Ahvenanmaan Laani', 1),
(1086, 72, 'ES', 'Etela-Suomen Laani', 1),
(1087, 72, 'IS', 'Ita-Suomen Laani', 1),
(1088, 72, 'LS', 'Lansi-Suomen Laani', 1),
(1089, 72, 'LA', 'Lapin Lanani', 1),
(1090, 72, 'OU', 'Oulun Laani', 1),
(1091, 73, 'AL', 'Alsace', 1),
(1092, 73, 'AQ', 'Aquitaine', 1),
(1093, 73, 'AU', 'Auvergne', 1),
(1094, 73, 'BR', 'Brittany', 1),
(1095, 73, 'BU', 'Burgundy', 1),
(1096, 73, 'CE', 'Center Loire Valley', 1),
(1097, 73, 'CH', 'Champagne', 1),
(1098, 73, 'CO', 'Corse', 1),
(1099, 73, 'FR', 'France Comte', 1),
(1100, 73, 'LA', 'Languedoc Roussillon', 1),
(1101, 73, 'LI', 'Limousin', 1),
(1102, 73, 'LO', 'Lorraine', 1),
(1103, 73, 'MI', 'Midi Pyrenees', 1),
(1104, 73, 'NO', 'Nord Pas de Calais', 1),
(1105, 73, 'NR', 'Normandy', 1),
(1106, 73, 'PA', 'Paris / Ill de France', 1),
(1107, 73, 'PI', 'Picardie', 1),
(1108, 73, 'PO', 'Poitou Charente', 1),
(1109, 73, 'PR', 'Provence', 1),
(1110, 73, 'RH', 'Rhone Alps', 1),
(1111, 73, 'RI', 'Riviera', 1),
(1112, 73, 'WE', 'Western Loire Valley', 1),
(1113, 74, 'Et', 'Etranger', 1),
(1114, 74, '01', 'Ain', 1),
(1115, 74, '02', 'Aisne', 1),
(1116, 74, '03', 'Allier', 1),
(1117, 74, '04', 'Alpes de Haute Provence', 1),
(1118, 74, '05', 'Hautes-Alpes', 1),
(1119, 74, '06', 'Alpes Maritimes', 1),
(1120, 74, '07', 'Ard&egrave;che', 1),
(1121, 74, '08', 'Ardennes', 1),
(1122, 74, '09', 'Ari&egrave;ge', 1),
(1123, 74, '10', 'Aube', 1),
(1124, 74, '11', 'Aude', 1),
(1125, 74, '12', 'Aveyron', 1),
(1126, 74, '13', 'Bouches du Rh&ocirc;ne', 1),
(1127, 74, '14', 'Calvados', 1),
(1128, 74, '15', 'Cantal', 1),
(1129, 74, '16', 'Charente', 1),
(1130, 74, '17', 'Charente Maritime', 1),
(1131, 74, '18', 'Cher', 1),
(1132, 74, '19', 'Corr&egrave;ze', 1),
(1133, 74, '2A', 'Corse du Sud', 1),
(1134, 74, '2B', 'Haute Corse', 1),
(1135, 74, '21', 'C&ocirc;te d&#039;or', 1),
(1136, 74, '22', 'C&ocirc;tes d&#039;Armor', 1),
(1137, 74, '23', 'Creuse', 1),
(1138, 74, '24', 'Dordogne', 1),
(1139, 74, '25', 'Doubs', 1),
(1140, 74, '26', 'Dr&ocirc;me', 1),
(1141, 74, '27', 'Eure', 1),
(1142, 74, '28', 'Eure et Loir', 1),
(1143, 74, '29', 'Finist&egrave;re', 1),
(1144, 74, '30', 'Gard', 1),
(1145, 74, '31', 'Haute Garonne', 1),
(1146, 74, '32', 'Gers', 1),
(1147, 74, '33', 'Gironde', 1),
(1148, 74, '34', 'H&eacute;rault', 1),
(1149, 74, '35', 'Ille et Vilaine', 1),
(1150, 74, '36', 'Indre', 1),
(1151, 74, '37', 'Indre et Loire', 1),
(1152, 74, '38', 'Is&eacute;re', 1),
(1153, 74, '39', 'Jura', 1),
(1154, 74, '40', 'Landes', 1),
(1155, 74, '41', 'Loir et Cher', 1),
(1156, 74, '42', 'Loire', 1),
(1157, 74, '43', 'Haute Loire', 1),
(1158, 74, '44', 'Loire Atlantique', 1),
(1159, 74, '45', 'Loiret', 1),
(1160, 74, '46', 'Lot', 1),
(1161, 74, '47', 'Lot et Garonne', 1),
(1162, 74, '48', 'Loz&egrave;re', 1),
(1163, 74, '49', 'Maine et Loire', 1),
(1164, 74, '50', 'Manche', 1),
(1165, 74, '51', 'Marne', 1),
(1166, 74, '52', 'Haute Marne', 1),
(1167, 74, '53', 'Mayenne', 1),
(1168, 74, '54', 'Meurthe et Moselle', 1),
(1169, 74, '55', 'Meuse', 1),
(1170, 74, '56', 'Morbihan', 1),
(1171, 74, '57', 'Moselle', 1),
(1172, 74, '58', 'Ni&egrave;vre', 1),
(1173, 74, '59', 'Nord', 1),
(1174, 74, '60', 'Oise', 1),
(1175, 74, '61', 'Orne', 1),
(1176, 74, '62', 'Pas de Calais', 1),
(1177, 74, '63', 'Puy de D&ocirc;me', 1),
(1178, 74, '64', 'Pyr&eacute;n&eacute;es Atlantiques', 1),
(1179, 74, '65', 'Hautes Pyr&eacute;n&eacute;es', 1),
(1180, 74, '66', 'Pyr&eacute;n&eacute;es Orientales', 1),
(1181, 74, '67', 'Bas Rhin', 1),
(1182, 74, '68', 'Haut Rhin', 1),
(1183, 74, '69', 'Rh&ocirc;ne', 1),
(1184, 74, '70', 'Haute Sa&ocirc;ne', 1),
(1185, 74, '71', 'Sa&ocirc;ne et Loire', 1),
(1186, 74, '72', 'Sarthe', 1),
(1187, 74, '73', 'Savoie', 1),
(1188, 74, '74', 'Haute Savoie', 1),
(1189, 74, '75', 'Paris', 1),
(1190, 74, '76', 'Seine Maritime', 1),
(1191, 74, '77', 'Seine et Marne', 1),
(1192, 74, '78', 'Yvelines', 1),
(1193, 74, '79', 'Deux S&egrave;vres', 1),
(1194, 74, '80', 'Somme', 1),
(1195, 74, '81', 'Tarn', 1),
(1196, 74, '82', 'Tarn et Garonne', 1),
(1197, 74, '83', 'Var', 1),
(1198, 74, '84', 'Vaucluse', 1),
(1199, 74, '85', 'Vend&eacute;e', 1),
(1200, 74, '86', 'Vienne', 1),
(1201, 74, '87', 'Haute Vienne', 1),
(1202, 74, '88', 'Vosges', 1),
(1203, 74, '89', 'Yonne', 1),
(1204, 74, '90', 'Territoire de Belfort', 1),
(1205, 74, '91', 'Essonne', 1),
(1206, 74, '92', 'Hauts de Seine', 1),
(1207, 74, '93', 'Seine St-Denis', 1),
(1208, 74, '94', 'Val de Marne', 1),
(1209, 74, '95', 'Val d''Oise', 1),
(1210, 76, 'M', 'Archipel des Marquises', 1),
(1211, 76, 'T', 'Archipel des Tuamotu', 1),
(1212, 76, 'I', 'Archipel des Tubuai', 1),
(1213, 76, 'V', 'Iles du Vent', 1),
(1214, 76, 'S', 'Iles Sous-le-Vent', 1),
(1215, 77, 'C', 'Iles Crozet', 1),
(1216, 77, 'K', 'Iles Kerguelen', 1),
(1217, 77, 'A', 'Ile Amsterdam', 1),
(1218, 77, 'P', 'Ile Saint-Paul', 1),
(1219, 77, 'D', 'Adelie Land', 1),
(1220, 78, 'ES', 'Estuaire', 1),
(1221, 78, 'HO', 'Haut-Ogooue', 1),
(1222, 78, 'MO', 'Moyen-Ogooue', 1),
(1223, 78, 'NG', 'Ngounie', 1),
(1224, 78, 'NY', 'Nyanga', 1),
(1225, 78, 'OI', 'Ogooue-Ivindo', 1),
(1226, 78, 'OL', 'Ogooue-Lolo', 1),
(1227, 78, 'OM', 'Ogooue-Maritime', 1),
(1228, 78, 'WN', 'Woleu-Ntem', 1),
(1229, 79, 'BJ', 'Banjul', 1),
(1230, 79, 'BS', 'Basse', 1),
(1231, 79, 'BR', 'Brikama', 1),
(1232, 79, 'JA', 'Janjangbure', 1),
(1233, 79, 'KA', 'Kanifeng', 1),
(1234, 79, 'KE', 'Kerewan', 1),
(1235, 79, 'KU', 'Kuntaur', 1),
(1236, 79, 'MA', 'Mansakonko', 1),
(1237, 79, 'LR', 'Lower River', 1),
(1238, 79, 'CR', 'Central River', 1),
(1239, 79, 'NB', 'North Bank', 1),
(1240, 79, 'UR', 'Upper River', 1),
(1241, 79, 'WE', 'Western', 1),
(1242, 80, 'AB', 'Abkhazia', 1),
(1243, 80, 'AJ', 'Ajaria', 1),
(1244, 80, 'TB', 'Tbilisi', 1),
(1245, 80, 'GU', 'Guria', 1),
(1246, 80, 'IM', 'Imereti', 1),
(1247, 80, 'KA', 'Kakheti', 1),
(1248, 80, 'KK', 'Kvemo Kartli', 1),
(1249, 80, 'MM', 'Mtskheta-Mtianeti', 1),
(1250, 80, 'RL', 'Racha Lechkhumi and Kvemo Svanet', 1),
(1251, 80, 'SZ', 'Samegrelo-Zemo Svaneti', 1),
(1252, 80, 'SJ', 'Samtskhe-Javakheti', 1),
(1253, 80, 'SK', 'Shida Kartli', 1),
(1254, 81, 'BAW', 'Baden-W&uuml;rttemberg', 1),
(1255, 81, 'BAY', 'Bayern', 1),
(1256, 81, 'BER', 'Berlin', 1),
(1257, 81, 'BRG', 'Brandenburg', 1),
(1258, 81, 'BRE', 'Bremen', 1),
(1259, 81, 'HAM', 'Hamburg', 1),
(1260, 81, 'HES', 'Hessen', 1),
(1261, 81, 'MEC', 'Mecklenburg-Vorpommern', 1),
(1262, 81, 'NDS', 'Niedersachsen', 1),
(1263, 81, 'NRW', 'Nordrhein-Westfalen', 1),
(1264, 81, 'RHE', 'Rheinland-Pfalz', 1),
(1265, 81, 'SAR', 'Saarland', 1),
(1266, 81, 'SAS', 'Sachsen', 1),
(1267, 81, 'SAC', 'Sachsen-Anhalt', 1),
(1268, 81, 'SCN', 'Schleswig-Holstein', 1),
(1269, 81, 'THE', 'Th&uuml;ringen', 1),
(1270, 82, 'AS', 'Ashanti Region', 1),
(1271, 82, 'BA', 'Brong-Ahafo Region', 1),
(1272, 82, 'CE', 'Central Region', 1),
(1273, 82, 'EA', 'Eastern Region', 1),
(1274, 82, 'GA', 'Greater Accra Region', 1),
(1275, 82, 'NO', 'Northern Region', 1),
(1276, 82, 'UE', 'Upper East Region', 1),
(1277, 82, 'UW', 'Upper West Region', 1),
(1278, 82, 'VO', 'Volta Region', 1),
(1279, 82, 'WE', 'Western Region', 1),
(1280, 84, 'AT', 'Attica', 1),
(1281, 84, 'CN', 'Central Greece', 1),
(1282, 84, 'CM', 'Central Macedonia', 1),
(1283, 84, 'CR', 'Crete', 1),
(1284, 84, 'EM', 'East Macedonia and Thrace', 1),
(1285, 84, 'EP', 'Epirus', 1),
(1286, 84, 'II', 'Ionian Islands', 1),
(1287, 84, 'NA', 'North Aegean', 1),
(1288, 84, 'PP', 'Peloponnesos', 1),
(1289, 84, 'SA', 'South Aegean', 1),
(1290, 84, 'TH', 'Thessaly', 1),
(1291, 84, 'WG', 'West Greece', 1),
(1292, 84, 'WM', 'West Macedonia', 1),
(1293, 85, 'A', 'Avannaa', 1),
(1294, 85, 'T', 'Tunu', 1),
(1295, 85, 'K', 'Kitaa', 1),
(1296, 86, 'A', 'Saint Andrew', 1),
(1297, 86, 'D', 'Saint David', 1),
(1298, 86, 'G', 'Saint George', 1),
(1299, 86, 'J', 'Saint John', 1),
(1300, 86, 'M', 'Saint Mark', 1),
(1301, 86, 'P', 'Saint Patrick', 1),
(1302, 86, 'C', 'Carriacou', 1),
(1303, 86, 'Q', 'Petit Martinique', 1),
(1304, 89, 'AV', 'Alta Verapaz', 1),
(1305, 89, 'BV', 'Baja Verapaz', 1),
(1306, 89, 'CM', 'Chimaltenango', 1),
(1307, 89, 'CQ', 'Chiquimula', 1),
(1308, 89, 'PE', 'El Peten', 1),
(1309, 89, 'PR', 'El Progreso', 1),
(1310, 89, 'QC', 'El Quiche', 1),
(1311, 89, 'ES', 'Escuintla', 1),
(1312, 89, 'GU', 'Guatemala', 1),
(1313, 89, 'HU', 'Huehuetenango', 1),
(1314, 89, 'IZ', 'Izabal', 1),
(1315, 89, 'JA', 'Jalapa', 1),
(1316, 89, 'JU', 'Jutiapa', 1),
(1317, 89, 'QZ', 'Quetzaltenango', 1),
(1318, 89, 'RE', 'Retalhuleu', 1),
(1319, 89, 'ST', 'Sacatepequez', 1),
(1320, 89, 'SM', 'San Marcos', 1),
(1321, 89, 'SR', 'Santa Rosa', 1),
(1322, 89, 'SO', 'Solola', 1),
(1323, 89, 'SU', 'Suchitepequez', 1),
(1324, 89, 'TO', 'Totonicapan', 1),
(1325, 89, 'ZA', 'Zacapa', 1),
(1326, 90, 'CNK', 'Conakry', 1),
(1327, 90, 'BYL', 'Beyla', 1),
(1328, 90, 'BFA', 'Boffa', 1),
(1329, 90, 'BOK', 'Boke', 1),
(1330, 90, 'COY', 'Coyah', 1),
(1331, 90, 'DBL', 'Dabola', 1),
(1332, 90, 'DLB', 'Dalaba', 1),
(1333, 90, 'DGR', 'Dinguiraye', 1),
(1334, 90, 'DBR', 'Dubreka', 1),
(1335, 90, 'FRN', 'Faranah', 1),
(1336, 90, 'FRC', 'Forecariah', 1),
(1337, 90, 'FRI', 'Fria', 1),
(1338, 90, 'GAO', 'Gaoual', 1),
(1339, 90, 'GCD', 'Gueckedou', 1),
(1340, 90, 'KNK', 'Kankan', 1),
(1341, 90, 'KRN', 'Kerouane', 1),
(1342, 90, 'KND', 'Kindia', 1),
(1343, 90, 'KSD', 'Kissidougou', 1),
(1344, 90, 'KBA', 'Koubia', 1),
(1345, 90, 'KDA', 'Koundara', 1),
(1346, 90, 'KRA', 'Kouroussa', 1),
(1347, 90, 'LAB', 'Labe', 1),
(1348, 90, 'LLM', 'Lelouma', 1),
(1349, 90, 'LOL', 'Lola', 1),
(1350, 90, 'MCT', 'Macenta', 1),
(1351, 90, 'MAL', 'Mali', 1),
(1352, 90, 'MAM', 'Mamou', 1),
(1353, 90, 'MAN', 'Mandiana', 1),
(1354, 90, 'NZR', 'Nzerekore', 1),
(1355, 90, 'PIT', 'Pita', 1),
(1356, 90, 'SIG', 'Siguiri', 1),
(1357, 90, 'TLM', 'Telimele', 1),
(1358, 90, 'TOG', 'Tougue', 1),
(1359, 90, 'YOM', 'Yomou', 1),
(1360, 91, 'BF', 'Bafata Region', 1),
(1361, 91, 'BB', 'Biombo Region', 1),
(1362, 91, 'BS', 'Bissau Region', 1),
(1363, 91, 'BL', 'Bolama Region', 1),
(1364, 91, 'CA', 'Cacheu Region', 1),
(1365, 91, 'GA', 'Gabu Region', 1),
(1366, 91, 'OI', 'Oio Region', 1),
(1367, 91, 'QU', 'Quinara Region', 1),
(1368, 91, 'TO', 'Tombali Region', 1),
(1369, 92, 'BW', 'Barima-Waini', 1),
(1370, 92, 'CM', 'Cuyuni-Mazaruni', 1),
(1371, 92, 'DM', 'Demerara-Mahaica', 1),
(1372, 92, 'EC', 'East Berbice-Corentyne', 1),
(1373, 92, 'EW', 'Essequibo Islands-West Demerara', 1),
(1374, 92, 'MB', 'Mahaica-Berbice', 1),
(1375, 92, 'PM', 'Pomeroon-Supenaam', 1),
(1376, 92, 'PI', 'Potaro-Siparuni', 1),
(1377, 92, 'UD', 'Upper Demerara-Berbice', 1),
(1378, 92, 'UT', 'Upper Takutu-Upper Essequibo', 1),
(1379, 93, 'AR', 'Artibonite', 1),
(1380, 93, 'CE', 'Centre', 1),
(1381, 93, 'GA', 'Grand''Anse', 1),
(1382, 93, 'ND', 'Nord', 1),
(1383, 93, 'NE', 'Nord-Est', 1),
(1384, 93, 'NO', 'Nord-Ouest', 1),
(1385, 93, 'OU', 'Ouest', 1),
(1386, 93, 'SD', 'Sud', 1),
(1387, 93, 'SE', 'Sud-Est', 1),
(1388, 94, 'F', 'Flat Island', 1),
(1389, 94, 'M', 'McDonald Island', 1),
(1390, 94, 'S', 'Shag Island', 1),
(1391, 94, 'H', 'Heard Island', 1),
(1392, 95, 'AT', 'Atlantida', 1),
(1393, 95, 'CH', 'Choluteca', 1),
(1394, 95, 'CL', 'Colon', 1),
(1395, 95, 'CM', 'Comayagua', 1),
(1396, 95, 'CP', 'Copan', 1),
(1397, 95, 'CR', 'Cortes', 1),
(1398, 95, 'PA', 'El Paraiso', 1),
(1399, 95, 'FM', 'Francisco Morazan', 1),
(1400, 95, 'GD', 'Gracias a Dios', 1),
(1401, 95, 'IN', 'Intibuca', 1),
(1402, 95, 'IB', 'Islas de la Bahia (Bay Islands)', 1),
(1403, 95, 'PZ', 'La Paz', 1),
(1404, 95, 'LE', 'Lempira', 1),
(1405, 95, 'OC', 'Ocotepeque', 1),
(1406, 95, 'OL', 'Olancho', 1),
(1407, 95, 'SB', 'Santa Barbara', 1),
(1408, 95, 'VA', 'Valle', 1),
(1409, 95, 'YO', 'Yoro', 1),
(1410, 96, 'HCW', 'Central and Western Hong Kong Island', 1),
(1411, 96, 'HEA', 'Eastern Hong Kong Island', 1),
(1412, 96, 'HSO', 'Southern Hong Kong Island', 1),
(1413, 96, 'HWC', 'Wan Chai Hong Kong Island', 1),
(1414, 96, 'KKC', 'Kowloon City Kowloon', 1),
(1415, 96, 'KKT', 'Kwun Tong Kowloon', 1),
(1416, 96, 'KSS', 'Sham Shui Po Kowloon', 1),
(1417, 96, 'KWT', 'Wong Tai Sin Kowloon', 1),
(1418, 96, 'KYT', 'Yau Tsim Mong Kowloon', 1),
(1419, 96, 'NIS', 'Islands New Territories', 1),
(1420, 96, 'NKT', 'Kwai Tsing New Territories', 1),
(1421, 96, 'NNO', 'North New Territories', 1),
(1422, 96, 'NSK', 'Sai Kung New Territories', 1),
(1423, 96, 'NST', 'Sha Tin New Territories', 1),
(1424, 96, 'NTP', 'Tai Po New Territories', 1),
(1425, 96, 'NTW', 'Tsuen Wan New Territories', 1),
(1426, 96, 'NTM', 'Tuen Mun New Territories', 1),
(1427, 96, 'NYL', 'Yuen Long New Territories', 1),
(1428, 97, 'BK', 'Bacs-Kiskun', 1),
(1429, 97, 'BA', 'Baranya', 1),
(1430, 97, 'BE', 'Bekes', 1),
(1431, 97, 'BS', 'Bekescsaba', 1),
(1432, 97, 'BZ', 'Borsod-Abauj-Zemplen', 1),
(1433, 97, 'BU', 'Budapest', 1),
(1434, 97, 'CS', 'Csongrad', 1),
(1435, 97, 'DE', 'Debrecen', 1),
(1436, 97, 'DU', 'Dunaujvaros', 1),
(1437, 97, 'EG', 'Eger', 1),
(1438, 97, 'FE', 'Fejer', 1),
(1439, 97, 'GY', 'Gyor', 1),
(1440, 97, 'GM', 'Gyor-Moson-Sopron', 1),
(1441, 97, 'HB', 'Hajdu-Bihar', 1),
(1442, 97, 'HE', 'Heves', 1),
(1443, 97, 'HO', 'Hodmezovasarhely', 1),
(1444, 97, 'JN', 'Jasz-Nagykun-Szolnok', 1),
(1445, 97, 'KA', 'Kaposvar', 1),
(1446, 97, 'KE', 'Kecskemet', 1),
(1447, 97, 'KO', 'Komarom-Esztergom', 1),
(1448, 97, 'MI', 'Miskolc', 1),
(1449, 97, 'NA', 'Nagykanizsa', 1),
(1450, 97, 'NO', 'Nograd', 1),
(1451, 97, 'NY', 'Nyiregyhaza', 1),
(1452, 97, 'PE', 'Pecs', 1),
(1453, 97, 'PS', 'Pest', 1),
(1454, 97, 'SO', 'Somogy', 1),
(1455, 97, 'SP', 'Sopron', 1),
(1456, 97, 'SS', 'Szabolcs-Szatmar-Bereg', 1),
(1457, 97, 'SZ', 'Szeged', 1),
(1458, 97, 'SE', 'Szekesfehervar', 1),
(1459, 97, 'SL', 'Szolnok', 1),
(1460, 97, 'SM', 'Szombathely', 1),
(1461, 97, 'TA', 'Tatabanya', 1),
(1462, 97, 'TO', 'Tolna', 1),
(1463, 97, 'VA', 'Vas', 1),
(1464, 97, 'VE', 'Veszprem', 1),
(1465, 97, 'ZA', 'Zala', 1),
(1466, 97, 'ZZ', 'Zalaegerszeg', 1),
(1467, 98, 'AL', 'Austurland', 1),
(1468, 98, 'HF', 'Hofuoborgarsvaeoi', 1),
(1469, 98, 'NE', 'Norourland eystra', 1),
(1470, 98, 'NV', 'Norourland vestra', 1),
(1471, 98, 'SL', 'Suourland', 1),
(1472, 98, 'SN', 'Suournes', 1),
(1473, 98, 'VF', 'Vestfiroir', 1),
(1474, 98, 'VL', 'Vesturland', 1),
(1475, 99, 'AN', 'Andaman and Nicobar Islands', 1),
(1476, 99, 'AP', 'Andhra Pradesh', 1),
(1477, 99, 'AR', 'Arunachal Pradesh', 1),
(1478, 99, 'AS', 'Assam', 1),
(1479, 99, 'BI', 'Bihar', 1),
(1480, 99, 'CH', 'Chandigarh', 1),
(1481, 99, 'DA', 'Dadra and Nagar Haveli', 1),
(1482, 99, 'DM', 'Daman and Diu', 1),
(1483, 99, 'DE', 'Delhi', 1),
(1484, 99, 'GO', 'Goa', 1),
(1485, 99, 'GU', 'Gujarat', 1),
(1486, 99, 'HA', 'Haryana', 1),
(1487, 99, 'HP', 'Himachal Pradesh', 1),
(1488, 99, 'JA', 'Jammu and Kashmir', 1),
(1489, 99, 'KA', 'Karnataka', 1),
(1490, 99, 'KE', 'Kerala', 1),
(1491, 99, 'LI', 'Lakshadweep Islands', 1),
(1492, 99, 'MP', 'Madhya Pradesh', 1),
(1493, 99, 'MA', 'Maharashtra', 1),
(1494, 99, 'MN', 'Manipur', 1),
(1495, 99, 'ME', 'Meghalaya', 1),
(1496, 99, 'MI', 'Mizoram', 1),
(1497, 99, 'NA', 'Nagaland', 1),
(1498, 99, 'OR', 'Orissa', 1),
(1499, 99, 'PO', 'Pondicherry', 1),
(1500, 99, 'PU', 'Punjab', 1),
(1501, 99, 'RA', 'Rajasthan', 1),
(1502, 99, 'SI', 'Sikkim', 1),
(1503, 99, 'TN', 'Tamil Nadu', 1),
(1504, 99, 'TR', 'Tripura', 1),
(1505, 99, 'UP', 'Uttar Pradesh', 1),
(1506, 99, 'WB', 'West Bengal', 1),
(1507, 100, 'AC', 'Aceh', 1),
(1508, 100, 'BA', 'Bali', 1),
(1509, 100, 'BT', 'Banten', 1),
(1510, 100, 'BE', 'Bengkulu', 1),
(1511, 100, 'BD', 'BoDeTaBek', 1),
(1512, 100, 'GO', 'Gorontalo', 1),
(1513, 100, 'JK', 'Jakarta Raya', 1),
(1514, 100, 'JA', 'Jambi', 1),
(1515, 100, 'JB', 'Jawa Barat', 1),
(1516, 100, 'JT', 'Jawa Tengah', 1),
(1517, 100, 'JI', 'Jawa Timur', 1),
(1518, 100, 'KB', 'Kalimantan Barat', 1),
(1519, 100, 'KS', 'Kalimantan Selatan', 1),
(1520, 100, 'KT', 'Kalimantan Tengah', 1),
(1521, 100, 'KI', 'Kalimantan Timur', 1),
(1522, 100, 'BB', 'Kepulauan Bangka Belitung', 1),
(1523, 100, 'LA', 'Lampung', 1),
(1524, 100, 'MA', 'Maluku', 1),
(1525, 100, 'MU', 'Maluku Utara', 1),
(1526, 100, 'NB', 'Nusa Tenggara Barat', 1),
(1527, 100, 'NT', 'Nusa Tenggara Timur', 1),
(1528, 100, 'PA', 'Papua', 1),
(1529, 100, 'RI', 'Riau', 1),
(1530, 100, 'SN', 'Sulawesi Selatan', 1),
(1531, 100, 'ST', 'Sulawesi Tengah', 1),
(1532, 100, 'SG', 'Sulawesi Tenggara', 1),
(1533, 100, 'SA', 'Sulawesi Utara', 1),
(1534, 100, 'SB', 'Sumatera Barat', 1),
(1535, 100, 'SS', 'Sumatera Selatan', 1),
(1536, 100, 'SU', 'Sumatera Utara', 1),
(1537, 100, 'YO', 'Yogyakarta', 1),
(1538, 101, 'TEH', 'Tehran', 1),
(1539, 101, 'QOM', 'Qom', 1),
(1540, 101, 'MKZ', 'Markazi', 1),
(1541, 101, 'QAZ', 'Qazvin', 1),
(1542, 101, 'GIL', 'Gilan', 1),
(1543, 101, 'ARD', 'Ardabil', 1),
(1544, 101, 'ZAN', 'Zanjan', 1),
(1545, 101, 'EAZ', 'East Azarbaijan', 1),
(1546, 101, 'WEZ', 'West Azarbaijan', 1),
(1547, 101, 'KRD', 'Kurdistan', 1),
(1548, 101, 'HMD', 'Hamadan', 1),
(1549, 101, 'KRM', 'Kermanshah', 1),
(1550, 101, 'ILM', 'Ilam', 1);
INSERT INTO `t50hg_k2store_zones` (`zone_id`, `country_id`, `zone_code`, `zone_name`, `state`) VALUES
(1551, 101, 'LRS', 'Lorestan', 1),
(1552, 101, 'KZT', 'Khuzestan', 1),
(1553, 101, 'CMB', 'Chahar Mahaal and Bakhtiari', 1),
(1554, 101, 'KBA', 'Kohkiluyeh and Buyer Ahmad', 1),
(1555, 101, 'BSH', 'Bushehr', 1),
(1556, 101, 'FAR', 'Fars', 1),
(1557, 101, 'HRM', 'Hormozgan', 1),
(1558, 101, 'SBL', 'Sistan and Baluchistan', 1),
(1559, 101, 'KRB', 'Kerman', 1),
(1560, 101, 'YZD', 'Yazd', 1),
(1561, 101, 'EFH', 'Esfahan', 1),
(1562, 101, 'SMN', 'Semnan', 1),
(1563, 101, 'MZD', 'Mazandaran', 1),
(1564, 101, 'GLS', 'Golestan', 1),
(1565, 101, 'NKH', 'North Khorasan', 1),
(1566, 101, 'RKH', 'Razavi Khorasan', 1),
(1567, 101, 'SKH', 'South Khorasan', 1),
(1568, 102, 'BD', 'Baghdad', 1),
(1569, 102, 'SD', 'Salah ad Din', 1),
(1570, 102, 'DY', 'Diyala', 1),
(1571, 102, 'WS', 'Wasit', 1),
(1572, 102, 'MY', 'Maysan', 1),
(1573, 102, 'BA', 'Al Basrah', 1),
(1574, 102, 'DQ', 'Dhi Qar', 1),
(1575, 102, 'MU', 'Al Muthanna', 1),
(1576, 102, 'QA', 'Al Qadisyah', 1),
(1577, 102, 'BB', 'Babil', 1),
(1578, 102, 'KB', 'Al Karbala', 1),
(1579, 102, 'NJ', 'An Najaf', 1),
(1580, 102, 'AB', 'Al Anbar', 1),
(1581, 102, 'NN', 'Ninawa', 1),
(1582, 102, 'DH', 'Dahuk', 1),
(1583, 102, 'AL', 'Arbil', 1),
(1584, 102, 'TM', 'At Ta''mim', 1),
(1585, 102, 'SL', 'As Sulaymaniyah', 1),
(1586, 103, 'CA', 'Carlow', 1),
(1587, 103, 'CV', 'Cavan', 1),
(1588, 103, 'CL', 'Clare', 1),
(1589, 103, 'CO', 'Cork', 1),
(1590, 103, 'DO', 'Donegal', 1),
(1591, 103, 'DU', 'Dublin', 1),
(1592, 103, 'GA', 'Galway', 1),
(1593, 103, 'KE', 'Kerry', 1),
(1594, 103, 'KI', 'Kildare', 1),
(1595, 103, 'KL', 'Kilkenny', 1),
(1596, 103, 'LA', 'Laois', 1),
(1597, 103, 'LE', 'Leitrim', 1),
(1598, 103, 'LI', 'Limerick', 1),
(1599, 103, 'LO', 'Longford', 1),
(1600, 103, 'LU', 'Louth', 1),
(1601, 103, 'MA', 'Mayo', 1),
(1602, 103, 'ME', 'Meath', 1),
(1603, 103, 'MO', 'Monaghan', 1),
(1604, 103, 'OF', 'Offaly', 1),
(1605, 103, 'RO', 'Roscommon', 1),
(1606, 103, 'SL', 'Sligo', 1),
(1607, 103, 'TI', 'Tipperary', 1),
(1608, 103, 'WA', 'Waterford', 1),
(1609, 103, 'WE', 'Westmeath', 1),
(1610, 103, 'WX', 'Wexford', 1),
(1611, 103, 'WI', 'Wicklow', 1),
(1612, 104, 'BS', 'Be''er Sheva', 1),
(1613, 104, 'BH', 'Bika''at Hayarden', 1),
(1614, 104, 'EA', 'Eilat and Arava', 1),
(1615, 104, 'GA', 'Galil', 1),
(1616, 104, 'HA', 'Haifa', 1),
(1617, 104, 'JM', 'Jehuda Mountains', 1),
(1618, 104, 'JE', 'Jerusalem', 1),
(1619, 104, 'NE', 'Negev', 1),
(1620, 104, 'SE', 'Semaria', 1),
(1621, 104, 'SH', 'Sharon', 1),
(1622, 104, 'TA', 'Tel Aviv (Gosh Dan)', 1),
(1643, 106, 'CLA', 'Clarendon Parish', 1),
(1644, 106, 'HAN', 'Hanover Parish', 1),
(1645, 106, 'KIN', 'Kingston Parish', 1),
(1646, 106, 'MAN', 'Manchester Parish', 1),
(1647, 106, 'POR', 'Portland Parish', 1),
(1648, 106, 'AND', 'Saint Andrew Parish', 1),
(1649, 106, 'ANN', 'Saint Ann Parish', 1),
(1650, 106, 'CAT', 'Saint Catherine Parish', 1),
(1651, 106, 'ELI', 'Saint Elizabeth Parish', 1),
(1652, 106, 'JAM', 'Saint James Parish', 1),
(1653, 106, 'MAR', 'Saint Mary Parish', 1),
(1654, 106, 'THO', 'Saint Thomas Parish', 1),
(1655, 106, 'TRL', 'Trelawny Parish', 1),
(1656, 106, 'WML', 'Westmoreland Parish', 1),
(1657, 107, 'AI', 'Aichi', 1),
(1658, 107, 'AK', 'Akita', 1),
(1659, 107, 'AO', 'Aomori', 1),
(1660, 107, 'CH', 'Chiba', 1),
(1661, 107, 'EH', 'Ehime', 1),
(1662, 107, 'FK', 'Fukui', 1),
(1663, 107, 'FU', 'Fukuoka', 1),
(1664, 107, 'FS', 'Fukushima', 1),
(1665, 107, 'GI', 'Gifu', 1),
(1666, 107, 'GU', 'Gumma', 1),
(1667, 107, 'HI', 'Hiroshima', 1),
(1668, 107, 'HO', 'Hokkaido', 1),
(1669, 107, 'HY', 'Hyogo', 1),
(1670, 107, 'IB', 'Ibaraki', 1),
(1671, 107, 'IS', 'Ishikawa', 1),
(1672, 107, 'IW', 'Iwate', 1),
(1673, 107, 'KA', 'Kagawa', 1),
(1674, 107, 'KG', 'Kagoshima', 1),
(1675, 107, 'KN', 'Kanagawa', 1),
(1676, 107, 'KO', 'Kochi', 1),
(1677, 107, 'KU', 'Kumamoto', 1),
(1678, 107, 'KY', 'Kyoto', 1),
(1679, 107, 'MI', 'Mie', 1),
(1680, 107, 'MY', 'Miyagi', 1),
(1681, 107, 'MZ', 'Miyazaki', 1),
(1682, 107, 'NA', 'Nagano', 1),
(1683, 107, 'NG', 'Nagasaki', 1),
(1684, 107, 'NR', 'Nara', 1),
(1685, 107, 'NI', 'Niigata', 1),
(1686, 107, 'OI', 'Oita', 1),
(1687, 107, 'OK', 'Okayama', 1),
(1688, 107, 'ON', 'Okinawa', 1),
(1689, 107, 'OS', 'Osaka', 1),
(1690, 107, 'SA', 'Saga', 1),
(1691, 107, 'SI', 'Saitama', 1),
(1692, 107, 'SH', 'Shiga', 1),
(1693, 107, 'SM', 'Shimane', 1),
(1694, 107, 'SZ', 'Shizuoka', 1),
(1695, 107, 'TO', 'Tochigi', 1),
(1696, 107, 'TS', 'Tokushima', 1),
(1697, 107, 'TK', 'Tokyo', 1),
(1698, 107, 'TT', 'Tottori', 1),
(1699, 107, 'TY', 'Toyama', 1),
(1700, 107, 'WA', 'Wakayama', 1),
(1701, 107, 'YA', 'Yamagata', 1),
(1702, 107, 'YM', 'Yamaguchi', 1),
(1703, 107, 'YN', 'Yamanashi', 1),
(1704, 108, 'AM', '''Amman', 1),
(1705, 108, 'AJ', 'Ajlun', 1),
(1706, 108, 'AA', 'Al ''Aqabah', 1),
(1707, 108, 'AB', 'Al Balqa''', 1),
(1708, 108, 'AK', 'Al Karak', 1),
(1709, 108, 'AL', 'Al Mafraq', 1),
(1710, 108, 'AT', 'At Tafilah', 1),
(1711, 108, 'AZ', 'Az Zarqa''', 1),
(1712, 108, 'IR', 'Irbid', 1),
(1713, 108, 'JA', 'Jarash', 1),
(1714, 108, 'MA', 'Ma''an', 1),
(1715, 108, 'MD', 'Madaba', 1),
(1716, 109, 'AL', 'Almaty', 1),
(1717, 109, 'AC', 'Almaty City', 1),
(1718, 109, 'AM', 'Aqmola', 1),
(1719, 109, 'AQ', 'Aqtobe', 1),
(1720, 109, 'AS', 'Astana City', 1),
(1721, 109, 'AT', 'Atyrau', 1),
(1722, 109, 'BA', 'Batys Qazaqstan', 1),
(1723, 109, 'BY', 'Bayqongyr City', 1),
(1724, 109, 'MA', 'Mangghystau', 1),
(1725, 109, 'ON', 'Ongtustik Qazaqstan', 1),
(1726, 109, 'PA', 'Pavlodar', 1),
(1727, 109, 'QA', 'Qaraghandy', 1),
(1728, 109, 'QO', 'Qostanay', 1),
(1729, 109, 'QY', 'Qyzylorda', 1),
(1730, 109, 'SH', 'Shyghys Qazaqstan', 1),
(1731, 109, 'SO', 'Soltustik Qazaqstan', 1),
(1732, 109, 'ZH', 'Zhambyl', 1),
(1733, 110, 'CE', 'Central', 1),
(1734, 110, 'CO', 'Coast', 1),
(1735, 110, 'EA', 'Eastern', 1),
(1736, 110, 'NA', 'Nairobi Area', 1),
(1737, 110, 'NE', 'North Eastern', 1),
(1738, 110, 'NY', 'Nyanza', 1),
(1739, 110, 'RV', 'Rift Valley', 1),
(1740, 110, 'WE', 'Western', 1),
(1741, 111, 'AG', 'Abaiang', 1),
(1742, 111, 'AM', 'Abemama', 1),
(1743, 111, 'AK', 'Aranuka', 1),
(1744, 111, 'AO', 'Arorae', 1),
(1745, 111, 'BA', 'Banaba', 1),
(1746, 111, 'BE', 'Beru', 1),
(1747, 111, 'bT', 'Butaritari', 1),
(1748, 111, 'KA', 'Kanton', 1),
(1749, 111, 'KR', 'Kiritimati', 1),
(1750, 111, 'KU', 'Kuria', 1),
(1751, 111, 'MI', 'Maiana', 1),
(1752, 111, 'MN', 'Makin', 1),
(1753, 111, 'ME', 'Marakei', 1),
(1754, 111, 'NI', 'Nikunau', 1),
(1755, 111, 'NO', 'Nonouti', 1),
(1756, 111, 'ON', 'Onotoa', 1),
(1757, 111, 'TT', 'Tabiteuea', 1),
(1758, 111, 'TR', 'Tabuaeran', 1),
(1759, 111, 'TM', 'Tamana', 1),
(1760, 111, 'TW', 'Tarawa', 1),
(1761, 111, 'TE', 'Teraina', 1),
(1762, 112, 'CHA', 'Chagang-do', 1),
(1763, 112, 'HAB', 'Hamgyong-bukto', 1),
(1764, 112, 'HAN', 'Hamgyong-namdo', 1),
(1765, 112, 'HWB', 'Hwanghae-bukto', 1),
(1766, 112, 'HWN', 'Hwanghae-namdo', 1),
(1767, 112, 'KAN', 'Kangwon-do', 1),
(1768, 112, 'PYB', 'P''yongan-bukto', 1),
(1769, 112, 'PYN', 'P''yongan-namdo', 1),
(1770, 112, 'YAN', 'Ryanggang-do (Yanggang-do)', 1),
(1771, 112, 'NAJ', 'Rason Directly Governed City', 1),
(1772, 112, 'PYO', 'P''yongyang Special City', 1),
(1773, 113, 'CO', 'Ch''ungch''ong-bukto', 1),
(1774, 113, 'CH', 'Ch''ungch''ong-namdo', 1),
(1775, 113, 'CD', 'Cheju-do', 1),
(1776, 113, 'CB', 'Cholla-bukto', 1),
(1777, 113, 'CN', 'Cholla-namdo', 1),
(1778, 113, 'IG', 'Inch''on-gwangyoksi', 1),
(1779, 113, 'KA', 'Kangwon-do', 1),
(1780, 113, 'KG', 'Kwangju-gwangyoksi', 1),
(1781, 113, 'KD', 'Kyonggi-do', 1),
(1782, 113, 'KB', 'Kyongsang-bukto', 1),
(1783, 113, 'KN', 'Kyongsang-namdo', 1),
(1784, 113, 'PG', 'Pusan-gwangyoksi', 1),
(1785, 113, 'SO', 'Soul-t''ukpyolsi', 1),
(1786, 113, 'TA', 'Taegu-gwangyoksi', 1),
(1787, 113, 'TG', 'Taejon-gwangyoksi', 1),
(1788, 114, 'AL', 'Al ''Asimah', 1),
(1789, 114, 'AA', 'Al Ahmadi', 1),
(1790, 114, 'AF', 'Al Farwaniyah', 1),
(1791, 114, 'AJ', 'Al Jahra''', 1),
(1792, 114, 'HA', 'Hawalli', 1),
(1793, 115, 'GB', 'Bishkek', 1),
(1794, 115, 'B', 'Batken', 1),
(1795, 115, 'C', 'Chu', 1),
(1796, 115, 'J', 'Jalal-Abad', 1),
(1797, 115, 'N', 'Naryn', 1),
(1798, 115, 'O', 'Osh', 1),
(1799, 115, 'T', 'Talas', 1),
(1800, 115, 'Y', 'Ysyk-Kol', 1),
(1801, 116, 'VT', 'Vientiane', 1),
(1802, 116, 'AT', 'Attapu', 1),
(1803, 116, 'BK', 'Bokeo', 1),
(1804, 116, 'BL', 'Bolikhamxai', 1),
(1805, 116, 'CH', 'Champasak', 1),
(1806, 116, 'HO', 'Houaphan', 1),
(1807, 116, 'KH', 'Khammouan', 1),
(1808, 116, 'LM', 'Louang Namtha', 1),
(1809, 116, 'LP', 'Louangphabang', 1),
(1810, 116, 'OU', 'Oudomxai', 1),
(1811, 116, 'PH', 'Phongsali', 1),
(1812, 116, 'SL', 'Salavan', 1),
(1813, 116, 'SV', 'Savannakhet', 1),
(1814, 116, 'VI', 'Vientiane', 1),
(1815, 116, 'XA', 'Xaignabouli', 1),
(1816, 116, 'XE', 'Xekong', 1),
(1817, 116, 'XI', 'Xiangkhoang', 1),
(1818, 116, 'XN', 'Xaisomboun', 1),
(1819, 117, 'AIZ', 'Aizkraukles Rajons', 1),
(1820, 117, 'ALU', 'Aluksnes Rajons', 1),
(1821, 117, 'BAL', 'Balvu Rajons', 1),
(1822, 117, 'BAU', 'Bauskas Rajons', 1),
(1823, 117, 'CES', 'Cesu Rajons', 1),
(1824, 117, 'DGR', 'Daugavpils Rajons', 1),
(1825, 117, 'DOB', 'Dobeles Rajons', 1),
(1826, 117, 'GUL', 'Gulbenes Rajons', 1),
(1827, 117, 'JEK', 'Jekabpils Rajons', 1),
(1828, 117, 'JGR', 'Jelgavas Rajons', 1),
(1829, 117, 'KRA', 'Kraslavas Rajons', 1),
(1830, 117, 'KUL', 'Kuldigas Rajons', 1),
(1831, 117, 'LPR', 'Liepajas Rajons', 1),
(1832, 117, 'LIM', 'Limbazu Rajons', 1),
(1833, 117, 'LUD', 'Ludzas Rajons', 1),
(1834, 117, 'MAD', 'Madonas Rajons', 1),
(1835, 117, 'OGR', 'Ogres Rajons', 1),
(1836, 117, 'PRE', 'Preilu Rajons', 1),
(1837, 117, 'RZR', 'Rezeknes Rajons', 1),
(1838, 117, 'RGR', 'Rigas Rajons', 1),
(1839, 117, 'SAL', 'Saldus Rajons', 1),
(1840, 117, 'TAL', 'Talsu Rajons', 1),
(1841, 117, 'TUK', 'Tukuma Rajons', 1),
(1842, 117, 'VLK', 'Valkas Rajons', 1),
(1843, 117, 'VLM', 'Valmieras Rajons', 1),
(1844, 117, 'VSR', 'Ventspils Rajons', 1),
(1845, 117, 'DGV', 'Daugavpils', 1),
(1846, 117, 'JGV', 'Jelgava', 1),
(1847, 117, 'JUR', 'Jurmala', 1),
(1848, 117, 'LPK', 'Liepaja', 1),
(1849, 117, 'RZK', 'Rezekne', 1),
(1850, 117, 'RGA', 'Riga', 1),
(1851, 117, 'VSL', 'Ventspils', 1),
(1852, 119, 'BE', 'Berea', 1),
(1853, 119, 'BB', 'Butha-Buthe', 1),
(1854, 119, 'LE', 'Leribe', 1),
(1855, 119, 'MF', 'Mafeteng', 1),
(1856, 119, 'MS', 'Maseru', 1),
(1857, 119, 'MH', 'Mohale''s Hoek', 1),
(1858, 119, 'MK', 'Mokhotlong', 1),
(1859, 119, 'QN', 'Qacha''s Nek', 1),
(1860, 119, 'QT', 'Quthing', 1),
(1861, 119, 'TT', 'Thaba-Tseka', 1),
(1862, 120, 'BI', 'Bomi', 1),
(1863, 120, 'BG', 'Bong', 1),
(1864, 120, 'GB', 'Grand Bassa', 1),
(1865, 120, 'CM', 'Grand Cape Mount', 1),
(1866, 120, 'GG', 'Grand Gedeh', 1),
(1867, 120, 'GK', 'Grand Kru', 1),
(1868, 120, 'LO', 'Lofa', 1),
(1869, 120, 'MG', 'Margibi', 1),
(1870, 120, 'ML', 'Maryland', 1),
(1871, 120, 'MS', 'Montserrado', 1),
(1872, 120, 'NB', 'Nimba', 1),
(1873, 120, 'RC', 'River Cess', 1),
(1874, 120, 'SN', 'Sinoe', 1),
(1875, 121, 'AJ', 'Ajdabiya', 1),
(1876, 121, 'AZ', 'Al ''Aziziyah', 1),
(1877, 121, 'FA', 'Al Fatih', 1),
(1878, 121, 'JA', 'Al Jabal al Akhdar', 1),
(1879, 121, 'JU', 'Al Jufrah', 1),
(1880, 121, 'KH', 'Al Khums', 1),
(1881, 121, 'KU', 'Al Kufrah', 1),
(1882, 121, 'NK', 'An Nuqat al Khams', 1),
(1883, 121, 'AS', 'Ash Shati''', 1),
(1884, 121, 'AW', 'Awbari', 1),
(1885, 121, 'ZA', 'Az Zawiyah', 1),
(1886, 121, 'BA', 'Banghazi', 1),
(1887, 121, 'DA', 'Darnah', 1),
(1888, 121, 'GD', 'Ghadamis', 1),
(1889, 121, 'GY', 'Gharyan', 1),
(1890, 121, 'MI', 'Misratah', 1),
(1891, 121, 'MZ', 'Murzuq', 1),
(1892, 121, 'SB', 'Sabha', 1),
(1893, 121, 'SW', 'Sawfajjin', 1),
(1894, 121, 'SU', 'Surt', 1),
(1895, 121, 'TL', 'Tarabulus (Tripoli)', 1),
(1896, 121, 'TH', 'Tarhunah', 1),
(1897, 121, 'TU', 'Tubruq', 1),
(1898, 121, 'YA', 'Yafran', 1),
(1899, 121, 'ZL', 'Zlitan', 1),
(1900, 122, 'V', 'Vaduz', 1),
(1901, 122, 'A', 'Schaan', 1),
(1902, 122, 'B', 'Balzers', 1),
(1903, 122, 'N', 'Triesen', 1),
(1904, 122, 'E', 'Eschen', 1),
(1905, 122, 'M', 'Mauren', 1),
(1906, 122, 'T', 'Triesenberg', 1),
(1907, 122, 'R', 'Ruggell', 1),
(1908, 122, 'G', 'Gamprin', 1),
(1909, 122, 'L', 'Schellenberg', 1),
(1910, 122, 'P', 'Planken', 1),
(1911, 123, 'AL', 'Alytus', 1),
(1912, 123, 'KA', 'Kaunas', 1),
(1913, 123, 'KL', 'Klaipeda', 1),
(1914, 123, 'MA', 'Marijampole', 1),
(1915, 123, 'PA', 'Panevezys', 1),
(1916, 123, 'SI', 'Siauliai', 1),
(1917, 123, 'TA', 'Taurage', 1),
(1918, 123, 'TE', 'Telsiai', 1),
(1919, 123, 'UT', 'Utena', 1),
(1920, 123, 'VI', 'Vilnius', 1),
(1921, 124, 'DD', 'Diekirch', 1),
(1922, 124, 'DC', 'Clervaux', 1),
(1923, 124, 'DR', 'Redange', 1),
(1924, 124, 'DV', 'Vianden', 1),
(1925, 124, 'DW', 'Wiltz', 1),
(1926, 124, 'GG', 'Grevenmacher', 1),
(1927, 124, 'GE', 'Echternach', 1),
(1928, 124, 'GR', 'Remich', 1),
(1929, 124, 'LL', 'Luxembourg', 1),
(1930, 124, 'LC', 'Capellen', 1),
(1931, 124, 'LE', 'Esch-sur-Alzette', 1),
(1932, 124, 'LM', 'Mersch', 1),
(1933, 125, 'OLF', 'Our Lady Fatima Parish', 1),
(1934, 125, 'ANT', 'St. Anthony Parish', 1),
(1935, 125, 'LAZ', 'St. Lazarus Parish', 1),
(1936, 125, 'CAT', 'Cathedral Parish', 1),
(1937, 125, 'LAW', 'St. Lawrence Parish', 1),
(1938, 127, 'AN', 'Antananarivo', 1),
(1939, 127, 'AS', 'Antsiranana', 1),
(1940, 127, 'FN', 'Fianarantsoa', 1),
(1941, 127, 'MJ', 'Mahajanga', 1),
(1942, 127, 'TM', 'Toamasina', 1),
(1943, 127, 'TL', 'Toliara', 1),
(1944, 128, 'BLK', 'Balaka', 1),
(1945, 128, 'BLT', 'Blantyre', 1),
(1946, 128, 'CKW', 'Chikwawa', 1),
(1947, 128, 'CRD', 'Chiradzulu', 1),
(1948, 128, 'CTP', 'Chitipa', 1),
(1949, 128, 'DDZ', 'Dedza', 1),
(1950, 128, 'DWA', 'Dowa', 1),
(1951, 128, 'KRG', 'Karonga', 1),
(1952, 128, 'KSG', 'Kasungu', 1),
(1953, 128, 'LKM', 'Likoma', 1),
(1954, 128, 'LLG', 'Lilongwe', 1),
(1955, 128, 'MCG', 'Machinga', 1),
(1956, 128, 'MGC', 'Mangochi', 1),
(1957, 128, 'MCH', 'Mchinji', 1),
(1958, 128, 'MLJ', 'Mulanje', 1),
(1959, 128, 'MWZ', 'Mwanza', 1),
(1960, 128, 'MZM', 'Mzimba', 1),
(1961, 128, 'NTU', 'Ntcheu', 1),
(1962, 128, 'NKB', 'Nkhata Bay', 1),
(1963, 128, 'NKH', 'Nkhotakota', 1),
(1964, 128, 'NSJ', 'Nsanje', 1),
(1965, 128, 'NTI', 'Ntchisi', 1),
(1966, 128, 'PHL', 'Phalombe', 1),
(1967, 128, 'RMP', 'Rumphi', 1),
(1968, 128, 'SLM', 'Salima', 1),
(1969, 128, 'THY', 'Thyolo', 1),
(1970, 128, 'ZBA', 'Zomba', 1),
(1971, 129, 'JO', 'Johor', 1),
(1972, 129, 'KE', 'Kedah', 1),
(1973, 129, 'KL', 'Kelantan', 1),
(1974, 129, 'LA', 'Labuan', 1),
(1975, 129, 'ME', 'Melaka', 1),
(1976, 129, 'NS', 'Negeri Sembilan', 1),
(1977, 129, 'PA', 'Pahang', 1),
(1978, 129, 'PE', 'Perak', 1),
(1979, 129, 'PR', 'Perlis', 1),
(1980, 129, 'PP', 'Pulau Pinang', 1),
(1981, 129, 'SA', 'Sabah', 1),
(1982, 129, 'SR', 'Sarawak', 1),
(1983, 129, 'SE', 'Selangor', 1),
(1984, 129, 'TE', 'Terengganu', 1),
(1985, 129, 'WP', 'Wilayah Persekutuan', 1),
(1986, 130, 'THU', 'Thiladhunmathi Uthuru', 1),
(1987, 130, 'THD', 'Thiladhunmathi Dhekunu', 1),
(1988, 130, 'MLU', 'Miladhunmadulu Uthuru', 1),
(1989, 130, 'MLD', 'Miladhunmadulu Dhekunu', 1),
(1990, 130, 'MAU', 'Maalhosmadulu Uthuru', 1),
(1991, 130, 'MAD', 'Maalhosmadulu Dhekunu', 1),
(1992, 130, 'FAA', 'Faadhippolhu', 1),
(1993, 130, 'MAA', 'Male Atoll', 1),
(1994, 130, 'AAU', 'Ari Atoll Uthuru', 1),
(1995, 130, 'AAD', 'Ari Atoll Dheknu', 1),
(1996, 130, 'FEA', 'Felidhe Atoll', 1),
(1997, 130, 'MUA', 'Mulaku Atoll', 1),
(1998, 130, 'NAU', 'Nilandhe Atoll Uthuru', 1),
(1999, 130, 'NAD', 'Nilandhe Atoll Dhekunu', 1),
(2000, 130, 'KLH', 'Kolhumadulu', 1),
(2001, 130, 'HDH', 'Hadhdhunmathi', 1),
(2002, 130, 'HAU', 'Huvadhu Atoll Uthuru', 1),
(2003, 130, 'HAD', 'Huvadhu Atoll Dhekunu', 1),
(2004, 130, 'FMU', 'Fua Mulaku', 1),
(2005, 130, 'ADD', 'Addu', 1),
(2006, 131, 'GA', 'Gao', 1),
(2007, 131, 'KY', 'Kayes', 1),
(2008, 131, 'KD', 'Kidal', 1),
(2009, 131, 'KL', 'Koulikoro', 1),
(2010, 131, 'MP', 'Mopti', 1),
(2011, 131, 'SG', 'Segou', 1),
(2012, 131, 'SK', 'Sikasso', 1),
(2013, 131, 'TB', 'Tombouctou', 1),
(2014, 131, 'CD', 'Bamako Capital District', 1),
(2015, 132, 'ATT', 'Attard', 1),
(2016, 132, 'BAL', 'Balzan', 1),
(2017, 132, 'BGU', 'Birgu', 1),
(2018, 132, 'BKK', 'Birkirkara', 1),
(2019, 132, 'BRZ', 'Birzebbuga', 1),
(2020, 132, 'BOR', 'Bormla', 1),
(2021, 132, 'DIN', 'Dingli', 1),
(2022, 132, 'FGU', 'Fgura', 1),
(2023, 132, 'FLO', 'Floriana', 1),
(2024, 132, 'GDJ', 'Gudja', 1),
(2025, 132, 'GZR', 'Gzira', 1),
(2026, 132, 'GRG', 'Gargur', 1),
(2027, 132, 'GXQ', 'Gaxaq', 1),
(2028, 132, 'HMR', 'Hamrun', 1),
(2029, 132, 'IKL', 'Iklin', 1),
(2030, 132, 'ISL', 'Isla', 1),
(2031, 132, 'KLK', 'Kalkara', 1),
(2032, 132, 'KRK', 'Kirkop', 1),
(2033, 132, 'LIJ', 'Lija', 1),
(2034, 132, 'LUQ', 'Luqa', 1),
(2035, 132, 'MRS', 'Marsa', 1),
(2036, 132, 'MKL', 'Marsaskala', 1),
(2037, 132, 'MXL', 'Marsaxlokk', 1),
(2038, 132, 'MDN', 'Mdina', 1),
(2039, 132, 'MEL', 'Melliea', 1),
(2040, 132, 'MGR', 'Mgarr', 1),
(2041, 132, 'MST', 'Mosta', 1),
(2042, 132, 'MQA', 'Mqabba', 1),
(2043, 132, 'MSI', 'Msida', 1),
(2044, 132, 'MTF', 'Mtarfa', 1),
(2045, 132, 'NAX', 'Naxxar', 1),
(2046, 132, 'PAO', 'Paola', 1),
(2047, 132, 'PEM', 'Pembroke', 1),
(2048, 132, 'PIE', 'Pieta', 1),
(2049, 132, 'QOR', 'Qormi', 1),
(2050, 132, 'QRE', 'Qrendi', 1),
(2051, 132, 'RAB', 'Rabat', 1),
(2052, 132, 'SAF', 'Safi', 1),
(2053, 132, 'SGI', 'San Giljan', 1),
(2054, 132, 'SLU', 'Santa Lucija', 1),
(2055, 132, 'SPB', 'San Pawl il-Bahar', 1),
(2056, 132, 'SGW', 'San Gwann', 1),
(2057, 132, 'SVE', 'Santa Venera', 1),
(2058, 132, 'SIG', 'Siggiewi', 1),
(2059, 132, 'SLM', 'Sliema', 1),
(2060, 132, 'SWQ', 'Swieqi', 1),
(2061, 132, 'TXB', 'Ta Xbiex', 1),
(2062, 132, 'TRX', 'Tarxien', 1),
(2063, 132, 'VLT', 'Valletta', 1),
(2064, 132, 'XGJ', 'Xgajra', 1),
(2065, 132, 'ZBR', 'Zabbar', 1),
(2066, 132, 'ZBG', 'Zebbug', 1),
(2067, 132, 'ZJT', 'Zejtun', 1),
(2068, 132, 'ZRQ', 'Zurrieq', 1),
(2069, 132, 'FNT', 'Fontana', 1),
(2070, 132, 'GHJ', 'Ghajnsielem', 1),
(2071, 132, 'GHR', 'Gharb', 1),
(2072, 132, 'GHS', 'Ghasri', 1),
(2073, 132, 'KRC', 'Kercem', 1),
(2074, 132, 'MUN', 'Munxar', 1),
(2075, 132, 'NAD', 'Nadur', 1),
(2076, 132, 'QAL', 'Qala', 1),
(2077, 132, 'VIC', 'Victoria', 1),
(2078, 132, 'SLA', 'San Lawrenz', 1),
(2079, 132, 'SNT', 'Sannat', 1),
(2080, 132, 'ZAG', 'Xagra', 1),
(2081, 132, 'XEW', 'Xewkija', 1),
(2082, 132, 'ZEB', 'Zebbug', 1),
(2083, 133, 'ALG', 'Ailinginae', 1),
(2084, 133, 'ALL', 'Ailinglaplap', 1),
(2085, 133, 'ALK', 'Ailuk', 1),
(2086, 133, 'ARN', 'Arno', 1),
(2087, 133, 'AUR', 'Aur', 1),
(2088, 133, 'BKR', 'Bikar', 1),
(2089, 133, 'BKN', 'Bikini', 1),
(2090, 133, 'BKK', 'Bokak', 1),
(2091, 133, 'EBN', 'Ebon', 1),
(2092, 133, 'ENT', 'Enewetak', 1),
(2093, 133, 'EKB', 'Erikub', 1),
(2094, 133, 'JBT', 'Jabat', 1),
(2095, 133, 'JLT', 'Jaluit', 1),
(2096, 133, 'JEM', 'Jemo', 1),
(2097, 133, 'KIL', 'Kili', 1),
(2098, 133, 'KWJ', 'Kwajalein', 1),
(2099, 133, 'LAE', 'Lae', 1),
(2100, 133, 'LIB', 'Lib', 1),
(2101, 133, 'LKP', 'Likiep', 1),
(2102, 133, 'MJR', 'Majuro', 1),
(2103, 133, 'MLP', 'Maloelap', 1),
(2104, 133, 'MJT', 'Mejit', 1),
(2105, 133, 'MIL', 'Mili', 1),
(2106, 133, 'NMK', 'Namorik', 1),
(2107, 133, 'NAM', 'Namu', 1),
(2108, 133, 'RGL', 'Rongelap', 1),
(2109, 133, 'RGK', 'Rongrik', 1),
(2110, 133, 'TOK', 'Toke', 1),
(2111, 133, 'UJA', 'Ujae', 1),
(2112, 133, 'UJL', 'Ujelang', 1),
(2113, 133, 'UTK', 'Utirik', 1),
(2114, 133, 'WTH', 'Wotho', 1),
(2115, 133, 'WTJ', 'Wotje', 1),
(2116, 135, 'AD', 'Adrar', 1),
(2117, 135, 'AS', 'Assaba', 1),
(2118, 135, 'BR', 'Brakna', 1),
(2119, 135, 'DN', 'Dakhlet Nouadhibou', 1),
(2120, 135, 'GO', 'Gorgol', 1),
(2121, 135, 'GM', 'Guidimaka', 1),
(2122, 135, 'HC', 'Hodh Ech Chargui', 1),
(2123, 135, 'HG', 'Hodh El Gharbi', 1),
(2124, 135, 'IN', 'Inchiri', 1),
(2125, 135, 'TA', 'Tagant', 1),
(2126, 135, 'TZ', 'Tiris Zemmour', 1),
(2127, 135, 'TR', 'Trarza', 1),
(2128, 135, 'NO', 'Nouakchott', 1),
(2129, 136, 'BR', 'Beau Bassin-Rose Hill', 1),
(2130, 136, 'CU', 'Curepipe', 1),
(2131, 136, 'PU', 'Port Louis', 1),
(2132, 136, 'QB', 'Quatre Bornes', 1),
(2133, 136, 'VP', 'Vacoas-Phoenix', 1),
(2134, 136, 'AG', 'Agalega Islands', 1),
(2135, 136, 'CC', 'Cargados Cara#_ Shoals (Saint Brandon Islands)', 1),
(2136, 136, 'RO', 'Rodrigues', 1),
(2137, 136, 'BL', 'Black River', 1),
(2138, 136, 'FL', 'Flacq', 1),
(2139, 136, 'GP', 'Grand Port', 1),
(2140, 136, 'MO', 'Moka', 1),
(2141, 136, 'PA', 'Pamplemousses', 1),
(2142, 136, 'PW', 'Plaines Wilhems', 1),
(2143, 136, 'PL', 'Port Louis', 1),
(2144, 136, 'RR', 'Riviere du Rempart', 1),
(2145, 136, 'SA', 'Savanne', 1),
(2146, 138, 'BA', 'Baja California Norte', 1),
(2147, 138, 'BJ', 'Baja California Sur', 1),
(2148, 138, 'CE', 'Campeche', 1),
(2149, 138, 'CI', 'Chiapas', 1),
(2150, 138, 'CH', 'Chihuahua', 1),
(2151, 138, 'CU', 'Coahuila de Zaragoza', 1),
(2152, 138, 'CL', 'Colima', 1),
(2153, 138, 'DF', 'Distrito Federal', 1),
(2154, 138, 'DO', 'Durango', 1),
(2155, 138, 'GX', 'Guanajuato', 1),
(2156, 138, 'GR', 'Guerrero', 1),
(2157, 138, 'HL', 'Hidalgo', 1),
(2158, 138, 'JL', 'Jalisco', 1),
(2159, 138, 'MX', 'Estado de México', 1),
(2160, 138, 'MC', 'Michoacan de Ocampo', 1),
(2161, 138, 'MR', 'Morelos', 1),
(2162, 138, 'NA', 'Nayarit', 1),
(2163, 138, 'NN', 'Nuevo Leon', 1),
(2164, 138, 'OA', 'Oaxaca', 1),
(2165, 138, 'PU', 'Puebla', 1),
(2166, 138, 'QU', 'Queretaro de Arteaga', 1),
(2167, 138, 'QR', 'Quintana Roo', 1),
(2168, 138, 'SL', 'San Luis Potosi', 1),
(2169, 138, 'SI', 'Sinaloa', 1),
(2170, 138, 'SO', 'Sonora', 1),
(2171, 138, 'TB', 'Tabasco', 1),
(2172, 138, 'TA', 'Tamaulipas', 1),
(2173, 138, 'TL', 'Tlaxcala', 1),
(2174, 138, 'VC', 'Veracruz-Llave', 1),
(2175, 138, 'YU', 'Yucatan', 1),
(2176, 138, 'ZA', 'Zacatecas', 1),
(2177, 139, 'C', 'Chuuk', 1),
(2178, 139, 'K', 'Kosrae', 1),
(2179, 139, 'P', 'Pohnpei', 1),
(2180, 139, 'Y', 'Yap', 1),
(2181, 140, 'GA', 'Gagauzia', 1),
(2182, 140, 'CU', 'Chisinau', 1),
(2183, 140, 'BA', 'Balti', 1),
(2184, 140, 'CA', 'Cahul', 1),
(2185, 140, 'ED', 'Edinet', 1),
(2186, 140, 'LA', 'Lapusna', 1),
(2187, 140, 'OR', 'Orhei', 1),
(2188, 140, 'SO', 'Soroca', 1),
(2189, 140, 'TI', 'Tighina', 1),
(2190, 140, 'UN', 'Ungheni', 1),
(2191, 140, 'SN', 'Stînga Nistrului', 1),
(2192, 141, 'FV', 'Fontvieille', 1),
(2193, 141, 'LC', 'La Condamine', 1),
(2194, 141, 'MV', 'Monaco-Ville', 1),
(2195, 141, 'MC', 'Monte-Carlo', 1),
(2196, 142, '1', 'Ulanbaatar', 1),
(2197, 142, '035', 'Orhon', 1),
(2198, 142, '037', 'Darhan uul', 1),
(2199, 142, '039', 'Hentiy', 1),
(2200, 142, '041', 'Hovsgol', 1),
(2201, 142, '043', 'Hovd', 1),
(2202, 142, '046', 'Uvs', 1),
(2203, 142, '047', 'Tov', 1),
(2204, 142, '049', 'Selenge', 1),
(2205, 142, '051', 'Suhbaatar', 1),
(2206, 142, '053', 'Omnogovi', 1),
(2207, 142, '055', 'Ovorhangay', 1),
(2208, 142, '057', 'Dzavhan', 1),
(2209, 142, '059', 'DundgovL', 1),
(2210, 142, '061', 'Dornod', 1),
(2211, 142, '063', 'Dornogov', 1),
(2212, 142, '064', 'Govi-Sumber', 1),
(2213, 142, '065', 'Govi-Altay', 1),
(2214, 142, '067', 'Bulgan', 1),
(2215, 142, '069', 'Bayanhongor', 1),
(2216, 142, '071', 'Bayan-Olgiy', 1),
(2217, 142, '073', 'Arhangay', 1),
(2218, 143, 'A', 'Saint Anthony', 1),
(2219, 143, 'G', 'Saint Georges', 1),
(2220, 143, 'P', 'Saint Peter', 1),
(2221, 144, 'AGD', 'Agadir', 1),
(2222, 144, 'HOC', 'Al Hoceima', 1),
(2223, 144, 'AZI', 'Azilal', 1),
(2224, 144, 'BME', 'Beni Mellal', 1),
(2225, 144, 'BSL', 'Ben Slimane', 1),
(2226, 144, 'BLM', 'Boulemane', 1),
(2227, 144, 'CBL', 'Casablanca', 1),
(2228, 144, 'CHA', 'Chaouen', 1),
(2229, 144, 'EJA', 'El Jadida', 1),
(2230, 144, 'EKS', 'El Kelaa des Sraghna', 1),
(2231, 144, 'ERA', 'Er Rachidia', 1),
(2232, 144, 'ESS', 'Essaouira', 1),
(2233, 144, 'FES', 'Fes', 1),
(2234, 144, 'FIG', 'Figuig', 1),
(2235, 144, 'GLM', 'Guelmim', 1),
(2236, 144, 'IFR', 'Ifrane', 1),
(2237, 144, 'KEN', 'Kenitra', 1),
(2238, 144, 'KHM', 'Khemisset', 1),
(2239, 144, 'KHN', 'Khenifra', 1),
(2240, 144, 'KHO', 'Khouribga', 1),
(2241, 144, 'LYN', 'Laayoune', 1),
(2242, 144, 'LAR', 'Larache', 1),
(2243, 144, 'MRK', 'Marrakech', 1),
(2244, 144, 'MKN', 'Meknes', 1),
(2245, 144, 'NAD', 'Nador', 1),
(2246, 144, 'ORZ', 'Ouarzazate', 1),
(2247, 144, 'OUJ', 'Oujda', 1),
(2248, 144, 'RSA', 'Rabat-Sale', 1),
(2249, 144, 'SAF', 'Safi', 1),
(2250, 144, 'SET', 'Settat', 1),
(2251, 144, 'SKA', 'Sidi Kacem', 1),
(2252, 144, 'TGR', 'Tangier', 1),
(2253, 144, 'TAN', 'Tan-Tan', 1),
(2254, 144, 'TAO', 'Taounate', 1),
(2255, 144, 'TRD', 'Taroudannt', 1),
(2256, 144, 'TAT', 'Tata', 1),
(2257, 144, 'TAZ', 'Taza', 1),
(2258, 144, 'TET', 'Tetouan', 1),
(2259, 144, 'TIZ', 'Tiznit', 1),
(2260, 144, 'ADK', 'Ad Dakhla', 1),
(2261, 144, 'BJD', 'Boujdour', 1),
(2262, 144, 'ESM', 'Es Smara', 1),
(2263, 145, 'CD', 'Cabo Delgado', 1),
(2264, 145, 'GZ', 'Gaza', 1),
(2265, 145, 'IN', 'Inhambane', 1),
(2266, 145, 'MN', 'Manica', 1),
(2267, 145, 'MC', 'Maputo (city)', 1),
(2268, 145, 'MP', 'Maputo', 1),
(2269, 145, 'NA', 'Nampula', 1),
(2270, 145, 'NI', 'Niassa', 1),
(2271, 145, 'SO', 'Sofala', 1),
(2272, 145, 'TE', 'Tete', 1),
(2273, 145, 'ZA', 'Zambezia', 1),
(2274, 146, 'AY', 'Ayeyarwady', 1),
(2275, 146, 'BG', 'Bago', 1),
(2276, 146, 'MG', 'Magway', 1),
(2277, 146, 'MD', 'Mandalay', 1),
(2278, 146, 'SG', 'Sagaing', 1),
(2279, 146, 'TN', 'Tanintharyi', 1),
(2280, 146, 'YG', 'Yangon', 1),
(2281, 146, 'CH', 'Chin State', 1),
(2282, 146, 'KC', 'Kachin State', 1),
(2283, 146, 'KH', 'Kayah State', 1),
(2284, 146, 'KN', 'Kayin State', 1),
(2285, 146, 'MN', 'Mon State', 1),
(2286, 146, 'RK', 'Rakhine State', 1),
(2287, 146, 'SH', 'Shan State', 1),
(2288, 147, 'CA', 'Caprivi', 1),
(2289, 147, 'ER', 'Erongo', 1),
(2290, 147, 'HA', 'Hardap', 1),
(2291, 147, 'KR', 'Karas', 1),
(2292, 147, 'KV', 'Kavango', 1),
(2293, 147, 'KH', 'Khomas', 1),
(2294, 147, 'KU', 'Kunene', 1),
(2295, 147, 'OW', 'Ohangwena', 1),
(2296, 147, 'OK', 'Omaheke', 1),
(2297, 147, 'OT', 'Omusati', 1),
(2298, 147, 'ON', 'Oshana', 1),
(2299, 147, 'OO', 'Oshikoto', 1),
(2300, 147, 'OJ', 'Otjozondjupa', 1),
(2301, 148, 'AO', 'Aiwo', 1),
(2302, 148, 'AA', 'Anabar', 1),
(2303, 148, 'AT', 'Anetan', 1),
(2304, 148, 'AI', 'Anibare', 1),
(2305, 148, 'BA', 'Baiti', 1),
(2306, 148, 'BO', 'Boe', 1),
(2307, 148, 'BU', 'Buada', 1),
(2308, 148, 'DE', 'Denigomodu', 1),
(2309, 148, 'EW', 'Ewa', 1),
(2310, 148, 'IJ', 'Ijuw', 1),
(2311, 148, 'ME', 'Meneng', 1),
(2312, 148, 'NI', 'Nibok', 1),
(2313, 148, 'UA', 'Uaboe', 1),
(2314, 148, 'YA', 'Yaren', 1),
(2315, 149, 'BA', 'Bagmati', 1),
(2316, 149, 'BH', 'Bheri', 1),
(2317, 149, 'DH', 'Dhawalagiri', 1),
(2318, 149, 'GA', 'Gandaki', 1),
(2319, 149, 'JA', 'Janakpur', 1),
(2320, 149, 'KA', 'Karnali', 1),
(2321, 149, 'KO', 'Kosi', 1),
(2322, 149, 'LU', 'Lumbini', 1),
(2323, 149, 'MA', 'Mahakali', 1),
(2324, 149, 'ME', 'Mechi', 1),
(2325, 149, 'NA', 'Narayani', 1),
(2326, 149, 'RA', 'Rapti', 1),
(2327, 149, 'SA', 'Sagarmatha', 1),
(2328, 149, 'SE', 'Seti', 1),
(2329, 150, 'DR', 'Drenthe', 1),
(2330, 150, 'FL', 'Flevoland', 1),
(2331, 150, 'FR', 'Friesland', 1),
(2332, 150, 'GE', 'Gelderland', 1),
(2333, 150, 'GR', 'Groningen', 1),
(2334, 150, 'LI', 'Limburg', 1),
(2335, 150, 'NB', 'Noord Brabant', 1),
(2336, 150, 'NH', 'Noord Holland', 1),
(2337, 150, 'OV', 'Overijssel', 1),
(2338, 150, 'UT', 'Utrecht', 1),
(2339, 150, 'ZE', 'Zeeland', 1),
(2340, 150, 'ZH', 'Zuid Holland', 1),
(2341, 152, 'L', 'Iles Loyaute', 1),
(2342, 152, 'N', 'Nord', 1),
(2343, 152, 'S', 'Sud', 1),
(2344, 153, 'AUK', 'Auckland', 1),
(2345, 153, 'BOP', 'Bay of Plenty', 1),
(2346, 153, 'CAN', 'Canterbury', 1),
(2347, 153, 'COR', 'Coromandel', 1),
(2348, 153, 'GIS', 'Gisborne', 1),
(2349, 153, 'FIO', 'Fiordland', 1),
(2350, 153, 'HKB', 'Hawke''s Bay', 1),
(2351, 153, 'MBH', 'Marlborough', 1),
(2352, 153, 'MWT', 'Manawatu-Wanganui', 1),
(2353, 153, 'MCM', 'Mt Cook-Mackenzie', 1),
(2354, 153, 'NSN', 'Nelson', 1),
(2355, 153, 'NTL', 'Northland', 1),
(2356, 153, 'OTA', 'Otago', 1),
(2357, 153, 'STL', 'Southland', 1),
(2358, 153, 'TKI', 'Taranaki', 1),
(2359, 153, 'WGN', 'Wellington', 1),
(2360, 153, 'WKO', 'Waikato', 1),
(2361, 153, 'WAI', 'Wairprarapa', 1),
(2362, 153, 'WTC', 'West Coast', 1),
(2363, 154, 'AN', 'Atlantico Norte', 1),
(2364, 154, 'AS', 'Atlantico Sur', 1),
(2365, 154, 'BO', 'Boaco', 1),
(2366, 154, 'CA', 'Carazo', 1),
(2367, 154, 'CI', 'Chinandega', 1),
(2368, 154, 'CO', 'Chontales', 1),
(2369, 154, 'ES', 'Esteli', 1),
(2370, 154, 'GR', 'Granada', 1),
(2371, 154, 'JI', 'Jinotega', 1),
(2372, 154, 'LE', 'Leon', 1),
(2373, 154, 'MD', 'Madriz', 1),
(2374, 154, 'MN', 'Managua', 1),
(2375, 154, 'MS', 'Masaya', 1),
(2376, 154, 'MT', 'Matagalpa', 1),
(2377, 154, 'NS', 'Nuevo Segovia', 1),
(2378, 154, 'RS', 'Rio San Juan', 1),
(2379, 154, 'RI', 'Rivas', 1),
(2380, 155, 'AG', 'Agadez', 1),
(2381, 155, 'DF', 'Diffa', 1),
(2382, 155, 'DS', 'Dosso', 1),
(2383, 155, 'MA', 'Maradi', 1),
(2384, 155, 'NM', 'Niamey', 1),
(2385, 155, 'TH', 'Tahoua', 1),
(2386, 155, 'TL', 'Tillaberi', 1),
(2387, 155, 'ZD', 'Zinder', 1),
(2388, 156, 'AB', 'Abia', 1),
(2389, 156, 'CT', 'Abuja Federal Capital Territory', 1),
(2390, 156, 'AD', 'Adamawa', 1),
(2391, 156, 'AK', 'Akwa Ibom', 1),
(2392, 156, 'AN', 'Anambra', 1),
(2393, 156, 'BC', 'Bauchi', 1),
(2394, 156, 'BY', 'Bayelsa', 1),
(2395, 156, 'BN', 'Benue', 1),
(2396, 156, 'BO', 'Borno', 1),
(2397, 156, 'CR', 'Cross River', 1),
(2398, 156, 'DE', 'Delta', 1),
(2399, 156, 'EB', 'Ebonyi', 1),
(2400, 156, 'ED', 'Edo', 1),
(2401, 156, 'EK', 'Ekiti', 1),
(2402, 156, 'EN', 'Enugu', 1),
(2403, 156, 'GO', 'Gombe', 1),
(2404, 156, 'IM', 'Imo', 1),
(2405, 156, 'JI', 'Jigawa', 1),
(2406, 156, 'KD', 'Kaduna', 1),
(2407, 156, 'KN', 'Kano', 1),
(2408, 156, 'KT', 'Katsina', 1),
(2409, 156, 'KE', 'Kebbi', 1),
(2410, 156, 'KO', 'Kogi', 1),
(2411, 156, 'KW', 'Kwara', 1),
(2412, 156, 'LA', 'Lagos', 1),
(2413, 156, 'NA', 'Nassarawa', 1),
(2414, 156, 'NI', 'Niger', 1),
(2415, 156, 'OG', 'Ogun', 1),
(2416, 156, 'ONG', 'Ondo', 1),
(2417, 156, 'OS', 'Osun', 1),
(2418, 156, 'OY', 'Oyo', 1),
(2419, 156, 'PL', 'Plateau', 1),
(2420, 156, 'RI', 'Rivers', 1),
(2421, 156, 'SO', 'Sokoto', 1),
(2422, 156, 'TA', 'Taraba', 1),
(2423, 156, 'YO', 'Yobe', 1),
(2424, 156, 'ZA', 'Zamfara', 1),
(2425, 159, 'N', 'Northern Islands', 1),
(2426, 159, 'R', 'Rota', 1),
(2427, 159, 'S', 'Saipan', 1),
(2428, 159, 'T', 'Tinian', 1),
(2429, 160, 'AK', 'Akershus', 1),
(2430, 160, 'AA', 'Aust-Agder', 1),
(2431, 160, 'BU', 'Buskerud', 1),
(2432, 160, 'FM', 'Finnmark', 1),
(2433, 160, 'HM', 'Hedmark', 1),
(2434, 160, 'HL', 'Hordaland', 1),
(2435, 160, 'MR', 'More og Romdal', 1),
(2436, 160, 'NT', 'Nord-Trondelag', 1),
(2437, 160, 'NL', 'Nordland', 1),
(2438, 160, 'OF', 'Ostfold', 1),
(2439, 160, 'OP', 'Oppland', 1),
(2440, 160, 'OL', 'Oslo', 1),
(2441, 160, 'RL', 'Rogaland', 1),
(2442, 160, 'ST', 'Sor-Trondelag', 1),
(2443, 160, 'SJ', 'Sogn og Fjordane', 1),
(2444, 160, 'SV', 'Svalbard', 1),
(2445, 160, 'TM', 'Telemark', 1),
(2446, 160, 'TR', 'Troms', 1),
(2447, 160, 'VA', 'Vest-Agder', 1),
(2448, 160, 'VF', 'Vestfold', 1),
(2449, 161, 'DA', 'Ad Dakhiliyah', 1),
(2450, 161, 'BA', 'Al Batinah', 1),
(2451, 161, 'WU', 'Al Wusta', 1),
(2452, 161, 'SH', 'Ash Sharqiyah', 1),
(2453, 161, 'ZA', 'Az Zahirah', 1),
(2454, 161, 'MA', 'Masqat', 1),
(2455, 161, 'MU', 'Musandam', 1),
(2456, 161, 'ZU', 'Zufar', 1),
(2457, 162, 'B', 'Balochistan', 1),
(2458, 162, 'T', 'Federally Administered Tribal Areas', 1),
(2459, 162, 'I', 'Islamabad Capital Territory', 1),
(2460, 162, 'N', 'North-West Frontier', 1),
(2461, 162, 'P', 'Punjab', 1),
(2462, 162, 'S', 'Sindh', 1),
(2463, 163, 'AM', 'Aimeliik', 1),
(2464, 163, 'AR', 'Airai', 1),
(2465, 163, 'AN', 'Angaur', 1),
(2466, 163, 'HA', 'Hatohobei', 1),
(2467, 163, 'KA', 'Kayangel', 1),
(2468, 163, 'KO', 'Koror', 1),
(2469, 163, 'ME', 'Melekeok', 1),
(2470, 163, 'NA', 'Ngaraard', 1),
(2471, 163, 'NG', 'Ngarchelong', 1),
(2472, 163, 'ND', 'Ngardmau', 1),
(2473, 163, 'NT', 'Ngatpang', 1),
(2474, 163, 'NC', 'Ngchesar', 1),
(2475, 163, 'NR', 'Ngeremlengui', 1),
(2476, 163, 'NW', 'Ngiwal', 1),
(2477, 163, 'PE', 'Peleliu', 1),
(2478, 163, 'SO', 'Sonsorol', 1),
(2479, 164, 'BT', 'Bocas del Toro', 1),
(2480, 164, 'CH', 'Chiriqui', 1),
(2481, 164, 'CC', 'Cocle', 1),
(2482, 164, 'CL', 'Colon', 1),
(2483, 164, 'DA', 'Darien', 1),
(2484, 164, 'HE', 'Herrera', 1),
(2485, 164, 'LS', 'Los Santos', 1),
(2486, 164, 'PA', 'Panama', 1),
(2487, 164, 'SB', 'San Blas', 1),
(2488, 164, 'VG', 'Veraguas', 1),
(2489, 165, 'BV', 'Bougainville', 1),
(2490, 165, 'CE', 'Central', 1),
(2491, 165, 'CH', 'Chimbu', 1),
(2492, 165, 'EH', 'Eastern Highlands', 1),
(2493, 165, 'EB', 'East New Britain', 1),
(2494, 165, 'ES', 'East Sepik', 1),
(2495, 165, 'EN', 'Enga', 1),
(2496, 165, 'GU', 'Gulf', 1),
(2497, 165, 'MD', 'Madang', 1),
(2498, 165, 'MN', 'Manus', 1),
(2499, 165, 'MB', 'Milne Bay', 1),
(2500, 165, 'MR', 'Morobe', 1),
(2501, 165, 'NC', 'National Capital', 1),
(2502, 165, 'NI', 'New Ireland', 1),
(2503, 165, 'NO', 'Northern', 1),
(2504, 165, 'SA', 'Sandaun', 1),
(2505, 165, 'SH', 'Southern Highlands', 1),
(2506, 165, 'WE', 'Western', 1),
(2507, 165, 'WH', 'Western Highlands', 1),
(2508, 165, 'WB', 'West New Britain', 1),
(2509, 166, 'AG', 'Alto Paraguay', 1),
(2510, 166, 'AN', 'Alto Parana', 1),
(2511, 166, 'AM', 'Amambay', 1),
(2512, 166, 'AS', 'Asuncion', 1),
(2513, 166, 'BO', 'Boqueron', 1),
(2514, 166, 'CG', 'Caaguazu', 1),
(2515, 166, 'CZ', 'Caazapa', 1),
(2516, 166, 'CN', 'Canindeyu', 1),
(2517, 166, 'CE', 'Central', 1),
(2518, 166, 'CC', 'Concepcion', 1),
(2519, 166, 'CD', 'Cordillera', 1),
(2520, 166, 'GU', 'Guaira', 1),
(2521, 166, 'IT', 'Itapua', 1),
(2522, 166, 'MI', 'Misiones', 1),
(2523, 166, 'NE', 'Neembucu', 1),
(2524, 166, 'PA', 'Paraguari', 1),
(2525, 166, 'PH', 'Presidente Hayes', 1),
(2526, 166, 'SP', 'San Pedro', 1),
(2527, 167, 'AM', 'Amazonas', 1),
(2528, 167, 'AN', 'Ancash', 1),
(2529, 167, 'AP', 'Apurimac', 1),
(2530, 167, 'AR', 'Arequipa', 1),
(2531, 167, 'AY', 'Ayacucho', 1),
(2532, 167, 'CJ', 'Cajamarca', 1),
(2533, 167, 'CL', 'Callao', 1),
(2534, 167, 'CU', 'Cusco', 1),
(2535, 167, 'HV', 'Huancavelica', 1),
(2536, 167, 'HO', 'Huanuco', 1),
(2537, 167, 'IC', 'Ica', 1),
(2538, 167, 'JU', 'Junin', 1),
(2539, 167, 'LD', 'La Libertad', 1),
(2540, 167, 'LY', 'Lambayeque', 1),
(2541, 167, 'LI', 'Lima', 1),
(2542, 167, 'LO', 'Loreto', 1),
(2543, 167, 'MD', 'Madre de Dios', 1),
(2544, 167, 'MO', 'Moquegua', 1),
(2545, 167, 'PA', 'Pasco', 1),
(2546, 167, 'PI', 'Piura', 1),
(2547, 167, 'PU', 'Puno', 1),
(2548, 167, 'SM', 'San Martin', 1),
(2549, 167, 'TA', 'Tacna', 1),
(2550, 167, 'TU', 'Tumbes', 1),
(2551, 167, 'UC', 'Ucayali', 1),
(2552, 168, 'ABR', 'Abra', 1),
(2553, 168, 'ANO', 'Agusan del Norte', 1),
(2554, 168, 'ASU', 'Agusan del Sur', 1),
(2555, 168, 'AKL', 'Aklan', 1),
(2556, 168, 'ALB', 'Albay', 1),
(2557, 168, 'ANT', 'Antique', 1),
(2558, 168, 'APY', 'Apayao', 1),
(2559, 168, 'AUR', 'Aurora', 1),
(2560, 168, 'BAS', 'Basilan', 1),
(2561, 168, 'BTA', 'Bataan', 1),
(2562, 168, 'BTE', 'Batanes', 1),
(2563, 168, 'BTG', 'Batangas', 1),
(2564, 168, 'BLR', 'Biliran', 1),
(2565, 168, 'BEN', 'Benguet', 1),
(2566, 168, 'BOL', 'Bohol', 1),
(2567, 168, 'BUK', 'Bukidnon', 1),
(2568, 168, 'BUL', 'Bulacan', 1),
(2569, 168, 'CAG', 'Cagayan', 1),
(2570, 168, 'CNO', 'Camarines Norte', 1),
(2571, 168, 'CSU', 'Camarines Sur', 1),
(2572, 168, 'CAM', 'Camiguin', 1),
(2573, 168, 'CAP', 'Capiz', 1),
(2574, 168, 'CAT', 'Catanduanes', 1),
(2575, 168, 'CAV', 'Cavite', 1),
(2576, 168, 'CEB', 'Cebu', 1),
(2577, 168, 'CMP', 'Compostela', 1),
(2578, 168, 'DNO', 'Davao del Norte', 1),
(2579, 168, 'DSU', 'Davao del Sur', 1),
(2580, 168, 'DOR', 'Davao Oriental', 1),
(2581, 168, 'ESA', 'Eastern Samar', 1),
(2582, 168, 'GUI', 'Guimaras', 1),
(2583, 168, 'IFU', 'Ifugao', 1),
(2584, 168, 'INO', 'Ilocos Norte', 1),
(2585, 168, 'ISU', 'Ilocos Sur', 1),
(2586, 168, 'ILO', 'Iloilo', 1),
(2587, 168, 'ISA', 'Isabela', 1),
(2588, 168, 'KAL', 'Kalinga', 1),
(2589, 168, 'LAG', 'Laguna', 1),
(2590, 168, 'LNO', 'Lanao del Norte', 1),
(2591, 168, 'LSU', 'Lanao del Sur', 1),
(2592, 168, 'UNI', 'La Union', 1),
(2593, 168, 'LEY', 'Leyte', 1),
(2594, 168, 'MAG', 'Maguindanao', 1),
(2595, 168, 'MRN', 'Marinduque', 1),
(2596, 168, 'MSB', 'Masbate', 1),
(2597, 168, 'MIC', 'Mindoro Occidental', 1),
(2598, 168, 'MIR', 'Mindoro Oriental', 1),
(2599, 168, 'MSC', 'Misamis Occidental', 1),
(2600, 168, 'MOR', 'Misamis Oriental', 1),
(2601, 168, 'MOP', 'Mountain', 1),
(2602, 168, 'NOC', 'Negros Occidental', 1),
(2603, 168, 'NOR', 'Negros Oriental', 1),
(2604, 168, 'NCT', 'North Cotabato', 1),
(2605, 168, 'NSM', 'Northern Samar', 1),
(2606, 168, 'NEC', 'Nueva Ecija', 1),
(2607, 168, 'NVZ', 'Nueva Vizcaya', 1),
(2608, 168, 'PLW', 'Palawan', 1),
(2609, 168, 'PMP', 'Pampanga', 1),
(2610, 168, 'PNG', 'Pangasinan', 1),
(2611, 168, 'QZN', 'Quezon', 1),
(2612, 168, 'QRN', 'Quirino', 1),
(2613, 168, 'RIZ', 'Rizal', 1),
(2614, 168, 'ROM', 'Romblon', 1),
(2615, 168, 'SMR', 'Samar', 1),
(2616, 168, 'SRG', 'Sarangani', 1),
(2617, 168, 'SQJ', 'Siquijor', 1),
(2618, 168, 'SRS', 'Sorsogon', 1),
(2619, 168, 'SCO', 'South Cotabato', 1),
(2620, 168, 'SLE', 'Southern Leyte', 1),
(2621, 168, 'SKU', 'Sultan Kudarat', 1),
(2622, 168, 'SLU', 'Sulu', 1),
(2623, 168, 'SNO', 'Surigao del Norte', 1),
(2624, 168, 'SSU', 'Surigao del Sur', 1),
(2625, 168, 'TAR', 'Tarlac', 1),
(2626, 168, 'TAW', 'Tawi-Tawi', 1),
(2627, 168, 'ZBL', 'Zambales', 1),
(2628, 168, 'ZNO', 'Zamboanga del Norte', 1),
(2629, 168, 'ZSU', 'Zamboanga del Sur', 1),
(2630, 168, 'ZSI', 'Zamboanga Sibugay', 1),
(2631, 170, 'DO', 'Dolnoslaskie', 1),
(2632, 170, 'KP', 'Kujawsko-Pomorskie', 1),
(2633, 170, 'LO', 'Lodzkie', 1),
(2634, 170, 'LL', 'Lubelskie', 1),
(2635, 170, 'LU', 'Lubuskie', 1),
(2636, 170, 'ML', 'Malopolskie', 1),
(2637, 170, 'MZ', 'Mazowieckie', 1),
(2638, 170, 'OP', 'Opolskie', 1),
(2639, 170, 'PP', 'Podkarpackie', 1),
(2640, 170, 'PL', 'Podlaskie', 1),
(2641, 170, 'PM', 'Pomorskie', 1),
(2642, 170, 'SL', 'Slaskie', 1),
(2643, 170, 'SW', 'Swietokrzyskie', 1),
(2644, 170, 'WM', 'Warminsko-Mazurskie', 1),
(2645, 170, 'WP', 'Wielkopolskie', 1),
(2646, 170, 'ZA', 'Zachodniopomorskie', 1),
(2647, 198, 'P', 'Saint Pierre', 1),
(2648, 198, 'M', 'Miquelon', 1),
(2649, 171, 'AC', 'A&ccedil;ores', 1),
(2650, 171, 'AV', 'Aveiro', 1),
(2651, 171, 'BE', 'Beja', 1),
(2652, 171, 'BR', 'Braga', 1),
(2653, 171, 'BA', 'Bragan&ccedil;a', 1),
(2654, 171, 'CB', 'Castelo Branco', 1),
(2655, 171, 'CO', 'Coimbra', 1),
(2656, 171, 'EV', '&Eacute;vora', 1),
(2657, 171, 'FA', 'Faro', 1),
(2658, 171, 'GU', 'Guarda', 1),
(2659, 171, 'LE', 'Leiria', 1),
(2660, 171, 'LI', 'Lisboa', 1),
(2661, 171, 'ME', 'Madeira', 1),
(2662, 171, 'PO', 'Portalegre', 1),
(2663, 171, 'PR', 'Porto', 1),
(2664, 171, 'SA', 'Santar&eacute;m', 1),
(2665, 171, 'SE', 'Set&uacute;bal', 1),
(2666, 171, 'VC', 'Viana do Castelo', 1),
(2667, 171, 'VR', 'Vila Real', 1),
(2668, 171, 'VI', 'Viseu', 1),
(2669, 173, 'DW', 'Ad Dawhah', 1),
(2670, 173, 'GW', 'Al Ghuwayriyah', 1),
(2671, 173, 'JM', 'Al Jumayliyah', 1),
(2672, 173, 'KR', 'Al Khawr', 1),
(2673, 173, 'WK', 'Al Wakrah', 1),
(2674, 173, 'RN', 'Ar Rayyan', 1),
(2675, 173, 'JB', 'Jarayan al Batinah', 1),
(2676, 173, 'MS', 'Madinat ash Shamal', 1),
(2677, 173, 'UD', 'Umm Sa''id', 1),
(2678, 173, 'UL', 'Umm Salal', 1),
(2679, 175, 'AB', 'Alba', 1),
(2680, 175, 'AR', 'Arad', 1),
(2681, 175, 'AG', 'Arges', 1),
(2682, 175, 'BC', 'Bacau', 1),
(2683, 175, 'BH', 'Bihor', 1),
(2684, 175, 'BN', 'Bistrita-Nasaud', 1),
(2685, 175, 'BT', 'Botosani', 1),
(2686, 175, 'BV', 'Brasov', 1),
(2687, 175, 'BR', 'Braila', 1),
(2688, 175, 'B', 'Bucuresti', 1),
(2689, 175, 'BZ', 'Buzau', 1),
(2690, 175, 'CS', 'Caras-Severin', 1),
(2691, 175, 'CL', 'Calarasi', 1),
(2692, 175, 'CJ', 'Cluj', 1),
(2693, 175, 'CT', 'Constanta', 1),
(2694, 175, 'CV', 'Covasna', 1),
(2695, 175, 'DB', 'Dimbovita', 1),
(2696, 175, 'DJ', 'Dolj', 1),
(2697, 175, 'GL', 'Galati', 1),
(2698, 175, 'GR', 'Giurgiu', 1),
(2699, 175, 'GJ', 'Gorj', 1),
(2700, 175, 'HR', 'Harghita', 1),
(2701, 175, 'HD', 'Hunedoara', 1),
(2702, 175, 'IL', 'Ialomita', 1),
(2703, 175, 'IS', 'Iasi', 1),
(2704, 175, 'IF', 'Ilfov', 1),
(2705, 175, 'MM', 'Maramures', 1),
(2706, 175, 'MH', 'Mehedinti', 1),
(2707, 175, 'MS', 'Mures', 1),
(2708, 175, 'NT', 'Neamt', 1),
(2709, 175, 'OT', 'Olt', 1),
(2710, 175, 'PH', 'Prahova', 1),
(2711, 175, 'SM', 'Satu-Mare', 1),
(2712, 175, 'SJ', 'Salaj', 1),
(2713, 175, 'SB', 'Sibiu', 1),
(2714, 175, 'SV', 'Suceava', 1),
(2715, 175, 'TR', 'Teleorman', 1),
(2716, 175, 'TM', 'Timis', 1),
(2717, 175, 'TL', 'Tulcea', 1),
(2718, 175, 'VS', 'Vaslui', 1),
(2719, 175, 'VL', 'Valcea', 1),
(2720, 175, 'VN', 'Vrancea', 1),
(2721, 176, 'AB', 'Abakan', 1),
(2722, 176, 'AG', 'Aginskoye', 1),
(2723, 176, 'AN', 'Anadyr', 1),
(2724, 176, 'AR', 'Arkahangelsk', 1),
(2725, 176, 'AS', 'Astrakhan', 1),
(2726, 176, 'BA', 'Barnaul', 1),
(2727, 176, 'BE', 'Belgorod', 1),
(2728, 176, 'BI', 'Birobidzhan', 1),
(2729, 176, 'BL', 'Blagoveshchensk', 1),
(2730, 176, 'BR', 'Bryansk', 1),
(2731, 176, 'CH', 'Cheboksary', 1),
(2732, 176, 'CL', 'Chelyabinsk', 1),
(2733, 176, 'CR', 'Cherkessk', 1),
(2734, 176, 'CI', 'Chita', 1),
(2735, 176, 'DU', 'Dudinka', 1),
(2736, 176, 'EL', 'Elista', 1),
(2737, 176, 'GO', 'Gomo-Altaysk', 1),
(2738, 176, 'GA', 'Gorno-Altaysk', 1),
(2739, 176, 'GR', 'Groznyy', 1),
(2740, 176, 'IR', 'Irkutsk', 1),
(2741, 176, 'IV', 'Ivanovo', 1),
(2742, 176, 'IZ', 'Izhevsk', 1),
(2743, 176, 'KA', 'Kalinigrad', 1),
(2744, 176, 'KL', 'Kaluga', 1),
(2745, 176, 'KS', 'Kasnodar', 1),
(2746, 176, 'KZ', 'Kazan', 1),
(2747, 176, 'KE', 'Kemerovo', 1),
(2748, 176, 'KH', 'Khabarovsk', 1),
(2749, 176, 'KM', 'Khanty-Mansiysk', 1),
(2750, 176, 'KO', 'Kostroma', 1),
(2751, 176, 'KR', 'Krasnodar', 1),
(2752, 176, 'KN', 'Krasnoyarsk', 1),
(2753, 176, 'KU', 'Kudymkar', 1),
(2754, 176, 'KG', 'Kurgan', 1),
(2755, 176, 'KK', 'Kursk', 1),
(2756, 176, 'KY', 'Kyzyl', 1),
(2757, 176, 'LI', 'Lipetsk', 1),
(2758, 176, 'MA', 'Magadan', 1),
(2759, 176, 'MK', 'Makhachkala', 1),
(2760, 176, 'MY', 'Maykop', 1),
(2761, 176, 'MO', 'Moscow', 1),
(2762, 176, 'MU', 'Murmansk', 1),
(2763, 176, 'NA', 'Nalchik', 1),
(2764, 176, 'NR', 'Naryan Mar', 1),
(2765, 176, 'NZ', 'Nazran', 1),
(2766, 176, 'NI', 'Nizhniy Novgorod', 1),
(2767, 176, 'NO', 'Novgorod', 1),
(2768, 176, 'NV', 'Novosibirsk', 1),
(2769, 176, 'OM', 'Omsk', 1),
(2770, 176, 'OR', 'Orel', 1),
(2771, 176, 'OE', 'Orenburg', 1),
(2772, 176, 'PA', 'Palana', 1),
(2773, 176, 'PE', 'Penza', 1),
(2774, 176, 'PR', 'Perm', 1),
(2775, 176, 'PK', 'Petropavlovsk-Kamchatskiy', 1),
(2776, 176, 'PT', 'Petrozavodsk', 1),
(2777, 176, 'PS', 'Pskov', 1),
(2778, 176, 'RO', 'Rostov-na-Donu', 1),
(2779, 176, 'RY', 'Ryazan', 1),
(2780, 176, 'SL', 'Salekhard', 1),
(2781, 176, 'SA', 'Samara', 1),
(2782, 176, 'SR', 'Saransk', 1),
(2783, 176, 'SV', 'Saratov', 1),
(2784, 176, 'SM', 'Smolensk', 1),
(2785, 176, 'SP', 'St. Petersburg', 1),
(2786, 176, 'ST', 'Stavropol', 1),
(2787, 176, 'SY', 'Syktyvkar', 1),
(2788, 176, 'TA', 'Tambov', 1),
(2789, 176, 'TO', 'Tomsk', 1),
(2790, 176, 'TU', 'Tula', 1),
(2791, 176, 'TR', 'Tura', 1),
(2792, 176, 'TV', 'Tver', 1),
(2793, 176, 'TY', 'Tyumen', 1),
(2794, 176, 'UF', 'Ufa', 1),
(2795, 176, 'UL', 'Ul''yanovsk', 1),
(2796, 176, 'UU', 'Ulan-Ude', 1),
(2797, 176, 'US', 'Ust''-Ordynskiy', 1),
(2798, 176, 'VL', 'Vladikavkaz', 1),
(2799, 176, 'VA', 'Vladimir', 1),
(2800, 176, 'VV', 'Vladivostok', 1),
(2801, 176, 'VG', 'Volgograd', 1),
(2802, 176, 'VD', 'Vologda', 1),
(2803, 176, 'VO', 'Voronezh', 1),
(2804, 176, 'VY', 'Vyatka', 1),
(2805, 176, 'YA', 'Yakutsk', 1),
(2806, 176, 'YR', 'Yaroslavl', 1),
(2807, 176, 'YE', 'Yekaterinburg', 1),
(2808, 176, 'YO', 'Yoshkar-Ola', 1),
(2809, 177, 'BU', 'Butare', 1),
(2810, 177, 'BY', 'Byumba', 1),
(2811, 177, 'CY', 'Cyangugu', 1),
(2812, 177, 'GK', 'Gikongoro', 1),
(2813, 177, 'GS', 'Gisenyi', 1),
(2814, 177, 'GT', 'Gitarama', 1),
(2815, 177, 'KG', 'Kibungo', 1),
(2816, 177, 'KY', 'Kibuye', 1),
(2817, 177, 'KR', 'Kigali Rurale', 1),
(2818, 177, 'KV', 'Kigali-ville', 1),
(2819, 177, 'RU', 'Ruhengeri', 1),
(2820, 177, 'UM', 'Umutara', 1),
(2821, 178, 'CCN', 'Christ Church Nichola Town', 1),
(2822, 178, 'SAS', 'Saint Anne Sandy Point', 1),
(2823, 178, 'SGB', 'Saint George Basseterre', 1),
(2824, 178, 'SGG', 'Saint George Gingerland', 1),
(2825, 178, 'SJW', 'Saint James Windward', 1),
(2826, 178, 'SJC', 'Saint John Capesterre', 1),
(2827, 178, 'SJF', 'Saint John Figtree', 1),
(2828, 178, 'SMC', 'Saint Mary Cayon', 1),
(2829, 178, 'CAP', 'Saint Paul Capesterre', 1),
(2830, 178, 'CHA', 'Saint Paul Charlestown', 1),
(2831, 178, 'SPB', 'Saint Peter Basseterre', 1),
(2832, 178, 'STL', 'Saint Thomas Lowland', 1),
(2833, 178, 'STM', 'Saint Thomas Middle Island', 1),
(2834, 178, 'TPP', 'Trinity Palmetto Point', 1),
(2835, 179, 'AR', 'Anse-la-Raye', 1),
(2836, 179, 'CA', 'Castries', 1),
(2837, 179, 'CH', 'Choiseul', 1),
(2838, 179, 'DA', 'Dauphin', 1),
(2839, 179, 'DE', 'Dennery', 1),
(2840, 179, 'GI', 'Gros-Islet', 1),
(2841, 179, 'LA', 'Laborie', 1),
(2842, 179, 'MI', 'Micoud', 1),
(2843, 179, 'PR', 'Praslin', 1),
(2844, 179, 'SO', 'Soufriere', 1),
(2845, 179, 'VF', 'Vieux-Fort', 1),
(2846, 180, 'C', 'Charlotte', 1),
(2847, 180, 'R', 'Grenadines', 1),
(2848, 180, 'A', 'Saint Andrew', 1),
(2849, 180, 'D', 'Saint David', 1),
(2850, 180, 'G', 'Saint George', 1),
(2851, 180, 'P', 'Saint Patrick', 1),
(2852, 181, 'AN', 'A''ana', 1),
(2853, 181, 'AI', 'Aiga-i-le-Tai', 1),
(2854, 181, 'AT', 'Atua', 1),
(2855, 181, 'FA', 'Fa''asaleleaga', 1),
(2856, 181, 'GE', 'Gaga''emauga', 1),
(2857, 181, 'GF', 'Gagaifomauga', 1),
(2858, 181, 'PA', 'Palauli', 1),
(2859, 181, 'SA', 'Satupa''itea', 1),
(2860, 181, 'TU', 'Tuamasaga', 1),
(2861, 181, 'VF', 'Va''a-o-Fonoti', 1),
(2862, 181, 'VS', 'Vaisigano', 1),
(2863, 182, 'AC', 'Acquaviva', 1),
(2864, 182, 'BM', 'Borgo Maggiore', 1),
(2865, 182, 'CH', 'Chiesanuova', 1),
(2866, 182, 'DO', 'Domagnano', 1),
(2867, 182, 'FA', 'Faetano', 1),
(2868, 182, 'FI', 'Fiorentino', 1),
(2869, 182, 'MO', 'Montegiardino', 1),
(2870, 182, 'SM', 'Citta di San Marino', 1),
(2871, 182, 'SE', 'Serravalle', 1),
(2872, 183, 'S', 'Sao Tome', 1),
(2873, 183, 'P', 'Principe', 1),
(2874, 184, 'BH', 'Al Bahah', 1),
(2875, 184, 'HS', 'Al Hudud ash Shamaliyah', 1),
(2876, 184, 'JF', 'Al Jawf', 1),
(2877, 184, 'MD', 'Al Madinah', 1),
(2878, 184, 'QS', 'Al Qasim', 1),
(2879, 184, 'RD', 'Ar Riyad', 1),
(2880, 184, 'AQ', 'Ash Sharqiyah (Eastern)', 1),
(2881, 184, 'AS', '''Asir', 1),
(2882, 184, 'HL', 'Ha''il', 1),
(2883, 184, 'JZ', 'Jizan', 1),
(2884, 184, 'ML', 'Makkah', 1),
(2885, 184, 'NR', 'Najran', 1),
(2886, 184, 'TB', 'Tabuk', 1),
(2887, 185, 'DA', 'Dakar', 1),
(2888, 185, 'DI', 'Diourbel', 1),
(2889, 185, 'FA', 'Fatick', 1),
(2890, 185, 'KA', 'Kaolack', 1),
(2891, 185, 'KO', 'Kolda', 1),
(2892, 185, 'LO', 'Louga', 1),
(2893, 185, 'MA', 'Matam', 1),
(2894, 185, 'SL', 'Saint-Louis', 1),
(2895, 185, 'TA', 'Tambacounda', 1),
(2896, 185, 'TH', 'Thies', 1),
(2897, 185, 'ZI', 'Ziguinchor', 1),
(2898, 186, 'AP', 'Anse aux Pins', 1),
(2899, 186, 'AB', 'Anse Boileau', 1),
(2900, 186, 'AE', 'Anse Etoile', 1),
(2901, 186, 'AL', 'Anse Louis', 1),
(2902, 186, 'AR', 'Anse Royale', 1),
(2903, 186, 'BL', 'Baie Lazare', 1),
(2904, 186, 'BS', 'Baie Sainte Anne', 1),
(2905, 186, 'BV', 'Beau Vallon', 1),
(2906, 186, 'BA', 'Bel Air', 1),
(2907, 186, 'BO', 'Bel Ombre', 1),
(2908, 186, 'CA', 'Cascade', 1),
(2909, 186, 'GL', 'Glacis', 1),
(2910, 186, 'GM', 'Grand'' Anse (on Mahe)', 1),
(2911, 186, 'GP', 'Grand'' Anse (on Praslin)', 1),
(2912, 186, 'DG', 'La Digue', 1),
(2913, 186, 'RA', 'La Riviere Anglaise', 1),
(2914, 186, 'MB', 'Mont Buxton', 1),
(2915, 186, 'MF', 'Mont Fleuri', 1),
(2916, 186, 'PL', 'Plaisance', 1),
(2917, 186, 'PR', 'Pointe La Rue', 1),
(2918, 186, 'PG', 'Port Glaud', 1),
(2919, 186, 'SL', 'Saint Louis', 1),
(2920, 186, 'TA', 'Takamaka', 1),
(2921, 187, 'E', 'Eastern', 1),
(2922, 187, 'N', 'Northern', 1),
(2923, 187, 'S', 'Southern', 1),
(2924, 187, 'W', 'Western', 1),
(2925, 189, 'BA', 'Banskobystricky', 1),
(2926, 189, 'BR', 'Bratislavsky', 1),
(2927, 189, 'KO', 'Kosicky', 1),
(2928, 189, 'NI', 'Nitriansky', 1),
(2929, 189, 'PR', 'Presovsky', 1),
(2930, 189, 'TC', 'Trenciansky', 1),
(2931, 189, 'TV', 'Trnavsky', 1),
(2932, 189, 'ZI', 'Zilinsky', 1),
(2933, 191, 'CE', 'Central', 1),
(2934, 191, 'CH', 'Choiseul', 1),
(2935, 191, 'GC', 'Guadalcanal', 1),
(2936, 191, 'HO', 'Honiara', 1),
(2937, 191, 'IS', 'Isabel', 1),
(2938, 191, 'MK', 'Makira', 1),
(2939, 191, 'ML', 'Malaita', 1),
(2940, 191, 'RB', 'Rennell and Bellona', 1),
(2941, 191, 'TM', 'Temotu', 1),
(2942, 191, 'WE', 'Western', 1),
(2943, 192, 'AW', 'Awdal', 1),
(2944, 192, 'BK', 'Bakool', 1),
(2945, 192, 'BN', 'Banaadir', 1),
(2946, 192, 'BR', 'Bari', 1),
(2947, 192, 'BY', 'Bay', 1),
(2948, 192, 'GA', 'Galguduud', 1),
(2949, 192, 'GE', 'Gedo', 1),
(2950, 192, 'HI', 'Hiiraan', 1),
(2951, 192, 'JD', 'Jubbada Dhexe', 1),
(2952, 192, 'JH', 'Jubbada Hoose', 1),
(2953, 192, 'MU', 'Mudug', 1),
(2954, 192, 'NU', 'Nugaal', 1),
(2955, 192, 'SA', 'Sanaag', 1),
(2956, 192, 'SD', 'Shabeellaha Dhexe', 1),
(2957, 192, 'SH', 'Shabeellaha Hoose', 1),
(2958, 192, 'SL', 'Sool', 1),
(2959, 192, 'TO', 'Togdheer', 1),
(2960, 192, 'WG', 'Woqooyi Galbeed', 1),
(2961, 193, 'EC', 'Eastern Cape', 1),
(2962, 193, 'FS', 'Free State', 1),
(2963, 193, 'GT', 'Gauteng', 1),
(2964, 193, 'KN', 'KwaZulu-Natal', 1),
(2965, 193, 'LP', 'Limpopo', 1),
(2966, 193, 'MP', 'Mpumalanga', 1),
(2967, 193, 'NW', 'North West', 1),
(2968, 193, 'NC', 'Northern Cape', 1),
(2969, 193, 'WC', 'Western Cape', 1),
(2970, 195, 'CA', 'La Coru&ntilde;a', 1),
(2971, 195, 'AL', '&Aacute;lava', 1),
(2972, 195, 'AB', 'Albacete', 1),
(2973, 195, 'AC', 'Alicante', 1),
(2974, 195, 'AM', 'Almeria', 1),
(2975, 195, 'AS', 'Asturias', 1),
(2976, 195, 'AV', '&Aacute;vila', 1),
(2977, 195, 'BJ', 'Badajoz', 1),
(2978, 195, 'IB', 'Baleares', 1),
(2979, 195, 'BA', 'Barcelona', 1),
(2980, 195, 'BU', 'Burgos', 1),
(2981, 195, 'CC', 'C&aacute;ceres', 1),
(2982, 195, 'CZ', 'C&aacute;diz', 1),
(2983, 195, 'CT', 'Cantabria', 1),
(2984, 195, 'CL', 'Castell&oacute;n', 1),
(2985, 195, 'CE', 'Ceuta', 1),
(2986, 195, 'CR', 'Ciudad Real', 1),
(2987, 195, 'CD', 'C&oacute;rdoba', 1),
(2988, 195, 'CU', 'Cuenca', 1),
(2989, 195, 'GI', 'Girona', 1),
(2990, 195, 'GD', 'Granada', 1),
(2991, 195, 'GJ', 'Guadalajara', 1),
(2992, 195, 'GP', 'Guip&uacute;zcoa', 1),
(2993, 195, 'HL', 'Huelva', 1),
(2994, 195, 'HS', 'Huesca', 1),
(2995, 195, 'JN', 'Ja&eacute;n', 1),
(2996, 195, 'RJ', 'La Rioja', 1),
(2997, 195, 'PM', 'Las Palmas', 1),
(2998, 195, 'LE', 'Leon', 1),
(2999, 195, 'LL', 'Lleida', 1),
(3000, 195, 'LG', 'Lugo', 1),
(3001, 195, 'MD', 'Madrid', 1),
(3002, 195, 'MA', 'Malaga', 1),
(3003, 195, 'ML', 'Melilla', 1),
(3004, 195, 'MU', 'Murcia', 1),
(3005, 195, 'NV', 'Navarra', 1),
(3006, 195, 'OU', 'Ourense', 1),
(3007, 195, 'PL', 'Palencia', 1),
(3008, 195, 'PO', 'Pontevedra', 1),
(3009, 195, 'SL', 'Salamanca', 1),
(3010, 195, 'SC', 'Santa Cruz de Tenerife', 1),
(3011, 195, 'SG', 'Segovia', 1),
(3012, 195, 'SV', 'Sevilla', 1),
(3013, 195, 'SO', 'Soria', 1),
(3014, 195, 'TA', 'Tarragona', 1),
(3015, 195, 'TE', 'Teruel', 1),
(3016, 195, 'TO', 'Toledo', 1),
(3017, 195, 'VC', 'Valencia', 1),
(3018, 195, 'VD', 'Valladolid', 1),
(3019, 195, 'VZ', 'Vizcaya', 1),
(3020, 195, 'ZM', 'Zamora', 1),
(3021, 195, 'ZR', 'Zaragoza', 1),
(3022, 196, 'CE', 'Central', 1),
(3023, 196, 'EA', 'Eastern', 1),
(3024, 196, 'NC', 'North Central', 1),
(3025, 196, 'NO', 'Northern', 1),
(3026, 196, 'NW', 'North Western', 1),
(3027, 196, 'SA', 'Sabaragamuwa', 1),
(3028, 196, 'SO', 'Southern', 1),
(3029, 196, 'UV', 'Uva', 1),
(3030, 196, 'WE', 'Western', 1),
(3031, 197, 'A', 'Ascension', 1),
(3032, 197, 'S', 'Saint Helena', 1),
(3033, 197, 'T', 'Tristan da Cunha', 1),
(3034, 199, 'ANL', 'A''ali an Nil', 1),
(3035, 199, 'BAM', 'Al Bahr al Ahmar', 1),
(3036, 199, 'BRT', 'Al Buhayrat', 1),
(3037, 199, 'JZR', 'Al Jazirah', 1),
(3038, 199, 'KRT', 'Al Khartum', 1),
(3039, 199, 'QDR', 'Al Qadarif', 1),
(3040, 199, 'WDH', 'Al Wahdah', 1),
(3041, 199, 'ANB', 'An Nil al Abyad', 1),
(3042, 199, 'ANZ', 'An Nil al Azraq', 1),
(3043, 199, 'ASH', 'Ash Shamaliyah', 1),
(3044, 199, 'BJA', 'Bahr al Jabal', 1),
(3045, 199, 'GIS', 'Gharb al Istiwa''iyah', 1),
(3046, 199, 'GBG', 'Gharb Bahr al Ghazal', 1),
(3047, 199, 'GDA', 'Gharb Darfur', 1),
(3048, 199, 'GKU', 'Gharb Kurdufan', 1),
(3049, 199, 'JDA', 'Janub Darfur', 1),
(3050, 199, 'JKU', 'Janub Kurdufan', 1),
(3051, 199, 'JQL', 'Junqali', 1),
(3052, 199, 'KSL', 'Kassala', 1),
(3053, 199, 'NNL', 'Nahr an Nil', 1),
(3054, 199, 'SBG', 'Shamal Bahr al Ghazal', 1),
(3055, 199, 'SDA', 'Shamal Darfur', 1),
(3056, 199, 'SKU', 'Shamal Kurdufan', 1),
(3057, 199, 'SIS', 'Sharq al Istiwa''iyah', 1),
(3058, 199, 'SNR', 'Sinnar', 1),
(3059, 199, 'WRB', 'Warab', 1),
(3060, 200, 'BR', 'Brokopondo', 1),
(3061, 200, 'CM', 'Commewijne', 1),
(3062, 200, 'CR', 'Coronie', 1),
(3063, 200, 'MA', 'Marowijne', 1),
(3064, 200, 'NI', 'Nickerie', 1),
(3065, 200, 'PA', 'Para', 1),
(3066, 200, 'PM', 'Paramaribo', 1);
INSERT INTO `t50hg_k2store_zones` (`zone_id`, `country_id`, `zone_code`, `zone_name`, `state`) VALUES
(3067, 200, 'SA', 'Saramacca', 1),
(3068, 200, 'SI', 'Sipaliwini', 1),
(3069, 200, 'WA', 'Wanica', 1),
(3070, 202, 'H', 'Hhohho', 1),
(3071, 202, 'L', 'Lubombo', 1),
(3072, 202, 'M', 'Manzini', 1),
(3073, 202, 'S', 'Shishelweni', 1),
(3074, 203, 'K', 'Blekinge', 1),
(3075, 203, 'W', 'Dalama', 1),
(3076, 203, 'X', 'G&auml;vleborg', 1),
(3077, 203, 'I', 'Gotland', 1),
(3078, 203, 'N', 'Halland', 1),
(3079, 203, 'Z', 'J&auml;mtland', 1),
(3080, 203, 'F', 'J&ouml;nk&ouml;ping', 1),
(3081, 203, 'H', 'Kalmar', 1),
(3082, 203, 'G', 'Kronoberg', 1),
(3083, 203, 'BD', 'Norrbotten', 1),
(3084, 203, 'T', '&Ouml;rebro', 1),
(3085, 203, 'E', '&Ouml;sterg&ouml;tland', 1),
(3086, 203, 'M', 'Sk&aring;ne', 1),
(3087, 203, 'D', 'S&ouml;dermanland', 1),
(3088, 203, 'AB', 'Stockholm', 1),
(3089, 203, 'C', 'Uppsala', 1),
(3090, 203, 'S', 'V&auml;rmland', 1),
(3091, 203, 'AC', 'V&auml;sterbotten', 1),
(3092, 203, 'Y', 'V&auml;sternorrland', 1),
(3093, 203, 'U', 'V&auml;stmanland', 1),
(3094, 203, 'O', 'V&auml;stra G&ouml;taland', 1),
(3095, 204, 'AG', 'Aargau', 1),
(3096, 204, 'AR', 'Appenzell Ausserrhoden', 1),
(3097, 204, 'AI', 'Appenzell Innerrhoden', 1),
(3098, 204, 'BS', 'Basel-Stadt', 1),
(3099, 204, 'BL', 'Basel-Landschaft', 1),
(3100, 204, 'BE', 'Bern', 1),
(3101, 204, 'FR', 'Fribourg', 1),
(3102, 204, 'GE', 'Gen&egrave;ve', 1),
(3103, 204, 'GL', 'Glarus', 1),
(3104, 204, 'GR', 'Graub&uuml;nden', 1),
(3105, 204, 'JU', 'Jura', 1),
(3106, 204, 'LU', 'Luzern', 1),
(3107, 204, 'NE', 'Neuch&acirc;tel', 1),
(3108, 204, 'NW', 'Nidwald', 1),
(3109, 204, 'OW', 'Obwald', 1),
(3110, 204, 'SG', 'St. Gallen', 1),
(3111, 204, 'SH', 'Schaffhausen', 1),
(3112, 204, 'SZ', 'Schwyz', 1),
(3113, 204, 'SO', 'Solothurn', 1),
(3114, 204, 'TG', 'Thurgau', 1),
(3115, 204, 'TI', 'Ticino', 1),
(3116, 204, 'UR', 'Uri', 1),
(3117, 204, 'VS', 'Valais', 1),
(3118, 204, 'VD', 'Vaud', 1),
(3119, 204, 'ZG', 'Zug', 1),
(3120, 204, 'ZH', 'Z&uuml;rich', 1),
(3121, 205, 'HA', 'Al Hasakah', 1),
(3122, 205, 'LA', 'Al Ladhiqiyah', 1),
(3123, 205, 'QU', 'Al Qunaytirah', 1),
(3124, 205, 'RQ', 'Ar Raqqah', 1),
(3125, 205, 'SU', 'As Suwayda', 1),
(3126, 205, 'DA', 'Dara', 1),
(3127, 205, 'DZ', 'Dayr az Zawr', 1),
(3128, 205, 'DI', 'Dimashq', 1),
(3129, 205, 'HL', 'Halab', 1),
(3130, 205, 'HM', 'Hamah', 1),
(3131, 205, 'HI', 'Hims', 1),
(3132, 205, 'ID', 'Idlib', 1),
(3133, 205, 'RD', 'Rif Dimashq', 1),
(3134, 205, 'TA', 'Tartus', 1),
(3135, 206, 'CH', 'Chang-hua', 1),
(3136, 206, 'CI', 'Chia-i', 1),
(3137, 206, 'HS', 'Hsin-chu', 1),
(3138, 206, 'HL', 'Hua-lien', 1),
(3139, 206, 'IL', 'I-lan', 1),
(3140, 206, 'KH', 'Kao-hsiung county', 1),
(3141, 206, 'KM', 'Kin-men', 1),
(3142, 206, 'LC', 'Lien-chiang', 1),
(3143, 206, 'ML', 'Miao-li', 1),
(3144, 206, 'NT', 'Nan-t''ou', 1),
(3145, 206, 'PH', 'P''eng-hu', 1),
(3146, 206, 'PT', 'P''ing-tung', 1),
(3147, 206, 'TG', 'T''ai-chung', 1),
(3148, 206, 'TA', 'T''ai-nan', 1),
(3149, 206, 'TP', 'T''ai-pei county', 1),
(3150, 206, 'TT', 'T''ai-tung', 1),
(3151, 206, 'TY', 'T''ao-yuan', 1),
(3152, 206, 'YL', 'Yun-lin', 1),
(3153, 206, 'CC', 'Chia-i city', 1),
(3154, 206, 'CL', 'Chi-lung', 1),
(3155, 206, 'HC', 'Hsin-chu', 1),
(3156, 206, 'TH', 'T''ai-chung', 1),
(3157, 206, 'TN', 'T''ai-nan', 1),
(3158, 206, 'KC', 'Kao-hsiung city', 1),
(3159, 206, 'TC', 'T''ai-pei city', 1),
(3160, 207, 'GB', 'Gorno-Badakhstan', 1),
(3161, 207, 'KT', 'Khatlon', 1),
(3162, 207, 'SU', 'Sughd', 1),
(3163, 208, 'AR', 'Arusha', 1),
(3164, 208, 'DS', 'Dar es Salaam', 1),
(3165, 208, 'DO', 'Dodoma', 1),
(3166, 208, 'IR', 'Iringa', 1),
(3167, 208, 'KA', 'Kagera', 1),
(3168, 208, 'KI', 'Kigoma', 1),
(3169, 208, 'KJ', 'Kilimanjaro', 1),
(3170, 208, 'LN', 'Lindi', 1),
(3171, 208, 'MY', 'Manyara', 1),
(3172, 208, 'MR', 'Mara', 1),
(3173, 208, 'MB', 'Mbeya', 1),
(3174, 208, 'MO', 'Morogoro', 1),
(3175, 208, 'MT', 'Mtwara', 1),
(3176, 208, 'MW', 'Mwanza', 1),
(3177, 208, 'PN', 'Pemba North', 1),
(3178, 208, 'PS', 'Pemba South', 1),
(3179, 208, 'PW', 'Pwani', 1),
(3180, 208, 'RK', 'Rukwa', 1),
(3181, 208, 'RV', 'Ruvuma', 1),
(3182, 208, 'SH', 'Shinyanga', 1),
(3183, 208, 'SI', 'Singida', 1),
(3184, 208, 'TB', 'Tabora', 1),
(3185, 208, 'TN', 'Tanga', 1),
(3186, 208, 'ZC', 'Zanzibar Central/South', 1),
(3187, 208, 'ZN', 'Zanzibar North', 1),
(3188, 208, 'ZU', 'Zanzibar Urban/West', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'K', 'Kara', 1),
(3266, 210, 'P', 'Plateaux', 1),
(3267, 210, 'S', 'Savanes', 1),
(3268, 210, 'C', 'Centrale', 1),
(3269, 210, 'M', 'Maritime', 1),
(3270, 211, 'A', 'Atafu', 1),
(3271, 211, 'F', 'Fakaofo', 1),
(3272, 211, 'N', 'Nukunonu', 1),
(3273, 212, 'H', 'Ha''apai', 1),
(3274, 212, 'T', 'Tongatapu', 1),
(3275, 212, 'V', 'Vava''u', 1),
(3276, 213, 'CT', 'Couva/Tabaquite/Talparo', 1),
(3277, 213, 'DM', 'Diego Martin', 1),
(3278, 213, 'MR', 'Mayaro/Rio Claro', 1),
(3279, 213, 'PD', 'Penal/Debe', 1),
(3280, 213, 'PT', 'Princes Town', 1),
(3281, 213, 'SG', 'Sangre Grande', 1),
(3282, 213, 'SL', 'San Juan/Laventille', 1),
(3283, 213, 'SI', 'Siparia', 1),
(3284, 213, 'TP', 'Tunapuna/Piarco', 1),
(3285, 213, 'PS', 'Port of Spain', 1),
(3286, 213, 'SF', 'San Fernando', 1),
(3287, 213, 'AR', 'Arima', 1),
(3288, 213, 'PF', 'Point Fortin', 1),
(3289, 213, 'CH', 'Chaguanas', 1),
(3290, 213, 'TO', 'Tobago', 1),
(3291, 214, 'AR', 'Ariana', 1),
(3292, 214, 'BJ', 'Beja', 1),
(3293, 214, 'BA', 'Ben Arous', 1),
(3294, 214, 'BI', 'Bizerte', 1),
(3295, 214, 'GB', 'Gabes', 1),
(3296, 214, 'GF', 'Gafsa', 1),
(3297, 214, 'JE', 'Jendouba', 1),
(3298, 214, 'KR', 'Kairouan', 1),
(3299, 214, 'KS', 'Kasserine', 1),
(3300, 214, 'KB', 'Kebili', 1),
(3301, 214, 'KF', 'Kef', 1),
(3302, 214, 'MH', 'Mahdia', 1),
(3303, 214, 'MN', 'Manouba', 1),
(3304, 214, 'ME', 'Medenine', 1),
(3305, 214, 'MO', 'Monastir', 1),
(3306, 214, 'NA', 'Nabeul', 1),
(3307, 214, 'SF', 'Sfax', 1),
(3308, 214, 'SD', 'Sidi', 1),
(3309, 214, 'SL', 'Siliana', 1),
(3310, 214, 'SO', 'Sousse', 1),
(3311, 214, 'TA', 'Tataouine', 1),
(3312, 214, 'TO', 'Tozeur', 1),
(3313, 214, 'TU', 'Tunis', 1),
(3314, 214, 'ZA', 'Zaghouan', 1),
(3315, 215, 'ADA', 'Adana', 1),
(3316, 215, 'ADI', 'Adiyaman', 1),
(3317, 215, 'AFY', 'Afyonkarahisar', 1),
(3318, 215, 'AGR', 'Agri', 1),
(3319, 215, 'AKS', 'Aksaray', 1),
(3320, 215, 'AMA', 'Amasya', 1),
(3321, 215, 'ANK', 'Ankara', 1),
(3322, 215, 'ANT', 'Antalya', 1),
(3323, 215, 'ARD', 'Ardahan', 1),
(3324, 215, 'ART', 'Artvin', 1),
(3325, 215, 'AYI', 'Aydin', 1),
(3326, 215, 'BAL', 'Balikesir', 1),
(3327, 215, 'BAR', 'Bartin', 1),
(3328, 215, 'BAT', 'Batman', 1),
(3329, 215, 'BAY', 'Bayburt', 1),
(3330, 215, 'BIL', 'Bilecik', 1),
(3331, 215, 'BIN', 'Bingol', 1),
(3332, 215, 'BIT', 'Bitlis', 1),
(3333, 215, 'BOL', 'Bolu', 1),
(3334, 215, 'BRD', 'Burdur', 1),
(3335, 215, 'BRS', 'Bursa', 1),
(3336, 215, 'CKL', 'Canakkale', 1),
(3337, 215, 'CKR', 'Cankiri', 1),
(3338, 215, 'COR', 'Corum', 1),
(3339, 215, 'DEN', 'Denizli', 1),
(3340, 215, 'DIY', 'Diyarbakir', 1),
(3341, 215, 'DUZ', 'Duzce', 1),
(3342, 215, 'EDI', 'Edirne', 1),
(3343, 215, 'ELA', 'Elazig', 1),
(3344, 215, 'EZC', 'Erzincan', 1),
(3345, 215, 'EZR', 'Erzurum', 1),
(3346, 215, 'ESK', 'Eskisehir', 1),
(3347, 215, 'GAZ', 'Gaziantep', 1),
(3348, 215, 'GIR', 'Giresun', 1),
(3349, 215, 'GMS', 'Gumushane', 1),
(3350, 215, 'HKR', 'Hakkari', 1),
(3351, 215, 'HTY', 'Hatay', 1),
(3352, 215, 'IGD', 'Igdir', 1),
(3353, 215, 'ISP', 'Isparta', 1),
(3354, 215, 'IST', 'Istanbul', 1),
(3355, 215, 'IZM', 'Izmir', 1),
(3356, 215, 'KAH', 'Kahramanmaras', 1),
(3357, 215, 'KRB', 'Karabuk', 1),
(3358, 215, 'KRM', 'Karaman', 1),
(3359, 215, 'KRS', 'Kars', 1),
(3360, 215, 'KAS', 'Kastamonu', 1),
(3361, 215, 'KAY', 'Kayseri', 1),
(3362, 215, 'KLS', 'Kilis', 1),
(3363, 215, 'KRK', 'Kirikkale', 1),
(3364, 215, 'KLR', 'Kirklareli', 1),
(3365, 215, 'KRH', 'Kirsehir', 1),
(3366, 215, 'KOC', 'Kocaeli', 1),
(3367, 215, 'KON', 'Konya', 1),
(3368, 215, 'KUT', 'Kutahya', 1),
(3369, 215, 'MAL', 'Malatya', 1),
(3370, 215, 'MAN', 'Manisa', 1),
(3371, 215, 'MAR', 'Mardin', 1),
(3372, 215, 'MER', 'Mersin', 1),
(3373, 215, 'MUG', 'Mugla', 1),
(3374, 215, 'MUS', 'Mus', 1),
(3375, 215, 'NEV', 'Nevsehir', 1),
(3376, 215, 'NIG', 'Nigde', 1),
(3377, 215, 'ORD', 'Ordu', 1),
(3378, 215, 'OSM', 'Osmaniye', 1),
(3379, 215, 'RIZ', 'Rize', 1),
(3380, 215, 'SAK', 'Sakarya', 1),
(3381, 215, 'SAM', 'Samsun', 1),
(3382, 215, 'SAN', 'Sanliurfa', 1),
(3383, 215, 'SII', 'Siirt', 1),
(3384, 215, 'SIN', 'Sinop', 1),
(3385, 215, 'SIR', 'Sirnak', 1),
(3386, 215, 'SIV', 'Sivas', 1),
(3387, 215, 'TEL', 'Tekirdag', 1),
(3388, 215, 'TOK', 'Tokat', 1),
(3389, 215, 'TRA', 'Trabzon', 1),
(3390, 215, 'TUN', 'Tunceli', 1),
(3391, 215, 'USK', 'Usak', 1),
(3392, 215, 'VAN', 'Van', 1),
(3393, 215, 'YAL', 'Yalova', 1),
(3394, 215, 'YOZ', 'Yozgat', 1),
(3395, 215, 'ZON', 'Zonguldak', 1),
(3396, 216, 'A', 'Ahal Welayaty', 1),
(3397, 216, 'B', 'Balkan Welayaty', 1),
(3398, 216, 'D', 'Dashhowuz Welayaty', 1),
(3399, 216, 'L', 'Lebap Welayaty', 1),
(3400, 216, 'M', 'Mary Welayaty', 1),
(3401, 217, 'AC', 'Ambergris Cays', 1),
(3402, 217, 'DC', 'Dellis Cay', 1),
(3403, 217, 'FC', 'French Cay', 1),
(3404, 217, 'LW', 'Little Water Cay', 1),
(3405, 217, 'RC', 'Parrot Cay', 1),
(3406, 217, 'PN', 'Pine Cay', 1),
(3407, 217, 'SL', 'Salt Cay', 1),
(3408, 217, 'GT', 'Grand Turk', 1),
(3409, 217, 'SC', 'South Caicos', 1),
(3410, 217, 'EC', 'East Caicos', 1),
(3411, 217, 'MC', 'Middle Caicos', 1),
(3412, 217, 'NC', 'North Caicos', 1),
(3413, 217, 'PR', 'Providenciales', 1),
(3414, 217, 'WC', 'West Caicos', 1),
(3415, 218, 'NMG', 'Nanumanga', 1),
(3416, 218, 'NLK', 'Niulakita', 1),
(3417, 218, 'NTO', 'Niutao', 1),
(3418, 218, 'FUN', 'Funafuti', 1),
(3419, 218, 'NME', 'Nanumea', 1),
(3420, 218, 'NUI', 'Nui', 1),
(3421, 218, 'NFT', 'Nukufetau', 1),
(3422, 218, 'NLL', 'Nukulaelae', 1),
(3423, 218, 'VAI', 'Vaitupu', 1),
(3424, 219, 'KAL', 'Kalangala', 1),
(3425, 219, 'KMP', 'Kampala', 1),
(3426, 219, 'KAY', 'Kayunga', 1),
(3427, 219, 'KIB', 'Kiboga', 1),
(3428, 219, 'LUW', 'Luwero', 1),
(3429, 219, 'MAS', 'Masaka', 1),
(3430, 219, 'MPI', 'Mpigi', 1),
(3431, 219, 'MUB', 'Mubende', 1),
(3432, 219, 'MUK', 'Mukono', 1),
(3433, 219, 'NKS', 'Nakasongola', 1),
(3434, 219, 'RAK', 'Rakai', 1),
(3435, 219, 'SEM', 'Sembabule', 1),
(3436, 219, 'WAK', 'Wakiso', 1),
(3437, 219, 'BUG', 'Bugiri', 1),
(3438, 219, 'BUS', 'Busia', 1),
(3439, 219, 'IGA', 'Iganga', 1),
(3440, 219, 'JIN', 'Jinja', 1),
(3441, 219, 'KAB', 'Kaberamaido', 1),
(3442, 219, 'KML', 'Kamuli', 1),
(3443, 219, 'KPC', 'Kapchorwa', 1),
(3444, 219, 'KTK', 'Katakwi', 1),
(3445, 219, 'KUM', 'Kumi', 1),
(3446, 219, 'MAY', 'Mayuge', 1),
(3447, 219, 'MBA', 'Mbale', 1),
(3448, 219, 'PAL', 'Pallisa', 1),
(3449, 219, 'SIR', 'Sironko', 1),
(3450, 219, 'SOR', 'Soroti', 1),
(3451, 219, 'TOR', 'Tororo', 1),
(3452, 219, 'ADJ', 'Adjumani', 1),
(3453, 219, 'APC', 'Apac', 1),
(3454, 219, 'ARU', 'Arua', 1),
(3455, 219, 'GUL', 'Gulu', 1),
(3456, 219, 'KIT', 'Kitgum', 1),
(3457, 219, 'KOT', 'Kotido', 1),
(3458, 219, 'LIR', 'Lira', 1),
(3459, 219, 'MRT', 'Moroto', 1),
(3460, 219, 'MOY', 'Moyo', 1),
(3461, 219, 'NAK', 'Nakapiripirit', 1),
(3462, 219, 'NEB', 'Nebbi', 1),
(3463, 219, 'PAD', 'Pader', 1),
(3464, 219, 'YUM', 'Yumbe', 1),
(3465, 219, 'BUN', 'Bundibugyo', 1),
(3466, 219, 'BSH', 'Bushenyi', 1),
(3467, 219, 'HOI', 'Hoima', 1),
(3468, 219, 'KBL', 'Kabale', 1),
(3469, 219, 'KAR', 'Kabarole', 1),
(3470, 219, 'KAM', 'Kamwenge', 1),
(3471, 219, 'KAN', 'Kanungu', 1),
(3472, 219, 'KAS', 'Kasese', 1),
(3473, 219, 'KBA', 'Kibaale', 1),
(3474, 219, 'KIS', 'Kisoro', 1),
(3475, 219, 'KYE', 'Kyenjojo', 1),
(3476, 219, 'MSN', 'Masindi', 1),
(3477, 219, 'MBR', 'Mbarara', 1),
(3478, 219, 'NTU', 'Ntungamo', 1),
(3479, 219, 'RUK', 'Rukungiri', 1),
(3480, 220, 'CK', 'Cherkasy', 1),
(3481, 220, 'CH', 'Chernihiv', 1),
(3482, 220, 'CV', 'Chernivtsi', 1),
(3483, 220, 'CR', 'Crimea', 1),
(3484, 220, 'DN', 'Dnipropetrovs''k', 1),
(3485, 220, 'DO', 'Donets''k', 1),
(3486, 220, 'IV', 'Ivano-Frankivs''k', 1),
(3487, 220, 'KL', 'Kharkiv Kherson', 1),
(3488, 220, 'KM', 'Khmel''nyts''kyy', 1),
(3489, 220, 'KR', 'Kirovohrad', 1),
(3490, 220, 'KV', 'Kiev', 1),
(3491, 220, 'KY', 'Kyyiv', 1),
(3492, 220, 'LU', 'Luhans''k', 1),
(3493, 220, 'LV', 'L''viv', 1),
(3494, 220, 'MY', 'Mykolayiv', 1),
(3495, 220, 'OD', 'Odesa', 1),
(3496, 220, 'PO', 'Poltava', 1),
(3497, 220, 'RI', 'Rivne', 1),
(3498, 220, 'SE', 'Sevastopol', 1),
(3499, 220, 'SU', 'Sumy', 1),
(3500, 220, 'TE', 'Ternopil''', 1),
(3501, 220, 'VI', 'Vinnytsya', 1),
(3502, 220, 'VO', 'Volyn''', 1),
(3503, 220, 'ZK', 'Zakarpattya', 1),
(3504, 220, 'ZA', 'Zaporizhzhya', 1),
(3505, 220, 'ZH', 'Zhytomyr', 1),
(3506, 221, 'AZ', 'Abu Zaby', 1),
(3507, 221, 'AJ', '''Ajman', 1),
(3508, 221, 'FU', 'Al Fujayrah', 1),
(3509, 221, 'SH', 'Ash Shariqah', 1),
(3510, 221, 'DU', 'Dubayy', 1),
(3511, 221, 'RK', 'R''as al Khaymah', 1),
(3512, 221, 'UQ', 'Umm al Qaywayn', 1),
(3513, 222, 'ABN', 'Aberdeen', 1),
(3514, 222, 'ABNS', 'Aberdeenshire', 1),
(3515, 222, 'ANG', 'Anglesey', 1),
(3516, 222, 'AGS', 'Angus', 1),
(3517, 222, 'ARY', 'Argyll and Bute', 1),
(3518, 222, 'BEDS', 'Bedfordshire', 1),
(3519, 222, 'BERKS', 'Berkshire', 1),
(3520, 222, 'BLA', 'Blaenau Gwent', 1),
(3521, 222, 'BRI', 'Bridgend', 1),
(3522, 222, 'BSTL', 'Bristol', 1),
(3523, 222, 'BUCKS', 'Buckinghamshire', 1),
(3524, 222, 'CAE', 'Caerphilly', 1),
(3525, 222, 'CAMBS', 'Cambridgeshire', 1),
(3526, 222, 'CDF', 'Cardiff', 1),
(3527, 222, 'CARM', 'Carmarthenshire', 1),
(3528, 222, 'CDGN', 'Ceredigion', 1),
(3529, 222, 'CHES', 'Cheshire', 1),
(3530, 222, 'CLACK', 'Clackmannanshire', 1),
(3531, 222, 'CON', 'Conwy', 1),
(3532, 222, 'CORN', 'Cornwall', 1),
(3533, 222, 'DNBG', 'Denbighshire', 1),
(3534, 222, 'DERBY', 'Derbyshire', 1),
(3535, 222, 'DVN', 'Devon', 1),
(3536, 222, 'DOR', 'Dorset', 1),
(3537, 222, 'DGL', 'Dumfries and Galloway', 1),
(3538, 222, 'DUND', 'Dundee', 1),
(3539, 222, 'DHM', 'Durham', 1),
(3540, 222, 'ARYE', 'East Ayrshire', 1),
(3541, 222, 'DUNBE', 'East Dunbartonshire', 1),
(3542, 222, 'LOTE', 'East Lothian', 1),
(3543, 222, 'RENE', 'East Renfrewshire', 1),
(3544, 222, 'ERYS', 'East Riding of Yorkshire', 1),
(3545, 222, 'SXE', 'East Sussex', 1),
(3546, 222, 'EDIN', 'Edinburgh', 1),
(3547, 222, 'ESX', 'Essex', 1),
(3548, 222, 'FALK', 'Falkirk', 1),
(3549, 222, 'FFE', 'Fife', 1),
(3550, 222, 'FLINT', 'Flintshire', 1),
(3551, 222, 'GLAS', 'Glasgow', 1),
(3552, 222, 'GLOS', 'Gloucestershire', 1),
(3553, 222, 'LDN', 'Greater London', 1),
(3554, 222, 'MCH', 'Greater Manchester', 1),
(3555, 222, 'GDD', 'Gwynedd', 1),
(3556, 222, 'HANTS', 'Hampshire', 1),
(3557, 222, 'HWR', 'Herefordshire', 1),
(3558, 222, 'HERTS', 'Hertfordshire', 1),
(3559, 222, 'HLD', 'Highlands', 1),
(3560, 222, 'IVER', 'Inverclyde', 1),
(3561, 222, 'IOW', 'Isle of Wight', 1),
(3562, 222, 'KNT', 'Kent', 1),
(3563, 222, 'LANCS', 'Lancashire', 1),
(3564, 222, 'LEICS', 'Leicestershire', 1),
(3565, 222, 'LINCS', 'Lincolnshire', 1),
(3566, 222, 'MSY', 'Merseyside', 1),
(3567, 222, 'MERT', 'Merthyr Tydfil', 1),
(3568, 222, 'MLOT', 'Midlothian', 1),
(3569, 222, 'MMOUTH', 'Monmouthshire', 1),
(3570, 222, 'MORAY', 'Moray', 1),
(3571, 222, 'NPRTAL', 'Neath Port Talbot', 1),
(3572, 222, 'NEWPT', 'Newport', 1),
(3573, 222, 'NOR', 'Norfolk', 1),
(3574, 222, 'ARYN', 'North Ayrshire', 1),
(3575, 222, 'LANN', 'North Lanarkshire', 1),
(3576, 222, 'YSN', 'North Yorkshire', 1),
(3577, 222, 'NHM', 'Northamptonshire', 1),
(3578, 222, 'NLD', 'Northumberland', 1),
(3579, 222, 'NOT', 'Nottinghamshire', 1),
(3580, 222, 'ORK', 'Orkney Islands', 1),
(3581, 222, 'OFE', 'Oxfordshire', 1),
(3582, 222, 'PEM', 'Pembrokeshire', 1),
(3583, 222, 'PERTH', 'Perth and Kinross', 1),
(3584, 222, 'PWS', 'Powys', 1),
(3585, 222, 'REN', 'Renfrewshire', 1),
(3586, 222, 'RHON', 'Rhondda Cynon Taff', 1),
(3587, 222, 'RUT', 'Rutland', 1),
(3588, 222, 'BOR', 'Scottish Borders', 1),
(3589, 222, 'SHET', 'Shetland Islands', 1),
(3590, 222, 'SPE', 'Shropshire', 1),
(3591, 222, 'SOM', 'Somerset', 1),
(3592, 222, 'ARYS', 'South Ayrshire', 1),
(3593, 222, 'LANS', 'South Lanarkshire', 1),
(3594, 222, 'YSS', 'South Yorkshire', 1),
(3595, 222, 'SFD', 'Staffordshire', 1),
(3596, 222, 'STIR', 'Stirling', 1),
(3597, 222, 'SFK', 'Suffolk', 1),
(3598, 222, 'SRY', 'Surrey', 1),
(3599, 222, 'SWAN', 'Swansea', 1),
(3600, 222, 'TORF', 'Torfaen', 1),
(3601, 222, 'TWR', 'Tyne and Wear', 1),
(3602, 222, 'VGLAM', 'Vale of Glamorgan', 1),
(3603, 222, 'WARKS', 'Warwickshire', 1),
(3604, 222, 'WDUN', 'West Dunbartonshire', 1),
(3605, 222, 'WLOT', 'West Lothian', 1),
(3606, 222, 'WMD', 'West Midlands', 1),
(3607, 222, 'SXW', 'West Sussex', 1),
(3608, 222, 'YSW', 'West Yorkshire', 1),
(3609, 222, 'WIL', 'Western Isles', 1),
(3610, 222, 'WLT', 'Wiltshire', 1),
(3611, 222, 'WORCS', 'Worcestershire', 1),
(3612, 222, 'WRX', 'Wrexham', 1),
(3613, 223, 'AL', 'Alabama', 1),
(3614, 223, 'AK', 'Alaska', 1),
(3615, 223, 'AS', 'American Samoa', 1),
(3616, 223, 'AZ', 'Arizona', 1),
(3617, 223, 'AR', 'Arkansas', 1),
(3618, 223, 'AF', 'Armed Forces Africa', 1),
(3619, 223, 'AA', 'Armed Forces Americas', 1),
(3620, 223, 'AC', 'Armed Forces Canada', 1),
(3621, 223, 'AE', 'Armed Forces Europe', 1),
(3622, 223, 'AM', 'Armed Forces Middle East', 1),
(3623, 223, 'AP', 'Armed Forces Pacific', 1),
(3624, 223, 'CA', 'California', 1),
(3625, 223, 'CO', 'Colorado', 1),
(3626, 223, 'CT', 'Connecticut', 1),
(3627, 223, 'DE', 'Delaware', 1),
(3628, 223, 'DC', 'District of Columbia', 1),
(3629, 223, 'FM', 'Federated States Of Micronesia', 1),
(3630, 223, 'FL', 'Florida', 1),
(3631, 223, 'GA', 'Georgia', 1),
(3632, 223, 'GU', 'Guam', 1),
(3633, 223, 'HI', 'Hawaii', 1),
(3634, 223, 'ID', 'Idaho', 1),
(3635, 223, 'IL', 'Illinois', 1),
(3636, 223, 'IN', 'Indiana', 1),
(3637, 223, 'IA', 'Iowa', 1),
(3638, 223, 'KS', 'Kansas', 1),
(3639, 223, 'KY', 'Kentucky', 1),
(3640, 223, 'LA', 'Louisiana', 1),
(3641, 223, 'ME', 'Maine', 1),
(3642, 223, 'MH', 'Marshall Islands', 1),
(3643, 223, 'MD', 'Maryland', 1),
(3644, 223, 'MA', 'Massachusetts', 1),
(3645, 223, 'MI', 'Michigan', 1),
(3646, 223, 'MN', 'Minnesota', 1),
(3647, 223, 'MS', 'Mississippi', 1),
(3648, 223, 'MO', 'Missouri', 1),
(3649, 223, 'MT', 'Montana', 1),
(3650, 223, 'NE', 'Nebraska', 1),
(3651, 223, 'NV', 'Nevada', 1),
(3652, 223, 'NH', 'New Hampshire', 1),
(3653, 223, 'NJ', 'New Jersey', 1),
(3654, 223, 'NM', 'New Mexico', 1),
(3655, 223, 'NY', 'New York', 1),
(3656, 223, 'NC', 'North Carolina', 1),
(3657, 223, 'ND', 'North Dakota', 1),
(3658, 223, 'MP', 'Northern Mariana Islands', 1),
(3659, 223, 'OH', 'Ohio', 1),
(3660, 223, 'OK', 'Oklahoma', 1),
(3661, 223, 'OR', 'Oregon', 1),
(3662, 223, 'PW', 'Palau', 1),
(3663, 223, 'PA', 'Pennsylvania', 1),
(3664, 223, 'PR', 'Puerto Rico', 1),
(3665, 223, 'RI', 'Rhode Island', 1),
(3666, 223, 'SC', 'South Carolina', 1),
(3667, 223, 'SD', 'South Dakota', 1),
(3668, 223, 'TN', 'Tennessee', 1),
(3669, 223, 'TX', 'Texas', 1),
(3670, 223, 'UT', 'Utah', 1),
(3671, 223, 'VT', 'Vermont', 1),
(3672, 223, 'VI', 'Virgin Islands', 1),
(3673, 223, 'VA', 'Virginia', 1),
(3674, 223, 'WA', 'Washington', 1),
(3675, 223, 'WV', 'West Virginia', 1),
(3676, 223, 'WI', 'Wisconsin', 1),
(3677, 223, 'WY', 'Wyoming', 1),
(3678, 224, 'BI', 'Baker Island', 1),
(3679, 224, 'HI', 'Howland Island', 1),
(3680, 224, 'JI', 'Jarvis Island', 1),
(3681, 224, 'JA', 'Johnston Atoll', 1),
(3682, 224, 'KR', 'Kingman Reef', 1),
(3683, 224, 'MA', 'Midway Atoll', 1),
(3684, 224, 'NI', 'Navassa Island', 1),
(3685, 224, 'PA', 'Palmyra Atoll', 1),
(3686, 224, 'WI', 'Wake Island', 1),
(3687, 225, 'AR', 'Artigas', 1),
(3688, 225, 'CA', 'Canelones', 1),
(3689, 225, 'CL', 'Cerro Largo', 1),
(3690, 225, 'CO', 'Colonia', 1),
(3691, 225, 'DU', 'Durazno', 1),
(3692, 225, 'FS', 'Flores', 1),
(3693, 225, 'FA', 'Florida', 1),
(3694, 225, 'LA', 'Lavalleja', 1),
(3695, 225, 'MA', 'Maldonado', 1),
(3696, 225, 'MO', 'Montevideo', 1),
(3697, 225, 'PA', 'Paysandu', 1),
(3698, 225, 'RN', 'Rio Negro', 1),
(3699, 225, 'RV', 'Rivera', 1),
(3700, 225, 'RO', 'Rocha', 1),
(3701, 225, 'SL', 'Salto', 1),
(3702, 225, 'SJ', 'San Jose', 1),
(3703, 225, 'SO', 'Soriano', 1),
(3704, 225, 'TA', 'Tacuarembo', 1),
(3705, 225, 'TT', 'Treinta y Tres', 1),
(3706, 226, 'AN', 'Andijon', 1),
(3707, 226, 'BU', 'Buxoro', 1),
(3708, 226, 'FA', 'Farg''ona', 1),
(3709, 226, 'JI', 'Jizzax', 1),
(3710, 226, 'NG', 'Namangan', 1),
(3711, 226, 'NW', 'Navoiy', 1),
(3712, 226, 'QA', 'Qashqadaryo', 1),
(3713, 226, 'QR', 'Qoraqalpog''iston Republikasi', 1),
(3714, 226, 'SA', 'Samarqand', 1),
(3715, 226, 'SI', 'Sirdaryo', 1),
(3716, 226, 'SU', 'Surxondaryo', 1),
(3717, 226, 'TK', 'Toshkent City', 1),
(3718, 226, 'TO', 'Toshkent Region', 1),
(3719, 226, 'XO', 'Xorazm', 1),
(3720, 227, 'MA', 'Malampa', 1),
(3721, 227, 'PE', 'Penama', 1),
(3722, 227, 'SA', 'Sanma', 1),
(3723, 227, 'SH', 'Shefa', 1),
(3724, 227, 'TA', 'Tafea', 1),
(3725, 227, 'TO', 'Torba', 1),
(3726, 229, 'AM', 'Amazonas', 1),
(3727, 229, 'AN', 'Anzoategui', 1),
(3728, 229, 'AP', 'Apure', 1),
(3729, 229, 'AR', 'Aragua', 1),
(3730, 229, 'BA', 'Barinas', 1),
(3731, 229, 'BO', 'Bolivar', 1),
(3732, 229, 'CA', 'Carabobo', 1),
(3733, 229, 'CO', 'Cojedes', 1),
(3734, 229, 'DA', 'Delta Amacuro', 1),
(3735, 229, 'DF', 'Dependencias Federales', 1),
(3736, 229, 'DI', 'Distrito Federal', 1),
(3737, 229, 'FA', 'Falcon', 1),
(3738, 229, 'GU', 'Guarico', 1),
(3739, 229, 'LA', 'Lara', 1),
(3740, 229, 'ME', 'Merida', 1),
(3741, 229, 'MI', 'Miranda', 1),
(3742, 229, 'MO', 'Monagas', 1),
(3743, 229, 'NE', 'Nueva Esparta', 1),
(3744, 229, 'PO', 'Portuguesa', 1),
(3745, 229, 'SU', 'Sucre', 1),
(3746, 229, 'TA', 'Tachira', 1),
(3747, 229, 'TR', 'Trujillo', 1),
(3748, 229, 'VA', 'Vargas', 1),
(3749, 229, 'YA', 'Yaracuy', 1),
(3750, 229, 'ZU', 'Zulia', 1),
(3751, 230, 'AG', 'An Giang', 1),
(3752, 230, 'BG', 'Bac Giang', 1),
(3753, 230, 'BK', 'Bac Kan', 1),
(3754, 230, 'BL', 'Bac Lieu', 1),
(3755, 230, 'BC', 'Bac Ninh', 1),
(3756, 230, 'BR', 'Ba Ria-Vung Tau', 1),
(3757, 230, 'BN', 'Ben Tre', 1),
(3758, 230, 'BH', 'Binh Dinh', 1),
(3759, 230, 'BU', 'Binh Duong', 1),
(3760, 230, 'BP', 'Binh Phuoc', 1),
(3761, 230, 'BT', 'Binh Thuan', 1),
(3762, 230, 'CM', 'Ca Mau', 1),
(3763, 230, 'CT', 'Can Tho', 1),
(3764, 230, 'CB', 'Cao Bang', 1),
(3765, 230, 'DL', 'Dak Lak', 1),
(3766, 230, 'DG', 'Dak Nong', 1),
(3767, 230, 'DN', 'Da Nang', 1),
(3768, 230, 'DB', 'Dien Bien', 1),
(3769, 230, 'DI', 'Dong Nai', 1),
(3770, 230, 'DT', 'Dong Thap', 1),
(3771, 230, 'GL', 'Gia Lai', 1),
(3772, 230, 'HG', 'Ha Giang', 1),
(3773, 230, 'HD', 'Hai Duong', 1),
(3774, 230, 'HP', 'Hai Phong', 1),
(3775, 230, 'HM', 'Ha Nam', 1),
(3776, 230, 'HI', 'Ha Noi', 1),
(3777, 230, 'HT', 'Ha Tay', 1),
(3778, 230, 'HH', 'Ha Tinh', 1),
(3779, 230, 'HB', 'Hoa Binh', 1),
(3780, 230, 'HC', 'Ho Chi Minh City', 1),
(3781, 230, 'HU', 'Hau Giang', 1),
(3782, 230, 'HY', 'Hung Yen', 1),
(3783, 232, 'C', 'Saint Croix', 1),
(3784, 232, 'J', 'Saint John', 1),
(3785, 232, 'T', 'Saint Thomas', 1),
(3786, 233, 'A', 'Alo', 1),
(3787, 233, 'S', 'Sigave', 1),
(3788, 233, 'W', 'Wallis', 1),
(3789, 235, 'AB', 'Abyan', 1),
(3790, 235, 'AD', 'Adan', 1),
(3791, 235, 'AM', 'Amran', 1),
(3792, 235, 'BA', 'Al Bayda', 1),
(3793, 235, 'DA', 'Ad Dali', 1),
(3794, 235, 'DH', 'Dhamar', 1),
(3795, 235, 'HD', 'Hadramawt', 1),
(3796, 235, 'HJ', 'Hajjah', 1),
(3797, 235, 'HU', 'Al Hudaydah', 1),
(3798, 235, 'IB', 'Ibb', 1),
(3799, 235, 'JA', 'Al Jawf', 1),
(3800, 235, 'LA', 'Lahij', 1),
(3801, 235, 'MA', 'Ma''rib', 1),
(3802, 235, 'MR', 'Al Mahrah', 1),
(3803, 235, 'MW', 'Al Mahwit', 1),
(3804, 235, 'SD', 'Sa''dah', 1),
(3805, 235, 'SN', 'San''a', 1),
(3806, 235, 'SH', 'Shabwah', 1),
(3807, 235, 'TA', 'Ta''izz', 1),
(3812, 237, 'BC', 'Bas-Congo', 1),
(3813, 237, 'BN', 'Bandundu', 1),
(3814, 237, 'EQ', 'Equateur', 1),
(3815, 237, 'KA', 'Katanga', 1),
(3816, 237, 'KE', 'Kasai-Oriental', 1),
(3817, 237, 'KN', 'Kinshasa', 1),
(3818, 237, 'KW', 'Kasai-Occidental', 1),
(3819, 237, 'MA', 'Maniema', 1),
(3820, 237, 'NK', 'Nord-Kivu', 1),
(3821, 237, 'OR', 'Orientale', 1),
(3822, 237, 'SK', 'Sud-Kivu', 1),
(3823, 238, 'CE', 'Central', 1),
(3824, 238, 'CB', 'Copperbelt', 1),
(3825, 238, 'EA', 'Eastern', 1),
(3826, 238, 'LP', 'Luapula', 1),
(3827, 238, 'LK', 'Lusaka', 1),
(3828, 238, 'NO', 'Northern', 1),
(3829, 238, 'NW', 'North-Western', 1),
(3830, 238, 'SO', 'Southern', 1),
(3831, 238, 'WE', 'Western', 1),
(3832, 239, 'BU', 'Bulawayo', 1),
(3833, 239, 'HA', 'Harare', 1),
(3834, 239, 'ML', 'Manicaland', 1),
(3835, 239, 'MC', 'Mashonaland Central', 1),
(3836, 239, 'ME', 'Mashonaland East', 1),
(3837, 239, 'MW', 'Mashonaland West', 1),
(3838, 239, 'MV', 'Masvingo', 1),
(3839, 239, 'MN', 'Matabeleland North', 1),
(3840, 239, 'MS', 'Matabeleland South', 1),
(3841, 239, 'MD', 'Midlands', 1),
(3842, 105, 'AG', 'Agrigento', 1),
(3843, 105, 'AL', 'Alessandria', 1),
(3844, 105, 'AN', 'Ancona', 1),
(3845, 105, 'AO', 'Aosta', 1),
(3846, 105, 'AR', 'Arezzo', 1),
(3847, 105, 'AP', 'Ascoli Piceno', 1),
(3848, 105, 'AT', 'Asti', 1),
(3849, 105, 'AV', 'Avellino', 1),
(3850, 105, 'BA', 'Bari', 1),
(3851, 105, 'BT', 'Barletta-Andria-Trani', 1),
(3852, 105, 'BL', 'Belluno', 1),
(3853, 105, 'BN', 'Benevento', 1),
(3854, 105, 'BG', 'Bergamo', 1),
(3855, 105, 'BI', 'Biella', 1),
(3856, 105, 'BO', 'Bologna', 1),
(3857, 105, 'BZ', 'Bolzano', 1),
(3858, 105, 'BS', 'Brescia', 1),
(3859, 105, 'BR', 'Brindisi', 1),
(3860, 105, 'CA', 'Cagliari', 1),
(3861, 105, 'CL', 'Caltanissetta', 1),
(3862, 105, 'CB', 'Campobasso', 1),
(3863, 105, 'CI', 'Carbonia-Iglesias', 1),
(3864, 105, 'CE', 'Caserta', 1),
(3865, 105, 'CT', 'Catania', 1),
(3866, 105, 'CZ', 'Catanzaro', 1),
(3867, 105, 'CH', 'Chieti', 1),
(3868, 105, 'CO', 'Como', 1),
(3869, 105, 'CS', 'Cosenza', 1),
(3870, 105, 'CR', 'Cremona', 1),
(3871, 105, 'KR', 'Crotone', 1),
(3872, 105, 'CN', 'Cuneo', 1),
(3873, 105, 'EN', 'Enna', 1),
(3874, 105, 'FM', 'Fermo', 1),
(3875, 105, 'FE', 'Ferrara', 1),
(3876, 105, 'FI', 'Firenze', 1),
(3877, 105, 'FG', 'Foggia', 1),
(3878, 105, 'FC', 'Forl', 1),
(3879, 105, 'FR', 'Frosinone', 1),
(3880, 105, 'GE', 'Genova', 1),
(3881, 105, 'GO', 'Gorizia', 1),
(3882, 105, 'GR', 'Grosseto', 1),
(3883, 105, 'IM', 'Imperia', 1),
(3884, 105, 'IS', 'Isernia', 1),
(3885, 105, 'SP', 'La Spezia', 1),
(3886, 105, 'AQ', 'L''Aquila', 1),
(3887, 105, 'LT', 'Latina', 1),
(3888, 105, 'LE', 'Lecce', 1),
(3889, 105, 'LC', 'Lecco', 1),
(3890, 105, 'LI', 'Livorno', 1),
(3891, 105, 'LO', 'Lodi', 1),
(3892, 105, 'LU', 'Lucca', 1),
(3893, 105, 'MC', 'Macerata', 1),
(3894, 105, 'MN', 'Mantova', 1),
(3895, 105, 'MS', 'Massa-Carrara', 1),
(3896, 105, 'MT', 'Matera', 1),
(3897, 105, 'ME', 'Messina', 1),
(3898, 105, 'MI', 'Milano', 1),
(3899, 105, 'MO', 'Modena', 1),
(3900, 105, 'MB', 'Monza e della Brianza', 1),
(3901, 105, 'NA', 'Napoli', 1),
(3902, 105, 'NO', 'Novara', 1),
(3903, 105, 'NU', 'Nuoro', 1),
(3904, 105, 'OT', 'Olbia-Tempio', 1),
(3905, 105, 'OR', 'Oristano', 1),
(3906, 105, 'PD', 'Padova', 1),
(3907, 105, 'PA', 'Palermo', 1),
(3908, 105, 'PR', 'Parma', 1),
(3909, 105, 'PV', 'Pavia', 1),
(3910, 105, 'PG', 'Perugia', 1),
(3911, 105, 'PU', 'Pesaro e Urbino', 1),
(3912, 105, 'PE', 'Pescara', 1),
(3913, 105, 'PC', 'Piacenza', 1),
(3914, 105, 'PI', 'Pisa', 1),
(3915, 105, 'PT', 'Pistoia', 1),
(3916, 105, 'PN', 'Pordenone', 1),
(3917, 105, 'PZ', 'Potenza', 1),
(3918, 105, 'PO', 'Prato', 1),
(3919, 105, 'RG', 'Ragusa', 1),
(3920, 105, 'RA', 'Ravenna', 1),
(3921, 105, 'RC', 'Reggio Calabria', 1),
(3922, 105, 'RE', 'Reggio Emilia', 1),
(3923, 105, 'RI', 'Rieti', 1),
(3924, 105, 'RN', 'Rimini', 1),
(3925, 105, 'RM', 'Roma', 1),
(3926, 105, 'RO', 'Rovigo', 1),
(3927, 105, 'SA', 'Salerno', 1),
(3928, 105, 'VS', 'Medio Campidano', 1),
(3929, 105, 'SS', 'Sassari', 1),
(3930, 105, 'SV', 'Savona', 1),
(3931, 105, 'SI', 'Siena', 1),
(3932, 105, 'SR', 'Siracusa', 1),
(3933, 105, 'SO', 'Sondrio', 1),
(3934, 105, 'TA', 'Taranto', 1),
(3935, 105, 'TE', 'Teramo', 1),
(3936, 105, 'TR', 'Terni', 1),
(3937, 105, 'TO', 'Torino', 1),
(3938, 105, 'OG', 'Ogliastra', 1),
(3939, 105, 'TP', 'Trapani', 1),
(3940, 105, 'TN', 'Trento', 1),
(3941, 105, 'TV', 'Treviso', 1),
(3942, 105, 'TS', 'Trieste', 1),
(3943, 105, 'UD', 'Udine', 1),
(3944, 105, 'VA', 'Varese', 1),
(3945, 105, 'VE', 'Venezia', 1),
(3946, 105, 'VB', 'Verbano-Cusio-Ossola', 1),
(3947, 105, 'VC', 'Vercelli', 1),
(3948, 105, 'VR', 'Verona', 1),
(3949, 105, 'VV', 'Vibo Valentia', 1),
(3950, 105, 'VI', 'Vicenza', 1),
(3951, 105, 'VT', 'Viterbo', 1),
(3952, 240, 'VO', 'Vojvodina', 1),
(3953, 240, 'BG', 'Beograd', 1),
(3954, 240, 'ZA', 'Šumadija i Zapadna Srbija', 1),
(3955, 240, 'JI', 'Južna i Istočna Srbija', 1),
(3956, 240, 'KM', 'Kosovo i Metohija', 1),
(3957, 241, 'AN', 'Andrijevica', 1),
(3958, 241, 'BA', 'Berane', 1),
(3959, 241, 'BD', 'Budva', 1),
(3960, 241, 'BP', 'Bijelo Polje', 1),
(3961, 241, 'BR', 'Bar', 1),
(3962, 241, 'CT', 'Cetinje', 1),
(3963, 241, 'DG', 'Danilovgrad', 1),
(3964, 241, 'HN', 'Herceg Novi', 1),
(3965, 241, 'KL', 'Kolašin', 1),
(3966, 241, 'KO', 'Kotor', 1),
(3967, 241, 'MK', 'Mojkovac', 1),
(3968, 241, 'NK', 'Nikšić', 1),
(3969, 241, 'PG', 'Podgorica', 1),
(3970, 241, 'PL', 'Plav', 1),
(3971, 241, 'PŽ', 'Plužine', 1),
(3972, 241, 'PV', 'Pljevlja', 1),
(3973, 241, 'RO', 'Rožaje', 1),
(3974, 241, 'ŠN', 'Šavnik', 1),
(3975, 241, 'TV', 'Tivat', 1),
(3976, 241, 'UL', 'Ulcinj', 1),
(3977, 241, 'ŽB', 'Žabljak', 1),
(3978, 138, 'AG', 'Aguascalientes', 1),
(3979, 83, '83', 'Gibraltar', 1),
(3980, 188, '188', 'Singapore', 1),
(3981, 190, '190', 'Slovenia', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_attachments`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_attachments` (
  `id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_categories`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_categories` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2_categories`
--

INSERT INTO `t50hg_k2_categories` (`id`, `name`, `alias`, `description`, `parent`, `extraFieldsGroup`, `published`, `access`, `ordering`, `image`, `params`, `trash`, `plugins`, `language`) VALUES
(1, 'Кроссовки', 'krossovki', '<p>описание кроссовки категория</p>\r\n<p>По всей видимости, недокуренный виски расширяет рыцаря. Базальтовый ксилофон бархатист. Бережная волчица философски настроена. Бетонный павиан напыщен и действует тактически. Имманентный крейсер мудр. Разумеется, выдра бархатиста. Радужный кадавр свободен и торжественен. Землистая мулатка шикарна и бархатиста. Конгруэнтная икра трансцендентальна. К своему удивлению мы замечаем, что название уверенного мартини трагически открывает драматичное будущее хомяка.</p>', 4, 1, 1, 1, 1, '', '{"inheritFrom":"0","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":"","theme":"","num_leading_items":"0","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"3","primaryImgSize":"Medium","num_secondary_items":"0","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"0","catTitleItemCounter":"0","catDescription":"0","catImage":"0","catFeedLink":"0","catFeedIcon":"0","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"0","subCatTitleItemCounter":"0","subCatDescription":"0","subCatImage":"0","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"0","catItemDateCreated":"0","catItemRating":"0","catItemImage":"1","catItemIntroText":"0","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"0","catItemTags":"0","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"0","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"0","itemFontResizer":"0","itemPrintButton":"0","itemEmailButton":"0","itemSocialButton":"0","itemVideoAnchor":"0","itemImageGalleryAnchor":"0","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"0","itemImageMainCredits":"0","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"0","itemHits":"0","itemCategory":"1","itemTags":"0","itemAttachments":"0","itemAttachmentsCounter":"0","itemVideo":"0","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"1","itemComments":"0","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"0","itemAuthorImage":"0","itemAuthorDescription":"0","itemAuthorURL":"0","itemAuthorEmail":"0","itemAuthorLatest":"0","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1"}', 0, '', '*'),
(2, 'Тренажоры', 'trenazhory', '<p>описание категории тренажоры</p>\r\n<p>По всей видимости, недокуренный виски расширяет рыцаря. Базальтовый ксилофон бархатист. Бережная волчица философски настроена. Бетонный павиан напыщен и действует тактически. Имманентный крейсер мудр. Разумеется, выдра бархатиста. Радужный кадавр свободен и торжественен. Землистая мулатка шикарна и бархатиста. Конгруэнтная икра трансцендентальна. К своему удивлению мы замечаем, что название уверенного мартини трагически открывает драматичное будущее хомяка.</p>', 4, 2, 1, 1, 2, '', '{"inheritFrom":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":"","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1"}', 0, '', '*'),
(3, 'Uncategorised', 'uncategorised', '', 0, 0, 1, 1, 1, '', '{"theme":"default","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":""}', 1, '', '*'),
(4, 'Наши товары', 'nashi-tovary', '', 0, 0, 1, 1, 3, '', '{"inheritFrom":"1","catMetaDesc":"","catMetaKey":"","catMetaRobots":"","catMetaAuthor":"","theme":"","num_leading_items":"2","num_leading_columns":"1","leadingImgSize":"Large","num_primary_items":"4","num_primary_columns":"2","primaryImgSize":"Medium","num_secondary_items":"4","num_secondary_columns":"1","secondaryImgSize":"Small","num_links":"4","num_links_columns":"1","linksImgSize":"XSmall","catCatalogMode":"0","catFeaturedItems":"1","catOrdering":"","catPagination":"2","catPaginationResults":"1","catTitle":"1","catTitleItemCounter":"1","catDescription":"1","catImage":"1","catFeedLink":"1","catFeedIcon":"1","subCategories":"1","subCatColumns":"2","subCatOrdering":"","subCatTitle":"1","subCatTitleItemCounter":"1","subCatDescription":"1","subCatImage":"1","itemImageXS":"","itemImageS":"","itemImageM":"","itemImageL":"","itemImageXL":"","catItemTitle":"1","catItemTitleLinked":"1","catItemFeaturedNotice":"0","catItemAuthor":"1","catItemDateCreated":"1","catItemRating":"0","catItemImage":"1","catItemIntroText":"1","catItemIntroTextWordLimit":"","catItemExtraFields":"0","catItemHits":"0","catItemCategory":"1","catItemTags":"1","catItemAttachments":"0","catItemAttachmentsCounter":"0","catItemVideo":"0","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"0","catItemImageGallery":"0","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"0","catItemReadMore":"1","catItemCommentsAnchor":"1","catItemK2Plugins":"1","itemDateCreated":"1","itemTitle":"1","itemFeaturedNotice":"1","itemAuthor":"1","itemFontResizer":"1","itemPrintButton":"1","itemEmailButton":"1","itemSocialButton":"1","itemVideoAnchor":"1","itemImageGalleryAnchor":"1","itemCommentsAnchor":"1","itemRating":"1","itemImage":"1","itemImgSize":"Large","itemImageMainCaption":"1","itemImageMainCredits":"1","itemIntroText":"1","itemFullText":"1","itemExtraFields":"1","itemDateModified":"1","itemHits":"1","itemCategory":"1","itemTags":"1","itemAttachments":"1","itemAttachmentsCounter":"1","itemVideo":"1","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"0","itemVideoCaption":"1","itemVideoCredits":"1","itemImageGallery":"1","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"1","itemComments":"1","itemTwitterButton":"1","itemFacebookButton":"1","itemGooglePlusOneButton":"1","itemAuthorBlock":"1","itemAuthorImage":"1","itemAuthorDescription":"1","itemAuthorURL":"1","itemAuthorEmail":"0","itemAuthorLatest":"1","itemAuthorLatestLimit":"5","itemRelated":"1","itemRelatedLimit":"5","itemRelatedTitle":"1","itemRelatedCategory":"0","itemRelatedImageSize":"0","itemRelatedIntrotext":"0","itemRelatedFulltext":"0","itemRelatedAuthor":"0","itemRelatedMedia":"0","itemRelatedImageGallery":"0","itemK2Plugins":"1"}', 0, '', '*');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_comments`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_comments` (
  `id` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_extra_fields`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_extra_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2_extra_fields`
--

INSERT INTO `t50hg_k2_extra_fields` (`id`, `name`, `value`, `type`, `group`, `published`, `ordering`) VALUES
(1, 'Цена', '[{"name":null,"value":"1000","target":null,"alias":"TSena","required":1,"showNull":0}]', 'textfield', 1, 1, 1),
(2, 'Размер', '[{"name":null,"value":"43","target":null,"alias":"Pazmep","required":0,"showNull":0}]', 'textfield', 1, 1, 2),
(3, 'Цвет', '[{"name":null,"value":"","target":null,"alias":"TSvet","required":0,"showNull":0}]', 'textfield', 1, 1, 3),
(4, 'Цена', '[{"name":null,"value":"","target":null,"alias":"Cena","required":1,"showNull":0}]', 'textfield', 2, 1, 1),
(5, 'Нагрузка', '[{"name":null,"value":"","target":null,"alias":"Nagruzka","required":0,"showNull":0}]', 'textfield', 2, 1, 2),
(6, 'Мощность', '[{"name":null,"value":"","target":null,"alias":"moshnost","required":0,"showNull":0}]', 'textfield', 2, 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_extra_fields_groups`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_extra_fields_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2_extra_fields_groups`
--

INSERT INTO `t50hg_k2_extra_fields_groups` (`id`, `name`) VALUES
(1, 'Для кроссовок'),
(2, 'Для тренажёров');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_items`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2_items`
--

INSERT INTO `t50hg_k2_items` (`id`, `title`, `alias`, `catid`, `published`, `introtext`, `fulltext`, `video`, `gallery`, `extra_fields`, `extra_fields_search`, `created`, `created_by`, `created_by_alias`, `checked_out`, `checked_out_time`, `modified`, `modified_by`, `publish_up`, `publish_down`, `trash`, `access`, `ordering`, `featured`, `featured_ordering`, `image_caption`, `image_credits`, `video_caption`, `video_credits`, `hits`, `params`, `metadesc`, `metadata`, `metakey`, `plugins`, `language`) VALUES
(1, 'Кроссовки 1', 'krossovki-1', 1, 1, '<p>описание кроссовки 1</p>\r\n<p>По всей видимости, недокуренный виски расширяет рыцаря. Базальтовый ксилофон бархатист. Бережная волчица философски настроена. Бетонный павиан напыщен и действует тактически. Имманентный крейсер мудр. Разумеется, выдра бархатиста. Радужный кадавр свободен и торжественен. Землистая мулатка шикарна и бархатиста. Конгруэнтная икра трансцендентальна. К своему удивлению мы замечаем, что название уверенного мартини трагически открывает драматичное будущее хомяка.</p>', '', NULL, NULL, '[{"id":"1","value":"1000"},{"id":"2","value":"43"},{"id":"3","value":""}]', '1000 43  ', '2017-10-21 18:45:02', 936, '', 0, '0000-00-00 00:00:00', '2017-10-22 11:05:11', 936, '2017-10-21 18:45:02', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '{"k2storeitem_enabled":"1","k2storeitem_sku":"2342","k2storeitem_price":"500","k2storespecial_price":"450","k2storeitem_tax":"1","k2storeitem_shipping":"1","k2storeitem_metrics":{"item_length":"20","item_width":"10","item_height":"","item_length_class_id":"1","item_weight":"2","item_weight_class_id":"1"},"k2storeitem_cart_text":""}', '*'),
(2, 'Кроссовки 2', 'krossovki-2', 1, 1, '<p>описание кроссовки 2</p>\r\n<p>По всей видимости, недокуренный виски расширяет рыцаря. Базальтовый ксилофон бархатист. Бережная волчица философски настроена. Бетонный павиан напыщен и действует тактически. Имманентный крейсер мудр. Разумеется, выдра бархатиста. Радужный кадавр свободен и торжественен. Землистая мулатка шикарна и бархатиста. Конгруэнтная икра трансцендентальна. К своему удивлению мы замечаем, что название уверенного мартини трагически открывает драматичное будущее хомяка.</p>', '', NULL, NULL, '[{"id":"1","value":"1000"},{"id":"2","value":"43"},{"id":"3","value":""}]', '1000 43  ', '2017-10-21 18:45:30', 936, '', 0, '0000-00-00 00:00:00', '2017-10-22 11:06:51', 936, '2017-10-21 18:45:30', '0000-00-00 00:00:00', 0, 1, 2, 1, 0, '', '', '', '', 3, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '{"k2storeitem_enabled":"1","k2storeitem_sku":"262356","k2storeitem_price":"700","k2storespecial_price":"680","k2storeitem_tax":"1","k2storeitem_shipping":"1","k2storeitem_metrics":{"item_length":"25","item_width":"8","item_height":"","item_length_class_id":"1","item_weight":"1.5","item_weight_class_id":"1"},"k2storeitem_cart_text":""}', '*'),
(3, 'Тренажор 1', 'тренажор-1', 2, 1, '<p>фвыфыавфыафыа</p>\r\n<p>По всей видимости, недокуренный виски расширяет рыцаря. Базальтовый ксилофон бархатист. Бережная волчица философски настроена. Бетонный павиан напыщен и действует тактически. Имманентный крейсер мудр. Разумеется, выдра бархатиста. Радужный кадавр свободен и торжественен. Землистая мулатка шикарна и бархатиста. Конгруэнтная икра трансцендентальна. К своему удивлению мы замечаем, что название уверенного мартини трагически открывает драматичное будущее хомяка.</p>', '', NULL, NULL, '[]', '', '2017-10-21 18:46:20', 936, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-10-21 18:46:20', '0000-00-00 00:00:00', 0, 1, 1, 0, 0, '', '', '', '', 0, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(4, 'Тренажор 2', 'тренажор-2', 2, 1, '<p>описание тренажор 2 </p>\r\n<p>По всей видимости, недокуренный виски расширяет рыцаря. Базальтовый ксилофон бархатист. Бережная волчица философски настроена. Бетонный павиан напыщен и действует тактически. Имманентный крейсер мудр. Разумеется, выдра бархатиста. Радужный кадавр свободен и торжественен. Землистая мулатка шикарна и бархатиста. Конгруэнтная икра трансцендентальна. К своему удивлению мы замечаем, что название уверенного мартини трагически открывает драматичное будущее хомяка.</p>', '', NULL, NULL, '[]', '', '2017-10-21 18:47:18', 936, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2017-10-21 18:47:18', '0000-00-00 00:00:00', 0, 1, 2, 0, 0, '', '', '', '', 1, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '', '*'),
(5, 'Тренажор 3', 'trenazhor-3', 2, 1, '<p>описание тренажор 3</p>\r\n<p>По всей видимости, недокуренный виски расширяет рыцаря. Базальтовый ксилофон бархатист. Бережная волчица философски настроена. Бетонный павиан напыщен и действует тактически. Имманентный крейсер мудр. Разумеется, выдра бархатиста. Радужный кадавр свободен и торжественен. Землистая мулатка шикарна и бархатиста. Конгруэнтная икра трансцендентальна. К своему удивлению мы замечаем, что название уверенного мартини трагически открывает драматичное будущее хомяка.</p>', '', NULL, NULL, '[{"id":"4","value":"200"},{"id":"5","value":"1000"},{"id":"6","value":"250"}]', '200 1000 250 ', '2017-10-21 18:47:50', 936, '', 0, '0000-00-00 00:00:00', '2017-10-22 10:31:45', 936, '2017-10-21 18:47:50', '0000-00-00 00:00:00', 0, 1, 3, 1, 0, '', '', '', '', 14, '{"catItemTitle":"","catItemTitleLinked":"","catItemFeaturedNotice":"","catItemAuthor":"","catItemDateCreated":"","catItemRating":"","catItemImage":"","catItemIntroText":"","catItemExtraFields":"","catItemHits":"","catItemCategory":"","catItemTags":"","catItemAttachments":"","catItemAttachmentsCounter":"","catItemVideo":"","catItemVideoWidth":"","catItemVideoHeight":"","catItemAudioWidth":"","catItemAudioHeight":"","catItemVideoAutoPlay":"","catItemImageGallery":"","catItemImageGalleryWidth":"","catItemImageGalleryHeight":"","catItemDateModified":"","catItemReadMore":"","catItemCommentsAnchor":"","catItemK2Plugins":"","itemDateCreated":"","itemTitle":"","itemFeaturedNotice":"","itemAuthor":"","itemFontResizer":"","itemPrintButton":"","itemEmailButton":"","itemSocialButton":"","itemVideoAnchor":"","itemImageGalleryAnchor":"","itemCommentsAnchor":"","itemRating":"","itemImage":"","itemImgSize":"","itemImageMainCaption":"","itemImageMainCredits":"","itemIntroText":"","itemFullText":"","itemExtraFields":"","itemDateModified":"","itemHits":"","itemCategory":"","itemTags":"","itemAttachments":"","itemAttachmentsCounter":"","itemVideo":"","itemVideoWidth":"","itemVideoHeight":"","itemAudioWidth":"","itemAudioHeight":"","itemVideoAutoPlay":"","itemVideoCaption":"","itemVideoCredits":"","itemImageGallery":"","itemImageGalleryWidth":"","itemImageGalleryHeight":"","itemNavigation":"","itemComments":"","itemTwitterButton":"","itemFacebookButton":"","itemGooglePlusOneButton":"","itemAuthorBlock":"","itemAuthorImage":"","itemAuthorDescription":"","itemAuthorURL":"","itemAuthorEmail":"","itemAuthorLatest":"","itemAuthorLatestLimit":"","itemRelated":"","itemRelatedLimit":"","itemRelatedTitle":"","itemRelatedCategory":"","itemRelatedImageSize":"","itemRelatedIntrotext":"","itemRelatedFulltext":"","itemRelatedAuthor":"","itemRelatedMedia":"","itemRelatedImageGallery":"","itemK2Plugins":""}', '', 'robots=\nauthor=', '', '{"k2storeitem_enabled":"1","k2storeitem_sku":"5","k2storeitem_price":"1200.00000","k2storespecial_price":"0.00000","k2storeitem_tax":"0","k2storeitem_shipping":"1","k2storeitem_metrics":{"item_length":"100","item_width":"200","item_height":"500","item_length_class_id":"1","item_weight":"100","item_weight_class_id":"1"},"k2storeitem_cart_text":""}', '*');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_log`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_log` (
  `status` int(11) NOT NULL,
  `response` text NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2_log`
--

INSERT INTO `t50hg_k2_log` (`status`, `response`, `timestamp`) VALUES
(200, 'OK', '2017-10-21 18:33:54');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_rating`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_tags`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2_tags`
--

INSERT INTO `t50hg_k2_tags` (`id`, `name`, `published`) VALUES
(1, 'Ketler', 1),
(2, 'Abibas', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_tags_xref`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_tags_xref` (
  `id` int(11) NOT NULL,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2_tags_xref`
--

INSERT INTO `t50hg_k2_tags_xref` (`id`, `tagID`, `itemID`) VALUES
(3, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_users`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_users` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `hostname` varchar(255) NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_k2_users`
--

INSERT INTO `t50hg_k2_users` (`id`, `userID`, `userName`, `gender`, `description`, `image`, `url`, `group`, `plugins`, `ip`, `hostname`, `notes`) VALUES
(1, 936, 'Super User', 'm', '', '1.png', '', 0, '', '127.0.0.1', 'autozone-pack', '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_k2_user_groups`
--

CREATE TABLE IF NOT EXISTS `t50hg_k2_user_groups` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_aliases`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_aliases` (
  `alias` varchar(190) NOT NULL,
  `type` varchar(10) NOT NULL,
  `item` varchar(32) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_aliases`
--

INSERT INTO `t50hg_kunena_aliases` (`alias`, `type`, `item`, `state`) VALUES
('announcement', 'view', 'announcement', 1),
('category', 'view', 'category', 1),
('category/create', 'layout', 'category.create', 1),
('category/default', 'layout', 'category.default', 1),
('category/edit', 'layout', 'category.edit', 1),
('category/manage', 'layout', 'category.manage', 1),
('category/moderate', 'layout', 'category.moderate', 1),
('category/user', 'layout', 'category.user', 1),
('common', 'view', 'common', 1),
('create', 'layout', 'category.create', 0),
('credits', 'view', 'credits', 1),
('default', 'layout', 'category.default', 0),
('dobro-pozhalovat', 'catid', '2', 1),
('edit', 'layout', 'category.edit', 0),
('glavnyj-razdel', 'catid', '1', 1),
('home', 'view', 'home', 1),
('manage', 'layout', 'category.manage', 0),
('misc', 'view', 'misc', 1),
('moderate', 'layout', 'category.moderate', 0),
('razdel-predlozhenij', 'catid', '3', 1),
('search', 'view', 'search', 1),
('statistics', 'view', 'statistics', 1),
('topic', 'view', 'topic', 1),
('topics', 'view', 'topics', 1),
('user', 'view', 'user', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_announcement`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_announcement` (
  `id` int(3) NOT NULL,
  `title` tinytext NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `sdescription` text NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  `showdate` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_attachments`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_attachments` (
  `id` int(11) NOT NULL,
  `mesid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `hash` char(32) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `folder` varchar(255) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `filename_real` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_categories`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` tinytext,
  `alias` varchar(255) NOT NULL,
  `icon` varchar(60) NOT NULL,
  `icon_id` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `accesstype` varchar(20) NOT NULL DEFAULT 'joomla.level',
  `access` int(11) NOT NULL DEFAULT '0',
  `pub_access` int(11) NOT NULL DEFAULT '1',
  `pub_recurse` tinyint(4) DEFAULT '1',
  `admin_access` int(11) NOT NULL DEFAULT '0',
  `admin_recurse` tinyint(4) DEFAULT '1',
  `ordering` smallint(6) NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  `channels` text,
  `checked_out` tinyint(4) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review` tinyint(4) NOT NULL DEFAULT '0',
  `allow_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `post_anonymous` tinyint(4) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `headerdesc` text NOT NULL,
  `class_sfx` varchar(20) NOT NULL,
  `allow_polls` tinyint(4) NOT NULL DEFAULT '0',
  `topic_ordering` varchar(16) NOT NULL DEFAULT 'lastpost',
  `iconset` varchar(255) NOT NULL DEFAULT 'default',
  `numTopics` mediumint(8) NOT NULL DEFAULT '0',
  `numPosts` mediumint(8) NOT NULL DEFAULT '0',
  `last_topic_id` int(11) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `allow_ratings` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_categories`
--

INSERT INTO `t50hg_kunena_categories` (`id`, `parent_id`, `name`, `alias`, `icon`, `icon_id`, `locked`, `accesstype`, `access`, `pub_access`, `pub_recurse`, `admin_access`, `admin_recurse`, `ordering`, `published`, `channels`, `checked_out`, `checked_out_time`, `review`, `allow_anonymous`, `post_anonymous`, `hits`, `description`, `headerdesc`, `class_sfx`, `allow_polls`, `topic_ordering`, `iconset`, `numTopics`, `numPosts`, `last_topic_id`, `last_post_id`, `last_post_time`, `params`, `allow_ratings`) VALUES
(1, 0, 'Главный раздел', 'glavnyj-razdel', '', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Это главный раздел форума. Как уровень первого раздела он служит в качестве контейнера для индивидуальных (отдельных) форумов. Он называется также как уровень 1 раздела и должен быть установлен для любого Kunena Форума.', 'Для того, чтобы предоставить дополнительную информацию для вас гости и участники, заголовки форумов могут быть использованы для отображения текста на самом верху определенной категории.', '', 0, 'lastpost', 'default', 0, 0, 0, 0, 0, '', 0),
(2, 1, 'Добро пожаловать', 'dobro-pozhalovat', '', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 1, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Мы призываем новых участников кратко представить себя в этом форуме. Познакомьтесь друг с другом и обменяйтесь своими интересами.', '[b]Добро пожаловать на Kunena форум![/b] \n\n Расскажите нам, и нашим пользователям, кто вы, что вам нравится, и почему вы стали членом этого сайта. \n Мы приветствуем всех новых участников и надеемся видеть вас много!', '', 0, 'lastpost', 'default', 1, 1, 1, 1, 1508773772, '', 0),
(3, 1, 'Раздел предложений', 'razdel-predlozhenij', '', 0, 0, 'joomla.group', 0, 1, 1, 0, 1, 2, 1, 'THIS', 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'Есть замечания и предложения? \n Не стесняйтесь и пишите нам. Мы хотим услышать ваши пожелания, и стремимся сделать наш сайт лучше, более удобным для наших гостей и участников.', 'Это необязательный заголовок Форума раздела предложений.', '', 1, 'lastpost', 'default', 0, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_configuration`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_configuration` (
  `id` int(11) NOT NULL DEFAULT '0',
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_logs`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_logs` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `target_user` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `operation` varchar(40) NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_messages`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_messages` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT '0',
  `thread` int(11) DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `name` tinytext,
  `userid` int(11) NOT NULL DEFAULT '0',
  `email` tinytext,
  `subject` tinytext,
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(128) DEFAULT NULL,
  `topic_emoticon` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `moved` tinyint(4) DEFAULT '0',
  `modified_by` int(7) DEFAULT NULL,
  `modified_time` int(11) DEFAULT NULL,
  `modified_reason` tinytext
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_messages`
--

INSERT INTO `t50hg_kunena_messages` (`id`, `parent`, `thread`, `catid`, `name`, `userid`, `email`, `subject`, `time`, `ip`, `topic_emoticon`, `locked`, `hold`, `ordering`, `hits`, `moved`, `modified_by`, `modified_time`, `modified_reason`) VALUES
(1, 0, 1, 2, 'Kunena', 936, NULL, 'Добро пожаловать в Kunena!', 1508773772, '127.0.0.1', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_messages_text`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_messages_text` (
  `mesid` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_messages_text`
--

INSERT INTO `t50hg_kunena_messages_text` (`mesid`, `message`) VALUES
(1, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]https://docs.kunena.org[/url] \n\n [b]Kunena Support Forum[/b]: [url]https://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]https://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]https://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]https://www.kunena.org/twitter[/url]');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_polls`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_polls` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `threadid` int(11) NOT NULL,
  `polltimetolive` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_polls_options`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_polls_options` (
  `id` int(11) NOT NULL,
  `pollid` int(11) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_polls_users`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_polls_users` (
  `pollid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvote` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_ranks`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL,
  `rank_title` varchar(255) NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_ranks`
--

INSERT INTO `t50hg_kunena_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Новый участник', 0, 0, 'rank1.gif'),
(2, 'Осваиваюсь на форуме', 20, 0, 'rank2.gif'),
(3, 'Захожу иногда', 40, 0, 'rank3.gif'),
(4, 'Давно я тут', 80, 0, 'rank4.gif'),
(5, 'Завсегдатай', 160, 0, 'rank5.gif'),
(6, 'Живу я здесь', 320, 0, 'rank6.gif'),
(7, 'Администратор', 0, 1, 'rankadmin.gif'),
(8, 'Модератор', 0, 1, 'rankmod.gif'),
(9, 'СПАМер', 0, 1, 'rankspammer.gif'),
(10, 'Заблокирован', 0, 1, 'rankbanned.gif');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_rate`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_rate` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `rate` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_sessions`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_sessions` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `allowed` text,
  `lasttime` int(11) NOT NULL DEFAULT '0',
  `readtopics` text,
  `currvisit` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_sessions`
--

INSERT INTO `t50hg_kunena_sessions` (`userid`, `allowed`, `lasttime`, `readtopics`, `currvisit`) VALUES
(936, 'na', 1507580659, '0', 1508790259);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_smileys`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_smileys` (
  `id` int(4) NOT NULL,
  `code` varchar(12) NOT NULL DEFAULT '',
  `location` varchar(50) NOT NULL DEFAULT '',
  `greylocation` varchar(60) NOT NULL DEFAULT '',
  `emoticonbar` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_smileys`
--

INSERT INTO `t50hg_kunena_smileys` (`id`, `code`, `location`, `greylocation`, `emoticonbar`) VALUES
(1, 'B)', 'cool.png', 'cool-grey.png', 1),
(2, '8)', 'cool.png', 'cool-grey.png', 0),
(3, '8-)', 'cool.png', 'cool-grey.png', 0),
(4, ':-(', 'sad.png', 'sad-grey.png', 0),
(5, ':(', 'sad.png', 'sad-grey.png', 1),
(6, ':sad:', 'sad.png', 'sad-grey.png', 0),
(7, ':cry:', 'sad.png', 'sad-grey.png', 0),
(8, ':)', 'smile.png', 'smile-grey.png', 1),
(9, ':-)', 'smile.png', 'smile-grey.png', 0),
(10, ':cheer:', 'cheerful.png', 'cheerful-grey.png', 1),
(11, ';)', 'wink.png', 'wink-grey.png', 1),
(12, ';-)', 'wink.png', 'wink-grey.png', 0),
(13, ':wink:', 'wink.png', 'wink-grey.png', 0),
(14, ';-)', 'wink.png', 'wink-grey.png', 0),
(15, ':P', 'tongue.png', 'tongue-grey.png', 1),
(16, ':p', 'tongue.png', 'tongue-grey.png', 0),
(17, ':-p', 'tongue.png', 'tongue-grey.png', 0),
(18, ':-P', 'tongue.png', 'tongue-grey.png', 0),
(19, ':razz:', 'tongue.png', 'tongue-grey.png', 0),
(20, ':angry:', 'angry.png', 'angry-grey.png', 1),
(21, ':mad:', 'angry.png', 'angry-grey.png', 0),
(22, ':unsure:', 'unsure.png', 'unsure-grey.png', 1),
(23, ':o', 'shocked.png', 'shocked-grey.png', 0),
(24, ':-o', 'shocked.png', 'shocked-grey.png', 0),
(25, ':O', 'shocked.png', 'shocked-grey.png', 0),
(26, ':-O', 'shocked.png', 'shocked-grey.png', 0),
(27, ':eek:', 'shocked.png', 'shocked-grey.png', 0),
(28, ':ohmy:', 'shocked.png', 'shocked-grey.png', 1),
(29, ':huh:', 'wassat.png', 'wassat-grey.png', 1),
(30, ':?', 'confused.png', 'confused-grey.png', 0),
(31, ':-?', 'confused.png', 'confused-grey.png', 0),
(32, ':???', 'confused.png', 'confused-grey.png', 0),
(33, ':dry:', 'ermm.png', 'ermm-grey.png', 1),
(34, ':ermm:', 'ermm.png', 'ermm-grey.png', 0),
(35, ':lol:', 'grin.png', 'grin-grey.png', 1),
(36, ':X', 'sick.png', 'sick-grey.png', 0),
(37, ':x', 'sick.png', 'sick-grey.png', 0),
(38, ':sick:', 'sick.png', 'sick-grey.png', 1),
(39, ':silly:', 'silly.png', 'silly-grey.png', 1),
(40, ':y32b4:', 'silly.png', 'silly-grey.png', 0),
(41, ':blink:', 'blink.png', 'blink-grey.png', 1),
(42, ':blush:', 'blush.png', 'blush-grey.png', 1),
(43, ':oops:', 'blush.png', 'blush-grey.png', 1),
(44, ':kiss:', 'kissing.png', 'kissing-grey.png', 1),
(45, ':rolleyes:', 'blink.png', 'blink-grey.png', 0),
(46, ':roll:', 'blink.png', 'blink-grey.png', 0),
(47, ':woohoo:', 'w00t.png', 'w00t-grey.png', 1),
(48, ':side:', 'sideways.png', 'sideways-grey.png', 1),
(49, ':S', 'dizzy.png', 'dizzy-grey.png', 1),
(50, ':s', 'dizzy.png', 'dizzy-grey.png', 0),
(51, ':evil:', 'devil.png', 'devil-grey.png', 1),
(52, ':twisted:', 'devil.png', 'devil-grey.png', 0),
(53, ':whistle:', 'whistling.png', 'whistling-grey.png', 1),
(54, ':pinch:', 'pinch.png', 'pinch-grey.png', 1),
(55, ':D', 'laughing.png', 'laughing-grey.png', 0),
(56, ':-D', 'laughing.png', 'laughing-grey.png', 0),
(57, ':grin:', 'laughing.png', 'laughing-grey.png', 0),
(58, ':laugh:', 'laughing.png', 'laughing-grey.png', 0),
(59, ':|', 'neutral.png', 'neutral-grey.png', 0),
(60, ':-|', 'neutral.png', 'neutral-grey.png', 0),
(61, ':neutral:', 'neutral.png', 'neutral-grey.png', 0),
(62, ':mrgreen:', 'mrgreen.png', 'mrgreen-grey.png', 0),
(63, ':?:', 'question.png', 'question-grey.png', 0),
(64, ':!:', 'exclamation.png', 'exclamation-grey.png', 0),
(65, ':arrow:', 'arrow.png', 'arrow-grey.png', 0),
(66, ':idea:', 'idea.png', 'idea-grey.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_thankyou`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_thankyou` (
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `targetuserid` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_topics`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_topics` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `subject` tinytext,
  `icon_id` int(11) NOT NULL DEFAULT '0',
  `label_id` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `hold` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `attachments` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  `moved_id` int(11) NOT NULL DEFAULT '0',
  `first_post_id` int(11) NOT NULL DEFAULT '0',
  `first_post_time` int(11) NOT NULL DEFAULT '0',
  `first_post_userid` int(11) NOT NULL DEFAULT '0',
  `first_post_message` text,
  `first_post_guest_name` tinytext,
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `last_post_time` int(11) NOT NULL DEFAULT '0',
  `last_post_userid` int(11) NOT NULL DEFAULT '0',
  `last_post_message` text,
  `last_post_guest_name` tinytext,
  `rating` tinyint(4) NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_topics`
--

INSERT INTO `t50hg_kunena_topics` (`id`, `category_id`, `subject`, `icon_id`, `label_id`, `locked`, `hold`, `ordering`, `posts`, `hits`, `attachments`, `poll_id`, `moved_id`, `first_post_id`, `first_post_time`, `first_post_userid`, `first_post_message`, `first_post_guest_name`, `last_post_id`, `last_post_time`, `last_post_userid`, `last_post_message`, `last_post_guest_name`, `rating`, `params`) VALUES
(1, 2, 'Добро пожаловать в Kunena!', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1508773772, 936, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]https://docs.kunena.org[/url] \n\n [b]Kunena Support Forum[/b]: [url]https://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]https://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]https://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]https://www.kunena.org/twitter[/url]', 'Kunena', 1, 1508773772, 936, '[size=4][b]Welcome to Kunena![/b][/size] \n\n Thank you for choosing Kunena for your community forum needs in Joomla. \n\n Kunena, translated from Swahili meaning “to speak”, is built by a team of open source professionals with the goal of providing a top quality, tightly unified forum solution for Joomla. \n\n\n [size=4][b]Additional Kunena Resources[/b][/size] \n\n [b]Kunena Documentation:[/b] [url]https://docs.kunena.org[/url] \n\n [b]Kunena Support Forum[/b]: [url]https://www.kunena.org/forum[/url] \n\n [b]Kunena Downloads:[/b] [url]https://www.kunena.org/download[/url] \n\n [b]Kunena Blog:[/b] [url]https://www.kunena.org/blog[/url] \n\n [b]Follow Kunena on Twitter:[/b] [url]https://www.kunena.org/twitter[/url]', 'Kunena', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_users`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_users` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `status_text` varchar(255) NOT NULL,
  `view` varchar(8) NOT NULL DEFAULT '',
  `signature` text,
  `moderator` int(11) DEFAULT '0',
  `banned` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `posts` int(11) DEFAULT '0',
  `avatar` varchar(255) DEFAULT NULL,
  `karma` int(11) DEFAULT '0',
  `karma_time` int(11) DEFAULT '0',
  `group_id` int(4) DEFAULT '1',
  `uhits` int(11) DEFAULT '0',
  `personalText` tinytext,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `birthdate` date NOT NULL DEFAULT '0001-01-01',
  `location` varchar(50) DEFAULT NULL,
  `aim` varchar(50) DEFAULT NULL,
  `friendfeed` varchar(50) DEFAULT NULL,
  `bebo` varchar(50) DEFAULT NULL,
  `digg` varchar(50) DEFAULT NULL,
  `icq` varchar(50) DEFAULT NULL,
  `telegram` varchar(50) DEFAULT NULL,
  `vk` varchar(50) DEFAULT NULL,
  `microsoft` varchar(50) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `google` varchar(50) DEFAULT NULL,
  `myspace` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL,
  `delicious` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `blogspot` varchar(50) DEFAULT NULL,
  `flickr` varchar(50) DEFAULT NULL,
  `apple` varchar(50) DEFAULT NULL,
  `qzone` varchar(50) DEFAULT NULL,
  `weibo` varchar(50) DEFAULT NULL,
  `wechat` varchar(50) DEFAULT NULL,
  `yim` varchar(50) DEFAULT NULL,
  `websitename` varchar(50) DEFAULT NULL,
  `websiteurl` varchar(50) DEFAULT NULL,
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `hideEmail` tinyint(1) NOT NULL DEFAULT '1',
  `showOnline` tinyint(1) NOT NULL DEFAULT '1',
  `canSubscribe` tinyint(1) NOT NULL DEFAULT '-1',
  `userListtime` int(11) DEFAULT '-2',
  `thankyou` int(11) DEFAULT '0',
  `ip` varchar(13) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_users`
--

INSERT INTO `t50hg_kunena_users` (`userid`, `status`, `status_text`, `view`, `signature`, `moderator`, `banned`, `ordering`, `posts`, `avatar`, `karma`, `karma_time`, `group_id`, `uhits`, `personalText`, `gender`, `birthdate`, `location`, `aim`, `friendfeed`, `bebo`, `digg`, `icq`, `telegram`, `vk`, `microsoft`, `skype`, `twitter`, `facebook`, `google`, `myspace`, `linkedin`, `delicious`, `instagram`, `qq`, `blogspot`, `flickr`, `apple`, `qzone`, `weibo`, `wechat`, `yim`, `websitename`, `websiteurl`, `rank`, `hideEmail`, `showOnline`, `canSubscribe`, `userListtime`, `thankyou`, `ip`) VALUES
(936, 0, '', '', NULL, 0, NULL, 0, 1, NULL, 0, 0, 1, 0, NULL, 0, '0001-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, -1, -2, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_users_banned`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_users_banned` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `ip` varchar(128) DEFAULT NULL,
  `blocked` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_time` datetime NOT NULL,
  `reason_private` text,
  `reason_public` text,
  `modified_by` int(11) DEFAULT NULL,
  `modified_time` datetime DEFAULT NULL,
  `comments` text,
  `params` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_user_categories`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_user_categories` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT '0',
  `allreadtime` int(11) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_user_categories`
--

INSERT INTO `t50hg_kunena_user_categories` (`user_id`, `category_id`, `role`, `allreadtime`, `subscribed`, `params`) VALUES
(936, 0, 0, 1507580659, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_user_read`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_user_read` (
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_user_topics`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_user_topics` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL,
  `posts` mediumint(8) NOT NULL DEFAULT '0',
  `last_post_id` int(11) NOT NULL DEFAULT '0',
  `owner` tinyint(4) NOT NULL DEFAULT '0',
  `favorite` tinyint(4) NOT NULL DEFAULT '0',
  `subscribed` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_user_topics`
--

INSERT INTO `t50hg_kunena_user_topics` (`user_id`, `topic_id`, `category_id`, `posts`, `last_post_id`, `owner`, `favorite`, `subscribed`, `params`) VALUES
(936, 1, 2, 1, 1, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_kunena_version`
--

CREATE TABLE IF NOT EXISTS `t50hg_kunena_version` (
  `id` int(11) NOT NULL,
  `version` varchar(20) NOT NULL,
  `versiondate` date NOT NULL,
  `installdate` date NOT NULL,
  `build` varchar(20) NOT NULL,
  `versionname` varchar(40) DEFAULT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `t50hg_kunena_version`
--

INSERT INTO `t50hg_kunena_version` (`id`, `version`, `versiondate`, `installdate`, `build`, `versionname`, `state`) VALUES
(1, '5.0.11', '2017-09-03', '2017-10-23', '', 'Kinkajou', '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_languages`
--

CREATE TABLE IF NOT EXISTS `t50hg_languages` (
  `lang_id` int(11) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_languages`
--

INSERT INTO `t50hg_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 2),
(2, 56, 'ru-RU', 'Русский (Россия)', 'Russian (Russia)', 'ru', 'ru_ru', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_menu`
--

CREATE TABLE IF NOT EXISTS `t50hg_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_menu`
--

INSERT INTO `t50hg_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 119, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0),
(102, 'main', 'COM_K2', 'com_k2', '', 'com_k2', 'index.php?option=com_k2', 'component', 1, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2/assets/images/backend/k2_logo_16x16.png', 0, '{}', 43, 64, 0, '', 1),
(103, 'main', 'K2_ITEMS', 'k2_items', '', 'com_k2/k2_items', 'index.php?option=com_k2&view=items', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 44, 45, 0, '', 1),
(104, 'main', 'K2_CATEGORIES', 'k2_categories', '', 'com_k2/k2_categories', 'index.php?option=com_k2&view=categories', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 46, 47, 0, '', 1),
(105, 'main', 'K2_TAGS', 'k2_tags', '', 'com_k2/k2_tags', 'index.php?option=com_k2&view=tags', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 48, 49, 0, '', 1),
(106, 'main', 'K2_COMMENTS', 'k2_comments', '', 'com_k2/k2_comments', 'index.php?option=com_k2&view=comments', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1),
(107, 'main', 'K2_USERS', 'k2_users', '', 'com_k2/k2_users', 'index.php?option=com_k2&view=users', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 52, 53, 0, '', 1),
(108, 'main', 'K2_USER_GROUPS', 'k2_user_groups', '', 'com_k2/k2_user_groups', 'index.php?option=com_k2&view=usergroups', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 54, 55, 0, '', 1),
(109, 'main', 'K2_EXTRA_FIELDS', 'k2_extra_fields', '', 'com_k2/k2_extra_fields', 'index.php?option=com_k2&view=extrafields', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 56, 57, 0, '', 1),
(110, 'main', 'K2_EXTRA_FIELD_GROUPS', 'k2_extra_field_groups', '', 'com_k2/k2_extra_field_groups', 'index.php?option=com_k2&view=extrafieldsgroups', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 58, 59, 0, '', 1),
(111, 'main', 'K2_MEDIA_MANAGER', 'k2_media_manager', '', 'com_k2/k2_media_manager', 'index.php?option=com_k2&view=media', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 60, 61, 0, '', 1),
(112, 'main', 'K2_INFORMATION', 'k2_information', '', 'com_k2/k2_information', 'index.php?option=com_k2&view=info', 'component', 1, 102, 2, 10003, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 62, 63, 0, '', 1),
(113, 'mainmenu', 'Мои категории', 'moi-kategorii', '', 'moi-kategorii', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=4', 'component', 1, 1, 1, 10003, 0, '0000-00-00 00:00:00', 0, 1, ' ', 4, '{"categories":["4"],"singleCatOrdering":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(114, 'main', 'com_k2store', 'com-k2store', '', 'com-k2store', 'index.php?option=com_k2store', 'component', 1, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, '../media/k2store/images/k2store-icon.png', 0, '{}', 67, 68, 0, '', 1),
(115, 'mainmenu', 'Корзина', 'korzina', '', 'korzina', 'index.php?option=com_k2store&view=mycart', 'component', 1, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_image_css":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(116, 'main', 'COM_KUNENA', 'com-kunena', '', 'com-kunena', 'index.php?option=com_kunena', 'component', 1, 1, 1, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_kunena/media/icons/favicons/kunena-logo-white.png', 0, '{}', 71, 98, 0, '', 1),
(117, 'main', 'COM_KUNENA_DASHBOARD', 'com-kunena-dashboard', '', 'com-kunena/com-kunena-dashboard', 'index.php?option=com_kunena&view=cpanel', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 72, 73, 0, '', 1),
(118, 'main', 'COM_KUNENA_CATEGORY_MANAGER', 'com-kunena-category-manager', '', 'com-kunena/com-kunena-category-manager', 'index.php?option=com_kunena&view=categories', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 74, 75, 0, '', 1),
(119, 'main', 'COM_KUNENA_USER_MANAGER', 'com-kunena-user-manager', '', 'com-kunena/com-kunena-user-manager', 'index.php?option=com_kunena&view=users', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 76, 77, 0, '', 1),
(120, 'main', 'COM_KUNENA_FILE_MANAGER', 'com-kunena-file-manager', '', 'com-kunena/com-kunena-file-manager', 'index.php?option=com_kunena&view=attachments', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 78, 79, 0, '', 1),
(121, 'main', 'COM_KUNENA_EMOTICON_MANAGER', 'com-kunena-emoticon-manager', '', 'com-kunena/com-kunena-emoticon-manager', 'index.php?option=com_kunena&view=smilies', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 80, 81, 0, '', 1),
(122, 'main', 'COM_KUNENA_RANK_MANAGER', 'com-kunena-rank-manager', '', 'com-kunena/com-kunena-rank-manager', 'index.php?option=com_kunena&view=ranks', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 82, 83, 0, '', 1),
(123, 'main', 'COM_KUNENA_TEMPLATE_MANAGER', 'com-kunena-template-manager', '', 'com-kunena/com-kunena-template-manager', 'index.php?option=com_kunena&view=templates', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 84, 85, 0, '', 1),
(124, 'main', 'COM_KUNENA_CONFIGURATION', 'com-kunena-configuration', '', 'com-kunena/com-kunena-configuration', 'index.php?option=com_kunena&view=config', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 86, 87, 0, '', 1),
(125, 'main', 'COM_KUNENA_PLUGIN_MANAGER', 'com-kunena-plugin-manager', '', 'com-kunena/com-kunena-plugin-manager', 'index.php?option=com_kunena&view=plugins', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 88, 89, 0, '', 1),
(126, 'main', 'COM_KUNENA_LOG_MANAGER', 'com-kunena-log-manager', '', 'com-kunena/com-kunena-log-manager', 'index.php?option=com_kunena&view=logs', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 90, 91, 0, '', 1),
(127, 'main', 'COM_KUNENA_MENU_STATISTICS', 'com-kunena-menu-statistics', '', 'com-kunena/com-kunena-menu-statistics', 'index.php?option=com_kunena&view=statistics', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 92, 93, 0, '', 1),
(128, 'main', 'COM_KUNENA_FORUM_TOOLS', 'com-kunena-forum-tools', '', 'com-kunena/com-kunena-forum-tools', 'index.php?option=com_kunena&view=tools', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 94, 95, 0, '', 1),
(129, 'main', 'COM_KUNENA_TRASH_MANAGER', 'com-kunena-trash-manager', '', 'com-kunena/com-kunena-trash-manager', 'index.php?option=com_kunena&view=trash', 'component', 1, 116, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 96, 97, 0, '', 1),
(130, 'kunenamenu', 'Форум', 'forum', '', 'forum', 'index.php?option=com_kunena&view=home&defaultmenu=132', 'component', 1, 1, 1, 10031, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"catids":0}', 99, 116, 0, '*', 0),
(131, 'kunenamenu', 'Оглавление', 'index', '', 'forum/index', 'index.php?option=com_kunena&view=category&layout=list', 'component', 1, 130, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 100, 101, 0, '*', 0),
(132, 'kunenamenu', 'Последнее', 'recent', '', 'forum/recent', 'index.php?option=com_kunena&view=topics&mode=replies', 'component', 1, 130, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":""}', 102, 103, 0, '*', 0),
(133, 'kunenamenu', 'Новая тема', 'newtopic', '', 'forum/newtopic', 'index.php?option=com_kunena&view=topic&layout=create', 'component', 1, 130, 2, 10031, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 104, 105, 0, '*', 0),
(134, 'kunenamenu', 'Без ответов', 'noreplies', '', 'forum/noreplies', 'index.php?option=com_kunena&view=topics&mode=noreplies', 'component', 1, 130, 2, 10031, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"","topics_categories":"","topics_time":""}', 106, 107, 0, '*', 0),
(135, 'kunenamenu', 'Мои темы', 'mylatest', '', 'forum/mylatest', 'index.php?option=com_kunena&view=topics&layout=user&mode=default', 'component', 1, 130, 2, 10031, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"topics_catselection":"2","topics_categories":"0","topics_time":""}', 108, 109, 0, '*', 0),
(136, 'kunenamenu', 'Профиль', 'profile', '', 'forum/profile', 'index.php?option=com_kunena&view=user', 'component', 1, 130, 2, 10031, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"integration":1}', 110, 111, 0, '*', 0),
(137, 'kunenamenu', 'Помощь', 'help', '', 'forum/help', 'index.php?option=com_kunena&view=misc', 'component', 1, 130, 2, 10031, 0, '0000-00-00 00:00:00', 0, 3, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"body":"\\u042d\\u0442\\u043e \\u0432\\u043d\\u0443\\u0442\\u0440\\u0435\\u043d\\u043d\\u0438\\u0439 \\u043f\\u0443\\u043d\\u043a\\u0442 \\u043c\\u0435\\u043d\\u044e \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u044b \\u043f\\u043e\\u043c\\u043e\\u0449\\u0438 \\u0432 [b]Kunena \\u043c\\u0435\\u043d\\u044e[\\/b], \\u043f\\u043e\\u0437\\u0432\\u043e\\u043b\\u044f\\u044e\\u0449\\u0438\\u0439 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043f\\u0435\\u0440\\u0435\\u043c\\u0435\\u0449\\u0430\\u0442\\u044c\\u0441\\u044f \\u043f\\u043e \\u0444\\u043e\\u0440\\u0443\\u043c\\u0443. \\n\\n \\u0412\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u041c\\u0435\\u043d\\u0435\\u0434\\u0436\\u0435\\u0440 \\u043c\\u0435\\u043d\\u044e Joomla, \\u0447\\u0442\\u043e\\u0431\\u044b \\u0440\\u0435\\u0434\\u0430\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c \\u043f\\u0443\\u043d\\u043a\\u0442\\u044b \\u0432 \\u044d\\u0442\\u043e\\u043c \\u043c\\u0435\\u043d\\u044e. \\u041f\\u0435\\u0440\\u0435\\u0439\\u0434\\u0438\\u0442\\u0435 \\u0432 [b]\\u041f\\u0430\\u043d\\u0435\\u043b\\u044c \\u0443\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u044f[\\/b] >> [b]\\u041c\\u0435\\u043d\\u044e[\\/b] >> [b]Kunena \\u043c\\u0435\\u043d\\u044e[\\/b] >> [b]\\u041f\\u043e\\u043c\\u043e\\u0449\\u044c[\\/b] \\u0434\\u043b\\u044f \\u0440\\u0435\\u0434\\u0430\\u043a\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u044f \\u0438\\u043b\\u0438 \\u0443\\u0434\\u0430\\u043b\\u0435\\u043d\\u0438\\u044f \\u044d\\u0442\\u043e\\u0433\\u043e \\u043f\\u0443\\u043d\\u043a\\u0442\\u0430 \\u043c\\u0435\\u043d\\u044e. \\n\\n \\u0412 \\u044d\\u0442\\u043e\\u043c \\u043f\\u0443\\u043d\\u043a\\u0442\\u0435 \\u043c\\u0435\\u043d\\u044e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0442\\u0435\\u043a\\u0441\\u0442, BBCode \\u0438\\u043b\\u0438 HTML \\u043a\\u043e\\u0434. \\u0415\\u0441\\u043b\\u0438 \\u0445\\u043e\\u0442\\u0438\\u0442\\u0435 \\u043f\\u0440\\u0438\\u0432\\u044f\\u0437\\u0430\\u0442\\u044c \\u0441\\u0442\\u0430\\u0442\\u044c\\u044e \\u043a \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435, \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u044c BBCode \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438 (\\u0441 id \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438): [code][article=full]123[\\/article][\\/code] \\n\\n \\u0415\\u0441\\u043b\\u0438 \\u0436\\u0435\\u043b\\u0430\\u0435\\u0442\\u0435 \\u0441\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u0441\\u0432\\u043e\\u0451 \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e\\u0435 \\u043c\\u0435\\u043d\\u044e \\u0434\\u043b\\u044f Kunena, \\u043d\\u0430\\u0447\\u043d\\u0438\\u0442\\u0435 \\u0441 \\u0441\\u043e\\u0437\\u0434\\u0430\\u043d\\u0438\\u044f [b]\\u041e\\u0433\\u043b\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435[\\/b] (\\u0433\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430). \\u0412 \\u044d\\u0442\\u043e\\u0439 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0435 \\u0432\\u044b \\u043c\\u043e\\u0436\\u0435\\u0442\\u0435 \\u0432\\u044b\\u0431\\u0440\\u0430\\u0442\\u044c \\u043f\\u0443\\u043d\\u043a\\u0442 \\u043c\\u0435\\u043d\\u044e \\u043f\\u043e \\u0443\\u043c\\u043e\\u043b\\u0447\\u0430\\u043d\\u0438\\u044e, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043e\\u0442\\u043e\\u0431\\u0440\\u0430\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u043f\\u0440\\u0438 \\u0432\\u0432\\u043e\\u0434\\u0435 \\u0432 Kunena.","body_format":"bbcode"}', 112, 113, 0, '*', 0),
(138, 'kunenamenu', 'Поиск', 'search', '', 'forum/search', 'index.php?option=com_kunena&view=search', 'component', 1, 130, 2, 10031, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 114, 115, 0, '*', 0),
(139, 'mainmenu', 'Форум', 'kunena-2017-10-23', '', 'kunena-2017-10-23', 'index.php?Itemid=130', 'alias', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"aliasoptions":"130","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 117, 118, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_menu_types`
--

CREATE TABLE IF NOT EXISTS `t50hg_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_menu_types`
--

INSERT INTO `t50hg_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 69, 'kunenamenu', 'Kunena меню', 'Это меню Kunena по умолчанию. Оно используется в качестве верхней навигации для Kunena. Можно опубликовать в любой позиции модуля. Просто снимите с публикации пункты, которые не требуются.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_messages`
--

CREATE TABLE IF NOT EXISTS `t50hg_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `t50hg_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_modules`
--

CREATE TABLE IF NOT EXISTS `t50hg_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_modules`
--

INSERT INTO `t50hg_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '2017-10-22 15:20:26', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(88, 58, 'K2 Comments', '', '', 0, '', 0, '0000-00-00 00:00:00', '2017-10-21 19:22:58', '0000-00-00 00:00:00', 1, 'mod_k2_comments', 1, 1, '', 0, '*'),
(89, 59, 'K2 Content', '', '', 1, 'position-12', 0, '0000-00-00 00:00:00', '2017-10-21 19:23:01', '0000-00-00 00:00:00', 1, 'mod_k2_content', 1, 1, '{"moduleclass_sfx":"","getTemplate":"Default","source":"filter","catfilter":"0","getChildren":"0","itemCount":"5","itemsOrdering":"","FeaturedItems":"1","popularityRange":"","videosOnly":"0","itemTitle":"1","itemAuthor":"1","itemAuthorAvatar":"1","itemAuthorAvatarWidthSelect":"custom","itemAuthorAvatarWidth":"50","userDescription":"1","itemIntroText":"1","itemIntroTextWordLimit":"","itemImage":"1","itemImgSize":"Small","itemVideo":"1","itemVideoCaption":"1","itemVideoCredits":"1","itemAttachments":"1","itemTags":"1","itemCategory":"1","itemDateCreated":"1","itemHits":"1","itemReadMore":"1","itemExtraFields":"0","itemCommentsCounter":"1","feed":"1","itemPreText":"","itemCustomLink":"0","itemCustomLinkTitle":"","itemCustomLinkURL":"http:\\/\\/","itemCustomLinkMenuItem":"101","K2Plugins":"1","JPlugins":"1","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 60, 'K2 Tools', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2017-10-21 19:23:04', '0000-00-00 00:00:00', 1, 'mod_k2_tools', 1, 1, '{"moduleclass_sfx":"","module_usage":"4","archiveItemsCounter":"1","archiveCategory":"0","authors_module_category":"0","authorItemsCounter":"1","authorAvatar":"1","authorAvatarWidthSelect":"custom","authorAvatarWidth":"50","authorLatestItem":"1","calendarCategory":"0","home":"","seperator":"","root_id":"0","end_level":"","categoriesListOrdering":"","categoriesListItemsCounter":"1","root_id2":"0","catfilter":"0","getChildren":"0","liveSearch":"0","text":"","button":"0","imagebutton":"0","button_text":"","searchItemId":"","min_size":"75","max_size":"300","cloud_limit":"30","cloud_category":["0"],"cloud_category_recursive":"0","customCode":"","parsePhp":"0","K2Plugins":"0","JPlugins":"0","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 61, 'K2 Users', '', '', 0, '', 0, '0000-00-00 00:00:00', '2017-10-21 19:23:06', '0000-00-00 00:00:00', 0, 'mod_k2_users', 1, 1, '', 0, '*'),
(92, 62, 'K2 User', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '2017-10-21 19:22:55', '0000-00-00 00:00:00', 1, 'mod_k2_user', 1, 1, '{"moduleclass_sfx":"","pretext":"","posttext":"","userGreetingText":"","name":"1","userAvatar":"1","userAvatarWidthSelect":"custom","userAvatarWidth":"50","menu":"","login":"","logout":"","usesecure":"0","cache":"0","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 63, 'K2 Quick Icons (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 1, 1, '', 1, '*'),
(94, 64, 'K2 Stats (admin)', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_k2_stats', 1, 1, '', 1, '*'),
(95, 66, 'K2 Store Cart', '', '', 1, 'position-6', 0, '0000-00-00 00:00:00', '2017-10-22 14:17:34', '0000-00-00 00:00:00', 1, 'mod_k2store_cart', 1, 1, '{"moduleclass_sfx":"","link_type":"link","check_empty":"0","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 67, 'K2Store Currency', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_k2store_currency', 1, 1, '', 0, '*'),
(97, 70, 'Kunena_menu', '', '', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"kunenamenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_modules_menu`
--

CREATE TABLE IF NOT EXISTS `t50hg_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_modules_menu`
--

INSERT INTO `t50hg_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(89, 101),
(90, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(97, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `t50hg_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_overrider`
--

CREATE TABLE IF NOT EXISTS `t50hg_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `t50hg_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_postinstall_messages`
--

INSERT INTO `t50hg_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_redirect_links`
--

CREATE TABLE IF NOT EXISTS `t50hg_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_schemas`
--

CREATE TABLE IF NOT EXISTS `t50hg_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_schemas`
--

INSERT INTO `t50hg_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.0-2017-07-31'),
(10016, '3.5.0');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_session`
--

CREATE TABLE IF NOT EXISTS `t50hg_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_session`
--

INSERT INTO `t50hg_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('c992bj5r33b9bepurt4dk0v4r1', 1, 0, '1508931139', 'joomla|s:1248:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwODkzMDYzMztzOjQ6Imxhc3QiO2k6MTUwODkzMDY0MjtzOjM6Im5vdyI7aToxNTA4OTMxMTM3O31zOjU6InRva2VuIjtzOjMyOiI1RkRob2pOcElIQ3AzVVl6amZPbjJKTFpRaXExOXNqayI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO31zOjE0OiJjb21fY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMDoiY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250ZW50IjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250ZW50Ijt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjIwOiJKb29tbGFcQ01TXFVzZXJcVXNlciI6MTp7czoyOiJpZCI7czozOiI5MzYiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 936, 'admin'),
('jljg1hitm1ltv5elbvj1osr720', 0, 1, '1508930613', 'joomla|s:900:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwODkzMDYwNTtzOjQ6Imxhc3QiO2k6MTUwODkzMDYwNTtzOjM6Im5vdyI7aToxNTA4OTMwNjA1O31zOjU6InRva2VuIjtzOjMyOiJ2cjhUUUFGRlpGR1o2RG5WUTFyT3Nkb0l5Sk1FYjRhSCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjIxOiJtb2RfazJzdG9yZV9taW5pX2NhcnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiaXNBamF4IjtpOjA7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjk6Il9fazJzdG9yZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJjdXJyZW5jeSI7czozOiJVQUgiO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_tags`
--

CREATE TABLE IF NOT EXISTS `t50hg_tags` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_tags`
--

INSERT INTO `t50hg_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 936, '2017-10-21 15:16:04', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_template_styles`
--

CREATE TABLE IF NOT EXISTS `t50hg_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_template_styles`
--

INSERT INTO `t50hg_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '1', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_ucm_base`
--

CREATE TABLE IF NOT EXISTS `t50hg_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_ucm_content`
--

CREATE TABLE IF NOT EXISTS `t50hg_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_ucm_history`
--

CREATE TABLE IF NOT EXISTS `t50hg_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_updates`
--

CREATE TABLE IF NOT EXISTS `t50hg_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_update_sites`
--

CREATE TABLE IF NOT EXISTS `t50hg_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Дамп данных таблицы `t50hg_update_sites`
--

INSERT INTO `t50hg_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1508930643, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, ''),
(4, 'K2 Updates', 'extension', 'http://getk2.org/app/update.xml', 1, 0, ''),
(5, 'Kunena 5.0 Update Site', 'collection', 'https://update.kunena.org/5.0/list.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `t50hg_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `t50hg_update_sites_extensions`
--

INSERT INTO `t50hg_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(2, 10002),
(3, 28),
(4, 10003),
(5, 10032);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_usergroups`
--

CREATE TABLE IF NOT EXISTS `t50hg_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_usergroups`
--

INSERT INTO `t50hg_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_users`
--

CREATE TABLE IF NOT EXISTS `t50hg_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=937 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_users`
--

INSERT INTO `t50hg_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(936, 'Super User', 'admin', 's211211@ukr.net', '$2y$10$yBKGd2SPFFfowdXjr6ea5Ogg3DfrFYE2gNnBCTY30iRIZNsksT5FK', 0, 1, '2017-10-21 15:16:04', '2017-10-25 11:23:56', '0', '{"editor":"","timezone":"","language":"","admin_style":"","admin_language":"","helpsite":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_user_keys`
--

CREATE TABLE IF NOT EXISTS `t50hg_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_user_notes`
--

CREATE TABLE IF NOT EXISTS `t50hg_user_notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_user_profiles`
--

CREATE TABLE IF NOT EXISTS `t50hg_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `t50hg_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_user_usergroup_map`
--

INSERT INTO `t50hg_user_usergroup_map` (`user_id`, `group_id`) VALUES
(936, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_utf8_conversion`
--

CREATE TABLE IF NOT EXISTS `t50hg_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_utf8_conversion`
--

INSERT INTO `t50hg_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Структура таблицы `t50hg_viewlevels`
--

CREATE TABLE IF NOT EXISTS `t50hg_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `t50hg_viewlevels`
--

INSERT INTO `t50hg_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `t50hg_assets`
--
ALTER TABLE `t50hg_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Индексы таблицы `t50hg_associations`
--
ALTER TABLE `t50hg_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Индексы таблицы `t50hg_banners`
--
ALTER TABLE `t50hg_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `t50hg_banner_clients`
--
ALTER TABLE `t50hg_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Индексы таблицы `t50hg_banner_tracks`
--
ALTER TABLE `t50hg_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Индексы таблицы `t50hg_categories`
--
ALTER TABLE `t50hg_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `t50hg_contact_details`
--
ALTER TABLE `t50hg_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `t50hg_content`
--
ALTER TABLE `t50hg_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `t50hg_contentitem_tag_map`
--
ALTER TABLE `t50hg_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Индексы таблицы `t50hg_content_frontpage`
--
ALTER TABLE `t50hg_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `t50hg_content_rating`
--
ALTER TABLE `t50hg_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Индексы таблицы `t50hg_content_types`
--
ALTER TABLE `t50hg_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Индексы таблицы `t50hg_extensions`
--
ALTER TABLE `t50hg_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Индексы таблицы `t50hg_fields`
--
ALTER TABLE `t50hg_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `t50hg_fields_categories`
--
ALTER TABLE `t50hg_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Индексы таблицы `t50hg_fields_groups`
--
ALTER TABLE `t50hg_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `t50hg_fields_values`
--
ALTER TABLE `t50hg_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Индексы таблицы `t50hg_finder_filters`
--
ALTER TABLE `t50hg_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `t50hg_finder_links`
--
ALTER TABLE `t50hg_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Индексы таблицы `t50hg_finder_links_terms0`
--
ALTER TABLE `t50hg_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_terms1`
--
ALTER TABLE `t50hg_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_terms2`
--
ALTER TABLE `t50hg_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_terms3`
--
ALTER TABLE `t50hg_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_terms4`
--
ALTER TABLE `t50hg_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_terms5`
--
ALTER TABLE `t50hg_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_terms6`
--
ALTER TABLE `t50hg_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_terms7`
--
ALTER TABLE `t50hg_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_terms8`
--
ALTER TABLE `t50hg_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_terms9`
--
ALTER TABLE `t50hg_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_termsa`
--
ALTER TABLE `t50hg_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_termsb`
--
ALTER TABLE `t50hg_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_termsc`
--
ALTER TABLE `t50hg_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_termsd`
--
ALTER TABLE `t50hg_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_termse`
--
ALTER TABLE `t50hg_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_links_termsf`
--
ALTER TABLE `t50hg_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Индексы таблицы `t50hg_finder_taxonomy`
--
ALTER TABLE `t50hg_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Индексы таблицы `t50hg_finder_taxonomy_map`
--
ALTER TABLE `t50hg_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Индексы таблицы `t50hg_finder_terms`
--
ALTER TABLE `t50hg_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Индексы таблицы `t50hg_finder_terms_common`
--
ALTER TABLE `t50hg_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Индексы таблицы `t50hg_finder_tokens`
--
ALTER TABLE `t50hg_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Индексы таблицы `t50hg_finder_tokens_aggregate`
--
ALTER TABLE `t50hg_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Индексы таблицы `t50hg_finder_types`
--
ALTER TABLE `t50hg_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Индексы таблицы `t50hg_k2store_address`
--
ALTER TABLE `t50hg_k2store_address`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_k2store_countries`
--
ALTER TABLE `t50hg_k2store_countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `t50hg_k2store_coupons`
--
ALTER TABLE `t50hg_k2store_coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `t50hg_k2store_currency`
--
ALTER TABLE `t50hg_k2store_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `t50hg_k2store_field`
--
ALTER TABLE `t50hg_k2store_field`
  ADD PRIMARY KEY (`field_id`),
  ADD UNIQUE KEY `field_namekey` (`field_namekey`);

--
-- Индексы таблицы `t50hg_k2store_geozonerules`
--
ALTER TABLE `t50hg_k2store_geozonerules`
  ADD PRIMARY KEY (`geozonerule_id`);

--
-- Индексы таблицы `t50hg_k2store_geozones`
--
ALTER TABLE `t50hg_k2store_geozones`
  ADD PRIMARY KEY (`geozone_id`);

--
-- Индексы таблицы `t50hg_k2store_groupprices`
--
ALTER TABLE `t50hg_k2store_groupprices`
  ADD PRIMARY KEY (`groupprice_id`),
  ADD UNIQUE KEY `customer_group` (`product_id`,`customer_group_id`);

--
-- Индексы таблицы `t50hg_k2store_lengths`
--
ALTER TABLE `t50hg_k2store_lengths`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `t50hg_k2store_options`
--
ALTER TABLE `t50hg_k2store_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `t50hg_k2store_optionvalues`
--
ALTER TABLE `t50hg_k2store_optionvalues`
  ADD PRIMARY KEY (`optionvalue_id`);

--
-- Индексы таблицы `t50hg_k2store_orderinfo`
--
ALTER TABLE `t50hg_k2store_orderinfo`
  ADD PRIMARY KEY (`orderinfo_id`),
  ADD KEY `idx_orderinfo_order_id` (`order_id`);

--
-- Индексы таблицы `t50hg_k2store_orderitemattributes`
--
ALTER TABLE `t50hg_k2store_orderitemattributes`
  ADD PRIMARY KEY (`orderitemattribute_id`),
  ADD KEY `productattribute_id` (`productattributeoption_id`);

--
-- Индексы таблицы `t50hg_k2store_orderitems`
--
ALTER TABLE `t50hg_k2store_orderitems`
  ADD PRIMARY KEY (`orderitem_id`),
  ADD KEY `idx_order_item_order_id` (`order_id`);

--
-- Индексы таблицы `t50hg_k2store_orders`
--
ALTER TABLE `t50hg_k2store_orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_k2store_ordershippings`
--
ALTER TABLE `t50hg_k2store_ordershippings`
  ADD PRIMARY KEY (`ordershipping_id`),
  ADD KEY `idx_order_shipping_order_id` (`order_id`),
  ADD KEY `fk_Orders_OrderShipping` (`order_id`);

--
-- Индексы таблицы `t50hg_k2store_orderstatuses`
--
ALTER TABLE `t50hg_k2store_orderstatuses`
  ADD PRIMARY KEY (`orderstatus_id`);

--
-- Индексы таблицы `t50hg_k2store_ordertax`
--
ALTER TABLE `t50hg_k2store_ordertax`
  ADD PRIMARY KEY (`ordertax_id`);

--
-- Индексы таблицы `t50hg_k2store_order_coupons`
--
ALTER TABLE `t50hg_k2store_order_coupons`
  ADD PRIMARY KEY (`order_coupon_id`);

--
-- Индексы таблицы `t50hg_k2store_productprices`
--
ALTER TABLE `t50hg_k2store_productprices`
  ADD PRIMARY KEY (`productprice_id`);

--
-- Индексы таблицы `t50hg_k2store_productquantities`
--
ALTER TABLE `t50hg_k2store_productquantities`
  ADD PRIMARY KEY (`productquantity_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `t50hg_k2store_products`
--
ALTER TABLE `t50hg_k2store_products`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `t50hg_k2store_product_options`
--
ALTER TABLE `t50hg_k2store_product_options`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `t50hg_k2store_product_optionvalues`
--
ALTER TABLE `t50hg_k2store_product_optionvalues`
  ADD PRIMARY KEY (`product_optionvalue_id`);

--
-- Индексы таблицы `t50hg_k2store_shippingmethods`
--
ALTER TABLE `t50hg_k2store_shippingmethods`
  ADD PRIMARY KEY (`shipping_method_id`);

--
-- Индексы таблицы `t50hg_k2store_shippingrates`
--
ALTER TABLE `t50hg_k2store_shippingrates`
  ADD PRIMARY KEY (`shipping_rate_id`);

--
-- Индексы таблицы `t50hg_k2store_storeprofiles`
--
ALTER TABLE `t50hg_k2store_storeprofiles`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `t50hg_k2store_taxprofiles`
--
ALTER TABLE `t50hg_k2store_taxprofiles`
  ADD PRIMARY KEY (`taxprofile_id`);

--
-- Индексы таблицы `t50hg_k2store_taxrates`
--
ALTER TABLE `t50hg_k2store_taxrates`
  ADD PRIMARY KEY (`taxrate_id`);

--
-- Индексы таблицы `t50hg_k2store_taxrules`
--
ALTER TABLE `t50hg_k2store_taxrules`
  ADD PRIMARY KEY (`taxrule_id`);

--
-- Индексы таблицы `t50hg_k2store_weights`
--
ALTER TABLE `t50hg_k2store_weights`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `t50hg_k2store_zones`
--
ALTER TABLE `t50hg_k2store_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `t50hg_k2_attachments`
--
ALTER TABLE `t50hg_k2_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hits` (`hits`),
  ADD KEY `itemID` (`itemID`);

--
-- Индексы таблицы `t50hg_k2_categories`
--
ALTER TABLE `t50hg_k2_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`),
  ADD KEY `category` (`published`,`access`,`trash`),
  ADD KEY `language` (`language`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `parent` (`parent`),
  ADD KEY `published` (`published`),
  ADD KEY `trash` (`trash`);

--
-- Индексы таблицы `t50hg_k2_comments`
--
ALTER TABLE `t50hg_k2_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentDate` (`commentDate`),
  ADD KEY `countComments` (`itemID`,`published`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `latestComments` (`published`,`commentDate`),
  ADD KEY `published` (`published`),
  ADD KEY `userID` (`userID`);

--
-- Индексы таблицы `t50hg_k2_extra_fields`
--
ALTER TABLE `t50hg_k2_extra_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group` (`group`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Индексы таблицы `t50hg_k2_extra_fields_groups`
--
ALTER TABLE `t50hg_k2_extra_fields_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_k2_items`
--
ALTER TABLE `t50hg_k2_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`),
  ADD KEY `catid` (`catid`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created` (`created`),
  ADD KEY `featured_ordering` (`featured_ordering`),
  ADD KEY `featured` (`featured`),
  ADD KEY `hits` (`hits`),
  ADD KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  ADD KEY `language` (`language`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`),
  ADD KEY `publish_down` (`publish_down`),
  ADD KEY `publish_up` (`publish_up`),
  ADD KEY `trash` (`trash`);

--
-- Индексы таблицы `t50hg_k2_rating`
--
ALTER TABLE `t50hg_k2_rating`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `rating_sum` (`rating_sum`),
  ADD KEY `rating_count` (`rating_count`);

--
-- Индексы таблицы `t50hg_k2_tags`
--
ALTER TABLE `t50hg_k2_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`);

--
-- Индексы таблицы `t50hg_k2_tags_xref`
--
ALTER TABLE `t50hg_k2_tags_xref`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagID` (`tagID`),
  ADD KEY `itemID` (`itemID`);

--
-- Индексы таблицы `t50hg_k2_users`
--
ALTER TABLE `t50hg_k2_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `group` (`group`);

--
-- Индексы таблицы `t50hg_k2_user_groups`
--
ALTER TABLE `t50hg_k2_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_kunena_aliases`
--
ALTER TABLE `t50hg_kunena_aliases`
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `state` (`state`),
  ADD KEY `item` (`item`),
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `t50hg_kunena_announcement`
--
ALTER TABLE `t50hg_kunena_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_kunena_attachments`
--
ALTER TABLE `t50hg_kunena_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mesid` (`mesid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `hash` (`hash`),
  ADD KEY `filename` (`filename`),
  ADD KEY `filename_real` (`filename_real`);

--
-- Индексы таблицы `t50hg_kunena_categories`
--
ALTER TABLE `t50hg_kunena_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `category_access` (`accesstype`,`access`),
  ADD KEY `published_pubaccess_id` (`published`,`pub_access`,`id`);

--
-- Индексы таблицы `t50hg_kunena_configuration`
--
ALTER TABLE `t50hg_kunena_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_kunena_logs`
--
ALTER TABLE `t50hg_kunena_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `target_user` (`target_user`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `t50hg_kunena_messages`
--
ALTER TABLE `t50hg_kunena_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread` (`thread`),
  ADD KEY `ip` (`ip`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `locked` (`locked`),
  ADD KEY `hold_time` (`hold`,`time`),
  ADD KEY `parent_hits` (`parent`,`hits`),
  ADD KEY `catid_parent` (`catid`,`parent`);

--
-- Индексы таблицы `t50hg_kunena_messages_text`
--
ALTER TABLE `t50hg_kunena_messages_text`
  ADD PRIMARY KEY (`mesid`);

--
-- Индексы таблицы `t50hg_kunena_polls`
--
ALTER TABLE `t50hg_kunena_polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threadid` (`threadid`);

--
-- Индексы таблицы `t50hg_kunena_polls_options`
--
ALTER TABLE `t50hg_kunena_polls_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollid` (`pollid`);

--
-- Индексы таблицы `t50hg_kunena_polls_users`
--
ALTER TABLE `t50hg_kunena_polls_users`
  ADD UNIQUE KEY `pollid` (`pollid`,`userid`);

--
-- Индексы таблицы `t50hg_kunena_ranks`
--
ALTER TABLE `t50hg_kunena_ranks`
  ADD PRIMARY KEY (`rank_id`);

--
-- Индексы таблицы `t50hg_kunena_rate`
--
ALTER TABLE `t50hg_kunena_rate`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_kunena_sessions`
--
ALTER TABLE `t50hg_kunena_sessions`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `currvisit` (`currvisit`);

--
-- Индексы таблицы `t50hg_kunena_smileys`
--
ALTER TABLE `t50hg_kunena_smileys`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_kunena_thankyou`
--
ALTER TABLE `t50hg_kunena_thankyou`
  ADD UNIQUE KEY `postid` (`postid`,`userid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `targetuserid` (`targetuserid`);

--
-- Индексы таблицы `t50hg_kunena_topics`
--
ALTER TABLE `t50hg_kunena_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `locked` (`locked`),
  ADD KEY `hold` (`hold`),
  ADD KEY `posts` (`posts`),
  ADD KEY `hits` (`hits`),
  ADD KEY `first_post_userid` (`first_post_userid`),
  ADD KEY `last_post_userid` (`last_post_userid`),
  ADD KEY `first_post_time` (`first_post_time`),
  ADD KEY `last_post_time` (`last_post_time`),
  ADD KEY `last_post_id` (`last_post_id`);

--
-- Индексы таблицы `t50hg_kunena_users`
--
ALTER TABLE `t50hg_kunena_users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `posts` (`posts`),
  ADD KEY `uhits` (`uhits`),
  ADD KEY `banned` (`banned`),
  ADD KEY `moderator` (`moderator`);

--
-- Индексы таблицы `t50hg_kunena_users_banned`
--
ALTER TABLE `t50hg_kunena_users_banned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `ip` (`ip`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `created_time` (`created_time`);

--
-- Индексы таблицы `t50hg_kunena_user_categories`
--
ALTER TABLE `t50hg_kunena_user_categories`
  ADD PRIMARY KEY (`user_id`,`category_id`),
  ADD KEY `category_subscribed` (`category_id`,`subscribed`),
  ADD KEY `role` (`role`);

--
-- Индексы таблицы `t50hg_kunena_user_read`
--
ALTER TABLE `t50hg_kunena_user_read`
  ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  ADD KEY `category_user_id` (`category_id`,`user_id`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `t50hg_kunena_user_topics`
--
ALTER TABLE `t50hg_kunena_user_topics`
  ADD UNIQUE KEY `user_topic_id` (`user_id`,`topic_id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `posts` (`posts`),
  ADD KEY `owner` (`owner`),
  ADD KEY `favorite` (`favorite`),
  ADD KEY `subscribed` (`subscribed`);

--
-- Индексы таблицы `t50hg_kunena_version`
--
ALTER TABLE `t50hg_kunena_version`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_languages`
--
ALTER TABLE `t50hg_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Индексы таблицы `t50hg_menu`
--
ALTER TABLE `t50hg_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `t50hg_menu_types`
--
ALTER TABLE `t50hg_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Индексы таблицы `t50hg_messages`
--
ALTER TABLE `t50hg_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Индексы таблицы `t50hg_messages_cfg`
--
ALTER TABLE `t50hg_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Индексы таблицы `t50hg_modules`
--
ALTER TABLE `t50hg_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `t50hg_modules_menu`
--
ALTER TABLE `t50hg_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Индексы таблицы `t50hg_newsfeeds`
--
ALTER TABLE `t50hg_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Индексы таблицы `t50hg_overrider`
--
ALTER TABLE `t50hg_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `t50hg_postinstall_messages`
--
ALTER TABLE `t50hg_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Индексы таблицы `t50hg_redirect_links`
--
ALTER TABLE `t50hg_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Индексы таблицы `t50hg_schemas`
--
ALTER TABLE `t50hg_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Индексы таблицы `t50hg_session`
--
ALTER TABLE `t50hg_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Индексы таблицы `t50hg_tags`
--
ALTER TABLE `t50hg_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Индексы таблицы `t50hg_template_styles`
--
ALTER TABLE `t50hg_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Индексы таблицы `t50hg_ucm_base`
--
ALTER TABLE `t50hg_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Индексы таблицы `t50hg_ucm_content`
--
ALTER TABLE `t50hg_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Индексы таблицы `t50hg_ucm_history`
--
ALTER TABLE `t50hg_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Индексы таблицы `t50hg_updates`
--
ALTER TABLE `t50hg_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Индексы таблицы `t50hg_update_sites`
--
ALTER TABLE `t50hg_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Индексы таблицы `t50hg_update_sites_extensions`
--
ALTER TABLE `t50hg_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Индексы таблицы `t50hg_usergroups`
--
ALTER TABLE `t50hg_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Индексы таблицы `t50hg_users`
--
ALTER TABLE `t50hg_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Индексы таблицы `t50hg_user_keys`
--
ALTER TABLE `t50hg_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `t50hg_user_notes`
--
ALTER TABLE `t50hg_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Индексы таблицы `t50hg_user_profiles`
--
ALTER TABLE `t50hg_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Индексы таблицы `t50hg_user_usergroup_map`
--
ALTER TABLE `t50hg_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Индексы таблицы `t50hg_viewlevels`
--
ALTER TABLE `t50hg_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `t50hg_assets`
--
ALTER TABLE `t50hg_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT для таблицы `t50hg_banners`
--
ALTER TABLE `t50hg_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_banner_clients`
--
ALTER TABLE `t50hg_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_categories`
--
ALTER TABLE `t50hg_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `t50hg_contact_details`
--
ALTER TABLE `t50hg_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_content`
--
ALTER TABLE `t50hg_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_content_types`
--
ALTER TABLE `t50hg_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `t50hg_extensions`
--
ALTER TABLE `t50hg_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10049;
--
-- AUTO_INCREMENT для таблицы `t50hg_fields`
--
ALTER TABLE `t50hg_fields`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_fields_groups`
--
ALTER TABLE `t50hg_fields_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_finder_filters`
--
ALTER TABLE `t50hg_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_finder_links`
--
ALTER TABLE `t50hg_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_finder_taxonomy`
--
ALTER TABLE `t50hg_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_finder_terms`
--
ALTER TABLE `t50hg_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_finder_types`
--
ALTER TABLE `t50hg_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_address`
--
ALTER TABLE `t50hg_k2store_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_countries`
--
ALTER TABLE `t50hg_k2store_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=242;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_coupons`
--
ALTER TABLE `t50hg_k2store_coupons`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_currency`
--
ALTER TABLE `t50hg_k2store_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_field`
--
ALTER TABLE `t50hg_k2store_field`
  MODIFY `field_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_geozonerules`
--
ALTER TABLE `t50hg_k2store_geozonerules`
  MODIFY `geozonerule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_geozones`
--
ALTER TABLE `t50hg_k2store_geozones`
  MODIFY `geozone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_groupprices`
--
ALTER TABLE `t50hg_k2store_groupprices`
  MODIFY `groupprice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_lengths`
--
ALTER TABLE `t50hg_k2store_lengths`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_options`
--
ALTER TABLE `t50hg_k2store_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_optionvalues`
--
ALTER TABLE `t50hg_k2store_optionvalues`
  MODIFY `optionvalue_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_orderinfo`
--
ALTER TABLE `t50hg_k2store_orderinfo`
  MODIFY `orderinfo_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_orderitemattributes`
--
ALTER TABLE `t50hg_k2store_orderitemattributes`
  MODIFY `orderitemattribute_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_orderitems`
--
ALTER TABLE `t50hg_k2store_orderitems`
  MODIFY `orderitem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_orders`
--
ALTER TABLE `t50hg_k2store_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_ordershippings`
--
ALTER TABLE `t50hg_k2store_ordershippings`
  MODIFY `ordershipping_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_orderstatuses`
--
ALTER TABLE `t50hg_k2store_orderstatuses`
  MODIFY `orderstatus_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_ordertax`
--
ALTER TABLE `t50hg_k2store_ordertax`
  MODIFY `ordertax_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_order_coupons`
--
ALTER TABLE `t50hg_k2store_order_coupons`
  MODIFY `order_coupon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_productprices`
--
ALTER TABLE `t50hg_k2store_productprices`
  MODIFY `productprice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_productquantities`
--
ALTER TABLE `t50hg_k2store_productquantities`
  MODIFY `productquantity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_products`
--
ALTER TABLE `t50hg_k2store_products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_product_options`
--
ALTER TABLE `t50hg_k2store_product_options`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_product_optionvalues`
--
ALTER TABLE `t50hg_k2store_product_optionvalues`
  MODIFY `product_optionvalue_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_shippingmethods`
--
ALTER TABLE `t50hg_k2store_shippingmethods`
  MODIFY `shipping_method_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_shippingrates`
--
ALTER TABLE `t50hg_k2store_shippingrates`
  MODIFY `shipping_rate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_storeprofiles`
--
ALTER TABLE `t50hg_k2store_storeprofiles`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_taxprofiles`
--
ALTER TABLE `t50hg_k2store_taxprofiles`
  MODIFY `taxprofile_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_taxrates`
--
ALTER TABLE `t50hg_k2store_taxrates`
  MODIFY `taxrate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_taxrules`
--
ALTER TABLE `t50hg_k2store_taxrules`
  MODIFY `taxrule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_weights`
--
ALTER TABLE `t50hg_k2store_weights`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2store_zones`
--
ALTER TABLE `t50hg_k2store_zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3982;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_attachments`
--
ALTER TABLE `t50hg_k2_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_categories`
--
ALTER TABLE `t50hg_k2_categories`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_comments`
--
ALTER TABLE `t50hg_k2_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_extra_fields`
--
ALTER TABLE `t50hg_k2_extra_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_extra_fields_groups`
--
ALTER TABLE `t50hg_k2_extra_fields_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_items`
--
ALTER TABLE `t50hg_k2_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_tags`
--
ALTER TABLE `t50hg_k2_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_tags_xref`
--
ALTER TABLE `t50hg_k2_tags_xref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_users`
--
ALTER TABLE `t50hg_k2_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_k2_user_groups`
--
ALTER TABLE `t50hg_k2_user_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_announcement`
--
ALTER TABLE `t50hg_kunena_announcement`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_attachments`
--
ALTER TABLE `t50hg_kunena_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_categories`
--
ALTER TABLE `t50hg_kunena_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_logs`
--
ALTER TABLE `t50hg_kunena_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_messages`
--
ALTER TABLE `t50hg_kunena_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_polls`
--
ALTER TABLE `t50hg_kunena_polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_polls_options`
--
ALTER TABLE `t50hg_kunena_polls_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_ranks`
--
ALTER TABLE `t50hg_kunena_ranks`
  MODIFY `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_rate`
--
ALTER TABLE `t50hg_kunena_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_smileys`
--
ALTER TABLE `t50hg_kunena_smileys`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_topics`
--
ALTER TABLE `t50hg_kunena_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_users_banned`
--
ALTER TABLE `t50hg_kunena_users_banned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_kunena_version`
--
ALTER TABLE `t50hg_kunena_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_languages`
--
ALTER TABLE `t50hg_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `t50hg_menu`
--
ALTER TABLE `t50hg_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT для таблицы `t50hg_menu_types`
--
ALTER TABLE `t50hg_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `t50hg_messages`
--
ALTER TABLE `t50hg_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_modules`
--
ALTER TABLE `t50hg_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT для таблицы `t50hg_newsfeeds`
--
ALTER TABLE `t50hg_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_overrider`
--
ALTER TABLE `t50hg_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT для таблицы `t50hg_postinstall_messages`
--
ALTER TABLE `t50hg_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `t50hg_redirect_links`
--
ALTER TABLE `t50hg_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_tags`
--
ALTER TABLE `t50hg_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `t50hg_template_styles`
--
ALTER TABLE `t50hg_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `t50hg_ucm_content`
--
ALTER TABLE `t50hg_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_ucm_history`
--
ALTER TABLE `t50hg_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_updates`
--
ALTER TABLE `t50hg_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_update_sites`
--
ALTER TABLE `t50hg_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `t50hg_usergroups`
--
ALTER TABLE `t50hg_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `t50hg_users`
--
ALTER TABLE `t50hg_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=937;
--
-- AUTO_INCREMENT для таблицы `t50hg_user_keys`
--
ALTER TABLE `t50hg_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_user_notes`
--
ALTER TABLE `t50hg_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `t50hg_viewlevels`
--
ALTER TABLE `t50hg_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
