/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : news_app

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2018-03-20 13:18:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `authorities`
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `authorities_name` varchar(30) DEFAULT NULL,
  `descpt` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authorities
-- ----------------------------

-- ----------------------------
-- Table structure for `authorities_groups`
-- ----------------------------
DROP TABLE IF EXISTS `authorities_groups`;
CREATE TABLE `authorities_groups` (
  `authorities_id` varchar(32) NOT NULL DEFAULT '',
  `group_id` varchar(32) NOT NULL DEFAULT '',
  UNIQUE (`authorities_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authorities_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `collections`
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `release_id` varchar(32) DEFAULT NULL UNIQUE,
  `news_id` varchar(32) DEFAULT NULL UNIQUE,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collections
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `content` varchar(256) DEFAULT NULL,
  `good_count` int(11) DEFAULT NULL,
  `news_id` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `group_name` varchar(30) DEFAULT NULL,
  `descpt` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------

-- ----------------------------
-- Table structure for `history`
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `release_id` varchar(32) DEFAULT NULL UNIQUE,
  `news_id` varchar(32) DEFAULT NULL UNIQUE,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `mgr_no` varchar(20) DEFAULT NULL UNIQUE,
  `password` varchar(32) NOT NULL,
  `mgr_name` varchar(20) DEFAULT NULL,
  `groups_id` varchar(32) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `URL` varchar(255) DEFAULT NULL UNIQUE,
  `type` varchar(10) DEFAULT NULL,
  `access_count` bigint(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `release`
-- ----------------------------
DROP TABLE IF EXISTS `release`;
CREATE TABLE `release` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `path` varchar(256) DEFAULT NULL,
  `user_Id` varchar(32) DEFAULT NULL,
  `access_count` int(11) DEFAULT NULL,
  `new_type_id` varchar(32) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of release
-- ----------------------------

-- ----------------------------
-- Table structure for `report`
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `reporter_id` varchar(32) DEFAULT NULL,
  `reported_id` varchar(32) DEFAULT NULL,
  `reported_content` varchar(256) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report
-- ----------------------------

-- ----------------------------
-- Table structure for `subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `id` varchar(32) CHARACTER SET sjis NOT NULL DEFAULT '',
  `type` tinyint(4) DEFAULT NULL,
  `user_id` varchar(32) CHARACTER SET sjis DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subscribe
-- ----------------------------

-- ----------------------------
-- Table structure for `subscribe_type`
-- ----------------------------
DROP TABLE IF EXISTS `subscribe_type`;
CREATE TABLE `subscribe_type` (
  `type_no` tinyint(4) DEFAULT NULL,
  `type_name` varchar(10) DEFAULT NULL UNIQUE,
  `type_desc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subscribe_type
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `phone_num` char(11) DEFAULT NULL UNIQUE,
  `nick_name` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `head_img` varchar(256) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `hobby` varchar(256) DEFAULT NULL,
  `introduce` varchar(256) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `type_name` varchar(10) DEFAULT NULL,
  `status` tinyint,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `validate_code`
-- ----------------------------
DROP TABLE IF EXISTS `validate_code`;
CREATE TABLE `validate_code` (
  `id` varchar(32) NOT NULL,
  `code` varchar(255) NOT NULL,
  `phone_num` char(11) NOT NULL,
  `expire_time` datetime NOT NULL,
  `usable` tinyint(4) NOT NULL,
  `sended` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of validate_code
-- ----------------------------
