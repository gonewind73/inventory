CREATE DATABASE IF NOT EXISTS inventory DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

use inventory;

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
(1, '2017-08-18 02:29:09', 1, 1, '1', 'he', 1, '');


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
(1, 1, 100, 0, 1, '2017-03-17 13:42:56');

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
(1, '变形金刚', 80, 80, 1, '2017-03-18', NULL, 0);

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
(1, 1, 1, 200, 5.4, 1, '', 1, '2017-10-11 12:37:22');

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
(1, 1, 1, 100, 1, '2014-09-13 18:54:06');

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
(1, 1, 1, '2017-08-24 18:57:35');

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
(1, 1, 1, 21, 80, 95, 1, '陈成龙10095', '', '', '', 1, 0, 1, '2017-03-18 12:37:26');

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
(1, 1, 1, 0, 1, '2017-03-18 12:37:26');

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
(1, '无', '无');

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
(1, '20171118123726', 1, '陈成龙10095', '', '', '', 1995, 315, 0, 1, '2015-11-18 12:37:26');

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
(1, '运费', 50, 0, 1, '2015-10-30 14:02:34');

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
(1, 1, 1, '2017-03-18 13:19:23');

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
(1, 'tongzhuang', 1);

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
(1, 1, 1, 55, '', 1, '2015-02-07 16:09:27');

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
(1, '售后', '');
