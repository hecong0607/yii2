-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-08-03 09:38:19
-- 服务器版本： 5.6.17-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yii2`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('普通管理员', '1', 1469410703),
('程序权限', '1', 1469410899),
('管理员系统权限', '1', 1469410898);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/admin/*', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1469410619, 1469410619),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1469410619, 1469410619),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1469410619, 1469410619),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1469410619, 1469410619),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1469410619, 1469410619),
('/admin/default/*', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/default/index', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/menu/*', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/menu/create', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/menu/index', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/menu/update', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/menu/view', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/permission/*', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/permission/create', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/permission/index', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/permission/update', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/permission/view', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/role/*', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/role/assign', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/role/create', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/role/delete', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/role/index', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/role/remove', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/role/update', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/role/view', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/route/*', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/route/assign', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/route/create', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/route/index', 2, NULL, NULL, NULL, 1469410620, 1469410620),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/route/remove', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/rule/*', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/rule/create', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/rule/index', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/rule/update', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/rule/view', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/*', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/activate', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/delete', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/index', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/login', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/logout', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/signup', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/admin/user/view', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/debug/*', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/debug/default/*', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/debug/default/index', 2, NULL, NULL, NULL, 1469410621, 1469410621),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/debug/default/view', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/gii/*', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/gii/default/*', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/gii/default/action', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/gii/default/diff', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/gii/default/index', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/gii/default/preview', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/gii/default/view', 2, NULL, NULL, NULL, 1469410622, 1469410622),
('/site/*', 2, NULL, NULL, NULL, 1469410612, 1469410612),
('/site/error', 2, NULL, NULL, NULL, 1469410612, 1469410612),
('/site/index', 2, NULL, NULL, NULL, 1469410612, 1469410612),
('/site/login', 2, NULL, NULL, NULL, 1469410612, 1469410612),
('/site/logout', 2, NULL, NULL, NULL, 1469410612, 1469410612),
('普通管理员', 1, NULL, NULL, NULL, 1469410667, 1469410667),
('程序权限', 2, 'gii和debug', NULL, NULL, 1469410861, 1469410861),
('管理员系统权限', 2, NULL, NULL, NULL, 1469410798, 1469410798);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('管理员系统权限', '/admin/*'),
('管理员系统权限', '/admin/assignment/*'),
('管理员系统权限', '/admin/assignment/assign'),
('管理员系统权限', '/admin/assignment/index'),
('管理员系统权限', '/admin/assignment/revoke'),
('管理员系统权限', '/admin/assignment/view'),
('管理员系统权限', '/admin/default/*'),
('管理员系统权限', '/admin/default/index'),
('管理员系统权限', '/admin/menu/*'),
('管理员系统权限', '/admin/menu/create'),
('管理员系统权限', '/admin/menu/delete'),
('管理员系统权限', '/admin/menu/index'),
('管理员系统权限', '/admin/menu/update'),
('管理员系统权限', '/admin/menu/view'),
('管理员系统权限', '/admin/permission/*'),
('管理员系统权限', '/admin/permission/assign'),
('管理员系统权限', '/admin/permission/create'),
('管理员系统权限', '/admin/permission/delete'),
('管理员系统权限', '/admin/permission/index'),
('管理员系统权限', '/admin/permission/remove'),
('管理员系统权限', '/admin/permission/update'),
('管理员系统权限', '/admin/permission/view'),
('管理员系统权限', '/admin/role/*'),
('管理员系统权限', '/admin/role/assign'),
('管理员系统权限', '/admin/role/create'),
('管理员系统权限', '/admin/role/delete'),
('管理员系统权限', '/admin/role/index'),
('管理员系统权限', '/admin/role/remove'),
('管理员系统权限', '/admin/role/update'),
('管理员系统权限', '/admin/role/view'),
('管理员系统权限', '/admin/route/*'),
('管理员系统权限', '/admin/route/assign'),
('管理员系统权限', '/admin/route/create'),
('管理员系统权限', '/admin/route/index'),
('管理员系统权限', '/admin/route/refresh'),
('管理员系统权限', '/admin/route/remove'),
('管理员系统权限', '/admin/rule/*'),
('管理员系统权限', '/admin/rule/create'),
('管理员系统权限', '/admin/rule/delete'),
('管理员系统权限', '/admin/rule/index'),
('管理员系统权限', '/admin/rule/update'),
('管理员系统权限', '/admin/rule/view'),
('管理员系统权限', '/admin/user/*'),
('管理员系统权限', '/admin/user/activate'),
('管理员系统权限', '/admin/user/change-password'),
('管理员系统权限', '/admin/user/delete'),
('管理员系统权限', '/admin/user/index'),
('管理员系统权限', '/admin/user/login'),
('管理员系统权限', '/admin/user/logout'),
('管理员系统权限', '/admin/user/request-password-reset'),
('管理员系统权限', '/admin/user/reset-password'),
('管理员系统权限', '/admin/user/signup'),
('管理员系统权限', '/admin/user/view'),
('程序权限', '/debug/*'),
('程序权限', '/debug/default/*'),
('程序权限', '/debug/default/db-explain'),
('程序权限', '/debug/default/download-mail'),
('程序权限', '/debug/default/index'),
('程序权限', '/debug/default/toolbar'),
('程序权限', '/debug/default/view'),
('程序权限', '/gii/*'),
('程序权限', '/gii/default/*'),
('程序权限', '/gii/default/action'),
('程序权限', '/gii/default/diff'),
('程序权限', '/gii/default/index'),
('程序权限', '/gii/default/preview'),
('程序权限', '/gii/default/view'),
('普通管理员', '/site/*'),
('普通管理员', '/site/error'),
('普通管理员', '/site/index'),
('普通管理员', '/site/login'),
('普通管理员', '/site/logout');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, '用户列表', 2, '/admin/user/index', 1, NULL),
(2, '权限管理', NULL, '/admin/user/index', 1, NULL),
(3, '菜单列表', 2, '/admin/menu/index', 6, NULL),
(4, '角色列表', 2, '/admin/role/index', 3, NULL),
(5, '权限列表', 2, '/admin/permission/index', 2, NULL),
(6, '路由列表', 2, '/admin/route/index', 4, NULL),
(7, '分配', 2, '/admin/assignment/index', 5, NULL),
(8, '规则列表', 2, '/admin/rule/index', 7, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `password_reset_token` varchar(256) DEFAULT NULL,
  `email` varchar(256) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'uz7Xnnkw18almJztQ7t8xzjqz7aS-YoL', '$2y$13$1W.4HlDm1v/XfVi0dCynAulbKn6F9sYIOwW1BIkrq4NegSR82U7Ni', NULL, 'admin@qq.com', 10, 1466675285, 1466675285);

--
-- 限制导出的表
--

--
-- 限制表 `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
