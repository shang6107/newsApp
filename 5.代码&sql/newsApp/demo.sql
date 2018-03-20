/*
Navicat MySQL Data Transfer

Source Server         : demo
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-09-21 09:38:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '标题',
  `context` text NOT NULL,
  `sender` varchar(255) NOT NULL COMMENT '发送人账号',
  `receive` varchar(255) NOT NULL COMMENT '接收人账号',
  `show` int(255) NOT NULL DEFAULT '1' COMMENT '0不显示 1显示 显示状态',
  `see_state` int(11) NOT NULL DEFAULT '0' COMMENT '阅读状态（0未读 1已读）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES ('2', '112312313123123123', '12312312312312312313', '123', 'qwe', '1', '0', '2017-09-21 09:27:08');
INSERT INTO `email` VALUES ('3', 'asdasdasd', '123123123123123', '123', 'qwe', '1', '0', '2017-09-21 09:27:15');
INSERT INTO `email` VALUES ('4', '123123', 'asdfasdfasdfasdf', '123', 'qwe', '1', '0', '2017-09-21 09:27:21');
INSERT INTO `email` VALUES ('5', '123s', 'asdfa1321', '123', 'qwe', '1', '0', '2017-09-21 09:27:31');
INSERT INTO `email` VALUES ('6', '123123', '123123123123123', '123', 'qwe', '1', '0', '2017-09-21 09:27:37');
INSERT INTO `email` VALUES ('7', 'asdfasdfa', 'asdfasdfasdf', '123', 'qwe', '1', '0', '2017-09-21 09:27:43');
INSERT INTO `email` VALUES ('8', 'asdfa', 'asdfasdfasdf', '123', 'qwe', '1', '0', '2017-09-21 09:27:52');
INSERT INTO `email` VALUES ('9', 'asdf', 'asdfasdfasdfasdf', '123', 'qwe', '1', '0', '2017-09-21 09:28:08');
INSERT INTO `email` VALUES ('10', 'asdfas', 'asdfasdfas', '123', 'qwe', '1', '0', '2017-09-21 09:28:14');
INSERT INTO `email` VALUES ('11', 'sdfa', 'asdfasdfasdfasdfasdf', '123', 'qwe', '1', '0', '2017-09-21 09:28:28');
INSERT INTO `email` VALUES ('12', 'asdf', 'asdfasdfasdfasdfasdfasdf', '123', 'qwe', '1', '1', '2017-09-21 09:28:37');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL COMMENT '账号',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', '2017-09-20 14:53:10');
INSERT INTO `user` VALUES ('2', 'qwe', 'qwe', '2017-09-20 17:43:22');
SET FOREIGN_KEY_CHECKS=1;
