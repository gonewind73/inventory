

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `inventory`
--
-- --------------------------------------------------------
--
-- 表的结构 `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_group`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add goods', 7, 'add_goods'),
(20, 'Can change goods', 7, 'change_goods'),
(21, 'Can delete goods', 7, 'delete_goods'),
(22, 'Can add shop', 8, 'add_shop'),
(23, 'Can change shop', 8, 'change_shop'),
(24, 'Can delete shop', 8, 'delete_shop'),
(25, 'Can add goods shop', 9, 'add_goodsshop'),
(26, 'Can change goods shop', 9, 'change_goodsshop'),
(27, 'Can delete goods shop', 9, 'delete_goodsshop'),
(28, 'Can add goods record', 10, 'add_goodsrecord'),
(29, 'Can change goods record', 10, 'change_goodsrecord'),
(30, 'Can delete goods record', 10, 'delete_goodsrecord'),
(31, 'Can add backup', 11, 'add_backup'),
(32, 'Can change backup', 11, 'change_backup'),
(33, 'Can delete backup', 11, 'delete_backup');

-- --------------------------------------------------------

--
-- 表的结构 `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$KTQtm1Bi38Ye$dzUMBjIbm9L0DzMCQ4yrBn+LA+qiASKtp2XH/n+blgs=', '2017-03-08 13:54:56', 1, 'heguofeng', '', '', 'heguofeng@189.cn', 1, 1, '2017-03-08 01:52:33');


-- --------------------------------------------------------

--
-- 表的结构 `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_user_groups`
--


-- --------------------------------------------------------

--
-- 表的结构 `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- 表的结构 `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- 转存表中的数据 `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2017-08-18 02:29:09', 1, 4, '2', 'he', 1, '');


-- --------------------------------------------------------

--
-- 表的结构 `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'goods', 'kucun', 'goods'),
(8, 'shop', 'kucun', 'shop'),
(9, 'goods shop', 'kucun', 'goodsshop'),
(10, 'goods record', 'kucun', 'goodsrecord'),
(11, 'backup', 'kucun', 'backup'),
(12, 'goods add record', 'kucun', 'goodsaddrecord'),
(13, 'goods sell record', 'kucun', 'goodssellrecord'),
(14, 'inbound channel', 'kucun', 'inboundchannel'),
(15, 'order', 'kucun', 'order'),
(16, 'goods return record', 'kucun', 'goodsreturnrecord'),
(17, 'transfer record', 'kucun', 'transferrecord');

-- --------------------------------------------------------

--
-- 表的结构 `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('be49jubxh6ii96h0vvdgrps3ex9lwakj', 'NWUzYzdlODZhYjIyNTYyM2RmYTA1Y2Q2Njc2NWQwOTljMGNjZTNiMjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2017-03-14 13:54:56');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_backup`
--

CREATE TABLE IF NOT EXISTS `kucun_backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(15) NOT NULL,
  `kadi_count` int(11) NOT NULL,
  `is_lastet` tinyint(1) NOT NULL,
  `save_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `kucun_backup`
--


-- --------------------------------------------------------

--
-- 表的结构 `kucun_changecountrecord`
--

CREATE TABLE IF NOT EXISTS `kucun_changecountrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `old_count` int(11) NOT NULL,
  `real_count` int(11) NOT NULL,
  `updater_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `updater_id_refs_id_4085a05f` (`updater_id`),
  KEY `goods_id_refs_id_32fb758f` (`goods_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=457 ;

--
-- 转存表中的数据 `kucun_changecountrecord`
--

INSERT INTO `kucun_changecountrecord` (`id`, `goods_id`, `old_count`, `real_count`, `updater_id`, `date`) VALUES
(456, 224, -65, 0, 2, '2015-11-17 13:42:56');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_goods`
--

CREATE TABLE IF NOT EXISTS `kucun_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(15) NOT NULL,
  `average_price` double NOT NULL,
  `last_price` double NOT NULL,
  `add_people_id` int(11) NOT NULL,
  `update_date` date NOT NULL,
  `recent_sell` date DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kucun_goods_805f5a71` (`add_people_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=242 ;

--
-- 转存表中的数据 `kucun_goods`
--

