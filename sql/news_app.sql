/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50539
Source Host           : localhost:3306
Source Database       : news_app

Target Server Type    : MYSQL
Target Server Version : 50539
File Encoding         : 65001

Date: 2018-04-02 19:28:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `app_data_count`
-- ----------------------------
DROP TABLE IF EXISTS `app_data_count`;
CREATE TABLE `app_data_count` (
  `id` varchar(32) DEFAULT NULL,
  `highest_url` varchar(255) DEFAULT NULL,
  `lowest_url` varchar(255) DEFAULT NULL,
  `period` varchar(32) DEFAULT NULL,
  `total_count` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `lowest_count` bigint(20) DEFAULT NULL,
  `highest_count` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_data_count
-- ----------------------------
INSERT INTO `app_data_count` VALUES ('0a43b6c7015b433cbeff347a7d0ff924', null, null, 'hour', '0', '2018-04-02 16:55:08', '100', '0');
INSERT INTO `app_data_count` VALUES ('ad851cd15d90413aa39190dbf4b6811d', null, null, 'hour', '0', '2018-04-02 16:55:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('6e0cc1e0bc934703ab039c5a7af6d5e7', '/management/news_release_list', '/management/news_updateRelease', 'hour', '7', '2018-04-02 16:54:47', '1', '3');
INSERT INTO `app_data_count` VALUES ('22821f9835eb47028d5cde76c305168e', null, null, 'hour', '0', '2018-04-02 16:56:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('202526797b404c108bdc6827969ee21a', null, null, 'hour', '0', '2018-04-02 16:55:14', '100', '0');
INSERT INTO `app_data_count` VALUES ('657d90604fdb43ec9c16c499cad1de04', '/app/getOneNews', '/app/getEachComment', 'hour', '4', '2018-04-02 16:56:23', '1', '2');
INSERT INTO `app_data_count` VALUES ('825e81b1667c43e9a3b582d8c2a1204d', '/test/management/root/manager-update', '/test/management/root/manager-edit/m003', 'hour', '7', '2018-04-02 16:57:47', '1', '2');
INSERT INTO `app_data_count` VALUES ('ad9a8500842040b49ab410db81f32bb1', null, null, 'hour', '0', '2018-04-02 16:58:32', '100', '0');
INSERT INTO `app_data_count` VALUES ('bfb4bb104c5a41ecb22de178a5a52789', '/test/management/root/manager-edit/m003', '/test/management/root/manager-update', 'hour', '7', '2018-04-02 16:59:17', '1', '2');
INSERT INTO `app_data_count` VALUES ('3ce0e8400add40868db8f0e61d682c29', '/management/static/css1/htmleaf-demo.css', '/management/user-list', 'hour', '16', '2018-04-02 16:59:00', '1', '4');
INSERT INTO `app_data_count` VALUES ('414babc6c9de47b09f685057418c7b08', '/app/getOneNews', '/app/putDiscuss', 'hour', '5', '2018-04-02 16:59:46', '2', '3');
INSERT INTO `app_data_count` VALUES ('9689cce265e743b881cd4f5b3a5b2d28', '/test/management/root/manager-edit/m003', '/test/management/root/manager-update', 'hour', '8', '2018-04-02 17:02:04', '2', '6');
INSERT INTO `app_data_count` VALUES ('9024981b294d4dcc8de6299ab34d1aa5', '/app/getEachComment', '/app/getOneNews', 'hour', '5', '2018-04-02 17:02:20', '1', '2');
INSERT INTO `app_data_count` VALUES ('21f3bf39f59547ba84c36d67141e3f17', null, null, 'hour', '0', '2018-04-02 17:03:09', '0', '0');
INSERT INTO `app_data_count` VALUES ('02cac63ddc7340c3ae1742fc63542337', '/app/putDiscuss', '/app/getOneNews', 'hour', '3', '2018-04-02 17:03:34', '1', '2');
INSERT INTO `app_data_count` VALUES ('d321ae95224b4991be160369e5869bd7', '/management/news_release_list', '/management/news_release_list.html', 'hour', '7', '2018-04-02 17:03:10', '1', '2');
INSERT INTO `app_data_count` VALUES ('e439d451897e46cbb54e347813d4d85b', '/test/management/root_management.html', '/test/management/root/manager-edit/m003', 'hour', '8', '2018-04-02 17:04:35', '1', '3');
INSERT INTO `app_data_count` VALUES ('552b997bfe5d4bab9d1df9c414af0d42', '/app/newsSearch', '/app/newsSearch', 'hour', '28', '2018-04-02 17:04:19', '14', '14');
INSERT INTO `app_data_count` VALUES ('909676d9e9244e2ab95bd70dd41d59ea', null, null, 'hour', '0', '2018-04-02 17:04:30', '100', '0');
INSERT INTO `app_data_count` VALUES ('5e3f1dd126034b2ea86fe749443c6037', null, null, 'hour', '0', '2018-04-02 17:05:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('45bf51bac3334346a188544aefb78c6d', '/management/news_release_list', '/management/news_updateRelease', 'hour', '7', '2018-04-02 17:05:50', '1', '3');
INSERT INTO `app_data_count` VALUES ('4e901bdf974043669847ce1e03fd87fd', null, null, 'hour', '0', '2018-04-02 17:06:22', '100', '0');
INSERT INTO `app_data_count` VALUES ('b2a4fe694847425e88e2bc7ebb071c12', '/test/ajax/manager-list', '/test/ajax/manager-list', 'hour', '6', '2018-04-02 17:08:30', '3', '3');
INSERT INTO `app_data_count` VALUES ('06908fb5b9864e1fb0800c5c831c7546', '/management/news_release_list', '/management/news_updateRelease', 'hour', '7', '2018-04-02 17:07:39', '1', '3');
INSERT INTO `app_data_count` VALUES ('92aafa36deaa44d893092ef814371240', '/app/getEachComment', '/app/getOneNews', 'hour', '15', '2018-04-02 17:08:27', '1', '8');
INSERT INTO `app_data_count` VALUES ('3a11b2ce8fe140fcbcd6d60797096e6a', '/test/management/root_management.html', '/test/management/root_index.html', 'hour', '7', '2018-04-02 17:09:45', '1', '3');
INSERT INTO `app_data_count` VALUES ('910c3b81754a4bbbab4a42cf100e3ec3', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-02 17:09:42', '2', '2');
INSERT INTO `app_data_count` VALUES ('0ef7bbccafc24263a5131e248bdb0b8d', null, null, 'hour', '0', '2018-04-02 17:09:00', '0', '0');
INSERT INTO `app_data_count` VALUES ('50bd98a8365f4e6dafff51f1a085ba9a', '/management/updateReleaseById', '/management/updateReleaseById', 'hour', '1', '2018-04-02 17:09:39', '1', '1');
INSERT INTO `app_data_count` VALUES ('570f0f3b83884f5d8b36c1a1626093e7', '/app/newsSearch', '/app/newsSearch', 'hour', '9', '2018-04-02 17:10:26', '9', '9');
INSERT INTO `app_data_count` VALUES ('af9e0464548540f69cbe88626c6f62e3', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '7', '2018-04-02 17:10:55', '1', '2');
INSERT INTO `app_data_count` VALUES ('03cdbd85f696432f98a1c9c2d32937b8', '/app/newsSearch', '/app/newsSearch', 'hour', '2', '2018-04-02 17:11:50', '2', '2');
INSERT INTO `app_data_count` VALUES ('faf08f5e5c7f4ad7a5c3b6bf28b15b57', '/test/ajax/manager-list', '/test/ajax/manager-list', 'hour', '2', '2018-04-02 17:12:19', '1', '1');
INSERT INTO `app_data_count` VALUES ('3ce9a01cce9f490a94b1745bd9faf6fc', null, null, 'hour', '0', '2018-04-02 17:15:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('8fd9c742d7e94900b69e5bd19dcb93a1', '/app/newsSearch', '/app/newsSearch', 'hour', '3', '2018-04-02 17:15:19', '3', '3');
INSERT INTO `app_data_count` VALUES ('4864d3bc2abc4fbf88e82b84e24f20ac', '/management/news_release_list', '/management/news_updateRelease', 'hour', '21', '2018-04-02 17:15:32', '3', '14');
INSERT INTO `app_data_count` VALUES ('23202fda0b2c4357b0001dd1ca630c37', '/app/newsSearch', '/app/newsSearch', 'hour', '6', '2018-04-02 17:16:35', '6', '6');
INSERT INTO `app_data_count` VALUES ('fa398f1222e44a6290321eb431bdf60c', '/management/news_release_list', '/management/news_updateRelease', 'hour', '6', '2018-04-02 17:16:49', '1', '2');
INSERT INTO `app_data_count` VALUES ('8f44e625b06f400a94fec162e943e4a1', '/app/newsSearch', '/app/newsSearch', 'hour', '4', '2018-04-02 17:17:55', '4', '4');
INSERT INTO `app_data_count` VALUES ('2aa2cced35e04be198130128397132c5', '/test/management/root_management.html', '/test/management/root_index.html', 'hour', '5', '2018-04-02 17:18:40', '1', '2');
INSERT INTO `app_data_count` VALUES ('6e5f50f0a84849ba91b0e9adf99b50cc', '/app/getEachComment', '/app/getOneNews', 'hour', '18', '2018-04-02 17:19:42', '5', '7');
INSERT INTO `app_data_count` VALUES ('d2fce00727544baba3ab1eb9f26024a4', null, null, 'hour', '0', '2018-04-02 17:19:00', '0', '0');
INSERT INTO `app_data_count` VALUES ('1a68574d5ebe4ca185a0aa1e98f12f89', '/app/editInfo', '/app/editInfo', 'hour', '3', '2018-04-02 17:25:10', '3', '3');
INSERT INTO `app_data_count` VALUES ('d15f45c52ae14757880b0fc66005742a', '/app/getEachComment', '/app/getOneNews', 'hour', '5', '2018-04-02 17:25:21', '2', '3');
INSERT INTO `app_data_count` VALUES ('249886b3ef1f4f9e907bb7f21f6b8cb8', '/app/newsSearch', '/app/newsSearch', 'hour', '2', '2018-04-02 17:26:41', '2', '2');
INSERT INTO `app_data_count` VALUES ('abca470f76d14508b28c1fa9ab1c71af', null, null, 'hour', '0', '2018-04-02 17:26:49', '0', '0');
INSERT INTO `app_data_count` VALUES ('272f44a339fe4feca994a92369059bf2', null, null, 'hour', '0', '2018-04-02 17:26:56', '100', '0');
INSERT INTO `app_data_count` VALUES ('f2c8f84a3ec8482498cfe75cfa8ae636', '/app/newsSearch', '/app/newsSearch', 'hour', '3', '2018-04-02 17:28:00', '3', '3');
INSERT INTO `app_data_count` VALUES ('250cde6836034e36833dae6ef4131bb9', '/test/management/root_management.html', '/test/ajax/manager-list', 'hour', '27', '2018-04-02 17:28:40', '13', '14');
INSERT INTO `app_data_count` VALUES ('0cbdbbeaca334c09ba418fc275169c58', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '6', '2018-04-02 17:28:14', '1', '2');
INSERT INTO `app_data_count` VALUES ('dde45555a0684138bfb620632e1c0f8f', '/management/user-list', '/management/static/css1/style1.css', 'hour', '11', '2018-04-02 17:29:00', '1', '3');
INSERT INTO `app_data_count` VALUES ('8b006ded45e3401eb9ab9176b786eb8d', '/test/management/root_management.html', '/test/ajax/manager-list', 'hour', '16', '2018-04-02 17:33:53', '7', '9');
INSERT INTO `app_data_count` VALUES ('05bd1a852ad04defa8fb3caac09487df', null, null, 'hour', '0', '2018-04-02 17:35:10', '0', '0');
INSERT INTO `app_data_count` VALUES ('be325c1c68fc46a2b170e6b3323a0d40', '/app/getEachComment', '/app/putDiscuss', 'hour', '5', '2018-04-02 17:35:21', '2', '3');
INSERT INTO `app_data_count` VALUES ('7fb9425fe2aa41a2be890815e00dfa85', '/test/management/root_management.html', '/test/management/root_index.html', 'hour', '5', '2018-04-02 17:37:11', '1', '2');
INSERT INTO `app_data_count` VALUES ('7fda21a15e3445029ea56f081d76f4ce', '/app/newsSearch', '/app/newsSearch', 'hour', '24', '2018-04-02 17:37:59', '24', '24');
INSERT INTO `app_data_count` VALUES ('c0c1c0a4b68d4f978d2d96dc78131c36', '/test/management/root_management.html', '/test/management/root_index.html', 'hour', '7', '2018-04-02 17:38:29', '1', '3');
INSERT INTO `app_data_count` VALUES ('f0ca113f2bd24e9bb2eb2c1a076f323e', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '6', '2018-04-02 17:38:54', '1', '2');
INSERT INTO `app_data_count` VALUES ('65fadc9490f3429e827bbe978b9d1bdf', '/management/user-list', '/management/user-list', 'hour', '3', '2018-04-02 17:39:00', '3', '3');
INSERT INTO `app_data_count` VALUES ('61f428795322442782595af26d08c1ad', null, null, 'hour', '0', '2018-04-02 17:41:15', '100', '0');
INSERT INTO `app_data_count` VALUES ('76c28544b0ee48bba217bfa9d9c0b208', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '6', '2018-04-02 17:42:06', '1', '2');
INSERT INTO `app_data_count` VALUES ('ea321f6e9e73437d946e5a5b810cfb82', null, null, 'hour', '0', '2018-04-02 17:42:49', '0', '0');
INSERT INTO `app_data_count` VALUES ('6d196c23ba4741529a0b5c2766b18657', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-02 17:43:13', '2', '2');
INSERT INTO `app_data_count` VALUES ('1321b33e4a1f43999404310bf583eaf5', null, null, 'hour', '0', '2018-04-02 17:43:09', '100', '0');
INSERT INTO `app_data_count` VALUES ('883c7b34a809405d8ac27ca5e1b49ef4', '/app/getEachComment', '/app/getOneNews', 'hour', '3', '2018-04-02 17:44:28', '1', '2');
INSERT INTO `app_data_count` VALUES ('12de8249f7a643a6b57ea2da6c6a5b42', '/management/news_updateRelease', '/management/updateReleaseById', 'hour', '6', '2018-04-02 17:44:24', '1', '2');
INSERT INTO `app_data_count` VALUES ('76f5a197065342d1b3520481f271ef70', null, null, 'hour', '0', '2018-04-02 17:45:49', '100', '0');
INSERT INTO `app_data_count` VALUES ('046cd337b7da40199bdfb4c114ec7218', '/app/index', '/app/newsType', 'hour', '14', '2018-04-02 17:47:59', '1', '7');
INSERT INTO `app_data_count` VALUES ('88781aa97b1f4ae2b25830df8141453c', '/test/ajax/manager-list', '/test/management/root/manager-freeze', 'hour', '14', '2018-04-02 17:48:29', '2', '6');
INSERT INTO `app_data_count` VALUES ('c3a8b1d139f14b87a47e4223e168661d', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '6', '2018-04-02 17:48:19', '1', '2');
INSERT INTO `app_data_count` VALUES ('aedb305a5f724226b0944c10ccb25cb5', null, null, 'hour', '0', '2018-04-02 17:49:00', '0', '0');
INSERT INTO `app_data_count` VALUES ('107c48033d7643d19b0005fe5a5d2ef4', '/app/listComment', '/app/listComment', 'hour', '2', '2018-04-02 17:50:01', '2', '2');
INSERT INTO `app_data_count` VALUES ('33b449bdc7b24ac2a23e9bad3604ecec', null, null, 'hour', '0', '2018-04-02 17:51:38', '0', '0');
INSERT INTO `app_data_count` VALUES ('4a3a2867bc174746ac63a47d01bb5002', '/app/getEachComment', '/app/putDiscuss', 'hour', '20', '2018-04-02 17:52:09', '2', '15');
INSERT INTO `app_data_count` VALUES ('484f2d38ab1146338dfc8b756f4ae670', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-02 17:53:25', '1', '1');
INSERT INTO `app_data_count` VALUES ('eea180126fd24b2eae145478765ad03a', '/app/getEachComment', '/app/getEachComment', 'hour', '2', '2018-04-02 17:54:56', '2', '2');
INSERT INTO `app_data_count` VALUES ('60524b9d96434806a5b040c89e41e05a', '/app/getEachComment', '/app/getOneNews', 'hour', '4', '2018-04-02 17:56:11', '1', '3');
INSERT INTO `app_data_count` VALUES ('c775bd74e5054e22a111d42c4d3d3ede', null, null, 'hour', '0', '2018-04-02 17:57:59', '0', '0');
INSERT INTO `app_data_count` VALUES ('fd79805333004adf889f9874486da723', '/test/ajax/manager-list', '/test/management/root/manager-edit/m001', 'hour', '15', '2018-04-02 17:58:29', '1', '6');
INSERT INTO `app_data_count` VALUES ('2bd047a183114360ad3830c26b22fbc6', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '8', '2018-04-02 17:58:20', '3', '5');
INSERT INTO `app_data_count` VALUES ('46d8de249f8b4778b8fc09e3073b83df', null, null, 'hour', '0', '2018-04-02 17:59:00', '0', '0');
INSERT INTO `app_data_count` VALUES ('cbb45484f5e942b1921ffd9efaa9eddb', '/management/news_updateRelease', '/management/news_updateRelease', 'hour', '2', '2018-04-02 18:00:03', '1', '1');
INSERT INTO `app_data_count` VALUES ('cf75ac4b718045f1a0b8d9db24bf08c1', '/app/getEachComment', '/app/getOneNews', 'hour', '16', '2018-04-02 18:01:21', '4', '12');
INSERT INTO `app_data_count` VALUES ('a87fe38e997948d49119c734841f57e4', null, null, 'hour', '0', '2018-04-02 18:01:38', '0', '0');
INSERT INTO `app_data_count` VALUES ('656a46ecd53f4a3c9d504c531798b4f2', '/app/getOneNews', '/app/getOneNews', 'hour', '4', '2018-04-02 18:02:24', '2', '2');
INSERT INTO `app_data_count` VALUES ('d62c55e9e48f4d468ccd1c8e1b7718b7', null, null, 'hour', '0', '2018-04-02 18:03:39', '0', '0');
INSERT INTO `app_data_count` VALUES ('365b800ec161409ab349e622f3fd8fe9', '/test/management/root/manager-edit/m001', '/test/management/root/manager-update', 'hour', '11', '2018-04-02 18:04:28', '1', '3');
INSERT INTO `app_data_count` VALUES ('c7bdd5330a4843aea07217292d595119', null, null, 'hour', '0', '2018-04-02 18:04:01', '100', '0');
INSERT INTO `app_data_count` VALUES ('6c413ddf7f45436faf1ea2f7aab3a1b7', null, null, 'hour', '0', '2018-04-02 18:05:08', '0', '0');
INSERT INTO `app_data_count` VALUES ('8e1c4e6282934330a2dcac1f9d7fb3b5', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '7', '2018-04-02 18:04:40', '1', '3');
INSERT INTO `app_data_count` VALUES ('aec5bbb883cb49db89e31c162e302927', '/test/management/root/manager-edit/m001', '/test/management/root/manager-edit/m001', 'hour', '6', '2018-04-02 18:06:31', '1', '1');
INSERT INTO `app_data_count` VALUES ('9a1b2a98b4f84cd78763d90dff1f72d5', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '6', '2018-04-02 18:06:28', '1', '2');
INSERT INTO `app_data_count` VALUES ('caac474553b140e7a3391d817ad8391e', '/test/management/root/manager-update', '/test/management/root/manager-update', 'hour', '4', '2018-04-02 18:08:00', '1', '1');
INSERT INTO `app_data_count` VALUES ('1af83277a0d141738e465ed3d6ea7cef', null, null, 'hour', '0', '2018-04-02 18:07:59', '0', '0');
INSERT INTO `app_data_count` VALUES ('f61fe2864fd74b72ae18132033c4d1c5', '/test/management/root_management.html', '/test/management/root/manager-edit/m001', 'hour', '12', '2018-04-02 18:09:20', '1', '4');
INSERT INTO `app_data_count` VALUES ('552943ea4e0f4960b43adb635294f2e6', '/management/news_updateRelease', '/management/news_release_list', 'hour', '16', '2018-04-02 18:09:01', '2', '14');
INSERT INTO `app_data_count` VALUES ('533cdc3ae1554126b408e422fb324c80', '/test/management/root_management.html', '/test/management/root/manager-update', 'hour', '7', '2018-04-02 18:11:27', '1', '2');
INSERT INTO `app_data_count` VALUES ('2ba8869d511d4ddf96d8f2fb654ec416', '/management/news_updateRelease', '/management/news_updateRelease', 'hour', '5', '2018-04-02 18:10:25', '1', '1');
INSERT INTO `app_data_count` VALUES ('86bb86bcc5d843fc9083a1a19a39ddf3', null, null, 'hour', '0', '2018-04-02 18:12:51', '0', '0');
INSERT INTO `app_data_count` VALUES ('d2bc60ad461f44958342440f56236654', '/app/getEachComment', '/app/putDiscuss', 'hour', '32', '2018-04-02 18:13:39', '2', '22');
INSERT INTO `app_data_count` VALUES ('4d86d88add094fa2b20cbb67b5ea3511', '/test/management/root/manager-edit/m003', '/test/management/root/manager-update', 'hour', '7', '2018-04-02 18:14:38', '1', '2');
INSERT INTO `app_data_count` VALUES ('6e2a0db9bff54efbb5ae55836221fe27', null, null, 'hour', '0', '2018-04-02 18:14:40', '0', '0');
INSERT INTO `app_data_count` VALUES ('98a49bd6e27e40cd8d3f006cfe07e99b', null, null, 'hour', '0', '2018-04-02 18:14:28', '100', '0');
INSERT INTO `app_data_count` VALUES ('3e8f7ca6127142b7b89fd55378cca304', '/management/news_list', '/management/news_list', 'hour', '2', '2018-04-02 18:14:16', '1', '1');
INSERT INTO `app_data_count` VALUES ('9dfa02b645ca41d8a29387ec993476ca', '/test/management/root/manager-edit/m003', '/test/management/root_index.html', 'hour', '6', '2018-04-02 18:16:05', '1', '2');
INSERT INTO `app_data_count` VALUES ('11ae68c7d11342b5af017899881fcacf', '/app/getEachComment', '/app/getOneNews', 'hour', '6', '2018-04-02 18:15:43', '1', '5');
INSERT INTO `app_data_count` VALUES ('7d7ee14500424e979652166e9a098db6', null, null, 'hour', '0', '2018-04-02 18:15:56', '100', '0');
INSERT INTO `app_data_count` VALUES ('b42bf01603464fa08cf2dc8507330508', '/management/news_list', '/management/news_list', 'hour', '7', '2018-04-02 18:15:44', '1', '1');
INSERT INTO `app_data_count` VALUES ('ff03b7e711874d29bc18ec3a7ebfc96a', '/app/getEachComment', '/app/getOneNews', 'hour', '3', '2018-04-02 18:17:07', '1', '2');
INSERT INTO `app_data_count` VALUES ('69e33d8146304ac89a1965876385109d', null, null, 'hour', '0', '2018-04-02 18:17:59', '0', '0');
INSERT INTO `app_data_count` VALUES ('ff8eb6e4b9a24863a0b979615815adb7', '/app/getOneNews', '/app/getOneNews', 'hour', '2', '2018-04-02 18:18:21', '2', '2');
INSERT INTO `app_data_count` VALUES ('64b3a62933574a7eae5ac25d945de9c8', '/management/news_release_list', '/management/news_list', 'hour', '7', '2018-04-02 18:19:01', '1', '2');
INSERT INTO `app_data_count` VALUES ('4b760d24ef044faab82c0c9b7ff52c88', '/app/getEachComment', '/app/getEachComment', 'hour', '2', '2018-04-02 18:20:07', '2', '2');
INSERT INTO `app_data_count` VALUES ('77e8a606c8074dccafc9407cdfe75c2f', null, null, 'hour', '0', '2018-04-02 18:20:45', '100', '0');
INSERT INTO `app_data_count` VALUES ('1b795833358646259cc5604c09f6bf9e', '/app/getEachComment', '/app/getOneNews', 'hour', '5', '2018-04-02 18:22:00', '1', '4');
INSERT INTO `app_data_count` VALUES ('030bd7cb5b594a78acb09314218503a1', null, null, 'hour', '0', '2018-04-02 18:23:08', '100', '0');
INSERT INTO `app_data_count` VALUES ('947691546b4a49e2971c72679960bffb', '/app/getEachComment', '/app/getOneNews', 'hour', '7', '2018-04-02 18:24:23', '2', '5');
INSERT INTO `app_data_count` VALUES ('c5c31a6155154aa480f01ec94532a6d6', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '4', '2018-04-02 18:26:03', '1', '2');
INSERT INTO `app_data_count` VALUES ('6eae8952084f473fa5c92c27e08c338c', '/test/management/root/manager-update', '/test/management/root/manager-update', 'hour', '2', '2018-04-02 18:27:58', '1', '1');
INSERT INTO `app_data_count` VALUES ('31efb248f85b4a68828a710ebc06866b', null, null, 'hour', '0', '2018-04-02 18:27:59', '0', '0');
INSERT INTO `app_data_count` VALUES ('cd49f5baedb843c8886592c9ae24effd', null, null, 'hour', '0', '2018-04-02 18:27:59', '0', '0');
INSERT INTO `app_data_count` VALUES ('7e65a4a602e44981a1670f1a4e0e15e8', '/management/updateReleaseById', '/management/news_updateRelease', 'hour', '7', '2018-04-02 18:27:49', '1', '2');
INSERT INTO `app_data_count` VALUES ('81a8966936be4340ba0d315b88754664', '/test/management/root/manager-update', '/test/management/root/manager-edit/m003', 'hour', '7', '2018-04-02 18:29:29', '1', '2');
INSERT INTO `app_data_count` VALUES ('e117914650884fbea30208db979c3c6f', null, null, 'hour', '0', '2018-04-02 18:29:30', '0', '0');
INSERT INTO `app_data_count` VALUES ('edf242276baa4ae89313ed1054c7ab13', '/app/getEachComment', '/app/getEachComment', 'hour', '2', '2018-04-02 18:31:27', '2', '2');
INSERT INTO `app_data_count` VALUES ('2d4221565dcc4e17b68392de8f7de763', null, null, 'hour', '0', '2018-04-02 18:32:23', '100', '0');
INSERT INTO `app_data_count` VALUES ('f930c35470394fca9d03ae4691d338bf', '/test/management/root/manager-update', '/test/management/root/manager-edit/m003', 'hour', '7', '2018-04-02 18:33:48', '1', '2');
INSERT INTO `app_data_count` VALUES ('141ba307122340c0873a37e9db8bb1b3', '/test/ajax/manager-list', '/test/ajax/manager-list', 'hour', '1', '2018-04-02 18:33:49', '1', '1');
INSERT INTO `app_data_count` VALUES ('afd44626b87f431db571ceae9615d270', null, null, 'hour', '0', '2018-04-02 18:33:39', '0', '0');
INSERT INTO `app_data_count` VALUES ('c39fbd3719104044bcfa0b93511658a4', null, null, 'hour', '0', '2018-04-02 18:34:56', '100', '0');
INSERT INTO `app_data_count` VALUES ('9c9367a0e52c41a082fd3137acbcbd95', '/management/news_release_list', '/management/insertRelease', 'hour', '6', '2018-04-02 18:36:14', '1', '2');
INSERT INTO `app_data_count` VALUES ('aef3d0c77de7498d9d473b24e9dd95d0', '/app/index', '/app/getOneNews', 'hour', '5', '2018-04-02 18:37:59', '1', '3');
INSERT INTO `app_data_count` VALUES ('672bbceea37f47f589a2ba0e42dafa32', '/test/management/root_management.html', '/test/management/root/manager-update', 'hour', '7', '2018-04-02 18:41:23', '1', '2');
INSERT INTO `app_data_count` VALUES ('07c92c93b1004d8da214ccbcb2604575', '/app/getEachComment', '/app/getOneNews', 'hour', '10', '2018-04-02 18:41:02', '2', '8');
INSERT INTO `app_data_count` VALUES ('8def64112e45487a82097a4032e72233', '/app/getEachComment', '/app/getOneNews', 'hour', '4', '2018-04-02 18:42:17', '1', '3');
INSERT INTO `app_data_count` VALUES ('01ddcf4847f748de81d37085fd3ab457', '/test/ajax/manager-list', '/test/management/root/manager-update', 'hour', '5', '2018-04-02 18:43:54', '1', '2');
INSERT INTO `app_data_count` VALUES ('6bce57d75c534dcb88cfdfcfca074aa0', null, null, 'hour', '0', '2018-04-02 18:46:14', '0', '0');
INSERT INTO `app_data_count` VALUES ('3ac3c90f5c70426193c092490afd21b3', '/test/management/root_management.html', '/test/management/root/manager-update', 'hour', '7', '2018-04-02 18:47:22', '1', '2');
INSERT INTO `app_data_count` VALUES ('862db6d9ba054147b253e1d07cf2094a', '/test/ajax/manager-list', '/test/ajax/manager-list', 'hour', '2', '2018-04-02 18:48:01', '1', '1');
INSERT INTO `app_data_count` VALUES ('74b864c2bae94f8bb9d42bdad2f4bd6d', null, null, 'hour', '0', '2018-04-02 18:47:59', '0', '0');
INSERT INTO `app_data_count` VALUES ('a0c51c19c8414eddad7315f2a808ec11', '/test/management/root_management.html', '/test/management/root_index.html', 'hour', '9', '2018-04-02 18:50:38', '1', '3');
INSERT INTO `app_data_count` VALUES ('3519120ecf37445fb124a1e3d1d55314', '/app/getEachComment', '/app/getOneNews', 'hour', '19', '2018-04-02 18:51:27', '2', '11');
INSERT INTO `app_data_count` VALUES ('b8fb0a3f7fa3429ba52bf03a72f84bb6', '/test/management/root/manager-edit/m003', '/test/management/root/manager-update', 'hour', '10', '2018-04-02 18:52:56', '2', '8');
INSERT INTO `app_data_count` VALUES ('708c93196a9c4aa1a367772e225a8214', '/app/putDiscuss', '/app/getOneNews', 'hour', '9', '2018-04-02 18:52:43', '2', '4');
INSERT INTO `app_data_count` VALUES ('99813bcee798440dae0fc38a2aed7c74', null, null, 'hour', '0', '2018-04-02 18:52:58', '100', '0');
INSERT INTO `app_data_count` VALUES ('dba189bc983f475cafe30b9e792ed488', '/test/management/root/manager-update', '/test/management/root_index.html', 'hour', '8', '2018-04-02 18:54:29', '1', '2');
INSERT INTO `app_data_count` VALUES ('45d466a0d78f46a0874e6ff85ae8f529', '/management/insertRelease', '/management/news_list', 'hour', '8', '2018-04-02 18:54:14', '1', '2');
INSERT INTO `app_data_count` VALUES ('356ad191d5924eb792a8cda026fa5010', '/test/management/root/manager-edit/m003', '/test/ajax/manager-list', 'hour', '6', '2018-04-02 18:58:15', '1', '4');
INSERT INTO `app_data_count` VALUES ('156c84b0b8874c9094cc12bb325a8336', '/app/index', '/app/getEachComment', 'hour', '52', '2018-04-02 18:57:59', '1', '18');
INSERT INTO `app_data_count` VALUES ('830d11a84fdd4580bafd8d5cbf54599c', '/test/management/root/manager-edit/m003', '/test/management/root/manager-update', 'hour', '7', '2018-04-02 19:01:38', '1', '2');
INSERT INTO `app_data_count` VALUES ('b363e75e0a744ac092b442770ca5d725', '/app/getEachComment', '/app/getOneNews', 'hour', '11', '2018-04-02 19:02:43', '1', '8');
INSERT INTO `app_data_count` VALUES ('d038c8cff03744bdba00138f1e24fe21', null, null, 'hour', '0', '2018-04-02 19:04:14', '0', '0');
INSERT INTO `app_data_count` VALUES ('4c0b12ef608a4e289e87ee1545db5ab5', '/test/management/root/manager-edit/m003', '/test/ajax/manager-list', 'hour', '20', '2018-04-02 19:10:14', '3', '8');
INSERT INTO `app_data_count` VALUES ('5a0f4b4eaa434bc8bc89a297842daf9b', '/test/management/root/manager-edit/m003', '/test/management/root/manager-update', 'hour', '7', '2018-04-02 19:11:55', '1', '2');
INSERT INTO `app_data_count` VALUES ('a0432067d82c4e8daa987335b2a0d115', '/app/getEachComment', '/app/getOneNews', 'hour', '35', '2018-04-02 19:12:43', '5', '20');
INSERT INTO `app_data_count` VALUES ('05103980459b4ad5af7548d6e65c7d43', '/test/management/root/manager-edit/m003', '/test/management/root/manager-update', 'hour', '5', '2018-04-02 19:14:51', '1', '2');
INSERT INTO `app_data_count` VALUES ('071cf8711b3345e7a0918231a73fbd7c', null, null, 'hour', '0', '2018-04-02 19:14:14', '0', '0');
INSERT INTO `app_data_count` VALUES ('970376e0a0ec4258880c851d18648e3b', '/test/management/root_management.html', '/test/management/root/manager-update', 'hour', '7', '2018-04-02 19:17:18', '1', '2');
INSERT INTO `app_data_count` VALUES ('31677c6d7297457d8509ce3349762255', null, null, 'hour', '0', '2018-04-02 19:17:56', '100', '0');
INSERT INTO `app_data_count` VALUES ('c4f916644a50472e9bcc077d782fdf95', '/test/management/root/manager-edit/m003', '/test/management/root/manager-edit/m003', 'hour', '3', '2018-04-02 19:20:08', '1', '1');
INSERT INTO `app_data_count` VALUES ('6ddf06a5fe644e8a8bb3f3cc945f14ca', '/management/news_list', '/management/deleteNewsById', 'hour', '5', '2018-04-02 19:19:17', '1', '2');
INSERT INTO `app_data_count` VALUES ('ad68aa92733940f0b049e12204cd3c15', null, null, 'hour', '0', '2018-04-02 19:19:17', '100', '0');
INSERT INTO `app_data_count` VALUES ('c8f12ec49d46442b8733baaaef3d297d', null, null, 'hour', '0', '2018-04-02 19:20:33', '0', '0');
INSERT INTO `app_data_count` VALUES ('4bd717e3444346adb2bba5e8545b6daf', '/app/getEachComment', '/app/outMyselfDiscuss', 'hour', '12', '2018-04-02 19:22:43', '2', '6');
INSERT INTO `app_data_count` VALUES ('6d3ac3e0f3b84a69887352bf49b55c9a', null, null, 'hour', '0', '2018-04-02 19:25:01', '0', '0');

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
INSERT INTO `authorities` VALUES ('1c03e9a97c2a4d409062cd0371427e26', 'NEWS_ROLE', '新闻模块管理员');
INSERT INTO `authorities` VALUES ('40edbe618f3948f8a780580d179b8e29', 'USER_ROLE', '用户模块管理员');
INSERT INTO `authorities` VALUES ('b49559ba45e44efb89f217a9014fce70', 'ROOT_ROLE', '超级管理员');
INSERT INTO `authorities` VALUES ('eae05c08d0d44d2cb8ae737d4a0213ce', 'SERCH_ROLE', '搜索引擎模块管理员');

-- ----------------------------
-- Table structure for `authorities_groups`
-- ----------------------------
DROP TABLE IF EXISTS `authorities_groups`;
CREATE TABLE `authorities_groups` (
  `authorities_id` varchar(32) NOT NULL DEFAULT '',
  `group_id` varchar(32) NOT NULL DEFAULT '',
  UNIQUE KEY `authorities_id` (`authorities_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authorities_groups
-- ----------------------------
INSERT INTO `authorities_groups` VALUES ('1c03e9a97c2a4d409062cd0371427e26', '3a5eb3ec8c5b47e8bbe18817b3ae06ec');
INSERT INTO `authorities_groups` VALUES ('1c03e9a97c2a4d409062cd0371427e26', '43b0a31e08884dc3a18ec918ad2cca28');
INSERT INTO `authorities_groups` VALUES ('40edbe618f3948f8a780580d179b8e29', '1e1f8ce640b0451197a1ee650463d695');
INSERT INTO `authorities_groups` VALUES ('40edbe618f3948f8a780580d179b8e29', '3a5eb3ec8c5b47e8bbe18817b3ae06ec');
INSERT INTO `authorities_groups` VALUES ('b49559ba45e44efb89f217a9014fce70', '3a5eb3ec8c5b47e8bbe18817b3ae06ec');
INSERT INTO `authorities_groups` VALUES ('eae05c08d0d44d2cb8ae737d4a0213ce', '3a5eb3ec8c5b47e8bbe18817b3ae06ec');
INSERT INTO `authorities_groups` VALUES ('eae05c08d0d44d2cb8ae737d4a0213ce', '43b0a31e08884dc3a18ec918ad2cca28');

-- ----------------------------
-- Table structure for `backlog`
-- ----------------------------
DROP TABLE IF EXISTS `backlog`;
CREATE TABLE `backlog` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `work_type` varchar(20) DEFAULT NULL,
  `worker` varchar(32) DEFAULT NULL,
  `begin_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '待办事项表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of backlog
-- ----------------------------

-- ----------------------------
-- Table structure for `collections`
-- ----------------------------
DROP TABLE IF EXISTS `collections`;
CREATE TABLE `collections` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `release_id` varchar(32) DEFAULT NULL,
  `news_id` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `release_id` (`release_id`),
  UNIQUE KEY `news_id` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collections
-- ----------------------------
INSERT INTO `collections` VALUES ('1', '999', '666', '914d9d32c0ff47a4a4412c1267c4fbdb', '2018-03-29 00:00:00');

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
INSERT INTO `comment` VALUES ('1', '哈哦啊哦啊', '24', '1', '0b3130db8a574cd599bd226bb107dfa7', '2018-03-23 17:24:15');
INSERT INTO `comment` VALUES ('2', '很高兴', '45', '1', '0de84e32615b40e9b27b1f3d8526ee43', '2018-03-23 17:25:15');
INSERT INTO `comment` VALUES ('3', '哈喽', '13', '1', '0df52d33a2a64c7cbf27c1103dd6b5fb', '2018-03-23 17:40:11');
INSERT INTO `comment` VALUES ('cre1522660771645', '5555', '0', '201804021596283481146979532', '', '2018-04-02 17:19:31');
INSERT INTO `comment` VALUES ('cre1522668225923', '', '0', '201804021596283481146979532', '3b10e2ff57014784b8a51f965105024a', '2018-04-02 19:23:45');

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
INSERT INTO `groups` VALUES ('1e1f8ce640b0451197a1ee650463d695', '用户管理员', '用户模块权限组');
INSERT INTO `groups` VALUES ('3a5eb3ec8c5b47e8bbe18817b3ae06ec', '超级管理员', '包含所有权限');
INSERT INTO `groups` VALUES ('43b0a31e08884dc3a18ec918ad2cca28', '新闻管理员', '包含新闻模块与搜索引擎模块');

-- ----------------------------
-- Table structure for `history`
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `release_id` varchar(32) DEFAULT NULL,
  `news_id` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `release_id` (`release_id`),
  UNIQUE KEY `news_id` (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('1', '112', '123', '914d9d32c0ff47a4a4412c1267c4fbdb', '2018-03-30 18:02:49');
INSERT INTO `history` VALUES ('123', '1234', '1234', '1234', '2018-03-30 18:11:19');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `mgr_no` varchar(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `mgr_name` varchar(20) DEFAULT NULL,
  `groups_id` varchar(32) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `head_img` varchar(255) DEFAULT NULL,
  `remote_address` varchar(32) DEFAULT NULL,
  `login_count` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mgr_no` (`mgr_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('30de037bc2174adf9e1ca84803e42ef1', 'm002', '$2a$10$RsPIgHtIMy.oJSrcFTgLfefl7vxAbUvdKVN6g3B/4jlZpPdVHTU5O', 'users_mgr', '1e1f8ce640b0451197a1ee650463d695', '2018-04-02 16:23:27', '2007-04-02 14:56:01', null, '127.0.0.1', '9', '3');
INSERT INTO `manager` VALUES ('70b614d1b0d94efe95e1e9cbef59a86c', 'm000', '$2a$10$EyvpMVjf7fnY2BN0DcJH.unpUW/rLZuC/KI5F71gVBpjnaze0oPem', 'root_mgr', '3a5eb3ec8c5b47e8bbe18817b3ae06ec', '2018-04-02 19:16:27', '2013-04-02 14:56:12', null, '0:0:0:0:0:0:0:1', '28', '3');
INSERT INTO `manager` VALUES ('bb21ba909cfa41b88694dd001f9d4a25', 'm001', '$2a$10$jzGJxyF.yaz5dnbJcZ85Y.lG8vkKEyDAraPHQgBx5aPgaO40RBsKm', 'news_mgr', '43b0a31e08884dc3a18ec918ad2cca28', '2018-04-02 19:19:41', '2014-04-02 14:56:16', 'C:\\Users\\Administrator\\IdeaProjects\\newsApp\\target\\newsApp-0.0.1-SNAPSHOT\\static\\img\\user\\head\\1522663189105-m001-timg1.jpg', '0:0:0:0:0:0:0:1', '31', '3');
INSERT INTO `manager` VALUES ('c003a9703675499587557f9aa643f7e9', 'm003', '$2a$10$zLlb4MH5Pr8VQw07bg4pZuEobdW2dAnsraJenA0xRSr8ll5bpf2bq', 'news_mgr', '43b0a31e08884dc3a18ec918ad2cca28', '2018-03-22 11:10:50', '2011-04-02 14:56:19', 'C:\\Users\\Administrator\\IdeaProjects\\newsApp\\target\\newsApp-0.0.1-SNAPSHOT\\static\\img\\user\\head\\1522667815893-m003-timg1.jpg', null, '0', '2');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(50) DEFAULT NULL COMMENT '新闻标题',
  `author` varchar(50) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `news_type_id` varchar(10) DEFAULT NULL,
  `access_count` bigint(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `URL` (`URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('201804021582877521928519744', '骑士没救了？三年前他们19胜20负开局', 'Jordan', 'D:\\news\\20180402\\2\\201804021582877521928519744', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021587406807434788928', '抛开荣誉谈数据，詹皇将成史上第一大魔王？', '大菠萝盖', 'D:\\news\\20180402\\2\\201804021587406807434788928', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021592253197368426567', '历史第七！詹姆斯这一项技能紧追科比奥尼尔！', '技巧君侃球', 'D:\\news\\20180402\\2\\201804021592253197368426567', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021593543951022817364', '当今联盟中的超级巨星都有谁？', '请叫我，超人', 'D:\\news\\20180402\\2\\201804021593543951022817364', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021595172207768633405', '杜库将同砍25+5+5创史！他们是历史最具威胁组合？', 'T-Bag', 'D:\\news\\20180402\\2\\201804021595172207768633405', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021595469564648155745', '「同性恋基因」到底存不存在｜大象公会', '大象公会', 'D:\\news\\20180402\\1\\201804021595469564648155745', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595561305120135939', '藏族人为什么也拜关公｜大象公会', '大象公会', 'D:\\news\\20180402\\1\\201804021595561305120135939', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595691297946056183', '毛婷：最牛综艺们御用的色彩鲜师', '善缘街0号', 'D:\\news\\20180402\\1\\201804021595691297946056183', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595817091392340029', '无库里的勇士季后赛和火箭几几开？', 'T-Bag', 'D:\\news\\20180402\\2\\201804021595817091392340029', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021595827939596861220', '成本2亿票房3600万，《妈妈咪鸭》等国产动画电影还差了些什么？', '三文娱', 'D:\\news\\20180402\\1\\201804021595827939596861220', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595922264762216997', '腾讯一天赚2亿，投资人觉得不够多 ｜ 三文娱周刊', '三文娱', 'D:\\news\\20180402\\1\\201804021595922264762216997', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595964906145989586', '黄奉铎谈恕：恕是推己及人', '黄大仙', 'D:\\news\\20180402\\1\\201804021595964906145989586', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595966043598405268', '黄奉铎谈节德：节是自然规律', '黄大仙', 'D:\\news\\20180402\\1\\201804021595966043598405268', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021595971576018239571', '就像打游戏一样，给郎佐鲍尔定个成长曲线吧', '静易墨', 'D:\\news\\20180402\\2\\201804021595971576018239571', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596055402729247077', '《吃货宇宙》与《美食大冒险》，两个国产美食动画的知识产权之争', '三文娱', 'D:\\news\\20180402\\1\\201804021596055402729247077', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596056890144859905', '铁打的唐家三少，流水的二次元', '三文娱', 'D:\\news\\20180402\\1\\201804021596056890144859905', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596149357436741584', '黄奉铎谈富贵病：节德是最好的方剂', '黄大仙', 'D:\\news\\20180402\\1\\201804021596149357436741584', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596160636103950394', '就在今天，韦德连续大帽詹姆斯！而赛后这一幕让多少球迷泪目啊！', '篮球技巧教学', 'D:\\news\\20180402\\2\\201804021596160636103950394', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596169069415705619', '共享经济遇冷，共享书架如何通过“企业共读”破局？', '盒饭财经', 'D:\\news\\20180402\\1\\201804021596169069415705619', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596235827602417088', '黄奉铎谈智：大智若愚的内在逻辑', '黄大仙', 'D:\\news\\20180402\\1\\201804021596235827602417088', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596283000183586901', '安东尼和乔治，雷霆的大问题', 'Mangangang', 'D:\\news\\20180402\\2\\201804021596283000183586901', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596283481146979532', '儿童图书市场也抢占热门IP，《哈利·波特》等授权图书占比超28%', '三文娱', 'D:\\news\\20180402\\1\\201804021596283481146979532', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596372777003005843', '《雏蜂》全新升级，《镇魂街》第二季？有妖气的2018全面发力！', '三文娱', 'D:\\news\\20180402\\1\\201804021596372777003005843', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596420256671203394', '哈登本赛季将成联盟三分王，他三分能力什么水平', 'T-Bag', 'D:\\news\\20180402\\2\\201804021596420256671203394', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596434252774244425', '美媒发问：这四大超巨，谁是最被高估的？', 'T-Bag', 'D:\\news\\20180402\\2\\201804021596434252774244425', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596472545611087952', '猛龙 VS 凯尔特人：谁更有机会翻过勒布朗？', '至爱戴维斯', 'D:\\news\\20180402\\2\\201804021596472545611087952', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596504761126879303', '基德纳什阿伦希尔携手入选名人堂，现役哪些球员铁定能进？', 'Greatness', 'D:\\news\\20180402\\2\\201804021596504761126879303', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596510304441729104', '【贫道侃球】献给伟大的你——杰森•基德', '外海道人', 'D:\\news\\20180402\\2\\201804021596510304441729104', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596552136062140474', '美媒发问：罗斯未来能否入选名人堂？', 'T-Bag', 'D:\\news\\20180402\\2\\201804021596552136062140474', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596553335754719314', '除了冠军数，乔丹还有哪些方面强于詹姆斯？', '麦迪', 'D:\\news\\20180402\\2\\201804021596553335754719314', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596565985295335490', '宿命对决！难兄难弟般的雷霆和鹈鹕，会如愿进入季后赛吗？', '菠萝', 'D:\\news\\20180402\\2\\201804021596565985295335490', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596596320978600019', '我想知道这个赛季有多少球队十连胜以上？', '崔先森，', 'D:\\news\\20180402\\2\\201804021596596320978600019', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596600494919303979', '艾尔平方获数千万元B轮融资，将出品开发更多原创动画作品', '三文娱', 'D:\\news\\20180402\\1\\201804021596600494919303979', '1', null, null, '2018-04-02 12:00:48');
INSERT INTO `news` VALUES ('201804021596602896117399610', '当年全明星5大控卫，如今2人成为了名人堂！', '技巧君侃球', 'D:\\news\\20180402\\2\\201804021596602896117399610', '2', null, null, '2018-04-02 12:01:18');
INSERT INTO `news` VALUES ('201804021596604996813931300', '艾诚专访RJ Pittman：eBay拿什么阻击“阿里亚马逊们”？', '艾问人物', 'D:\\news\\20180402\\4\\201804021596604996813931300', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596605422693693839', '并购百度外卖不久，刚刚，饿了么又被马云95亿美元全资收购了！', '一牛财经', 'D:\\news\\20180402\\4\\201804021596605422693693839', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596607906834537487', '掘金明星IP 新三板分享时代2017年营收2.37亿净赚5109万', '挖贝网', 'D:\\news\\20180402\\4\\201804021596607906834537487', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596609876902019480', '确认过眼神，你不是我要的贷款人', '金评媒', 'D:\\news\\20180402\\4\\201804021596609876902019480', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596611591901463099', '厉害我的国！7天，人民币原油期货交易额1159亿！连美国都佩服？', '一牛财经', 'D:\\news\\20180402\\4\\201804021596611591901463099', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596618832260880896', '刚刚，白银市场传来一个好消息！银价或要暴涨，连黄金都跟不上？', '一牛财经', 'D:\\news\\20180402\\4\\201804021596618832260880896', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596619272277657081', '楚山科技CEO郝鹏：迎来无线充电技术的曙光', 'GPLP', 'D:\\news\\20180402\\4\\201804021596619272277657081', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596619344666281987', '看！高盛带着中国顶尖大佬一起打酱油', '君临', 'D:\\news\\20180402\\4\\201804021596619344666281987', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596621291172674154', '感谢《歌手》，让我们看见了青春里的张韶涵', '娱史通鉴', 'D:\\news\\20180402\\3\\201804021596621291172674154', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596621366693436815', '遇见你真好｜张海宇将体育生谢伦的痴情拿捏得刚刚好', '鱼为', 'D:\\news\\20180402\\3\\201804021596621366693436815', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596621597233021618', '比起贸易战，更让人担心的是养老金', '政商参阅', 'D:\\news\\20180402\\4\\201804021596621597233021618', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596621662441666581', '人民币创汇改新高 外贸企业该如何应对？', '平说财经张平', 'D:\\news\\20180402\\4\\201804021596621662441666581', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596621752057789675', '以史为鉴！4月，或许是股市大红大紫的一个月！', '一牛财经', 'D:\\news\\20180402\\4\\201804021596621752057789675', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596622303854934881', '《歌手》QQ音乐人气排行榜前三甲，最受欢迎的不是结石姐而是他', '温翔', 'D:\\news\\20180402\\3\\201804021596622303854934881', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596622755301631209', '最美岳灵珊，嫁小演员隐退，倾家荡产帮老公拍戏，现成亿万富婆', '阳光八卦君', 'D:\\news\\20180402\\3\\201804021596622755301631209', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596622769073814450', '倪萍用风衣袖子挡镜头，网友的反应是否误解了她？', '海蛎子', 'D:\\news\\20180402\\3\\201804021596622769073814450', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596623489089641981', '蓝盈莹这样的鬼马少女，让每个少年都怦然心动', '鱼为', 'D:\\news\\20180402\\3\\201804021596623489089641981', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596623587708714388', '关晓彤新造型被群嘲像妇女，丧失少女感，网友：得罪造型师了？', '孤烟', 'D:\\news\\20180402\\3\\201804021596623587708714388', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596624149355036897', '曾炫耀打过蓝洁瑛的她，如今儿子在美国被捕，网友却一点也不意外', '不八卦会死星人', 'D:\\news\\20180402\\3\\201804021596624149355036897', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596624420197009251', '黄斌汉：加息预期引冲高回落', '黄斌汉', 'D:\\news\\20180402\\4\\201804021596624420197009251', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596624789835926441', '李大霄：中美贸易冲突对股市带来的长期影响有多大？', '功夫财经', 'D:\\news\\20180402\\4\\201804021596624789835926441', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596625240163634100', '世界货币地位动摇！除了人民币原油期货，黄金也加速美元的衰落？', '一牛财经', 'D:\\news\\20180402\\4\\201804021596625240163634100', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596625641697773201', '小米MIX 2S确认过眼神iPhone X是怼的“人”', 'IT时报', 'D:\\news\\20180402\\5\\201804021596625641697773201', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596625726780148920', '《武动乾坤》《斗破苍穹》将播令人期待，可《大主宰》被女主坑了', '八卦娱', 'D:\\news\\20180402\\3\\201804021596625726780148920', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596625812340482658', '高云翔出事后妻子董璇首次现身，妆容虽然精致但面容十分憔悴', '阳光八卦君', 'D:\\news\\20180402\\3\\201804021596625812340482658', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596625839738213354', '赵薇晒女儿和老公温馨日常，小四月长发及腰继承了妈妈的好基因', '铁任', 'D:\\news\\20180402\\3\\201804021596625839738213354', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596625980114111102', '月薪3000能买下3套房？这种理财故事你相信吗？', '融金所', 'D:\\news\\20180402\\4\\201804021596625980114111102', '4', null, null, '2018-04-02 17:40:10');
INSERT INTO `news` VALUES ('201804021596625984660980456', '言豫津生日靖王发文祝福，马天宇的评论亮了，网友直呼：笑哭了', '娱乐大爆炸', 'D:\\news\\20180402\\3\\201804021596625984660980456', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596626022989556710', '新iPad、Apple Pencil，还有一波教育软件', 'IT时报', 'D:\\news\\20180402\\5\\201804021596626022989556710', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596626311339574833', '这次真的要来了？HTC U12再次曝光：前置双摄没跑了', '雷科技', 'D:\\news\\20180402\\5\\201804021596626311339574833', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596626635811310750', 'OPPO R15首销火爆 三平台拿下销量/销售额双料冠军', '太平洋电脑网', 'D:\\news\\20180402\\5\\201804021596626635811310750', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596627090296224041', '《南方有乔木》评分口碑下滑，白百何女主惹争议，陈伟霆成亮点', '娱乐大爆炸', 'D:\\news\\20180402\\3\\201804021596627090296224041', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596627627940547700', '网曝高云翔案出现关键猛料，受害女信息遭曝光 10年前移民澳洲', '金牌娱乐', 'D:\\news\\20180402\\3\\201804021596627627940547700', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596627897373779539', 'UC Berkeley课程CS 294：深度强化学习', '机器之心', 'D:\\news\\20180402\\5\\201804021596627897373779539', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596627933552032313', 'OPPO R15标配6+128GB存储组合，带来绝佳流畅体验', '太平洋电脑网', 'D:\\news\\20180402\\5\\201804021596627933552032313', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628307292226880', 'Moto G6将于5月开卖：骁龙630+全面屏，毫无惊喜？', '雷科技', 'D:\\news\\20180402\\5\\201804021596628307292226880', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628482981413199', '就长这样了！LG G7渲染图曝光：刘海屏+骁龙845', '雷科技', 'D:\\news\\20180402\\5\\201804021596628482981413199', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628591909320703', 'NYU联合Google Brain提出结合工作记忆的视觉推理架构和数据集', '机器之心', 'D:\\news\\20180402\\5\\201804021596628591909320703', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628606532312454', '开源云计算博弈，左手技术、右手行业', '郑凯Kay', 'D:\\news\\20180402\\5\\201804021596628606532312454', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628877054922672', '荣耀愚人节提前泄露天机：AI摄影能打败iPhone吗？', '雷科技', 'D:\\news\\20180402\\5\\201804021596628877054922672', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596628987164859216', 'ofo否认愚人节合并传闻，摩拜为何态度暧昧？', '百略网', 'D:\\news\\20180402\\5\\201804021596628987164859216', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596629220315613058', '也许这才是人们需要的人工智能！vivo Jovi真的太好用了', '雷科技', 'D:\\news\\20180402\\5\\201804021596629220315613058', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596629381937880078', '上市即被对手碾压？小米游戏本还有很长的路要走', '太平洋电脑网', 'D:\\news\\20180402\\5\\201804021596629381937880078', '5', null, null, '2018-04-02 18:52:18');
INSERT INTO `news` VALUES ('201804021596629864493124244', '周杰伦上央视节目，曝料担心被时代淘汰，曾经为刘德华写歌被弃用', '温翔', 'D:\\news\\20180402\\3\\201804021596629864493124244', '3', null, null, '2018-04-02 18:51:28');
INSERT INTO `news` VALUES ('201804021596630205947143847', '樱智热水器被质监局点名 只因这几项不合格之处', '太平洋电脑网', 'D:\\news\\20180402\\5\\201804021596630205947143847', '5', null, null, '2018-04-02 18:52:18');

-- ----------------------------
-- Table structure for `news_type`
-- ----------------------------
DROP TABLE IF EXISTS `news_type`;
CREATE TABLE `news_type` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `type_name` varchar(10) DEFAULT NULL,
  `type_desc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_type
-- ----------------------------
INSERT INTO `news_type` VALUES ('1', '社会', null);
INSERT INTO `news_type` VALUES ('2', '体育', null);
INSERT INTO `news_type` VALUES ('3', '娱乐', null);
INSERT INTO `news_type` VALUES ('4', '财经', null);
INSERT INTO `news_type` VALUES ('5', '科技', null);

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
  `news_type_id` varchar(32) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of release
-- ----------------------------
INSERT INTO `release` VALUES ('1', '2018-03-06 10:05:27', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '1651', '2', '196816', '4');
INSERT INTO `release` VALUES ('112', '2018-03-09 09:50:32', null, '33008257788b414b8d81323567680c71', '456', '1', 'asdgasdfga', '1');
INSERT INTO `release` VALUES ('116', '2018-03-27 10:06:29', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '456', '3', '16', '3');
INSERT INTO `release` VALUES ('12345', null, '159753123654', null, null, null, 'test', null);
INSERT INTO `release` VALUES ('147', '2018-03-04 10:06:58', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '15', '5', '16516', '4');
INSERT INTO `release` VALUES ('23', '2018-03-08 10:05:57', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '16', '2', '165461', '2');
INSERT INTO `release` VALUES ('235', '2018-03-08 10:05:57', null, '33008257788b414b8d81323567680c71', '19786', '1', 'test', '1');
INSERT INTO `release` VALUES ('798', '2018-03-05 09:51:07', null, '40e7e6a691ca43bb8d1d771dacb7ff98', '12', '3', 'adsgwrehgah', null);
INSERT INTO `release` VALUES ('999', '2018-03-29 00:00:00', 'path路径', '40e7e6a691ca43bb8d1d771dacb7ff98', '999', '1', '陌上花开', '1');

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
  `type_name` varchar(10) DEFAULT NULL,
  `type_desc` varchar(100) DEFAULT NULL,
  UNIQUE KEY `type_name` (`type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subscribe_type
-- ----------------------------
INSERT INTO `subscribe_type` VALUES ('1', 'tiyu', '体育');
INSERT INTO `subscribe_type` VALUES ('2', 'yule', '娱乐');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `phone_num` char(11) DEFAULT NULL,
  `nick_name` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `head_img` mediumtext,
  `gender` tinyint(4) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `hobby` varchar(256) DEFAULT NULL,
  `introduce` varchar(256) DEFAULT NULL,
  `last_time` datetime DEFAULT NULL,
  `type_name` varchar(10) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_num` (`phone_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('0b3130db8a574cd599bd226bb107dfa7', '18155524640', '火眼狻猊', '733968', null, '1', '1979-10-17', '广安 ', null, null, '2018-03-27 10:37:22', '普通用户', '1', '2018-03-06 10:36:20');
INSERT INTO `users` VALUES ('0de84e32615b40e9b27b1f3d8526ee43', '15416689013', '混江龙', '379514', null, '0', '2000-11-11', '烟台 ', null, null, null, '编辑人员', '3', null);
INSERT INTO `users` VALUES ('19268abf589c4600aa64d1c45f549861', '17468463986', '大刀', '903115', '', '1', '1960-01-01', '石家庄 ', null, null, null, '编辑人员', '3', null);
INSERT INTO `users` VALUES ('193eac0e6ba749d4a2f0e6a0d69df125', '13995507005', '井木犴', '109117', null, '0', '1989-12-31', '中山 ', null, null, null, '编辑人员', '4', null);
INSERT INTO `users` VALUES ('2619eaddce0b429a81627c75bbb08e41', '17170311327', '拼命三郎', '994917', null, '0', '1997-06-11', '湘西', null, null, null, '编辑人员', '3', null);
INSERT INTO `users` VALUES ('33008257788b414b8d81323567680c71', '13646042489', '行者', '527014', null, '0', '1993-02-03', '杭州 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('34086331fe8a4074be579cc7fc2a82c1', '18387930934', '独火星', '411868', null, '1', '1983-08-16', '黔东南', null, null, null, '普通用户', '2', null);
INSERT INTO `users` VALUES ('3814ac7169f44e8a91e01482e76f8a6e', '13605753098', '九纹龙', '417435', null, '1', '1987-09-25', '南昌 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('3b10e2ff57014784b8a51f965105024a', '17695149979', '立地太岁', '661296', null, '0', '1992-06-17', '枣庄 ', null, null, null, '编辑人员', '3', null);
INSERT INTO `users` VALUES ('3fbea1c3c6c6409b92f1a7767ae940ca', '15886563492', '短命二郎', '452462', null, '1', '2002-12-03', '开封', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('40e7e6a691ca43bb8d1d771dacb7ff98', '13558627001', '神机军师', '853759', null, '1', '1984-05-05', '广州 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('5143ceab451a43df8d7ef9f06af5bb3a', '17590992919', '两头蛇', '800512', null, '1', '1980-05-25', '张家界', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('56e82207310b48a893cd9687562cdb6b', '13558759486', '大范德萨', null, '../imgs/shuijiao.jpg', '1', null, '士大夫', null, null, '2018-03-30 11:12:31', '普通用户', '2', '2018-03-30 11:12:31');
INSERT INTO `users` VALUES ('57adda1c1c544918992f7637031954c7', '15680809380', '范德萨发', null, '../imgs/shuijiao.jpg', '1', null, '安抚', null, null, '2018-03-30 12:00:29', null, null, '2018-03-30 12:00:29');
INSERT INTO `users` VALUES ('5ed1633cc12a40a2a02b42edd9062ce4', '13514956314', '神行太保', '418308', null, '0', '1970-03-25', '泉州 ', null, null, null, '普通用户', '4', null);
INSERT INTO `users` VALUES ('60587ea573e345288dcab31091bce2af', '13739496486', '铁扇子', '950717', null, '1', '1995-06-30', '昆明 ', null, null, null, '普通用户', '4', null);
INSERT INTO `users` VALUES ('8262d54feddb425cab72d666e07be5c8', '17984072309', '神火将', '277633', null, '1', '1965-10-27', '东莞', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('8af253628ba74c4ea0cf70d30d0b6c9d', '18503036993', '圣水将', '896952', null, '0', '1976-10-01', '海口 ', null, null, null, '普通用户', '1', null);
INSERT INTO `users` VALUES ('914d9d32c0ff47a4a4412c1267c4fbdb', '13541509103', '媳妇儿', '21218CCA77804D2BA1922C33E0151105', '/userfiles/images/1522657037263.jpg', '0', '2014-01-30', '北京市 北京市 东城区', '篮球 羽毛球 足球 ', '北冥有鱼，其名为鲲好红红火火恍恍惚惚', '2018-03-28 13:59:08', '普通用户', '1', '2018-03-28 13:59:08');
INSERT INTO `users` VALUES ('9351a963a6c94924a6491045c6082868', '13351915749', '病关索', '515736', null, '0', '1981-03-21', '武汉 ', null, null, null, '普通用户', '4', null);
INSERT INTO `users` VALUES ('99053fa896174a12999ef75b3f4ca1a8', '13588873289', '小旋风', '301806', null, '0', '1994-05-10', '南京', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('9a8e79a4cefe4566a685b24188a7ef6b', '18412830494', '浪子', '716846', null, '1', '1972-10-25', '长沙 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('9dbce208eaf94624866222a91b6ec73a', '15654927711', '插翅虎', '955849', null, '1', '1999-10-31', '吉安 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('a151ca2c25514aca9acc4665701c6a2d', '13959917655', '病尉迟', '780894', null, '1', '1995-10-03', '佛山 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('a93095b777c3476185752f8ee39442de', '15363741154', '一枝花', '774140', null, '1', '1991-08-13', '西双版纳', null, null, null, '普通用户', '2', null);
INSERT INTO `users` VALUES ('a9a902a97b154c87858631eeea86b096', '17739917967', '赤发鬼', '893007', null, '1', '1969-05-30', '宁德', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('aa2983861a3049c7b2422d5a8cdc3266', '13457991813', '没羽箭', '252452', null, '1', '1997-03-07', '淮南 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('ac655ba2d1264c31a1c42273dcbbdbe6', '17943141040', '圣手书生', '673495', null, '0', '1989-11-30', '绵阳 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('c24e8556f8914494accfdab30ac6e22a', '15290081132', '船火儿', '748240', null, '1', '1986-12-31', '德州 ', null, null, null, '普通用户', '2', null);
INSERT INTO `users` VALUES ('c3ffdaa171284dc19017e4cfb6059067', '18603218888', '霹雳火', '406960', null, '0', '1971-03-27', '包头 ', null, null, null, '普通用户', '1', null);
INSERT INTO `users` VALUES ('c46215bd878e460d8100bb720261b323', '17454801093', '金枪手', '834985', null, '0', '1993-03-19', '合肥 ', null, null, null, '普通用户', '4', null);
INSERT INTO `users` VALUES ('ce2123e60fd44575be7e82c919683bcb', '13315426718', '摩云金翅', '350670', null, '0', '1999-10-04', '凉山', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('d774389f68954873b9a5a3d1676d3a9a', '17410208934', '活阎罗', '255428', null, '0', '1990-01-16', '宜昌 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('da9f58c076ef4bc08de18ba3acd05d1f', '13805066005', '飞天大圣', '582214', null, '0', '1985-06-06', '遵义', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('de9b219b8366493b82fb8b8fba2eba11', '13173343263', '天目将', '736417', null, '1', '1992-12-25', '成都 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('dfa8f3ba44c2461db9eacdb92f236899', '18352715498', '小李广', '240002', null, '0', '1976-06-15', '长春 ', null, null, null, '普通用户', '3', null);
INSERT INTO `users` VALUES ('e7584c661f654675b68a5946df0d5e6e', '15707313759', '浪里白条', '403548', null, '0', '1977-04-09', '安阳 ', null, null, null, null, '3', null);
INSERT INTO `users` VALUES ('eb3adbace10d4782a2dff0b4a23f9949', '13566669999', '托儿所', '666999', '../imgs/shuijiao.jpg', '1', '1996-11-15', '苏州', '钓鱼 跑步 骑行 旅游', '千里之行，始于足下。凤舞玩', null, null, '1', null);
INSERT INTO `users` VALUES ('f02da31444c84befa9990fe64a0e411e', '13304480219', '花和尚', '117079', null, '1', '1989-10-03', '丽水', null, null, null, null, '3', null);
INSERT INTO `users` VALUES ('f12f2fd94d5445e6b615290f9d877ed4', '18830936444', '扑天雕', '387252', null, '0', '1984-12-12', '无锡 ', null, null, null, null, '4', null);
INSERT INTO `users` VALUES ('f2483ea166574a1dbbd8675e4bc084f2', '13110851800', '出林龙', '880127', null, '0', '1985-07-08', '大理 ', null, null, null, null, '3', null);
INSERT INTO `users` VALUES ('f42c51bff21a4a24813d337701f27c09', '17745424205', '双鞭', '655961', null, '1', '1973-11-15', '太原 ', null, null, null, null, '3', null);
INSERT INTO `users` VALUES ('fa3d0decbdba4f41836cb557500c83ad', '15487507861', '急先锋', '931270', null, '1', '1978-02-22', '阜阳', null, null, null, null, '3', null);
INSERT INTO `users` VALUES ('fcad4055e1984970b10d8aed1157d8d5', '13102230708', '豹子头', '626591', null, '1', '1968-08-23', '唐山 ', null, null, null, null, '3', null);

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
  `sent` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of validate_code
-- ----------------------------
INSERT INTO `validate_code` VALUES ('0c4c3872478647eca55ac598bb7a0a4c', '211704', '15680809380', '2018-03-30 12:07:53', '2', '2', '2018-03-30 11:57:53');
INSERT INTO `validate_code` VALUES ('0d54b1bd68b943f4b8e4ead54ae9361b', '626492', '13102230708', '2018-03-23 13:17:22', '2', '2', '2018-03-23 13:07:22');
INSERT INTO `validate_code` VALUES ('1269add0e7c34c9b8151d1ae1c5a0fd7', '356419', '13566669999', '2018-03-28 11:48:13', '2', '2', '2018-03-28 11:38:13');
INSERT INTO `validate_code` VALUES ('1a45facded7f4665bfb99bfb5f40c2a7', '496412', '13566669998', '2018-03-23 15:19:14', '2', '2', '2018-03-23 15:09:14');
INSERT INTO `validate_code` VALUES ('1acd6daf62b24e45a5ad48704aea8e49', '713098', '13566669999', '2018-03-28 10:54:23', '2', '2', '2018-03-28 10:44:23');
INSERT INTO `validate_code` VALUES ('28f9946c529f4bbc89abf5eb18f8726f', '920317', '13566669999', '2018-03-28 11:25:58', '2', '2', '2018-03-28 11:15:58');
INSERT INTO `validate_code` VALUES ('2ab0cacd09ab45159c99331881a259e5', '821591', '13563963256', '2018-03-23 13:45:40', '2', '2', '2018-03-23 13:35:40');
INSERT INTO `validate_code` VALUES ('317ee96bdb674a8584305dd3028dff3d', '423800', '13566669999', '2018-03-23 15:25:43', '2', '2', '2018-03-23 15:15:43');
INSERT INTO `validate_code` VALUES ('31de72c9e85a469abd4328197b437d4e', '162525', '13102230708', '2018-03-23 16:34:25', '2', '2', '2018-03-23 16:24:25');
INSERT INTO `validate_code` VALUES ('3c14acab83ed41ecb21f8106ea33a865', '648770', '13541509103', '2018-03-30 10:52:13', '2', '2', '2018-03-30 10:42:13');
INSERT INTO `validate_code` VALUES ('3f04fcda4c2242dbb73a828e5b2b81e8', '630716', '13566669999', '2018-03-28 11:09:24', '2', '2', '2018-03-28 10:59:24');
INSERT INTO `validate_code` VALUES ('487b843cd8504ece826426f35022a89a', '936833', '13102230708', '2018-03-23 13:10:30', '2', '2', '2018-03-23 13:00:30');
INSERT INTO `validate_code` VALUES ('526870a8ec3b44e0ad6e9829de1d5404', '963855', '13541509103', '2018-03-30 10:46:40', '2', '2', '2018-03-30 10:36:40');
INSERT INTO `validate_code` VALUES ('5a8112f6f27446f4bfb069567f4f24dc', '423800', '13102230708', '2018-03-23 13:14:53', '2', '2', '2018-03-23 13:04:53');
INSERT INTO `validate_code` VALUES ('669d2b24d45644c48b51653f0ec5db72', '732340', '13566669999', '2018-03-28 10:12:56', '2', '2', '2018-03-28 10:02:56');
INSERT INTO `validate_code` VALUES ('6eddb3cef3c4458eaaf25cacb16aae79', '842368', '13566669999', '2018-03-28 10:40:07', '2', '2', '2018-03-28 10:30:07');
INSERT INTO `validate_code` VALUES ('7494e375c87d4982878aeb2d21eb6f1c', '252745', '13566669999', '2018-03-28 10:17:12', '2', '2', '2018-03-28 10:07:12');
INSERT INTO `validate_code` VALUES ('7a9015c43b224d41b99eecc2659818af', '982023', '13566669999', '2018-03-28 11:21:18', '2', '2', '2018-03-28 11:11:18');
INSERT INTO `validate_code` VALUES ('b824692aa2c345d8baac7136b4cf0ddb', '487405', '13558759486', '2018-03-30 11:14:06', '2', '2', '2018-03-30 11:04:06');
INSERT INTO `validate_code` VALUES ('c98ce5a1e31c48e2b1bd6c20edc6b37a', '441148', '13566669999', '2018-03-28 10:44:47', '2', '2', '2018-03-28 10:34:47');
INSERT INTO `validate_code` VALUES ('f29b9fb99c0b4f3fa1e7779aee05f9af', '423297', '13541509103', '2018-03-28 13:05:06', '2', '2', '2018-03-28 12:55:06');

-- ----------------------------
-- Table structure for `work_record`
-- ----------------------------
DROP TABLE IF EXISTS `work_record`;
CREATE TABLE `work_record` (
  ` id` varchar(32) NOT NULL DEFAULT '',
  `over_time` datetime DEFAULT NULL,
  `result` tinyint(4) DEFAULT NULL,
  `worker` varchar(32) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (` id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_record
-- ----------------------------