INSERT INTO `kucun_goods` (`id`, `goods_name`, `average_price`, `last_price`, `add_people_id`, `update_date`, `recent_sell`, `is_delete`) VALUES
(1, '变形金刚', 80, 80, 2, '2017-03-18', NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `kucun_goodsaddrecord`
--

CREATE TABLE IF NOT EXISTS `kucun_goodsaddrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `price` double NOT NULL,
  `inbound_channel_id` int(11) NOT NULL,
  `remark` longtext,
  `updater_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `updater_id_refs_id_c148f14d` (`updater_id`),
  KEY `goods_id_refs_id_e2562273` (`goods_id`),
  KEY `shop_id_refs_id_a554ca9a` (`shop_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3302 ;

--
-- 转存表中的数据 `kucun_goodsaddrecord`
--

INSERT INTO `kucun_goodsaddrecord` (`id`, `goods_id`, `shop_id`, `number`, `price`, `inbound_channel_id`, `remark`, `updater_id`, `date`) VALUES
(1, 1, 1, 200, 5.4, 1, '', 2, '2017-10-11 12:37:22');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_goodsrecord`
--

CREATE TABLE IF NOT EXISTS `kucun_goodsrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `change_num` int(11) NOT NULL,
  `updater_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kucun_goodsrecord_2b897762` (`goods_id`),
  KEY `kucun_goodsrecord_74d4252d` (`shop_id`),
  KEY `kucun_goodsrecord_af4ed6b3` (`updater_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20815 ;

--
-- 转存表中的数据 `kucun_goodsrecord`
--

INSERT INTO `kucun_goodsrecord` (`id`, `goods_id`, `shop_id`, `change_num`, `updater_id`, `date`) VALUES
(2398, 54, 1, 100, 2, '2014-09-13 18:54:06');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_goodsreturnrecord`
--

CREATE TABLE IF NOT EXISTS `kucun_goodsreturnrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sell_record_id` int(11) NOT NULL,
  `updater_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_sell_record_id_refs_id_16b976b5` (`goods_sell_record_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=162 ;

--
-- 转存表中的数据 `kucun_goodsreturnrecord`
--

INSERT INTO `kucun_goodsreturnrecord` (`id`, `goods_sell_record_id`, `updater_id`, `date`) VALUES
(16, 351, 2, '2017-08-24 18:57:35');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_goodssellrecord`
--

CREATE TABLE IF NOT EXISTS `kucun_goodssellrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `sell_num` int(11) NOT NULL,
  `average_price` double NOT NULL,
  `sell_price` double NOT NULL,
  `is_arrears` tinyint(1) NOT NULL,
  `customer` varchar(10) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `remark` longtext,
  `order_id` int(11) DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `updater_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `updater_id_refs_id_9f7bba50` (`updater_id`),
  KEY `goods_id_refs_id_de418d95` (`goods_id`),
  KEY `shop_id_refs_id_72c88883` (`shop_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16968 ;

--
-- 转存表中的数据 `kucun_goodssellrecord`
--

INSERT INTO `kucun_goodssellrecord` (`id`, `goods_id`, `shop_id`, `sell_num`, `average_price`, `sell_price`, `is_arrears`, `customer`, `phonenumber`, `address`, `remark`, `order_id`, `is_delete`, `updater_id`, `date`) VALUES
(16967, 241, 1, 21, 80, 95, 1, '陈成龙10095', '', '', '', 1456, 0, 2, '2015-11-18 12:37:26');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_goodsshop`
--

CREATE TABLE IF NOT EXISTS `kucun_goodsshop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `remain` int(11) NOT NULL,
  `last_updater_id` int(11) NOT NULL,
  `last_update_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kucun_goodsshop_2b897762` (`goods_id`),
  KEY `kucun_goodsshop_74d4252d` (`shop_id`),
  KEY `kucun_goodsshop_7917ccfa` (`last_updater_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=242 ;

--
-- 转存表中的数据 `kucun_goodsshop`
--

INSERT INTO `kucun_goodsshop` (`id`, `goods_id`, `shop_id`, `remain`, `last_updater_id`, `last_update_date`) VALUES
(18, 18, 1, -418, 2, '2015-11-11 15:22:29'),
(17, 17, 1, -210, 2, '2015-10-30 16:07:24'),
(16, 16, 1, -461, 2, '2015-11-11 16:17:42'),
(15, 15, 1, -347, 2, '2015-07-23 12:28:19'),
(14, 14, 1, -2843, 2, '2015-11-17 12:36:36'),
(13, 13, 1, 40, 2, '2015-10-31 18:07:56'),
(12, 12, 1, -7674, 2, '2015-11-18 12:35:19'),
(11, 11, 1, -5403, 2, '2015-11-18 12:32:12'),
(19, 19, 1, -1529, 2, '2015-11-11 15:29:44'),
(20, 20, 1, 1, 2, '2015-05-28 14:42:58'),
(21, 21, 1, -61, 2, '2015-07-22 14:14:08'),
(22, 22, 1, -390, 2, '2015-11-18 12:32:12'),
(23, 23, 1, -131, 2, '2015-11-11 16:52:05'),
(24, 24, 1, -284, 2, '2015-11-18 12:32:12'),
(25, 25, 1, 95, 2, '2015-10-18 14:50:26'),
(26, 26, 1, 0, 2, '2015-01-15 13:21:47'),
(27, 27, 1, -1412, 2, '2015-11-11 16:12:15'),
(28, 28, 1, -14060, 2, '2015-11-18 12:35:19'),
(29, 29, 1, -21, 2, '2015-08-05 15:06:12'),
(30, 30, 1, -521, 2, '2015-11-18 12:32:12'),
(31, 31, 1, -557, 2, '2015-11-17 13:30:52'),
(32, 32, 1, -8589, 2, '2015-11-18 12:33:01'),
(33, 33, 1, -270, 2, '2015-04-09 18:48:06'),
(34, 34, 1, -576, 2, '2015-11-17 13:29:13'),
(35, 35, 1, 1, 2, '2014-08-20 17:20:32'),
(36, 36, 1, 0, 2, '2015-11-11 15:23:26'),
(37, 37, 1, -303, 2, '2015-11-17 13:45:58'),
(38, 38, 1, -7, 2, '2015-08-16 16:02:50'),
(39, 39, 1, -1018, 2, '2015-11-17 13:49:12'),
(40, 40, 1, -2159, 2, '2015-10-31 18:04:04'),
(41, 41, 1, -50, 2, '2015-09-21 17:25:54'),
(42, 42, 1, 0, 2, '2015-11-18 12:36:17'),
(43, 43, 1, 98, 2, '2015-11-12 15:32:03'),
(44, 44, 1, -134, 2, '2015-10-31 18:11:15'),
(45, 45, 1, -557, 2, '2015-10-31 18:12:11'),
(46, 46, 1, -1077, 2, '2015-11-17 13:44:28'),
(47, 47, 1, -532, 2, '2015-11-17 13:44:28'),
(48, 48, 1, -285, 2, '2015-10-31 18:10:42'),
(49, 49, 1, 0, 2, '2015-04-24 20:24:56'),
(50, 50, 1, -603, 2, '2015-09-08 18:01:24'),
(78, 78, 1, -41, 2, '2015-06-27 17:08:17'),
(79, 79, 1, 0, 2, '2015-05-05 17:46:01'),
(53, 53, 1, 13, 2, '2015-01-29 17:16:44'),
(54, 54, 1, -1889, 2, '2015-11-17 13:46:40'),
(55, 55, 1, 82, 2, '2015-02-08 18:13:23'),
(56, 56, 1, 16, 2, '2015-02-08 13:47:32'),
(57, 57, 1, 74, 2, '2015-02-08 15:47:39'),
(58, 58, 1, 121, 2, '2015-03-17 16:34:32'),
(59, 59, 1, -50, 2, '2015-10-11 14:33:16'),
(60, 60, 1, 0, 2, '2014-12-28 14:28:02'),
(61, 61, 1, 0, 2, '2014-09-29 18:18:32'),
(62, 62, 1, 79, 2, '2015-05-29 15:21:04'),
(63, 63, 1, -4, 2, '2015-02-08 16:25:09'),
(64, 64, 1, 14, 2, '2015-01-15 14:49:17'),
(65, 65, 1, 10, 2, '2015-01-14 18:11:00'),
(66, 66, 1, 0, 2, '2015-01-04 15:40:09'),
(67, 67, 1, -9015, 2, '2015-11-17 13:46:52'),
(68, 68, 1, 271, 2, '2015-02-08 18:13:39'),
(69, 69, 1, 101, 2, '2015-03-17 16:34:41'),
(70, 70, 1, 174, 2, '2015-02-08 15:48:01'),
(71, 71, 1, 8, 2, '2015-02-08 13:47:12'),
(72, 72, 1, -2150, 2, '2015-09-21 14:40:59'),
(73, 73, 1, -29, 2, '2015-03-17 16:58:27'),
(74, 74, 1, -15, 2, '2015-06-29 14:18:47'),
(75, 75, 1, -1255, 2, '2015-06-17 18:30:05'),
(76, 76, 1, -1, 2, '2015-05-05 17:21:16'),
(77, 77, 1, 0, 2, '2014-10-19 14:05:44'),
(80, 80, 1, 0, 2, '2014-12-18 16:39:07'),
(81, 81, 1, 0, 2, '2014-11-30 14:19:55'),
(82, 82, 1, 24, 2, '2015-01-15 14:44:38'),
(83, 83, 1, -8, 2, '2015-03-16 13:17:44'),
(84, 84, 1, 0, 2, '2014-12-28 13:32:54'),
(85, 85, 1, 0, 2, '2014-10-12 12:22:31'),
(86, 86, 1, 7, 2, '2015-01-24 15:58:05'),
(87, 87, 1, -400, 2, '2015-09-10 15:22:43'),
(88, 88, 1, 1, 2, '2015-02-08 13:09:53'),
(89, 89, 1, -9170, 2, '2015-11-18 12:34:09'),
(90, 90, 1, 1, 2, '2014-12-28 13:30:18'),
(91, 91, 1, 4, 2, '2014-12-28 13:32:45'),
(92, 92, 1, -100, 2, '2015-10-11 14:28:00'),
(93, 93, 1, 0, 2, '2014-11-09 13:44:02'),
(94, 94, 1, 0, 2, '2014-12-17 13:43:31'),
(95, 95, 1, 2, 2, '2014-12-18 15:24:03'),
(96, 96, 1, 0, 2, '2014-09-23 12:56:16'),
(97, 97, 1, 0, 2, '2014-09-27 16:38:09'),
(98, 98, 1, -1881, 2, '2015-10-11 14:30:15'),
(99, 99, 1, -3090, 2, '2015-11-17 12:43:24'),
(100, 100, 1, 80, 2, '2015-09-21 17:35:29'),
(101, 101, 1, -5680, 2, '2015-11-18 12:33:19'),
(102, 102, 1, -67, 2, '2015-05-14 15:54:40'),
(103, 103, 1, 0, 2, '2015-10-11 14:46:53'),
(104, 104, 1, -9, 2, '2015-01-15 13:30:19'),
(105, 105, 1, 3, 2, '2014-12-29 14:20:46'),
(106, 106, 1, 7, 2, '2014-12-28 13:36:55'),
(107, 107, 1, -346, 2, '2015-11-12 15:23:14'),
(108, 108, 1, -120, 2, '2015-09-24 13:14:44'),
(109, 109, 1, 0, 2, '2015-01-24 17:03:43'),
(110, 110, 1, -3810, 2, '2015-06-25 13:51:32'),
(111, 111, 1, -70, 2, '2015-11-11 15:29:44'),
(112, 112, 1, 0, 2, '2015-08-04 16:46:43'),
(113, 113, 1, -540, 2, '2015-07-23 12:55:45'),
(114, 114, 1, 0, 2, '2015-09-30 15:53:27'),
(115, 115, 1, 0, 2, '2014-12-08 13:35:11'),
(116, 116, 1, -237, 2, '2015-04-25 18:05:25'),
(117, 117, 1, -304, 2, '2015-11-12 15:34:46'),
(118, 118, 1, -152, 2, '2015-11-10 14:34:55'),
(119, 119, 1, -80, 2, '2015-10-05 16:08:08'),
(120, 120, 1, -500, 2, '2015-03-31 20:40:40'),
(121, 121, 1, -932, 2, '2015-11-18 12:35:19'),
(122, 122, 1, -55, 2, '2015-09-10 15:11:34'),
(123, 123, 1, -25, 2, '2015-06-17 17:43:55'),
(124, 124, 1, 0, 2, '2014-12-27 12:28:51'),
(125, 125, 1, 0, 2, '2014-12-29 14:04:57'),
(126, 126, 1, -1015, 2, '2015-04-12 14:44:48'),
(127, 127, 1, -100, 2, '2015-04-15 19:54:41'),
(128, 128, 1, -262, 2, '2015-11-11 16:15:20'),
(129, 129, 1, 0, 2, '2015-01-15 14:35:36'),
(130, 130, 1, 0, 2, '2015-05-29 15:36:38'),
(131, 131, 1, 0, 2, '2015-01-22 19:18:15'),
(132, 132, 1, -50, 2, '2015-09-28 16:50:57'),
(133, 133, 1, 0, 2, '2015-07-02 16:42:14'),
(134, 134, 1, 0, 2, '2015-02-08 13:46:25'),
(135, 135, 1, 75, 2, '2015-10-30 13:31:47'),
(136, 136, 1, -750, 2, '2015-10-05 16:36:54'),
(137, 137, 1, -380, 2, '2015-11-11 15:06:34'),
(138, 138, 1, -1071, 2, '2015-11-17 13:43:38'),
(139, 139, 1, 0, 2, '2015-10-11 14:46:53'),
(140, 140, 1, -50, 2, '2015-03-16 15:26:01'),
(141, 141, 1, -4109, 2, '2015-08-04 18:37:57'),
(142, 142, 1, 0, 2, '2015-05-29 14:54:26'),
(143, 143, 1, -1620, 2, '2015-03-31 21:02:28'),
(144, 144, 1, -2000, 2, '2015-09-28 16:58:11'),
(145, 145, 1, 0, 1, '2015-04-07 16:47:23'),
(146, 146, 1, 0, 1, '2015-04-07 16:49:05'),
(147, 147, 1, 55, 1, '2015-04-07 17:06:53'),
(148, 148, 1, -530, 2, '2015-05-05 13:41:14'),
(149, 149, 1, 0, 2, '2015-11-17 13:40:13'),
(150, 150, 1, -181, 2, '2015-05-24 16:28:25'),
(151, 151, 1, -85, 2, '2015-05-05 17:21:16'),
(152, 152, 1, -100, 2, '2015-04-15 18:50:44'),
(153, 153, 1, -10, 2, '2015-07-05 17:13:34'),
(154, 154, 1, -525, 2, '2015-11-17 12:36:50'),
(155, 155, 1, -11, 2, '2015-10-30 13:42:29'),
(156, 156, 1, -25, 2, '2015-05-09 18:29:13'),
(157, 157, 1, -11, 2, '2015-05-23 16:42:40'),
(158, 158, 1, -10, 2, '2015-07-19 16:30:19'),
(159, 159, 1, 0, 2, '2015-07-31 18:35:50'),
(160, 160, 1, -1118, 2, '2015-07-22 17:54:28'),
(161, 161, 1, -100, 2, '2015-05-05 11:23:50'),
(162, 162, 1, 0, 2, '2015-05-23 14:35:08'),
(163, 163, 1, 258, 2, '2015-10-05 16:05:38'),
(164, 164, 1, 58, 2, '2015-10-05 15:14:35'),
(165, 165, 1, -94, 2, '2015-08-06 13:08:43'),
(166, 166, 1, -300, 2, '2015-05-09 20:56:50'),
(167, 167, 1, -106, 2, '2015-08-06 13:08:43'),
(168, 168, 1, -72, 2, '2015-11-17 13:47:38'),
(169, 169, 1, -331, 2, '2015-11-10 14:34:54'),
(170, 170, 1, -4000, 2, '2015-05-17 12:44:07'),
(171, 171, 1, -10000, 2, '2015-05-17 12:44:07'),
(172, 172, 1, -4000, 2, '2015-05-17 12:44:07'),
(173, 173, 1, -1627, 2, '2015-10-18 15:14:56'),
(174, 174, 1, -510, 2, '2015-06-27 16:48:39'),
(175, 175, 1, -50, 2, '2015-05-28 14:50:58'),
(176, 176, 1, -20, 2, '2015-05-28 17:07:54'),
(177, 177, 1, -26, 2, '2015-08-25 16:54:03'),
(178, 178, 1, 0, 2, '2015-10-30 13:59:04'),
(179, 179, 1, 0, 2, '2015-06-08 17:31:42'),
(180, 180, 1, 0, 2, '2015-08-31 18:33:23'),
(181, 181, 1, 0, 2, '2015-08-31 18:33:23'),
(182, 182, 1, 0, 2, '2015-06-17 15:39:22'),
(183, 183, 1, -50, 2, '2015-06-17 18:20:34'),
(184, 184, 1, 0, 2, '2015-10-11 14:28:00'),
(185, 185, 1, -51, 2, '2015-11-17 13:34:17'),
(186, 186, 1, -2, 2, '2015-10-30 13:38:23'),
(187, 187, 1, -1650, 2, '2015-10-18 17:41:06'),
(188, 188, 1, 0, 2, '2015-08-31 18:33:23'),
(189, 189, 1, -520, 2, '2015-11-17 13:06:10'),
(190, 190, 1, 0, 2, '2015-07-22 17:46:43'),
(191, 191, 1, -135, 2, '2015-11-17 13:06:10'),
(192, 192, 1, -446, 2, '2015-11-17 13:46:12'),
(193, 193, 1, -850, 2, '2015-10-31 18:19:02'),
(194, 194, 1, -660, 2, '2015-11-11 17:21:22'),
(195, 195, 1, 16, 2, '2015-11-11 18:03:38'),
(196, 196, 1, -100, 2, '2015-09-21 14:48:51'),
(197, 197, 1, -60, 2, '2015-10-30 14:02:24'),
(198, 198, 1, 0, 2, '2015-09-24 13:21:05'),
(199, 199, 1, -411, 2, '2015-10-11 14:02:31'),
(200, 200, 1, -568, 2, '2015-11-17 13:49:12'),
(201, 201, 1, -155, 2, '2015-08-25 17:57:17'),
(202, 202, 1, -128, 2, '2015-09-10 14:30:55'),
(203, 203, 1, -166, 2, '2015-11-17 13:37:48'),
(204, 204, 1, -486, 2, '2015-10-30 14:47:20'),
(205, 205, 1, 280, 2, '2015-11-17 13:06:10'),
(206, 206, 1, -100, 2, '2015-09-08 18:38:23'),
(207, 207, 1, -236, 2, '2015-11-18 12:32:12'),
(208, 208, 1, -130, 2, '2015-10-30 14:02:24'),
(209, 209, 1, 50, 2, '2015-10-30 13:44:06'),
(210, 210, 1, 0, 2, '2015-09-29 15:45:55'),
(211, 211, 1, -30, 2, '2015-09-29 15:46:13'),
(212, 212, 1, -100, 2, '2015-09-30 15:53:27'),
(213, 213, 1, 170, 2, '2015-10-30 13:43:16'),
(214, 214, 1, -250, 2, '2015-11-17 13:02:19'),
(215, 215, 1, -1983, 2, '2015-11-18 12:35:19'),
(216, 216, 1, -10, 2, '2015-10-05 17:44:20'),
(217, 217, 1, -50, 2, '2015-10-11 12:58:43'),
(218, 218, 1, -100, 2, '2015-10-11 14:19:56'),
(219, 219, 1, -200, 2, '2015-10-11 14:17:57'),
(220, 220, 1, -150, 2, '2015-11-18 12:36:17'),
(221, 221, 1, -276, 2, '2015-11-18 12:32:12'),
(222, 222, 1, -46, 2, '2015-11-18 12:34:09'),
(223, 223, 1, -132, 2, '2015-11-17 13:06:10'),
(224, 224, 1, 0, 2, '2015-11-17 13:43:38'),
(225, 225, 1, -50, 2, '2015-10-18 15:07:17'),
(226, 226, 1, -173, 2, '2015-10-18 16:05:47'),
(227, 227, 1, -500, 2, '2015-10-18 16:07:34'),
(228, 228, 1, -635, 2, '2015-11-17 12:43:24'),
(229, 229, 1, -24, 2, '2015-10-30 14:12:44'),
(230, 230, 1, -150, 2, '2015-10-30 14:47:20'),
(231, 231, 1, 0, 2, '2015-10-30 14:10:16'),
(232, 232, 1, -50, 2, '2015-10-30 14:30:23'),
(233, 233, 1, -50, 2, '2015-10-30 14:47:20'),
(234, 234, 1, -400, 2, '2015-11-18 12:36:17'),
(235, 235, 1, -10, 2, '2015-11-11 15:18:32'),
(236, 236, 1, 13, 2, '2015-11-18 12:32:12'),
(237, 237, 1, -300, 2, '2015-11-11 16:49:49'),
(238, 238, 1, -200, 2, '2015-11-11 17:22:29'),
(239, 239, 1, -200, 2, '2015-11-17 13:02:19'),
(240, 240, 1, -30, 2, '2015-11-17 13:36:49'),
(241, 241, 1, -21, 2, '2015-11-18 12:37:26');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_inboundchannel`
--

CREATE TABLE IF NOT EXISTS `kucun_inboundchannel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `kucun_inboundchannel`
--

INSERT INTO `kucun_inboundchannel` (`id`, `name`, `phonenumber`) VALUES
(1, '无', '无'),
(5, '贾攀', '13313316369');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_lineitem`
--

CREATE TABLE IF NOT EXISTS `kucun_lineitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id_refs_id_1958924e` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `kucun_lineitem`
--


-- --------------------------------------------------------

--
-- 表的结构 `kucun_order`
--

CREATE TABLE IF NOT EXISTS `kucun_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `is_arrears` tinyint(1) NOT NULL,
  `customer` varchar(10) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `remark` longtext,
  `all_price` double NOT NULL,
  `all_profit` double NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `updater_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `updater_id_refs_id_ecc282c0` (`updater_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1457 ;

--
-- 转存表中的数据 `kucun_order`
--

INSERT INTO `kucun_order` (`id`, `name`, `is_arrears`, `customer`, `phonenumber`, `address`, `remark`, `all_price`, `all_profit`, `is_delete`, `updater_id`, `date`) VALUES
(1456, '20151118123726', 1, '陈成龙10095', '', '', '', 1995, 315, 0, 2, '2015-11-18 12:37:26');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_othercost`
--

CREATE TABLE IF NOT EXISTS `kucun_othercost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purpose` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `updater_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `updater_id_refs_id_65435f57` (`updater_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- 转存表中的数据 `kucun_othercost`
--

INSERT INTO `kucun_othercost` (`id`, `purpose`, `price`, `is_delete`, `updater_id`, `date`) VALUES
(53, '运费', 50, 0, 2, '2015-10-30 14:02:34');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_refundrecord`
--

CREATE TABLE IF NOT EXISTS `kucun_refundrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sell_record_id` int(11) NOT NULL,
  `updater_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sell_record_id_refs_id_897b0885` (`sell_record_id`),
  KEY `updater_id_refs_id_c5261f25` (`updater_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1894 ;

--
-- 转存表中的数据 `kucun_refundrecord`
--

INSERT INTO `kucun_refundrecord` (`id`, `sell_record_id`, `updater_id`, `date`) VALUES
(1893, 14119, 2, '2015-11-18 13:19:23');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_shop`
--

CREATE TABLE IF NOT EXISTS `kucun_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `principal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kucun_shop_4e69e82e` (`principal_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `kucun_shop`
--

INSERT INTO `kucun_shop` (`id`, `name`, `principal_id`) VALUES
(1, 'tongzhuang', 2);

-- --------------------------------------------------------

--
-- 表的结构 `kucun_transferrecord`
--

CREATE TABLE IF NOT EXISTS `kucun_transferrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transfer_shop_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `remark` longtext NOT NULL,
  `updater_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `transfer_shop_id_refs_id_43f8d3ab` (`transfer_shop_id`),
  KEY `goods_id_refs_id_352725fc` (`goods_id`),
  KEY `updater_id_refs_id_4e27b6c6` (`updater_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=384 ;

--
-- 转存表中的数据 `kucun_transferrecord`
--

INSERT INTO `kucun_transferrecord` (`id`, `transfer_shop_id`, `goods_id`, `count`, `remark`, `updater_id`, `date`) VALUES
(383, 7, 71, 55, '', 2, '2015-02-07 16:09:27');

-- --------------------------------------------------------

--
-- 表的结构 `kucun_transfershop`
--

CREATE TABLE IF NOT EXISTS `kucun_transfershop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `kucun_transfershop`
--

INSERT INTO `kucun_transfershop` (`id`, `name`, `phonenumber`) VALUES
(8, '售后', '');
